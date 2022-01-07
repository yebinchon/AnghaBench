; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_scan.c_wpa_setband_scan_freqs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_scan.c_wpa_setband_scan_freqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.wpa_driver_scan_params = type { i64 }

@WPA_SETBAND_5G = common dso_local global i64 0, align 8
@HOSTAPD_MODE_IEEE80211A = common dso_local global i32 0, align 4
@WPA_SETBAND_2G = common dso_local global i64 0, align 8
@HOSTAPD_MODE_IEEE80211G = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_supplicant*, %struct.wpa_driver_scan_params*)* @wpa_setband_scan_freqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpa_setband_scan_freqs(%struct.wpa_supplicant* %0, %struct.wpa_driver_scan_params* %1) #0 {
  %3 = alloca %struct.wpa_supplicant*, align 8
  %4 = alloca %struct.wpa_driver_scan_params*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %3, align 8
  store %struct.wpa_driver_scan_params* %1, %struct.wpa_driver_scan_params** %4, align 8
  %5 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %6 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %40

11:                                               ; preds = %2
  %12 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %4, align 8
  %13 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %40

17:                                               ; preds = %11
  %18 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %19 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @WPA_SETBAND_5G, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %25 = load i32, i32* @HOSTAPD_MODE_IEEE80211A, align 4
  %26 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %4, align 8
  %27 = call i32 @wpa_setband_scan_freqs_list(%struct.wpa_supplicant* %24, i32 %25, %struct.wpa_driver_scan_params* %26)
  br label %40

28:                                               ; preds = %17
  %29 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %30 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @WPA_SETBAND_2G, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %36 = load i32, i32* @HOSTAPD_MODE_IEEE80211G, align 4
  %37 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %4, align 8
  %38 = call i32 @wpa_setband_scan_freqs_list(%struct.wpa_supplicant* %35, i32 %36, %struct.wpa_driver_scan_params* %37)
  br label %39

39:                                               ; preds = %34, %28
  br label %40

40:                                               ; preds = %10, %16, %39, %23
  ret void
}

declare dso_local i32 @wpa_setband_scan_freqs_list(%struct.wpa_supplicant*, i32, %struct.wpa_driver_scan_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
