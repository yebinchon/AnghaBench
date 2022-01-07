; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_scan.c_wpa_setband_scan_freqs_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_scan.c_wpa_setband_scan_freqs_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.wpa_driver_scan_params = type { i32* }
%struct.hostapd_hw_modes = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@HOSTAPD_CHAN_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_supplicant*, i32, %struct.wpa_driver_scan_params*)* @wpa_setband_scan_freqs_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpa_setband_scan_freqs_list(%struct.wpa_supplicant* %0, i32 %1, %struct.wpa_driver_scan_params* %2) #0 {
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpa_driver_scan_params*, align 8
  %7 = alloca %struct.hostapd_hw_modes*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.wpa_driver_scan_params* %2, %struct.wpa_driver_scan_params** %6, align 8
  %10 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %11 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %15 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call %struct.hostapd_hw_modes* @get_mode(i32 %13, i32 %17, i32 %18)
  store %struct.hostapd_hw_modes* %19, %struct.hostapd_hw_modes** %7, align 8
  %20 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %7, align 8
  %21 = icmp eq %struct.hostapd_hw_modes* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %3
  %23 = call i32* @os_zalloc(i32 4)
  %24 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %6, align 8
  %25 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %24, i32 0, i32 0
  store i32* %23, i32** %25, align 8
  br label %78

26:                                               ; preds = %3
  %27 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %7, align 8
  %28 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, 1
  %31 = call i32* @os_calloc(i32 %30, i32 4)
  %32 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %6, align 8
  %33 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %32, i32 0, i32 0
  store i32* %31, i32** %33, align 8
  %34 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %6, align 8
  %35 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %26
  br label %78

39:                                               ; preds = %26
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %40

40:                                               ; preds = %75, %39
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %7, align 8
  %43 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %78

46:                                               ; preds = %40
  %47 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %7, align 8
  %48 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %47, i32 0, i32 1
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @HOSTAPD_CHAN_DISABLED, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %46
  br label %75

59:                                               ; preds = %46
  %60 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %7, align 8
  %61 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %60, i32 0, i32 1
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %6, align 8
  %69 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %8, align 4
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i32, i32* %70, i64 %73
  store i32 %67, i32* %74, align 4
  br label %75

75:                                               ; preds = %59, %58
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %9, align 4
  br label %40

78:                                               ; preds = %22, %38, %40
  ret void
}

declare dso_local %struct.hostapd_hw_modes* @get_mode(i32, i32, i32) #1

declare dso_local i32* @os_zalloc(i32) #1

declare dso_local i32* @os_calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
