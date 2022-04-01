library (ggplot2) ##R數據視覺化下載
library(scales) ##下載scales
library(lubridate)
library(stringr)
options(scipen = 999)
setwd("/Users/wutzu/Desktop/OneDrive - 東吳大學/大二下/金融應用程式/tmp")
dir()

path <- "/Users/wutzu/Desktop/OneDrive - 東吳大學/大二下/金融應用程式/tmp" ##路徑
files <- list.files(path=path,pattern = "*.csv") ##路徑下副檔名是csv的檔案集
files ##檔案集

df1 <- data.frame() ##檔案資料集一
df2 <- data.frame() ##檔案資料集二

for (file in files){  ##從第一個檔案開始
  df1 <- read.csv(paste(path,file,sep="/")) ##Read CSV在路徑/檔案
  df2 <- rbind(df2,df1)  ##資料垂直合併
}

write.csv(df2,file="1986.csv") ##建立第一個csv資料
dir()
Yonghe1986=read.csv("1986.csv")
View(Yonghe1986)

names(Yonghe1986) ##查欄位名稱
Yonghe<-subset(Yonghe1986,siteid=="70" & itemid=="14")
##ItemName 等於"溫度"的列Row，查看所有的行Colume
View(Yonghe)

