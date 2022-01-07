; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_ttls.c_eap_ttls_avp_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_ttls.c_eap_ttls_avp_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_ttls_avp = type { i32*, i64, i32*, i64, i32*, i64, i32*, i64, i32*, i64, i32*, i64, i32*, i64, i32*, i64 }
%struct.ttls_avp = type { i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"EAP-TTLS: AVP: code=%d flags=0x%02x length=%d\00", align 1
@MSG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"EAP-TTLS: AVP overflow (len=%d, left=%d) - dropped\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"EAP-TTLS: Invalid AVP length %d\00", align 1
@AVP_FLAGS_VENDOR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"EAP-TTLS: vendor AVP underflow\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"EAP-TTLS: AVP vendor_id %d\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"EAP-TTLS: AVP data\00", align 1
@RADIUS_ATTR_EAP_MESSAGE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"EAP-TTLS: AVP - EAP Message\00", align 1
@.str.7 = private unnamed_addr constant [57 x i8] c"EAP-TTLS: failed to allocate memory for Phase 2 EAP data\00", align 1
@RADIUS_ATTR_USER_NAME = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [20 x i8] c"EAP-TTLS: User-Name\00", align 1
@RADIUS_ATTR_USER_PASSWORD = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [30 x i8] c"EAP-TTLS: User-Password (PAP)\00", align 1
@RADIUS_ATTR_CHAP_CHALLENGE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [32 x i8] c"EAP-TTLS: CHAP-Challenge (CHAP)\00", align 1
@RADIUS_ATTR_CHAP_PASSWORD = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [31 x i8] c"EAP-TTLS: CHAP-Password (CHAP)\00", align 1
@RADIUS_VENDOR_ID_MICROSOFT = common dso_local global i32 0, align 4
@RADIUS_ATTR_MS_CHAP_CHALLENGE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [28 x i8] c"EAP-TTLS: MS-CHAP-Challenge\00", align 1
@RADIUS_ATTR_MS_CHAP_RESPONSE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [36 x i8] c"EAP-TTLS: MS-CHAP-Response (MSCHAP)\00", align 1
@RADIUS_ATTR_MS_CHAP2_RESPONSE = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [39 x i8] c"EAP-TTLS: MS-CHAP2-Response (MSCHAPV2)\00", align 1
@AVP_FLAGS_MANDATORY = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [67 x i8] c"EAP-TTLS: Unsupported mandatory AVP code %d vendor_id %d - dropped\00", align 1
@.str.16 = private unnamed_addr constant [56 x i8] c"EAP-TTLS: Ignoring unsupported AVP code %d vendor_id %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpabuf*, %struct.eap_ttls_avp*)* @eap_ttls_avp_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_ttls_avp_parse(%struct.wpabuf* %0, %struct.eap_ttls_avp* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.eap_ttls_avp*, align 8
  %6 = alloca %struct.ttls_avp*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  store %struct.wpabuf* %0, %struct.wpabuf** %4, align 8
  store %struct.eap_ttls_avp* %1, %struct.eap_ttls_avp** %5, align 8
  %19 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %20 = call i32* @wpabuf_mhead(%struct.wpabuf* %19)
  store i32* %20, i32** %7, align 8
  %21 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %22 = call i32 @wpabuf_len(%struct.wpabuf* %21)
  store i32 %22, i32* %8, align 4
  %23 = load %struct.eap_ttls_avp*, %struct.eap_ttls_avp** %5, align 8
  %24 = call i32 @os_memset(%struct.eap_ttls_avp* %23, i32 0, i32 128)
  br label %25

25:                                               ; preds = %331, %2
  %26 = load i32, i32* %8, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %351

28:                                               ; preds = %25
  store i32 0, i32* %11, align 4
  %29 = load i32*, i32** %7, align 8
  %30 = bitcast i32* %29 to %struct.ttls_avp*
  store %struct.ttls_avp* %30, %struct.ttls_avp** %6, align 8
  %31 = load %struct.ttls_avp*, %struct.ttls_avp** %6, align 8
  %32 = getelementptr inbounds %struct.ttls_avp, %struct.ttls_avp* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @be_to_host32(i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load %struct.ttls_avp*, %struct.ttls_avp** %6, align 8
  %36 = getelementptr inbounds %struct.ttls_avp, %struct.ttls_avp* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @be_to_host32(i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = ashr i32 %39, 24
  %41 = and i32 %40, 255
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %10, align 4
  %43 = and i32 %42, 16777215
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* @MSG_DEBUG, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %10, align 4
  %48 = call i32 (i32, i8*, ...) @wpa_printf(i32 %44, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %46, i32 %47)
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %28
  %53 = load i32, i32* @MSG_WARNING, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i32 (i32, i8*, ...) @wpa_printf(i32 %53, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %55)
  br label %352

57:                                               ; preds = %28
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = icmp ult i64 %59, 8
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = load i32, i32* @MSG_WARNING, align 4
  %63 = load i32, i32* %10, align 4
  %64 = call i32 (i32, i8*, ...) @wpa_printf(i32 %62, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  br label %352

65:                                               ; preds = %57
  %66 = load %struct.ttls_avp*, %struct.ttls_avp** %6, align 8
  %67 = getelementptr inbounds %struct.ttls_avp, %struct.ttls_avp* %66, i64 1
  %68 = bitcast %struct.ttls_avp* %67 to i32*
  store i32* %68, i32** %13, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = sub i64 %70, 8
  store i64 %71, i64* %15, align 8
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* @AVP_FLAGS_VENDOR, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %93

76:                                               ; preds = %65
  %77 = load i64, i64* %15, align 8
  %78 = icmp ult i64 %77, 4
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i32, i32* @MSG_WARNING, align 4
  %81 = call i32 (i32, i8*, ...) @wpa_printf(i32 %80, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %352

82:                                               ; preds = %76
  %83 = load i32*, i32** %13, align 8
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @be_to_host32(i32 %84)
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* @MSG_DEBUG, align 4
  %87 = load i32, i32* %11, align 4
  %88 = call i32 (i32, i8*, ...) @wpa_printf(i32 %86, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %87)
  %89 = load i32*, i32** %13, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 4
  store i32* %90, i32** %13, align 8
  %91 = load i64, i64* %15, align 8
  %92 = sub i64 %91, 4
  store i64 %92, i64* %15, align 8
  br label %93

93:                                               ; preds = %82, %65
  %94 = load i32, i32* @MSG_DEBUG, align 4
  %95 = load i32*, i32** %13, align 8
  %96 = load i64, i64* %15, align 8
  %97 = call i32 @wpa_hexdump(i32 %94, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32* %95, i64 %96)
  %98 = load i32, i32* %11, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %161

100:                                              ; preds = %93
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* @RADIUS_ATTR_EAP_MESSAGE, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %161

104:                                              ; preds = %100
  %105 = load i32, i32* @MSG_DEBUG, align 4
  %106 = call i32 (i32, i8*, ...) @wpa_printf(i32 %105, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %107 = load %struct.eap_ttls_avp*, %struct.eap_ttls_avp** %5, align 8
  %108 = getelementptr inbounds %struct.eap_ttls_avp, %struct.eap_ttls_avp* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = icmp eq i32* %109, null
  br i1 %110, label %111, label %128

111:                                              ; preds = %104
  %112 = load i32*, i32** %13, align 8
  %113 = load i64, i64* %15, align 8
  %114 = call i32* @os_memdup(i32* %112, i64 %113)
  %115 = load %struct.eap_ttls_avp*, %struct.eap_ttls_avp** %5, align 8
  %116 = getelementptr inbounds %struct.eap_ttls_avp, %struct.eap_ttls_avp* %115, i32 0, i32 0
  store i32* %114, i32** %116, align 8
  %117 = load %struct.eap_ttls_avp*, %struct.eap_ttls_avp** %5, align 8
  %118 = getelementptr inbounds %struct.eap_ttls_avp, %struct.eap_ttls_avp* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = icmp eq i32* %119, null
  br i1 %120, label %121, label %124

121:                                              ; preds = %111
  %122 = load i32, i32* @MSG_WARNING, align 4
  %123 = call i32 (i32, i8*, ...) @wpa_printf(i32 %122, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.7, i64 0, i64 0))
  br label %352

124:                                              ; preds = %111
  %125 = load i64, i64* %15, align 8
  %126 = load %struct.eap_ttls_avp*, %struct.eap_ttls_avp** %5, align 8
  %127 = getelementptr inbounds %struct.eap_ttls_avp, %struct.eap_ttls_avp* %126, i32 0, i32 1
  store i64 %125, i64* %127, align 8
  br label %160

128:                                              ; preds = %104
  %129 = load %struct.eap_ttls_avp*, %struct.eap_ttls_avp** %5, align 8
  %130 = getelementptr inbounds %struct.eap_ttls_avp, %struct.eap_ttls_avp* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = load %struct.eap_ttls_avp*, %struct.eap_ttls_avp** %5, align 8
  %133 = getelementptr inbounds %struct.eap_ttls_avp, %struct.eap_ttls_avp* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* %15, align 8
  %136 = add i64 %134, %135
  %137 = call i32* @os_realloc(i32* %131, i64 %136)
  store i32* %137, i32** %16, align 8
  %138 = load i32*, i32** %16, align 8
  %139 = icmp eq i32* %138, null
  br i1 %139, label %140, label %143

140:                                              ; preds = %128
  %141 = load i32, i32* @MSG_WARNING, align 4
  %142 = call i32 (i32, i8*, ...) @wpa_printf(i32 %141, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.7, i64 0, i64 0))
  br label %352

143:                                              ; preds = %128
  %144 = load i32*, i32** %16, align 8
  %145 = load %struct.eap_ttls_avp*, %struct.eap_ttls_avp** %5, align 8
  %146 = getelementptr inbounds %struct.eap_ttls_avp, %struct.eap_ttls_avp* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = getelementptr inbounds i32, i32* %144, i64 %147
  %149 = load i32*, i32** %13, align 8
  %150 = load i64, i64* %15, align 8
  %151 = call i32 @os_memcpy(i32* %148, i32* %149, i64 %150)
  %152 = load i32*, i32** %16, align 8
  %153 = load %struct.eap_ttls_avp*, %struct.eap_ttls_avp** %5, align 8
  %154 = getelementptr inbounds %struct.eap_ttls_avp, %struct.eap_ttls_avp* %153, i32 0, i32 0
  store i32* %152, i32** %154, align 8
  %155 = load i64, i64* %15, align 8
  %156 = load %struct.eap_ttls_avp*, %struct.eap_ttls_avp** %5, align 8
  %157 = getelementptr inbounds %struct.eap_ttls_avp, %struct.eap_ttls_avp* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = add i64 %158, %155
  store i64 %159, i64* %157, align 8
  br label %160

160:                                              ; preds = %143, %124
  br label %331

161:                                              ; preds = %100, %93
  %162 = load i32, i32* %11, align 4
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %179

164:                                              ; preds = %161
  %165 = load i32, i32* %9, align 4
  %166 = load i32, i32* @RADIUS_ATTR_USER_NAME, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %168, label %179

168:                                              ; preds = %164
  %169 = load i32, i32* @MSG_DEBUG, align 4
  %170 = load i32*, i32** %13, align 8
  %171 = load i64, i64* %15, align 8
  %172 = call i32 @wpa_hexdump_ascii(i32 %169, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32* %170, i64 %171)
  %173 = load i32*, i32** %13, align 8
  %174 = load %struct.eap_ttls_avp*, %struct.eap_ttls_avp** %5, align 8
  %175 = getelementptr inbounds %struct.eap_ttls_avp, %struct.eap_ttls_avp* %174, i32 0, i32 2
  store i32* %173, i32** %175, align 8
  %176 = load i64, i64* %15, align 8
  %177 = load %struct.eap_ttls_avp*, %struct.eap_ttls_avp** %5, align 8
  %178 = getelementptr inbounds %struct.eap_ttls_avp, %struct.eap_ttls_avp* %177, i32 0, i32 3
  store i64 %176, i64* %178, align 8
  br label %330

179:                                              ; preds = %164, %161
  %180 = load i32, i32* %11, align 4
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %215

182:                                              ; preds = %179
  %183 = load i32, i32* %9, align 4
  %184 = load i32, i32* @RADIUS_ATTR_USER_PASSWORD, align 4
  %185 = icmp eq i32 %183, %184
  br i1 %185, label %186, label %215

186:                                              ; preds = %182
  %187 = load i32*, i32** %13, align 8
  store i32* %187, i32** %17, align 8
  %188 = load i64, i64* %15, align 8
  store i64 %188, i64* %18, align 8
  br label %189

189:                                              ; preds = %201, %186
  %190 = load i64, i64* %18, align 8
  %191 = icmp ugt i64 %190, 0
  br i1 %191, label %192, label %199

192:                                              ; preds = %189
  %193 = load i32*, i32** %17, align 8
  %194 = load i64, i64* %18, align 8
  %195 = sub i64 %194, 1
  %196 = getelementptr inbounds i32, i32* %193, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = icmp eq i32 %197, 0
  br label %199

199:                                              ; preds = %192, %189
  %200 = phi i1 [ false, %189 ], [ %198, %192 ]
  br i1 %200, label %201, label %204

201:                                              ; preds = %199
  %202 = load i64, i64* %18, align 8
  %203 = add i64 %202, -1
  store i64 %203, i64* %18, align 8
  br label %189

204:                                              ; preds = %199
  %205 = load i32, i32* @MSG_DEBUG, align 4
  %206 = load i32*, i32** %17, align 8
  %207 = load i64, i64* %18, align 8
  %208 = call i32 @wpa_hexdump_ascii_key(i32 %205, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i32* %206, i64 %207)
  %209 = load i32*, i32** %17, align 8
  %210 = load %struct.eap_ttls_avp*, %struct.eap_ttls_avp** %5, align 8
  %211 = getelementptr inbounds %struct.eap_ttls_avp, %struct.eap_ttls_avp* %210, i32 0, i32 4
  store i32* %209, i32** %211, align 8
  %212 = load i64, i64* %18, align 8
  %213 = load %struct.eap_ttls_avp*, %struct.eap_ttls_avp** %5, align 8
  %214 = getelementptr inbounds %struct.eap_ttls_avp, %struct.eap_ttls_avp* %213, i32 0, i32 5
  store i64 %212, i64* %214, align 8
  br label %329

215:                                              ; preds = %182, %179
  %216 = load i32, i32* %11, align 4
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %233

218:                                              ; preds = %215
  %219 = load i32, i32* %9, align 4
  %220 = load i32, i32* @RADIUS_ATTR_CHAP_CHALLENGE, align 4
  %221 = icmp eq i32 %219, %220
  br i1 %221, label %222, label %233

222:                                              ; preds = %218
  %223 = load i32, i32* @MSG_DEBUG, align 4
  %224 = load i32*, i32** %13, align 8
  %225 = load i64, i64* %15, align 8
  %226 = call i32 @wpa_hexdump(i32 %223, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), i32* %224, i64 %225)
  %227 = load i32*, i32** %13, align 8
  %228 = load %struct.eap_ttls_avp*, %struct.eap_ttls_avp** %5, align 8
  %229 = getelementptr inbounds %struct.eap_ttls_avp, %struct.eap_ttls_avp* %228, i32 0, i32 6
  store i32* %227, i32** %229, align 8
  %230 = load i64, i64* %15, align 8
  %231 = load %struct.eap_ttls_avp*, %struct.eap_ttls_avp** %5, align 8
  %232 = getelementptr inbounds %struct.eap_ttls_avp, %struct.eap_ttls_avp* %231, i32 0, i32 7
  store i64 %230, i64* %232, align 8
  br label %328

233:                                              ; preds = %218, %215
  %234 = load i32, i32* %11, align 4
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %251

236:                                              ; preds = %233
  %237 = load i32, i32* %9, align 4
  %238 = load i32, i32* @RADIUS_ATTR_CHAP_PASSWORD, align 4
  %239 = icmp eq i32 %237, %238
  br i1 %239, label %240, label %251

240:                                              ; preds = %236
  %241 = load i32, i32* @MSG_DEBUG, align 4
  %242 = load i32*, i32** %13, align 8
  %243 = load i64, i64* %15, align 8
  %244 = call i32 @wpa_hexdump(i32 %241, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), i32* %242, i64 %243)
  %245 = load i32*, i32** %13, align 8
  %246 = load %struct.eap_ttls_avp*, %struct.eap_ttls_avp** %5, align 8
  %247 = getelementptr inbounds %struct.eap_ttls_avp, %struct.eap_ttls_avp* %246, i32 0, i32 8
  store i32* %245, i32** %247, align 8
  %248 = load i64, i64* %15, align 8
  %249 = load %struct.eap_ttls_avp*, %struct.eap_ttls_avp** %5, align 8
  %250 = getelementptr inbounds %struct.eap_ttls_avp, %struct.eap_ttls_avp* %249, i32 0, i32 9
  store i64 %248, i64* %250, align 8
  br label %327

251:                                              ; preds = %236, %233
  %252 = load i32, i32* %11, align 4
  %253 = load i32, i32* @RADIUS_VENDOR_ID_MICROSOFT, align 4
  %254 = icmp eq i32 %252, %253
  br i1 %254, label %255, label %270

255:                                              ; preds = %251
  %256 = load i32, i32* %9, align 4
  %257 = load i32, i32* @RADIUS_ATTR_MS_CHAP_CHALLENGE, align 4
  %258 = icmp eq i32 %256, %257
  br i1 %258, label %259, label %270

259:                                              ; preds = %255
  %260 = load i32, i32* @MSG_DEBUG, align 4
  %261 = load i32*, i32** %13, align 8
  %262 = load i64, i64* %15, align 8
  %263 = call i32 @wpa_hexdump(i32 %260, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0), i32* %261, i64 %262)
  %264 = load i32*, i32** %13, align 8
  %265 = load %struct.eap_ttls_avp*, %struct.eap_ttls_avp** %5, align 8
  %266 = getelementptr inbounds %struct.eap_ttls_avp, %struct.eap_ttls_avp* %265, i32 0, i32 10
  store i32* %264, i32** %266, align 8
  %267 = load i64, i64* %15, align 8
  %268 = load %struct.eap_ttls_avp*, %struct.eap_ttls_avp** %5, align 8
  %269 = getelementptr inbounds %struct.eap_ttls_avp, %struct.eap_ttls_avp* %268, i32 0, i32 11
  store i64 %267, i64* %269, align 8
  br label %326

270:                                              ; preds = %255, %251
  %271 = load i32, i32* %11, align 4
  %272 = load i32, i32* @RADIUS_VENDOR_ID_MICROSOFT, align 4
  %273 = icmp eq i32 %271, %272
  br i1 %273, label %274, label %289

274:                                              ; preds = %270
  %275 = load i32, i32* %9, align 4
  %276 = load i32, i32* @RADIUS_ATTR_MS_CHAP_RESPONSE, align 4
  %277 = icmp eq i32 %275, %276
  br i1 %277, label %278, label %289

278:                                              ; preds = %274
  %279 = load i32, i32* @MSG_DEBUG, align 4
  %280 = load i32*, i32** %13, align 8
  %281 = load i64, i64* %15, align 8
  %282 = call i32 @wpa_hexdump(i32 %279, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i64 0, i64 0), i32* %280, i64 %281)
  %283 = load i32*, i32** %13, align 8
  %284 = load %struct.eap_ttls_avp*, %struct.eap_ttls_avp** %5, align 8
  %285 = getelementptr inbounds %struct.eap_ttls_avp, %struct.eap_ttls_avp* %284, i32 0, i32 12
  store i32* %283, i32** %285, align 8
  %286 = load i64, i64* %15, align 8
  %287 = load %struct.eap_ttls_avp*, %struct.eap_ttls_avp** %5, align 8
  %288 = getelementptr inbounds %struct.eap_ttls_avp, %struct.eap_ttls_avp* %287, i32 0, i32 13
  store i64 %286, i64* %288, align 8
  br label %325

