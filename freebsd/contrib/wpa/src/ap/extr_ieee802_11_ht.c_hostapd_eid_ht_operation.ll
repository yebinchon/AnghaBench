; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11_ht.c_hostapd_eid_ht_operation.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11_ht.c_hostapd_eid_ht_operation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.ieee80211_ht_operation = type { i32, i32, i32 }

@WLAN_EID_HT_OPERATION = common dso_local global i32 0, align 4
@HT_INFO_HT_PARAM_SECONDARY_CHNL_ABOVE = common dso_local global i32 0, align 4
@HT_INFO_HT_PARAM_STA_CHNL_WIDTH = common dso_local global i32 0, align 4
@HT_INFO_HT_PARAM_SECONDARY_CHNL_BELOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @hostapd_eid_ht_operation(%struct.hostapd_data* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.hostapd_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ieee80211_ht_operation*, align 8
  %7 = alloca i32*, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  store i32* %8, i32** %7, align 8
  %9 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %10 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %17 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %16, i32 0, i32 2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15, %2
  %23 = load i32*, i32** %5, align 8
  store i32* %23, i32** %3, align 8
  br label %82

24:                                               ; preds = %15
  %25 = load i32, i32* @WLAN_EID_HT_OPERATION, align 4
  %26 = load i32*, i32** %7, align 8
  %27 = getelementptr inbounds i32, i32* %26, i32 1
  store i32* %27, i32** %7, align 8
  store i32 %25, i32* %26, align 4
  %28 = load i32*, i32** %7, align 8
  %29 = getelementptr inbounds i32, i32* %28, i32 1
  store i32* %29, i32** %7, align 8
  store i32 12, i32* %28, align 4
  %30 = load i32*, i32** %7, align 8
  %31 = bitcast i32* %30 to %struct.ieee80211_ht_operation*
  store %struct.ieee80211_ht_operation* %31, %struct.ieee80211_ht_operation** %6, align 8
  %32 = load %struct.ieee80211_ht_operation*, %struct.ieee80211_ht_operation** %6, align 8
  %33 = call i32 @os_memset(%struct.ieee80211_ht_operation* %32, i32 0, i32 12)
  %34 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %35 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ieee80211_ht_operation*, %struct.ieee80211_ht_operation** %6, align 8
  %40 = getelementptr inbounds %struct.ieee80211_ht_operation, %struct.ieee80211_ht_operation* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %42 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %41, i32 0, i32 1
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @host_to_le16(i32 %45)
  %47 = load %struct.ieee80211_ht_operation*, %struct.ieee80211_ht_operation** %6, align 8
  %48 = getelementptr inbounds %struct.ieee80211_ht_operation, %struct.ieee80211_ht_operation* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %50 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %63

55:                                               ; preds = %24
  %56 = load i32, i32* @HT_INFO_HT_PARAM_SECONDARY_CHNL_ABOVE, align 4
  %57 = load i32, i32* @HT_INFO_HT_PARAM_STA_CHNL_WIDTH, align 4
  %58 = or i32 %56, %57
  %59 = load %struct.ieee80211_ht_operation*, %struct.ieee80211_ht_operation** %6, align 8
  %60 = getelementptr inbounds %struct.ieee80211_ht_operation, %struct.ieee80211_ht_operation* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %55, %24
  %64 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %65 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %64, i32 0, i32 0
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %70, label %78

70:                                               ; preds = %63
  %71 = load i32, i32* @HT_INFO_HT_PARAM_SECONDARY_CHNL_BELOW, align 4
  %72 = load i32, i32* @HT_INFO_HT_PARAM_STA_CHNL_WIDTH, align 4
  %73 = or i32 %71, %72
  %74 = load %struct.ieee80211_ht_operation*, %struct.ieee80211_ht_operation** %6, align 8
  %75 = getelementptr inbounds %struct.ieee80211_ht_operation, %struct.ieee80211_ht_operation* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %70, %63
  %79 = load i32*, i32** %7, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 12
  store i32* %80, i32** %7, align 8
  %81 = load i32*, i32** %7, align 8
  store i32* %81, i32** %3, align 8
  br label %82

82:                                               ; preds = %78, %22
  %83 = load i32*, i32** %3, align 8
  ret i32* %83
}

declare dso_local i32 @os_memset(%struct.ieee80211_ht_operation*, i32, i32) #1

declare dso_local i32 @host_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
