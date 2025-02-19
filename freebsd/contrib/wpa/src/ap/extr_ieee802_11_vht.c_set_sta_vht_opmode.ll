; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11_vht.c_set_sta_vht_opmode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11_vht.c_set_sta_vht_opmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32 }
%struct.sta_info = type { i32, i32 }

@WLAN_STA_VHT_OPMODE_ENABLED = common dso_local global i32 0, align 4
@WLAN_STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_sta_vht_opmode(%struct.hostapd_data* %0, %struct.sta_info* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hostapd_data*, align 8
  %6 = alloca %struct.sta_info*, align 8
  %7 = alloca i32*, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %5, align 8
  store %struct.sta_info* %1, %struct.sta_info** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %3
  %11 = load i32, i32* @WLAN_STA_VHT_OPMODE_ENABLED, align 4
  %12 = xor i32 %11, -1
  %13 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %14 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, %12
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* @WLAN_STATUS_SUCCESS, align 4
  store i32 %17, i32* %4, align 4
  br label %29

18:                                               ; preds = %3
  %19 = load i32, i32* @WLAN_STA_VHT_OPMODE_ENABLED, align 4
  %20 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %21 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 4
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %27 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @WLAN_STATUS_SUCCESS, align 4
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %18, %10
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
