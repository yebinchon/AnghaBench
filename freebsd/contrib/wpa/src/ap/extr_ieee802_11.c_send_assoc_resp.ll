; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11.c_send_assoc_resp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11.c_send_assoc_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_14__*, i64, %struct.TYPE_12__*, %struct.TYPE_11__*, i32* }
%struct.TYPE_14__ = type { i32, i32, %struct.wpabuf*, i64, i64, i64, i32 }
%struct.wpabuf = type { i32 }
%struct.TYPE_12__ = type { %struct.wpabuf*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32, i64, i64 }
%struct.sta_info = type { i32, i32, %struct.wpabuf*, i32, i32, i64, %struct.TYPE_13__*, i32, i64, i64, %struct.ieee80211_vht_capabilities* }
%struct.TYPE_13__ = type { %struct.wpabuf*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.ieee80211_vht_capabilities = type { i32 }
%struct.ieee80211_mgmt = type { %struct.TYPE_16__, i32*, i32*, i32*, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32*, i8*, i8*, i8* }

@WLAN_STATUS_UNSPECIFIED_FAILURE = common dso_local global i32 0, align 4
@WLAN_FC_TYPE_MGMT = common dso_local global i32 0, align 4
@WLAN_FC_STYPE_REASSOC_RESP = common dso_local global i32 0, align 4
@WLAN_FC_STYPE_ASSOC_RESP = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@IEEE80211_HDRLEN = common dso_local global i32 0, align 4
@WLAN_STA_WMM = common dso_local global i32 0, align 4
@WLAN_STA_MULTI_AP = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to send assoc resp: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@FILS_SESSION_LEN = common dso_local global i32 0, align 4
@IEEE80211_MODE_AP = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@P2P_MANAGE = common dso_local global i32 0, align 4
@P2P_SC_FAIL_INVALID_PARAMS = common dso_local global i32 0, align 4
@P2P_SC_FAIL_LIMIT_REACHED = common dso_local global i32 0, align 4
@P2P_SC_SUCCESS = common dso_local global i32 0, align 4
@ParseFailed = common dso_local global i64 0, align 8
@VHT_CAP_BEAMFORMEE_STS_OFFSET = common dso_local global i32 0, align 4
@WLAN_AUTH_FILS_PK = common dso_local global i32 0, align 4
@WLAN_AUTH_FILS_SK = common dso_local global i32 0, align 4
@WLAN_AUTH_FILS_SK_PFS = common dso_local global i32 0, align 4
@WLAN_EID_EXTENSION = common dso_local global i8* null, align 8
@WLAN_EID_EXT_FILS_SESSION = common dso_local global i64 0, align 8
@WLAN_EID_EXT_OWE_DH_PARAM = common dso_local global i32 0, align 4
@WLAN_STATUS_ASSOC_REJECTED_TEMPORARILY = common dso_local global i32 0, align 4
@WLAN_STATUS_DENIED_POOR_CHANNEL_CONDITIONS = common dso_local global i32 0, align 4
@WLAN_STA_MAYBE_WPS = common dso_local global i32 0, align 4
@WLAN_STA_VENDOR_VHT = common dso_local global i32 0, align 4
@WLAN_STA_WPS = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_DPP = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_OWE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostapd_data*, %struct.sta_info*, i32*, i32, i32, i32*, i64, i32)* @send_assoc_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_assoc_resp(%struct.hostapd_data* %0, %struct.sta_info* %1, i32* %2, i32 %3, i32 %4, i32* %5, i64 %6, i32 %7) #0 {
  %9 = alloca %struct.hostapd_data*, align 8
  %10 = alloca %struct.sta_info*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.ieee80211_mgmt*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  store %struct.hostapd_data* %0, %struct.hostapd_data** %9, align 8
  store %struct.sta_info* %1, %struct.sta_info** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i64 %6, i64* %15, align 8
  store i32 %7, i32* %16, align 4
  store i32 128, i32* %22, align 4
  store i64 1088, i64* %19, align 8
  %23 = load i64, i64* %19, align 8
  %24 = call i32* @os_zalloc(i64 %23)
  store i32* %24, i32** %18, align 8
  %25 = load i32*, i32** %18, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %8
  %28 = load i32, i32* @WLAN_STATUS_UNSPECIFIED_FAILURE, align 4
  store i32 %28, i32* %22, align 4
  br label %244

