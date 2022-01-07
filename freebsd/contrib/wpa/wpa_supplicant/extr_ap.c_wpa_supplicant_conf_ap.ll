; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ap.c_wpa_supplicant_conf_ap.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ap.c_wpa_supplicant_conf_ap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i64, %struct.TYPE_18__*, %struct.TYPE_16__*, %struct.TYPE_14__*, %struct.TYPE_12__*, %struct.TYPE_11__, i32, i32 }
%struct.TYPE_18__ = type { i8*, i32, i32, i32, i32, i64, i32, i32, i32, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i32, i64, i64, i32, i32, i64, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.wpa_ssid = type { i32, i64, i32, i64, i32, i32, i64*, i32, i64, %struct.TYPE_17__, i32, i64, i32, i64, i64, i32, i32*, i64, i32, i64, i64, i32, i64, i32, i32, i64 }
%struct.TYPE_17__ = type { i64 }
%struct.hostapd_config = type { i32, i32, i8*, i64, i32*, i32*, i32, i32, i32, i64, i32, %struct.hostapd_bss_config** }
%struct.hostapd_bss_config = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, %struct.TYPE_15__, i32, i64, i64, i64, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i64, %struct.hostapd_wep_keys, i8*, %struct.TYPE_19__*, i32 }
%struct.hostapd_wep_keys = type { i64*, i32, i32, i32, i32** }
%struct.TYPE_19__ = type { i32, i32 }

