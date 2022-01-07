; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11_he.c_hostapd_eid_he_capab.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11_he.c_hostapd_eid_he_capab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.hostapd_hw_modes* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, i64 }
%struct.hostapd_hw_modes = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32*, i32*, i32*, i32* }
%struct.ieee80211_he_capabilities = type { i32*, i32*, i32* }

@HE_PHYCAP_CHANNEL_WIDTH_MASK = common dso_local global i32 0, align 4
@HE_PHYCAP_CHANNEL_WIDTH_SET_80PLUS80MHZ_IN_5G = common dso_local global i32 0, align 4
@HE_PHYCAP_CHANNEL_WIDTH_SET_160MHZ_IN_5G = common dso_local global i32 0, align 4
@HE_PHYCAP_CHANNEL_WIDTH_SET_40MHZ_IN_2G = common dso_local global i32 0, align 4
@HE_PHYCAP_CHANNEL_WIDTH_SET_40MHZ_80MHZ_IN_5G = common dso_local global i32 0, align 4
@WLAN_EID_EXTENSION = common dso_local global i32 0, align 4
@WLAN_EID_EXT_HE_CAPABILITIES = common dso_local global i32 0, align 4
@HE_MAX_MAC_CAPAB_SIZE = common dso_local global i32 0, align 4
@HE_MAX_PHY_CAPAB_SIZE = common dso_local global i32 0, align 4
@HE_PHYCAP_SU_BEAMFORMER_CAPAB = common dso_local global i32 0, align 4
@HE_PHYCAP_SU_BEAMFORMER_CAPAB_IDX = common dso_local global i64 0, align 8
@HE_PHYCAP_SU_BEAMFORMEE_CAPAB = common dso_local global i32 0, align 4
@HE_PHYCAP_SU_BEAMFORMEE_CAPAB_IDX = common dso_local global i64 0, align 8
@HE_PHYCAP_MU_BEAMFORMER_CAPAB = common dso_local global i32 0, align 4
@HE_PHYCAP_MU_BEAMFORMER_CAPAB_IDX = common dso_local global i64 0, align 8
@HE_PHYCAP_CHANNEL_WIDTH_SET_IDX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @hostapd_eid_he_capab(%struct.hostapd_data* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.hostapd_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_he_capabilities*, align 8
  %9 = alloca %struct.hostapd_hw_modes*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.hostapd_data* %0, %struct.hostapd_data** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %16 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %15, i32 0, i32 0
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %18, align 8
  store %struct.hostapd_hw_modes* %19, %struct.hostapd_hw_modes** %9, align 8
  %20 = load i32, i32* @HE_PHYCAP_CHANNEL_WIDTH_MASK, align 4
  %21 = xor i32 %20, -1
  store i32 %21, i32* %10, align 4
  %22 = load i32*, i32** %6, align 8
  store i32* %22, i32** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %23 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %9, align 8
  %24 = icmp ne %struct.hostapd_hw_modes* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %3
  %26 = load i32*, i32** %6, align 8
  store i32* %26, i32** %4, align 8
  br label %253

27:                                               ; preds = %3
  store i32 24, i32* %12, align 4
  %28 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %9, align 8
  %29 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %9, align 8
  %39 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @ieee80211_he_ppet_size(i32 %37, i32* %45)
  store i32 %46, i32* %14, align 4
  %47 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %48 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %47, i32 0, i32 0
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  switch i32 %53, label %74 [
    i32 129, label %54
    i32 131, label %60
    i32 130, label %66
    i32 128, label %66
  ]

54:                                               ; preds = %27
  %55 = load i32, i32* @HE_PHYCAP_CHANNEL_WIDTH_SET_80PLUS80MHZ_IN_5G, align 4
  %56 = load i32, i32* %10, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %13, align 4
  %59 = add nsw i32 %58, 4
  store i32 %59, i32* %13, align 4
  br label %60

60:                                               ; preds = %27, %54
  %61 = load i32, i32* @HE_PHYCAP_CHANNEL_WIDTH_SET_160MHZ_IN_5G, align 4
  %62 = load i32, i32* %10, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %13, align 4
  %65 = add nsw i32 %64, 4
  store i32 %65, i32* %13, align 4
  br label %66

66:                                               ; preds = %27, %27, %60
  %67 = load i32, i32* @HE_PHYCAP_CHANNEL_WIDTH_SET_40MHZ_IN_2G, align 4
  %68 = load i32, i32* @HE_PHYCAP_CHANNEL_WIDTH_SET_40MHZ_80MHZ_IN_5G, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* %10, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %13, align 4
  %73 = add nsw i32 %72, 4
  store i32 %73, i32* %13, align 4
  br label %74

74:                                               ; preds = %27, %66
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* %14, align 4
  %77 = add nsw i32 %75, %76
  %78 = load i32, i32* %12, align 4
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* @WLAN_EID_EXTENSION, align 4
  %81 = load i32*, i32** %11, align 8
  %82 = getelementptr inbounds i32, i32* %81, i32 1
  store i32* %82, i32** %11, align 8
  store i32 %80, i32* %81, align 4
  %83 = load i32, i32* %12, align 4
  %84 = add nsw i32 1, %83
  %85 = load i32*, i32** %11, align 8
  %86 = getelementptr inbounds i32, i32* %85, i32 1
  store i32* %86, i32** %11, align 8
  store i32 %84, i32* %85, align 4
  %87 = load i32, i32* @WLAN_EID_EXT_HE_CAPABILITIES, align 4
  %88 = load i32*, i32** %11, align 8
  %89 = getelementptr inbounds i32, i32* %88, i32 1
  store i32* %89, i32** %11, align 8
  store i32 %87, i32* %88, align 4
  %90 = load i32*, i32** %11, align 8
  %91 = bitcast i32* %90 to %struct.ieee80211_he_capabilities*
  store %struct.ieee80211_he_capabilities* %91, %struct.ieee80211_he_capabilities** %8, align 8
  %92 = load %struct.ieee80211_he_capabilities*, %struct.ieee80211_he_capabilities** %8, align 8
  %93 = call i32 @os_memset(%struct.ieee80211_he_capabilities* %92, i32 0, i32 24)
  %94 = load %struct.ieee80211_he_capabilities*, %struct.ieee80211_he_capabilities** %8, align 8
  %95 = getelementptr inbounds %struct.ieee80211_he_capabilities, %struct.ieee80211_he_capabilities* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %9, align 8
  %98 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %97, i32 0, i32 0
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %98, align 8
  %100 = load i32, i32* %7, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 3
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* @HE_MAX_MAC_CAPAB_SIZE, align 4
  %106 = call i32 @os_memcpy(i32* %96, i32* %104, i32 %105)
  %107 = load %struct.ieee80211_he_capabilities*, %struct.ieee80211_he_capabilities** %8, align 8
  %108 = getelementptr inbounds %struct.ieee80211_he_capabilities, %struct.ieee80211_he_capabilities* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %9, align 8
  %111 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %110, i32 0, i32 0
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %111, align 8
  %113 = load i32, i32* %7, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 2
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* @HE_MAX_PHY_CAPAB_SIZE, align 4
  %119 = call i32 @os_memcpy(i32* %109, i32* %117, i32 %118)
  %120 = load %struct.ieee80211_he_capabilities*, %struct.ieee80211_he_capabilities** %8, align 8
  %121 = getelementptr inbounds %struct.ieee80211_he_capabilities, %struct.ieee80211_he_capabilities* %120, i32 0, i32 2
  %122 = load i32*, i32** %121, align 8
  %123 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %9, align 8
  %124 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %123, i32 0, i32 0
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %124, align 8
  %126 = load i32, i32* %7, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %13, align 4
  %132 = call i32 @os_memcpy(i32* %122, i32* %130, i32 %131)
  %133 = load i32, i32* %14, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %152

135:                                              ; preds = %74
  %136 = load %struct.ieee80211_he_capabilities*, %struct.ieee80211_he_capabilities** %8, align 8
  %137 = getelementptr inbounds %struct.ieee80211_he_capabilities, %struct.ieee80211_he_capabilities* %136, i32 0, i32 2
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %13, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %9, align 8
  %143 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %142, i32 0, i32 0
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %143, align 8
  %145 = load i32, i32* %7, align 4
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %14, align 4
  %151 = call i32 @os_memcpy(i32* %141, i32* %149, i32 %150)
  br label %152

152:                                              ; preds = %135, %74
  %153 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %154 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %153, i32 0, i32 0
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %171

162:                                              ; preds = %152
  %163 = load i32, i32* @HE_PHYCAP_SU_BEAMFORMER_CAPAB, align 4
  %164 = load %struct.ieee80211_he_capabilities*, %struct.ieee80211_he_capabilities** %8, align 8
  %165 = getelementptr inbounds %struct.ieee80211_he_capabilities, %struct.ieee80211_he_capabilities* %164, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  %167 = load i64, i64* @HE_PHYCAP_SU_BEAMFORMER_CAPAB_IDX, align 8
  %168 = getelementptr inbounds i32, i32* %166, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = or i32 %169, %163
  store i32 %170, i32* %168, align 4
  br label %181

171:                                              ; preds = %152
  %172 = load i32, i32* @HE_PHYCAP_SU_BEAMFORMER_CAPAB, align 4
  %173 = xor i32 %172, -1
  %174 = load %struct.ieee80211_he_capabilities*, %struct.ieee80211_he_capabilities** %8, align 8
  %175 = getelementptr inbounds %struct.ieee80211_he_capabilities, %struct.ieee80211_he_capabilities* %174, i32 0, i32 1
  %176 = load i32*, i32** %175, align 8
  %177 = load i64, i64* @HE_PHYCAP_SU_BEAMFORMER_CAPAB_IDX, align 8
  %178 = getelementptr inbounds i32, i32* %176, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = and i32 %179, %173
  store i32 %180, i32* %178, align 4
  br label %181

181:                                              ; preds = %171, %162
  %182 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %183 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %182, i32 0, i32 0
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 0
  %186 = load %struct.TYPE_7__*, %struct.TYPE_7__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %200

191:                                              ; preds = %181
  %192 = load i32, i32* @HE_PHYCAP_SU_BEAMFORMEE_CAPAB, align 4
  %193 = load %struct.ieee80211_he_capabilities*, %struct.ieee80211_he_capabilities** %8, align 8
  %194 = getelementptr inbounds %struct.ieee80211_he_capabilities, %struct.ieee80211_he_capabilities* %193, i32 0, i32 1
  %195 = load i32*, i32** %194, align 8
  %196 = load i64, i64* @HE_PHYCAP_SU_BEAMFORMEE_CAPAB_IDX, align 8
  %197 = getelementptr inbounds i32, i32* %195, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = or i32 %198, %192
  store i32 %199, i32* %197, align 4
  br label %210

200:                                              ; preds = %181
  %201 = load i32, i32* @HE_PHYCAP_SU_BEAMFORMEE_CAPAB, align 4
  %202 = xor i32 %201, -1
  %203 = load %struct.ieee80211_he_capabilities*, %struct.ieee80211_he_capabilities** %8, align 8
  %204 = getelementptr inbounds %struct.ieee80211_he_capabilities, %struct.ieee80211_he_capabilities* %203, i32 0, i32 1
  %205 = load i32*, i32** %204, align 8
  %206 = load i64, i64* @HE_PHYCAP_SU_BEAMFORMEE_CAPAB_IDX, align 8
  %207 = getelementptr inbounds i32, i32* %205, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = and i32 %208, %202
  store i32 %209, i32* %207, align 4
  br label %210

210:                                              ; preds = %200, %191
  %211 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %212 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %211, i32 0, i32 0
  %213 = load %struct.TYPE_8__*, %struct.TYPE_8__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 0
  %215 = load %struct.TYPE_7__*, %struct.TYPE_7__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %229

220:                                              ; preds = %210
  %221 = load i32, i32* @HE_PHYCAP_MU_BEAMFORMER_CAPAB, align 4
  %222 = load %struct.ieee80211_he_capabilities*, %struct.ieee80211_he_capabilities** %8, align 8
  %223 = getelementptr inbounds %struct.ieee80211_he_capabilities, %struct.ieee80211_he_capabilities* %222, i32 0, i32 1
  %224 = load i32*, i32** %223, align 8
  %225 = load i64, i64* @HE_PHYCAP_MU_BEAMFORMER_CAPAB_IDX, align 8
  %226 = getelementptr inbounds i32, i32* %224, i64 %225
  %227 = load i32, i32* %226, align 4
  %228 = or i32 %227, %221
  store i32 %228, i32* %226, align 4
  br label %239

229:                                              ; preds = %210
  %230 = load i32, i32* @HE_PHYCAP_MU_BEAMFORMER_CAPAB, align 4
  %231 = xor i32 %230, -1
  %232 = load %struct.ieee80211_he_capabilities*, %struct.ieee80211_he_capabilities** %8, align 8
  %233 = getelementptr inbounds %struct.ieee80211_he_capabilities, %struct.ieee80211_he_capabilities* %232, i32 0, i32 1
  %234 = load i32*, i32** %233, align 8
  %235 = load i64, i64* @HE_PHYCAP_MU_BEAMFORMER_CAPAB_IDX, align 8
  %236 = getelementptr inbounds i32, i32* %234, i64 %235
  %237 = load i32, i32* %236, align 4
  %238 = and i32 %237, %231
  store i32 %238, i32* %236, align 4
  br label %239

239:                                              ; preds = %229, %220
  %240 = load i32, i32* %10, align 4
  %241 = load %struct.ieee80211_he_capabilities*, %struct.ieee80211_he_capabilities** %8, align 8
  %242 = getelementptr inbounds %struct.ieee80211_he_capabilities, %struct.ieee80211_he_capabilities* %241, i32 0, i32 1
  %243 = load i32*, i32** %242, align 8
  %244 = load i64, i64* @HE_PHYCAP_CHANNEL_WIDTH_SET_IDX, align 8
  %245 = getelementptr inbounds i32, i32* %243, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = and i32 %246, %240
  store i32 %247, i32* %245, align 4
  %248 = load i32, i32* %12, align 4
  %249 = load i32*, i32** %11, align 8
  %250 = sext i32 %248 to i64
  %251 = getelementptr inbounds i32, i32* %249, i64 %250
  store i32* %251, i32** %11, align 8
  %252 = load i32*, i32** %11, align 8
  store i32* %252, i32** %4, align 8
  br label %253

253:                                              ; preds = %239, %25
  %254 = load i32*, i32** %4, align 8
  ret i32* %254
}

declare dso_local i32 @ieee80211_he_ppet_size(i32, i32*) #1

declare dso_local i32 @os_memset(%struct.ieee80211_he_capabilities*, i32, i32) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
