; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_hostapd_cli.c_hostapd_cli_action.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_hostapd_cli.c_hostapd_cli_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_ctrl = type { i32 }
%struct.timeval = type { i64, i32 }

@hostapd_cli_quit = common dso_local global i32 0, align 4
@ping_interval = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"select\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"PING\00", align 1
@hostapd_cli_action_process = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"PONG\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"hostapd did not reply to PING command - exiting\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_ctrl*)* @hostapd_cli_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hostapd_cli_action(%struct.wpa_ctrl* %0) #0 {
  %2 = alloca %struct.wpa_ctrl*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.timeval, align 8
  %7 = alloca [256 x i8], align 16
  %8 = alloca i64, align 8
  store %struct.wpa_ctrl* %0, %struct.wpa_ctrl** %2, align 8
  %9 = load %struct.wpa_ctrl*, %struct.wpa_ctrl** %2, align 8
  %10 = call i32 @wpa_ctrl_get_fd(%struct.wpa_ctrl* %9)
  store i32 %10, i32* %4, align 4
  br label %11

11:                                               ; preds = %56, %1
  %12 = load i32, i32* @hostapd_cli_quit, align 4
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  br i1 %14, label %15, label %57

15:                                               ; preds = %11
  %16 = call i32 @FD_ZERO(i32* %3)
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @FD_SET(i32 %17, i32* %3)
  %19 = load i32, i32* @ping_interval, align 4
  %20 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 1
  store i32 %19, i32* %20, align 8
  %21 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  store i64 0, i64* %21, align 8
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %22, 1
  %24 = call i32 @select(i32 %23, i32* %3, i32* null, i32* null, %struct.timeval* %6)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %15
  %28 = load i64, i64* @errno, align 8
  %29 = load i64, i64* @EINTR, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %57

33:                                               ; preds = %27, %15
  %34 = load i32, i32* %4, align 4
  %35 = call i64 @FD_ISSET(i32 %34, i32* %3)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load %struct.wpa_ctrl*, %struct.wpa_ctrl** %2, align 8
  %39 = call i32 @hostapd_cli_recv_pending(%struct.wpa_ctrl* %38, i32 0, i32 1)
  br label %56

40:                                               ; preds = %33
  store i64 255, i64* %8, align 8
  %41 = load %struct.wpa_ctrl*, %struct.wpa_ctrl** %2, align 8
  %42 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %43 = load i32, i32* @hostapd_cli_action_process, align 4
  %44 = call i64 @wpa_ctrl_request(%struct.wpa_ctrl* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4, i8* %42, i64* %8, i32 %43)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %40
  %47 = load i64, i64* %8, align 8
  %48 = icmp ult i64 %47, 4
  br i1 %48, label %53, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %51 = call i64 @os_memcmp(i8* %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %49, %46, %40
  %54 = call i32 @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  br label %57

55:                                               ; preds = %49
  br label %56

56:                                               ; preds = %55, %37
  br label %11

57:                                               ; preds = %53, %31, %11
  ret void
}

declare dso_local i32 @wpa_ctrl_get_fd(%struct.wpa_ctrl*) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i64 @FD_ISSET(i32, i32*) #1

declare dso_local i32 @hostapd_cli_recv_pending(%struct.wpa_ctrl*, i32, i32) #1

declare dso_local i64 @wpa_ctrl_request(%struct.wpa_ctrl*, i8*, i32, i8*, i64*, i32) #1

declare dso_local i64 @os_memcmp(i8*, i8*, i32) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
