; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11_vht.c_check_valid_vht_mcs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11_vht.c_check_valid_vht_mcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_hw_modes = type { i32 }
%struct.ieee80211_vht_capabilities = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@VHT_RX_NSS_MAX_STREAMS = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"No matching VHT MCS found between AP TX and STA RX\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostapd_hw_modes*, i32*)* @check_valid_vht_mcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_valid_vht_mcs(%struct.hostapd_hw_modes* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hostapd_hw_modes*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ieee80211_vht_capabilities*, align 8
  %7 = alloca %struct.ieee80211_vht_capabilities, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hostapd_hw_modes* %0, %struct.hostapd_hw_modes** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %4, align 8
  %12 = icmp ne %struct.hostapd_hw_modes* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %58

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.ieee80211_vht_capabilities, %struct.ieee80211_vht_capabilities* %7, i32 0, i32 0
  %16 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %4, align 8
  %17 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @os_memcpy(%struct.TYPE_2__* %15, i32 %18, i32 8)
  %20 = load i32*, i32** %5, align 8
  %21 = bitcast i32* %20 to %struct.ieee80211_vht_capabilities*
  store %struct.ieee80211_vht_capabilities* %21, %struct.ieee80211_vht_capabilities** %6, align 8
  %22 = load %struct.ieee80211_vht_capabilities*, %struct.ieee80211_vht_capabilities** %6, align 8
  %23 = getelementptr inbounds %struct.ieee80211_vht_capabilities, %struct.ieee80211_vht_capabilities* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @le_to_host16(i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = getelementptr inbounds %struct.ieee80211_vht_capabilities, %struct.ieee80211_vht_capabilities* %7, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @le_to_host16(i32 %29)
  store i32 %30, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %31

31:                                               ; preds = %52, %14
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @VHT_RX_NSS_MAX_STREAMS, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %55

35:                                               ; preds = %31
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %10, align 4
  %38 = mul nsw i32 %37, 2
  %39 = shl i32 3, %38
  %40 = and i32 %36, %39
  %41 = icmp eq i32 %40, 3
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %52

43:                                               ; preds = %35
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %10, align 4
  %46 = mul nsw i32 %45, 2
  %47 = shl i32 3, %46
  %48 = and i32 %44, %47
  %49 = icmp eq i32 %48, 3
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %52

51:                                               ; preds = %43
  store i32 1, i32* %3, align 4
  br label %58

52:                                               ; preds = %50, %42
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %10, align 4
  br label %31

55:                                               ; preds = %31
  %56 = load i32, i32* @MSG_DEBUG, align 4
  %57 = call i32 @wpa_printf(i32 %56, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %55, %51, %13
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @os_memcpy(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @le_to_host16(i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