289:                                              ; preds = %274, %270
  %290 = load i32, i32* %11, align 4
  %291 = load i32, i32* @RADIUS_VENDOR_ID_MICROSOFT, align 4
  %292 = icmp eq i32 %290, %291
  br i1 %292, label %293, label %308

293:                                              ; preds = %289
  %294 = load i32, i32* %9, align 4
  %295 = load i32, i32* @RADIUS_ATTR_MS_CHAP2_RESPONSE, align 4
  %296 = icmp eq i32 %294, %295
  br i1 %296, label %297, label %308

297:                                              ; preds = %293
  %298 = load i32, i32* @MSG_DEBUG, align 4
  %299 = load i32*, i32** %13, align 8
  %300 = load i64, i64* %15, align 8
  %301 = call i32 @wpa_hexdump(i32 %298, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i64 0, i64 0), i32* %299, i64 %300)
  %302 = load i32*, i32** %13, align 8
  %303 = load %struct.eap_ttls_avp*, %struct.eap_ttls_avp** %5, align 8
  %304 = getelementptr inbounds %struct.eap_ttls_avp, %struct.eap_ttls_avp* %303, i32 0, i32 14
  store i32* %302, i32** %304, align 8
  %305 = load i64, i64* %15, align 8
  %306 = load %struct.eap_ttls_avp*, %struct.eap_ttls_avp** %5, align 8
  %307 = getelementptr inbounds %struct.eap_ttls_avp, %struct.eap_ttls_avp* %306, i32 0, i32 15
  store i64 %305, i64* %307, align 8
  br label %324