@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Invalid pbss value(%d) for AP mode\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"No SSID configured for AP mode\00", align 1
@DEFAULT_KEY_MGMT = common dso_local global i64 0, align 8
@WPA_KEY_MGMT_PSK = common dso_local global i64 0, align 8
@PMK_LEN = common dso_local global i32 0, align 4
@NUM_WEP_KEYS = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"P2P: Enable Interworking with access_network_type: %d\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"P2P: Venue group: %d  Venue type: %d\00", align 1
@SECURITY_WPA = common dso_local global i64 0, align 8
@SECURITY_WPA_PSK = common dso_local global i64 0, align 8
@WPA_CIPHER_NONE = common dso_local global i8* null, align 8
@SECURITY_IEEE_802_1X = common dso_local global i64 0, align 8
@WPA_CIPHER_WEP104 = common dso_local global i32 0, align 4
@WPA_CIPHER_WEP40 = common dso_local global i32 0, align 4
@SECURITY_STATIC_WEP = common dso_local global i64 0, align 8
@SECURITY_PLAINTEXT = common dso_local global i64 0, align 8
@WPA_CIPHER_CCMP = common dso_local global i32 0, align 4
@WPA_CIPHER_GCMP = common dso_local global i32 0, align 4
@WPA_CIPHER_CCMP_256 = common dso_local global i32 0, align 4
@WPA_CIPHER_GCMP_256 = common dso_local global i32 0, align 4
@DEFAULT_FRAGMENT_SIZE = common dso_local global i64 0, align 8
@HOSTAPD_MODE_IEEE80211G = common dso_local global i64 0, align 8
@MGMT_FRAME_PROTECTION_DEFAULT = common dso_local global i64 0, align 8
@MSG_INFO = common dso_local global i32 0, align 4
@WPAS_MODE_P2P_GO = common dso_local global i64 0, align 8
@WPAS_MODE_P2P_GROUP_FORMATION = common dso_local global i64 0, align 8
@WPS_DEV_TYPE_LEN = common dso_local global i32 0, align 4
@WPS_UUID_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, %struct.wpa_ssid*, %struct.hostapd_config*)* @wpa_supplicant_conf_ap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_supplicant_conf_ap(%struct.wpa_supplicant* %0, %struct.wpa_ssid* %1, %struct.hostapd_config* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wpa_supplicant*, align 8
  %6 = alloca %struct.wpa_ssid*, align 8
  %7 = alloca %struct.hostapd_config*, align 8
  %8 = alloca %struct.hostapd_bss_config*, align 8
  %9 = alloca %struct.hostapd_wep_keys*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %5, align 8
  store %struct.wpa_ssid* %1, %struct.wpa_ssid** %6, align 8
  store %struct.hostapd_config* %2, %struct.hostapd_config** %7, align 8
  %13 = load %struct.hostapd_config*, %struct.hostapd_config** %7, align 8
  %14 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %13, i32 0, i32 11
  %15 = load %struct.hostapd_bss_config**, %struct.hostapd_bss_config*** %14, align 8
  %16 = getelementptr inbounds %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %15, i64 0
  %17 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %16, align 8
  store %struct.hostapd_bss_config* %17, %struct.hostapd_bss_config** %8, align 8
  %18 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %19 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %18, i32 0, i32 7
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.hostapd_config*, %struct.hostapd_config** %7, align 8
  %22 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %21, i32 0, i32 10
  store i32 %20, i32* %22, align 8
  %23 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %8, align 8
  %24 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %23, i32 0, i32 48
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %27 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @os_strlcpy(i32 %25, i32 %28, i32 4)
  %30 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %31 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %32 = load %struct.hostapd_config*, %struct.hostapd_config** %7, align 8
  %33 = call i64 @wpa_supplicant_conf_ap_ht(%struct.wpa_supplicant* %30, %struct.wpa_ssid* %31, %struct.hostapd_config* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %748

36:                                               ; preds = %3
  %37 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %38 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp sgt i32 %39, 1
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load i32, i32* @MSG_ERROR, align 4
  %43 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %44 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 (i32, i8*, ...) @wpa_printf(i32 %42, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %45)
  store i32 -1, i32* %4, align 4
  br label %748

47:                                               ; preds = %36
  %48 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %49 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %8, align 8
  %52 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %54 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %53, i32 0, i32 24
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %57 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %56, i32 0, i32 5
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %61 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %60, i32 0, i32 5
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @ieee80211_is_dfs(i32 %55, i32 %59, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %107

66:                                               ; preds = %47
  %67 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %68 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %67, i32 0, i32 1
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 0
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %107

76:                                               ; preds = %66
  %77 = load %struct.hostapd_config*, %struct.hostapd_config** %7, align 8
  %78 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %77, i32 0, i32 0
  store i32 1, i32* %78, align 8
  %79 = load %struct.hostapd_config*, %struct.hostapd_config** %7, align 8
  %80 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %79, i32 0, i32 1
  store i32 1, i32* %80, align 4
  %81 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %82 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %81, i32 0, i32 1
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 0
  %87 = load i8, i8* %86, align 1
  %88 = load %struct.hostapd_config*, %struct.hostapd_config** %7, align 8
  %89 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %88, i32 0, i32 2
  %90 = load i8*, i8** %89, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 0
  store i8 %87, i8* %91, align 1
  %92 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %93 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %92, i32 0, i32 1
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 1
  %98 = load i8, i8* %97, align 1
  %99 = load %struct.hostapd_config*, %struct.hostapd_config** %7, align 8
  %100 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %99, i32 0, i32 2
  %101 = load i8*, i8** %100, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 1
  store i8 %98, i8* %102, align 1
  %103 = load %struct.hostapd_config*, %struct.hostapd_config** %7, align 8
  %104 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %103, i32 0, i32 2
  %105 = load i8*, i8** %104, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 2
  store i8 32, i8* %106, align 1
  br label %107

107:                                              ; preds = %76, %66, %47
  %108 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %109 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %107
  %113 = load i32, i32* @MSG_ERROR, align 4
  %114 = call i32 (i32, i8*, ...) @wpa_printf(i32 %113, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %748

115:                                              ; preds = %107
  %116 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %8, align 8
  %117 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %116, i32 0, i32 33
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 7
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %121 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %120, i32 0, i32 21
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %124 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @os_memcpy(i32 %119, i32 %122, i32 %125)
  %127 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %128 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %8, align 8
  %131 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %130, i32 0, i32 33
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 0
  store i32 %129, i32* %132, align 8
  %133 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %8, align 8
  %134 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %133, i32 0, i32 33
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 1
  store i32 1, i32* %135, align 4
  %136 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %137 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %136, i32 0, i32 10
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %8, align 8
  %140 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %139, i32 0, i32 42
  store i32 %138, i32* %140, align 8
  %141 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %142 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %141, i32 0, i32 20
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %115
  %146 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %147 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %146, i32 0, i32 20
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %8, align 8
  %150 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %149, i32 0, i32 41
  store i64 %148, i64* %150, align 8
  br label %151

151:                                              ; preds = %145, %115
  %152 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %153 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %152, i32 0, i32 3
  %154 = load i64, i64* %153, align 8
  %155 = call i64 @wpa_key_mgmt_wpa_psk(i64 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %151
  %158 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %159 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %8, align 8
  %162 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %161, i32 0, i32 2
  store i32 %160, i32* %162, align 8
  br label %163

163:                                              ; preds = %157, %151
  %164 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %165 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %164, i32 0, i32 3
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @DEFAULT_KEY_MGMT, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %173

169:                                              ; preds = %163
  %170 = load i64, i64* @WPA_KEY_MGMT_PSK, align 8
  %171 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %8, align 8
  %172 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %171, i32 0, i32 3
  store i64 %170, i64* %172, align 8
  br label %179

173:                                              ; preds = %163
  %174 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %175 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %174, i32 0, i32 3
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %8, align 8
  %178 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %177, i32 0, i32 3
  store i64 %176, i64* %178, align 8
  br label %179

179:                                              ; preds = %173, %169
  %180 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %181 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %180, i32 0, i32 5
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %8, align 8
  %184 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %183, i32 0, i32 4
  store i32 %182, i32* %184, align 8
  %185 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %186 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %185, i32 0, i32 19
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %225

189:                                              ; preds = %179
  %190 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %8, align 8
  %191 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %190, i32 0, i32 33
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %191, i32 0, i32 6
  %193 = load %struct.TYPE_19__*, %struct.TYPE_19__** %192, align 8
  %194 = call i32 @bin_clear_free(%struct.TYPE_19__* %193, i32 8)
  %195 = call %struct.TYPE_19__* @os_zalloc(i32 4)
  %196 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %8, align 8
  %197 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %196, i32 0, i32 33
  %198 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %197, i32 0, i32 6
  store %struct.TYPE_19__* %195, %struct.TYPE_19__** %198, align 8
  %199 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %8, align 8
  %200 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %199, i32 0, i32 33
  %201 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %200, i32 0, i32 6
  %202 = load %struct.TYPE_19__*, %struct.TYPE_19__** %201, align 8
  %203 = icmp eq %struct.TYPE_19__* %202, null
  br i1 %203, label %204, label %205

204:                                              ; preds = %189
  store i32 -1, i32* %4, align 4
  br label %748

205:                                              ; preds = %189
  %206 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %8, align 8
  %207 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %206, i32 0, i32 33
  %208 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %207, i32 0, i32 6
  %209 = load %struct.TYPE_19__*, %struct.TYPE_19__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %213 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %212, i32 0, i32 18
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* @PMK_LEN, align 4
  %216 = call i32 @os_memcpy(i32 %211, i32 %214, i32 %215)
  %217 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %8, align 8
  %218 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %217, i32 0, i32 33
  %219 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %218, i32 0, i32 6
  %220 = load %struct.TYPE_19__*, %struct.TYPE_19__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %220, i32 0, i32 0
  store i32 1, i32* %221, align 4
  %222 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %8, align 8
  %223 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %222, i32 0, i32 33
  %224 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %223, i32 0, i32 2
  store i32 1, i32* %224, align 8
  br label %342

225:                                              ; preds = %179
  %226 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %227 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %226, i32 0, i32 17
  %228 = load i64, i64* %227, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %238

230:                                              ; preds = %225
  %231 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %232 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %231, i32 0, i32 17
  %233 = load i64, i64* %232, align 8
  %234 = call i8* @os_strdup(i64 %233)
  %235 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %8, align 8
  %236 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %235, i32 0, i32 33
  %237 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %236, i32 0, i32 5
  store i8* %234, i8** %237, align 8
  br label %341

238:                                              ; preds = %225
  %239 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %240 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %239, i32 0, i32 6
  %241 = load i64*, i64** %240, align 8
  %242 = getelementptr inbounds i64, i64* %241, i64 0
  %243 = load i64, i64* %242, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %266, label %245

245:                                              ; preds = %238
  %246 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %247 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %246, i32 0, i32 6
  %248 = load i64*, i64** %247, align 8
  %249 = getelementptr inbounds i64, i64* %248, i64 1
  %250 = load i64, i64* %249, align 8
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %266, label %252

252:                                              ; preds = %245
  %253 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %254 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %253, i32 0, i32 6
  %255 = load i64*, i64** %254, align 8
  %256 = getelementptr inbounds i64, i64* %255, i64 2
  %257 = load i64, i64* %256, align 8
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %266, label %259

259:                                              ; preds = %252
  %260 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %261 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %260, i32 0, i32 6
  %262 = load i64*, i64** %261, align 8
  %263 = getelementptr inbounds i64, i64* %262, i64 3
  %264 = load i64, i64* %263, align 8
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %340

266:                                              ; preds = %259, %252, %245, %238
  %267 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %8, align 8
  %268 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %267, i32 0, i32 33
  %269 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %268, i32 0, i32 4
  store %struct.hostapd_wep_keys* %269, %struct.hostapd_wep_keys** %9, align 8
  store i32 0, i32* %10, align 4
  br label %270

270:                                              ; preds = %329, %266
  %271 = load i32, i32* %10, align 4
  %272 = load i32, i32* @NUM_WEP_KEYS, align 4
  %273 = icmp slt i32 %271, %272
  br i1 %273, label %274, label %332

274:                                              ; preds = %270
  %275 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %276 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %275, i32 0, i32 6
  %277 = load i64*, i64** %276, align 8
  %278 = load i32, i32* %10, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i64, i64* %277, i64 %279
  %281 = load i64, i64* %280, align 8
  %282 = icmp eq i64 %281, 0
  br i1 %282, label %283, label %284

283:                                              ; preds = %274
  br label %329

284:                                              ; preds = %274
  %285 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %286 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %285, i32 0, i32 16
  %287 = load i32*, i32** %286, align 8
  %288 = load i32, i32* %10, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i32, i32* %287, i64 %289
  %291 = load i32, i32* %290, align 4
  %292 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %293 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %292, i32 0, i32 6
  %294 = load i64*, i64** %293, align 8
  %295 = load i32, i32* %10, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i64, i64* %294, i64 %296
  %298 = load i64, i64* %297, align 8
  %299 = call i32* @os_memdup(i32 %291, i64 %298)
  %300 = load %struct.hostapd_wep_keys*, %struct.hostapd_wep_keys** %9, align 8
  %301 = getelementptr inbounds %struct.hostapd_wep_keys, %struct.hostapd_wep_keys* %300, i32 0, i32 4
  %302 = load i32**, i32*** %301, align 8
  %303 = load i32, i32* %10, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i32*, i32** %302, i64 %304
  store i32* %299, i32** %305, align 8
  %306 = load %struct.hostapd_wep_keys*, %struct.hostapd_wep_keys** %9, align 8
  %307 = getelementptr inbounds %struct.hostapd_wep_keys, %struct.hostapd_wep_keys* %306, i32 0, i32 4
  %308 = load i32**, i32*** %307, align 8
  %309 = load i32, i32* %10, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i32*, i32** %308, i64 %310
  %312 = load i32*, i32** %311, align 8
  %313 = icmp eq i32* %312, null
  br i1 %313, label %314, label %315

314:                                              ; preds = %284
  store i32 -1, i32* %4, align 4
  br label %748

315:                                              ; preds = %284
  %316 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %317 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %316, i32 0, i32 6
  %318 = load i64*, i64** %317, align 8
  %319 = load i32, i32* %10, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i64, i64* %318, i64 %320
  %322 = load i64, i64* %321, align 8
  %323 = load %struct.hostapd_wep_keys*, %struct.hostapd_wep_keys** %9, align 8
  %324 = getelementptr inbounds %struct.hostapd_wep_keys, %struct.hostapd_wep_keys* %323, i32 0, i32 0
  %325 = load i64*, i64** %324, align 8
  %326 = load i32, i32* %10, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i64, i64* %325, i64 %327
  store i64 %322, i64* %328, align 8
  br label %329

329:                                              ; preds = %315, %283
  %330 = load i32, i32* %10, align 4
  %331 = add nsw i32 %330, 1
  store i32 %331, i32* %10, align 4
  br label %270

332:                                              ; preds = %270
  %333 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %334 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %333, i32 0, i32 15
  %335 = load i32, i32* %334, align 8
  %336 = load %struct.hostapd_wep_keys*, %struct.hostapd_wep_keys** %9, align 8
  %337 = getelementptr inbounds %struct.hostapd_wep_keys, %struct.hostapd_wep_keys* %336, i32 0, i32 3
  store i32 %335, i32* %337, align 8
  %338 = load %struct.hostapd_wep_keys*, %struct.hostapd_wep_keys** %9, align 8
  %339 = getelementptr inbounds %struct.hostapd_wep_keys, %struct.hostapd_wep_keys* %338, i32 0, i32 1
  store i32 1, i32* %339, align 8
  br label %340

340:                                              ; preds = %332, %259
  br label %341

341:                                              ; preds = %340, %230
  br label %342

342:                                              ; preds = %341, %205
  %343 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %344 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %343, i32 0, i32 1
  %345 = load %struct.TYPE_18__*, %struct.TYPE_18__** %344, align 8
  %346 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %345, i32 0, i32 24
  %347 = load i64, i64* %346, align 8
  %348 = icmp ne i64 %347, 0
  br i1 %348, label %349, label %414

349:                                              ; preds = %342
  %350 = load i32, i32* @MSG_DEBUG, align 4
  %351 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %352 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %351, i32 0, i32 1
  %353 = load %struct.TYPE_18__*, %struct.TYPE_18__** %352, align 8
  %354 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %353, i32 0, i32 23
  %355 = load i32, i32* %354, align 4
  %356 = call i32 (i32, i8*, ...) @wpa_printf(i32 %350, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %355)
  %357 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %358 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %357, i32 0, i32 1
  %359 = load %struct.TYPE_18__*, %struct.TYPE_18__** %358, align 8
  %360 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %359, i32 0, i32 24
  %361 = load i64, i64* %360, align 8
  %362 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %8, align 8
  %363 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %362, i32 0, i32 40
  store i64 %361, i64* %363, align 8
  %364 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %365 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %364, i32 0, i32 1
  %366 = load %struct.TYPE_18__*, %struct.TYPE_18__** %365, align 8
  %367 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %366, i32 0, i32 23
  %368 = load i32, i32* %367, align 4
  %369 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %8, align 8
  %370 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %369, i32 0, i32 39
  store i32 %368, i32* %370, align 4
  %371 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %372 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %371, i32 0, i32 1
  %373 = load %struct.TYPE_18__*, %struct.TYPE_18__** %372, align 8
  %374 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %373, i32 0, i32 22
  %375 = load i32, i32* %374, align 8
  %376 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %8, align 8
  %377 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %376, i32 0, i32 38
  store i32 %375, i32* %377, align 8
  %378 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %379 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %378, i32 0, i32 1
  %380 = load %struct.TYPE_18__*, %struct.TYPE_18__** %379, align 8
  %381 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %380, i32 0, i32 1
  %382 = load i32, i32* %381, align 8
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %413

384:                                              ; preds = %349
  %385 = load i32, i32* @MSG_DEBUG, align 4
  %386 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %387 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %386, i32 0, i32 1
  %388 = load %struct.TYPE_18__*, %struct.TYPE_18__** %387, align 8
  %389 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %388, i32 0, i32 1
  %390 = load i32, i32* %389, align 8
  %391 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %392 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %391, i32 0, i32 1
  %393 = load %struct.TYPE_18__*, %struct.TYPE_18__** %392, align 8
  %394 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %393, i32 0, i32 2
  %395 = load i32, i32* %394, align 4
  %396 = call i32 (i32, i8*, ...) @wpa_printf(i32 %385, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %390, i32 %395)
  %397 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %398 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %397, i32 0, i32 1
  %399 = load %struct.TYPE_18__*, %struct.TYPE_18__** %398, align 8
  %400 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %399, i32 0, i32 1
  %401 = load i32, i32* %400, align 8
  %402 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %8, align 8
  %403 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %402, i32 0, i32 5
  store i32 %401, i32* %403, align 4
  %404 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %405 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %404, i32 0, i32 1
  %406 = load %struct.TYPE_18__*, %struct.TYPE_18__** %405, align 8
  %407 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %406, i32 0, i32 2
  %408 = load i32, i32* %407, align 4
  %409 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %8, align 8
  %410 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %409, i32 0, i32 6
  store i32 %408, i32* %410, align 8
  %411 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %8, align 8
  %412 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %411, i32 0, i32 7
  store i32 1, i32* %412, align 4
  br label %413

413:                                              ; preds = %384, %349
  br label %414

414:                                              ; preds = %413, %342
  %415 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %416 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %415, i32 0, i32 14
  %417 = load i64, i64* %416, align 8
  %418 = icmp ne i64 %417, 0
  br i1 %418, label %419, label %425

419:                                              ; preds = %414
  %420 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %421 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %420, i32 0, i32 14
  %422 = load i64, i64* %421, align 8
  %423 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %8, align 8
  %424 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %423, i32 0, i32 37
  store i64 %422, i64* %424, align 8
  br label %425

425:                                              ; preds = %419, %414
  %426 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %427 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %426, i32 0, i32 13
  %428 = load i64, i64* %427, align 8
  %429 = icmp ne i64 %428, 0
  br i1 %429, label %430, label %436

430:                                              ; preds = %425
  %431 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %432 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %431, i32 0, i32 13
  %433 = load i64, i64* %432, align 8
  %434 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %8, align 8
  %435 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %434, i32 0, i32 36
  store i64 %433, i64* %435, align 8
  br label %452

436:                                              ; preds = %425
  %437 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %438 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %437, i32 0, i32 1
  %439 = load %struct.TYPE_18__*, %struct.TYPE_18__** %438, align 8
  %440 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %439, i32 0, i32 21
  %441 = load i64, i64* %440, align 8
  %442 = icmp ne i64 %441, 0
  br i1 %442, label %443, label %451

443:                                              ; preds = %436
  %444 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %445 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %444, i32 0, i32 1
  %446 = load %struct.TYPE_18__*, %struct.TYPE_18__** %445, align 8
  %447 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %446, i32 0, i32 21
  %448 = load i64, i64* %447, align 8
  %449 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %8, align 8
  %450 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %449, i32 0, i32 36
  store i64 %448, i64* %450, align 8
  br label %451

451:                                              ; preds = %443, %436
  br label %452

452:                                              ; preds = %451, %430
  %453 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %454 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %453, i32 0, i32 7
  %455 = load i32, i32* %454, align 8
  %456 = icmp ne i32 %455, 0
  br i1 %456, label %457, label %463

457:                                              ; preds = %452
  %458 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %459 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %458, i32 0, i32 7
  %460 = load i32, i32* %459, align 8
  %461 = load %struct.hostapd_config*, %struct.hostapd_config** %7, align 8
  %462 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %461, i32 0, i32 6
  store i32 %460, i32* %462, align 8
  br label %479

463:                                              ; preds = %452
  %464 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %465 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %464, i32 0, i32 1
  %466 = load %struct.TYPE_18__*, %struct.TYPE_18__** %465, align 8
  %467 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %466, i32 0, i32 3
  %468 = load i32, i32* %467, align 8
  %469 = icmp ne i32 %468, 0
  br i1 %469, label %470, label %478

470:                                              ; preds = %463
  %471 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %472 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %471, i32 0, i32 1
  %473 = load %struct.TYPE_18__*, %struct.TYPE_18__** %472, align 8
  %474 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %473, i32 0, i32 3
  %475 = load i32, i32* %474, align 8
  %476 = load %struct.hostapd_config*, %struct.hostapd_config** %7, align 8
  %477 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %476, i32 0, i32 6
  store i32 %475, i32* %477, align 8
  br label %478

478:                                              ; preds = %470, %463
  br label %479

479:                                              ; preds = %478, %457
  %480 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %8, align 8
  %481 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %480, i32 0, i32 2
  %482 = load i32, i32* %481, align 8
  %483 = and i32 %482, 2
  %484 = icmp ne i32 %483, 0
  br i1 %484, label %485, label %496

485:                                              ; preds = %479
  %486 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %8, align 8
  %487 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %486, i32 0, i32 8
  %488 = load i32, i32* %487, align 8
  %489 = icmp eq i32 %488, 0
  br i1 %489, label %490, label %496

490:                                              ; preds = %485
  %491 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %8, align 8
  %492 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %491, i32 0, i32 4
  %493 = load i32, i32* %492, align 8
  %494 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %8, align 8
  %495 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %494, i32 0, i32 8
  store i32 %493, i32* %495, align 8
  br label %496

496:                                              ; preds = %490, %485, %479
  %497 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %8, align 8
  %498 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %497, i32 0, i32 2
  %499 = load i32, i32* %498, align 8
  %500 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %8, align 8
  %501 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %500, i32 0, i32 4
  %502 = load i32, i32* %501, align 8
  %503 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %8, align 8
  %504 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %503, i32 0, i32 8
  %505 = load i32, i32* %504, align 8
  %506 = call i32 @wpa_select_ap_group_cipher(i32 %499, i32 %502, i32 %505)
  %507 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %8, align 8
  %508 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %507, i32 0, i32 9
  store i32 %506, i32* %508, align 4
  %509 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %8, align 8
  %510 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %509, i32 0, i32 2
  %511 = load i32, i32* %510, align 8
  %512 = icmp ne i32 %511, 0
  br i1 %512, label %513, label %523

513:                                              ; preds = %496
  %514 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %8, align 8
  %515 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %514, i32 0, i32 35
  %516 = load i64, i64* %515, align 8
  %517 = icmp ne i64 %516, 0
  br i1 %517, label %518, label %523

518:                                              ; preds = %513
  %519 = load i64, i64* @SECURITY_WPA, align 8
  %520 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %8, align 8
  %521 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %520, i32 0, i32 33
  %522 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %521, i32 0, i32 3
  store i64 %519, i64* %522, align 8
  br label %630

523:                                              ; preds = %513, %496
  %524 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %8, align 8
  %525 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %524, i32 0, i32 2
  %526 = load i32, i32* %525, align 8
  %527 = icmp ne i32 %526, 0
  br i1 %527, label %528, label %533

528:                                              ; preds = %523
  %529 = load i64, i64* @SECURITY_WPA_PSK, align 8
  %530 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %8, align 8
  %531 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %530, i32 0, i32 33
  %532 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %531, i32 0, i32 3
  store i64 %529, i64* %532, align 8
  br label %629

533:                                              ; preds = %523
  %534 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %8, align 8
  %535 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %534, i32 0, i32 35
  %536 = load i64, i64* %535, align 8
  %537 = icmp ne i64 %536, 0
  br i1 %537, label %538, label %577

538:                                              ; preds = %533
  %539 = load i8*, i8** @WPA_CIPHER_NONE, align 8
  %540 = ptrtoint i8* %539 to i32
  store i32 %540, i32* %11, align 4
  %541 = load i64, i64* @SECURITY_IEEE_802_1X, align 8
  %542 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %8, align 8
  %543 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %542, i32 0, i32 33
  %544 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %543, i32 0, i32 3
  store i64 %541, i64* %544, align 8
  %545 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %8, align 8
  %546 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %545, i32 0, i32 10
  %547 = load i32, i32* %546, align 8
  %548 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %8, align 8
  %549 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %548, i32 0, i32 33
  %550 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %549, i32 0, i32 4
  %551 = getelementptr inbounds %struct.hostapd_wep_keys, %struct.hostapd_wep_keys* %550, i32 0, i32 2
  store i32 %547, i32* %551, align 4
  %552 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %8, align 8
  %553 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %552, i32 0, i32 10
  %554 = load i32, i32* %553, align 8
  %555 = icmp ne i32 %554, 0
  br i1 %555, label %556, label %567

556:                                              ; preds = %538
  %557 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %8, align 8
  %558 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %557, i32 0, i32 10
  %559 = load i32, i32* %558, align 8
  %560 = icmp sge i32 %559, 13
  br i1 %560, label %561, label %563

561:                                              ; preds = %556
  %562 = load i32, i32* @WPA_CIPHER_WEP104, align 4
  br label %565

563:                                              ; preds = %556
  %564 = load i32, i32* @WPA_CIPHER_WEP40, align 4
  br label %565

565:                                              ; preds = %563, %561
  %566 = phi i32 [ %562, %561 ], [ %564, %563 ]
  store i32 %566, i32* %11, align 4
  br label %567

567:                                              ; preds = %565, %538
  %568 = load i32, i32* %11, align 4
  %569 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %8, align 8
  %570 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %569, i32 0, i32 9
  store i32 %568, i32* %570, align 4
  %571 = load i32, i32* %11, align 4
  %572 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %8, align 8
  %573 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %572, i32 0, i32 4
  store i32 %571, i32* %573, align 8
  %574 = load i32, i32* %11, align 4
  %575 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %8, align 8
  %576 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %575, i32 0, i32 8
  store i32 %574, i32* %576, align 8
  br label %628

577:                                              ; preds = %533
  %578 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %8, align 8
  %579 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %578, i32 0, i32 33
  %580 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %579, i32 0, i32 4
  %581 = getelementptr inbounds %struct.hostapd_wep_keys, %struct.hostapd_wep_keys* %580, i32 0, i32 1
  %582 = load i32, i32* %581, align 8
  %583 = icmp ne i32 %582, 0
  br i1 %583, label %584, label %610

584:                                              ; preds = %577
  %585 = load i32, i32* @WPA_CIPHER_WEP40, align 4
  store i32 %585, i32* %12, align 4
  %586 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %8, align 8
  %587 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %586, i32 0, i32 33
  %588 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %587, i32 0, i32 4
  %589 = getelementptr inbounds %struct.hostapd_wep_keys, %struct.hostapd_wep_keys* %588, i32 0, i32 0
  %590 = load i64*, i64** %589, align 8
  %591 = getelementptr inbounds i64, i64* %590, i64 0
  %592 = load i64, i64* %591, align 8
  %593 = icmp sge i64 %592, 13
  br i1 %593, label %594, label %596

594:                                              ; preds = %584
  %595 = load i32, i32* @WPA_CIPHER_WEP104, align 4
  store i32 %595, i32* %12, align 4
  br label %596

596:                                              ; preds = %594, %584
  %597 = load i64, i64* @SECURITY_STATIC_WEP, align 8
  %598 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %8, align 8
  %599 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %598, i32 0, i32 33
  %600 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %599, i32 0, i32 3
  store i64 %597, i64* %600, align 8
  %601 = load i32, i32* %12, align 4
  %602 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %8, align 8
  %603 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %602, i32 0, i32 9
  store i32 %601, i32* %603, align 4
  %604 = load i32, i32* %12, align 4
  %605 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %8, align 8
  %606 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %605, i32 0, i32 4
  store i32 %604, i32* %606, align 8
  %607 = load i32, i32* %12, align 4
  %608 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %8, align 8
  %609 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %608, i32 0, i32 8
  store i32 %607, i32* %609, align 8
  br label %627

610:                                              ; preds = %577
  %611 = load i64, i64* @SECURITY_PLAINTEXT, align 8
  %612 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %8, align 8
  %613 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %612, i32 0, i32 33
  %614 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %613, i32 0, i32 3
  store i64 %611, i64* %614, align 8
  %615 = load i8*, i8** @WPA_CIPHER_NONE, align 8
  %616 = ptrtoint i8* %615 to i32
  %617 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %8, align 8
  %618 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %617, i32 0, i32 9
  store i32 %616, i32* %618, align 4
  %619 = load i8*, i8** @WPA_CIPHER_NONE, align 8
  %620 = ptrtoint i8* %619 to i32
  %621 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %8, align 8
  %622 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %621, i32 0, i32 4
  store i32 %620, i32* %622, align 8
  %623 = load i8*, i8** @WPA_CIPHER_NONE, align 8
  %624 = ptrtoint i8* %623 to i32
  %625 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %8, align 8
  %626 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %625, i32 0, i32 8
  store i32 %624, i32* %626, align 8
  br label %627

627:                                              ; preds = %610, %596
  br label %628

628:                                              ; preds = %627, %567
  br label %629

629:                                              ; preds = %628, %528
  br label %630

630:                                              ; preds = %629, %518
  %631 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %8, align 8
  %632 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %631, i32 0, i32 11
  %633 = load i32, i32* %632, align 4
  %634 = icmp slt i32 %633, 86400
  br i1 %634, label %635, label %668

635:                                              ; preds = %630
  %636 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %8, align 8
  %637 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %636, i32 0, i32 2
  %638 = load i32, i32* %637, align 8
  %639 = and i32 %638, 2
  %640 = icmp ne i32 %639, 0
  br i1 %640, label %641, label %668

641:                                              ; preds = %635
  %642 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %8, align 8
  %643 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %642, i32 0, i32 9
  %644 = load i32, i32* %643, align 4
  %645 = load i32, i32* @WPA_CIPHER_CCMP, align 4
  %646 = icmp eq i32 %644, %645
  br i1 %646, label %665, label %647

647:                                              ; preds = %641
  %648 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %8, align 8
  %649 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %648, i32 0, i32 9
  %650 = load i32, i32* %649, align 4
  %651 = load i32, i32* @WPA_CIPHER_GCMP, align 4
  %652 = icmp eq i32 %650, %651
  br i1 %652, label %665, label %653

653:                                              ; preds = %647
  %654 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %8, align 8
  %655 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %654, i32 0, i32 9
  %656 = load i32, i32* %655, align 4
  %657 = load i32, i32* @WPA_CIPHER_CCMP_256, align 4
  %658 = icmp eq i32 %656, %657
  br i1 %658, label %665, label %659

659:                                              ; preds = %653
  %660 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %8, align 8
  %661 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %660, i32 0, i32 9
  %662 = load i32, i32* %661, align 4
  %663 = load i32, i32* @WPA_CIPHER_GCMP_256, align 4
  %664 = icmp eq i32 %662, %663
  br i1 %664, label %665, label %668

665:                                              ; preds = %659, %653, %647, %641
  %666 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %8, align 8
  %667 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %666, i32 0, i32 11
  store i32 86400, i32* %667, align 4
  br label %668

668:                                              ; preds = %665, %659, %635, %630
  %669 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %670 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %669, i32 0, i32 0
  %671 = load i64, i64* %670, align 8
  %672 = icmp ne i64 %671, 0
  br i1 %672, label %673, label %689

673:                                              ; preds = %668
  %674 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %675 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %674, i32 0, i32 0
  %676 = load i64, i64* %675, align 8
  %677 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %678 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %677, i32 0, i32 1
  %679 = load %struct.TYPE_18__*, %struct.TYPE_18__** %678, align 8
  %680 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %679, i32 0, i32 5
  %681 = load i64, i64* %680, align 8
  %682 = icmp slt i64 %676, %681
  br i1 %682, label %683, label %689

683:                                              ; preds = %673
  %684 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %685 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %684, i32 0, i32 0
  %686 = load i64, i64* %685, align 8
  %687 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %8, align 8
  %688 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %687, i32 0, i32 17
  store i64 %686, i64* %688, align 8
  br label %697

689:                                              ; preds = %673, %668
  %690 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %691 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %690, i32 0, i32 1
  %692 = load %struct.TYPE_18__*, %struct.TYPE_18__** %691, align 8
  %693 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %692, i32 0, i32 5
  %694 = load i64, i64* %693, align 8
  %695 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %8, align 8
  %696 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %695, i32 0, i32 17
  store i64 %694, i64* %696, align 8
  br label %697

697:                                              ; preds = %689, %683
  %698 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %8, align 8
  %699 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %698, i32 0, i32 1
  %700 = load i32, i32* %699, align 4
  %701 = icmp ne i32 %700, 0
  br i1 %701, label %710, label %702

702:                                              ; preds = %697
  %703 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %704 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %703, i32 0, i32 1
  %705 = load %struct.TYPE_18__*, %struct.TYPE_18__** %704, align 8
  %706 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %705, i32 0, i32 6
  %707 = load i32, i32* %706, align 8
  %708 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %8, align 8
  %709 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %708, i32 0, i32 1
  store i32 %707, i32* %709, align 4
  br label %710

710:                                              ; preds = %702, %697
  %711 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %712 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %711, i32 0, i32 1
  %713 = load %struct.TYPE_18__*, %struct.TYPE_18__** %712, align 8
  %714 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %713, i32 0, i32 10
  %715 = load i32, i32* %714, align 8
  %716 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %8, align 8
  %717 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %716, i32 0, i32 21
  store i32 %715, i32* %717, align 4
  %718 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %719 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %718, i32 0, i32 1
  %720 = load %struct.TYPE_18__*, %struct.TYPE_18__** %719, align 8
  %721 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %720, i32 0, i32 9
  %722 = load i64, i64* %721, align 8
  %723 = icmp ne i64 %722, 0
  br i1 %723, label %724, label %733

724:                                              ; preds = %710
  %725 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %726 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %725, i32 0, i32 1
  %727 = load %struct.TYPE_18__*, %struct.TYPE_18__** %726, align 8
  %728 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %727, i32 0, i32 9
  %729 = load i64, i64* %728, align 8
  %730 = call i32 @wpabuf_dup(i64 %729)
  %731 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %8, align 8
  %732 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %731, i32 0, i32 20
  store i32 %730, i32* %732, align 8
  br label %733

733:                                              ; preds = %724, %710
  %734 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %735 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %734, i32 0, i32 1
  %736 = load %struct.TYPE_18__*, %struct.TYPE_18__** %735, align 8
  %737 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %736, i32 0, i32 8
  %738 = load i32, i32* %737, align 8
  %739 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %8, align 8
  %740 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %739, i32 0, i32 19
  store i32 %738, i32* %740, align 4
  %741 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %742 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %741, i32 0, i32 1
  %743 = load %struct.TYPE_18__*, %struct.TYPE_18__** %742, align 8
  %744 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %743, i32 0, i32 7
  %745 = load i32, i32* %744, align 4
  %746 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %8, align 8
  %747 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %746, i32 0, i32 18
  store i32 %745, i32* %747, align 8
  store i32 0, i32* %4, align 4
  br label %748

748:                                              ; preds = %733, %314, %204, %112, %41, %35
  %749 = load i32, i32* %4, align 4
  ret i32 %749
}

declare dso_local i32 @os_strlcpy(i32, i32, i32) #1

declare dso_local i64 @wpa_supplicant_conf_ap_ht(%struct.wpa_supplicant*, %struct.wpa_ssid*, %struct.hostapd_config*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @ieee80211_is_dfs(i32, i32, i32) #1

declare dso_local i32 @os_memcpy(i32, i32, i32) #1

declare dso_local i64 @wpa_key_mgmt_wpa_psk(i64) #1

declare dso_local i32 @bin_clear_free(%struct.TYPE_19__*, i32) #1

declare dso_local %struct.TYPE_19__* @os_zalloc(i32) #1

declare dso_local i8* @os_strdup(i64) #1

declare dso_local i32* @os_memdup(i32, i64) #1

declare dso_local i32 @wpa_select_ap_group_cipher(i32, i32, i32) #1

declare dso_local i32 @wpabuf_dup(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
