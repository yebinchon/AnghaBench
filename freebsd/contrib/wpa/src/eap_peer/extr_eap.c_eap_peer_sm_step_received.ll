; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap.c_eap_peer_sm_step_received.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap.c_eap_peer_sm_step_received.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i64, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@DECISION_FAIL = common dso_local global i64 0, align 8
@EAP = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@METHOD_CONT = common dso_local global i64 0, align 8
@FAILURE = common dso_local global i32 0, align 4
@DECISION_UNCOND_SUCC = common dso_local global i64 0, align 8
@EAP_TYPE_LEAP = common dso_local global i64 0, align 8
@METHOD_MAY_CONT = common dso_local global i64 0, align 8
@RETRANSMIT = common dso_local global i32 0, align 4
@EAP_TYPE_NOTIFICATION = common dso_local global i64 0, align 8
@NOTIFICATION = common dso_local global i32 0, align 4
@EAP_TYPE_NONE = common dso_local global i64 0, align 8
@EAP_TYPE_IDENTITY = common dso_local global i64 0, align 8
@IDENTITY = common dso_local global i32 0, align 4
@GET_METHOD = common dso_local global i32 0, align 4
@METHOD_DONE = common dso_local global i64 0, align 8
@METHOD = common dso_local global i32 0, align 4
@SEND_RESPONSE = common dso_local global i32 0, align 4
@DISCARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*)* @eap_peer_sm_step_received to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_peer_sm_step_received(%struct.eap_sm* %0) #0 {
  %2 = alloca %struct.eap_sm*, align 8
  %3 = alloca i32, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %2, align 8
  %4 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %5 = call i32 @eap_peer_req_is_duplicate(%struct.eap_sm* %4)
  store i32 %5, i32* %3, align 4
  %6 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %7 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %6, i32 0, i32 8
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %38

10:                                               ; preds = %1
  %11 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %12 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @DECISION_FAIL, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %38

16:                                               ; preds = %10
  %17 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %18 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %21 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %19, %22
  br i1 %23, label %34, label %24

