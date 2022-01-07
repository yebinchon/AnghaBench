; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_common.c_integrate_with_eloop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_common.c_integrate_with_eloop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpas_dbus_priv = type { i32 }

@add_watch = common dso_local global i32 0, align 4
@remove_watch = common dso_local global i32 0, align 4
@watch_toggled = common dso_local global i32 0, align 4
@add_timeout = common dso_local global i32 0, align 4
@remove_timeout = common dso_local global i32 0, align 4
@timeout_toggled = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"dbus: Failed to set callback functions\00", align 1
@SIGPOLL = common dso_local global i32 0, align 4
@process_wakeup_main = common dso_local global i32 0, align 4
@wakeup_main = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpas_dbus_priv*)* @integrate_with_eloop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @integrate_with_eloop(%struct.wpas_dbus_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wpas_dbus_priv*, align 8
  store %struct.wpas_dbus_priv* %0, %struct.wpas_dbus_priv** %3, align 8
  %4 = load %struct.wpas_dbus_priv*, %struct.wpas_dbus_priv** %3, align 8
  %5 = getelementptr inbounds %struct.wpas_dbus_priv, %struct.wpas_dbus_priv* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @add_watch, align 4
  %8 = load i32, i32* @remove_watch, align 4
  %9 = load i32, i32* @watch_toggled, align 4
  %10 = load %struct.wpas_dbus_priv*, %struct.wpas_dbus_priv** %3, align 8
  %11 = call i32 @dbus_connection_set_watch_functions(i32 %6, i32 %7, i32 %8, i32 %9, %struct.wpas_dbus_priv* %10, i32* null)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %1
  %14 = load %struct.wpas_dbus_priv*, %struct.wpas_dbus_priv** %3, align 8
  %15 = getelementptr inbounds %struct.wpas_dbus_priv, %struct.wpas_dbus_priv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @add_timeout, align 4
  %18 = load i32, i32* @remove_timeout, align 4
  %19 = load i32, i32* @timeout_toggled, align 4
  %20 = load %struct.wpas_dbus_priv*, %struct.wpas_dbus_priv** %3, align 8
  %21 = call i32 @dbus_connection_set_timeout_functions(i32 %16, i32 %17, i32 %18, i32 %19, %struct.wpas_dbus_priv* %20, i32* null)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %13, %1
  %24 = load i32, i32* @MSG_ERROR, align 4
  %25 = call i32 @wpa_printf(i32 %24, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %40

26:                                               ; preds = %13
  %27 = load i32, i32* @SIGPOLL, align 4
  %28 = load i32, i32* @process_wakeup_main, align 4
  %29 = load %struct.wpas_dbus_priv*, %struct.wpas_dbus_priv** %3, align 8
  %30 = call i64 @eloop_register_signal(i32 %27, i32 %28, %struct.wpas_dbus_priv* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 -1, i32* %2, align 4
  br label %40

33:                                               ; preds = %26
  %34 = load %struct.wpas_dbus_priv*, %struct.wpas_dbus_priv** %3, align 8
  %35 = getelementptr inbounds %struct.wpas_dbus_priv, %struct.wpas_dbus_priv* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @wakeup_main, align 4
  %38 = load %struct.wpas_dbus_priv*, %struct.wpas_dbus_priv** %3, align 8
  %39 = call i32 @dbus_connection_set_wakeup_main_function(i32 %36, i32 %37, %struct.wpas_dbus_priv* %38, i32* null)
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %33, %32, %23
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @dbus_connection_set_watch_functions(i32, i32, i32, i32, %struct.wpas_dbus_priv*, i32*) #1

declare dso_local i32 @dbus_connection_set_timeout_functions(i32, i32, i32, i32, %struct.wpas_dbus_priv*, i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @eloop_register_signal(i32, i32, %struct.wpas_dbus_priv*) #1

declare dso_local i32 @dbus_connection_set_wakeup_main_function(i32, i32, %struct.wpas_dbus_priv*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
