; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ap.c_wpas_ap_ch_switch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ap.c_wpas_ap_ch_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, %struct.TYPE_2__*, %struct.hostapd_iface*, %struct.hostapd_iface* }
%struct.TYPE_2__ = type { i32 }
%struct.hostapd_iface = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpas_ap_ch_switch(%struct.wpa_supplicant* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.wpa_supplicant*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.hostapd_iface*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %18 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %9, align 8
  %19 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %18, i32 0, i32 3
  %20 = load %struct.hostapd_iface*, %struct.hostapd_iface** %19, align 8
  store %struct.hostapd_iface* %20, %struct.hostapd_iface** %17, align 8
  %21 = load %struct.hostapd_iface*, %struct.hostapd_iface** %17, align 8
  %22 = icmp ne %struct.hostapd_iface* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %8
  %24 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %9, align 8
  %25 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %24, i32 0, i32 2
  %26 = load %struct.hostapd_iface*, %struct.hostapd_iface** %25, align 8
  store %struct.hostapd_iface* %26, %struct.hostapd_iface** %17, align 8
  br label %27

27:                                               ; preds = %23, %8
  %28 = load %struct.hostapd_iface*, %struct.hostapd_iface** %17, align 8
  %29 = icmp ne %struct.hostapd_iface* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  br label %59

31:                                               ; preds = %27
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %9, align 8
  %34 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %9, align 8
  %36 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = icmp ne %struct.TYPE_2__* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %31
  %40 = load i32, i32* %10, align 4
  %41 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %9, align 8
  %42 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32 %40, i32* %44, align 4
  br label %45

45:                                               ; preds = %39, %31
  %46 = load %struct.hostapd_iface*, %struct.hostapd_iface** %17, align 8
  %47 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* %14, align 4
  %56 = load i32, i32* %15, align 4
  %57 = load i32, i32* %16, align 4
  %58 = call i32 @hostapd_event_ch_switch(i32 %50, i32 %51, i32 %52, i32 %53, i32 %54, i32 %55, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %45, %30
  ret void
}

declare dso_local i32 @hostapd_event_ch_switch(i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