24:                                               ; preds = %16
  %25 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %26 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %27 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %30 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @eap_success_workaround(%struct.eap_sm* %25, i32 %28, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %24, %16
  %35 = load i32, i32* @EAP, align 4
  %36 = load i32, i32* @SUCCESS, align 4
  %37 = call i32 @SM_ENTER(i32 %35, i32 %36)
  br label %360

38:                                               ; preds = %24, %10, %1
  %39 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %40 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %39, i32 0, i32 12
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %71

43:                                               ; preds = %38
  %44 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %45 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %71

48:                                               ; preds = %43
  %49 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %50 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %49, i32 0, i32 8
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %71

53:                                               ; preds = %48
  %54 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %55 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %54, i32 0, i32 11
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %71, label %58

58:                                               ; preds = %53
  %59 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %60 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %59, i32 0, i32 9
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %71, label %63

63:                                               ; preds = %58
  %64 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %65 = call i64 @eap_peer_sm_allow_canned(%struct.eap_sm* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load i32, i32* @EAP, align 4
  %69 = load i32, i32* @SUCCESS, align 4
  %70 = call i32 @SM_ENTER(i32 %68, i32 %69)
  br label %359

71:                                               ; preds = %63, %58, %53, %48, %43, %38
  %72 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %73 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %72, i32 0, i32 12
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %105

76:                                               ; preds = %71
  %77 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %78 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %79, -1
  br i1 %80, label %81, label %105

81:                                               ; preds = %76
  %82 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %83 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %82, i32 0, i32 11
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %105

86:                                               ; preds = %81
  %87 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %88 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %87, i32 0, i32 9
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %105, label %91

91:                                               ; preds = %86
  %92 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %93 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @METHOD_CONT, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %105

97:                                               ; preds = %91
  %98 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %99 = call i64 @eap_peer_sm_allow_canned(%struct.eap_sm* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %97
  %102 = load i32, i32* @EAP, align 4
  %103 = load i32, i32* @FAILURE, align 4
  %104 = call i32 @SM_ENTER(i32 %102, i32 %103)
  br label %358

105:                                              ; preds = %97, %91, %86, %81, %76, %71
  %106 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %107 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %106, i32 0, i32 12
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %139

110:                                              ; preds = %105
  %111 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %112 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %111, i32 0, i32 8
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %139

115:                                              ; preds = %110
  %116 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %117 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %116, i32 0, i32 11
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %139, label %120

120:                                              ; preds = %115
  %121 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %122 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %121, i32 0, i32 9
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %139, label %125

125:                                              ; preds = %120
  %126 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %127 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @METHOD_CONT, align 8
  %130 = icmp ne i64 %128, %129
  br i1 %130, label %131, label %139

131:                                              ; preds = %125
  %132 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %133 = call i64 @eap_peer_sm_allow_canned(%struct.eap_sm* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %131
  %136 = load i32, i32* @EAP, align 4
  %137 = load i32, i32* @SUCCESS, align 4
  %138 = call i32 @SM_ENTER(i32 %136, i32 %137)
  br label %357

139:                                              ; preds = %131, %125, %120, %115, %110, %105
  %140 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %141 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %140, i32 0, i32 3
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @METHOD_CONT, align 8
  %144 = icmp ne i64 %142, %143
  br i1 %144, label %145, label %201

145:                                              ; preds = %139
  %146 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %147 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %146, i32 0, i32 11
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %145
  %151 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %152 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @DECISION_UNCOND_SUCC, align 8
  %155 = icmp ne i64 %153, %154
  br i1 %155, label %179, label %156

156:                                              ; preds = %150, %145
  %157 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %158 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %157, i32 0, i32 8
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %201

161:                                              ; preds = %156
  %162 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %163 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @DECISION_FAIL, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %201

167:                                              ; preds = %161
  %168 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %169 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %168, i32 0, i32 4
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @EAP_TYPE_LEAP, align 8
  %172 = icmp ne i64 %170, %171
  br i1 %172, label %179, label %173

173:                                              ; preds = %167
  %174 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %175 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %174, i32 0, i32 3
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @METHOD_MAY_CONT, align 8
  %178 = icmp ne i64 %176, %177
  br i1 %178, label %179, label %201

179:                                              ; preds = %173, %167, %150
  %180 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %181 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %184 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 4
  %186 = icmp eq i32 %182, %185
  br i1 %186, label %197, label %187

187:                                              ; preds = %179
  %188 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %189 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %190 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %193 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 4
  %195 = call i64 @eap_success_workaround(%struct.eap_sm* %188, i32 %191, i32 %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %201

197:                                              ; preds = %187, %179
  %198 = load i32, i32* @EAP, align 4
  %199 = load i32, i32* @FAILURE, align 4
  %200 = call i32 @SM_ENTER(i32 %198, i32 %199)
  br label %356

201:                                              ; preds = %187, %173, %161, %156, %139
  %202 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %203 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %202, i32 0, i32 9
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %213

206:                                              ; preds = %201
  %207 = load i32, i32* %3, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %213

209:                                              ; preds = %206
  %210 = load i32, i32* @EAP, align 4
  %211 = load i32, i32* @RETRANSMIT, align 4
  %212 = call i32 @SM_ENTER(i32 %210, i32 %211)
  br label %355

213:                                              ; preds = %206, %201
  %214 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %215 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %214, i32 0, i32 9
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %236

218:                                              ; preds = %213
  %219 = load i32, i32* %3, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %236, label %221

221:                                              ; preds = %218
  %222 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %223 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %222, i32 0, i32 5
  %224 = load i64, i64* %223, align 8
  %225 = load i64, i64* @EAP_TYPE_NOTIFICATION, align 8
  %226 = icmp eq i64 %224, %225
  br i1 %226, label %227, label %236

227:                                              ; preds = %221
  %228 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %229 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %228, i32 0, i32 10
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %236

232:                                              ; preds = %227
  %233 = load i32, i32* @EAP, align 4
  %234 = load i32, i32* @NOTIFICATION, align 4
  %235 = call i32 @SM_ENTER(i32 %233, i32 %234)
  br label %354

236:                                              ; preds = %227, %221, %218, %213
  %237 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %238 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %237, i32 0, i32 9
  %239 = load i64, i64* %238, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %260

241:                                              ; preds = %236
  %242 = load i32, i32* %3, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %260, label %244

244:                                              ; preds = %241
  %245 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %246 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %245, i32 0, i32 4
  %247 = load i64, i64* %246, align 8
  %248 = load i64, i64* @EAP_TYPE_NONE, align 8
  %249 = icmp eq i64 %247, %248
  br i1 %249, label %250, label %260

250:                                              ; preds = %244
  %251 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %252 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %251, i32 0, i32 5
  %253 = load i64, i64* %252, align 8
  %254 = load i64, i64* @EAP_TYPE_IDENTITY, align 8
  %255 = icmp eq i64 %253, %254
  br i1 %255, label %256, label %260

256:                                              ; preds = %250
  %257 = load i32, i32* @EAP, align 4
  %258 = load i32, i32* @IDENTITY, align 4
  %259 = call i32 @SM_ENTER(i32 %257, i32 %258)
  br label %353

260:                                              ; preds = %250, %244, %241, %236
  %261 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %262 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %261, i32 0, i32 9
  %263 = load i64, i64* %262, align 8
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %290

265:                                              ; preds = %260
  %266 = load i32, i32* %3, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %290, label %268

268:                                              ; preds = %265
  %269 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %270 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %269, i32 0, i32 4
  %271 = load i64, i64* %270, align 8
  %272 = load i64, i64* @EAP_TYPE_NONE, align 8
  %273 = icmp eq i64 %271, %272
  br i1 %273, label %274, label %290

274:                                              ; preds = %268
  %275 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %276 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %275, i32 0, i32 5
  %277 = load i64, i64* %276, align 8
  %278 = load i64, i64* @EAP_TYPE_IDENTITY, align 8
  %279 = icmp ne i64 %277, %278
  br i1 %279, label %280, label %290

280:                                              ; preds = %274
  %281 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %282 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %281, i32 0, i32 5
  %283 = load i64, i64* %282, align 8
  %284 = load i64, i64* @EAP_TYPE_NOTIFICATION, align 8
  %285 = icmp ne i64 %283, %284
  br i1 %285, label %286, label %290

286:                                              ; preds = %280
  %287 = load i32, i32* @EAP, align 4
  %288 = load i32, i32* @GET_METHOD, align 4
  %289 = call i32 @SM_ENTER(i32 %287, i32 %288)
  br label %352

290:                                              ; preds = %280, %274, %268, %265, %260
  %291 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %292 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %291, i32 0, i32 9
  %293 = load i64, i64* %292, align 8
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %316

295:                                              ; preds = %290
  %296 = load i32, i32* %3, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %316, label %298

298:                                              ; preds = %295
  %299 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %300 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %299, i32 0, i32 5
  %301 = load i64, i64* %300, align 8
  %302 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %303 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %302, i32 0, i32 4
  %304 = load i64, i64* %303, align 8
  %305 = icmp eq i64 %301, %304
  br i1 %305, label %306, label %316

306:                                              ; preds = %298
  %307 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %308 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %307, i32 0, i32 3
  %309 = load i64, i64* %308, align 8
  %310 = load i64, i64* @METHOD_DONE, align 8
  %311 = icmp ne i64 %309, %310
  br i1 %311, label %312, label %316

312:                                              ; preds = %306
  %313 = load i32, i32* @EAP, align 4
  %314 = load i32, i32* @METHOD, align 4
  %315 = call i32 @SM_ENTER(i32 %313, i32 %314)
  br label %351

316:                                              ; preds = %306, %298, %295, %290
  %317 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %318 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %317, i32 0, i32 4
  %319 = load i64, i64* %318, align 8
  %320 = load i64, i64* @EAP_TYPE_LEAP, align 8
  %321 = icmp eq i64 %319, %320
  br i1 %321, label %322, label %336

322:                                              ; preds = %316
  %323 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %324 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %323, i32 0, i32 8
  %325 = load i64, i64* %324, align 8
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %332, label %327

327:                                              ; preds = %322
  %328 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %329 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %328, i32 0, i32 7
  %330 = load i64, i64* %329, align 8
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %332, label %336

332:                                              ; preds = %327, %322
  %333 = load i32, i32* @EAP, align 4
  %334 = load i32, i32* @METHOD, align 4
  %335 = call i32 @SM_ENTER(i32 %333, i32 %334)
  br label %350

336:                                              ; preds = %327, %316
  %337 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %338 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %337, i32 0, i32 6
  %339 = load i64, i64* %338, align 8
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %341, label %345

341:                                              ; preds = %336
  %342 = load i32, i32* @EAP, align 4
  %343 = load i32, i32* @SEND_RESPONSE, align 4
  %344 = call i32 @SM_ENTER(i32 %342, i32 %343)
  br label %349

345:                                              ; preds = %336
  %346 = load i32, i32* @EAP, align 4
  %347 = load i32, i32* @DISCARD, align 4
  %348 = call i32 @SM_ENTER(i32 %346, i32 %347)
  br label %349

349:                                              ; preds = %345, %341
  br label %350

350:                                              ; preds = %349, %332
  br label %351

351:                                              ; preds = %350, %312
  br label %352

352:                                              ; preds = %351, %286
  br label %353

353:                                              ; preds = %352, %256
  br label %354

354:                                              ; preds = %353, %232
  br label %355

355:                                              ; preds = %354, %209
  br label %356

356:                                              ; preds = %355, %197
  br label %357

357:                                              ; preds = %356, %135
  br label %358

358:                                              ; preds = %357, %101
  br label %359

359:                                              ; preds = %358, %67
  br label %360

360:                                              ; preds = %359, %34
  ret void
}

declare dso_local i32 @eap_peer_req_is_duplicate(%struct.eap_sm*) #1

declare dso_local i64 @eap_success_workaround(%struct.eap_sm*, i32, i32) #1

declare dso_local i32 @SM_ENTER(i32, i32) #1

declare dso_local i64 @eap_peer_sm_allow_canned(%struct.eap_sm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
