; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_hostapd_cli.c__wpa_ctrl_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_hostapd_cli.c__wpa_ctrl_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_ctrl = type { i32 }

@ctrl_conn = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [45 x i8] c"Not connected to hostapd - command dropped.\0A\00", align 1
@hostapd_cli_msg_cb = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"'%s' command timed out.\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"'%s' command failed.\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_ctrl*, i8*, i32)* @_wpa_ctrl_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_wpa_ctrl_command(%struct.wpa_ctrl* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wpa_ctrl*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [4096 x i8], align 16
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.wpa_ctrl* %0, %struct.wpa_ctrl** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32*, i32** @ctrl_conn, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %44

15:                                               ; preds = %3
  store i64 4095, i64* %9, align 8
  %16 = load %struct.wpa_ctrl*, %struct.wpa_ctrl** %5, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @strlen(i8* %18)
  %20 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %21 = load i32, i32* @hostapd_cli_msg_cb, align 4
  %22 = call i32 @wpa_ctrl_request(%struct.wpa_ctrl* %16, i8* %17, i32 %19, i8* %20, i64* %9, i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp eq i32 %23, -2
  br i1 %24, label %25, label %28

25:                                               ; preds = %15
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  store i32 -2, i32* %4, align 4
  br label %44

28:                                               ; preds = %15
  %29 = load i32, i32* %10, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %32)
  store i32 -1, i32* %4, align 4
  br label %44

34:                                               ; preds = %28
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load i64, i64* %9, align 8
  %40 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 %39
  store i8 0, i8* %40, align 1
  %41 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %41)
  br label %43

43:                                               ; preds = %38, %35
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %43, %31, %25, %13
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @wpa_ctrl_request(%struct.wpa_ctrl*, i8*, i32, i8*, i64*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
