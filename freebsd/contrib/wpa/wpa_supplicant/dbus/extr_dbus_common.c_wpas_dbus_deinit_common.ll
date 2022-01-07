; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_common.c_wpas_dbus_deinit_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_common.c_wpas_dbus_deinit_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpas_dbus_priv = type { %struct.wpas_dbus_priv* }

@dispatch_initial_dbus_messages = common dso_local global i32 0, align 4
@process_timeout = common dso_local global i32 0, align 4
@ELOOP_ALL_CTX = common dso_local global i32* null, align 8
@disconnect_filter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpas_dbus_priv*)* @wpas_dbus_deinit_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpas_dbus_deinit_common(%struct.wpas_dbus_priv* %0) #0 {
  %2 = alloca %struct.wpas_dbus_priv*, align 8
  store %struct.wpas_dbus_priv* %0, %struct.wpas_dbus_priv** %2, align 8
  %3 = load %struct.wpas_dbus_priv*, %struct.wpas_dbus_priv** %2, align 8
  %4 = getelementptr inbounds %struct.wpas_dbus_priv, %struct.wpas_dbus_priv* %3, i32 0, i32 0
  %5 = load %struct.wpas_dbus_priv*, %struct.wpas_dbus_priv** %4, align 8
  %6 = icmp ne %struct.wpas_dbus_priv* %5, null
  br i1 %6, label %7, label %35

7:                                                ; preds = %1
  %8 = load i32, i32* @dispatch_initial_dbus_messages, align 4
  %9 = load %struct.wpas_dbus_priv*, %struct.wpas_dbus_priv** %2, align 8
  %10 = getelementptr inbounds %struct.wpas_dbus_priv, %struct.wpas_dbus_priv* %9, i32 0, i32 0
  %11 = load %struct.wpas_dbus_priv*, %struct.wpas_dbus_priv** %10, align 8
  %12 = call i32 @eloop_cancel_timeout(i32 %8, %struct.wpas_dbus_priv* %11, i32* null)
  %13 = load i32, i32* @process_timeout, align 4
  %14 = load %struct.wpas_dbus_priv*, %struct.wpas_dbus_priv** %2, align 8
  %15 = load i32*, i32** @ELOOP_ALL_CTX, align 8
  %16 = call i32 @eloop_cancel_timeout(i32 %13, %struct.wpas_dbus_priv* %14, i32* %15)
  %17 = load %struct.wpas_dbus_priv*, %struct.wpas_dbus_priv** %2, align 8
  %18 = getelementptr inbounds %struct.wpas_dbus_priv, %struct.wpas_dbus_priv* %17, i32 0, i32 0
  %19 = load %struct.wpas_dbus_priv*, %struct.wpas_dbus_priv** %18, align 8
  %20 = call i32 @dbus_connection_set_watch_functions(%struct.wpas_dbus_priv* %19, i32* null, i32* null, i32* null, i32* null, i32* null)
  %21 = load %struct.wpas_dbus_priv*, %struct.wpas_dbus_priv** %2, align 8
  %22 = getelementptr inbounds %struct.wpas_dbus_priv, %struct.wpas_dbus_priv* %21, i32 0, i32 0
  %23 = load %struct.wpas_dbus_priv*, %struct.wpas_dbus_priv** %22, align 8
  %24 = call i32 @dbus_connection_set_timeout_functions(%struct.wpas_dbus_priv* %23, i32* null, i32* null, i32* null, i32* null, i32* null)
  %25 = load %struct.wpas_dbus_priv*, %struct.wpas_dbus_priv** %2, align 8
  %26 = getelementptr inbounds %struct.wpas_dbus_priv, %struct.wpas_dbus_priv* %25, i32 0, i32 0
  %27 = load %struct.wpas_dbus_priv*, %struct.wpas_dbus_priv** %26, align 8
  %28 = load i32, i32* @disconnect_filter, align 4
  %29 = load %struct.wpas_dbus_priv*, %struct.wpas_dbus_priv** %2, align 8
  %30 = call i32 @dbus_connection_remove_filter(%struct.wpas_dbus_priv* %27, i32 %28, %struct.wpas_dbus_priv* %29)
  %31 = load %struct.wpas_dbus_priv*, %struct.wpas_dbus_priv** %2, align 8
  %32 = getelementptr inbounds %struct.wpas_dbus_priv, %struct.wpas_dbus_priv* %31, i32 0, i32 0
  %33 = load %struct.wpas_dbus_priv*, %struct.wpas_dbus_priv** %32, align 8
  %34 = call i32 @dbus_connection_unref(%struct.wpas_dbus_priv* %33)
  br label %35

35:                                               ; preds = %7, %1
  %36 = load %struct.wpas_dbus_priv*, %struct.wpas_dbus_priv** %2, align 8
  %37 = call i32 @os_free(%struct.wpas_dbus_priv* %36)
  ret void
}

declare dso_local i32 @eloop_cancel_timeout(i32, %struct.wpas_dbus_priv*, i32*) #1

declare dso_local i32 @dbus_connection_set_watch_functions(%struct.wpas_dbus_priv*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @dbus_connection_set_timeout_functions(%struct.wpas_dbus_priv*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @dbus_connection_remove_filter(%struct.wpas_dbus_priv*, i32, %struct.wpas_dbus_priv*) #1

declare dso_local i32 @dbus_connection_unref(%struct.wpas_dbus_priv*) #1

declare dso_local i32 @os_free(%struct.wpas_dbus_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
