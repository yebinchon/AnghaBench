; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_capa.c_wiphy_info_ext_feature_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_capa.c_wiphy_info_ext_feature_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy_info_data = type { %struct.wpa_driver_capa* }
%struct.wpa_driver_capa = type { i32, i32 }
%struct.nlattr = type { i32 }

@NL80211_EXT_FEATURE_VHT_IBSS = common dso_local global i32 0, align 4
@WPA_DRIVER_FLAGS_VHT_IBSS = common dso_local global i32 0, align 4
@NL80211_EXT_FEATURE_RRM = common dso_local global i32 0, align 4
@WPA_DRIVER_FLAGS_SUPPORT_RRM = common dso_local global i32 0, align 4
@NL80211_EXT_FEATURE_FILS_STA = common dso_local global i32 0, align 4
@WPA_DRIVER_FLAGS_SUPPORT_FILS = common dso_local global i32 0, align 4
@NL80211_EXT_FEATURE_BEACON_RATE_LEGACY = common dso_local global i32 0, align 4
@WPA_DRIVER_FLAGS_BEACON_RATE_LEGACY = common dso_local global i32 0, align 4
@NL80211_EXT_FEATURE_BEACON_RATE_HT = common dso_local global i32 0, align 4
@WPA_DRIVER_FLAGS_BEACON_RATE_HT = common dso_local global i32 0, align 4
@NL80211_EXT_FEATURE_BEACON_RATE_VHT = common dso_local global i32 0, align 4
@WPA_DRIVER_FLAGS_BEACON_RATE_VHT = common dso_local global i32 0, align 4
@NL80211_EXT_FEATURE_SET_SCAN_DWELL = common dso_local global i32 0, align 4
@WPA_DRIVER_FLAGS_SUPPORT_SET_SCAN_DWELL = common dso_local global i32 0, align 4
@NL80211_EXT_FEATURE_SCAN_START_TIME = common dso_local global i32 0, align 4
@NL80211_EXT_FEATURE_BSS_PARENT_TSF = common dso_local global i32 0, align 4
@WPA_DRIVER_FLAGS_SUPPORT_BEACON_REPORT = common dso_local global i32 0, align 4
@NL80211_EXT_FEATURE_MGMT_TX_RANDOM_TA = common dso_local global i32 0, align 4
@WPA_DRIVER_FLAGS_MGMT_TX_RANDOM_TA = common dso_local global i32 0, align 4
@NL80211_EXT_FEATURE_MGMT_TX_RANDOM_TA_CONNECTED = common dso_local global i32 0, align 4
@WPA_DRIVER_FLAGS_MGMT_TX_RANDOM_TA_CONNECTED = common dso_local global i32 0, align 4
@NL80211_EXT_FEATURE_SCHED_SCAN_RELATIVE_RSSI = common dso_local global i32 0, align 4
@WPA_DRIVER_FLAGS_SCHED_SCAN_RELATIVE_RSSI = common dso_local global i32 0, align 4
@NL80211_EXT_FEATURE_FILS_SK_OFFLOAD = common dso_local global i32 0, align 4
@WPA_DRIVER_FLAGS_FILS_SK_OFFLOAD = common dso_local global i32 0, align 4
@NL80211_EXT_FEATURE_4WAY_HANDSHAKE_STA_PSK = common dso_local global i32 0, align 4
@WPA_DRIVER_FLAGS_4WAY_HANDSHAKE_PSK = common dso_local global i32 0, align 4
@NL80211_EXT_FEATURE_4WAY_HANDSHAKE_STA_1X = common dso_local global i32 0, align 4
@WPA_DRIVER_FLAGS_4WAY_HANDSHAKE_8021X = common dso_local global i32 0, align 4
@NL80211_EXT_FEATURE_MFP_OPTIONAL = common dso_local global i32 0, align 4
@WPA_DRIVER_FLAGS_MFP_OPTIONAL = common dso_local global i32 0, align 4
@NL80211_EXT_FEATURE_DFS_OFFLOAD = common dso_local global i32 0, align 4
@WPA_DRIVER_FLAGS_DFS_OFFLOAD = common dso_local global i32 0, align 4
@NL80211_EXT_FEATURE_ENABLE_FTM_RESPONDER = common dso_local global i32 0, align 4
@WPA_DRIVER_FLAGS_FTM_RESPONDER = common dso_local global i32 0, align 4
@NL80211_EXT_FEATURE_ACCEPT_BCAST_PROBE_RESP = common dso_local global i32 0, align 4
@NL80211_EXT_FEATURE_FILS_MAX_CHANNEL_TIME = common dso_local global i32 0, align 4
@NL80211_EXT_FEATURE_OCE_PROBE_REQ_DEFERRAL_SUPPRESSION = common dso_local global i32 0, align 4
@NL80211_EXT_FEATURE_OCE_PROBE_REQ_HIGH_TX_RATE = common dso_local global i32 0, align 4
@WPA_DRIVER_FLAGS_OCE_STA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wiphy_info_data*, %struct.nlattr*)* @wiphy_info_ext_feature_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wiphy_info_ext_feature_flags(%struct.wiphy_info_data* %0, %struct.nlattr* %1) #0 {
  %3 = alloca %struct.wiphy_info_data*, align 8
  %4 = alloca %struct.nlattr*, align 8
  %5 = alloca %struct.wpa_driver_capa*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.wiphy_info_data* %0, %struct.wiphy_info_data** %3, align 8
  store %struct.nlattr* %1, %struct.nlattr** %4, align 8
  %8 = load %struct.wiphy_info_data*, %struct.wiphy_info_data** %3, align 8
  %9 = getelementptr inbounds %struct.wiphy_info_data, %struct.wiphy_info_data* %8, i32 0, i32 0
  %10 = load %struct.wpa_driver_capa*, %struct.wpa_driver_capa** %9, align 8
  store %struct.wpa_driver_capa* %10, %struct.wpa_driver_capa** %5, align 8
  %11 = load %struct.nlattr*, %struct.nlattr** %4, align 8
  %12 = icmp eq %struct.nlattr* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %234

