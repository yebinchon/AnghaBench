; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_hw_features.c_dfs_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_hw_features.c_dfs_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_channel_data = type { i32 }

@dfs_info.info = internal global [256 x i8] zeroinitializer, align 16
@HOSTAPD_CHAN_DFS_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"usable\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"unavailable\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"available\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [18 x i8] c" (DFS state = %s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.hostapd_channel_data*)* @dfs_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @dfs_info(%struct.hostapd_channel_data* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.hostapd_channel_data*, align 8
  %4 = alloca i8*, align 8
  store %struct.hostapd_channel_data* %0, %struct.hostapd_channel_data** %3, align 8
  %5 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %3, align 8
  %6 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @HOSTAPD_CHAN_DFS_MASK, align 4
  %9 = and i32 %7, %8
  switch i32 %9, label %14 [
    i32 129, label %10
    i32 128, label %11
    i32 130, label %12
    i32 131, label %13
  ]

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %15

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %15

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  br label %15

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %4, align 8
  br label %15

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %18

15:                                               ; preds = %13, %12, %11, %10
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @os_snprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @dfs_info.info, i64 0, i64 0), i32 256, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* %16)
  store i8 0, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @dfs_info.info, i64 0, i64 255), align 1
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @dfs_info.info, i64 0, i64 0), i8** %2, align 8
  br label %18

18:                                               ; preds = %15, %14
  %19 = load i8*, i8** %2, align 8
  ret i8* %19
}

declare dso_local i32 @os_snprintf(i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
