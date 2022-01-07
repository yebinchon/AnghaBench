; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_notify.c_wpas_notify_network_removed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_notify.c_wpas_notify_network_removed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, %struct.TYPE_2__*, i64, %struct.wpa_ssid* }
%struct.TYPE_2__ = type { %struct.wpa_supplicant* }
%struct.wpa_ssid = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpas_notify_network_removed(%struct.wpa_supplicant* %0, %struct.wpa_ssid* %1) #0 {
  %3 = alloca %struct.wpa_supplicant*, align 8
  %4 = alloca %struct.wpa_ssid*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %3, align 8
  store %struct.wpa_ssid* %1, %struct.wpa_ssid** %4, align 8
  %5 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %6 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %5, i32 0, i32 3
  %7 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %8 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %9 = icmp eq %struct.wpa_ssid* %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %12 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %11, i32 0, i32 3
  store %struct.wpa_ssid* null, %struct.wpa_ssid** %12, align 8
  br label %13

13:                                               ; preds = %10, %2
  %14 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %15 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %20 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %23 = call i32 @wpa_sm_pmksa_cache_flush(i64 %21, %struct.wpa_ssid* %22)
  br label %24

24:                                               ; preds = %18, %13
  %25 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %26 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %48, label %29

29:                                               ; preds = %24
  %30 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %31 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %33, align 8
  %35 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %36 = icmp ne %struct.wpa_supplicant* %34, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %29
  %38 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %39 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %37
  %43 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %44 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %45 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @wpas_dbus_unregister_network(%struct.wpa_supplicant* %43, i32 %46)
  br label %48

48:                                               ; preds = %42, %37, %29, %24
  %49 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %50 = call i64 @network_is_persistent_group(%struct.wpa_ssid* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %54 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %55 = call i32 @wpas_notify_persistent_group_removed(%struct.wpa_supplicant* %53, %struct.wpa_ssid* %54)
  br label %56

56:                                               ; preds = %52, %48
  %57 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %58 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %59 = call i32 @wpas_p2p_network_removed(%struct.wpa_supplicant* %57, %struct.wpa_ssid* %58)
  ret void
}

declare dso_local i32 @wpa_sm_pmksa_cache_flush(i64, %struct.wpa_ssid*) #1

declare dso_local i32 @wpas_dbus_unregister_network(%struct.wpa_supplicant*, i32) #1

declare dso_local i64 @network_is_persistent_group(%struct.wpa_ssid*) #1

declare dso_local i32 @wpas_notify_persistent_group_removed(%struct.wpa_supplicant*, %struct.wpa_ssid*) #1

declare dso_local i32 @wpas_p2p_network_removed(%struct.wpa_supplicant*, %struct.wpa_ssid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
