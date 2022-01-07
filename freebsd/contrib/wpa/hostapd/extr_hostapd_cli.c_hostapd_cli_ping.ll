; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_hostapd_cli.c_hostapd_cli_ping.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_hostapd_cli.c_hostapd_cli_ping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ctrl_conn = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"PING\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Connection to hostapd lost - trying to reconnect\0A\00", align 1
@ctrl_ifname = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Connection to hostapd re-established\0A\00", align 1
@ping_interval = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @hostapd_cli_ping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hostapd_cli_ping(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i64, i64* @ctrl_conn, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %2
  %8 = load i64, i64* @ctrl_conn, align 8
  %9 = call i64 @_wpa_ctrl_command(i64 %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 0)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = call i32 @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %13 = call i32 (...) @hostapd_cli_close_connection()
  br label %14

14:                                               ; preds = %11, %7, %2
  %15 = load i64, i64* @ctrl_conn, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* @ctrl_ifname, align 4
  %19 = call i64 @hostapd_cli_reconnect(i32 %18)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = call i32 @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %17, %14
  %24 = load i64, i64* @ctrl_conn, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i64, i64* @ctrl_conn, align 8
  %28 = call i32 @hostapd_cli_recv_pending(i64 %27, i32 1, i32 0)
  br label %29

29:                                               ; preds = %26, %23
  %30 = load i32, i32* @ping_interval, align 4
  %31 = call i32 @eloop_register_timeout(i32 %30, i32 0, void (i8*, i8*)* @hostapd_cli_ping, i32* null, i32* null)
  ret void
}

declare dso_local i64 @_wpa_ctrl_command(i64, i8*, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @hostapd_cli_close_connection(...) #1

declare dso_local i64 @hostapd_cli_reconnect(i32) #1

declare dso_local i32 @hostapd_cli_recv_pending(i64, i32, i32) #1

declare dso_local i32 @eloop_register_timeout(i32, i32, void (i8*, i8*)*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
