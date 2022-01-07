; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_events.c_wpa_supplicant_event_associnfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_events.c_wpa_supplicant_event_associnfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i64, i32, i32, i32, i32, i32, i64, i32, i64, i32, i64, i32, %struct.TYPE_6__, %struct.TYPE_5__*, %struct.TYPE_8__* }
%struct.TYPE_6__ = type { i64, i32, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_8__ = type { i32* }
%union.wpa_event_data = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32*, i32, i32*, i32, i32*, i32, i64, i32, i32 }
%struct.ieee802_11_elems = type { i32, i32, i64, i64, i64 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Association info event\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"req_ies\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"resp_ies\00", align 1
@CAPAB_VHT = common dso_local global i64 0, align 8
@WLAN_EID_VHT_CAP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"beacon_ies\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"freq=%u MHz\00", align 1
@ParseFailed = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [27 x i8] c"Truncated IE in assoc_info\00", align 1
@WLAN_EID_VENDOR_SPECIFIC = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"\00P\F2\01\01\00\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"Po\9A\12\00", align 1
@WLAN_EID_RSN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [27 x i8] c"Truncated IE in beacon_ies\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"Operating frequency changed from %u to %u MHz\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@MOBILITY_DOMAIN_ID_LEN = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@WLAN_EID_MOBILITY_DOMAIN = common dso_local global i32 0, align 4
@WLAN_REASON_INVALID_IE = common dso_local global i32 0, align 4
@WLAN_REASON_UNSPECIFIED = common dso_local global i32 0, align 4
@WPA_AUTH_ALG_FILS = common dso_local global i64 0, align 8
@WPA_AUTH_ALG_FILS_SK_PFS = common dso_local global i64 0, align 8
@WPA_AUTH_ALG_FT = common dso_local global i64 0, align 8
@WPA_DRIVER_FLAGS_SME = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_DPP = common dso_local global i64 0, align 8
@WPA_KEY_MGMT_OWE = common dso_local global i64 0, align 8
@WPA_KEY_MGMT_WPS = common dso_local global i64 0, align 8
@WPS_IE_VENDOR_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, %union.wpa_event_data*)* @wpa_supplicant_event_associnfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_supplicant_event_associnfo(%struct.wpa_supplicant* %0, %union.wpa_event_data* %1) #0 {
  %3 = alloca %struct.wpa_supplicant*, align 8
  %4 = alloca %union.wpa_event_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.ieee802_11_elems, align 8
  %12 = alloca %struct.ieee802_11_elems, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %3, align 8
  store %union.wpa_event_data* %1, %union.wpa_event_data** %4, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %14 = load i32, i32* @MSG_DEBUG, align 4
  %15 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_dbg(%struct.wpa_supplicant* %13, i32 %14, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %16 = load %union.wpa_event_data*, %union.wpa_event_data** %4, align 8
  %17 = bitcast %union.wpa_event_data* %16 to %struct.TYPE_7__*
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %32

21:                                               ; preds = %2
  %22 = load i32, i32* @MSG_DEBUG, align 4
  %23 = load %union.wpa_event_data*, %union.wpa_event_data** %4, align 8
  %24 = bitcast %union.wpa_event_data* %23 to %struct.TYPE_7__*
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load %union.wpa_event_data*, %union.wpa_event_data** %4, align 8
  %28 = bitcast %union.wpa_event_data* %27 to %struct.TYPE_7__*
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @wpa_hexdump(i32 %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %26, i32 %30)
  br label %32

32:                                               ; preds = %21, %2
  %33 = load %union.wpa_event_data*, %union.wpa_event_data** %4, align 8
  %34 = bitcast %union.wpa_event_data* %33 to %struct.TYPE_7__*
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %80

38:                                               ; preds = %32
  %39 = load i32, i32* @MSG_DEBUG, align 4
  %40 = load %union.wpa_event_data*, %union.wpa_event_data** %4, align 8
  %41 = bitcast %union.wpa_event_data* %40 to %struct.TYPE_7__*
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = load %union.wpa_event_data*, %union.wpa_event_data** %4, align 8
  %45 = bitcast %union.wpa_event_data* %44 to %struct.TYPE_7__*
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @wpa_hexdump(i32 %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32* %43, i32 %47)
  %49 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %50 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @CAPAB_VHT, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %69

54:                                               ; preds = %38
  %55 = load %union.wpa_event_data*, %union.wpa_event_data** %4, align 8
  %56 = bitcast %union.wpa_event_data* %55 to %struct.TYPE_7__*
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = load %union.wpa_event_data*, %union.wpa_event_data** %4, align 8
  %60 = bitcast %union.wpa_event_data* %59 to %struct.TYPE_7__*
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @WLAN_EID_VHT_CAP, align 4
  %64 = call i64 @get_ie(i32* %58, i32 %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %54
  %67 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %68 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %67, i32 0, i32 1
  store i32 1, i32* %68, align 8
  br label %69

69:                                               ; preds = %66, %54, %38
  %70 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %71 = load %union.wpa_event_data*, %union.wpa_event_data** %4, align 8
  %72 = bitcast %union.wpa_event_data* %71 to %struct.TYPE_7__*
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = load %union.wpa_event_data*, %union.wpa_event_data** %4, align 8
  %76 = bitcast %union.wpa_event_data* %75 to %struct.TYPE_7__*
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @multi_ap_process_assoc_resp(%struct.wpa_supplicant* %70, i32* %74, i32 %78)
  br label %80

80:                                               ; preds = %69, %32
  %81 = load %union.wpa_event_data*, %union.wpa_event_data** %4, align 8
  %82 = bitcast %union.wpa_event_data* %81 to %struct.TYPE_7__*
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 4
  %84 = load i32*, i32** %83, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %97

86:                                               ; preds = %80
  %87 = load i32, i32* @MSG_DEBUG, align 4
  %88 = load %union.wpa_event_data*, %union.wpa_event_data** %4, align 8
  %89 = bitcast %union.wpa_event_data* %88 to %struct.TYPE_7__*
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 4
  %91 = load i32*, i32** %90, align 8
  %92 = load %union.wpa_event_data*, %union.wpa_event_data** %4, align 8
  %93 = bitcast %union.wpa_event_data* %92 to %struct.TYPE_7__*
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @wpa_hexdump(i32 %87, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32* %91, i32 %95)
  br label %97

97:                                               ; preds = %86, %80
  %98 = load %union.wpa_event_data*, %union.wpa_event_data** %4, align 8
  %99 = bitcast %union.wpa_event_data* %98 to %struct.TYPE_7__*
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 6
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %97
  %104 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %105 = load i32, i32* @MSG_DEBUG, align 4
  %106 = load %union.wpa_event_data*, %union.wpa_event_data** %4, align 8
  %107 = bitcast %union.wpa_event_data* %106 to %struct.TYPE_7__*
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 6
  %109 = load i64, i64* %108, align 8
  %110 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_dbg(%struct.wpa_supplicant* %104, i32 %105, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i64 %109)
  br label %111

111:                                              ; preds = %103, %97
  %112 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %113 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %112, i32 0, i32 2
  store i32 0, i32* %113, align 4
  %114 = load %union.wpa_event_data*, %union.wpa_event_data** %4, align 8
  %115 = bitcast %union.wpa_event_data* %114 to %struct.TYPE_7__*
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = icmp ne i32* %117, null
  br i1 %118, label %119, label %189

119:                                              ; preds = %111
  %120 = load %union.wpa_event_data*, %union.wpa_event_data** %4, align 8
  %121 = bitcast %union.wpa_event_data* %120 to %struct.TYPE_7__*
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 2
  %123 = load i32*, i32** %122, align 8
  %124 = icmp ne i32* %123, null
  br i1 %124, label %125, label %189

125:                                              ; preds = %119
  %126 = load %union.wpa_event_data*, %union.wpa_event_data** %4, align 8
  %127 = bitcast %union.wpa_event_data* %126 to %struct.TYPE_7__*
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = load %union.wpa_event_data*, %union.wpa_event_data** %4, align 8
  %131 = bitcast %union.wpa_event_data* %130 to %struct.TYPE_7__*
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = call i64 @ieee802_11_parse_elems(i32* %129, i32 %133, %struct.ieee802_11_elems* %11, i32 0)
  %135 = load i64, i64* @ParseFailed, align 8
  %136 = icmp ne i64 %134, %135
  br i1 %136, label %137, label %188

137:                                              ; preds = %125
  %138 = load %union.wpa_event_data*, %union.wpa_event_data** %4, align 8
  %139 = bitcast %union.wpa_event_data* %138 to %struct.TYPE_7__*
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 2
  %141 = load i32*, i32** %140, align 8
  %142 = load %union.wpa_event_data*, %union.wpa_event_data** %4, align 8
  %143 = bitcast %union.wpa_event_data* %142 to %struct.TYPE_7__*
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 8
  %146 = call i64 @ieee802_11_parse_elems(i32* %141, i32 %145, %struct.ieee802_11_elems* %12, i32 0)
  %147 = load i64, i64* @ParseFailed, align 8
  %148 = icmp ne i64 %146, %147
  br i1 %148, label %149, label %188

149:                                              ; preds = %137
  %150 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %151 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %150, i32 0, i32 2
  store i32 1, i32* %151, align 4
  %152 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %11, i32 0, i32 4
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %149
  %156 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %12, i32 0, i32 4
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br label %159

159:                                              ; preds = %155, %149
  %160 = phi i1 [ false, %149 ], [ %158, %155 ]
  %161 = zext i1 %160 to i32
  %162 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %163 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %162, i32 0, i32 3
  store i32 %161, i32* %163, align 8
  %164 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %11, i32 0, i32 3
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %159
  %168 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %12, i32 0, i32 3
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br label %171

171:                                              ; preds = %167, %159
  %172 = phi i1 [ false, %159 ], [ %170, %167 ]
  %173 = zext i1 %172 to i32
  %174 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %175 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %174, i32 0, i32 4
  store i32 %173, i32* %175, align 4
  %176 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %11, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %171
  %180 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %12, i32 0, i32 2
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br label %183

183:                                              ; preds = %179, %171
  %184 = phi i1 [ false, %171 ], [ %182, %179 ]
  %185 = zext i1 %184 to i32
  %186 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %187 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %186, i32 0, i32 5
  store i32 %185, i32* %187, align 8
  br label %188

188:                                              ; preds = %183, %137, %125
  br label %189

189:                                              ; preds = %188, %119, %111
  %190 = load %union.wpa_event_data*, %union.wpa_event_data** %4, align 8
  %191 = bitcast %union.wpa_event_data* %190 to %struct.TYPE_7__*
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 0
  %193 = load i32*, i32** %192, align 8
  store i32* %193, i32** %10, align 8
  %194 = load %union.wpa_event_data*, %union.wpa_event_data** %4, align 8
  %195 = bitcast %union.wpa_event_data* %194 to %struct.TYPE_7__*
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  store i32 %197, i32* %5, align 4
  br label %198

198:                                              ; preds = %274, %189
  %199 = load i32*, i32** %10, align 8
  %200 = icmp ne i32* %199, null
  br i1 %200, label %201, label %204

201:                                              ; preds = %198
  %202 = load i32, i32* %5, align 4
  %203 = icmp sge i32 %202, 2
  br label %204

204:                                              ; preds = %201, %198
  %205 = phi i1 [ false, %198 ], [ %203, %201 ]
  br i1 %205, label %206, label %282

206:                                              ; preds = %204
  %207 = load i32*, i32** %10, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 1
  %209 = load i32, i32* %208, align 4
  %210 = add nsw i32 %209, 2
  store i32 %210, i32* %6, align 4
  %211 = load i32, i32* %6, align 4
  %212 = load i32, i32* %5, align 4
  %213 = icmp sgt i32 %211, %212
  br i1 %213, label %214, label %219

214:                                              ; preds = %206
  %215 = load i32, i32* @MSG_DEBUG, align 4
  %216 = load i32*, i32** %10, align 8
  %217 = load i32, i32* %5, align 4
  %218 = call i32 @wpa_hexdump(i32 %215, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32* %216, i32 %217)
  br label %282

219:                                              ; preds = %206
  %220 = load i32*, i32** %10, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 0
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* @WLAN_EID_VENDOR_SPECIFIC, align 4
  %224 = icmp eq i32 %222, %223
  br i1 %224, label %225, label %235

225:                                              ; preds = %219
  %226 = load i32*, i32** %10, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 1
  %228 = load i32, i32* %227, align 4
  %229 = icmp sge i32 %228, 6
  br i1 %229, label %230, label %235

230:                                              ; preds = %225
  %231 = load i32*, i32** %10, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 2
  %233 = call i64 @os_memcmp(i32* %232, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 6)
  %234 = icmp eq i64 %233, 0
  br i1 %234, label %262, label %235

235:                                              ; preds = %230, %225, %219
  %236 = load i32*, i32** %10, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 0
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* @WLAN_EID_VENDOR_SPECIFIC, align 4
  %240 = icmp eq i32 %238, %239
  br i1 %240, label %241, label %251

241:                                              ; preds = %235
  %242 = load i32*, i32** %10, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 1
  %244 = load i32, i32* %243, align 4
  %245 = icmp sge i32 %244, 4
  br i1 %245, label %246, label %251

246:                                              ; preds = %241
  %247 = load i32*, i32** %10, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 2
  %249 = call i64 @os_memcmp(i32* %248, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 4)
  %250 = icmp eq i64 %249, 0
  br i1 %250, label %262, label %251

251:                                              ; preds = %246, %241, %235
  %252 = load i32*, i32** %10, align 8
  %253 = getelementptr inbounds i32, i32* %252, i64 0
  %254 = load i32, i32* %253, align 4
  %255 = load i32, i32* @WLAN_EID_RSN, align 4
  %256 = icmp eq i32 %254, %255
  br i1 %256, label %257, label %274

257:                                              ; preds = %251
  %258 = load i32*, i32** %10, align 8
  %259 = getelementptr inbounds i32, i32* %258, i64 1
  %260 = load i32, i32* %259, align 4
  %261 = icmp sge i32 %260, 2
  br i1 %261, label %262, label %274

262:                                              ; preds = %257, %246, %230
  %263 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %264 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %263, i32 0, i32 11
  %265 = load i32, i32* %264, align 8
  %266 = load i32*, i32** %10, align 8
  %267 = load i32, i32* %6, align 4
  %268 = call i64 @wpa_sm_set_assoc_wpa_ie(i32 %265, i32* %266, i32 %267)
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %271

270:                                              ; preds = %262
  br label %282

271:                                              ; preds = %262
  store i32 1, i32* %7, align 4
  %272 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %273 = call i32 @wpa_find_assoc_pmkid(%struct.wpa_supplicant* %272)
  br label %282

274:                                              ; preds = %257, %251
  %275 = load i32, i32* %6, align 4
  %276 = load i32, i32* %5, align 4
  %277 = sub nsw i32 %276, %275
  store i32 %277, i32* %5, align 4
  %278 = load i32, i32* %6, align 4
  %279 = load i32*, i32** %10, align 8
  %280 = sext i32 %278 to i64
  %281 = getelementptr inbounds i32, i32* %279, i64 %280
  store i32* %281, i32** %10, align 8
  br label %198

282:                                              ; preds = %271, %270, %214, %204
  %283 = load i32, i32* %7, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %296, label %285

285:                                              ; preds = %282
  %286 = load %union.wpa_event_data*, %union.wpa_event_data** %4, align 8
  %287 = bitcast %union.wpa_event_data* %286 to %struct.TYPE_7__*
  %288 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %287, i32 0, i32 0
  %289 = load i32*, i32** %288, align 8
  %290 = icmp ne i32* %289, null
  br i1 %290, label %291, label %296

291:                                              ; preds = %285
  %292 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %293 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %292, i32 0, i32 11
  %294 = load i32, i32* %293, align 8
  %295 = call i64 @wpa_sm_set_assoc_wpa_ie(i32 %294, i32* null, i32 0)
  br label %296

296:                                              ; preds = %291, %285, %282
  %297 = load %union.wpa_event_data*, %union.wpa_event_data** %4, align 8
  %298 = bitcast %union.wpa_event_data* %297 to %struct.TYPE_7__*
  %299 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %298, i32 0, i32 4
  %300 = load i32*, i32** %299, align 8
  store i32* %300, i32** %10, align 8
  %301 = load %union.wpa_event_data*, %union.wpa_event_data** %4, align 8
  %302 = bitcast %union.wpa_event_data* %301 to %struct.TYPE_7__*
  %303 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %302, i32 0, i32 5
  %304 = load i32, i32* %303, align 8
  store i32 %304, i32* %5, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %305

305:                                              ; preds = %373, %296
  %306 = load i32*, i32** %10, align 8
  %307 = icmp ne i32* %306, null
  br i1 %307, label %308, label %311

308:                                              ; preds = %305
  %309 = load i32, i32* %5, align 4
  %310 = icmp sge i32 %309, 2
  br label %311

311:                                              ; preds = %308, %305
  %312 = phi i1 [ false, %305 ], [ %310, %308 ]
  br i1 %312, label %313, label %381

313:                                              ; preds = %311
  %314 = load i32*, i32** %10, align 8
  %315 = getelementptr inbounds i32, i32* %314, i64 1
  %316 = load i32, i32* %315, align 4
  %317 = add nsw i32 %316, 2
  store i32 %317, i32* %6, align 4
  %318 = load i32, i32* %6, align 4
  %319 = load i32, i32* %5, align 4
  %320 = icmp sgt i32 %318, %319
  br i1 %320, label %321, label %326

321:                                              ; preds = %313
  %322 = load i32, i32* @MSG_DEBUG, align 4
  %323 = load i32*, i32** %10, align 8
  %324 = load i32, i32* %5, align 4
  %325 = call i32 @wpa_hexdump(i32 %322, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32* %323, i32 %324)
  br label %381

326:                                              ; preds = %313
  %327 = load i32, i32* %8, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %352, label %329

329:                                              ; preds = %326
  %330 = load i32*, i32** %10, align 8
  %331 = getelementptr inbounds i32, i32* %330, i64 0
  %332 = load i32, i32* %331, align 4
  %333 = load i32, i32* @WLAN_EID_VENDOR_SPECIFIC, align 4
  %334 = icmp eq i32 %332, %333
  br i1 %334, label %335, label %352

335:                                              ; preds = %329
  %336 = load i32*, i32** %10, align 8
  %337 = getelementptr inbounds i32, i32* %336, i64 1
  %338 = load i32, i32* %337, align 4
  %339 = icmp sge i32 %338, 6
  br i1 %339, label %340, label %352

340:                                              ; preds = %335
  %341 = load i32*, i32** %10, align 8
  %342 = getelementptr inbounds i32, i32* %341, i64 2
  %343 = call i64 @os_memcmp(i32* %342, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 6)
  %344 = icmp eq i64 %343, 0
  br i1 %344, label %345, label %352

345:                                              ; preds = %340
  store i32 1, i32* %8, align 4
  %346 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %347 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %346, i32 0, i32 11
  %348 = load i32, i32* %347, align 8
  %349 = load i32*, i32** %10, align 8
  %350 = load i32, i32* %6, align 4
  %351 = call i32 @wpa_sm_set_ap_wpa_ie(i32 %348, i32* %349, i32 %350)
  br label %352

352:                                              ; preds = %345, %340, %335, %329, %326
  %353 = load i32, i32* %9, align 4
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %373, label %355

355:                                              ; preds = %352
  %356 = load i32*, i32** %10, align 8
  %357 = getelementptr inbounds i32, i32* %356, i64 0
  %358 = load i32, i32* %357, align 4
  %359 = load i32, i32* @WLAN_EID_RSN, align 4
  %360 = icmp eq i32 %358, %359
  br i1 %360, label %361, label %373

361:                                              ; preds = %355
  %362 = load i32*, i32** %10, align 8
  %363 = getelementptr inbounds i32, i32* %362, i64 1
  %364 = load i32, i32* %363, align 4
  %365 = icmp sge i32 %364, 2
  br i1 %365, label %366, label %373

366:                                              ; preds = %361
  store i32 1, i32* %9, align 4
  %367 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %368 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %367, i32 0, i32 11
  %369 = load i32, i32* %368, align 8
  %370 = load i32*, i32** %10, align 8
  %371 = load i32, i32* %6, align 4
  %372 = call i32 @wpa_sm_set_ap_rsn_ie(i32 %369, i32* %370, i32 %371)
  br label %373

373:                                              ; preds = %366, %361, %355, %352
  %374 = load i32, i32* %6, align 4
  %375 = load i32, i32* %5, align 4
  %376 = sub nsw i32 %375, %374
  store i32 %376, i32* %5, align 4
  %377 = load i32, i32* %6, align 4
  %378 = load i32*, i32** %10, align 8
  %379 = sext i32 %377 to i64
  %380 = getelementptr inbounds i32, i32* %378, i64 %379
  store i32* %380, i32** %10, align 8
  br label %305

381:                                              ; preds = %321, %311
  %382 = load i32, i32* %8, align 4
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %395, label %384

384:                                              ; preds = %381
  %385 = load %union.wpa_event_data*, %union.wpa_event_data** %4, align 8
  %386 = bitcast %union.wpa_event_data* %385 to %struct.TYPE_7__*
  %387 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %386, i32 0, i32 4
  %388 = load i32*, i32** %387, align 8
  %389 = icmp ne i32* %388, null
  br i1 %389, label %390, label %395

390:                                              ; preds = %384
  %391 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %392 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %391, i32 0, i32 11
  %393 = load i32, i32* %392, align 8
  %394 = call i32 @wpa_sm_set_ap_wpa_ie(i32 %393, i32* null, i32 0)
  br label %395

395:                                              ; preds = %390, %384, %381
  %396 = load i32, i32* %9, align 4
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %409, label %398

398:                                              ; preds = %395
  %399 = load %union.wpa_event_data*, %union.wpa_event_data** %4, align 8
  %400 = bitcast %union.wpa_event_data* %399 to %struct.TYPE_7__*
  %401 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %400, i32 0, i32 4
  %402 = load i32*, i32** %401, align 8
  %403 = icmp ne i32* %402, null
  br i1 %403, label %404, label %409

404:                                              ; preds = %398
  %405 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %406 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %405, i32 0, i32 11
  %407 = load i32, i32* %406, align 8
  %408 = call i32 @wpa_sm_set_ap_rsn_ie(i32 %407, i32* null, i32 0)
  br label %409

409:                                              ; preds = %404, %398, %395
  %410 = load i32, i32* %8, align 4
  %411 = icmp ne i32 %410, 0
  br i1 %411, label %415, label %412

412:                                              ; preds = %409
  %413 = load i32, i32* %9, align 4
  %414 = icmp ne i32 %413, 0
  br i1 %414, label %415, label %418

415:                                              ; preds = %412, %409
  %416 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %417 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %416, i32 0, i32 9
  store i32 1, i32* %417, align 8
  br label %418

418:                                              ; preds = %415, %412
  %419 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %420 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %419, i32 0, i32 10
  %421 = load i64, i64* %420, align 8
  %422 = icmp ne i64 %421, 0
  br i1 %422, label %423, label %450

423:                                              ; preds = %418
  %424 = load %union.wpa_event_data*, %union.wpa_event_data** %4, align 8
  %425 = bitcast %union.wpa_event_data* %424 to %struct.TYPE_7__*
  %426 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %425, i32 0, i32 6
  %427 = load i64, i64* %426, align 8
  %428 = icmp ne i64 %427, 0
  br i1 %428, label %429, label %450

429:                                              ; preds = %423
  %430 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %431 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %430, i32 0, i32 10
  %432 = load i64, i64* %431, align 8
  %433 = load %union.wpa_event_data*, %union.wpa_event_data** %4, align 8
  %434 = bitcast %union.wpa_event_data* %433 to %struct.TYPE_7__*
  %435 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %434, i32 0, i32 6
  %436 = load i64, i64* %435, align 8
  %437 = icmp ne i64 %432, %436
  br i1 %437, label %438, label %450

438:                                              ; preds = %429
  %439 = load i32, i32* @MSG_DEBUG, align 4
  %440 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %441 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %440, i32 0, i32 10
  %442 = load i64, i64* %441, align 8
  %443 = load %union.wpa_event_data*, %union.wpa_event_data** %4, align 8
  %444 = bitcast %union.wpa_event_data* %443 to %struct.TYPE_7__*
  %445 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %444, i32 0, i32 6
  %446 = load i64, i64* %445, align 8
  %447 = call i32 @wpa_printf(i32 %439, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i64 0, i64 0), i64 %442, i64 %446)
  %448 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %449 = call i32 @wpa_supplicant_update_scan_results(%struct.wpa_supplicant* %448)
  br label %450

450:                                              ; preds = %438, %429, %423, %418
  %451 = load %union.wpa_event_data*, %union.wpa_event_data** %4, align 8
  %452 = bitcast %union.wpa_event_data* %451 to %struct.TYPE_7__*
  %453 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %452, i32 0, i32 6
  %454 = load i64, i64* %453, align 8
  %455 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %456 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %455, i32 0, i32 10
  store i64 %454, i64* %456, align 8
  ret i32 0
}

declare dso_local i32 @wpa_dbg(%struct.wpa_supplicant*, i32, i8*, ...) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #1

declare dso_local i64 @get_ie(i32*, i32, i32) #1

declare dso_local i32 @multi_ap_process_assoc_resp(%struct.wpa_supplicant*, i32*, i32) #1

declare dso_local i64 @ieee802_11_parse_elems(i32*, i32, %struct.ieee802_11_elems*, i32) #1

declare dso_local i64 @os_memcmp(i32*, i8*, i32) #1

declare dso_local i64 @wpa_sm_set_assoc_wpa_ie(i32, i32*, i32) #1

declare dso_local i32 @wpa_find_assoc_pmkid(%struct.wpa_supplicant*) #1

declare dso_local i32 @wpa_sm_set_ap_wpa_ie(i32, i32*, i32) #1

declare dso_local i32 @wpa_sm_set_ap_rsn_ie(i32, i32*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i64, i64) #1

declare dso_local i32 @wpa_supplicant_update_scan_results(%struct.wpa_supplicant*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