308:                                              ; preds = %293, %289
  %309 = load i32, i32* %12, align 4
  %310 = load i32, i32* @AVP_FLAGS_MANDATORY, align 4
  %311 = and i32 %309, %310
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %318

313:                                              ; preds = %308
  %314 = load i32, i32* @MSG_WARNING, align 4
  %315 = load i32, i32* %9, align 4
  %316 = load i32, i32* %11, align 4
  %317 = call i32 (i32, i8*, ...) @wpa_printf(i32 %314, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.15, i64 0, i64 0), i32 %315, i32 %316)
  br label %352

318:                                              ; preds = %308
  %319 = load i32, i32* @MSG_DEBUG, align 4
  %320 = load i32, i32* %9, align 4
  %321 = load i32, i32* %11, align 4
  %322 = call i32 (i32, i8*, ...) @wpa_printf(i32 %319, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.16, i64 0, i64 0), i32 %320, i32 %321)
  br label %323

323:                                              ; preds = %318
  br label %324

324:                                              ; preds = %323, %297
  br label %325

325:                                              ; preds = %324, %278
  br label %326

326:                                              ; preds = %325, %259
  br label %327

327:                                              ; preds = %326, %240
  br label %328

328:                                              ; preds = %327, %222
  br label %329

329:                                              ; preds = %328, %204
  br label %330