29:                                               ; preds = %8
  %30 = load i32*, i32** %18, align 8
  %31 = bitcast i32* %30 to %struct.ieee80211_mgmt*
  store %struct.ieee80211_mgmt* %31, %struct.ieee80211_mgmt** %20, align 8
  %32 = load i32, i32* @WLAN_FC_TYPE_MGMT, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* @WLAN_FC_STYPE_REASSOC_RESP, align 4
  br label %39

37:                                               ; preds = %29
  %38 = load i32, i32* @WLAN_FC_STYPE_ASSOC_RESP, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  %41 = call i32 @IEEE80211_FC(i32 %32, i32 %40)
  %42 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %20, align 8
  %43 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %42, i32 0, i32 4
  store i32 %41, i32* %43, align 8
  %44 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %20, align 8
  %45 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %44, i32 0, i32 3
  %46 = load i32*, i32** %45, align 8
  %47 = load i32*, i32** %11, align 8
  %48 = load i32, i32* @ETH_ALEN, align 4
  %49 = call i32 @os_memcpy(i32* %46, i32* %47, i32 %48)
  %50 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %20, align 8
  %51 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.hostapd_data*, %struct.hostapd_data** %9, align 8
  %54 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %53, i32 0, i32 4
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* @ETH_ALEN, align 4
  %57 = call i32 @os_memcpy(i32* %52, i32* %55, i32 %56)
  %58 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %20, align 8
  %59 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.hostapd_data*, %struct.hostapd_data** %9, align 8
  %62 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %61, i32 0, i32 4
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* @ETH_ALEN, align 4
  %65 = call i32 @os_memcpy(i32* %60, i32* %63, i32 %64)
  %66 = load i32, i32* @IEEE80211_HDRLEN, align 4
  store i32 %66, i32* %17, align 4
  %67 = load i32, i32* %17, align 4
  %68 = sext i32 %67 to i64
  %69 = add i64 %68, 32
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %17, align 4
  %71 = load %struct.hostapd_data*, %struct.hostapd_data** %9, align 8
  %72 = call i32 @hostapd_own_capab_info(%struct.hostapd_data* %71)
  %73 = call i8* @host_to_le16(i32 %72)
  %74 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %20, align 8
  %75 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 3
  store i8* %73, i8** %77, align 8
  %78 = load i32, i32* %12, align 4
  %79 = call i8* @host_to_le16(i32 %78)
  %80 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %20, align 8
  %81 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 2
  store i8* %79, i8** %83, align 8
  %84 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %85 = icmp ne %struct.sta_info* %84, null
  br i1 %85, label %86, label %90

86:                                               ; preds = %39
  %87 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %88 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  br label %91

90:                                               ; preds = %39
  br label %91

91:                                               ; preds = %90, %86
  %92 = phi i32 [ %89, %86 ], [ 0, %90 ]
  %93 = call i32 @BIT(i32 14)
  %94 = or i32 %92, %93
  %95 = call i32 @BIT(i32 15)
  %96 = or i32 %94, %95
  %97 = call i8* @host_to_le16(i32 %96)
  %98 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %20, align 8
  %99 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 1
  store i8* %97, i8** %101, align 8
  %102 = load %struct.hostapd_data*, %struct.hostapd_data** %9, align 8
  %103 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %20, align 8
  %104 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = call i32* @hostapd_eid_supp_rates(%struct.hostapd_data* %102, i32* %107)
  store i32* %108, i32** %21, align 8
  %109 = load %struct.hostapd_data*, %struct.hostapd_data** %9, align 8
  %110 = load i32*, i32** %21, align 8
  %111 = call i32* @hostapd_eid_ext_supp_rates(%struct.hostapd_data* %109, i32* %110)
  store i32* %111, i32** %21, align 8
  %112 = load %struct.hostapd_data*, %struct.hostapd_data** %9, align 8
  %113 = load i32*, i32** %21, align 8
  %114 = call i32* @hostapd_eid_ext_capab(%struct.hostapd_data* %112, i32* %113)
  store i32* %114, i32** %21, align 8
  %115 = load %struct.hostapd_data*, %struct.hostapd_data** %9, align 8
  %116 = load i32*, i32** %21, align 8
  %117 = call i32* @hostapd_eid_bss_max_idle_period(%struct.hostapd_data* %115, i32* %116)
  store i32* %117, i32** %21, align 8
  %118 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %119 = icmp ne %struct.sta_info* %118, null
  br i1 %119, label %120, label %129