14:                                               ; preds = %2
  %15 = load %struct.nlattr*, %struct.nlattr** %4, align 8
  %16 = call i32* @nla_data(%struct.nlattr* %15)
  store i32* %16, i32** %6, align 8
  %17 = load %struct.nlattr*, %struct.nlattr** %4, align 8
  %18 = call i32 @nla_len(%struct.nlattr* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @NL80211_EXT_FEATURE_VHT_IBSS, align 4
  %22 = call i64 @ext_feature_isset(i32* %19, i32 %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %14
  %25 = load i32, i32* @WPA_DRIVER_FLAGS_VHT_IBSS, align 4
  %26 = load %struct.wpa_driver_capa*, %struct.wpa_driver_capa** %5, align 8
  %27 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  br label %30

30:                                               ; preds = %24, %14
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @NL80211_EXT_FEATURE_RRM, align 4
  %34 = call i64 @ext_feature_isset(i32* %31, i32 %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load i32, i32* @WPA_DRIVER_FLAGS_SUPPORT_RRM, align 4
  %38 = load %struct.wpa_driver_capa*, %struct.wpa_driver_capa** %5, align 8
  %39 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %36, %30
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @NL80211_EXT_FEATURE_FILS_STA, align 4
  %46 = call i64 @ext_feature_isset(i32* %43, i32 %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %42
  %49 = load i32, i32* @WPA_DRIVER_FLAGS_SUPPORT_FILS, align 4
  %50 = load %struct.wpa_driver_capa*, %struct.wpa_driver_capa** %5, align 8
  %51 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %48, %42
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @NL80211_EXT_FEATURE_BEACON_RATE_LEGACY, align 4
  %58 = call i64 @ext_feature_isset(i32* %55, i32 %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %54
  %61 = load i32, i32* @WPA_DRIVER_FLAGS_BEACON_RATE_LEGACY, align 4
  %62 = load %struct.wpa_driver_capa*, %struct.wpa_driver_capa** %5, align 8
  %63 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %60, %54
  %67 = load i32*, i32** %6, align 8
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @NL80211_EXT_FEATURE_BEACON_RATE_HT, align 4
  %70 = call i64 @ext_feature_isset(i32* %67, i32 %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %66
  %73 = load i32, i32* @WPA_DRIVER_FLAGS_BEACON_RATE_HT, align 4
  %74 = load %struct.wpa_driver_capa*, %struct.wpa_driver_capa** %5, align 8
  %75 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %72, %66
  %79 = load i32*, i32** %6, align 8
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* @NL80211_EXT_FEATURE_BEACON_RATE_VHT, align 4
  %82 = call i64 @ext_feature_isset(i32* %79, i32 %80, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %78
  %85 = load i32, i32* @WPA_DRIVER_FLAGS_BEACON_RATE_VHT, align 4
  %86 = load %struct.wpa_driver_capa*, %struct.wpa_driver_capa** %5, align 8
  %87 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %84, %78
  %91 = load i32*, i32** %6, align 8
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* @NL80211_EXT_FEATURE_SET_SCAN_DWELL, align 4
  %94 = call i64 @ext_feature_isset(i32* %91, i32 %92, i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %90
  %97 = load i32, i32* @WPA_DRIVER_FLAGS_SUPPORT_SET_SCAN_DWELL, align 4
  %98 = load %struct.wpa_driver_capa*, %struct.wpa_driver_capa** %5, align 8
  %99 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 4
  br label %102

102:                                              ; preds = %96, %90
  %103 = load i32*, i32** %6, align 8
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* @NL80211_EXT_FEATURE_SCAN_START_TIME, align 4
  %106 = call i64 @ext_feature_isset(i32* %103, i32 %104, i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %126

108:                                              ; preds = %102
  %109 = load i32*, i32** %6, align 8
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* @NL80211_EXT_FEATURE_BSS_PARENT_TSF, align 4
  %112 = call i64 @ext_feature_isset(i32* %109, i32 %110, i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %126

114:                                              ; preds = %108
  %115 = load i32*, i32** %6, align 8
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* @NL80211_EXT_FEATURE_SET_SCAN_DWELL, align 4
  %118 = call i64 @ext_feature_isset(i32* %115, i32 %116, i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %114
  %121 = load i32, i32* @WPA_DRIVER_FLAGS_SUPPORT_BEACON_REPORT, align 4
  %122 = load %struct.wpa_driver_capa*, %struct.wpa_driver_capa** %5, align 8
  %123 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = or i32 %124, %121
  store i32 %125, i32* %123, align 4
  br label %126

126:                                              ; preds = %120, %114, %108, %102
  %127 = load i32*, i32** %6, align 8
  %128 = load i32, i32* %7, align 4
  %129 = load i32, i32* @NL80211_EXT_FEATURE_MGMT_TX_RANDOM_TA, align 4
  %130 = call i64 @ext_feature_isset(i32* %127, i32 %128, i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %126
  %133 = load i32, i32* @WPA_DRIVER_FLAGS_MGMT_TX_RANDOM_TA, align 4
  %134 = load %struct.wpa_driver_capa*, %struct.wpa_driver_capa** %5, align 8
  %135 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = or i32 %136, %133
  store i32 %137, i32* %135, align 4
  br label %138

138:                                              ; preds = %132, %126
  %139 = load i32*, i32** %6, align 8
  %140 = load i32, i32* %7, align 4
  %141 = load i32, i32* @NL80211_EXT_FEATURE_MGMT_TX_RANDOM_TA_CONNECTED, align 4
  %142 = call i64 @ext_feature_isset(i32* %139, i32 %140, i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %138
  %145 = load i32, i32* @WPA_DRIVER_FLAGS_MGMT_TX_RANDOM_TA_CONNECTED, align 4
  %146 = load %struct.wpa_driver_capa*, %struct.wpa_driver_capa** %5, align 8
  %147 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = or i32 %148, %145
  store i32 %149, i32* %147, align 4
  br label %150

150:                                              ; preds = %144, %138
  %151 = load i32*, i32** %6, align 8
  %152 = load i32, i32* %7, align 4
  %153 = load i32, i32* @NL80211_EXT_FEATURE_SCHED_SCAN_RELATIVE_RSSI, align 4
  %154 = call i64 @ext_feature_isset(i32* %151, i32 %152, i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %162

156:                                              ; preds = %150
  %157 = load i32, i32* @WPA_DRIVER_FLAGS_SCHED_SCAN_RELATIVE_RSSI, align 4
  %158 = load %struct.wpa_driver_capa*, %struct.wpa_driver_capa** %5, align 8
  %159 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = or i32 %160, %157
  store i32 %161, i32* %159, align 4
  br label %162

162:                                              ; preds = %156, %150
  %163 = load i32*, i32** %6, align 8
  %164 = load i32, i32* %7, align 4
  %165 = load i32, i32* @NL80211_EXT_FEATURE_FILS_SK_OFFLOAD, align 4
  %166 = call i64 @ext_feature_isset(i32* %163, i32 %164, i32 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %162
  %169 = load i32, i32* @WPA_DRIVER_FLAGS_FILS_SK_OFFLOAD, align 4
  %170 = load %struct.wpa_driver_capa*, %struct.wpa_driver_capa** %5, align 8
  %171 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = or i32 %172, %169
  store i32 %173, i32* %171, align 4
  br label %174

174:                                              ; preds = %168, %162
  %175 = load i32*, i32** %6, align 8
  %176 = load i32, i32* %7, align 4
  %177 = load i32, i32* @NL80211_EXT_FEATURE_4WAY_HANDSHAKE_STA_PSK, align 4
  %178 = call i64 @ext_feature_isset(i32* %175, i32 %176, i32 %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %186

180:                                              ; preds = %174
  %181 = load i32, i32* @WPA_DRIVER_FLAGS_4WAY_HANDSHAKE_PSK, align 4
  %182 = load %struct.wpa_driver_capa*, %struct.wpa_driver_capa** %5, align 8
  %183 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = or i32 %184, %181
  store i32 %185, i32* %183, align 4
  br label %186

186:                                              ; preds = %180, %174
  %187 = load i32*, i32** %6, align 8
  %188 = load i32, i32* %7, align 4
  %189 = load i32, i32* @NL80211_EXT_FEATURE_4WAY_HANDSHAKE_STA_1X, align 4
  %190 = call i64 @ext_feature_isset(i32* %187, i32 %188, i32 %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %198

192:                                              ; preds = %186
  %193 = load i32, i32* @WPA_DRIVER_FLAGS_4WAY_HANDSHAKE_8021X, align 4
  %194 = load %struct.wpa_driver_capa*, %struct.wpa_driver_capa** %5, align 8
  %195 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = or i32 %196, %193
  store i32 %197, i32* %195, align 4
  br label %198

198:                                              ; preds = %192, %186
  %199 = load i32*, i32** %6, align 8
  %200 = load i32, i32* %7, align 4
  %201 = load i32, i32* @NL80211_EXT_FEATURE_MFP_OPTIONAL, align 4
  %202 = call i64 @ext_feature_isset(i32* %199, i32 %200, i32 %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %210

204:                                              ; preds = %198
  %205 = load i32, i32* @WPA_DRIVER_FLAGS_MFP_OPTIONAL, align 4
  %206 = load %struct.wpa_driver_capa*, %struct.wpa_driver_capa** %5, align 8
  %207 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = or i32 %208, %205
  store i32 %209, i32* %207, align 4
  br label %210

210:                                              ; preds = %204, %198
  %211 = load i32*, i32** %6, align 8
  %212 = load i32, i32* %7, align 4
  %213 = load i32, i32* @NL80211_EXT_FEATURE_DFS_OFFLOAD, align 4
  %214 = call i64 @ext_feature_isset(i32* %211, i32 %212, i32 %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %222

216:                                              ; preds = %210
  %217 = load i32, i32* @WPA_DRIVER_FLAGS_DFS_OFFLOAD, align 4
  %218 = load %struct.wpa_driver_capa*, %struct.wpa_driver_capa** %5, align 8
  %219 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = or i32 %220, %217
  store i32 %221, i32* %219, align 4
  br label %222

222:                                              ; preds = %216, %210
  %223 = load i32*, i32** %6, align 8
  %224 = load i32, i32* %7, align 4
  %225 = load i32, i32* @NL80211_EXT_FEATURE_ENABLE_FTM_RESPONDER, align 4
  %226 = call i64 @ext_feature_isset(i32* %223, i32 %224, i32 %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %234

228:                                              ; preds = %222
  %229 = load i32, i32* @WPA_DRIVER_FLAGS_FTM_RESPONDER, align 4
  %230 = load %struct.wpa_driver_capa*, %struct.wpa_driver_capa** %5, align 8
  %231 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = or i32 %232, %229
  store i32 %233, i32* %231, align 4
  br label %234

234:                                              ; preds = %13, %228, %222
  ret void
}

declare dso_local i32* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @nla_len(%struct.nlattr*) #1

declare dso_local i64 @ext_feature_isset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
