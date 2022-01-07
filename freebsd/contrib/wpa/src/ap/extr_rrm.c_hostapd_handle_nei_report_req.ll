; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_rrm.c_hostapd_handle_nei_report_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_rrm.c_hostapd_handle_nei_report_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32*, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32* }
%struct.ieee80211_mgmt = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32* }
%struct.wpa_ssid_value = type { i32, i32 }

@WLAN_RRM_CAPS_NEIGHBOR_REPORT = common dso_local global i32 0, align 4
@WLAN_EID_SSID = common dso_local global i32 0, align 4
@SSID_MAX_LEN = common dso_local global i32 0, align 4
@WLAN_EID_MEASURE_REQUEST = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Neighbor report request, measure type %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hostapd_data*, i32*, i64)* @hostapd_handle_nei_report_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hostapd_handle_nei_report_req(%struct.hostapd_data* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.hostapd_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ieee80211_mgmt*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.wpa_ssid_value, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.hostapd_data* %0, %struct.hostapd_data** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = bitcast i32* %16 to %struct.ieee80211_mgmt*
  store %struct.ieee80211_mgmt* %17, %struct.ieee80211_mgmt** %7, align 8
  %18 = bitcast %struct.wpa_ssid_value* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %18, i8 0, i64 8, i1 false)
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %19 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %20 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %19, i32 0, i32 0
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @WLAN_RRM_CAPS_NEIGHBOR_REPORT, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %3
  br label %162

30:                                               ; preds = %3
  %31 = load i32*, i32** %5, align 8
  %32 = load i64, i64* %6, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  store i32* %33, i32** %10, align 8
  %34 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %7, align 8
  %35 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %12, align 4
  %41 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %7, align 8
  %42 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  store i32* %47, i32** %8, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = ptrtoint i32* %48 to i64
  %51 = ptrtoint i32* %49 to i64
  %52 = sub i64 %50, %51
  %53 = sdiv exact i64 %52, 4
  store i64 %53, i64* %6, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = load i64, i64* %6, align 8
  %56 = load i32, i32* @WLAN_EID_SSID, align 4
  %57 = call i32* @get_ie(i32* %54, i64 %55, i32 %56)
  store i32* %57, i32** %9, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %83

60:                                               ; preds = %30
  %61 = load i32*, i32** %9, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %83

65:                                               ; preds = %60
  %66 = load i32*, i32** %9, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @SSID_MAX_LEN, align 4
  %70 = icmp sle i32 %68, %69
  br i1 %70, label %71, label %83

71:                                               ; preds = %65
  %72 = load i32*, i32** %9, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.wpa_ssid_value, %struct.wpa_ssid_value* %11, i32 0, i32 0
  store i32 %74, i32* %75, align 4
  %76 = getelementptr inbounds %struct.wpa_ssid_value, %struct.wpa_ssid_value* %11, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %9, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 2
  %80 = getelementptr inbounds %struct.wpa_ssid_value, %struct.wpa_ssid_value* %11, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @os_memcpy(i32 %77, i32* %79, i32 %81)
  br label %102

83:                                               ; preds = %65, %60, %30
  %84 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %85 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %84, i32 0, i32 0
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = getelementptr inbounds %struct.wpa_ssid_value, %struct.wpa_ssid_value* %11, i32 0, i32 0
  store i32 %89, i32* %90, align 4
  %91 = getelementptr inbounds %struct.wpa_ssid_value, %struct.wpa_ssid_value* %11, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %94 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %93, i32 0, i32 0
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds %struct.wpa_ssid_value, %struct.wpa_ssid_value* %11, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @os_memcpy(i32 %92, i32* %98, i32 %100)
  br label %102

102:                                              ; preds = %83, %71
  br label %103

103:                                              ; preds = %138, %102
  %104 = load i32*, i32** %8, align 8
  %105 = load i64, i64* %6, align 8
  %106 = load i32, i32* @WLAN_EID_MEASURE_REQUEST, align 4
  %107 = call i32* @get_ie(i32* %104, i64 %105, i32 %106)
  store i32* %107, i32** %9, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %109, label %152

109:                                              ; preds = %103
  %110 = load i32*, i32** %9, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 1
  %112 = load i32, i32* %111, align 4
  %113 = icmp slt i32 %112, 3
  br i1 %113, label %114, label %115

114:                                              ; preds = %109
  br label %152

115:                                              ; preds = %109
  %116 = load i32, i32* @MSG_DEBUG, align 4
  %117 = load i32*, i32** %9, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 4
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @wpa_printf(i32 %116, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %119)
  %121 = load i32*, i32** %9, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 4
  %123 = load i32, i32* %122, align 4
  switch i32 %123, label %138 [
    i32 129, label %124
    i32 128, label %134
  ]

124:                                              ; preds = %115
  %125 = load i32*, i32** %9, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 2
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %13, align 4
  %128 = load i32*, i32** %9, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 2
  %130 = load i32*, i32** %9, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @hostapd_parse_location_lci_req_age(i32* %129, i32 %132)
  store i32 %133, i32* %15, align 4
  br label %138

134:                                              ; preds = %115
  %135 = load i32*, i32** %9, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 2
  %137 = load i32, i32* %136, align 4
  store i32 %137, i32* %14, align 4
  br label %138

138:                                              ; preds = %115, %134, %124
  %139 = load i32*, i32** %9, align 8
  %140 = load i32*, i32** %9, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 1
  %142 = load i32, i32* %141, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %139, i64 %143
  %145 = getelementptr inbounds i32, i32* %144, i64 2
  store i32* %145, i32** %8, align 8
  %146 = load i32*, i32** %10, align 8
  %147 = load i32*, i32** %8, align 8
  %148 = ptrtoint i32* %146 to i64
  %149 = ptrtoint i32* %147 to i64
  %150 = sub i64 %148, %149
  %151 = sdiv exact i64 %150, 4
  store i64 %151, i64* %6, align 8
  br label %103

152:                                              ; preds = %114, %103
  %153 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %154 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %7, align 8
  %155 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* %12, align 4
  %158 = load i32, i32* %13, align 4
  %159 = load i32, i32* %14, align 4
  %160 = load i32, i32* %15, align 4
  %161 = call i32 @hostapd_send_nei_report_resp(%struct.hostapd_data* %153, i32 %156, i32 %157, %struct.wpa_ssid_value* %11, i32 %158, i32 %159, i32 %160)
  br label %162

162:                                              ; preds = %152, %29
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @get_ie(i32*, i64, i32) #2

declare dso_local i32 @os_memcpy(i32, i32*, i32) #2

declare dso_local i32 @wpa_printf(i32, i8*, i32) #2

declare dso_local i32 @hostapd_parse_location_lci_req_age(i32*, i32) #2

declare dso_local i32 @hostapd_send_nei_report_resp(%struct.hostapd_data*, i32, i32, %struct.wpa_ssid_value*, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
