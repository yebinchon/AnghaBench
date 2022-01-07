; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_fast.c_eap_fast_session_ticket_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_fast.c_eap_fast_session_ticket_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_fast_data = type { i32*, i64, i32, i64, i32 }
%struct.os_time = type { i64 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"EAP-FAST: SessionTicket callback\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"EAP-FAST: SessionTicket (PAC-Opaque)\00", align 1
@PAC_TYPE_PAC_OPAQUE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"EAP-FAST: Ignore invalid SessionTicket\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"EAP-FAST: Ignore invalid PAC-Opaque (len=%lu left=%lu)\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"EAP-FAST: Received PAC-Opaque\00", align 1
@.str.5 = private unnamed_addr constant [62 x i8] c"EAP-FAST: Failed to allocate memory for decrypting PAC-Opaque\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"EAP-FAST: Failed to decrypt PAC-Opaque\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"EAP-FAST: Decrypted PAC-Opaque\00", align 1
@EAP_FAST_PAC_KEY_LEN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [36 x i8] c"EAP-FAST: Invalid PAC-Key length %d\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"EAP-FAST: PAC-Key from decrypted PAC-Opaque\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"EAP-FAST: Invalid PAC-Key lifetime length %d\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"EAP-FAST: No PAC-Key included in PAC-Opaque\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"EAP-FAST: Identity from PAC-Opaque\00", align 1
@.str.13 = private unnamed_addr constant [59 x i8] c"EAP-FAST: PAC-Key not valid anymore (lifetime=%ld now=%ld)\00", align 1
@.str.14 = private unnamed_addr constant [74 x i8] c"EAP-FAST: PAC-Key soft timeout; send an update if authentication succeeds\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i64, i32*, i32*, i32*)* @eap_fast_session_ticket_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_fast_session_ticket_cb(i8* %0, i32* %1, i64 %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.eap_fast_data*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.os_time, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32* %1, i32** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = bitcast i8* %27 to %struct.eap_fast_data*
  store %struct.eap_fast_data* %28, %struct.eap_fast_data** %14, align 8
  store i32* null, i32** %20, align 8
  store i64 0, i64* %21, align 8
  store i32* null, i32** %23, align 8
  store i64 0, i64* %24, align 8
  %29 = load i32, i32* @MSG_DEBUG, align 4
  %30 = call i32 (i32, i8*, ...) @wpa_printf(i32 %29, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @MSG_DEBUG, align 4
  %32 = load i32*, i32** %9, align 8
  %33 = load i64, i64* %10, align 8
  %34 = call i32 @wpa_hexdump(i32 %31, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32* %32, i64 %33)
  %35 = load i64, i64* %10, align 8
  %36 = icmp ult i64 %35, 4
  br i1 %36, label %42, label %37

37:                                               ; preds = %6
  %38 = load i32*, i32** %9, align 8
  %39 = call i64 @WPA_GET_BE16(i32* %38)
  %40 = load i64, i64* @PAC_TYPE_PAC_OPAQUE, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %37, %6
  %43 = load i32, i32* @MSG_DEBUG, align 4
  %44 = call i32 (i32, i8*, ...) @wpa_printf(i32 %43, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %261

45:                                               ; preds = %37
  %46 = load i32*, i32** %9, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 2
  %48 = call i64 @WPA_GET_BE16(i32* %47)
  store i64 %48, i64* %16, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 4
  store i32* %50, i32** %15, align 8
  %51 = load i64, i64* %16, align 8
  %52 = icmp ult i64 %51, 8
  br i1 %52, label %62, label %53

53:                                               ; preds = %45
  %54 = load i64, i64* %16, align 8
  %55 = urem i64 %54, 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %53
  %58 = load i64, i64* %16, align 8
  %59 = load i64, i64* %10, align 8
  %60 = sub i64 %59, 4
  %61 = icmp ugt i64 %58, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %57, %53, %45
  %63 = load i32, i32* @MSG_DEBUG, align 4
  %64 = load i64, i64* %16, align 8
  %65 = load i64, i64* %10, align 8
  %66 = call i32 (i32, i8*, ...) @wpa_printf(i32 %63, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i64 %64, i64 %65)
  store i32 0, i32* %7, align 4
  br label %261

67:                                               ; preds = %57
  %68 = load i32, i32* @MSG_DEBUG, align 4
  %69 = load i32*, i32** %15, align 8
  %70 = load i64, i64* %16, align 8
  %71 = call i32 @wpa_hexdump(i32 %68, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32* %69, i64 %70)
  %72 = load i64, i64* %16, align 8
  %73 = sub i64 %72, 8
  %74 = call i8* @os_malloc(i64 %73)
  %75 = bitcast i8* %74 to i32*
  store i32* %75, i32** %17, align 8
  %76 = load i32*, i32** %17, align 8
  %77 = icmp eq i32* %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %67
  %79 = load i32, i32* @MSG_DEBUG, align 4
  %80 = call i32 (i32, i8*, ...) @wpa_printf(i32 %79, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %261

81:                                               ; preds = %67
  %82 = load %struct.eap_fast_data*, %struct.eap_fast_data** %14, align 8
  %83 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = load i64, i64* %16, align 8
  %86 = sub i64 %85, 8
  %87 = udiv i64 %86, 8
  %88 = load i32*, i32** %15, align 8
  %89 = load i32*, i32** %17, align 8
  %90 = call i64 @aes_unwrap(i32 %84, i32 4, i64 %87, i32* %88, i32* %89)
  %91 = icmp slt i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %81
  %93 = load i32, i32* @MSG_DEBUG, align 4
  %94 = call i32 (i32, i8*, ...) @wpa_printf(i32 %93, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  %95 = load i32*, i32** %17, align 8
  %96 = call i32 @os_free(i32* %95)
  store i32 0, i32* %7, align 4
  br label %261

97:                                               ; preds = %81
  %98 = load i32*, i32** %17, align 8
  %99 = load i64, i64* %16, align 8
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  %101 = getelementptr inbounds i32, i32* %100, i64 -8
  store i32* %101, i32** %19, align 8
  %102 = load i32, i32* @MSG_DEBUG, align 4
  %103 = load i32*, i32** %17, align 8
  %104 = load i32*, i32** %19, align 8
  %105 = load i32*, i32** %17, align 8
  %106 = ptrtoint i32* %104 to i64
  %107 = ptrtoint i32* %105 to i64
  %108 = sub i64 %106, %107
  %109 = sdiv exact i64 %108, 4
  %110 = trunc i64 %109 to i32
  %111 = call i32 @wpa_hexdump_key(i32 %102, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32* %103, i32 %110)
  %112 = load i32*, i32** %17, align 8
  store i32* %112, i32** %18, align 8
  br label %113

113:                                              ; preds = %173, %97
  %114 = load i32*, i32** %19, align 8
  %115 = load i32*, i32** %18, align 8
  %116 = ptrtoint i32* %114 to i64
  %117 = ptrtoint i32* %115 to i64
  %118 = sub i64 %116, %117
  %119 = sdiv exact i64 %118, 4
  %120 = icmp sgt i64 %119, 1
  br i1 %120, label %121, label %178

121:                                              ; preds = %113
  %122 = load i32*, i32** %18, align 8
  %123 = getelementptr inbounds i32, i32* %122, i32 1
  store i32* %123, i32** %18, align 8
  %124 = load i32, i32* %122, align 4
  store i32 %124, i32* %25, align 4
  %125 = load i32*, i32** %18, align 8
  %126 = getelementptr inbounds i32, i32* %125, i32 1
  store i32* %126, i32** %18, align 8
  %127 = load i32, i32* %125, align 4
  store i32 %127, i32* %26, align 4
  %128 = load i32, i32* %26, align 4
  %129 = sext i32 %128 to i64
  %130 = load i32*, i32** %19, align 8
  %131 = load i32*, i32** %18, align 8
  %132 = ptrtoint i32* %130 to i64
  %133 = ptrtoint i32* %131 to i64
  %134 = sub i64 %132, %133
  %135 = sdiv exact i64 %134, 4
  %136 = icmp sgt i64 %129, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %121
  br label %178

138:                                              ; preds = %121
  %139 = load i32, i32* %25, align 4
  switch i32 %139, label %173 [
    i32 128, label %140
    i32 130, label %141
    i32 129, label %157
    i32 131, label %169
  ]

140:                                              ; preds = %138
  br label %179

141:                                              ; preds = %138
  %142 = load i32, i32* %26, align 4
  %143 = load i32, i32* @EAP_FAST_PAC_KEY_LEN, align 4
  %144 = icmp ne i32 %142, %143
  br i1 %144, label %145, label %151

145:                                              ; preds = %141
  %146 = load i32, i32* @MSG_DEBUG, align 4
  %147 = load i32, i32* %26, align 4
  %148 = call i32 (i32, i8*, ...) @wpa_printf(i32 %146, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i32 %147)
  %149 = load i32*, i32** %17, align 8
  %150 = call i32 @os_free(i32* %149)
  store i32 -1, i32* %7, align 4
  br label %261

151:                                              ; preds = %141
  %152 = load i32*, i32** %18, align 8
  store i32* %152, i32** %20, align 8
  %153 = load i32, i32* @MSG_DEBUG, align 4
  %154 = load i32*, i32** %20, align 8
  %155 = load i32, i32* @EAP_FAST_PAC_KEY_LEN, align 4
  %156 = call i32 @wpa_hexdump_key(i32 %153, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i64 0, i64 0), i32* %154, i32 %155)
  br label %173

157:                                              ; preds = %138
  %158 = load i32, i32* %26, align 4
  %159 = icmp ne i32 %158, 4
  br i1 %159, label %160, label %166

160:                                              ; preds = %157
  %161 = load i32, i32* @MSG_DEBUG, align 4
  %162 = load i32, i32* %26, align 4
  %163 = call i32 (i32, i8*, ...) @wpa_printf(i32 %161, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0), i32 %162)
  %164 = load i32*, i32** %17, align 8
  %165 = call i32 @os_free(i32* %164)
  store i32 -1, i32* %7, align 4
  br label %261

166:                                              ; preds = %157
  %167 = load i32*, i32** %18, align 8
  %168 = call i64 @WPA_GET_BE32(i32* %167)
  store i64 %168, i64* %21, align 8
  br label %173

169:                                              ; preds = %138
  %170 = load i32*, i32** %18, align 8
  store i32* %170, i32** %23, align 8
  %171 = load i32, i32* %26, align 4
  %172 = sext i32 %171 to i64
  store i64 %172, i64* %24, align 8
  br label %173

173:                                              ; preds = %138, %169, %166, %151
  %174 = load i32, i32* %26, align 4
  %175 = load i32*, i32** %18, align 8
  %176 = sext i32 %174 to i64
  %177 = getelementptr inbounds i32, i32* %175, i64 %176
  store i32* %177, i32** %18, align 8
  br label %113

178:                                              ; preds = %137, %113
  br label %179

179:                                              ; preds = %178, %140
  %180 = load i32*, i32** %20, align 8
  %181 = icmp eq i32* %180, null
  br i1 %181, label %182, label %187

182:                                              ; preds = %179
  %183 = load i32, i32* @MSG_DEBUG, align 4
  %184 = call i32 (i32, i8*, ...) @wpa_printf(i32 %183, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i64 0, i64 0))
  %185 = load i32*, i32** %17, align 8
  %186 = call i32 @os_free(i32* %185)
  store i32 -1, i32* %7, align 4
  br label %261

187:                                              ; preds = %179
  %188 = load i32*, i32** %23, align 8
  %189 = icmp ne i32* %188, null
  br i1 %189, label %190, label %219

190:                                              ; preds = %187
  %191 = load i32, i32* @MSG_DEBUG, align 4
  %192 = load i32*, i32** %23, align 8
  %193 = load i64, i64* %24, align 8
  %194 = call i32 @wpa_hexdump_ascii(i32 %191, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0), i32* %192, i64 %193)
  %195 = load %struct.eap_fast_data*, %struct.eap_fast_data** %14, align 8
  %196 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %195, i32 0, i32 0
  %197 = load i32*, i32** %196, align 8
  %198 = call i32 @os_free(i32* %197)
  %199 = load i64, i64* %24, align 8
  %200 = call i8* @os_malloc(i64 %199)
  %201 = bitcast i8* %200 to i32*
  %202 = load %struct.eap_fast_data*, %struct.eap_fast_data** %14, align 8
  %203 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %202, i32 0, i32 0
  store i32* %201, i32** %203, align 8
  %204 = load %struct.eap_fast_data*, %struct.eap_fast_data** %14, align 8
  %205 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %204, i32 0, i32 0
  %206 = load i32*, i32** %205, align 8
  %207 = icmp ne i32* %206, null
  br i1 %207, label %208, label %218

208:                                              ; preds = %190
  %209 = load %struct.eap_fast_data*, %struct.eap_fast_data** %14, align 8
  %210 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %209, i32 0, i32 0
  %211 = load i32*, i32** %210, align 8
  %212 = load i32*, i32** %23, align 8
  %213 = load i64, i64* %24, align 8
  %214 = call i32 @os_memcpy(i32* %211, i32* %212, i64 %213)
  %215 = load i64, i64* %24, align 8
  %216 = load %struct.eap_fast_data*, %struct.eap_fast_data** %14, align 8
  %217 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %216, i32 0, i32 1
  store i64 %215, i64* %217, align 8
  br label %218

218:                                              ; preds = %208, %190
  br label %219

219:                                              ; preds = %218, %187
  %220 = call i64 @os_get_time(%struct.os_time* %22)
  %221 = icmp slt i64 %220, 0
  br i1 %221, label %230, label %222

222:                                              ; preds = %219
  %223 = load i64, i64* %21, align 8
  %224 = icmp sle i64 %223, 0
  br i1 %224, label %230, label %225

225:                                              ; preds = %222
  %226 = getelementptr inbounds %struct.os_time, %struct.os_time* %22, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = load i64, i64* %21, align 8
  %229 = icmp sgt i64 %227, %228
  br i1 %229, label %230, label %238

230:                                              ; preds = %225, %222, %219
  %231 = load i32, i32* @MSG_DEBUG, align 4
  %232 = load i64, i64* %21, align 8
  %233 = getelementptr inbounds %struct.os_time, %struct.os_time* %22, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = call i32 (i32, i8*, ...) @wpa_printf(i32 %231, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.13, i64 0, i64 0), i64 %232, i64 %234)
  %236 = load %struct.eap_fast_data*, %struct.eap_fast_data** %14, align 8
  %237 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %236, i32 0, i32 2
  store i32 2, i32* %237, align 8
  br label %253

