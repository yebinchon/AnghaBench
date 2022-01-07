; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ap.c_wpa_supplicant_create_ap.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ap.c_wpa_supplicant_create_ap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, i64, i32, i32, %struct.hostapd_iface*, i32, i64, i32, i32, i32, %struct.wpa_ssid*, i32, i32, i32, %struct.TYPE_13__*, %struct.TYPE_12__*, %struct.TYPE_11__*, i32, i32, i32, i32, i32, %struct.TYPE_10__ }
%struct.hostapd_iface = type { i32, i64, %struct.hostapd_config*, %struct.TYPE_15__**, i32, i32, i32, i32, i32, %struct.wpa_supplicant* }
%struct.hostapd_config = type { i64, i32, i64, %struct.TYPE_16__**, i32 }
%struct.TYPE_16__ = type { i32, i32, i8* }
%struct.TYPE_15__ = type { i32, i32, i32, i32, %struct.wpa_supplicant*, i32, i32, i32, %struct.wpa_supplicant*, i32, %struct.wpa_supplicant*, i32, %struct.wpa_supplicant*, i32, %struct.wpa_supplicant*, i32, %struct.wpa_supplicant*, i32, %struct.wpa_supplicant*, i32, %struct.TYPE_12__*, %struct.wpa_supplicant* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.wpa_ssid = type { i64, i32, i32, i32, i32, i32, i32, i32* }
%struct.wpa_driver_associate_params = type { i64, i32, i64, i64, i32, i32, %struct.TYPE_14__, i32, i32, i32* }
%struct.TYPE_14__ = type { i32 }

@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"No SSID configured for AP mode\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Setting up AP (SSID='%s')\00", align 1
@IEEE80211_MODE_AP = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_PSK = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_NONE = common dso_local global i32 0, align 4
@MSG_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"WPA: Failed to select pairwise cipher.\00", align 1
@WPA_DRIVER_FLAGS_AP_UAPSD = common dso_local global i32 0, align 4
@WPA_IF_P2P_GO = common dso_local global i32 0, align 4
@WPA_IF_AP_BSS = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Failed to start AP functionality\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Failed to create AP configuration\00", align 1
@ap_public_action_rx = common dso_local global i32 0, align 4
@ap_vendor_action_rx = common dso_local global i32 0, align 4
@ap_probe_req_rx = common dso_local global i32 0, align 4
@ap_wps_reg_success_cb = common dso_local global i32 0, align 4
@ap_wps_event_cb = common dso_local global i32 0, align 4
@ap_sta_authorized_cb = common dso_local global i32 0, align 4
@wpas_ap_configured_cb = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"Failed to initialize AP interface\00", align 1
@P2P_ENABLED = common dso_local global i8* null, align 8
@P2P_GROUP_FORMATION = common dso_local global i8* null, align 8
@P2P_GROUP_OWNER = common dso_local global i8* null, align 8
@ap_new_psk_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpa_supplicant_create_ap(%struct.wpa_supplicant* %0, %struct.wpa_ssid* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca %struct.wpa_ssid*, align 8
  %6 = alloca %struct.wpa_driver_associate_params, align 8
  %7 = alloca %struct.hostapd_iface*, align 8
  %8 = alloca %struct.hostapd_config*, align 8
  %9 = alloca i64, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store %struct.wpa_ssid* %1, %struct.wpa_ssid** %5, align 8
  %10 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %11 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %10, i32 0, i32 7
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %2
  %15 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %16 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14, %2
  %20 = load i32, i32* @MSG_ERROR, align 4
  %21 = call i32 (i32, i8*, ...) @wpa_printf(i32 %20, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %506

22:                                               ; preds = %14
  %23 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %24 = call i32 @wpa_supplicant_ap_deinit(%struct.wpa_supplicant* %23)
  %25 = load i32, i32* @MSG_DEBUG, align 4
  %26 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %27 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %26, i32 0, i32 7
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %30 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @wpa_ssid_txt(i32* %28, i64 %31)
  %33 = call i32 (i32, i8*, ...) @wpa_printf(i32 %25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = call i32 @os_memset(%struct.wpa_driver_associate_params* %6, i32 0, i32 64)
  %35 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %36 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %35, i32 0, i32 7
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds %struct.wpa_driver_associate_params, %struct.wpa_driver_associate_params* %6, i32 0, i32 9
  store i32* %37, i32** %38, align 8
  %39 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %40 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.wpa_driver_associate_params, %struct.wpa_driver_associate_params* %6, i32 0, i32 0
  store i64 %41, i64* %42, align 8
  %43 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %44 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  switch i32 %45, label %49 [
    i32 130, label %46
    i32 129, label %46
    i32 128, label %46
  ]

46:                                               ; preds = %22, %22, %22
  %47 = load i32, i32* @IEEE80211_MODE_AP, align 4
  %48 = getelementptr inbounds %struct.wpa_driver_associate_params, %struct.wpa_driver_associate_params* %6, i32 0, i32 8
  store i32 %47, i32* %48, align 8
  br label %50

49:                                               ; preds = %22
  store i32 -1, i32* %3, align 4
  br label %506

50:                                               ; preds = %46
  %51 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %52 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %57 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %56, i32 0, i32 2
  store i32 2462, i32* %57, align 4
  br label %58

58:                                               ; preds = %55, %50
  %59 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %60 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.wpa_driver_associate_params, %struct.wpa_driver_associate_params* %6, i32 0, i32 6
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %65 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.wpa_driver_associate_params, %struct.wpa_driver_associate_params* %6, i32 0, i32 7
  store i32 %66, i32* %67, align 4
  %68 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %69 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @WPA_KEY_MGMT_PSK, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %58
  %75 = load i32, i32* @WPA_KEY_MGMT_PSK, align 4
  %76 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %77 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  br label %82

78:                                               ; preds = %58
  %79 = load i32, i32* @WPA_KEY_MGMT_NONE, align 4
  %80 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %81 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  br label %82

82:                                               ; preds = %78, %74
  %83 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %84 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = getelementptr inbounds %struct.wpa_driver_associate_params, %struct.wpa_driver_associate_params* %6, i32 0, i32 1
  store i32 %85, i32* %86, align 8
  %87 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %88 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 8
  %90 = call i64 @wpa_pick_pairwise_cipher(i32 %89, i32 1)
  %91 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %92 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %91, i32 0, i32 1
  store i64 %90, i64* %92, align 8
  %93 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %94 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp slt i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %82
  %98 = load i32, i32* @MSG_WARNING, align 4
  %99 = call i32 (i32, i8*, ...) @wpa_printf(i32 %98, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %506

100:                                              ; preds = %82
  %101 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %102 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds %struct.wpa_driver_associate_params, %struct.wpa_driver_associate_params* %6, i32 0, i32 2
  store i64 %103, i64* %104, align 8
  %105 = getelementptr inbounds %struct.wpa_driver_associate_params, %struct.wpa_driver_associate_params* %6, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds %struct.wpa_driver_associate_params, %struct.wpa_driver_associate_params* %6, i32 0, i32 3
  store i64 %106, i64* %107, align 8
  %108 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %109 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %108, i32 0, i32 15
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %100
  %115 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %116 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %115, i32 0, i32 15
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = getelementptr inbounds %struct.wpa_driver_associate_params, %struct.wpa_driver_associate_params* %6, i32 0, i32 5
  store i32 %119, i32* %120, align 4
  br label %137

121:                                              ; preds = %100
  %122 = getelementptr inbounds %struct.wpa_driver_associate_params, %struct.wpa_driver_associate_params* %6, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %121
  %126 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %127 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @WPA_DRIVER_FLAGS_AP_UAPSD, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %125
  %133 = getelementptr inbounds %struct.wpa_driver_associate_params, %struct.wpa_driver_associate_params* %6, i32 0, i32 5
  store i32 1, i32* %133, align 4
  br label %136

134:                                              ; preds = %125, %121
  %135 = getelementptr inbounds %struct.wpa_driver_associate_params, %struct.wpa_driver_associate_params* %6, i32 0, i32 5
  store i32 -1, i32* %135, align 4
  br label %136

136:                                              ; preds = %134, %132
  br label %137

137:                                              ; preds = %136, %114
  %138 = getelementptr inbounds %struct.wpa_driver_associate_params, %struct.wpa_driver_associate_params* %6, i32 0, i32 6
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %142 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %141, i32 0, i32 22
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %146 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %145, i32 0, i32 22
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i64 @ieee80211_is_dfs(i32 %140, i32 %144, i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %137
  %152 = getelementptr inbounds %struct.wpa_driver_associate_params, %struct.wpa_driver_associate_params* %6, i32 0, i32 6
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 0
  store i32 0, i32* %153, align 8
  br label %154

154:                                              ; preds = %151, %137
  %155 = getelementptr inbounds %struct.wpa_driver_associate_params, %struct.wpa_driver_associate_params* %6, i32 0, i32 4
  %156 = load i32, i32* %155, align 8
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %154
  %159 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %160 = load i32, i32* @WPA_IF_P2P_GO, align 4
  %161 = call i32 @wpa_drv_get_ext_capa(%struct.wpa_supplicant* %159, i32 %160)
  br label %166

162:                                              ; preds = %154
  %163 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %164 = load i32, i32* @WPA_IF_AP_BSS, align 4
  %165 = call i32 @wpa_drv_get_ext_capa(%struct.wpa_supplicant* %163, i32 %164)
  br label %166

166:                                              ; preds = %162, %158
  %167 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %168 = call i64 @wpa_drv_associate(%struct.wpa_supplicant* %167, %struct.wpa_driver_associate_params* %6)
  %169 = icmp slt i64 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %166
  %171 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %172 = load i32, i32* @MSG_INFO, align 4
  %173 = call i32 @wpa_msg(%struct.wpa_supplicant* %171, i32 %172, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %506

174:                                              ; preds = %166
  %175 = call %struct.hostapd_iface* (...) @hostapd_alloc_iface()
  store %struct.hostapd_iface* %175, %struct.hostapd_iface** %7, align 8
  %176 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %177 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %176, i32 0, i32 4
  store %struct.hostapd_iface* %175, %struct.hostapd_iface** %177, align 8
  %178 = load %struct.hostapd_iface*, %struct.hostapd_iface** %7, align 8
  %179 = icmp eq %struct.hostapd_iface* %178, null
  br i1 %179, label %180, label %181

180:                                              ; preds = %174
  store i32 -1, i32* %3, align 4
  br label %506

181:                                              ; preds = %174
  %182 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %183 = load %struct.hostapd_iface*, %struct.hostapd_iface** %7, align 8
  %184 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %183, i32 0, i32 9
  store %struct.wpa_supplicant* %182, %struct.wpa_supplicant** %184, align 8
  %185 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %186 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.hostapd_iface*, %struct.hostapd_iface** %7, align 8
  %189 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %188, i32 0, i32 0
  store i32 %187, i32* %189, align 8
  %190 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %191 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %190, i32 0, i32 21
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.hostapd_iface*, %struct.hostapd_iface** %7, align 8
  %194 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %193, i32 0, i32 8
  store i32 %192, i32* %194, align 8
  %195 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %196 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %195, i32 0, i32 20
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.hostapd_iface*, %struct.hostapd_iface** %7, align 8
  %199 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %198, i32 0, i32 7
  store i32 %197, i32* %199, align 4
  %200 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %201 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %200, i32 0, i32 19
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.hostapd_iface*, %struct.hostapd_iface** %7, align 8
  %204 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %203, i32 0, i32 6
  store i32 %202, i32* %204, align 8
  %205 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %206 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %205, i32 0, i32 18
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.hostapd_iface*, %struct.hostapd_iface** %7, align 8
  %209 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %208, i32 0, i32 5
  store i32 %207, i32* %209, align 4
  %210 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %211 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %210, i32 0, i32 17
  %212 = load i32, i32* %211, align 8
  %213 = load %struct.hostapd_iface*, %struct.hostapd_iface** %7, align 8
  %214 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %213, i32 0, i32 4
  store i32 %212, i32* %214, align 8
  %215 = call %struct.hostapd_config* (...) @hostapd_config_defaults()
  store %struct.hostapd_config* %215, %struct.hostapd_config** %8, align 8
  %216 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %217 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %216, i32 0, i32 4
  %218 = load %struct.hostapd_iface*, %struct.hostapd_iface** %217, align 8
  %219 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %218, i32 0, i32 2
  store %struct.hostapd_config* %215, %struct.hostapd_config** %219, align 8
  %220 = load %struct.hostapd_config*, %struct.hostapd_config** %8, align 8
  %221 = icmp eq %struct.hostapd_config* %220, null
  br i1 %221, label %222, label %225

222:                                              ; preds = %181
  %223 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %224 = call i32 @wpa_supplicant_ap_deinit(%struct.wpa_supplicant* %223)
  store i32 -1, i32* %3, align 4
  br label %506

225:                                              ; preds = %181
  %226 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %227 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %226, i32 0, i32 4
  %228 = load %struct.hostapd_iface*, %struct.hostapd_iface** %227, align 8
  %229 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %228, i32 0, i32 2
  %230 = load %struct.hostapd_config*, %struct.hostapd_config** %229, align 8
  %231 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %230, i32 0, i32 4
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %234 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %233, i32 0, i32 16
  %235 = load %struct.TYPE_11__*, %struct.TYPE_11__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @os_memcpy(i32 %232, i32 %237, i32 4)
  %239 = getelementptr inbounds %struct.wpa_driver_associate_params, %struct.wpa_driver_associate_params* %6, i32 0, i32 5
  %240 = load i32, i32* %239, align 4
  %241 = icmp sgt i32 %240, 0
  br i1 %241, label %242, label %255

242:                                              ; preds = %225
  %243 = load %struct.hostapd_config*, %struct.hostapd_config** %8, align 8
  %244 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %243, i32 0, i32 3
  %245 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %245, i64 0
  %247 = load %struct.TYPE_16__*, %struct.TYPE_16__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %247, i32 0, i32 0
  store i32 1, i32* %248, align 8
  %249 = load %struct.hostapd_config*, %struct.hostapd_config** %8, align 8
  %250 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %249, i32 0, i32 3
  %251 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %251, i64 0
  %253 = load %struct.TYPE_16__*, %struct.TYPE_16__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %253, i32 0, i32 1
  store i32 1, i32* %254, align 4
  br label %255

255:                                              ; preds = %242, %225
  %256 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %257 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %258 = load %struct.hostapd_config*, %struct.hostapd_config** %8, align 8
  %259 = call i64 @wpa_supplicant_conf_ap(%struct.wpa_supplicant* %256, %struct.wpa_ssid* %257, %struct.hostapd_config* %258)
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %266

261:                                              ; preds = %255
  %262 = load i32, i32* @MSG_ERROR, align 4
  %263 = call i32 (i32, i8*, ...) @wpa_printf(i32 %262, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %264 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %265 = call i32 @wpa_supplicant_ap_deinit(%struct.wpa_supplicant* %264)
  store i32 -1, i32* %3, align 4
  br label %506

266:                                              ; preds = %255
  %267 = load %struct.hostapd_config*, %struct.hostapd_config** %8, align 8
  %268 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = load %struct.hostapd_iface*, %struct.hostapd_iface** %7, align 8
  %271 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %270, i32 0, i32 1
  store i64 %269, i64* %271, align 8
  %272 = load %struct.hostapd_config*, %struct.hostapd_config** %8, align 8
  %273 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = call %struct.TYPE_15__** @os_calloc(i64 %274, i32 8)
  %276 = load %struct.hostapd_iface*, %struct.hostapd_iface** %7, align 8
  %277 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %276, i32 0, i32 3
  store %struct.TYPE_15__** %275, %struct.TYPE_15__*** %277, align 8
  %278 = load %struct.hostapd_iface*, %struct.hostapd_iface** %7, align 8
  %279 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %278, i32 0, i32 3
  %280 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %279, align 8
  %281 = icmp eq %struct.TYPE_15__** %280, null
  br i1 %281, label %282, label %285

282:                                              ; preds = %266
  %283 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %284 = call i32 @wpa_supplicant_ap_deinit(%struct.wpa_supplicant* %283)
  store i32 -1, i32* %3, align 4
  br label %506

285:                                              ; preds = %266
  store i64 0, i64* %9, align 8
  br label %286

286:                                              ; preds = %441, %285
  %287 = load i64, i64* %9, align 8
  %288 = load %struct.hostapd_config*, %struct.hostapd_config** %8, align 8
  %289 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %288, i32 0, i32 0
  %290 = load i64, i64* %289, align 8
  %291 = icmp ult i64 %287, %290
  br i1 %291, label %292, label %444

292:                                              ; preds = %286
  %293 = load %struct.hostapd_iface*, %struct.hostapd_iface** %7, align 8
  %294 = load %struct.hostapd_config*, %struct.hostapd_config** %8, align 8
  %295 = load %struct.hostapd_config*, %struct.hostapd_config** %8, align 8
  %296 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %295, i32 0, i32 3
  %297 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %296, align 8
  %298 = load i64, i64* %9, align 8
  %299 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %297, i64 %298
  %300 = load %struct.TYPE_16__*, %struct.TYPE_16__** %299, align 8
  %301 = call %struct.TYPE_15__* @hostapd_alloc_bss_data(%struct.hostapd_iface* %293, %struct.hostapd_config* %294, %struct.TYPE_16__* %300)
  %302 = load %struct.hostapd_iface*, %struct.hostapd_iface** %7, align 8
  %303 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %302, i32 0, i32 3
  %304 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %303, align 8
  %305 = load i64, i64* %9, align 8
  %306 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %304, i64 %305
  store %struct.TYPE_15__* %301, %struct.TYPE_15__** %306, align 8
  %307 = load %struct.hostapd_iface*, %struct.hostapd_iface** %7, align 8
  %308 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %307, i32 0, i32 3
  %309 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %308, align 8
  %310 = load i64, i64* %9, align 8
  %311 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %309, i64 %310
  %312 = load %struct.TYPE_15__*, %struct.TYPE_15__** %311, align 8
  %313 = icmp eq %struct.TYPE_15__* %312, null
  br i1 %313, label %314, label %317

314:                                              ; preds = %292
  %315 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %316 = call i32 @wpa_supplicant_ap_deinit(%struct.wpa_supplicant* %315)
  store i32 -1, i32* %3, align 4
  br label %506

317:                                              ; preds = %292
  %318 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %319 = load %struct.hostapd_iface*, %struct.hostapd_iface** %7, align 8
  %320 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %319, i32 0, i32 3
  %321 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %320, align 8
  %322 = load i64, i64* %9, align 8
  %323 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %321, i64 %322
  %324 = load %struct.TYPE_15__*, %struct.TYPE_15__** %323, align 8
  %325 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %324, i32 0, i32 21
  store %struct.wpa_supplicant* %318, %struct.wpa_supplicant** %325, align 8
  %326 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %327 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %326, i32 0, i32 15
  %328 = load %struct.TYPE_12__*, %struct.TYPE_12__** %327, align 8
  %329 = load %struct.hostapd_iface*, %struct.hostapd_iface** %7, align 8
  %330 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %329, i32 0, i32 3
  %331 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %330, align 8
  %332 = load i64, i64* %9, align 8
  %333 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %331, i64 %332
  %334 = load %struct.TYPE_15__*, %struct.TYPE_15__** %333, align 8
  %335 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %334, i32 0, i32 20
  store %struct.TYPE_12__* %328, %struct.TYPE_12__** %335, align 8
  %336 = load i32, i32* @ap_public_action_rx, align 4
  %337 = load %struct.hostapd_iface*, %struct.hostapd_iface** %7, align 8
  %338 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %337, i32 0, i32 3
  %339 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %338, align 8
  %340 = load i64, i64* %9, align 8
  %341 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %339, i64 %340
  %342 = load %struct.TYPE_15__*, %struct.TYPE_15__** %341, align 8
  %343 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %342, i32 0, i32 19
  store i32 %336, i32* %343, align 8
  %344 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %345 = load %struct.hostapd_iface*, %struct.hostapd_iface** %7, align 8
  %346 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %345, i32 0, i32 3
  %347 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %346, align 8
  %348 = load i64, i64* %9, align 8
  %349 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %347, i64 %348
  %350 = load %struct.TYPE_15__*, %struct.TYPE_15__** %349, align 8
  %351 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %350, i32 0, i32 18
  store %struct.wpa_supplicant* %344, %struct.wpa_supplicant** %351, align 8
  %352 = load i32, i32* @ap_vendor_action_rx, align 4
  %353 = load %struct.hostapd_iface*, %struct.hostapd_iface** %7, align 8
  %354 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %353, i32 0, i32 3
  %355 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %354, align 8
  %356 = load i64, i64* %9, align 8
  %357 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %355, i64 %356
  %358 = load %struct.TYPE_15__*, %struct.TYPE_15__** %357, align 8
  %359 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %358, i32 0, i32 17
  store i32 %352, i32* %359, align 8
  %360 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %361 = load %struct.hostapd_iface*, %struct.hostapd_iface** %7, align 8
  %362 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %361, i32 0, i32 3
  %363 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %362, align 8
  %364 = load i64, i64* %9, align 8
  %365 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %363, i64 %364
  %366 = load %struct.TYPE_15__*, %struct.TYPE_15__** %365, align 8
  %367 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %366, i32 0, i32 16
  store %struct.wpa_supplicant* %360, %struct.wpa_supplicant** %367, align 8
  %368 = load %struct.hostapd_iface*, %struct.hostapd_iface** %7, align 8
  %369 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %368, i32 0, i32 3
  %370 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %369, align 8
  %371 = load i64, i64* %9, align 8
  %372 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %370, i64 %371
  %373 = load %struct.TYPE_15__*, %struct.TYPE_15__** %372, align 8
  %374 = load i32, i32* @ap_probe_req_rx, align 4
  %375 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %376 = call i32 @hostapd_register_probereq_cb(%struct.TYPE_15__* %373, i32 %374, %struct.wpa_supplicant* %375)
  %377 = load i32, i32* @ap_wps_reg_success_cb, align 4
  %378 = load %struct.hostapd_iface*, %struct.hostapd_iface** %7, align 8
  %379 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %378, i32 0, i32 3
  %380 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %379, align 8
  %381 = load i64, i64* %9, align 8
  %382 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %380, i64 %381
  %383 = load %struct.TYPE_15__*, %struct.TYPE_15__** %382, align 8
  %384 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %383, i32 0, i32 15
  store i32 %377, i32* %384, align 8
  %385 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %386 = load %struct.hostapd_iface*, %struct.hostapd_iface** %7, align 8
  %387 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %386, i32 0, i32 3
  %388 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %387, align 8
  %389 = load i64, i64* %9, align 8
  %390 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %388, i64 %389
  %391 = load %struct.TYPE_15__*, %struct.TYPE_15__** %390, align 8
  %392 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %391, i32 0, i32 14
  store %struct.wpa_supplicant* %385, %struct.wpa_supplicant** %392, align 8
  %393 = load i32, i32* @ap_wps_event_cb, align 4
  %394 = load %struct.hostapd_iface*, %struct.hostapd_iface** %7, align 8
  %395 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %394, i32 0, i32 3
  %396 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %395, align 8
  %397 = load i64, i64* %9, align 8
  %398 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %396, i64 %397
  %399 = load %struct.TYPE_15__*, %struct.TYPE_15__** %398, align 8
  %400 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %399, i32 0, i32 13
  store i32 %393, i32* %400, align 8
  %401 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %402 = load %struct.hostapd_iface*, %struct.hostapd_iface** %7, align 8
  %403 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %402, i32 0, i32 3
  %404 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %403, align 8
  %405 = load i64, i64* %9, align 8
  %406 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %404, i64 %405
  %407 = load %struct.TYPE_15__*, %struct.TYPE_15__** %406, align 8
  %408 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %407, i32 0, i32 12
  store %struct.wpa_supplicant* %401, %struct.wpa_supplicant** %408, align 8
  %409 = load i32, i32* @ap_sta_authorized_cb, align 4
  %410 = load %struct.hostapd_iface*, %struct.hostapd_iface** %7, align 8
  %411 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %410, i32 0, i32 3
  %412 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %411, align 8
  %413 = load i64, i64* %9, align 8
  %414 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %412, i64 %413
  %415 = load %struct.TYPE_15__*, %struct.TYPE_15__** %414, align 8
  %416 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %415, i32 0, i32 11
  store i32 %409, i32* %416, align 8
  %417 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %418 = load %struct.hostapd_iface*, %struct.hostapd_iface** %7, align 8
  %419 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %418, i32 0, i32 3
  %420 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %419, align 8
  %421 = load i64, i64* %9, align 8
  %422 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %420, i64 %421
  %423 = load %struct.TYPE_15__*, %struct.TYPE_15__** %422, align 8
  %424 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %423, i32 0, i32 10
  store %struct.wpa_supplicant* %417, %struct.wpa_supplicant** %424, align 8
  %425 = load i32, i32* @wpas_ap_configured_cb, align 4
  %426 = load %struct.hostapd_iface*, %struct.hostapd_iface** %7, align 8
  %427 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %426, i32 0, i32 3
  %428 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %427, align 8
  %429 = load i64, i64* %9, align 8
  %430 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %428, i64 %429
  %431 = load %struct.TYPE_15__*, %struct.TYPE_15__** %430, align 8
  %432 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %431, i32 0, i32 5
  store i32 %425, i32* %432, align 8
  %433 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %434 = load %struct.hostapd_iface*, %struct.hostapd_iface** %7, align 8
  %435 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %434, i32 0, i32 3
  %436 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %435, align 8
  %437 = load i64, i64* %9, align 8
  %438 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %436, i64 %437
  %439 = load %struct.TYPE_15__*, %struct.TYPE_15__** %438, align 8
  %440 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %439, i32 0, i32 4
  store %struct.wpa_supplicant* %433, %struct.wpa_supplicant** %440, align 8
  br label %441

441:                                              ; preds = %317
  %442 = load i64, i64* %9, align 8
  %443 = add i64 %442, 1
  store i64 %443, i64* %9, align 8
  br label %286

444:                                              ; preds = %286
  %445 = load %struct.hostapd_iface*, %struct.hostapd_iface** %7, align 8
  %446 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %445, i32 0, i32 3
  %447 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %446, align 8
  %448 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %447, i64 0
  %449 = load %struct.TYPE_15__*, %struct.TYPE_15__** %448, align 8
  %450 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %449, i32 0, i32 2
  %451 = load i32, i32* %450, align 8
  %452 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %453 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %452, i32 0, i32 7
  %454 = load i32, i32* %453, align 8
  %455 = load i32, i32* @ETH_ALEN, align 4
  %456 = call i32 @os_memcpy(i32 %451, i32 %454, i32 %455)
  %457 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %458 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %457, i32 0, i32 12
  %459 = load i32, i32* %458, align 4
  %460 = load %struct.hostapd_iface*, %struct.hostapd_iface** %7, align 8
  %461 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %460, i32 0, i32 3
  %462 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %461, align 8
  %463 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %462, i64 0
  %464 = load %struct.TYPE_15__*, %struct.TYPE_15__** %463, align 8
  %465 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %464, i32 0, i32 1
  store i32 %459, i32* %465, align 4
  %466 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %467 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %466, i32 0, i32 11
  %468 = load i32, i32* %467, align 8
  %469 = load %struct.hostapd_iface*, %struct.hostapd_iface** %7, align 8
  %470 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %469, i32 0, i32 3
  %471 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %470, align 8
  %472 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %471, i64 0
  %473 = load %struct.TYPE_15__*, %struct.TYPE_15__** %472, align 8
  %474 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %473, i32 0, i32 0
  store i32 %468, i32* %474, align 8
  %475 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %476 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %477 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %476, i32 0, i32 10
  store %struct.wpa_ssid* %475, %struct.wpa_ssid** %477, align 8
  %478 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %479 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %478, i32 0, i32 9
  %480 = load i32, i32* %479, align 8
  %481 = call i32 @eapol_sm_notify_config(i32 %480, i32* null, i32* null)
  %482 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %483 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %482, i32 0, i32 8
  %484 = load i32, i32* %483, align 4
  %485 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %486 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %485, i32 0, i32 7
  %487 = load i32, i32* %486, align 8
  %488 = load i32, i32* @ETH_ALEN, align 4
  %489 = call i32 @os_memcpy(i32 %484, i32 %487, i32 %488)
  %490 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %491 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %490, i32 0, i32 2
  %492 = load i32, i32* %491, align 4
  %493 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %494 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %493, i32 0, i32 3
  store i32 %492, i32* %494, align 4
  %495 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %496 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %495, i32 0, i32 4
  %497 = load %struct.hostapd_iface*, %struct.hostapd_iface** %496, align 8
  %498 = call i64 @hostapd_setup_interface(%struct.hostapd_iface* %497)
  %499 = icmp ne i64 %498, 0
  br i1 %499, label %500, label %505

500:                                              ; preds = %444
  %501 = load i32, i32* @MSG_ERROR, align 4
  %502 = call i32 (i32, i8*, ...) @wpa_printf(i32 %501, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %503 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %504 = call i32 @wpa_supplicant_ap_deinit(%struct.wpa_supplicant* %503)
  store i32 -1, i32* %3, align 4
  br label %506

505:                                              ; preds = %444
  store i32 0, i32* %3, align 4
  br label %506

506:                                              ; preds = %505, %500, %314, %282, %261, %222, %180, %170, %97, %49, %19
  %507 = load i32, i32* %3, align 4
  ret i32 %507
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @wpa_supplicant_ap_deinit(%struct.wpa_supplicant*) #1

declare dso_local i32 @wpa_ssid_txt(i32*, i64) #1

declare dso_local i32 @os_memset(%struct.wpa_driver_associate_params*, i32, i32) #1

declare dso_local i64 @wpa_pick_pairwise_cipher(i32, i32) #1

declare dso_local i64 @ieee80211_is_dfs(i32, i32, i32) #1

declare dso_local i32 @wpa_drv_get_ext_capa(%struct.wpa_supplicant*, i32) #1

declare dso_local i64 @wpa_drv_associate(%struct.wpa_supplicant*, %struct.wpa_driver_associate_params*) #1

declare dso_local i32 @wpa_msg(%struct.wpa_supplicant*, i32, i8*) #1

declare dso_local %struct.hostapd_iface* @hostapd_alloc_iface(...) #1

declare dso_local %struct.hostapd_config* @hostapd_config_defaults(...) #1

declare dso_local i32 @os_memcpy(i32, i32, i32) #1

declare dso_local i64 @wpa_supplicant_conf_ap(%struct.wpa_supplicant*, %struct.wpa_ssid*, %struct.hostapd_config*) #1

declare dso_local %struct.TYPE_15__** @os_calloc(i64, i32) #1

declare dso_local %struct.TYPE_15__* @hostapd_alloc_bss_data(%struct.hostapd_iface*, %struct.hostapd_config*, %struct.TYPE_16__*) #1

declare dso_local i32 @hostapd_register_probereq_cb(%struct.TYPE_15__*, i32, %struct.wpa_supplicant*) #1

declare dso_local i32 @eapol_sm_notify_config(i32, i32*, i32*) #1

declare dso_local i64 @hostapd_setup_interface(%struct.hostapd_iface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