120:                                              ; preds = %91
  %121 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %122 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %121, i32 0, i32 9
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %120
  %126 = load %struct.hostapd_data*, %struct.hostapd_data** %9, align 8
  %127 = load i32*, i32** %21, align 8
  %128 = call i32* @hostapd_eid_qos_map_set(%struct.hostapd_data* %126, i32* %127)
  store i32* %128, i32** %21, align 8
  br label %129

129:                                              ; preds = %125, %120, %91
  %130 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %131 = icmp ne %struct.sta_info* %130, null
  br i1 %131, label %132, label %143

132:                                              ; preds = %129
  %133 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %134 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @WLAN_STA_WMM, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %132
  %140 = load %struct.hostapd_data*, %struct.hostapd_data** %9, align 8
  %141 = load i32*, i32** %21, align 8
  %142 = call i32* @hostapd_eid_wmm(%struct.hostapd_data* %140, i32* %141)
  store i32* %142, i32** %21, align 8
  br label %143

143:                                              ; preds = %139, %132, %129
  %144 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %145 = icmp ne %struct.sta_info* %144, null
  br i1 %145, label %146, label %157

146:                                              ; preds = %143
  %147 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %148 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @WLAN_STA_MULTI_AP, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %146
  %154 = load %struct.hostapd_data*, %struct.hostapd_data** %9, align 8
  %155 = load i32*, i32** %21, align 8
  %156 = call i32* @hostapd_eid_multi_ap(%struct.hostapd_data* %154, i32* %155)
  store i32* %156, i32** %21, align 8
  br label %157

157:                                              ; preds = %153, %146, %143
  %158 = load %struct.hostapd_data*, %struct.hostapd_data** %9, align 8
  %159 = load i32*, i32** %21, align 8
  %160 = load i32*, i32** %18, align 8
  %161 = load i64, i64* %19, align 8
  %162 = getelementptr inbounds i32, i32* %160, i64 %161
  %163 = load i32*, i32** %21, align 8
  %164 = ptrtoint i32* %162 to i64
  %165 = ptrtoint i32* %163 to i64
  %166 = sub i64 %164, %165
  %167 = sdiv exact i64 %166, 4
  %168 = trunc i64 %167 to i32
  %169 = call i32* @hostapd_eid_mbo(%struct.hostapd_data* %158, i32* %159, i32 %168)
  store i32* %169, i32** %21, align 8
  %170 = load %struct.hostapd_data*, %struct.hostapd_data** %9, align 8
  %171 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %170, i32 0, i32 0
  %172 = load %struct.TYPE_14__*, %struct.TYPE_14__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 2
  %174 = load %struct.wpabuf*, %struct.wpabuf** %173, align 8
  %175 = icmp ne %struct.wpabuf* %174, null
  br i1 %175, label %176, label %217

176:                                              ; preds = %157
  %177 = load i32*, i32** %18, align 8
  %178 = load i64, i64* %19, align 8
  %179 = getelementptr inbounds i32, i32* %177, i64 %178
  %180 = load i32*, i32** %21, align 8
  %181 = ptrtoint i32* %179 to i64
  %182 = ptrtoint i32* %180 to i64
  %183 = sub i64 %181, %182
  %184 = sdiv exact i64 %183, 4
  %185 = load %struct.hostapd_data*, %struct.hostapd_data** %9, align 8
  %186 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %185, i32 0, i32 0
  %187 = load %struct.TYPE_14__*, %struct.TYPE_14__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i32 0, i32 2
  %189 = load %struct.wpabuf*, %struct.wpabuf** %188, align 8
  %190 = call i32 @wpabuf_len(%struct.wpabuf* %189)
  %191 = sext i32 %190 to i64
  %192 = icmp uge i64 %184, %191
  br i1 %192, label %193, label %217

