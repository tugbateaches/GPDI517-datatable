###Following lines are necessary for the answer code to work:

library("data.table") #loads the package
mydf <- data.table(airquality)


#Answer sheet for GPDI517-datatable exercises:

#practice1
mydf[,Temp] #selects the Temp column (as a vector)
mydf[,c("Day","Temp")] #selects Day and Temp columns in the given order.
mydf[,.(Day,Temp)] #does the same thing as mydf[,c("Day","Temp")] does!!!


#practice2
mean(mydf[,Ozone]) #gives NA because na.rm=TRUE argument is not given.
mydf[,mean(Ozone, na.rm=TRUE)] #calculates the mean average of the Ozone column 
mydf[mean(Ozone, na.rm=TRUE)] #gives the 42th row since mean(Ozone, na.rm=TRUE) is equal to 42.129!
mydf[,.(mean(Ozone, na.rm=TRUE))]#calculates the mean average of the Ozone column as a data frame!!!!
mydf[,.(mean(Ozone, na.rm=TRUE)), by=Month] #calculates the mean average of the Ozone column (for each month) as a data frame!



#practice3
mydf[,.(aveOz = mean(Ozone, na.rm=TRUE), sd(Ozone, na.rm=TRUE)), by=Month]
#since Ozone column has missing values, they should be removed for each function
#separately!

#Bonus!!!
setkey(mydf,Temp) #sorts mydf data frame by Temp in the increasing order permeanently!
