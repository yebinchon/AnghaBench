; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_beacon.c_ieee802_11_build_ap_params.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_beacon.c_ieee802_11_build_ap_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32, i32, %struct.TYPE_18__*, %struct.TYPE_16__*, %struct.TYPE_15__*, i64, i64, i32 }
%struct.TYPE_18__ = type { i64, i64, i32, i32, %struct.TYPE_17__*, %struct.TYPE_14__*, i32, i64 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, i64, i32, i32, i64, i32, i32, i32, i32, i64, i64, i32, i64, i64, i64, %struct.TYPE_13__, i32, i32, i32, i32, i64, i64, i64, i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_15__ = type { i32, i64, i32, i32, i32, i32, i64, i64, i64 }
%struct.wpa_driver_ap_params = type { i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, %struct.wpa_driver_ap_params*, %struct.wpa_driver_ap_params*, %struct.wpa_driver_ap_params*, %struct.TYPE_11__, %struct.wpa_driver_ap_params*, %struct.wpa_driver_ap_params*, %struct.wpa_driver_ap_params*, i8*, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.wpa_driver_ap_params*, i8*, i8* }
%struct.ieee80211_mgmt = type { i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt*, %struct.TYPE_11__, %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt*, i8*, i32 }

@WPA_PROTO_WPA = common dso_local global i32 0, align 4
@WPA_PROTO_RSN = common dso_local global i32 0, align 4
@NO_SSID_HIDING = common dso_local global i32 0, align 4
@HIDDEN_SSID_ZERO_LEN = common dso_local global i32 0, align 4
@HIDDEN_SSID_ZERO_CONTENTS = common dso_local global i32 0, align 4
@HT_CAP_INFO_SMPS_MASK = common dso_local global i32 0, align 4
@WPA_DRIVER_FLAGS_FTM_RESPONDER = common dso_local global i32 0, align 4
@MSG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [77 x i8] c"Not configuring FTM responder as the driver doesn't advertise support for it\00", align 1
@BEACON_HEAD_BUF_SIZE = common dso_local global i32 0, align 4
@BEACON_TAIL_BUF_SIZE = common dso_local global i64 0, align 8
@ERP_INFO_USE_PROTECTION = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@HOSTAPD_MODE_IEEE80211G = common dso_local global i64 0, align 8
@IEEE80211_MODE_AP = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@P2P_ENABLED = common dso_local global i32 0, align 4
@P2P_GROUP_OWNER = common dso_local global i32 0, align 4
@P2P_MANAGE = common dso_local global i32 0, align 4
@SHORT_PREAMBLE = common dso_local global i64 0, align 8
@WLAN_EID_SSID = common dso_local global i32 0, align 4
@WLAN_FC_STYPE_BEACON = common dso_local global i32 0, align 4
@WLAN_FC_TYPE_MGMT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee802_11_build_ap_params(%struct.hostapd_data* %0, %struct.wpa_driver_ap_params* %1) #0 {
  %3 = alloca %struct.hostapd_data*, align 8
  %4 = alloca %struct.wpa_driver_ap_params*, align 8
  %5 = alloca %struct.ieee80211_mgmt*, align 8
  %6 = alloca %struct.wpa_driver_ap_params*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.wpa_driver_ap_params*, align 8
  %10 = alloca i64, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %3, align 8
  store %struct.wpa_driver_ap_params* %1, %struct.wpa_driver_ap_params** %4, align 8
  store %struct.ieee80211_mgmt* null, %struct.ieee80211_mgmt** %5, align 8
  store %struct.wpa_driver_ap_params* null, %struct.wpa_driver_ap_params** %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store %struct.wpa_driver_ap_params* null, %struct.wpa_driver_ap_params** %9, align 8
  store i64 0, i64* %10, align 8
  %11 = load %struct.wpa_driver_ap_params*, %struct.wpa_driver_ap_params** %4, align 8
  %12 = call i32 @os_memset(%struct.wpa_driver_ap_params* %11, i32 0, i32 256)
  %13 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %14 = bitcast %struct.ieee80211_mgmt* %13 to %struct.wpa_driver_ap_params*
  %15 = load %struct.wpa_driver_ap_params*, %struct.wpa_driver_ap_params** %4, align 8
  %16 = getelementptr inbounds %struct.wpa_driver_ap_params, %struct.wpa_driver_ap_params* %15, i32 0, i32 37
  store %struct.wpa_driver_ap_params* %14, %struct.wpa_driver_ap_params** %16, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load %struct.wpa_driver_ap_params*, %struct.wpa_driver_ap_params** %4, align 8
  %19 = getelementptr inbounds %struct.wpa_driver_ap_params, %struct.wpa_driver_ap_params* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = load %struct.wpa_driver_ap_params*, %struct.wpa_driver_ap_params** %6, align 8
  %21 = load %struct.wpa_driver_ap_params*, %struct.wpa_driver_ap_params** %4, align 8
  %22 = getelementptr inbounds %struct.wpa_driver_ap_params, %struct.wpa_driver_ap_params* %21, i32 0, i32 36
  store %struct.wpa_driver_ap_params* %20, %struct.wpa_driver_ap_params** %22, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load %struct.wpa_driver_ap_params*, %struct.wpa_driver_ap_params** %4, align 8
  %25 = getelementptr inbounds %struct.wpa_driver_ap_params, %struct.wpa_driver_ap_params* %24, i32 0, i32 1
  store i64 %23, i64* %25, align 8
  %26 = load %struct.wpa_driver_ap_params*, %struct.wpa_driver_ap_params** %9, align 8
  %27 = load %struct.wpa_driver_ap_params*, %struct.wpa_driver_ap_params** %4, align 8
  %28 = getelementptr inbounds %struct.wpa_driver_ap_params, %struct.wpa_driver_ap_params* %27, i32 0, i32 35
  store %struct.wpa_driver_ap_params* %26, %struct.wpa_driver_ap_params** %28, align 8
  %29 = load i64, i64* %10, align 8
  %30 = load %struct.wpa_driver_ap_params*, %struct.wpa_driver_ap_params** %4, align 8
  %31 = getelementptr inbounds %struct.wpa_driver_ap_params, %struct.wpa_driver_ap_params* %30, i32 0, i32 2
  store i64 %29, i64* %31, align 8
  %32 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %33 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %32, i32 0, i32 3
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 23
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.wpa_driver_ap_params*, %struct.wpa_driver_ap_params** %4, align 8
  %38 = getelementptr inbounds %struct.wpa_driver_ap_params, %struct.wpa_driver_ap_params* %37, i32 0, i32 34
  store i32 %36, i32* %38, align 8
  %39 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %40 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %39, i32 0, i32 4
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 6
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.wpa_driver_ap_params*, %struct.wpa_driver_ap_params** %4, align 8
  %45 = getelementptr inbounds %struct.wpa_driver_ap_params, %struct.wpa_driver_ap_params* %44, i32 0, i32 33
  store i64 %43, i64* %45, align 8
  %46 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %47 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %46, i32 0, i32 2
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.wpa_driver_ap_params*, %struct.wpa_driver_ap_params** %4, align 8
  %52 = getelementptr inbounds %struct.wpa_driver_ap_params, %struct.wpa_driver_ap_params* %51, i32 0, i32 32
  store i32 %50, i32* %52, align 8
  %53 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %54 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %53, i32 0, i32 4
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.wpa_driver_ap_params*, %struct.wpa_driver_ap_params** %4, align 8
  %59 = getelementptr inbounds %struct.wpa_driver_ap_params, %struct.wpa_driver_ap_params* %58, i32 0, i32 31
  store i32 %57, i32* %59, align 4
  %60 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %61 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %60, i32 0, i32 4
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.wpa_driver_ap_params*, %struct.wpa_driver_ap_params** %4, align 8
  %66 = getelementptr inbounds %struct.wpa_driver_ap_params, %struct.wpa_driver_ap_params* %65, i32 0, i32 30
  store i32 %64, i32* %66, align 8
  %67 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %68 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %67, i32 0, i32 3
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 19
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.wpa_driver_ap_params*, %struct.wpa_driver_ap_params** %4, align 8
  %74 = getelementptr inbounds %struct.wpa_driver_ap_params, %struct.wpa_driver_ap_params* %73, i32 0, i32 29
  store i32 %72, i32* %74, align 4
  %75 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %76 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %75, i32 0, i32 3
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 19
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.wpa_driver_ap_params*, %struct.wpa_driver_ap_params** %4, align 8
  %82 = getelementptr inbounds %struct.wpa_driver_ap_params, %struct.wpa_driver_ap_params* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 8
  %83 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %84 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %83, i32 0, i32 3
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @WPA_PROTO_WPA, align 4
  %89 = load i32, i32* @WPA_PROTO_RSN, align 4
  %90 = or i32 %88, %89
  %91 = and i32 %87, %90
  %92 = load i32, i32* @WPA_PROTO_WPA, align 4
  %93 = load i32, i32* @WPA_PROTO_RSN, align 4
  %94 = or i32 %92, %93
  %95 = icmp eq i32 %91, %94
  br i1 %95, label %96, label %110

96:                                               ; preds = %2
  %97 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %98 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %97, i32 0, i32 3
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %103 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %102, i32 0, i32 3
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = or i32 %101, %106
  %108 = load %struct.wpa_driver_ap_params*, %struct.wpa_driver_ap_params** %4, align 8
  %109 = getelementptr inbounds %struct.wpa_driver_ap_params, %struct.wpa_driver_ap_params* %108, i32 0, i32 4
  store i32 %107, i32* %109, align 4
  br label %146

110:                                              ; preds = %2
  %111 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %112 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %111, i32 0, i32 3
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @WPA_PROTO_RSN, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %110
  %120 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %121 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %120, i32 0, i32 3
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.wpa_driver_ap_params*, %struct.wpa_driver_ap_params** %4, align 8
  %126 = getelementptr inbounds %struct.wpa_driver_ap_params, %struct.wpa_driver_ap_params* %125, i32 0, i32 4
  store i32 %124, i32* %126, align 4
  br label %145

127:                                              ; preds = %110
  %128 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %129 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %128, i32 0, i32 3
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @WPA_PROTO_WPA, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %144

136:                                              ; preds = %127
  %137 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %138 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %137, i32 0, i32 3
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.wpa_driver_ap_params*, %struct.wpa_driver_ap_params** %4, align 8
  %143 = getelementptr inbounds %struct.wpa_driver_ap_params, %struct.wpa_driver_ap_params* %142, i32 0, i32 4
  store i32 %141, i32* %143, align 4
  br label %144

144:                                              ; preds = %136, %127
  br label %145

145:                                              ; preds = %144, %119
  br label %146

146:                                              ; preds = %145, %96
  %147 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %148 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %147, i32 0, i32 3
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 22
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.wpa_driver_ap_params*, %struct.wpa_driver_ap_params** %4, align 8
  %153 = getelementptr inbounds %struct.wpa_driver_ap_params, %struct.wpa_driver_ap_params* %152, i32 0, i32 28
  store i32 %151, i32* %153, align 8
  %154 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %155 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %154, i32 0, i32 3
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 21
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.wpa_driver_ap_params*, %struct.wpa_driver_ap_params** %4, align 8
  %160 = getelementptr inbounds %struct.wpa_driver_ap_params, %struct.wpa_driver_ap_params* %159, i32 0, i32 27
  store i32 %158, i32* %160, align 4
  %161 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %162 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %161, i32 0, i32 3
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 20
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.wpa_driver_ap_params*, %struct.wpa_driver_ap_params** %4, align 8
  %167 = getelementptr inbounds %struct.wpa_driver_ap_params, %struct.wpa_driver_ap_params* %166, i32 0, i32 26
  store i32 %165, i32* %167, align 8
  %168 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %169 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %168, i32 0, i32 3
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.wpa_driver_ap_params*, %struct.wpa_driver_ap_params** %4, align 8
  %174 = getelementptr inbounds %struct.wpa_driver_ap_params, %struct.wpa_driver_ap_params* %173, i32 0, i32 5
  store i32 %172, i32* %174, align 8
  %175 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %176 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %175, i32 0, i32 3
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 19
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %215, label %183

183:                                              ; preds = %146
  %184 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %185 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %184, i32 0, i32 3
  %186 = load %struct.TYPE_16__*, %struct.TYPE_16__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %215, label %190

190:                                              ; preds = %183
  %191 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %192 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %191, i32 0, i32 3
  %193 = load %struct.TYPE_16__*, %struct.TYPE_16__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %193, i32 0, i32 18
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %213

197:                                              ; preds = %190
  %198 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %199 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %198, i32 0, i32 3
  %200 = load %struct.TYPE_16__*, %struct.TYPE_16__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %200, i32 0, i32 17
  %202 = load i64, i64* %201, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %211, label %204

204:                                              ; preds = %197
  %205 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %206 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %205, i32 0, i32 3
  %207 = load %struct.TYPE_16__*, %struct.TYPE_16__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %207, i32 0, i32 16
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %209, 0
  br label %211

211:                                              ; preds = %204, %197
  %212 = phi i1 [ true, %197 ], [ %210, %204 ]
  br label %213

213:                                              ; preds = %211, %190
  %214 = phi i1 [ false, %190 ], [ %212, %211 ]
  br label %215

215:                                              ; preds = %213, %183, %146
  %216 = phi i1 [ true, %183 ], [ true, %146 ], [ %214, %213 ]
  %217 = zext i1 %216 to i32
  %218 = load %struct.wpa_driver_ap_params*, %struct.wpa_driver_ap_params** %4, align 8
  %219 = getelementptr inbounds %struct.wpa_driver_ap_params, %struct.wpa_driver_ap_params* %218, i32 0, i32 6
  store i32 %217, i32* %219, align 4
  %220 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %221 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %220, i32 0, i32 3
  %222 = load %struct.TYPE_16__*, %struct.TYPE_16__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  switch i32 %224, label %237 [
    i32 0, label %225
    i32 1, label %229
    i32 2, label %233
  ]

225:                                              ; preds = %215
  %226 = load i32, i32* @NO_SSID_HIDING, align 4
  %227 = load %struct.wpa_driver_ap_params*, %struct.wpa_driver_ap_params** %4, align 8
  %228 = getelementptr inbounds %struct.wpa_driver_ap_params, %struct.wpa_driver_ap_params* %227, i32 0, i32 25
  store i32 %226, i32* %228, align 4
  br label %237

229:                                              ; preds = %215
  %230 = load i32, i32* @HIDDEN_SSID_ZERO_LEN, align 4
  %231 = load %struct.wpa_driver_ap_params*, %struct.wpa_driver_ap_params** %4, align 8
  %232 = getelementptr inbounds %struct.wpa_driver_ap_params, %struct.wpa_driver_ap_params* %231, i32 0, i32 25
  store i32 %230, i32* %232, align 4
  br label %237

233:                                              ; preds = %215
  %234 = load i32, i32* @HIDDEN_SSID_ZERO_CONTENTS, align 4
  %235 = load %struct.wpa_driver_ap_params*, %struct.wpa_driver_ap_params** %4, align 8
  %236 = getelementptr inbounds %struct.wpa_driver_ap_params, %struct.wpa_driver_ap_params* %235, i32 0, i32 25
  store i32 %234, i32* %236, align 4
  br label %237

237:                                              ; preds = %215, %233, %229, %225
  %238 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %239 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %238, i32 0, i32 3
  %240 = load %struct.TYPE_16__*, %struct.TYPE_16__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %240, i32 0, i32 15
  %242 = load i32, i32* %241, align 8
  %243 = load %struct.wpa_driver_ap_params*, %struct.wpa_driver_ap_params** %4, align 8
  %244 = getelementptr inbounds %struct.wpa_driver_ap_params, %struct.wpa_driver_ap_params* %243, i32 0, i32 24
  store i32 %242, i32* %244, align 8
  %245 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %246 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %245, i32 0, i32 4
  %247 = load %struct.TYPE_15__*, %struct.TYPE_15__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = load i32, i32* @HT_CAP_INFO_SMPS_MASK, align 4
  %251 = and i32 %249, %250
  %252 = load %struct.wpa_driver_ap_params*, %struct.wpa_driver_ap_params** %4, align 8
  %253 = getelementptr inbounds %struct.wpa_driver_ap_params, %struct.wpa_driver_ap_params* %252, i32 0, i32 7
  store i32 %251, i32* %253, align 8
  %254 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %255 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %254, i32 0, i32 3
  %256 = load %struct.TYPE_16__*, %struct.TYPE_16__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %256, i32 0, i32 13
  %258 = load i64, i64* %257, align 8
  %259 = load %struct.wpa_driver_ap_params*, %struct.wpa_driver_ap_params** %4, align 8
  %260 = getelementptr inbounds %struct.wpa_driver_ap_params, %struct.wpa_driver_ap_params* %259, i32 0, i32 23
  store i64 %258, i64* %260, align 8
  %261 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %262 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %261, i32 0, i32 3
  %263 = load %struct.TYPE_16__*, %struct.TYPE_16__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %263, i32 0, i32 13
  %265 = load i64, i64* %264, align 8
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %283

267:                                              ; preds = %237
  %268 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %269 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %268, i32 0, i32 3
  %270 = load %struct.TYPE_16__*, %struct.TYPE_16__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %270, i32 0, i32 12
  %272 = load i32, i32* %271, align 4
  %273 = call i32 @is_zero_ether_addr(i32 %272)
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %283, label %275

275:                                              ; preds = %267
  %276 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %277 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %276, i32 0, i32 3
  %278 = load %struct.TYPE_16__*, %struct.TYPE_16__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %278, i32 0, i32 12
  %280 = load i32, i32* %279, align 4
  %281 = load %struct.wpa_driver_ap_params*, %struct.wpa_driver_ap_params** %4, align 8
  %282 = getelementptr inbounds %struct.wpa_driver_ap_params, %struct.wpa_driver_ap_params* %281, i32 0, i32 22
  store i32 %280, i32* %282, align 4
  br label %283

283:                                              ; preds = %275, %267, %237
  %284 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %285 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %284, i32 0, i32 3
  %286 = load %struct.TYPE_16__*, %struct.TYPE_16__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %286, i32 0, i32 11
  %288 = load i32, i32* %287, align 8
  %289 = load %struct.wpa_driver_ap_params*, %struct.wpa_driver_ap_params** %4, align 8
  %290 = getelementptr inbounds %struct.wpa_driver_ap_params, %struct.wpa_driver_ap_params* %289, i32 0, i32 21
  store i32 %288, i32* %290, align 8
  %291 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %292 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %291, i32 0, i32 3
  %293 = load %struct.TYPE_16__*, %struct.TYPE_16__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %293, i32 0, i32 10
  %295 = load i32, i32* %294, align 4
  %296 = load %struct.wpa_driver_ap_params*, %struct.wpa_driver_ap_params** %4, align 8
  %297 = getelementptr inbounds %struct.wpa_driver_ap_params, %struct.wpa_driver_ap_params* %296, i32 0, i32 20
  store i32 %295, i32* %297, align 4
  %298 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %299 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %298, i32 0, i32 3
  %300 = load %struct.TYPE_16__*, %struct.TYPE_16__** %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %300, i32 0, i32 7
  %302 = load i32, i32* %301, align 4
  %303 = load %struct.wpa_driver_ap_params*, %struct.wpa_driver_ap_params** %4, align 8
  %304 = getelementptr inbounds %struct.wpa_driver_ap_params, %struct.wpa_driver_ap_params* %303, i32 0, i32 17
  store i32 %302, i32* %304, align 8
  %305 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %306 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %305, i32 0, i32 3
  %307 = load %struct.TYPE_16__*, %struct.TYPE_16__** %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %307, i32 0, i32 6
  %309 = load i32, i32* %308, align 8
  %310 = load %struct.wpa_driver_ap_params*, %struct.wpa_driver_ap_params** %4, align 8
  %311 = getelementptr inbounds %struct.wpa_driver_ap_params, %struct.wpa_driver_ap_params* %310, i32 0, i32 16
  store i32 %309, i32* %311, align 4
  %312 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %313 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %312, i32 0, i32 3
  %314 = load %struct.TYPE_16__*, %struct.TYPE_16__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %314, i32 0, i32 5
  %316 = load i64, i64* %315, align 8
  %317 = icmp ne i64 %316, 0
  br i1 %317, label %318, label %352

318:                                              ; preds = %283
  %319 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %320 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %319, i32 0, i32 2
  %321 = load %struct.TYPE_18__*, %struct.TYPE_18__** %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %321, i32 0, i32 3
  %323 = load i32, i32* %322, align 4
  %324 = load i32, i32* @WPA_DRIVER_FLAGS_FTM_RESPONDER, align 4
  %325 = and i32 %323, %324
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %348

327:                                              ; preds = %318
  %328 = load %struct.wpa_driver_ap_params*, %struct.wpa_driver_ap_params** %4, align 8
  %329 = getelementptr inbounds %struct.wpa_driver_ap_params, %struct.wpa_driver_ap_params* %328, i32 0, i32 13
  store i32 1, i32* %329, align 8
  %330 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %331 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %330, i32 0, i32 2
  %332 = load %struct.TYPE_18__*, %struct.TYPE_18__** %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %332, i32 0, i32 4
  %334 = load %struct.TYPE_17__*, %struct.TYPE_17__** %333, align 8
  %335 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %334, i32 0, i32 1
  %336 = load i32, i32* %335, align 4
  %337 = load %struct.wpa_driver_ap_params*, %struct.wpa_driver_ap_params** %4, align 8
  %338 = getelementptr inbounds %struct.wpa_driver_ap_params, %struct.wpa_driver_ap_params* %337, i32 0, i32 15
  store i32 %336, i32* %338, align 8
  %339 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %340 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %339, i32 0, i32 2
  %341 = load %struct.TYPE_18__*, %struct.TYPE_18__** %340, align 8
  %342 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %341, i32 0, i32 4
  %343 = load %struct.TYPE_17__*, %struct.TYPE_17__** %342, align 8
  %344 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 4
  %346 = load %struct.wpa_driver_ap_params*, %struct.wpa_driver_ap_params** %4, align 8
  %347 = getelementptr inbounds %struct.wpa_driver_ap_params, %struct.wpa_driver_ap_params* %346, i32 0, i32 14
  store i32 %345, i32* %347, align 4
  br label %351

348:                                              ; preds = %318
  %349 = load i32, i32* @MSG_WARNING, align 4
  %350 = call i32 @wpa_printf(i32 %349, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0))
  br label %351

351:                                              ; preds = %348, %327
  br label %352

352:                                              ; preds = %351, %283
  ret i32 0
}

declare dso_local i32 @os_memset(%struct.wpa_driver_ap_params*, i32, i32) #1

declare dso_local i32 @is_zero_ether_addr(i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
