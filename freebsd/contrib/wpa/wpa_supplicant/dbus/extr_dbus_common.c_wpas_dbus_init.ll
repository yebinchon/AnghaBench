; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_common.c_wpas_dbus_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_common.c_wpas_dbus_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpas_dbus_priv = type { %struct.wpa_global* }
%struct.wpa_global = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wpas_dbus_priv* @wpas_dbus_init(%struct.wpa_global* %0) #0 {
  %2 = alloca %struct.wpas_dbus_priv*, align 8
  %3 = alloca %struct.wpa_global*, align 8
  %4 = alloca %struct.wpas_dbus_priv*, align 8
  store %struct.wpa_global* %0, %struct.wpa_global** %3, align 8
  %5 = call %struct.wpas_dbus_priv* @os_zalloc(i32 8)
  store %struct.wpas_dbus_priv* %5, %struct.wpas_dbus_priv** %4, align 8
  %6 = load %struct.wpas_dbus_priv*, %struct.wpas_dbus_priv** %4, align 8
  %7 = icmp eq %struct.wpas_dbus_priv* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store %struct.wpas_dbus_priv* null, %struct.wpas_dbus_priv** %2, align 8
  br label %25

9:                                                ; preds = %1
  %10 = load %struct.wpa_global*, %struct.wpa_global** %3, align 8
  %11 = load %struct.wpas_dbus_priv*, %struct.wpas_dbus_priv** %4, align 8
  %12 = getelementptr inbounds %struct.wpas_dbus_priv, %struct.wpas_dbus_priv* %11, i32 0, i32 0
  store %struct.wpa_global* %10, %struct.wpa_global** %12, align 8
  %13 = load %struct.wpas_dbus_priv*, %struct.wpas_dbus_priv** %4, align 8
  %14 = call i64 @wpas_dbus_init_common(%struct.wpas_dbus_priv* %13)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %9
  %17 = load %struct.wpas_dbus_priv*, %struct.wpas_dbus_priv** %4, align 8
  %18 = call i64 @wpas_dbus_init_common_finish(%struct.wpas_dbus_priv* %17)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16, %9
  %21 = load %struct.wpas_dbus_priv*, %struct.wpas_dbus_priv** %4, align 8
  %22 = call i32 @wpas_dbus_deinit(%struct.wpas_dbus_priv* %21)
  store %struct.wpas_dbus_priv* null, %struct.wpas_dbus_priv** %2, align 8
  br label %25

23:                                               ; preds = %16
  %24 = load %struct.wpas_dbus_priv*, %struct.wpas_dbus_priv** %4, align 8
  store %struct.wpas_dbus_priv* %24, %struct.wpas_dbus_priv** %2, align 8
  br label %25

25:                                               ; preds = %23, %20, %8
  %26 = load %struct.wpas_dbus_priv*, %struct.wpas_dbus_priv** %2, align 8
  ret %struct.wpas_dbus_priv* %26
}

declare dso_local %struct.wpas_dbus_priv* @os_zalloc(i32) #1

declare dso_local i64 @wpas_dbus_init_common(%struct.wpas_dbus_priv*) #1

declare dso_local i64 @wpas_dbus_init_common_finish(%struct.wpas_dbus_priv*) #1

declare dso_local i32 @wpas_dbus_deinit(%struct.wpas_dbus_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
