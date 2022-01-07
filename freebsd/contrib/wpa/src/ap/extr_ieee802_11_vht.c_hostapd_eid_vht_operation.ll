; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11_vht.c_hostapd_eid_vht_operation.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11_vht.c_hostapd_eid_vht_operation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i64 }
%struct.ieee80211_vht_operation = type { i32, i32, i32, i32 }

@WLAN_EID_VHT_OPERATION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @hostapd_eid_vht_operation(%struct.hostapd_data* %0, i32* %1) #0 {
  %3 = alloca %struct.hostapd_data*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ieee80211_vht_operation*, align 8
  %6 = alloca i32*, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  store i32* %7, i32** %6, align 8
  %8 = load i32, i32* @WLAN_EID_VHT_OPERATION, align 4
  %9 = load i32*, i32** %6, align 8
  %10 = getelementptr inbounds i32, i32* %9, i32 1
  store i32* %10, i32** %6, align 8
  store i32 %8, i32* %9, align 4
  %11 = load i32*, i32** %6, align 8
  %12 = getelementptr inbounds i32, i32* %11, i32 1
  store i32* %12, i32** %6, align 8
  store i32 16, i32* %11, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = bitcast i32* %13 to %struct.ieee80211_vht_operation*
  store %struct.ieee80211_vht_operation* %14, %struct.ieee80211_vht_operation** %5, align 8
  %15 = load %struct.ieee80211_vht_operation*, %struct.ieee80211_vht_operation** %5, align 8
  %16 = call i32 @os_memset(%struct.ieee80211_vht_operation* %15, i32 0, i32 16)
  %17 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %18 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.ieee80211_vht_operation*, %struct.ieee80211_vht_operation** %5, align 8
  %23 = getelementptr inbounds %struct.ieee80211_vht_operation, %struct.ieee80211_vht_operation* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %25 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ieee80211_vht_operation*, %struct.ieee80211_vht_operation** %5, align 8
  %30 = getelementptr inbounds %struct.ieee80211_vht_operation, %struct.ieee80211_vht_operation* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %32 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.ieee80211_vht_operation*, %struct.ieee80211_vht_operation** %5, align 8
  %37 = getelementptr inbounds %struct.ieee80211_vht_operation, %struct.ieee80211_vht_operation* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %39 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %42, 2
  br i1 %43, label %44, label %75

44:                                               ; preds = %2
  %45 = load %struct.ieee80211_vht_operation*, %struct.ieee80211_vht_operation** %5, align 8
  %46 = getelementptr inbounds %struct.ieee80211_vht_operation, %struct.ieee80211_vht_operation* %45, i32 0, i32 2
  store i32 1, i32* %46, align 4
  %47 = load %struct.ieee80211_vht_operation*, %struct.ieee80211_vht_operation** %5, align 8
  %48 = getelementptr inbounds %struct.ieee80211_vht_operation, %struct.ieee80211_vht_operation* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ieee80211_vht_operation*, %struct.ieee80211_vht_operation** %5, align 8
  %51 = getelementptr inbounds %struct.ieee80211_vht_operation, %struct.ieee80211_vht_operation* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %53 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %58 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = icmp slt i64 %56, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %44
  %65 = load %struct.ieee80211_vht_operation*, %struct.ieee80211_vht_operation** %5, align 8
  %66 = getelementptr inbounds %struct.ieee80211_vht_operation, %struct.ieee80211_vht_operation* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = sub nsw i32 %67, 8
  store i32 %68, i32* %66, align 4
  br label %74

69:                                               ; preds = %44
  %70 = load %struct.ieee80211_vht_operation*, %struct.ieee80211_vht_operation** %5, align 8
  %71 = getelementptr inbounds %struct.ieee80211_vht_operation, %struct.ieee80211_vht_operation* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 8
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %69, %64
  br label %86

75:                                               ; preds = %2
  %76 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %77 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = icmp eq i32 %80, 3
  br i1 %81, label %82, label %85

82:                                               ; preds = %75
  %83 = load %struct.ieee80211_vht_operation*, %struct.ieee80211_vht_operation** %5, align 8
  %84 = getelementptr inbounds %struct.ieee80211_vht_operation, %struct.ieee80211_vht_operation* %83, i32 0, i32 2
  store i32 1, i32* %84, align 4
  br label %85

85:                                               ; preds = %82, %75
  br label %86

86:                                               ; preds = %85, %74
  %87 = call i32 @host_to_le16(i32 65532)
  %88 = load %struct.ieee80211_vht_operation*, %struct.ieee80211_vht_operation** %5, align 8
  %89 = getelementptr inbounds %struct.ieee80211_vht_operation, %struct.ieee80211_vht_operation* %88, i32 0, i32 3
  store i32 %87, i32* %89, align 4
  %90 = load i32*, i32** %6, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 16
  store i32* %91, i32** %6, align 8
  %92 = load i32*, i32** %6, align 8
  ret i32* %92
}

declare dso_local i32 @os_memset(%struct.ieee80211_vht_operation*, i32, i32) #1

declare dso_local i32 @host_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
