; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_notify.c_wpas_notify_network_added.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_notify.c_wpas_notify_network_added.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { %struct.wpa_supplicant* }
%struct.wpa_ssid = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpas_notify_network_added(%struct.wpa_supplicant* %0, %struct.wpa_ssid* %1) #0 {
  %3 = alloca %struct.wpa_supplicant*, align 8
  %4 = alloca %struct.wpa_ssid*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %3, align 8
  store %struct.wpa_ssid* %1, %struct.wpa_ssid** %4, align 8
  %5 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %6 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %27

10:                                               ; preds = %2
  %11 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %12 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %10
  %16 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %17 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %19, align 8
  %21 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %22 = icmp ne %struct.wpa_supplicant* %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %15
  %24 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %25 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %26 = call i32 @wpas_dbus_register_network(%struct.wpa_supplicant* %24, %struct.wpa_ssid* %25)
  br label %27

27:                                               ; preds = %9, %23, %15, %10
  ret void
}

declare dso_local i32 @wpas_dbus_register_network(%struct.wpa_supplicant*, %struct.wpa_ssid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
