; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_ikev2.c_eap_ikev2_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_ikev2.c_eap_ikev2_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.wpabuf = type { i32 }
%struct.eap_ikev2_data = type { i64, i32, %struct.wpabuf*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@EAP_TYPE_IKEV2 = common dso_local global i32 0, align 4
@WAIT_FRAG_ACK = common dso_local global i64 0, align 8
@FAIL = common dso_local global i64 0, align 8
@IKEV2_FLAGS_LENGTH_INCLUDED = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"EAP-IKEV2: Message underflow\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"EAP-IKEV2: Invalid Message Length (%d; %ld remaining in this msg)\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"EAP-IKEV2: Received packet: Flags 0x%x Message Length %u\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"EAP-IKEV2: Unexpected payload in WAIT_FRAG_ACK state\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"EAP-IKEV2: Fragment acknowledged\00", align 1
@MSG = common dso_local global i64 0, align 8
@IKEV2_FLAGS_MORE_FRAGMENTS = common dso_local global i32 0, align 4
@FRAG_ACK = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [32 x i8] c"EAP-TNC: All fragments received\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"EAP-IKEV2: Authentication completed successfully\00", align 1
@DONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, i8*, %struct.wpabuf*)* @eap_ikev2_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_ikev2_process(%struct.eap_sm* %0, i8* %1, %struct.wpabuf* %2) #0 {
  %4 = alloca %struct.eap_sm*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca %struct.eap_ikev2_data*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.wpabuf, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.wpabuf* %2, %struct.wpabuf** %6, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.eap_ikev2_data*
  store %struct.eap_ikev2_data* %16, %struct.eap_ikev2_data** %7, align 8
  store i32 0, i32* %13, align 4
  %17 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %18 = load i32, i32* @EAP_TYPE_IKEV2, align 4
  %19 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %20 = call i32* @eap_hdr_validate(i32 %17, i32 %18, %struct.wpabuf* %19, i64* %11)
  store i32* %20, i32** %9, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %269

24:                                               ; preds = %3
  %25 = load i32*, i32** %9, align 8
  store i32* %25, i32** %8, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = load i64, i64* %11, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  store i32* %28, i32** %10, align 8
  %29 = load i64, i64* %11, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i32 0, i32* %12, align 4
  br label %36

32:                                               ; preds = %24
  %33 = load i32*, i32** %9, align 8
  %34 = getelementptr inbounds i32, i32* %33, i32 1
  store i32* %34, i32** %9, align 8
  %35 = load i32, i32* %33, align 4
  store i32 %35, i32* %12, align 4
  br label %36

36:                                               ; preds = %32, %31
  %37 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %7, align 8
  %38 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %39 = load i32, i32* %12, align 4
  %40 = load i32*, i32** %9, align 8
  %41 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %7, align 8
  %42 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @WAIT_FRAG_ACK, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %36
  %47 = load i64, i64* %11, align 8
  %48 = icmp eq i64 %47, 0
  br label %49

49:                                               ; preds = %46, %36
  %50 = phi i1 [ false, %36 ], [ %48, %46 ]
  %51 = zext i1 %50 to i32
  %52 = call i64 @eap_ikev2_process_icv(%struct.eap_ikev2_data* %37, %struct.wpabuf* %38, i32 %39, i32* %40, i32** %10, i32 %51)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %7, align 8
  %56 = load i64, i64* @FAIL, align 8
  %57 = call i32 @eap_ikev2_state(%struct.eap_ikev2_data* %55, i64 %56)
  br label %269

58:                                               ; preds = %49
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* @IKEV2_FLAGS_LENGTH_INCLUDED, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %105

63:                                               ; preds = %58
  %64 = load i32*, i32** %10, align 8
  %65 = load i32*, i32** %9, align 8
  %66 = ptrtoint i32* %64 to i64
  %67 = ptrtoint i32* %65 to i64
  %68 = sub i64 %66, %67
  %69 = sdiv exact i64 %68, 4
  %70 = icmp slt i64 %69, 4
  br i1 %70, label %71, label %77