330:                                              ; preds = %329, %168
  br label %331

331:                                              ; preds = %330, %160
  %332 = load i32, i32* %10, align 4
  %333 = and i32 %332, 3
  %334 = sub nsw i32 4, %333
  %335 = and i32 %334, 3
  %336 = sext i32 %335 to i64
  store i64 %336, i64* %14, align 8
  %337 = load i32, i32* %10, align 4
  %338 = sext i32 %337 to i64
  %339 = load i64, i64* %14, align 8
  %340 = add i64 %338, %339
  %341 = load i32*, i32** %7, align 8
  %342 = getelementptr inbounds i32, i32* %341, i64 %340
  store i32* %342, i32** %7, align 8
  %343 = load i32, i32* %10, align 4
  %344 = sext i32 %343 to i64
  %345 = load i64, i64* %14, align 8
  %346 = add i64 %344, %345
  %347 = load i32, i32* %8, align 4
  %348 = sext i32 %347 to i64
  %349 = sub i64 %348, %346
  %350 = trunc i64 %349 to i32
  store i32 %350, i32* %8, align 4
  br label %25

351:                                              ; preds = %25
  store i32 0, i32* %3, align 4
  br label %359

352:                                              ; preds = %313, %140, %121, %79, %61, %52
  %353 = load %struct.eap_ttls_avp*, %struct.eap_ttls_avp** %5, align 8
  %354 = getelementptr inbounds %struct.eap_ttls_avp, %struct.eap_ttls_avp* %353, i32 0, i32 0
  %355 = load i32*, i32** %354, align 8
  %356 = call i32 @os_free(i32* %355)
  %357 = load %struct.eap_ttls_avp*, %struct.eap_ttls_avp** %5, align 8
  %358 = getelementptr inbounds %struct.eap_ttls_avp, %struct.eap_ttls_avp* %357, i32 0, i32 0
  store i32* null, i32** %358, align 8
  store i32 -1, i32* %3, align 4
  br label %359

359:                                              ; preds = %352, %351
  %360 = load i32, i32* %3, align 4
  ret i32 %360
}

declare dso_local i32* @wpabuf_mhead(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @os_memset(%struct.eap_ttls_avp*, i32, i32) #1

declare dso_local i32 @be_to_host32(i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i64) #1

declare dso_local i32* @os_memdup(i32*, i64) #1

declare dso_local i32* @os_realloc(i32*, i64) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i64) #1

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i32*, i64) #1

declare dso_local i32 @wpa_hexdump_ascii_key(i32, i8*, i32*, i64) #1

declare dso_local i32 @os_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
