; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_supplicant.c_drv_supports_vht.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_supplicant.c_drv_supports_vht.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.hostapd_hw_modes* }
%struct.hostapd_hw_modes = type { i32, i64 }
%struct.wpa_ssid = type { i32 }

@NUM_HOSTAPD_MODES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, %struct.wpa_ssid*)* @drv_supports_vht to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drv_supports_vht(%struct.wpa_supplicant* %0, %struct.wpa_ssid* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca %struct.wpa_ssid*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hostapd_hw_modes*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store %struct.wpa_ssid* %1, %struct.wpa_ssid** %5, align 8
  store %struct.hostapd_hw_modes* null, %struct.hostapd_hw_modes** %7, align 8
  %10 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %11 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @ieee80211_freq_to_chan(i32 %12, i32* %8)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @NUM_HOSTAPD_MODES, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %68

18:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %55, %18
  %20 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %21 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %22, align 8
  %24 = icmp ne %struct.hostapd_hw_modes* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %28 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %26, %30
  br label %32

32:                                               ; preds = %25, %19
  %33 = phi i1 [ false, %19 ], [ %31, %25 ]
  br i1 %33, label %34, label %58

34:                                               ; preds = %32
  %35 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %36 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %37, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %38, i64 %40
  %42 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %34
  %47 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %48 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %50, i64 %52
  store %struct.hostapd_hw_modes* %53, %struct.hostapd_hw_modes** %7, align 8
  br label %58

54:                                               ; preds = %34
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %9, align 4
  br label %19

58:                                               ; preds = %46, %32
  %59 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %7, align 8
  %60 = icmp ne %struct.hostapd_hw_modes* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %58
  store i32 0, i32* %3, align 4
  br label %68

62:                                               ; preds = %58
  %63 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %7, align 8
  %64 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %62, %61, %17
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @ieee80211_freq_to_chan(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
