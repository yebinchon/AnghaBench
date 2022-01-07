; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_pow.c_pow.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_pow.c_pow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@one = common dso_local global double 0.000000e+00, align 8
@zero = common dso_local global double 0.000000e+00, align 8
@huge = common dso_local global double 0.000000e+00, align 8
@tiny = common dso_local global double 0.000000e+00, align 8
@half = common dso_local global double 0.000000e+00, align 8
@thrd = common dso_local global double 0.000000e+00, align 8
@qrtr = common dso_local global double 0.000000e+00, align 8
@ivln2_h = common dso_local global double 0.000000e+00, align 8
@ivln2_l = common dso_local global double 0.000000e+00, align 8
@ivln2 = common dso_local global double 0.000000e+00, align 8
@two53 = common dso_local global double 0.000000e+00, align 8
@bp = common dso_local global double* null, align 8
@L1 = common dso_local global double 0.000000e+00, align 8
@L2 = common dso_local global double 0.000000e+00, align 8
@L3 = common dso_local global double 0.000000e+00, align 8
@L4 = common dso_local global double 0.000000e+00, align 8
@L5 = common dso_local global double 0.000000e+00, align 8
@L6 = common dso_local global double 0.000000e+00, align 8
@cp_h = common dso_local global double 0.000000e+00, align 8
@cp_l = common dso_local global double 0.000000e+00, align 8
@cp = common dso_local global double 0.000000e+00, align 8
@dp_l = common dso_local global double* null, align 8
@dp_h = common dso_local global double* null, align 8
@ovt = common dso_local global double 0.000000e+00, align 8
@lg2_h = common dso_local global double 0.000000e+00, align 8
@lg2 = common dso_local global double 0.000000e+00, align 8
@lg2_l = common dso_local global double 0.000000e+00, align 8
@P1 = common dso_local global double 0.000000e+00, align 8
@P2 = common dso_local global double 0.000000e+00, align 8
@P3 = common dso_local global double 0.000000e+00, align 8
@P4 = common dso_local global double 0.000000e+00, align 8
@P5 = common dso_local global double 0.000000e+00, align 8
@two = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @__ieee754_pow(double %0, double %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca double, align 8
  %33 = alloca double, align 8
  %34 = alloca double, align 8
  %35 = alloca double, align 8
  %36 = alloca double, align 8
  %37 = alloca double, align 8
  store double %0, double* %4, align 8
  store double %1, double* %5, align 8
  %38 = load i32, i32* %26, align 4
  %39 = load i32, i32* %30, align 4
  %40 = load double, double* %4, align 8
  %41 = call i32 @EXTRACT_WORDS(i32 %38, i32 %39, double %40)
  %42 = load i32, i32* %27, align 4
  %43 = load i32, i32* %31, align 4
  %44 = load double, double* %5, align 8
  %45 = call i32 @EXTRACT_WORDS(i32 %42, i32 %43, double %44)
  %46 = load i32, i32* %26, align 4
  %47 = and i32 %46, 2147483647
  store i32 %47, i32* %28, align 4
  %48 = load i32, i32* %27, align 4
  %49 = and i32 %48, 2147483647
  store i32 %49, i32* %29, align 4
  %50 = load i32, i32* %29, align 4
  %51 = load i32, i32* %31, align 4
  %52 = or i32 %50, %51
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %2
  %55 = load double, double* @one, align 8
  store double %55, double* %3, align 8
  br label %821

56:                                               ; preds = %2
  %57 = load i32, i32* %26, align 4
  %58 = icmp eq i32 %57, 1072693248
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load i32, i32* %30, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load double, double* @one, align 8
  store double %63, double* %3, align 8
  br label %821

64:                                               ; preds = %59, %56
  %65 = load i32, i32* %28, align 4
  %66 = icmp sgt i32 %65, 2146435072
  br i1 %66, label %82, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* %28, align 4
  %69 = icmp eq i32 %68, 2146435072
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i32, i32* %30, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %82, label %73

73:                                               ; preds = %70, %67
  %74 = load i32, i32* %29, align 4
  %75 = icmp sgt i32 %74, 2146435072
  br i1 %75, label %82, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* %29, align 4
  %78 = icmp eq i32 %77, 2146435072
  br i1 %78, label %79, label %86

79:                                               ; preds = %76
  %80 = load i32, i32* %31, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %79, %73, %70, %64
  %83 = load double, double* %4, align 8
  %84 = load double, double* %5, align 8
  %85 = call double @nan_mix(double %83, double %84)
  store double %85, double* %3, align 8
  br label %821

86:                                               ; preds = %79, %76
  store i32 0, i32* %24, align 4
  %87 = load i32, i32* %26, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %141

89:                                               ; preds = %86
  %90 = load i32, i32* %29, align 4
  %91 = icmp sge i32 %90, 1128267776
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  store i32 2, i32* %24, align 4
  br label %140

93:                                               ; preds = %89
  %94 = load i32, i32* %29, align 4
  %95 = icmp sge i32 %94, 1072693248
  br i1 %95, label %96, label %139

96:                                               ; preds = %93
  %97 = load i32, i32* %29, align 4
  %98 = ashr i32 %97, 20
  %99 = sub nsw i32 %98, 1023
  store i32 %99, i32* %23, align 4
  %100 = load i32, i32* %23, align 4
  %101 = icmp sgt i32 %100, 20
  br i1 %101, label %102, label %118

102:                                              ; preds = %96
  %103 = load i32, i32* %31, align 4
  %104 = load i32, i32* %23, align 4
  %105 = sub nsw i32 52, %104
  %106 = ashr i32 %103, %105
  store i32 %106, i32* %22, align 4
  %107 = load i32, i32* %22, align 4
  %108 = load i32, i32* %23, align 4
  %109 = sub nsw i32 52, %108
  %110 = shl i32 %107, %109
  %111 = load i32, i32* %31, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %117

113:                                              ; preds = %102
  %114 = load i32, i32* %22, align 4
  %115 = and i32 %114, 1
  %116 = sub nsw i32 2, %115
  store i32 %116, i32* %24, align 4
  br label %117

117:                                              ; preds = %113, %102
  br label %138

118:                                              ; preds = %96
  %119 = load i32, i32* %31, align 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %137

121:                                              ; preds = %118
  %122 = load i32, i32* %29, align 4
  %123 = load i32, i32* %23, align 4
  %124 = sub nsw i32 20, %123
  %125 = ashr i32 %122, %124
  store i32 %125, i32* %22, align 4
  %126 = load i32, i32* %22, align 4
  %127 = load i32, i32* %23, align 4
  %128 = sub nsw i32 20, %127
  %129 = shl i32 %126, %128
  %130 = load i32, i32* %29, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %136

132:                                              ; preds = %121
  %133 = load i32, i32* %22, align 4
  %134 = and i32 %133, 1
  %135 = sub nsw i32 2, %134
  store i32 %135, i32* %24, align 4
  br label %136

136:                                              ; preds = %132, %121
  br label %137

137:                                              ; preds = %136, %118
  br label %138

138:                                              ; preds = %137, %117
  br label %139

139:                                              ; preds = %138, %93
  br label %140

140:                                              ; preds = %139, %92
  br label %141

141:                                              ; preds = %140, %86
  %142 = load i32, i32* %31, align 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %207

144:                                              ; preds = %141
  %145 = load i32, i32* %29, align 4
  %146 = icmp eq i32 %145, 2146435072
  br i1 %146, label %147, label %177

147:                                              ; preds = %144
  %148 = load i32, i32* %28, align 4
  %149 = sub nsw i32 %148, 1072693248
  %150 = load i32, i32* %30, align 4
  %151 = or i32 %149, %150
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %147
  %154 = load double, double* @one, align 8
  store double %154, double* %3, align 8
  br label %821

155:                                              ; preds = %147
  %156 = load i32, i32* %28, align 4
  %157 = icmp sge i32 %156, 1072693248
  br i1 %157, label %158, label %167

158:                                              ; preds = %155
  %159 = load i32, i32* %27, align 4
  %160 = icmp sge i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %158
  %162 = load double, double* %5, align 8
  br label %165

163:                                              ; preds = %158
  %164 = load double, double* @zero, align 8
  br label %165

165:                                              ; preds = %163, %161
  %166 = phi double [ %162, %161 ], [ %164, %163 ]
  store double %166, double* %3, align 8
  br label %821

167:                                              ; preds = %155
  %168 = load i32, i32* %27, align 4
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %167
  %171 = load double, double* %5, align 8
  %172 = fneg double %171
  br label %175

173:                                              ; preds = %167
  %174 = load double, double* @zero, align 8
  br label %175

175:                                              ; preds = %173, %170
  %176 = phi double [ %172, %170 ], [ %174, %173 ]
  store double %176, double* %3, align 8
  br label %821

177:                                              ; preds = %144
  %178 = load i32, i32* %29, align 4
  %179 = icmp eq i32 %178, 1072693248
  br i1 %179, label %180, label %189

180:                                              ; preds = %177
  %181 = load i32, i32* %27, align 4
  %182 = icmp slt i32 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %180
  %184 = load double, double* @one, align 8
  %185 = load double, double* %4, align 8
  %186 = fdiv double %184, %185
  store double %186, double* %3, align 8
  br label %821

187:                                              ; preds = %180
  %188 = load double, double* %4, align 8
  store double %188, double* %3, align 8
  br label %821

189:                                              ; preds = %177
  %190 = load i32, i32* %27, align 4
  %191 = icmp eq i32 %190, 1073741824
  br i1 %191, label %192, label %196

192:                                              ; preds = %189
  %193 = load double, double* %4, align 8
  %194 = load double, double* %4, align 8
  %195 = fmul double %193, %194
  store double %195, double* %3, align 8
  br label %821

196:                                              ; preds = %189
  %197 = load i32, i32* %27, align 4
  %198 = icmp eq i32 %197, 1071644672
  br i1 %198, label %199, label %206

199:                                              ; preds = %196
  %200 = load i32, i32* %26, align 4
  %201 = icmp sge i32 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %199
  %203 = load double, double* %4, align 8
  %204 = call double @sqrt(double %203) #4
  store double %204, double* %3, align 8
  br label %821

205:                                              ; preds = %199
  br label %206

206:                                              ; preds = %205, %196
  br label %207

207:                                              ; preds = %206, %141
  %208 = load double, double* %4, align 8
  %209 = call double @llvm.fabs.f64(double %208)
  store double %209, double* %7, align 8
  %210 = load i32, i32* %30, align 4
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %257

212:                                              ; preds = %207
  %213 = load i32, i32* %28, align 4
  %214 = icmp eq i32 %213, 2146435072
  br i1 %214, label %221, label %215

215:                                              ; preds = %212
  %216 = load i32, i32* %28, align 4
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %221, label %218

218:                                              ; preds = %215
  %219 = load i32, i32* %28, align 4
  %220 = icmp eq i32 %219, 1072693248
  br i1 %220, label %221, label %256

221:                                              ; preds = %218, %215, %212
  %222 = load double, double* %7, align 8
  store double %222, double* %6, align 8
  %223 = load i32, i32* %27, align 4
  %224 = icmp slt i32 %223, 0
  br i1 %224, label %225, label %229

225:                                              ; preds = %221
  %226 = load double, double* @one, align 8
  %227 = load double, double* %6, align 8
  %228 = fdiv double %226, %227
  store double %228, double* %6, align 8
  br label %229

229:                                              ; preds = %225, %221
  %230 = load i32, i32* %26, align 4
  %231 = icmp slt i32 %230, 0
  br i1 %231, label %232, label %254

232:                                              ; preds = %229
  %233 = load i32, i32* %28, align 4
  %234 = sub nsw i32 %233, 1072693248
  %235 = load i32, i32* %24, align 4
  %236 = or i32 %234, %235
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %238, label %246

238:                                              ; preds = %232
  %239 = load double, double* %6, align 8
  %240 = load double, double* %6, align 8
  %241 = fsub double %239, %240
  %242 = load double, double* %6, align 8
  %243 = load double, double* %6, align 8
  %244 = fsub double %242, %243
  %245 = fdiv double %241, %244
  store double %245, double* %6, align 8
  br label %253

246:                                              ; preds = %232
  %247 = load i32, i32* %24, align 4
  %248 = icmp eq i32 %247, 1
  br i1 %248, label %249, label %252

249:                                              ; preds = %246
  %250 = load double, double* %6, align 8
  %251 = fneg double %250
  store double %251, double* %6, align 8
  br label %252

252:                                              ; preds = %249, %246
  br label %253

253:                                              ; preds = %252, %238
  br label %254

254:                                              ; preds = %253, %229
  %255 = load double, double* %6, align 8
  store double %255, double* %3, align 8
  br label %821

256:                                              ; preds = %218
  br label %257

257:                                              ; preds = %256, %207
  %258 = load i32, i32* %26, align 4
  %259 = ashr i32 %258, 31
  %260 = sub nsw i32 %259, 1
  store i32 %260, i32* %25, align 4
  %261 = load i32, i32* %25, align 4
  %262 = load i32, i32* %24, align 4
  %263 = or i32 %261, %262
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %265, label %273

265:                                              ; preds = %257
  %266 = load double, double* %4, align 8
  %267 = load double, double* %4, align 8
  %268 = fsub double %266, %267
  %269 = load double, double* %4, align 8
  %270 = load double, double* %4, align 8
  %271 = fsub double %269, %270
  %272 = fdiv double %268, %271
  store double %272, double* %3, align 8
  br label %821

273:                                              ; preds = %257
  %274 = load double, double* @one, align 8
  store double %274, double* %16, align 8
  %275 = load i32, i32* %25, align 4
  %276 = load i32, i32* %24, align 4
  %277 = sub nsw i32 %276, 1
  %278 = or i32 %275, %277
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %280, label %283

280:                                              ; preds = %273
  %281 = load double, double* @one, align 8
  %282 = fneg double %281
  store double %282, double* %16, align 8
  br label %283

283:                                              ; preds = %280, %273
  %284 = load i32, i32* %29, align 4
  %285 = icmp sgt i32 %284, 1105199104
  br i1 %285, label %286, label %399

286:                                              ; preds = %283
  %287 = load i32, i32* %29, align 4
  %288 = icmp sgt i32 %287, 1139802112
  br i1 %288, label %289, label %322

289:                                              ; preds = %286
  %290 = load i32, i32* %28, align 4
  %291 = icmp sle i32 %290, 1072693247
  br i1 %291, label %292, label %305

292:                                              ; preds = %289
  %293 = load i32, i32* %27, align 4
  %294 = icmp slt i32 %293, 0
  br i1 %294, label %295, label %299

295:                                              ; preds = %292
  %296 = load double, double* @huge, align 8
  %297 = load double, double* @huge, align 8
  %298 = fmul double %296, %297
  br label %303

299:                                              ; preds = %292
  %300 = load double, double* @tiny, align 8
  %301 = load double, double* @tiny, align 8
  %302 = fmul double %300, %301
  br label %303

303:                                              ; preds = %299, %295
  %304 = phi double [ %298, %295 ], [ %302, %299 ]
  store double %304, double* %3, align 8
  br label %821

305:                                              ; preds = %289
  %306 = load i32, i32* %28, align 4
  %307 = icmp sge i32 %306, 1072693248
  br i1 %307, label %308, label %321

308:                                              ; preds = %305
  %309 = load i32, i32* %27, align 4
  %310 = icmp sgt i32 %309, 0
  br i1 %310, label %311, label %315

311:                                              ; preds = %308
  %312 = load double, double* @huge, align 8
  %313 = load double, double* @huge, align 8
  %314 = fmul double %312, %313
  br label %319

315:                                              ; preds = %308
  %316 = load double, double* @tiny, align 8
  %317 = load double, double* @tiny, align 8
  %318 = fmul double %316, %317
  br label %319

319:                                              ; preds = %315, %311
  %320 = phi double [ %314, %311 ], [ %318, %315 ]
  store double %320, double* %3, align 8
  br label %821

321:                                              ; preds = %305
  br label %322

322:                                              ; preds = %321, %286
  %323 = load i32, i32* %28, align 4
  %324 = icmp slt i32 %323, 1072693247
  br i1 %324, label %325, label %342

325:                                              ; preds = %322
  %326 = load i32, i32* %27, align 4
  %327 = icmp slt i32 %326, 0
  br i1 %327, label %328, label %334

328:                                              ; preds = %325
  %329 = load double, double* %16, align 8
  %330 = load double, double* @huge, align 8
  %331 = fmul double %329, %330
  %332 = load double, double* @huge, align 8
  %333 = fmul double %331, %332
  br label %340

334:                                              ; preds = %325
  %335 = load double, double* %16, align 8
  %336 = load double, double* @tiny, align 8
  %337 = fmul double %335, %336
  %338 = load double, double* @tiny, align 8
  %339 = fmul double %337, %338
  br label %340

340:                                              ; preds = %334, %328
  %341 = phi double [ %333, %328 ], [ %339, %334 ]
  store double %341, double* %3, align 8
  br label %821

342:                                              ; preds = %322
  %343 = load i32, i32* %28, align 4
  %344 = icmp sgt i32 %343, 1072693248
  br i1 %344, label %345, label %362

345:                                              ; preds = %342
  %346 = load i32, i32* %27, align 4
  %347 = icmp sgt i32 %346, 0
  br i1 %347, label %348, label %354

348:                                              ; preds = %345
  %349 = load double, double* %16, align 8
  %350 = load double, double* @huge, align 8
  %351 = fmul double %349, %350
  %352 = load double, double* @huge, align 8
  %353 = fmul double %351, %352
  br label %360

354:                                              ; preds = %345
  %355 = load double, double* %16, align 8
  %356 = load double, double* @tiny, align 8
  %357 = fmul double %355, %356
  %358 = load double, double* @tiny, align 8
  %359 = fmul double %357, %358
  br label %360

360:                                              ; preds = %354, %348
  %361 = phi double [ %353, %348 ], [ %359, %354 ]
  store double %361, double* %3, align 8
  br label %821

362:                                              ; preds = %342
  %363 = load double, double* %7, align 8
  %364 = load double, double* @one, align 8
  %365 = fsub double %363, %364
  store double %365, double* %17, align 8
  %366 = load double, double* %17, align 8
  %367 = load double, double* %17, align 8
  %368 = fmul double %366, %367
  %369 = load double, double* @half, align 8
  %370 = load double, double* %17, align 8
  %371 = load double, double* @thrd, align 8
  %372 = load double, double* %17, align 8
  %373 = load double, double* @qrtr, align 8
  %374 = fmul double %372, %373
  %375 = fsub double %371, %374
  %376 = fmul double %370, %375
  %377 = fsub double %369, %376
  %378 = fmul double %368, %377
  store double %378, double* %20, align 8
  %379 = load double, double* @ivln2_h, align 8
  %380 = load double, double* %17, align 8
  %381 = fmul double %379, %380
  store double %381, double* %18, align 8
  %382 = load double, double* %17, align 8
  %383 = load double, double* @ivln2_l, align 8
  %384 = fmul double %382, %383
  %385 = load double, double* %20, align 8
  %386 = load double, double* @ivln2, align 8
  %387 = fmul double %385, %386
  %388 = fsub double %384, %387
  store double %388, double* %19, align 8
  %389 = load double, double* %18, align 8
  %390 = load double, double* %19, align 8
  %391 = fadd double %389, %390
  store double %391, double* %13, align 8
  %392 = load double, double* %13, align 8
  %393 = call i32 @SET_LOW_WORD(double %392, i32 0)
  %394 = load double, double* %19, align 8
  %395 = load double, double* %13, align 8
  %396 = load double, double* %18, align 8
  %397 = fsub double %395, %396
  %398 = fsub double %394, %397
  store double %398, double* %14, align 8
  br label %604

399:                                              ; preds = %283
  store i32 0, i32* %25, align 4
  %400 = load i32, i32* %28, align 4
  %401 = icmp slt i32 %400, 1048576
  br i1 %401, label %402, label %411

402:                                              ; preds = %399
  %403 = load double, double* @two53, align 8
  %404 = load double, double* %7, align 8
  %405 = fmul double %404, %403
  store double %405, double* %7, align 8
  %406 = load i32, i32* %25, align 4
  %407 = sub nsw i32 %406, 53
  store i32 %407, i32* %25, align 4
  %408 = load i32, i32* %28, align 4
  %409 = load double, double* %7, align 8
  %410 = call i32 @GET_HIGH_WORD(i32 %408, double %409)
  br label %411

411:                                              ; preds = %402, %399
  %412 = load i32, i32* %28, align 4
  %413 = ashr i32 %412, 20
  %414 = sub nsw i32 %413, 1023
  %415 = load i32, i32* %25, align 4
  %416 = add nsw i32 %415, %414
  store i32 %416, i32* %25, align 4
  %417 = load i32, i32* %28, align 4
  %418 = and i32 %417, 1048575
  store i32 %418, i32* %22, align 4
  %419 = load i32, i32* %22, align 4
  %420 = or i32 %419, 1072693248
  store i32 %420, i32* %28, align 4
  %421 = load i32, i32* %22, align 4
  %422 = icmp sle i32 %421, 235662
  br i1 %422, label %423, label %424

423:                                              ; preds = %411
  store i32 0, i32* %23, align 4
  br label %434

424:                                              ; preds = %411
  %425 = load i32, i32* %22, align 4
  %426 = icmp slt i32 %425, 767610
  br i1 %426, label %427, label %428

427:                                              ; preds = %424
  store i32 1, i32* %23, align 4
  br label %433

428:                                              ; preds = %424
  store i32 0, i32* %23, align 4
  %429 = load i32, i32* %25, align 4
  %430 = add nsw i32 %429, 1
  store i32 %430, i32* %25, align 4
  %431 = load i32, i32* %28, align 4
  %432 = sub nsw i32 %431, 1048576
  store i32 %432, i32* %28, align 4
  br label %433

433:                                              ; preds = %428, %427
  br label %434

434:                                              ; preds = %433, %423
  %435 = load double, double* %7, align 8
  %436 = load i32, i32* %28, align 4
  %437 = call i32 @SET_HIGH_WORD(double %435, i32 %436)
  %438 = load double, double* %7, align 8
  %439 = load double*, double** @bp, align 8
  %440 = load i32, i32* %23, align 4
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds double, double* %439, i64 %441
  %443 = load double, double* %442, align 8
  %444 = fsub double %438, %443
  store double %444, double* %18, align 8
  %445 = load double, double* @one, align 8
  %446 = load double, double* %7, align 8
  %447 = load double*, double** @bp, align 8
  %448 = load i32, i32* %23, align 4
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds double, double* %447, i64 %449
  %451 = load double, double* %450, align 8
  %452 = fadd double %446, %451
  %453 = fdiv double %445, %452
  store double %453, double* %19, align 8
  %454 = load double, double* %18, align 8
  %455 = load double, double* %19, align 8
  %456 = fmul double %454, %455
  store double %456, double* %32, align 8
  %457 = load double, double* %32, align 8
  store double %457, double* %34, align 8
  %458 = load double, double* %34, align 8
  %459 = call i32 @SET_LOW_WORD(double %458, i32 0)
  %460 = load double, double* @zero, align 8
  store double %460, double* %36, align 8
  %461 = load double, double* %36, align 8
  %462 = load i32, i32* %28, align 4
  %463 = ashr i32 %462, 1
  %464 = or i32 %463, 536870912
  %465 = add nsw i32 %464, 524288
  %466 = load i32, i32* %23, align 4
  %467 = shl i32 %466, 18
  %468 = add nsw i32 %465, %467
  %469 = call i32 @SET_HIGH_WORD(double %461, i32 %468)
  %470 = load double, double* %7, align 8
  %471 = load double, double* %36, align 8
  %472 = load double*, double** @bp, align 8
  %473 = load i32, i32* %23, align 4
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds double, double* %472, i64 %474
  %476 = load double, double* %475, align 8
  %477 = fsub double %471, %476
  %478 = fsub double %470, %477
  store double %478, double* %37, align 8
  %479 = load double, double* %19, align 8
  %480 = load double, double* %18, align 8
  %481 = load double, double* %34, align 8
  %482 = load double, double* %36, align 8
  %483 = fmul double %481, %482
  %484 = fsub double %480, %483
  %485 = load double, double* %34, align 8
  %486 = load double, double* %37, align 8
  %487 = fmul double %485, %486
  %488 = fsub double %484, %487
  %489 = fmul double %479, %488
  store double %489, double* %35, align 8
  %490 = load double, double* %32, align 8
  %491 = load double, double* %32, align 8
  %492 = fmul double %490, %491
  store double %492, double* %33, align 8
  %493 = load double, double* %33, align 8
  %494 = load double, double* %33, align 8
  %495 = fmul double %493, %494
  %496 = load double, double* @L1, align 8
  %497 = load double, double* %33, align 8
  %498 = load double, double* @L2, align 8
  %499 = load double, double* %33, align 8
  %500 = load double, double* @L3, align 8
  %501 = load double, double* %33, align 8
  %502 = load double, double* @L4, align 8
  %503 = load double, double* %33, align 8
  %504 = load double, double* @L5, align 8
  %505 = load double, double* %33, align 8
  %506 = load double, double* @L6, align 8
  %507 = fmul double %505, %506
  %508 = fadd double %504, %507
  %509 = fmul double %503, %508
  %510 = fadd double %502, %509
  %511 = fmul double %501, %510
  %512 = fadd double %500, %511
  %513 = fmul double %499, %512
  %514 = fadd double %498, %513
  %515 = fmul double %497, %514
  %516 = fadd double %496, %515
  %517 = fmul double %495, %516
  store double %517, double* %15, align 8
  %518 = load double, double* %35, align 8
  %519 = load double, double* %34, align 8
  %520 = load double, double* %32, align 8
  %521 = fadd double %519, %520
  %522 = fmul double %518, %521
  %523 = load double, double* %15, align 8
  %524 = fadd double %523, %522
  store double %524, double* %15, align 8
  %525 = load double, double* %34, align 8
  %526 = load double, double* %34, align 8
  %527 = fmul double %525, %526
  store double %527, double* %33, align 8
  %528 = load double, double* %33, align 8
  %529 = fadd double 3.000000e+00, %528
  %530 = load double, double* %15, align 8
  %531 = fadd double %529, %530
  store double %531, double* %36, align 8
  %532 = load double, double* %36, align 8
  %533 = call i32 @SET_LOW_WORD(double %532, i32 0)
  %534 = load double, double* %15, align 8
  %535 = load double, double* %36, align 8
  %536 = fsub double %535, 3.000000e+00
  %537 = load double, double* %33, align 8
  %538 = fsub double %536, %537
  %539 = fsub double %534, %538
  store double %539, double* %37, align 8
  %540 = load double, double* %34, align 8
  %541 = load double, double* %36, align 8
  %542 = fmul double %540, %541
  store double %542, double* %18, align 8
  %543 = load double, double* %35, align 8
  %544 = load double, double* %36, align 8
  %545 = fmul double %543, %544
  %546 = load double, double* %37, align 8
  %547 = load double, double* %32, align 8
  %548 = fmul double %546, %547
  %549 = fadd double %545, %548
  store double %549, double* %19, align 8
  %550 = load double, double* %18, align 8
  %551 = load double, double* %19, align 8
  %552 = fadd double %550, %551
  store double %552, double* %10, align 8
  %553 = load double, double* %10, align 8
  %554 = call i32 @SET_LOW_WORD(double %553, i32 0)
  %555 = load double, double* %19, align 8
  %556 = load double, double* %10, align 8
  %557 = load double, double* %18, align 8
  %558 = fsub double %556, %557
  %559 = fsub double %555, %558
  store double %559, double* %11, align 8
  %560 = load double, double* @cp_h, align 8
  %561 = load double, double* %10, align 8
  %562 = fmul double %560, %561
  store double %562, double* %8, align 8
  %563 = load double, double* @cp_l, align 8
  %564 = load double, double* %10, align 8
  %565 = fmul double %563, %564
  %566 = load double, double* %11, align 8
  %567 = load double, double* @cp, align 8
  %568 = fmul double %566, %567
  %569 = fadd double %565, %568
  %570 = load double*, double** @dp_l, align 8
  %571 = load i32, i32* %23, align 4
  %572 = sext i32 %571 to i64
  %573 = getelementptr inbounds double, double* %570, i64 %572
  %574 = load double, double* %573, align 8
  %575 = fadd double %569, %574
  store double %575, double* %9, align 8
  %576 = load i32, i32* %25, align 4
  %577 = sitofp i32 %576 to double
  store double %577, double* %17, align 8
  %578 = load double, double* %8, align 8
  %579 = load double, double* %9, align 8
  %580 = fadd double %578, %579
  %581 = load double*, double** @dp_h, align 8
  %582 = load i32, i32* %23, align 4
  %583 = sext i32 %582 to i64
  %584 = getelementptr inbounds double, double* %581, i64 %583
  %585 = load double, double* %584, align 8
  %586 = fadd double %580, %585
  %587 = load double, double* %17, align 8
  %588 = fadd double %586, %587
  store double %588, double* %13, align 8
  %589 = load double, double* %13, align 8
  %590 = call i32 @SET_LOW_WORD(double %589, i32 0)
  %591 = load double, double* %9, align 8
  %592 = load double, double* %13, align 8
  %593 = load double, double* %17, align 8
  %594 = fsub double %592, %593
  %595 = load double*, double** @dp_h, align 8
  %596 = load i32, i32* %23, align 4
  %597 = sext i32 %596 to i64
  %598 = getelementptr inbounds double, double* %595, i64 %597
  %599 = load double, double* %598, align 8
  %600 = fsub double %594, %599
  %601 = load double, double* %8, align 8
  %602 = fsub double %600, %601
  %603 = fsub double %591, %602
  store double %603, double* %14, align 8
  br label %604

604:                                              ; preds = %434, %362
  %605 = load double, double* %5, align 8
  store double %605, double* %12, align 8
  %606 = load double, double* %12, align 8
  %607 = call i32 @SET_LOW_WORD(double %606, i32 0)
  %608 = load double, double* %5, align 8
  %609 = load double, double* %12, align 8
  %610 = fsub double %608, %609
  %611 = load double, double* %13, align 8
  %612 = fmul double %610, %611
  %613 = load double, double* %5, align 8
  %614 = load double, double* %14, align 8
  %615 = fmul double %613, %614
  %616 = fadd double %612, %615
  store double %616, double* %11, align 8
  %617 = load double, double* %12, align 8
  %618 = load double, double* %13, align 8
  %619 = fmul double %617, %618
  store double %619, double* %10, align 8
  %620 = load double, double* %11, align 8
  %621 = load double, double* %10, align 8
  %622 = fadd double %620, %621
  store double %622, double* %6, align 8
  %623 = load i32, i32* %22, align 4
  %624 = load i32, i32* %21, align 4
  %625 = load double, double* %6, align 8
  %626 = call i32 @EXTRACT_WORDS(i32 %623, i32 %624, double %625)
  %627 = load i32, i32* %22, align 4
  %628 = icmp sge i32 %627, 1083179008
  br i1 %628, label %629, label %657

629:                                              ; preds = %604
  %630 = load i32, i32* %22, align 4
  %631 = sub nsw i32 %630, 1083179008
  %632 = load i32, i32* %21, align 4
  %633 = or i32 %631, %632
  %634 = icmp ne i32 %633, 0
  br i1 %634, label %635, label %641

635:                                              ; preds = %629
  %636 = load double, double* %16, align 8
  %637 = load double, double* @huge, align 8
  %638 = fmul double %636, %637
  %639 = load double, double* @huge, align 8
  %640 = fmul double %638, %639
  store double %640, double* %3, align 8
  br label %821

641:                                              ; preds = %629
  %642 = load double, double* %11, align 8
  %643 = load double, double* @ovt, align 8
  %644 = fadd double %642, %643
  %645 = load double, double* %6, align 8
  %646 = load double, double* %10, align 8
  %647 = fsub double %645, %646
  %648 = fcmp ogt double %644, %647
  br i1 %648, label %649, label %655

649:                                              ; preds = %641
  %650 = load double, double* %16, align 8
  %651 = load double, double* @huge, align 8
  %652 = fmul double %650, %651
  %653 = load double, double* @huge, align 8
  %654 = fmul double %652, %653
  store double %654, double* %3, align 8
  br label %821

655:                                              ; preds = %641
  br label %656

656:                                              ; preds = %655
  br label %688

657:                                              ; preds = %604
  %658 = load i32, i32* %22, align 4
  %659 = and i32 %658, 2147483647
  %660 = icmp sge i32 %659, 1083231232
  br i1 %660, label %661, label %687

661:                                              ; preds = %657
  %662 = load i32, i32* %22, align 4
  %663 = sub i32 %662, -1064252416
  %664 = load i32, i32* %21, align 4
  %665 = or i32 %663, %664
  %666 = icmp ne i32 %665, 0
  br i1 %666, label %667, label %673

667:                                              ; preds = %661
  %668 = load double, double* %16, align 8
  %669 = load double, double* @tiny, align 8
  %670 = fmul double %668, %669
  %671 = load double, double* @tiny, align 8
  %672 = fmul double %670, %671
  store double %672, double* %3, align 8
  br label %821

673:                                              ; preds = %661
  %674 = load double, double* %11, align 8
  %675 = load double, double* %6, align 8
  %676 = load double, double* %10, align 8
  %677 = fsub double %675, %676
  %678 = fcmp ole double %674, %677
  br i1 %678, label %679, label %685

679:                                              ; preds = %673
  %680 = load double, double* %16, align 8
  %681 = load double, double* @tiny, align 8
  %682 = fmul double %680, %681
  %683 = load double, double* @tiny, align 8
  %684 = fmul double %682, %683
  store double %684, double* %3, align 8
  br label %821

685:                                              ; preds = %673
  br label %686

686:                                              ; preds = %685
  br label %687

687:                                              ; preds = %686, %657
  br label %688

688:                                              ; preds = %687, %656
  %689 = load i32, i32* %22, align 4
  %690 = and i32 %689, 2147483647
  store i32 %690, i32* %21, align 4
  %691 = load i32, i32* %21, align 4
  %692 = ashr i32 %691, 20
  %693 = sub nsw i32 %692, 1023
  store i32 %693, i32* %23, align 4
  store i32 0, i32* %25, align 4
  %694 = load i32, i32* %21, align 4
  %695 = icmp sgt i32 %694, 1071644672
  br i1 %695, label %696, label %729

696:                                              ; preds = %688
  %697 = load i32, i32* %22, align 4
  %698 = load i32, i32* %23, align 4
  %699 = add nsw i32 %698, 1
  %700 = ashr i32 1048576, %699
  %701 = add nsw i32 %697, %700
  store i32 %701, i32* %25, align 4
  %702 = load i32, i32* %25, align 4
  %703 = and i32 %702, 2147483647
  %704 = ashr i32 %703, 20
  %705 = sub nsw i32 %704, 1023
  store i32 %705, i32* %23, align 4
  %706 = load double, double* @zero, align 8
  store double %706, double* %17, align 8
  %707 = load double, double* %17, align 8
  %708 = load i32, i32* %25, align 4
  %709 = load i32, i32* %23, align 4
  %710 = ashr i32 1048575, %709
  %711 = xor i32 %710, -1
  %712 = and i32 %708, %711
  %713 = call i32 @SET_HIGH_WORD(double %707, i32 %712)
  %714 = load i32, i32* %25, align 4
  %715 = and i32 %714, 1048575
  %716 = or i32 %715, 1048576
  %717 = load i32, i32* %23, align 4
  %718 = sub nsw i32 20, %717
  %719 = ashr i32 %716, %718
  store i32 %719, i32* %25, align 4
  %720 = load i32, i32* %22, align 4
  %721 = icmp slt i32 %720, 0
  br i1 %721, label %722, label %725

722:                                              ; preds = %696
  %723 = load i32, i32* %25, align 4
  %724 = sub nsw i32 0, %723
  store i32 %724, i32* %25, align 4
  br label %725

725:                                              ; preds = %722, %696
  %726 = load double, double* %17, align 8
  %727 = load double, double* %10, align 8
  %728 = fsub double %727, %726
  store double %728, double* %10, align 8
  br label %729

729:                                              ; preds = %725, %688
  %730 = load double, double* %11, align 8
  %731 = load double, double* %10, align 8
  %732 = fadd double %730, %731
  store double %732, double* %17, align 8
  %733 = load double, double* %17, align 8
  %734 = call i32 @SET_LOW_WORD(double %733, i32 0)
  %735 = load double, double* %17, align 8
  %736 = load double, double* @lg2_h, align 8
  %737 = fmul double %735, %736
  store double %737, double* %18, align 8
  %738 = load double, double* %11, align 8
  %739 = load double, double* %17, align 8
  %740 = load double, double* %10, align 8
  %741 = fsub double %739, %740
  %742 = fsub double %738, %741
  %743 = load double, double* @lg2, align 8
  %744 = fmul double %742, %743
  %745 = load double, double* %17, align 8
  %746 = load double, double* @lg2_l, align 8
  %747 = fmul double %745, %746
  %748 = fadd double %744, %747
  store double %748, double* %19, align 8
  %749 = load double, double* %18, align 8
  %750 = load double, double* %19, align 8
  %751 = fadd double %749, %750
  store double %751, double* %6, align 8
  %752 = load double, double* %19, align 8
  %753 = load double, double* %6, align 8
  %754 = load double, double* %18, align 8
  %755 = fsub double %753, %754
  %756 = fsub double %752, %755
  store double %756, double* %20, align 8
  %757 = load double, double* %6, align 8
  %758 = load double, double* %6, align 8
  %759 = fmul double %757, %758
  store double %759, double* %17, align 8
  %760 = load double, double* %6, align 8
  %761 = load double, double* %17, align 8
  %762 = load double, double* @P1, align 8
  %763 = load double, double* %17, align 8
  %764 = load double, double* @P2, align 8
  %765 = load double, double* %17, align 8
  %766 = load double, double* @P3, align 8
  %767 = load double, double* %17, align 8
  %768 = load double, double* @P4, align 8
  %769 = load double, double* %17, align 8
  %770 = load double, double* @P5, align 8
  %771 = fmul double %769, %770
  %772 = fadd double %768, %771
  %773 = fmul double %767, %772
  %774 = fadd double %766, %773
  %775 = fmul double %765, %774
  %776 = fadd double %764, %775
  %777 = fmul double %763, %776
  %778 = fadd double %762, %777
  %779 = fmul double %761, %778
  %780 = fsub double %760, %779
  store double %780, double* %13, align 8
  %781 = load double, double* %6, align 8
  %782 = load double, double* %13, align 8
  %783 = fmul double %781, %782
  %784 = load double, double* %13, align 8
  %785 = load double, double* @two, align 8
  %786 = fsub double %784, %785
  %787 = fdiv double %783, %786
  %788 = load double, double* %20, align 8
  %789 = load double, double* %6, align 8
  %790 = load double, double* %20, align 8
  %791 = fmul double %789, %790
  %792 = fadd double %788, %791
  %793 = fsub double %787, %792
  store double %793, double* %15, align 8
  %794 = load double, double* @one, align 8
  %795 = load double, double* %15, align 8
  %796 = load double, double* %6, align 8
  %797 = fsub double %795, %796
  %798 = fsub double %794, %797
  store double %798, double* %6, align 8
  %799 = load i32, i32* %22, align 4
  %800 = load double, double* %6, align 8
  %801 = call i32 @GET_HIGH_WORD(i32 %799, double %800)
  %802 = load i32, i32* %25, align 4
  %803 = shl i32 %802, 20
  %804 = load i32, i32* %22, align 4
  %805 = add nsw i32 %804, %803
  store i32 %805, i32* %22, align 4
  %806 = load i32, i32* %22, align 4
  %807 = ashr i32 %806, 20
  %808 = icmp sle i32 %807, 0
  br i1 %808, label %809, label %813

809:                                              ; preds = %729
  %810 = load double, double* %6, align 8
  %811 = load i32, i32* %25, align 4
  %812 = call double @scalbn(double %810, i32 %811) #4
  store double %812, double* %6, align 8
  br label %817

813:                                              ; preds = %729
  %814 = load double, double* %6, align 8
  %815 = load i32, i32* %22, align 4
  %816 = call i32 @SET_HIGH_WORD(double %814, i32 %815)
  br label %817

817:                                              ; preds = %813, %809
  %818 = load double, double* %16, align 8
  %819 = load double, double* %6, align 8
  %820 = fmul double %818, %819
  store double %820, double* %3, align 8
  br label %821

821:                                              ; preds = %817, %679, %667, %649, %635, %360, %340, %319, %303, %265, %254, %202, %192, %187, %183, %175, %165, %153, %82, %62, %54
  %822 = load double, double* %3, align 8
  ret double %822
}

declare dso_local i32 @EXTRACT_WORDS(i32, i32, double) #1

declare dso_local double @nan_mix(double, double) #1

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #3

declare dso_local i32 @SET_LOW_WORD(double, i32) #1

declare dso_local i32 @GET_HIGH_WORD(i32, double) #1

declare dso_local i32 @SET_HIGH_WORD(double, i32) #1

; Function Attrs: nounwind
declare dso_local double @scalbn(double, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