71:                                               ; preds = %63
  %72 = load i32, i32* @MSG_DEBUG, align 4
  %73 = call i32 (i32, i8*, ...) @wpa_printf(i32 %72, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %74 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %7, align 8
  %75 = load i64, i64* @FAIL, align 8
  %76 = call i32 @eap_ikev2_state(%struct.eap_ikev2_data* %74, i64 %75)
  br label %269

77:                                               ; preds = %63
  %78 = load i32*, i32** %9, align 8
  %79 = call i32 @WPA_GET_BE32(i32* %78)
  store i32 %79, i32* %13, align 4
  %80 = load i32*, i32** %9, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 4
  store i32* %81, i32** %9, align 8
  %82 = load i32, i32* %13, align 4
  %83 = load i32*, i32** %10, align 8
  %84 = load i32*, i32** %9, align 8
  %85 = ptrtoint i32* %83 to i64
  %86 = ptrtoint i32* %84 to i64
  %87 = sub i64 %85, %86
  %88 = sdiv exact i64 %87, 4
  %89 = trunc i64 %88 to i32
  %90 = icmp slt i32 %82, %89
  br i1 %90, label %91, label %104

91:                                               ; preds = %77
  %92 = load i32, i32* @MSG_DEBUG, align 4
  %93 = load i32, i32* %13, align 4
  %94 = load i32*, i32** %10, align 8
  %95 = load i32*, i32** %9, align 8
  %96 = ptrtoint i32* %94 to i64
  %97 = ptrtoint i32* %95 to i64
  %98 = sub i64 %96, %97
  %99 = sdiv exact i64 %98, 4
  %100 = call i32 (i32, i8*, ...) @wpa_printf(i32 %92, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i32 %93, i64 %99)
  %101 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %7, align 8
  %102 = load i64, i64* @FAIL, align 8
  %103 = call i32 @eap_ikev2_state(%struct.eap_ikev2_data* %101, i64 %102)
  br label %269

104:                                              ; preds = %77
  br label %105

105:                                              ; preds = %104, %58
  %106 = load i32, i32* @MSG_DEBUG, align 4
  %107 = load i32, i32* %12, align 4
  %108 = load i32, i32* %13, align 4
  %109 = call i32 (i32, i8*, ...) @wpa_printf(i32 %106, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 %107, i32 %108)
  %110 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %7, align 8
  %111 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @WAIT_FRAG_ACK, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %130

115:                                              ; preds = %105
  %116 = load i64, i64* %11, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %115
  %119 = load i32, i32* @MSG_DEBUG, align 4
  %120 = call i32 (i32, i8*, ...) @wpa_printf(i32 %119, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0))
  %121 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %7, align 8
  %122 = load i64, i64* @FAIL, align 8
  %123 = call i32 @eap_ikev2_state(%struct.eap_ikev2_data* %121, i64 %122)
  br label %269

