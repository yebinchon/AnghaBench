; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_hostapd_cli.c_update_stations.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_hostapd_cli.c_update_stations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_ctrl = type { i32 }

@interactive = common dso_local global i32 0, align 4
@stations = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"STA-FIRST\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"STA-NEXT %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_ctrl*)* @update_stations to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_stations(%struct.wpa_ctrl* %0) #0 {
  %2 = alloca %struct.wpa_ctrl*, align 8
  %3 = alloca [32 x i8], align 16
  %4 = alloca [64 x i8], align 16
  store %struct.wpa_ctrl* %0, %struct.wpa_ctrl** %2, align 8
  %5 = load %struct.wpa_ctrl*, %struct.wpa_ctrl** %2, align 8
  %6 = icmp ne %struct.wpa_ctrl* %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32, i32* @interactive, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %7, %1
  br label %36

11:                                               ; preds = %7
  %12 = call i32 @cli_txt_list_flush(i32* @stations)
  %13 = load %struct.wpa_ctrl*, %struct.wpa_ctrl** %2, align 8
  %14 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %15 = call i64 @wpa_ctrl_command_sta(%struct.wpa_ctrl* %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %14, i32 32, i32 0)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  br label %36

18:                                               ; preds = %11
  br label %19

19:                                               ; preds = %30, %18
  %20 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %21 = call i64 @os_strcmp(i8* %20, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %25 = call i32 @cli_txt_list_add(i32* @stations, i8* %24)
  br label %26

26:                                               ; preds = %23, %19
  %27 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %28 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %29 = call i32 @os_snprintf(i8* %27, i32 64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %28)
  br label %30

30:                                               ; preds = %26
  %31 = load %struct.wpa_ctrl*, %struct.wpa_ctrl** %2, align 8
  %32 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %33 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %34 = call i64 @wpa_ctrl_command_sta(%struct.wpa_ctrl* %31, i8* %32, i8* %33, i32 32, i32 0)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %19, label %36

36:                                               ; preds = %10, %17, %30
  ret void
}

declare dso_local i32 @cli_txt_list_flush(i32*) #1

declare dso_local i64 @wpa_ctrl_command_sta(%struct.wpa_ctrl*, i8*, i8*, i32, i32) #1

declare dso_local i64 @os_strcmp(i8*, i8*) #1

declare dso_local i32 @cli_txt_list_add(i32*, i8*) #1

declare dso_local i32 @os_snprintf(i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