238:                                              ; preds = %225
  %239 = load i64, i64* %21, align 8
  %240 = getelementptr inbounds %struct.os_time, %struct.os_time* %22, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = sub nsw i64 %239, %241
  %243 = load %struct.eap_fast_data*, %struct.eap_fast_data** %14, align 8
  %244 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %243, i32 0, i32 3
  %245 = load i64, i64* %244, align 8
  %246 = icmp slt i64 %242, %245
  br i1 %246, label %247, label %252

247:                                              ; preds = %238
  %248 = load i32, i32* @MSG_DEBUG, align 4
  %249 = call i32 (i32, i8*, ...) @wpa_printf(i32 %248, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.14, i64 0, i64 0))
  %250 = load %struct.eap_fast_data*, %struct.eap_fast_data** %14, align 8
  %251 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %250, i32 0, i32 2
  store i32 1, i32* %251, align 8
  br label %252

252:                                              ; preds = %247, %238
  br label %253

253:                                              ; preds = %252, %230
  %254 = load i32*, i32** %20, align 8
  %255 = load i32*, i32** %12, align 8
  %256 = load i32*, i32** %11, align 8
  %257 = load i32*, i32** %13, align 8
  %258 = call i32 @eap_fast_derive_master_secret(i32* %254, i32* %255, i32* %256, i32* %257)
  %259 = load i32*, i32** %17, align 8
  %260 = call i32 @os_free(i32* %259)
  store i32 1, i32* %7, align 4
  br label %261

261:                                              ; preds = %253, %182, %160, %145, %92, %78, %62, %42
  %262 = load i32, i32* %7, align 4
  ret i32 %262
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i64) #1

declare dso_local i64 @WPA_GET_BE16(i32*) #1

declare dso_local i8* @os_malloc(i64) #1

declare dso_local i64 @aes_unwrap(i32, i32, i64, i32*, i32*) #1

declare dso_local i32 @os_free(i32*) #1

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32*, i32) #1

declare dso_local i64 @WPA_GET_BE32(i32*) #1

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i32*, i64) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i64) #1

declare dso_local i64 @os_get_time(%struct.os_time*) #1

declare dso_local i32 @eap_fast_derive_master_secret(i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