124:                                              ; preds = %115
  %125 = load i32, i32* @MSG_DEBUG, align 4
  %126 = call i32 (i32, i8*, ...) @wpa_printf(i32 %125, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %127 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %7, align 8
  %128 = load i64, i64* @MSG, align 8
  %129 = call i32 @eap_ikev2_state(%struct.eap_ikev2_data* %127, i64 %128)
  br label %269

130:                                              ; preds = %105
  %131 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %7, align 8
  %132 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %131, i32 0, i32 2
  %133 = load %struct.wpabuf*, %struct.wpabuf** %132, align 8
  %134 = icmp ne %struct.wpabuf* %133, null
  br i1 %134, label %135, label %151

135:                                              ; preds = %130
  %136 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %7, align 8
  %137 = load i32*, i32** %9, align 8
  %138 = load i32*, i32** %10, align 8
  %139 = load i32*, i32** %9, align 8
  %140 = ptrtoint i32* %138 to i64
  %141 = ptrtoint i32* %139 to i64
  %142 = sub i64 %140, %141
  %143 = sdiv exact i64 %142, 4
  %144 = trunc i64 %143 to i32
  %145 = call i64 @eap_ikev2_process_cont(%struct.eap_ikev2_data* %136, i32* %137, i32 %144)
  %146 = icmp slt i64 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %135
  %148 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %7, align 8
  %149 = load i64, i64* @FAIL, align 8
  %150 = call i32 @eap_ikev2_state(%struct.eap_ikev2_data* %148, i64 %149)
  br label %269

151:                                              ; preds = %135, %130
  %152 = load i32, i32* %12, align 4
  %153 = load i32, i32* @IKEV2_FLAGS_MORE_FRAGMENTS, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %179

156:                                              ; preds = %151
  %157 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %7, align 8
  %158 = load i32, i32* %12, align 4
  %159 = load i32, i32* %13, align 4
  %160 = load i32*, i32** %9, align 8
  %161 = load i32*, i32** %10, align 8
  %162 = load i32*, i32** %9, align 8
  %163 = ptrtoint i32* %161 to i64
  %164 = ptrtoint i32* %162 to i64
  %165 = sub i64 %163, %164
  %166 = sdiv exact i64 %165, 4
  %167 = trunc i64 %166 to i32
  %168 = call i64 @eap_ikev2_process_fragment(%struct.eap_ikev2_data* %157, i32 %158, i32 %159, i32* %160, i32 %167)
  %169 = icmp slt i64 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %156
  %171 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %7, align 8
  %172 = load i64, i64* @FAIL, align 8
  %173 = call i32 @eap_ikev2_state(%struct.eap_ikev2_data* %171, i64 %172)
  br label %178

174:                                              ; preds = %156
  %175 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %7, align 8
  %176 = load i64, i64* @FRAG_ACK, align 8
  %177 = call i32 @eap_ikev2_state(%struct.eap_ikev2_data* %175, i64 %176)
  br label %178

178:                                              ; preds = %174, %170
  br label %269

179:                                              ; preds = %151
  %180 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %7, align 8
  %181 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @FRAG_ACK, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %185, label %191

185:                                              ; preds = %179
  %186 = load i32, i32* @MSG_DEBUG, align 4
  %187 = call i32 (i32, i8*, ...) @wpa_printf(i32 %186, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %188 = load i64, i64* @MSG, align 8
  %189 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %7, align 8
  %190 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %189, i32 0, i32 0
  store i64 %188, i64* %190, align 8
  br label %191

191:                                              ; preds = %185, %179
  br label %192

192:                                              ; preds = %191
  %193 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %7, align 8
  %194 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %193, i32 0, i32 2
  %195 = load %struct.wpabuf*, %struct.wpabuf** %194, align 8
  %196 = icmp eq %struct.wpabuf* %195, null
  br i1 %196, label %197, label %209

197:                                              ; preds = %192
  %198 = load i32*, i32** %9, align 8
  %199 = load i32*, i32** %10, align 8
  %200 = load i32*, i32** %9, align 8
  %201 = ptrtoint i32* %199 to i64
  %202 = ptrtoint i32* %200 to i64
  %203 = sub i64 %201, %202
  %204 = sdiv exact i64 %203, 4
  %205 = trunc i64 %204 to i32
  %206 = call i32 @wpabuf_set(%struct.wpabuf* %14, i32* %198, i32 %205)
  %207 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %7, align 8
  %208 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %207, i32 0, i32 2
  store %struct.wpabuf* %14, %struct.wpabuf** %208, align 8
  br label %209

209:                                              ; preds = %197, %192
  %210 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %7, align 8
  %211 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %210, i32 0, i32 3
  %212 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %7, align 8
  %213 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %212, i32 0, i32 2
  %214 = load %struct.wpabuf*, %struct.wpabuf** %213, align 8
  %215 = call i64 @ikev2_initiator_process(%struct.TYPE_2__* %211, %struct.wpabuf* %214)
  %216 = icmp slt i64 %215, 0
  br i1 %216, label %217, label %229

217:                                              ; preds = %209
  %218 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %7, align 8
  %219 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %218, i32 0, i32 2
  %220 = load %struct.wpabuf*, %struct.wpabuf** %219, align 8
  %221 = icmp eq %struct.wpabuf* %220, %14
  br i1 %221, label %222, label %225

222:                                              ; preds = %217
  %223 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %7, align 8
  %224 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %223, i32 0, i32 2
  store %struct.wpabuf* null, %struct.wpabuf** %224, align 8
  br label %225

225:                                              ; preds = %222, %217
  %226 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %7, align 8
  %227 = load i64, i64* @FAIL, align 8
  %228 = call i32 @eap_ikev2_state(%struct.eap_ikev2_data* %226, i64 %227)
  br label %269

229:                                              ; preds = %209
  %230 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %7, align 8
  %231 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %230, i32 0, i32 3
  %232 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  switch i32 %233, label %255 [
    i32 128, label %234
    i32 129, label %237
  ]

234:                                              ; preds = %229
  %235 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %7, align 8
  %236 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %235, i32 0, i32 1
  store i32 1, i32* %236, align 8
  br label %256

237:                                              ; preds = %229
  %238 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %7, align 8
  %239 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = load i64, i64* @FAIL, align 8
  %242 = icmp eq i64 %240, %241
  br i1 %242, label %243, label %244

243:                                              ; preds = %237
  br label %256

244:                                              ; preds = %237
  %245 = load i32, i32* @MSG_DEBUG, align 4
  %246 = call i32 (i32, i8*, ...) @wpa_printf(i32 %245, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0))
  %247 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %7, align 8
  %248 = call i32 @eap_ikev2_server_keymat(%struct.eap_ikev2_data* %247)
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %244
  br label %256

251:                                              ; preds = %244
  %252 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %7, align 8
  %253 = load i64, i64* @DONE, align 8
  %254 = call i32 @eap_ikev2_state(%struct.eap_ikev2_data* %252, i64 %253)
  br label %256

255:                                              ; preds = %229
  br label %256

256:                                              ; preds = %255, %251, %250, %243, %234
  %257 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %7, align 8
  %258 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %257, i32 0, i32 2
  %259 = load %struct.wpabuf*, %struct.wpabuf** %258, align 8
  %260 = icmp ne %struct.wpabuf* %259, %14
  br i1 %260, label %261, label %266

261:                                              ; preds = %256
  %262 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %7, align 8
  %263 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %262, i32 0, i32 2
  %264 = load %struct.wpabuf*, %struct.wpabuf** %263, align 8
  %265 = call i32 @wpabuf_free(%struct.wpabuf* %264)
  br label %266

266:                                              ; preds = %261, %256
  %267 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %7, align 8
  %268 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %267, i32 0, i32 2
  store %struct.wpabuf* null, %struct.wpabuf** %268, align 8
  br label %269

269:                                              ; preds = %266, %225, %178, %147, %124, %118, %91, %71, %54, %23
  ret void
}

declare dso_local i32* @eap_hdr_validate(i32, i32, %struct.wpabuf*, i64*) #1

declare dso_local i64 @eap_ikev2_process_icv(%struct.eap_ikev2_data*, %struct.wpabuf*, i32, i32*, i32**, i32) #1

declare dso_local i32 @eap_ikev2_state(%struct.eap_ikev2_data*, i64) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @WPA_GET_BE32(i32*) #1

declare dso_local i64 @eap_ikev2_process_cont(%struct.eap_ikev2_data*, i32*, i32) #1

declare dso_local i64 @eap_ikev2_process_fragment(%struct.eap_ikev2_data*, i32, i32, i32*, i32) #1

declare dso_local i32 @wpabuf_set(%struct.wpabuf*, i32*, i32) #1

declare dso_local i64 @ikev2_initiator_process(%struct.TYPE_2__*, %struct.wpabuf*) #1

declare dso_local i32 @eap_ikev2_server_keymat(%struct.eap_ikev2_data*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
