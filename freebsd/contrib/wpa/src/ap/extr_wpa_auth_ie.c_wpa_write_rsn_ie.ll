; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth_ie.c_wpa_write_rsn_ie.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth_ie.c_wpa_write_rsn_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_auth_config = type { i32, i32, i32, i64, i32, i64, i64, i64 }
%struct.rsn_ie_hdr = type { i32, i32*, i32 }

@WLAN_EID_RSN = common dso_local global i32 0, align 4
@RSN_VERSION = common dso_local global i32 0, align 4
@WPA_PROTO_RSN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Invalid group cipher (%d).\00", align 1
@RSN_SELECTOR_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Invalid pairwise cipher (%d).\00", align 1
@WPA_KEY_MGMT_IEEE8021X = common dso_local global i32 0, align 4
@RSN_AUTH_KEY_MGMT_UNSPEC_802_1X = common dso_local global i64 0, align 8
@WPA_KEY_MGMT_PSK = common dso_local global i32 0, align 4
@RSN_AUTH_KEY_MGMT_PSK_OVER_802_1X = common dso_local global i64 0, align 8
@WPA_KEY_MGMT_IEEE8021X_SUITE_B = common dso_local global i32 0, align 4
@RSN_AUTH_KEY_MGMT_802_1X_SUITE_B = common dso_local global i64 0, align 8
@WPA_KEY_MGMT_IEEE8021X_SUITE_B_192 = common dso_local global i32 0, align 4
@RSN_AUTH_KEY_MGMT_802_1X_SUITE_B_192 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"Invalid key management type (%d).\00", align 1
@WPA_CAPABILITY_PREAUTH = common dso_local global i32 0, align 4
@RSN_NUM_REPLAY_COUNTERS_16 = common dso_local global i32 0, align 4
@PMKID_LEN = common dso_local global i32 0, align 4
@MGMT_FRAME_PROTECTION_REQUIRED = common dso_local global i64 0, align 8
@NO_MGMT_FRAME_PROTECTION = common dso_local global i64 0, align 8
@RSN_AUTH_KEY_MGMT_802_1X_SHA256 = common dso_local global i64 0, align 8
@RSN_AUTH_KEY_MGMT_DPP = common dso_local global i64 0, align 8
@RSN_AUTH_KEY_MGMT_FILS_SHA256 = common dso_local global i64 0, align 8
@RSN_AUTH_KEY_MGMT_FILS_SHA384 = common dso_local global i64 0, align 8
@RSN_AUTH_KEY_MGMT_FT_802_1X = common dso_local global i64 0, align 8
@RSN_AUTH_KEY_MGMT_FT_802_1X_SHA384 = common dso_local global i64 0, align 8
@RSN_AUTH_KEY_MGMT_FT_FILS_SHA256 = common dso_local global i64 0, align 8
@RSN_AUTH_KEY_MGMT_FT_FILS_SHA384 = common dso_local global i64 0, align 8
@RSN_AUTH_KEY_MGMT_FT_PSK = common dso_local global i64 0, align 8
@RSN_AUTH_KEY_MGMT_FT_SAE = common dso_local global i64 0, align 8
@RSN_AUTH_KEY_MGMT_OSEN = common dso_local global i64 0, align 8
@RSN_AUTH_KEY_MGMT_OWE = common dso_local global i64 0, align 8
@RSN_AUTH_KEY_MGMT_PSK_SHA256 = common dso_local global i64 0, align 8
@RSN_AUTH_KEY_MGMT_SAE = common dso_local global i64 0, align 8
@RSN_CIPHER_SUITE_AES_128_CMAC = common dso_local global i64 0, align 8
@RSN_CIPHER_SUITE_BIP_CMAC_256 = common dso_local global i64 0, align 8
@RSN_CIPHER_SUITE_BIP_GMAC_128 = common dso_local global i64 0, align 8
@RSN_CIPHER_SUITE_BIP_GMAC_256 = common dso_local global i64 0, align 8
@WPA_CAPABILITY_MFPC = common dso_local global i32 0, align 4
@WPA_CAPABILITY_MFPR = common dso_local global i32 0, align 4
@WPA_CAPABILITY_OCVC = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_DPP = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_FILS_SHA256 = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_FILS_SHA384 = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_FT_FILS_SHA256 = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_FT_FILS_SHA384 = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_FT_IEEE8021X = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_FT_IEEE8021X_SHA384 = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_FT_PSK = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_FT_SAE = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_IEEE8021X_SHA256 = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_OSEN = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_OWE = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_PSK_SHA256 = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_SAE = common dso_local global i32 0, align 4
@rsn_testing = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpa_write_rsn_ie(%struct.wpa_auth_config* %0, i32* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpa_auth_config*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.rsn_ie_hdr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.wpa_auth_config* %0, %struct.wpa_auth_config** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = bitcast i32* %17 to %struct.rsn_ie_hdr*
  store %struct.rsn_ie_hdr* %18, %struct.rsn_ie_hdr** %10, align 8
  %19 = load i32, i32* @WLAN_EID_RSN, align 4
  %20 = load %struct.rsn_ie_hdr*, %struct.rsn_ie_hdr** %10, align 8
  %21 = getelementptr inbounds %struct.rsn_ie_hdr, %struct.rsn_ie_hdr* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 8
  %22 = load %struct.rsn_ie_hdr*, %struct.rsn_ie_hdr** %10, align 8
  %23 = getelementptr inbounds %struct.rsn_ie_hdr, %struct.rsn_ie_hdr* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* @RSN_VERSION, align 4
  %26 = call i32 @WPA_PUT_LE16(i32* %24, i32 %25)
  %27 = load %struct.rsn_ie_hdr*, %struct.rsn_ie_hdr** %10, align 8
  %28 = getelementptr inbounds %struct.rsn_ie_hdr, %struct.rsn_ie_hdr* %27, i64 1
  %29 = bitcast %struct.rsn_ie_hdr* %28 to i32*
  store i32* %29, i32** %13, align 8
  %30 = load i32, i32* @WPA_PROTO_RSN, align 4
  %31 = load %struct.wpa_auth_config*, %struct.wpa_auth_config** %6, align 8
  %32 = getelementptr inbounds %struct.wpa_auth_config, %struct.wpa_auth_config* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @wpa_cipher_to_suite(i32 %30, i32 %33)
  store i64 %34, i64* %16, align 8
  %35 = load i64, i64* %16, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %4
  %38 = load i32, i32* @MSG_DEBUG, align 4
  %39 = load %struct.wpa_auth_config*, %struct.wpa_auth_config** %6, align 8
  %40 = getelementptr inbounds %struct.wpa_auth_config, %struct.wpa_auth_config* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @wpa_printf(i32 %38, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %41)
  store i32 -1, i32* %5, align 4
  br label %234

43:                                               ; preds = %4
  %44 = load i32*, i32** %13, align 8
  %45 = load i64, i64* %16, align 8
  %46 = call i32 @RSN_SELECTOR_PUT(i32* %44, i64 %45)
  %47 = load i32, i32* @RSN_SELECTOR_LEN, align 4
  %48 = load i32*, i32** %13, align 8
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  store i32* %50, i32** %13, align 8
  store i32 0, i32* %11, align 4
  %51 = load i32*, i32** %13, align 8
  store i32* %51, i32** %14, align 8
  %52 = load i32*, i32** %13, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 2
  store i32* %53, i32** %13, align 8
  %54 = load i32*, i32** %13, align 8
  %55 = load %struct.wpa_auth_config*, %struct.wpa_auth_config** %6, align 8
  %56 = getelementptr inbounds %struct.wpa_auth_config, %struct.wpa_auth_config* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @rsn_cipher_put_suites(i32* %54, i32 %57)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %60, %59
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* @RSN_SELECTOR_LEN, align 4
  %64 = mul nsw i32 %62, %63
  %65 = load i32*, i32** %13, align 8
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  store i32* %67, i32** %13, align 8
  %68 = load i32, i32* %11, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %43
  %71 = load i32, i32* @MSG_DEBUG, align 4
  %72 = load %struct.wpa_auth_config*, %struct.wpa_auth_config** %6, align 8
  %73 = getelementptr inbounds %struct.wpa_auth_config, %struct.wpa_auth_config* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @wpa_printf(i32 %71, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  store i32 -1, i32* %5, align 4
  br label %234

76:                                               ; preds = %43
  %77 = load i32*, i32** %14, align 8
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @WPA_PUT_LE16(i32* %77, i32 %78)
  store i32 0, i32* %11, align 4
  %80 = load i32*, i32** %13, align 8
  store i32* %80, i32** %14, align 8
  %81 = load i32*, i32** %13, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 2
  store i32* %82, i32** %13, align 8
  %83 = load %struct.wpa_auth_config*, %struct.wpa_auth_config** %6, align 8
  %84 = getelementptr inbounds %struct.wpa_auth_config, %struct.wpa_auth_config* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @WPA_KEY_MGMT_IEEE8021X, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %76
  %90 = load i32*, i32** %13, align 8
  %91 = load i64, i64* @RSN_AUTH_KEY_MGMT_UNSPEC_802_1X, align 8
  %92 = call i32 @RSN_SELECTOR_PUT(i32* %90, i64 %91)
  %93 = load i32, i32* @RSN_SELECTOR_LEN, align 4
  %94 = load i32*, i32** %13, align 8
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  store i32* %96, i32** %13, align 8
  %97 = load i32, i32* %11, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %11, align 4
  br label %99

99:                                               ; preds = %89, %76
  %100 = load %struct.wpa_auth_config*, %struct.wpa_auth_config** %6, align 8
  %101 = getelementptr inbounds %struct.wpa_auth_config, %struct.wpa_auth_config* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @WPA_KEY_MGMT_PSK, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %116

106:                                              ; preds = %99
  %107 = load i32*, i32** %13, align 8
  %108 = load i64, i64* @RSN_AUTH_KEY_MGMT_PSK_OVER_802_1X, align 8
  %109 = call i32 @RSN_SELECTOR_PUT(i32* %107, i64 %108)
  %110 = load i32, i32* @RSN_SELECTOR_LEN, align 4
  %111 = load i32*, i32** %13, align 8
  %112 = sext i32 %110 to i64
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  store i32* %113, i32** %13, align 8
  %114 = load i32, i32* %11, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %11, align 4
  br label %116

116:                                              ; preds = %106, %99
  %117 = load %struct.wpa_auth_config*, %struct.wpa_auth_config** %6, align 8
  %118 = getelementptr inbounds %struct.wpa_auth_config, %struct.wpa_auth_config* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @WPA_KEY_MGMT_IEEE8021X_SUITE_B, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %133

123:                                              ; preds = %116
  %124 = load i32*, i32** %13, align 8
  %125 = load i64, i64* @RSN_AUTH_KEY_MGMT_802_1X_SUITE_B, align 8
  %126 = call i32 @RSN_SELECTOR_PUT(i32* %124, i64 %125)
  %127 = load i32, i32* @RSN_SELECTOR_LEN, align 4
  %128 = load i32*, i32** %13, align 8
  %129 = sext i32 %127 to i64
  %130 = getelementptr inbounds i32, i32* %128, i64 %129
  store i32* %130, i32** %13, align 8
  %131 = load i32, i32* %11, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %11, align 4
  br label %133

133:                                              ; preds = %123, %116
  %134 = load %struct.wpa_auth_config*, %struct.wpa_auth_config** %6, align 8
  %135 = getelementptr inbounds %struct.wpa_auth_config, %struct.wpa_auth_config* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @WPA_KEY_MGMT_IEEE8021X_SUITE_B_192, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %150

140:                                              ; preds = %133
  %141 = load i32*, i32** %13, align 8
  %142 = load i64, i64* @RSN_AUTH_KEY_MGMT_802_1X_SUITE_B_192, align 8
  %143 = call i32 @RSN_SELECTOR_PUT(i32* %141, i64 %142)
  %144 = load i32, i32* @RSN_SELECTOR_LEN, align 4
  %145 = load i32*, i32** %13, align 8
  %146 = sext i32 %144 to i64
  %147 = getelementptr inbounds i32, i32* %145, i64 %146
  store i32* %147, i32** %13, align 8
  %148 = load i32, i32* %11, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %11, align 4
  br label %150

150:                                              ; preds = %140, %133
  %151 = load i32, i32* %11, align 4
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %150
  %154 = load i32, i32* @MSG_DEBUG, align 4
  %155 = load %struct.wpa_auth_config*, %struct.wpa_auth_config** %6, align 8
  %156 = getelementptr inbounds %struct.wpa_auth_config, %struct.wpa_auth_config* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @wpa_printf(i32 %154, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %157)
  store i32 -1, i32* %5, align 4
  br label %234

159:                                              ; preds = %150
  %160 = load i32*, i32** %14, align 8
  %161 = load i32, i32* %11, align 4
  %162 = call i32 @WPA_PUT_LE16(i32* %160, i32 %161)
  store i32 0, i32* %15, align 4
  %163 = load %struct.wpa_auth_config*, %struct.wpa_auth_config** %6, align 8
  %164 = getelementptr inbounds %struct.wpa_auth_config, %struct.wpa_auth_config* %163, i32 0, i32 7
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %159
  %168 = load i32, i32* @WPA_CAPABILITY_PREAUTH, align 4
  %169 = load i32, i32* %15, align 4
  %170 = or i32 %169, %168
  store i32 %170, i32* %15, align 4
  br label %171

171:                                              ; preds = %167, %159
  %172 = load %struct.wpa_auth_config*, %struct.wpa_auth_config** %6, align 8
  %173 = getelementptr inbounds %struct.wpa_auth_config, %struct.wpa_auth_config* %172, i32 0, i32 6
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %181

176:                                              ; preds = %171
  %177 = load i32, i32* @RSN_NUM_REPLAY_COUNTERS_16, align 4
  %178 = shl i32 %177, 2
  %179 = load i32, i32* %15, align 4
  %180 = or i32 %179, %178
  store i32 %180, i32* %15, align 4
  br label %181

181:                                              ; preds = %176, %171
  %182 = load i32*, i32** %13, align 8
  %183 = load i32, i32* %15, align 4
  %184 = call i32 @WPA_PUT_LE16(i32* %182, i32 %183)
  %185 = load i32*, i32** %13, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 2
  store i32* %186, i32** %13, align 8
  %187 = load i32*, i32** %9, align 8
  %188 = icmp ne i32* %187, null
  br i1 %188, label %189, label %216

189:                                              ; preds = %181
  %190 = load i32, i32* @PMKID_LEN, align 4
  %191 = add nsw i32 2, %190
  %192 = sext i32 %191 to i64
  %193 = load i32*, i32** %7, align 8
  %194 = load i64, i64* %8, align 8
  %195 = getelementptr inbounds i32, i32* %193, i64 %194
  %196 = load i32*, i32** %13, align 8
  %197 = ptrtoint i32* %195 to i64
  %198 = ptrtoint i32* %196 to i64
  %199 = sub i64 %197, %198
  %200 = sdiv exact i64 %199, 4
  %201 = icmp sgt i64 %192, %200
  br i1 %201, label %202, label %203

202:                                              ; preds = %189
  store i32 -1, i32* %5, align 4
  br label %234

203:                                              ; preds = %189
  %204 = load i32*, i32** %13, align 8
  %205 = call i32 @WPA_PUT_LE16(i32* %204, i32 1)
  %206 = load i32*, i32** %13, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 2
  store i32* %207, i32** %13, align 8
  %208 = load i32*, i32** %13, align 8
  %209 = load i32*, i32** %9, align 8
  %210 = load i32, i32* @PMKID_LEN, align 4
  %211 = call i32 @os_memcpy(i32* %208, i32* %209, i32 %210)
  %212 = load i32, i32* @PMKID_LEN, align 4
  %213 = load i32*, i32** %13, align 8
  %214 = sext i32 %212 to i64
  %215 = getelementptr inbounds i32, i32* %213, i64 %214
  store i32* %215, i32** %13, align 8
  br label %216

216:                                              ; preds = %203, %181
  %217 = load i32*, i32** %13, align 8
  %218 = load i32*, i32** %7, align 8
  %219 = ptrtoint i32* %217 to i64
  %220 = ptrtoint i32* %218 to i64
  %221 = sub i64 %219, %220
  %222 = sdiv exact i64 %221, 4
  %223 = sub nsw i64 %222, 2
  %224 = trunc i64 %223 to i32
  %225 = load %struct.rsn_ie_hdr*, %struct.rsn_ie_hdr** %10, align 8
  %226 = getelementptr inbounds %struct.rsn_ie_hdr, %struct.rsn_ie_hdr* %225, i32 0, i32 0
  store i32 %224, i32* %226, align 8
  %227 = load i32*, i32** %13, align 8
  %228 = load i32*, i32** %7, align 8
  %229 = ptrtoint i32* %227 to i64
  %230 = ptrtoint i32* %228 to i64
  %231 = sub i64 %229, %230
  %232 = sdiv exact i64 %231, 4
  %233 = trunc i64 %232 to i32
  store i32 %233, i32* %5, align 4
  br label %234

234:                                              ; preds = %216, %202, %153, %70, %37
  %235 = load i32, i32* %5, align 4
  ret i32 %235
}

declare dso_local i32 @WPA_PUT_LE16(i32*, i32) #1

declare dso_local i64 @wpa_cipher_to_suite(i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i32 @RSN_SELECTOR_PUT(i32*, i64) #1

declare dso_local i32 @rsn_cipher_put_suites(i32*, i32) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
