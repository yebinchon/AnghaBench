; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers_p2p.c_wpas_dbus_handler_remove_all_persistent_groups.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers_p2p.c_wpas_dbus_handler_remove_all_persistent_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.wpa_config*, %struct.TYPE_2__* }
%struct.wpa_config = type { %struct.wpa_ssid* }
%struct.wpa_ssid = type { %struct.wpa_ssid* }
%struct.TYPE_2__ = type { %struct.wpa_supplicant* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @wpas_dbus_handler_remove_all_persistent_groups(i32* %0, %struct.wpa_supplicant* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca %struct.wpa_ssid*, align 8
  %6 = alloca %struct.wpa_ssid*, align 8
  %7 = alloca %struct.wpa_config*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.wpa_supplicant* %1, %struct.wpa_supplicant** %4, align 8
  %8 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %9 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %11, align 8
  store %struct.wpa_supplicant* %12, %struct.wpa_supplicant** %4, align 8
  %13 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %14 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %13, i32 0, i32 0
  %15 = load %struct.wpa_config*, %struct.wpa_config** %14, align 8
  store %struct.wpa_config* %15, %struct.wpa_config** %7, align 8
  %16 = load %struct.wpa_config*, %struct.wpa_config** %7, align 8
  %17 = getelementptr inbounds %struct.wpa_config, %struct.wpa_config* %16, i32 0, i32 0
  %18 = load %struct.wpa_ssid*, %struct.wpa_ssid** %17, align 8
  store %struct.wpa_ssid* %18, %struct.wpa_ssid** %5, align 8
  br label %19

19:                                               ; preds = %33, %2
  %20 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %21 = icmp ne %struct.wpa_ssid* %20, null
  br i1 %21, label %22, label %35

22:                                               ; preds = %19
  %23 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %24 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %23, i32 0, i32 0
  %25 = load %struct.wpa_ssid*, %struct.wpa_ssid** %24, align 8
  store %struct.wpa_ssid* %25, %struct.wpa_ssid** %6, align 8
  %26 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %27 = call i64 @network_is_persistent_group(%struct.wpa_ssid* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %31 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %32 = call i32 @remove_persistent_group(%struct.wpa_supplicant* %30, %struct.wpa_ssid* %31)
  br label %33

33:                                               ; preds = %29, %22
  %34 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  store %struct.wpa_ssid* %34, %struct.wpa_ssid** %5, align 8
  br label %19

35:                                               ; preds = %19
  ret i32* null
}

declare dso_local i64 @network_is_persistent_group(%struct.wpa_ssid*) #1

declare dso_local i32 @remove_persistent_group(%struct.wpa_supplicant*, %struct.wpa_ssid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
