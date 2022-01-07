; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_wpa_ie.c_wpa_supplicant_parse_ies.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_wpa_ie.c_wpa_supplicant_parse_ies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_eapol_ie_parse = type { i32*, i32, i32*, i32, i32*, i32, i32*, i32*, i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32*, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"WPA: EAPOL-Key Key Data underflow (ie=%d len=%d pos=%d)\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"WPA: Key Data\00", align 1
@WLAN_EID_RSN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"WPA: RSN IE in EAPOL-Key\00", align 1
@WLAN_EID_MOBILITY_DOMAIN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"WPA: MDIE in EAPOL-Key\00", align 1
@WLAN_EID_FAST_BSS_TRANSITION = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"WPA: FTIE in EAPOL-Key\00", align 1
@WLAN_EID_TIMEOUT_INTERVAL = common dso_local global i32 0, align 4
@WLAN_TIMEOUT_REASSOC_DEADLINE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"WPA: Reassoc Deadline in EAPOL-Key\00", align 1
@WLAN_TIMEOUT_KEY_LIFETIME = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"WPA: KeyLifetime in EAPOL-Key\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"WPA: Unrecognized EAPOL-Key Key Data IE\00", align 1
@WLAN_EID_LINK_ID = common dso_local global i32 0, align 4
@WLAN_EID_EXT_CAPAB = common dso_local global i32 0, align 4
@WLAN_EID_SUPP_RATES = common dso_local global i32 0, align 4
@WLAN_EID_EXT_SUPP_RATES = common dso_local global i32 0, align 4
@WLAN_EID_HT_CAP = common dso_local global i32 0, align 4
@WLAN_EID_VHT_AID = common dso_local global i32 0, align 4
@WLAN_EID_VHT_CAP = common dso_local global i32 0, align 4
@WLAN_EID_QOS = common dso_local global i32 0, align 4
@WLAN_EID_SUPPORTED_CHANNELS = common dso_local global i32 0, align 4
@WLAN_EID_SUPPORTED_OPERATING_CLASSES = common dso_local global i32 0, align 4
@WLAN_EID_VENDOR_SPECIFIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpa_supplicant_parse_ies(i32* %0, i64 %1, %struct.wpa_eapol_ie_parse* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.wpa_eapol_ie_parse*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.wpa_eapol_ie_parse* %2, %struct.wpa_eapol_ie_parse** %6, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %6, align 8
  %11 = call i32 @os_memset(%struct.wpa_eapol_ie_parse* %10, i32 0, i32 192)
  %12 = load i32*, i32** %4, align 8
  store i32* %12, i32** %7, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = load i64, i64* %5, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  store i32* %15, i32** %8, align 8
  br label %16

16:                                               ; preds = %440, %3
  %17 = load i32*, i32** %8, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = ptrtoint i32* %17 to i64
  %20 = ptrtoint i32* %18 to i64
  %21 = sub i64 %19, %20
  %22 = sdiv exact i64 %21, 4
  %23 = icmp sgt i64 %22, 1
  br i1 %23, label %24, label %448

24:                                               ; preds = %16
  %25 = load i32*, i32** %7, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 221
  br i1 %28, label %29, label %42

29:                                               ; preds = %24
  %30 = load i32*, i32** %7, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = load i64, i64* %5, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = getelementptr inbounds i32, i32* %33, i64 -1
  %35 = icmp eq i32* %30, %34
  br i1 %35, label %41, label %36

36:                                               ; preds = %29
  %37 = load i32*, i32** %7, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36, %29
  br label %448

42:                                               ; preds = %36, %24
  %43 = load i32*, i32** %7, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 2, %45
  %47 = sext i32 %46 to i64
  %48 = load i32*, i32** %8, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = ptrtoint i32* %48 to i64
  %51 = ptrtoint i32* %49 to i64
  %52 = sub i64 %50, %51
  %53 = sdiv exact i64 %52, 4
  %54 = icmp sgt i64 %47, %53
  br i1 %54, label %55, label %75

55:                                               ; preds = %42
  %56 = load i32, i32* @MSG_DEBUG, align 4
  %57 = load i32*, i32** %7, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %7, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %7, align 8
  %64 = load i32*, i32** %4, align 8
  %65 = ptrtoint i32* %63 to i64
  %66 = ptrtoint i32* %64 to i64
  %67 = sub i64 %65, %66
  %68 = sdiv exact i64 %67, 4
  %69 = trunc i64 %68 to i32
  %70 = call i32 @wpa_printf(i32 %56, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %62, i32 %69)
  %71 = load i32, i32* @MSG_DEBUG, align 4
  %72 = load i32*, i32** %4, align 8
  %73 = load i64, i64* %5, align 8
  %74 = call i32 @wpa_hexdump_key(i32 %71, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32* %72, i64 %73)
  store i32 -1, i32* %9, align 4
  br label %448

75:                                               ; preds = %42
  %76 = load i32*, i32** %7, align 8
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @WLAN_EID_RSN, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %98

80:                                               ; preds = %75
  %81 = load i32*, i32** %7, align 8
  %82 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %6, align 8
  %83 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %82, i32 0, i32 0
  store i32* %81, i32** %83, align 8
  %84 = load i32*, i32** %7, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 1
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, 2
  %88 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %6, align 8
  %89 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 8
  %90 = load i32, i32* @MSG_DEBUG, align 4
  %91 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %6, align 8
  %92 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %6, align 8
  %95 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @wpa_hexdump(i32 %90, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32* %93, i32 %96)
  br label %439

98:                                               ; preds = %75
  %99 = load i32*, i32** %7, align 8
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @WLAN_EID_MOBILITY_DOMAIN, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %127

103:                                              ; preds = %98
  %104 = load i32*, i32** %7, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 1
  %106 = load i32, i32* %105, align 4
  %107 = sext i32 %106 to i64
  %108 = icmp uge i64 %107, 4
  br i1 %108, label %109, label %127

109:                                              ; preds = %103
  %110 = load i32*, i32** %7, align 8
  %111 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %6, align 8
  %112 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %111, i32 0, i32 2
  store i32* %110, i32** %112, align 8
  %113 = load i32*, i32** %7, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 1
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %115, 2
  %117 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %6, align 8
  %118 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %117, i32 0, i32 3
  store i32 %116, i32* %118, align 8
  %119 = load i32, i32* @MSG_DEBUG, align 4
  %120 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %6, align 8
  %121 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %120, i32 0, i32 2
  %122 = load i32*, i32** %121, align 8
  %123 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %6, align 8
  %124 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @wpa_hexdump(i32 %119, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32* %122, i32 %125)
  br label %438

127:                                              ; preds = %103, %98
  %128 = load i32*, i32** %7, align 8
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @WLAN_EID_FAST_BSS_TRANSITION, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %156

132:                                              ; preds = %127
  %133 = load i32*, i32** %7, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 1
  %135 = load i32, i32* %134, align 4
  %136 = sext i32 %135 to i64
  %137 = icmp uge i64 %136, 4
  br i1 %137, label %138, label %156

138:                                              ; preds = %132
  %139 = load i32*, i32** %7, align 8
  %140 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %6, align 8
  %141 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %140, i32 0, i32 4
  store i32* %139, i32** %141, align 8
  %142 = load i32*, i32** %7, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 1
  %144 = load i32, i32* %143, align 4
  %145 = add nsw i32 %144, 2
  %146 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %6, align 8
  %147 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %146, i32 0, i32 5
  store i32 %145, i32* %147, align 8
  %148 = load i32, i32* @MSG_DEBUG, align 4
  %149 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %6, align 8
  %150 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %149, i32 0, i32 4
  %151 = load i32*, i32** %150, align 8
  %152 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %6, align 8
  %153 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %152, i32 0, i32 5
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @wpa_hexdump(i32 %148, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32* %151, i32 %154)
  br label %437

156:                                              ; preds = %132, %127
  %157 = load i32*, i32** %7, align 8
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @WLAN_EID_TIMEOUT_INTERVAL, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %214

161:                                              ; preds = %156
  %162 = load i32*, i32** %7, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 1
  %164 = load i32, i32* %163, align 4
  %165 = icmp sge i32 %164, 5
  br i1 %165, label %166, label %214

166:                                              ; preds = %161
  %167 = load i32*, i32** %7, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 2
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @WLAN_TIMEOUT_REASSOC_DEADLINE, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %185

172:                                              ; preds = %166
  %173 = load i32*, i32** %7, align 8
  %174 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %6, align 8
  %175 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %174, i32 0, i32 6
  store i32* %173, i32** %175, align 8
  %176 = load i32, i32* @MSG_DEBUG, align 4
  %177 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %6, align 8
  %178 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %177, i32 0, i32 6
  %179 = load i32*, i32** %178, align 8
  %180 = load i32*, i32** %7, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 1
  %182 = load i32, i32* %181, align 4
  %183 = add nsw i32 %182, 2
  %184 = call i32 @wpa_hexdump(i32 %176, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32* %179, i32 %183)
  br label %213

185:                                              ; preds = %166
  %186 = load i32*, i32** %7, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 2
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @WLAN_TIMEOUT_KEY_LIFETIME, align 4
  %190 = icmp eq i32 %188, %189
  br i1 %190, label %191, label %204

191:                                              ; preds = %185
  %192 = load i32*, i32** %7, align 8
  %193 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %6, align 8
  %194 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %193, i32 0, i32 7
  store i32* %192, i32** %194, align 8
  %195 = load i32, i32* @MSG_DEBUG, align 4
  %196 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %6, align 8
  %197 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %196, i32 0, i32 7
  %198 = load i32*, i32** %197, align 8
  %199 = load i32*, i32** %7, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 1
  %201 = load i32, i32* %200, align 4
  %202 = add nsw i32 %201, 2
  %203 = call i32 @wpa_hexdump(i32 %195, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32* %198, i32 %202)
  br label %212

204:                                              ; preds = %185
  %205 = load i32, i32* @MSG_DEBUG, align 4
  %206 = load i32*, i32** %7, align 8
  %207 = load i32*, i32** %7, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 1
  %209 = load i32, i32* %208, align 4
  %210 = add nsw i32 2, %209
  %211 = call i32 @wpa_hexdump(i32 %205, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i32* %206, i32 %210)
  br label %212

212:                                              ; preds = %204, %191
  br label %213

213:                                              ; preds = %212, %172
  br label %436

214:                                              ; preds = %161, %156
  %215 = load i32*, i32** %7, align 8
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* @WLAN_EID_LINK_ID, align 4
  %218 = icmp eq i32 %216, %217
  br i1 %218, label %219, label %235

219:                                              ; preds = %214
  %220 = load i32*, i32** %7, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 1
  %222 = load i32, i32* %221, align 4
  %223 = icmp sge i32 %222, 18
  br i1 %223, label %224, label %234

224:                                              ; preds = %219
  %225 = load i32*, i32** %7, align 8
  %226 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %6, align 8
  %227 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %226, i32 0, i32 8
  store i32* %225, i32** %227, align 8
  %228 = load i32*, i32** %7, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 1
  %230 = load i32, i32* %229, align 4
  %231 = add nsw i32 %230, 2
  %232 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %6, align 8
  %233 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %232, i32 0, i32 9
  store i32 %231, i32* %233, align 8
  br label %234

234:                                              ; preds = %224, %219
  br label %435

235:                                              ; preds = %214
  %236 = load i32*, i32** %7, align 8
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* @WLAN_EID_EXT_CAPAB, align 4
  %239 = icmp eq i32 %237, %238
  br i1 %239, label %240, label %250

240:                                              ; preds = %235
  %241 = load i32*, i32** %7, align 8
  %242 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %6, align 8
  %243 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %242, i32 0, i32 10
  store i32* %241, i32** %243, align 8
  %244 = load i32*, i32** %7, align 8
  %245 = getelementptr inbounds i32, i32* %244, i64 1
  %246 = load i32, i32* %245, align 4
  %247 = add nsw i32 %246, 2
  %248 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %6, align 8
  %249 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %248, i32 0, i32 11
  store i32 %247, i32* %249, align 8
  br label %434

250:                                              ; preds = %235
  %251 = load i32*, i32** %7, align 8
  %252 = load i32, i32* %251, align 4
  %253 = load i32, i32* @WLAN_EID_SUPP_RATES, align 4
  %254 = icmp eq i32 %252, %253
  br i1 %254, label %255, label %265

255:                                              ; preds = %250
  %256 = load i32*, i32** %7, align 8
  %257 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %6, align 8
  %258 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %257, i32 0, i32 12
  store i32* %256, i32** %258, align 8
  %259 = load i32*, i32** %7, align 8
  %260 = getelementptr inbounds i32, i32* %259, i64 1
  %261 = load i32, i32* %260, align 4
  %262 = add nsw i32 %261, 2
  %263 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %6, align 8
  %264 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %263, i32 0, i32 13
  store i32 %262, i32* %264, align 8
  br label %433

265:                                              ; preds = %250
  %266 = load i32*, i32** %7, align 8
  %267 = load i32, i32* %266, align 4
  %268 = load i32, i32* @WLAN_EID_EXT_SUPP_RATES, align 4
  %269 = icmp eq i32 %267, %268
  br i1 %269, label %270, label %280

270:                                              ; preds = %265
  %271 = load i32*, i32** %7, align 8
  %272 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %6, align 8
  %273 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %272, i32 0, i32 14
  store i32* %271, i32** %273, align 8
  %274 = load i32*, i32** %7, align 8
  %275 = getelementptr inbounds i32, i32* %274, i64 1
  %276 = load i32, i32* %275, align 4
  %277 = add nsw i32 %276, 2
  %278 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %6, align 8
  %279 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %278, i32 0, i32 15
  store i32 %277, i32* %279, align 8
  br label %432

280:                                              ; preds = %265
  %281 = load i32*, i32** %7, align 8
  %282 = load i32, i32* %281, align 4
  %283 = load i32, i32* @WLAN_EID_HT_CAP, align 4
  %284 = icmp eq i32 %282, %283
  br i1 %284, label %285, label %296

285:                                              ; preds = %280
  %286 = load i32*, i32** %7, align 8
  %287 = getelementptr inbounds i32, i32* %286, i64 1
  %288 = load i32, i32* %287, align 4
  %289 = sext i32 %288 to i64
  %290 = icmp uge i64 %289, 4
  br i1 %290, label %291, label %296

291:                                              ; preds = %285
  %292 = load i32*, i32** %7, align 8
  %293 = getelementptr inbounds i32, i32* %292, i64 2
  %294 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %6, align 8
  %295 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %294, i32 0, i32 16
  store i32* %293, i32** %295, align 8
  br label %431

296:                                              ; preds = %285, %280
  %297 = load i32*, i32** %7, align 8
  %298 = load i32, i32* %297, align 4
  %299 = load i32, i32* @WLAN_EID_VHT_AID, align 4
  %300 = icmp eq i32 %298, %299
  br i1 %300, label %301, label %314

301:                                              ; preds = %296
  %302 = load i32*, i32** %7, align 8
  %303 = getelementptr inbounds i32, i32* %302, i64 1
  %304 = load i32, i32* %303, align 4
  %305 = icmp sge i32 %304, 2
  br i1 %305, label %306, label %313

306:                                              ; preds = %301
  %307 = load i32*, i32** %7, align 8
  %308 = getelementptr inbounds i32, i32* %307, i64 2
  %309 = call i32 @WPA_GET_LE16(i32* %308)
  %310 = and i32 %309, 16383
  %311 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %6, align 8
  %312 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %311, i32 0, i32 17
  store i32 %310, i32* %312, align 8
  br label %313

313:                                              ; preds = %306, %301
  br label %430

314:                                              ; preds = %296
  %315 = load i32*, i32** %7, align 8
  %316 = load i32, i32* %315, align 4
  %317 = load i32, i32* @WLAN_EID_VHT_CAP, align 4
  %318 = icmp eq i32 %316, %317
  br i1 %318, label %319, label %330

319:                                              ; preds = %314
  %320 = load i32*, i32** %7, align 8
  %321 = getelementptr inbounds i32, i32* %320, i64 1
  %322 = load i32, i32* %321, align 4
  %323 = sext i32 %322 to i64
  %324 = icmp uge i64 %323, 4
  br i1 %324, label %325, label %330

325:                                              ; preds = %319
  %326 = load i32*, i32** %7, align 8
  %327 = getelementptr inbounds i32, i32* %326, i64 2
  %328 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %6, align 8
  %329 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %328, i32 0, i32 18
  store i32* %327, i32** %329, align 8
  br label %429

330:                                              ; preds = %319, %314
  %331 = load i32*, i32** %7, align 8
  %332 = load i32, i32* %331, align 4
  %333 = load i32, i32* @WLAN_EID_QOS, align 4
  %334 = icmp eq i32 %332, %333
  br i1 %334, label %335, label %346

335:                                              ; preds = %330
  %336 = load i32*, i32** %7, align 8
  %337 = getelementptr inbounds i32, i32* %336, i64 1
  %338 = load i32, i32* %337, align 4
  %339 = icmp sge i32 %338, 1
  br i1 %339, label %340, label %346

340:                                              ; preds = %335
  %341 = load i32*, i32** %7, align 8
  %342 = getelementptr inbounds i32, i32* %341, i64 2
  %343 = load i32, i32* %342, align 4
  %344 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %6, align 8
  %345 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %344, i32 0, i32 19
  store i32 %343, i32* %345, align 8
  br label %428

346:                                              ; preds = %335, %330
  %347 = load i32*, i32** %7, align 8
  %348 = load i32, i32* %347, align 4
  %349 = load i32, i32* @WLAN_EID_SUPPORTED_CHANNELS, align 4
  %350 = icmp eq i32 %348, %349
  br i1 %350, label %351, label %361

351:                                              ; preds = %346
  %352 = load i32*, i32** %7, align 8
  %353 = getelementptr inbounds i32, i32* %352, i64 2
  %354 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %6, align 8
  %355 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %354, i32 0, i32 20
  store i32* %353, i32** %355, align 8
  %356 = load i32*, i32** %7, align 8
  %357 = getelementptr inbounds i32, i32* %356, i64 1
  %358 = load i32, i32* %357, align 4
  %359 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %6, align 8
  %360 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %359, i32 0, i32 21
  store i32 %358, i32* %360, align 8
  br label %427

361:                                              ; preds = %346
  %362 = load i32*, i32** %7, align 8
  %363 = load i32, i32* %362, align 4
  %364 = load i32, i32* @WLAN_EID_SUPPORTED_OPERATING_CLASSES, align 4
  %365 = icmp eq i32 %363, %364
  br i1 %365, label %366, label %387

366:                                              ; preds = %361
  %367 = load i32*, i32** %7, align 8
  %368 = getelementptr inbounds i32, i32* %367, i64 1
  %369 = load i32, i32* %368, align 4
  %370 = icmp sge i32 %369, 2
  br i1 %370, label %371, label %386

371:                                              ; preds = %366
  %372 = load i32*, i32** %7, align 8
  %373 = getelementptr inbounds i32, i32* %372, i64 1
  %374 = load i32, i32* %373, align 4
  %375 = icmp sle i32 %374, 253
  br i1 %375, label %376, label %386

376:                                              ; preds = %371
  %377 = load i32*, i32** %7, align 8
  %378 = getelementptr inbounds i32, i32* %377, i64 2
  %379 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %6, align 8
  %380 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %379, i32 0, i32 22
  store i32* %378, i32** %380, align 8
  %381 = load i32*, i32** %7, align 8
  %382 = getelementptr inbounds i32, i32* %381, i64 1
  %383 = load i32, i32* %382, align 4
  %384 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %6, align 8
  %385 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %384, i32 0, i32 23
  store i32 %383, i32* %385, align 8
  br label %386

386:                                              ; preds = %376, %371, %366
  br label %426

387:                                              ; preds = %361
  %388 = load i32*, i32** %7, align 8
  %389 = load i32, i32* %388, align 4
  %390 = load i32, i32* @WLAN_EID_VENDOR_SPECIFIC, align 4
  %391 = icmp eq i32 %389, %390
  br i1 %391, label %392, label %417

392:                                              ; preds = %387
  %393 = load i32*, i32** %7, align 8
  %394 = load i32*, i32** %8, align 8
  %395 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %6, align 8
  %396 = call i32 @wpa_parse_generic(i32* %393, i32* %394, %struct.wpa_eapol_ie_parse* %395)
  store i32 %396, i32* %9, align 4
  %397 = load i32, i32* %9, align 4
  %398 = icmp slt i32 %397, 0
  br i1 %398, label %399, label %400

399:                                              ; preds = %392
  br label %448

400:                                              ; preds = %392
  %401 = load i32, i32* %9, align 4
  %402 = icmp sgt i32 %401, 0
  br i1 %402, label %403, label %404

403:                                              ; preds = %400
  store i32 0, i32* %9, align 4
  br label %448

404:                                              ; preds = %400
  %405 = load i32*, i32** %7, align 8
  %406 = load i32*, i32** %8, align 8
  %407 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %6, align 8
  %408 = call i32 @wpa_parse_vendor_specific(i32* %405, i32* %406, %struct.wpa_eapol_ie_parse* %407)
  store i32 %408, i32* %9, align 4
  %409 = load i32, i32* %9, align 4
  %410 = icmp slt i32 %409, 0
  br i1 %410, label %411, label %412

411:                                              ; preds = %404
  br label %448

412:                                              ; preds = %404
  %413 = load i32, i32* %9, align 4
  %414 = icmp sgt i32 %413, 0
  br i1 %414, label %415, label %416

415:                                              ; preds = %412
  store i32 0, i32* %9, align 4
  br label %448

416:                                              ; preds = %412
  br label %425

417:                                              ; preds = %387
  %418 = load i32, i32* @MSG_DEBUG, align 4
  %419 = load i32*, i32** %7, align 8
  %420 = load i32*, i32** %7, align 8
  %421 = getelementptr inbounds i32, i32* %420, i64 1
  %422 = load i32, i32* %421, align 4
  %423 = add nsw i32 2, %422
  %424 = call i32 @wpa_hexdump(i32 %418, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i32* %419, i32 %423)
  br label %425

425:                                              ; preds = %417, %416
  br label %426

426:                                              ; preds = %425, %386
  br label %427

427:                                              ; preds = %426, %351
  br label %428

428:                                              ; preds = %427, %340
  br label %429

429:                                              ; preds = %428, %325
  br label %430

430:                                              ; preds = %429, %313
  br label %431

431:                                              ; preds = %430, %291
  br label %432

432:                                              ; preds = %431, %270
  br label %433

433:                                              ; preds = %432, %255
  br label %434

434:                                              ; preds = %433, %240
  br label %435

435:                                              ; preds = %434, %234
  br label %436

436:                                              ; preds = %435, %213
  br label %437

437:                                              ; preds = %436, %138
  br label %438

438:                                              ; preds = %437, %109
  br label %439

439:                                              ; preds = %438, %80
  br label %440

440:                                              ; preds = %439
  %441 = load i32*, i32** %7, align 8
  %442 = getelementptr inbounds i32, i32* %441, i64 1
  %443 = load i32, i32* %442, align 4
  %444 = add nsw i32 2, %443
  %445 = load i32*, i32** %7, align 8
  %446 = sext i32 %444 to i64
  %447 = getelementptr inbounds i32, i32* %445, i64 %446
  store i32* %447, i32** %7, align 8
  br label %16

448:                                              ; preds = %415, %411, %403, %399, %55, %41, %16
  %449 = load i32, i32* %9, align 4
  ret i32 %449
}

declare dso_local i32 @os_memset(%struct.wpa_eapol_ie_parse*, i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32*, i64) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #1

declare dso_local i32 @WPA_GET_LE16(i32*) #1

declare dso_local i32 @wpa_parse_generic(i32*, i32*, %struct.wpa_eapol_ie_parse*) #1

declare dso_local i32 @wpa_parse_vendor_specific(i32*, i32*, %struct.wpa_eapol_ie_parse*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