193:                                              ; preds = %176
  %194 = load i32*, i32** %21, align 8
  %195 = load %struct.hostapd_data*, %struct.hostapd_data** %9, align 8
  %196 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %195, i32 0, i32 0
  %197 = load %struct.TYPE_14__*, %struct.TYPE_14__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i32 0, i32 2
  %199 = load %struct.wpabuf*, %struct.wpabuf** %198, align 8
  %200 = call i32* @wpabuf_head(%struct.wpabuf* %199)
  %201 = load %struct.hostapd_data*, %struct.hostapd_data** %9, align 8
  %202 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %201, i32 0, i32 0
  %203 = load %struct.TYPE_14__*, %struct.TYPE_14__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %203, i32 0, i32 2
  %205 = load %struct.wpabuf*, %struct.wpabuf** %204, align 8
  %206 = call i32 @wpabuf_len(%struct.wpabuf* %205)
  %207 = call i32 @os_memcpy(i32* %194, i32* %200, i32 %206)
  %208 = load %struct.hostapd_data*, %struct.hostapd_data** %9, align 8
  %209 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %208, i32 0, i32 0
  %210 = load %struct.TYPE_14__*, %struct.TYPE_14__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %210, i32 0, i32 2
  %212 = load %struct.wpabuf*, %struct.wpabuf** %211, align 8
  %213 = call i32 @wpabuf_len(%struct.wpabuf* %212)
  %214 = load i32*, i32** %21, align 8
  %215 = sext i32 %213 to i64
  %216 = getelementptr inbounds i32, i32* %214, i64 %215
  store i32* %216, i32** %21, align 8
  br label %217

217:                                              ; preds = %193, %176, %157
  %218 = load i32*, i32** %21, align 8
  %219 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %20, align 8
  %220 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %221, i32 0, i32 0
  %223 = load i32*, i32** %222, align 8
  %224 = ptrtoint i32* %218 to i64
  %225 = ptrtoint i32* %223 to i64
  %226 = sub i64 %224, %225
  %227 = sdiv exact i64 %226, 4
  %228 = load i32, i32* %17, align 4
  %229 = sext i32 %228 to i64
  %230 = add nsw i64 %229, %227
  %231 = trunc i64 %230 to i32
  store i32 %231, i32* %17, align 4
  %232 = load %struct.hostapd_data*, %struct.hostapd_data** %9, align 8
  %233 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %20, align 8
  %234 = load i32, i32* %17, align 4
  %235 = call i64 @hostapd_drv_send_mlme(%struct.hostapd_data* %232, %struct.ieee80211_mgmt* %233, i32 %234, i32 0)
  %236 = icmp slt i64 %235, 0
  br i1 %236, label %237, label %243

237:                                              ; preds = %217
  %238 = load i32, i32* @MSG_INFO, align 4
  %239 = load i32, i32* @errno, align 4
  %240 = call i32 @strerror(i32 %239)
  %241 = call i32 (i32, i8*, ...) @wpa_printf(i32 %238, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %240)
  %242 = load i32, i32* @WLAN_STATUS_UNSPECIFIED_FAILURE, align 4
  store i32 %242, i32* %22, align 4
  br label %243

243:                                              ; preds = %237, %217
  br label %244

244:                                              ; preds = %243, %27
  %245 = load i32*, i32** %18, align 8
  %246 = call i32 @os_free(i32* %245)
  %247 = load i32, i32* %22, align 4
  ret i32 %247
}

declare dso_local i32* @os_zalloc(i64) #1

declare dso_local i32 @IEEE80211_FC(i32, i32) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i32) #1

declare dso_local i8* @host_to_le16(i32) #1

declare dso_local i32 @hostapd_own_capab_info(%struct.hostapd_data*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32* @hostapd_eid_supp_rates(%struct.hostapd_data*, i32*) #1

declare dso_local i32* @hostapd_eid_ext_supp_rates(%struct.hostapd_data*, i32*) #1

declare dso_local i32* @hostapd_eid_ext_capab(%struct.hostapd_data*, i32*) #1

declare dso_local i32* @hostapd_eid_bss_max_idle_period(%struct.hostapd_data*, i32*) #1

declare dso_local i32* @hostapd_eid_qos_map_set(%struct.hostapd_data*, i32*) #1

declare dso_local i32* @hostapd_eid_wmm(%struct.hostapd_data*, i32*) #1

declare dso_local i32* @hostapd_eid_multi_ap(%struct.hostapd_data*, i32*) #1

declare dso_local i32* @hostapd_eid_mbo(%struct.hostapd_data*, i32*, i32) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32* @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i64 @hostapd_drv_send_mlme(%struct.hostapd_data*, %struct.ieee80211_mgmt*, i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @os_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
