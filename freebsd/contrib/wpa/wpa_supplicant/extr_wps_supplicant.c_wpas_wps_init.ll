; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wps_supplicant.c_wpas_wps_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wps_supplicant.c_wpas_wps_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.wps_context*, i32, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.wps_context = type { i32, i32, i32, i32*, %struct.TYPE_6__, %struct.wpa_supplicant*, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i64, %struct.hostapd_hw_modes* }
%struct.hostapd_hw_modes = type { i64 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.wps_registrar_config = type { %struct.wpa_supplicant*, i32, i32, i32 }

@wpa_supplicant_wps_cred = common dso_local global i32 0, align 4
@wpa_supplicant_wps_event = common dso_local global i32 0, align 4
@wpa_supplicant_wps_rf_band = common dso_local global i32 0, align 4
@WPS_CONFIG_DISPLAY = common dso_local global i32 0, align 4
@WPS_CONFIG_LABEL = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"WPS: Both Label and Display config methods are not allowed at the same time\00", align 1
@WPS_DEV_TYPE_LEN = common dso_local global i32 0, align 4
@HOSTAPD_MODE_IEEE80211B = common dso_local global i64 0, align 8
@HOSTAPD_MODE_IEEE80211G = common dso_local global i64 0, align 8
@WPS_RF_24GHZ = common dso_local global i32 0, align 4
@HOSTAPD_MODE_IEEE80211A = common dso_local global i64 0, align 8
@WPS_RF_50GHZ = common dso_local global i32 0, align 4
@HOSTAPD_MODE_IEEE80211AD = common dso_local global i64 0, align 8
@WPS_RF_60GHZ = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@WPS_AUTH_WPA2PSK = common dso_local global i32 0, align 4
@WPS_AUTH_WPAPSK = common dso_local global i32 0, align 4
@WPS_ENCR_AES = common dso_local global i32 0, align 4
@WPS_ENCR_TKIP = common dso_local global i32 0, align 4
@wpas_wps_new_psk_cb = common dso_local global i32 0, align 4
@wpas_wps_pin_needed_cb = common dso_local global i32 0, align 4
@wpas_wps_set_sel_reg_cb = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to initialize WPS Registrar\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpas_wps_init(%struct.wpa_supplicant* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wpa_supplicant*, align 8
  %4 = alloca %struct.wps_context*, align 8
  %5 = alloca %struct.wps_registrar_config, align 8
  %6 = alloca %struct.hostapd_hw_modes*, align 8
  %7 = alloca i64, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %3, align 8
  %8 = call %struct.wps_context* @os_zalloc(i32 96)
  store %struct.wps_context* %8, %struct.wps_context** %4, align 8
  %9 = load %struct.wps_context*, %struct.wps_context** %4, align 8
  %10 = icmp eq %struct.wps_context* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %285

12:                                               ; preds = %1
  %13 = load i32, i32* @wpa_supplicant_wps_cred, align 4
  %14 = load %struct.wps_context*, %struct.wps_context** %4, align 8
  %15 = getelementptr inbounds %struct.wps_context, %struct.wps_context* %14, i32 0, i32 8
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* @wpa_supplicant_wps_event, align 4
  %17 = load %struct.wps_context*, %struct.wps_context** %4, align 8
  %18 = getelementptr inbounds %struct.wps_context, %struct.wps_context* %17, i32 0, i32 7
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @wpa_supplicant_wps_rf_band, align 4
  %20 = load %struct.wps_context*, %struct.wps_context** %4, align 8
  %21 = getelementptr inbounds %struct.wps_context, %struct.wps_context* %20, i32 0, i32 6
  store i32 %19, i32* %21, align 8
  %22 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %23 = load %struct.wps_context*, %struct.wps_context** %4, align 8
  %24 = getelementptr inbounds %struct.wps_context, %struct.wps_context* %23, i32 0, i32 5
  store %struct.wpa_supplicant* %22, %struct.wpa_supplicant** %24, align 8
  %25 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %26 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %25, i32 0, i32 3
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 9
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.wps_context*, %struct.wps_context** %4, align 8
  %31 = getelementptr inbounds %struct.wps_context, %struct.wps_context* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 11
  store i32 %29, i32* %32, align 4
  %33 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %34 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %33, i32 0, i32 3
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 8
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.wps_context*, %struct.wps_context** %4, align 8
  %39 = getelementptr inbounds %struct.wps_context, %struct.wps_context* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 10
  store i32 %37, i32* %40, align 8
  %41 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %42 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %41, i32 0, i32 3
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 7
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.wps_context*, %struct.wps_context** %4, align 8
  %47 = getelementptr inbounds %struct.wps_context, %struct.wps_context* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 9
  store i32 %45, i32* %48, align 4
  %49 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %50 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %49, i32 0, i32 3
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.wps_context*, %struct.wps_context** %4, align 8
  %55 = getelementptr inbounds %struct.wps_context, %struct.wps_context* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 8
  store i32 %53, i32* %56, align 8
  %57 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %58 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %57, i32 0, i32 3
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.wps_context*, %struct.wps_context** %4, align 8
  %63 = getelementptr inbounds %struct.wps_context, %struct.wps_context* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 7
  store i32 %61, i32* %64, align 4
  %65 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %66 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %65, i32 0, i32 3
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @wps_config_methods_str2bin(i32 %69)
  %71 = load %struct.wps_context*, %struct.wps_context** %4, align 8
  %72 = getelementptr inbounds %struct.wps_context, %struct.wps_context* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.wps_context*, %struct.wps_context** %4, align 8
  %74 = getelementptr inbounds %struct.wps_context, %struct.wps_context* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @WPS_CONFIG_DISPLAY, align 4
  %77 = load i32, i32* @WPS_CONFIG_LABEL, align 4
  %78 = or i32 %76, %77
  %79 = and i32 %75, %78
  %80 = load i32, i32* @WPS_CONFIG_DISPLAY, align 4
  %81 = load i32, i32* @WPS_CONFIG_LABEL, align 4
  %82 = or i32 %80, %81
  %83 = icmp eq i32 %79, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %12
  %85 = load i32, i32* @MSG_ERROR, align 4
  %86 = call i32 @wpa_printf(i32 %85, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0))
  %87 = load %struct.wps_context*, %struct.wps_context** %4, align 8
  %88 = call i32 @os_free(%struct.wps_context* %87)
  store i32 -1, i32* %2, align 4
  br label %285

89:                                               ; preds = %12
  %90 = load %struct.wps_context*, %struct.wps_context** %4, align 8
  %91 = getelementptr inbounds %struct.wps_context, %struct.wps_context* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @wps_fix_config_methods(i32 %92)
  %94 = load %struct.wps_context*, %struct.wps_context** %4, align 8
  %95 = getelementptr inbounds %struct.wps_context, %struct.wps_context* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  %96 = load %struct.wps_context*, %struct.wps_context** %4, align 8
  %97 = getelementptr inbounds %struct.wps_context, %struct.wps_context* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.wps_context*, %struct.wps_context** %4, align 8
  %100 = getelementptr inbounds %struct.wps_context, %struct.wps_context* %99, i32 0, i32 4
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  store i32 %98, i32* %101, align 8
  %102 = load %struct.wps_context*, %struct.wps_context** %4, align 8
  %103 = getelementptr inbounds %struct.wps_context, %struct.wps_context* %102, i32 0, i32 4
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 6
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %107 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %106, i32 0, i32 3
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @WPS_DEV_TYPE_LEN, align 4
  %112 = call i32 @os_memcpy(i32 %105, i32 %110, i32 %111)
  %113 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %114 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %113, i32 0, i32 3
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.wps_context*, %struct.wps_context** %4, align 8
  %119 = getelementptr inbounds %struct.wps_context, %struct.wps_context* %118, i32 0, i32 4
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  store i32 %117, i32* %120, align 4
  %121 = load %struct.wps_context*, %struct.wps_context** %4, align 8
  %122 = getelementptr inbounds %struct.wps_context, %struct.wps_context* %121, i32 0, i32 4
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %126 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %125, i32 0, i32 3
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @WPS_DEV_TYPE_LEN, align 4
  %131 = load %struct.wps_context*, %struct.wps_context** %4, align 8
  %132 = getelementptr inbounds %struct.wps_context, %struct.wps_context* %131, i32 0, i32 4
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = mul nsw i32 %130, %134
  %136 = call i32 @os_memcpy(i32 %124, i32 %129, i32 %135)
  %137 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %138 = load %struct.wps_context*, %struct.wps_context** %4, align 8
  %139 = call i32 @wpas_wps_set_vendor_ext_m1(%struct.wpa_supplicant* %137, %struct.wps_context* %138)
  %140 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %141 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %140, i32 0, i32 3
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @WPA_GET_BE32(i32 %144)
  %146 = load %struct.wps_context*, %struct.wps_context** %4, align 8
  %147 = getelementptr inbounds %struct.wps_context, %struct.wps_context* %146, i32 0, i32 4
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 4
  store i32 %145, i32* %148, align 8
  %149 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %150 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 1
  %152 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %151, align 8
  store %struct.hostapd_hw_modes* %152, %struct.hostapd_hw_modes** %6, align 8
  %153 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %6, align 8
  %154 = icmp ne %struct.hostapd_hw_modes* %153, null
  br i1 %154, label %155, label %223

155:                                              ; preds = %89
  store i64 0, i64* %7, align 8
  br label %156

156:                                              ; preds = %219, %155
  %157 = load i64, i64* %7, align 8
  %158 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %159 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = icmp ult i64 %157, %161
  br i1 %162, label %163, label %222

163:                                              ; preds = %156
  %164 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %6, align 8
  %165 = load i64, i64* %7, align 8
  %166 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %164, i64 %165
  %167 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @HOSTAPD_MODE_IEEE80211B, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %179, label %171

171:                                              ; preds = %163
  %172 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %6, align 8
  %173 = load i64, i64* %7, align 8
  %174 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %172, i64 %173
  %175 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @HOSTAPD_MODE_IEEE80211G, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %186

179:                                              ; preds = %171, %163
  %180 = load i32, i32* @WPS_RF_24GHZ, align 4
  %181 = load %struct.wps_context*, %struct.wps_context** %4, align 8
  %182 = getelementptr inbounds %struct.wps_context, %struct.wps_context* %181, i32 0, i32 4
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = or i32 %184, %180
  store i32 %185, i32* %183, align 8
  br label %218

186:                                              ; preds = %171
  %187 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %6, align 8
  %188 = load i64, i64* %7, align 8
  %189 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %187, i64 %188
  %190 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @HOSTAPD_MODE_IEEE80211A, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %194, label %201

194:                                              ; preds = %186
  %195 = load i32, i32* @WPS_RF_50GHZ, align 4
  %196 = load %struct.wps_context*, %struct.wps_context** %4, align 8
  %197 = getelementptr inbounds %struct.wps_context, %struct.wps_context* %196, i32 0, i32 4
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = or i32 %199, %195
  store i32 %200, i32* %198, align 8
  br label %217

201:                                              ; preds = %186
  %202 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %6, align 8
  %203 = load i64, i64* %7, align 8
  %204 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %202, i64 %203
  %205 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @HOSTAPD_MODE_IEEE80211AD, align 8
  %208 = icmp eq i64 %206, %207
  br i1 %208, label %209, label %216

209:                                              ; preds = %201
  %210 = load i32, i32* @WPS_RF_60GHZ, align 4
  %211 = load %struct.wps_context*, %struct.wps_context** %4, align 8
  %212 = getelementptr inbounds %struct.wps_context, %struct.wps_context* %211, i32 0, i32 4
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = or i32 %214, %210
  store i32 %215, i32* %213, align 8
  br label %216

216:                                              ; preds = %209, %201
  br label %217

217:                                              ; preds = %216, %194
  br label %218

218:                                              ; preds = %217, %179
  br label %219

219:                                              ; preds = %218
  %220 = load i64, i64* %7, align 8
  %221 = add i64 %220, 1
  store i64 %221, i64* %7, align 8
  br label %156

222:                                              ; preds = %156
  br label %223

223:                                              ; preds = %222, %89
  %224 = load %struct.wps_context*, %struct.wps_context** %4, align 8
  %225 = getelementptr inbounds %struct.wps_context, %struct.wps_context* %224, i32 0, i32 4
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 8
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %236

229:                                              ; preds = %223
  %230 = load i32, i32* @WPS_RF_24GHZ, align 4
  %231 = load i32, i32* @WPS_RF_50GHZ, align 4
  %232 = or i32 %230, %231
  %233 = load %struct.wps_context*, %struct.wps_context** %4, align 8
  %234 = getelementptr inbounds %struct.wps_context, %struct.wps_context* %233, i32 0, i32 4
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %234, i32 0, i32 2
  store i32 %232, i32* %235, align 8
  br label %236

236:                                              ; preds = %229, %223
  %237 = load %struct.wps_context*, %struct.wps_context** %4, align 8
  %238 = getelementptr inbounds %struct.wps_context, %struct.wps_context* %237, i32 0, i32 4
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i32 0, i32 3
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %242 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 8
  %244 = load i32, i32* @ETH_ALEN, align 4
  %245 = call i32 @os_memcpy(i32 %240, i32 %243, i32 %244)
  %246 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %247 = load %struct.wps_context*, %struct.wps_context** %4, align 8
  %248 = call i32 @wpas_wps_set_uuid(%struct.wpa_supplicant* %246, %struct.wps_context* %247)
  %249 = load i32, i32* @WPS_AUTH_WPA2PSK, align 4
  %250 = load i32, i32* @WPS_AUTH_WPAPSK, align 4
  %251 = or i32 %249, %250
  %252 = load %struct.wps_context*, %struct.wps_context** %4, align 8
  %253 = getelementptr inbounds %struct.wps_context, %struct.wps_context* %252, i32 0, i32 1
  store i32 %251, i32* %253, align 4
  %254 = load i32, i32* @WPS_ENCR_AES, align 4
  %255 = load i32, i32* @WPS_ENCR_TKIP, align 4
  %256 = or i32 %254, %255
  %257 = load %struct.wps_context*, %struct.wps_context** %4, align 8
  %258 = getelementptr inbounds %struct.wps_context, %struct.wps_context* %257, i32 0, i32 2
  store i32 %256, i32* %258, align 8
  %259 = call i32 @os_memset(%struct.wps_registrar_config* %5, i32 0, i32 24)
  %260 = load i32, i32* @wpas_wps_new_psk_cb, align 4
  %261 = getelementptr inbounds %struct.wps_registrar_config, %struct.wps_registrar_config* %5, i32 0, i32 3
  store i32 %260, i32* %261, align 8
  %262 = load i32, i32* @wpas_wps_pin_needed_cb, align 4
  %263 = getelementptr inbounds %struct.wps_registrar_config, %struct.wps_registrar_config* %5, i32 0, i32 2
  store i32 %262, i32* %263, align 4
  %264 = load i32, i32* @wpas_wps_set_sel_reg_cb, align 4
  %265 = getelementptr inbounds %struct.wps_registrar_config, %struct.wps_registrar_config* %5, i32 0, i32 1
  store i32 %264, i32* %265, align 8
  %266 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %267 = getelementptr inbounds %struct.wps_registrar_config, %struct.wps_registrar_config* %5, i32 0, i32 0
  store %struct.wpa_supplicant* %266, %struct.wpa_supplicant** %267, align 8
  %268 = load %struct.wps_context*, %struct.wps_context** %4, align 8
  %269 = call i32* @wps_registrar_init(%struct.wps_context* %268, %struct.wps_registrar_config* %5)
  %270 = load %struct.wps_context*, %struct.wps_context** %4, align 8
  %271 = getelementptr inbounds %struct.wps_context, %struct.wps_context* %270, i32 0, i32 3
  store i32* %269, i32** %271, align 8
  %272 = load %struct.wps_context*, %struct.wps_context** %4, align 8
  %273 = getelementptr inbounds %struct.wps_context, %struct.wps_context* %272, i32 0, i32 3
  %274 = load i32*, i32** %273, align 8
  %275 = icmp eq i32* %274, null
  br i1 %275, label %276, label %281

276:                                              ; preds = %236
  %277 = load i32, i32* @MSG_DEBUG, align 4
  %278 = call i32 @wpa_printf(i32 %277, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %279 = load %struct.wps_context*, %struct.wps_context** %4, align 8
  %280 = call i32 @os_free(%struct.wps_context* %279)
  store i32 -1, i32* %2, align 4
  br label %285

281:                                              ; preds = %236
  %282 = load %struct.wps_context*, %struct.wps_context** %4, align 8
  %283 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %284 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %283, i32 0, i32 0
  store %struct.wps_context* %282, %struct.wps_context** %284, align 8
  store i32 0, i32* %2, align 4
  br label %285

285:                                              ; preds = %281, %276, %84, %11
  %286 = load i32, i32* %2, align 4
  ret i32 %286
}

declare dso_local %struct.wps_context* @os_zalloc(i32) #1

declare dso_local i32 @wps_config_methods_str2bin(i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @os_free(%struct.wps_context*) #1

declare dso_local i32 @wps_fix_config_methods(i32) #1

declare dso_local i32 @os_memcpy(i32, i32, i32) #1

declare dso_local i32 @wpas_wps_set_vendor_ext_m1(%struct.wpa_supplicant*, %struct.wps_context*) #1

declare dso_local i32 @WPA_GET_BE32(i32) #1

declare dso_local i32 @wpas_wps_set_uuid(%struct.wpa_supplicant*, %struct.wps_context*) #1

declare dso_local i32 @os_memset(%struct.wps_registrar_config*, i32, i32) #1

declare dso_local i32* @wps_registrar_init(%struct.wps_context*, %struct.wps_registrar_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
