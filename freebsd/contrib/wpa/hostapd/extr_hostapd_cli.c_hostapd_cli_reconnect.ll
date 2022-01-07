; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_hostapd_cli.c_hostapd_cli_reconnect.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_hostapd_cli.c_hostapd_cli_reconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ctrl_ifname = common dso_local global i8* null, align 8
@ctrl_conn = common dso_local global i32 0, align 4
@interactive = common dso_local global i32 0, align 4
@action_file = common dso_local global i32 0, align 4
@hostapd_cli_attached = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Warning: Failed to attach to hostapd.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @hostapd_cli_reconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostapd_cli_reconnect(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %5 = call i32 (...) @hostapd_cli_close_connection()
  %6 = load i8*, i8** %3, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %43

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = call i8* @os_strdup(i8* %10)
  store i8* %11, i8** %4, align 8
  %12 = load i8*, i8** @ctrl_ifname, align 8
  %13 = call i32 @os_free(i8* %12)
  %14 = load i8*, i8** %4, align 8
  store i8* %14, i8** @ctrl_ifname, align 8
  %15 = load i8*, i8** @ctrl_ifname, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %9
  store i32 -1, i32* %2, align 4
  br label %43

18:                                               ; preds = %9
  %19 = load i8*, i8** @ctrl_ifname, align 8
  %20 = call i32 @hostapd_cli_open_connection(i8* %19)
  store i32 %20, i32* @ctrl_conn, align 4
  %21 = load i32, i32* @ctrl_conn, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  store i32 -1, i32* %2, align 4
  br label %43

24:                                               ; preds = %18
  %25 = load i32, i32* @interactive, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* @action_file, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %43

31:                                               ; preds = %27, %24
  %32 = load i32, i32* @ctrl_conn, align 4
  %33 = call i64 @wpa_ctrl_attach(i32 %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  store i32 1, i32* @hostapd_cli_attached, align 4
  %36 = load i32, i32* @ctrl_conn, align 4
  %37 = call i32 @register_event_handler(i32 %36)
  %38 = load i32, i32* @ctrl_conn, align 4
  %39 = call i32 @update_stations(i32 %38)
  br label %42

40:                                               ; preds = %31
  %41 = call i32 @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %35
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %30, %23, %17, %8
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @hostapd_cli_close_connection(...) #1

declare dso_local i8* @os_strdup(i8*) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local i32 @hostapd_cli_open_connection(i8*) #1

declare dso_local i64 @wpa_ctrl_attach(i32) #1

declare dso_local i32 @register_event_handler(i32) #1

declare dso_local i32 @update_stations(i32) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
