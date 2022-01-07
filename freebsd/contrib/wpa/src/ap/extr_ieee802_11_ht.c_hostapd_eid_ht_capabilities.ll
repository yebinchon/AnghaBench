; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11_ht.c_hostapd_eid_ht_capabilities.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11_ht.c_hostapd_eid_ht_capabilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.ieee80211_ht_capabilities = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i8* }
%struct.ieee80211_obss_scan_parameters = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i8* }

@WLAN_EID_HT_CAP = common dso_local global i32 0, align 4
@WLAN_EID_OVERLAPPING_BSS_SCAN_PARAMS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @hostapd_eid_ht_capabilities(%struct.hostapd_data* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.hostapd_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ieee80211_ht_capabilities*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ieee80211_obss_scan_parameters*, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32*, i32** %5, align 8
  store i32* %9, i32** %7, align 8
  %10 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %11 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %10, i32 0, i32 0
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %2
  %17 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %18 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %17, i32 0, i32 1
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = icmp ne %struct.TYPE_6__* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %16
  %24 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %25 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %24, i32 0, i32 2
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23, %16, %2
  %31 = load i32*, i32** %5, align 8
  store i32* %31, i32** %3, align 8
  br label %119

32:                                               ; preds = %23
  %33 = load i32, i32* @WLAN_EID_HT_CAP, align 4
  %34 = load i32*, i32** %7, align 8
  %35 = getelementptr inbounds i32, i32* %34, i32 1
  store i32* %35, i32** %7, align 8
  store i32 %33, i32* %34, align 4
  %36 = load i32*, i32** %7, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %37, i32** %7, align 8
  store i32 72, i32* %36, align 4
  %38 = load i32*, i32** %7, align 8
  %39 = bitcast i32* %38 to %struct.ieee80211_ht_capabilities*
  store %struct.ieee80211_ht_capabilities* %39, %struct.ieee80211_ht_capabilities** %6, align 8
  %40 = load %struct.ieee80211_ht_capabilities*, %struct.ieee80211_ht_capabilities** %6, align 8
  %41 = bitcast %struct.ieee80211_ht_capabilities* %40 to %struct.ieee80211_obss_scan_parameters*
  %42 = call i32 @os_memset(%struct.ieee80211_obss_scan_parameters* %41, i32 0, i32 72)
  %43 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %44 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %43, i32 0, i32 0
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @host_to_le16(i32 %47)
  %49 = load %struct.ieee80211_ht_capabilities*, %struct.ieee80211_ht_capabilities** %6, align 8
  %50 = getelementptr inbounds %struct.ieee80211_ht_capabilities, %struct.ieee80211_ht_capabilities* %49, i32 0, i32 9
  store i8* %48, i8** %50, align 8
  %51 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %52 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %51, i32 0, i32 1
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ieee80211_ht_capabilities*, %struct.ieee80211_ht_capabilities** %6, align 8
  %59 = getelementptr inbounds %struct.ieee80211_ht_capabilities, %struct.ieee80211_ht_capabilities* %58, i32 0, i32 8
  store i32 %57, i32* %59, align 4
  %60 = load %struct.ieee80211_ht_capabilities*, %struct.ieee80211_ht_capabilities** %6, align 8
  %61 = getelementptr inbounds %struct.ieee80211_ht_capabilities, %struct.ieee80211_ht_capabilities* %60, i32 0, i32 7
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %64 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %63, i32 0, i32 1
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @os_memcpy(i32 %62, i32 %69, i32 16)
  %71 = load i32*, i32** %7, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 72
  store i32* %72, i32** %7, align 8
  %73 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %74 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %73, i32 0, i32 0
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %117

79:                                               ; preds = %32
  %80 = load i32, i32* @WLAN_EID_OVERLAPPING_BSS_SCAN_PARAMS, align 4
  %81 = load i32*, i32** %7, align 8
  %82 = getelementptr inbounds i32, i32* %81, i32 1
  store i32* %82, i32** %7, align 8
  store i32 %80, i32* %81, align 4
  %83 = load i32*, i32** %7, align 8
  %84 = getelementptr inbounds i32, i32* %83, i32 1
  store i32* %84, i32** %7, align 8
  store i32 72, i32* %83, align 4
  %85 = load i32*, i32** %7, align 8
  %86 = bitcast i32* %85 to %struct.ieee80211_obss_scan_parameters*
  store %struct.ieee80211_obss_scan_parameters* %86, %struct.ieee80211_obss_scan_parameters** %8, align 8
  %87 = load %struct.ieee80211_obss_scan_parameters*, %struct.ieee80211_obss_scan_parameters** %8, align 8
  %88 = call i32 @os_memset(%struct.ieee80211_obss_scan_parameters* %87, i32 0, i32 72)
  %89 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %90 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %89, i32 0, i32 0
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i8* @host_to_le16(i32 %93)
  %95 = load %struct.ieee80211_obss_scan_parameters*, %struct.ieee80211_obss_scan_parameters** %8, align 8
  %96 = getelementptr inbounds %struct.ieee80211_obss_scan_parameters, %struct.ieee80211_obss_scan_parameters* %95, i32 0, i32 6
  store i8* %94, i8** %96, align 8
  %97 = call i8* @host_to_le16(i32 20)
  %98 = load %struct.ieee80211_obss_scan_parameters*, %struct.ieee80211_obss_scan_parameters** %8, align 8
  %99 = getelementptr inbounds %struct.ieee80211_obss_scan_parameters, %struct.ieee80211_obss_scan_parameters* %98, i32 0, i32 5
  store i8* %97, i8** %99, align 8
  %100 = call i8* @host_to_le16(i32 10)
  %101 = load %struct.ieee80211_obss_scan_parameters*, %struct.ieee80211_obss_scan_parameters** %8, align 8
  %102 = getelementptr inbounds %struct.ieee80211_obss_scan_parameters, %struct.ieee80211_obss_scan_parameters* %101, i32 0, i32 4
  store i8* %100, i8** %102, align 8
  %103 = call i8* @host_to_le16(i32 200)
  %104 = load %struct.ieee80211_obss_scan_parameters*, %struct.ieee80211_obss_scan_parameters** %8, align 8
  %105 = getelementptr inbounds %struct.ieee80211_obss_scan_parameters, %struct.ieee80211_obss_scan_parameters* %104, i32 0, i32 3
  store i8* %103, i8** %105, align 8
  %106 = call i8* @host_to_le16(i32 20)
  %107 = load %struct.ieee80211_obss_scan_parameters*, %struct.ieee80211_obss_scan_parameters** %8, align 8
  %108 = getelementptr inbounds %struct.ieee80211_obss_scan_parameters, %struct.ieee80211_obss_scan_parameters* %107, i32 0, i32 2
  store i8* %106, i8** %108, align 8
  %109 = call i8* @host_to_le16(i32 5)
  %110 = load %struct.ieee80211_obss_scan_parameters*, %struct.ieee80211_obss_scan_parameters** %8, align 8
  %111 = getelementptr inbounds %struct.ieee80211_obss_scan_parameters, %struct.ieee80211_obss_scan_parameters* %110, i32 0, i32 1
  store i8* %109, i8** %111, align 8
  %112 = call i8* @host_to_le16(i32 25)
  %113 = load %struct.ieee80211_obss_scan_parameters*, %struct.ieee80211_obss_scan_parameters** %8, align 8
  %114 = getelementptr inbounds %struct.ieee80211_obss_scan_parameters, %struct.ieee80211_obss_scan_parameters* %113, i32 0, i32 0
  store i8* %112, i8** %114, align 8
  %115 = load i32*, i32** %7, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 72
  store i32* %116, i32** %7, align 8
  br label %117

117:                                              ; preds = %79, %32
  %118 = load i32*, i32** %7, align 8
  store i32* %118, i32** %3, align 8
  br label %119

119:                                              ; preds = %117, %30
  %120 = load i32*, i32** %3, align 8
  ret i32* %120
}

declare dso_local i32 @os_memset(%struct.ieee80211_obss_scan_parameters*, i32, i32) #1

declare dso_local i8* @host_to_le16(i32) #1

declare dso_local i32 @os_memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
