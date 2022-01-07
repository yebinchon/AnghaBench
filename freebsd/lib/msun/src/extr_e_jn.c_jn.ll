; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_jn.c_jn.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_jn.c_jn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@zero = common dso_local global double 0.000000e+00, align 8
@invsqrtpi = common dso_local global double 0.000000e+00, align 8
@one = common dso_local global i32 0, align 4
@two = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @__ieee754_jn(i32 %0, double %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
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
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store double %1, double* %5, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load double, double* %5, align 8
  %30 = call i32 @EXTRACT_WORDS(i32 %27, i32 %28, double %29)
  %31 = load i32, i32* %7, align 4
  %32 = and i32 2147483647, %31
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = sub nsw i32 0, %35
  %37 = or i32 %34, %36
  %38 = ashr i32 %37, 31
  %39 = or i32 %33, %38
  %40 = icmp sgt i32 %39, 2146435072
  br i1 %40, label %41, label %45

41:                                               ; preds = %2
  %42 = load double, double* %5, align 8
  %43 = load double, double* %5, align 8
  %44 = fadd double %42, %43
  store double %44, double* %3, align 8
  br label %361

45:                                               ; preds = %2
  %46 = load i32, i32* %4, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %45
  %49 = load i32, i32* %4, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  %51 = load double, double* %5, align 8
  %52 = fneg double %51
  store double %52, double* %5, align 8
  %53 = load i32, i32* %7, align 4
  %54 = xor i32 %53, -2147483648
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %48, %45
  %56 = load i32, i32* %4, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load double, double* %5, align 8
  %60 = call double @__ieee754_j0(double %59)
  store double %60, double* %3, align 8
  br label %361

61:                                               ; preds = %55
  %62 = load i32, i32* %4, align 4
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load double, double* %5, align 8
  %66 = call double @__ieee754_j1(double %65)
  store double %66, double* %3, align 8
  br label %361

67:                                               ; preds = %61
  %68 = load i32, i32* %4, align 4
  %69 = and i32 %68, 1
  %70 = load i32, i32* %7, align 4
  %71 = ashr i32 %70, 31
  %72 = and i32 %69, %71
  store i32 %72, i32* %10, align 4
  %73 = load double, double* %5, align 8
  %74 = call double @llvm.fabs.f64(double %73)
  store double %74, double* %5, align 8
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %9, align 4
  %77 = or i32 %75, %76
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %67
  %80 = load i32, i32* %8, align 4
  %81 = icmp sge i32 %80, 2146435072
  br i1 %81, label %82, label %84

82:                                               ; preds = %79, %67
  %83 = load double, double* @zero, align 8
  store double %83, double* %12, align 8
  br label %353

84:                                               ; preds = %79
  %85 = load i32, i32* %4, align 4
  %86 = sitofp i32 %85 to double
  %87 = load double, double* %5, align 8
  %88 = fcmp ole double %86, %87
  br i1 %88, label %89, label %149

89:                                               ; preds = %84
  %90 = load i32, i32* %8, align 4
  %91 = icmp sge i32 %90, 1389363200
  br i1 %91, label %92, label %122

92:                                               ; preds = %89
  %93 = load double, double* %5, align 8
  %94 = call i32 @sincos(double %93, double* %14, double* %13)
  %95 = load i32, i32* %4, align 4
  %96 = and i32 %95, 3
  switch i32 %96, label %115 [
    i32 0, label %97
    i32 1, label %101
    i32 2, label %106
    i32 3, label %111
  ]

97:                                               ; preds = %92
  %98 = load double, double* %13, align 8
  %99 = load double, double* %14, align 8
  %100 = fadd double %98, %99
  store double %100, double* %15, align 8
  br label %115

101:                                              ; preds = %92
  %102 = load double, double* %13, align 8
  %103 = fneg double %102
  %104 = load double, double* %14, align 8
  %105 = fadd double %103, %104
  store double %105, double* %15, align 8
  br label %115

106:                                              ; preds = %92
  %107 = load double, double* %13, align 8
  %108 = fneg double %107
  %109 = load double, double* %14, align 8
  %110 = fsub double %108, %109
  store double %110, double* %15, align 8
  br label %115

111:                                              ; preds = %92
  %112 = load double, double* %13, align 8
  %113 = load double, double* %14, align 8
  %114 = fsub double %112, %113
  store double %114, double* %15, align 8
  br label %115

115:                                              ; preds = %92, %111, %106, %101, %97
  %116 = load double, double* @invsqrtpi, align 8
  %117 = load double, double* %15, align 8
  %118 = fmul double %116, %117
  %119 = load double, double* %5, align 8
  %120 = call double @sqrt(double %119) #4
  %121 = fdiv double %118, %120
  store double %121, double* %12, align 8
  br label %148

122:                                              ; preds = %89
  %123 = load double, double* %5, align 8
  %124 = call double @__ieee754_j0(double %123)
  store double %124, double* %11, align 8
  %125 = load double, double* %5, align 8
  %126 = call double @__ieee754_j1(double %125)
  store double %126, double* %12, align 8
  store i32 1, i32* %6, align 4
  br label %127

127:                                              ; preds = %144, %122
  %128 = load i32, i32* %6, align 4
  %129 = load i32, i32* %4, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %147

131:                                              ; preds = %127
  %132 = load double, double* %12, align 8
  store double %132, double* %15, align 8
  %133 = load double, double* %12, align 8
  %134 = load i32, i32* %6, align 4
  %135 = load i32, i32* %6, align 4
  %136 = add nsw i32 %134, %135
  %137 = sitofp i32 %136 to double
  %138 = load double, double* %5, align 8
  %139 = fdiv double %137, %138
  %140 = fmul double %133, %139
  %141 = load double, double* %11, align 8
  %142 = fsub double %140, %141
  store double %142, double* %12, align 8
  %143 = load double, double* %15, align 8
  store double %143, double* %11, align 8
  br label %144

144:                                              ; preds = %131
  %145 = load i32, i32* %6, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %6, align 4
  br label %127

147:                                              ; preds = %127
  br label %148

148:                                              ; preds = %147, %115
  br label %352

149:                                              ; preds = %84
  %150 = load i32, i32* %8, align 4
  %151 = icmp slt i32 %150, 1041235968
  br i1 %151, label %152, label %183

152:                                              ; preds = %149
  %153 = load i32, i32* %4, align 4
  %154 = icmp sgt i32 %153, 33
  br i1 %154, label %155, label %157

155:                                              ; preds = %152
  %156 = load double, double* @zero, align 8
  store double %156, double* %12, align 8
  br label %182

157:                                              ; preds = %152
  %158 = load double, double* %5, align 8
  %159 = fmul double %158, 5.000000e-01
  store double %159, double* %15, align 8
  %160 = load double, double* %15, align 8
  store double %160, double* %12, align 8
  %161 = load i32, i32* @one, align 4
  %162 = sitofp i32 %161 to double
  store double %162, double* %11, align 8
  store i32 2, i32* %6, align 4
  br label %163

163:                                              ; preds = %175, %157
  %164 = load i32, i32* %6, align 4
  %165 = load i32, i32* %4, align 4
  %166 = icmp sle i32 %164, %165
  br i1 %166, label %167, label %178

167:                                              ; preds = %163
  %168 = load i32, i32* %6, align 4
  %169 = sitofp i32 %168 to double
  %170 = load double, double* %11, align 8
  %171 = fmul double %170, %169
  store double %171, double* %11, align 8
  %172 = load double, double* %15, align 8
  %173 = load double, double* %12, align 8
  %174 = fmul double %173, %172
  store double %174, double* %12, align 8
  br label %175

175:                                              ; preds = %167
  %176 = load i32, i32* %6, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %6, align 4
  br label %163

178:                                              ; preds = %163
  %179 = load double, double* %12, align 8
  %180 = load double, double* %11, align 8
  %181 = fdiv double %179, %180
  store double %181, double* %12, align 8
  br label %182

182:                                              ; preds = %178, %155
  br label %351

183:                                              ; preds = %149
  %184 = load i32, i32* %4, align 4
  %185 = load i32, i32* %4, align 4
  %186 = add nsw i32 %184, %185
  %187 = sitofp i32 %186 to double
  %188 = load double, double* %5, align 8
  %189 = fdiv double %187, %188
  store double %189, double* %18, align 8
  %190 = load double, double* %5, align 8
  %191 = fdiv double 2.000000e+00, %190
  store double %191, double* %23, align 8
  %192 = load double, double* %18, align 8
  store double %192, double* %21, align 8
  %193 = load double, double* %18, align 8
  %194 = load double, double* %23, align 8
  %195 = fadd double %193, %194
  store double %195, double* %17, align 8
  %196 = load double, double* %18, align 8
  %197 = load double, double* %17, align 8
  %198 = fmul double %196, %197
  %199 = fsub double %198, 1.000000e+00
  store double %199, double* %22, align 8
  store i32 1, i32* %25, align 4
  br label %200

200:                                              ; preds = %203, %183
  %201 = load double, double* %22, align 8
  %202 = fcmp olt double %201, 1.000000e+09
  br i1 %202, label %203, label %216

203:                                              ; preds = %200
  %204 = load i32, i32* %25, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %25, align 4
  %206 = load double, double* %23, align 8
  %207 = load double, double* %17, align 8
  %208 = fadd double %207, %206
  store double %208, double* %17, align 8
  %209 = load double, double* %17, align 8
  %210 = load double, double* %22, align 8
  %211 = fmul double %209, %210
  %212 = load double, double* %21, align 8
  %213 = fsub double %211, %212
  store double %213, double* %24, align 8
  %214 = load double, double* %22, align 8
  store double %214, double* %21, align 8
  %215 = load double, double* %24, align 8
  store double %215, double* %22, align 8
  br label %200

216:                                              ; preds = %200
  %217 = load i32, i32* %4, align 4
  %218 = load i32, i32* %4, align 4
  %219 = add nsw i32 %217, %218
  store i32 %219, i32* %26, align 4
  %220 = load double, double* @zero, align 8
  store double %220, double* %19, align 8
  %221 = load i32, i32* %4, align 4
  %222 = load i32, i32* %25, align 4
  %223 = add nsw i32 %221, %222
  %224 = mul nsw i32 2, %223
  store i32 %224, i32* %6, align 4
  br label %225

225:                                              ; preds = %239, %216
  %226 = load i32, i32* %6, align 4
  %227 = load i32, i32* %26, align 4
  %228 = icmp sge i32 %226, %227
  br i1 %228, label %229, label %242

229:                                              ; preds = %225
  %230 = load i32, i32* @one, align 4
  %231 = sitofp i32 %230 to double
  %232 = load i32, i32* %6, align 4
  %233 = sitofp i32 %232 to double
  %234 = load double, double* %5, align 8
  %235 = fdiv double %233, %234
  %236 = load double, double* %19, align 8
  %237 = fsub double %235, %236
  %238 = fdiv double %231, %237
  store double %238, double* %19, align 8
  br label %239

239:                                              ; preds = %229
  %240 = load i32, i32* %6, align 4
  %241 = sub nsw i32 %240, 2
  store i32 %241, i32* %6, align 4
  br label %225

242:                                              ; preds = %225
  %243 = load double, double* %19, align 8
  store double %243, double* %11, align 8
  %244 = load i32, i32* @one, align 4
  %245 = sitofp i32 %244 to double
  store double %245, double* %12, align 8
  %246 = load i32, i32* %4, align 4
  %247 = sitofp i32 %246 to double
  store double %247, double* %24, align 8
  %248 = load double, double* @two, align 8
  %249 = load double, double* %5, align 8
  %250 = fdiv double %248, %249
  store double %250, double* %20, align 8
  %251 = load double, double* %24, align 8
  %252 = load double, double* %20, align 8
  %253 = load double, double* %24, align 8
  %254 = fmul double %252, %253
  %255 = call double @llvm.fabs.f64(double %254)
  %256 = call double @__ieee754_log(double %255)
  %257 = fmul double %251, %256
  store double %257, double* %24, align 8
  %258 = load double, double* %24, align 8
  %259 = fcmp olt double %258, 0x40862E42FEFA39EF
  br i1 %259, label %260, label %288

260:                                              ; preds = %242
  %261 = load i32, i32* %4, align 4
  %262 = sub nsw i32 %261, 1
  store i32 %262, i32* %6, align 4
  %263 = load i32, i32* %6, align 4
  %264 = load i32, i32* %6, align 4
  %265 = add nsw i32 %263, %264
  %266 = sitofp i32 %265 to double
  store double %266, double* %16, align 8
  br label %267

267:                                              ; preds = %284, %260
  %268 = load i32, i32* %6, align 4
  %269 = icmp sgt i32 %268, 0
  br i1 %269, label %270, label %287

270:                                              ; preds = %267
  %271 = load double, double* %12, align 8
  store double %271, double* %15, align 8
  %272 = load double, double* %16, align 8
  %273 = load double, double* %12, align 8
  %274 = fmul double %273, %272
  store double %274, double* %12, align 8
  %275 = load double, double* %12, align 8
  %276 = load double, double* %5, align 8
  %277 = fdiv double %275, %276
  %278 = load double, double* %11, align 8
  %279 = fsub double %277, %278
  store double %279, double* %12, align 8
  %280 = load double, double* %15, align 8
  store double %280, double* %11, align 8
  %281 = load double, double* @two, align 8
  %282 = load double, double* %16, align 8
  %283 = fsub double %282, %281
  store double %283, double* %16, align 8
  br label %284

284:                                              ; preds = %270
  %285 = load i32, i32* %6, align 4
  %286 = add nsw i32 %285, -1
  store i32 %286, i32* %6, align 4
  br label %267

287:                                              ; preds = %267
  br label %328

288:                                              ; preds = %242
  %289 = load i32, i32* %4, align 4
  %290 = sub nsw i32 %289, 1
  store i32 %290, i32* %6, align 4
  %291 = load i32, i32* %6, align 4
  %292 = load i32, i32* %6, align 4
  %293 = add nsw i32 %291, %292
  %294 = sitofp i32 %293 to double
  store double %294, double* %16, align 8
  br label %295

295:                                              ; preds = %324, %288
  %296 = load i32, i32* %6, align 4
  %297 = icmp sgt i32 %296, 0
  br i1 %297, label %298, label %327

298:                                              ; preds = %295
  %299 = load double, double* %12, align 8
  store double %299, double* %15, align 8
  %300 = load double, double* %16, align 8
  %301 = load double, double* %12, align 8
  %302 = fmul double %301, %300
  store double %302, double* %12, align 8
  %303 = load double, double* %12, align 8
  %304 = load double, double* %5, align 8
  %305 = fdiv double %303, %304
  %306 = load double, double* %11, align 8
  %307 = fsub double %305, %306
  store double %307, double* %12, align 8
  %308 = load double, double* %15, align 8
  store double %308, double* %11, align 8
  %309 = load double, double* @two, align 8
  %310 = load double, double* %16, align 8
  %311 = fsub double %310, %309
  store double %311, double* %16, align 8
  %312 = load double, double* %12, align 8
  %313 = fcmp ogt double %312, 1.000000e+100
  br i1 %313, label %314, label %323

314:                                              ; preds = %298
  %315 = load double, double* %12, align 8
  %316 = load double, double* %11, align 8
  %317 = fdiv double %316, %315
  store double %317, double* %11, align 8
  %318 = load double, double* %12, align 8
  %319 = load double, double* %19, align 8
  %320 = fdiv double %319, %318
  store double %320, double* %19, align 8
  %321 = load i32, i32* @one, align 4
  %322 = sitofp i32 %321 to double
  store double %322, double* %12, align 8
  br label %323

323:                                              ; preds = %314, %298
  br label %324

324:                                              ; preds = %323
  %325 = load i32, i32* %6, align 4
  %326 = add nsw i32 %325, -1
  store i32 %326, i32* %6, align 4
  br label %295

327:                                              ; preds = %295
  br label %328

328:                                              ; preds = %327, %287
  %329 = load double, double* %5, align 8
  %330 = call double @__ieee754_j0(double %329)
  store double %330, double* %17, align 8
  %331 = load double, double* %5, align 8
  %332 = call double @__ieee754_j1(double %331)
  store double %332, double* %18, align 8
  %333 = load double, double* %17, align 8
  %334 = call double @llvm.fabs.f64(double %333)
  %335 = load double, double* %18, align 8
  %336 = call double @llvm.fabs.f64(double %335)
  %337 = fcmp oge double %334, %336
  br i1 %337, label %338, label %344

338:                                              ; preds = %328
  %339 = load double, double* %19, align 8
  %340 = load double, double* %17, align 8
  %341 = fmul double %339, %340
  %342 = load double, double* %12, align 8
  %343 = fdiv double %341, %342
  store double %343, double* %12, align 8
  br label %350

344:                                              ; preds = %328
  %345 = load double, double* %19, align 8
  %346 = load double, double* %18, align 8
  %347 = fmul double %345, %346
  %348 = load double, double* %11, align 8
  %349 = fdiv double %347, %348
  store double %349, double* %12, align 8
  br label %350

350:                                              ; preds = %344, %338
  br label %351

351:                                              ; preds = %350, %182
  br label %352

352:                                              ; preds = %351, %148
  br label %353

353:                                              ; preds = %352, %82
  %354 = load i32, i32* %10, align 4
  %355 = icmp eq i32 %354, 1
  br i1 %355, label %356, label %359

356:                                              ; preds = %353
  %357 = load double, double* %12, align 8
  %358 = fneg double %357
  store double %358, double* %3, align 8
  br label %361

359:                                              ; preds = %353
  %360 = load double, double* %12, align 8
  store double %360, double* %3, align 8
  br label %361

361:                                              ; preds = %359, %356, %64, %58, %41
  %362 = load double, double* %3, align 8
  ret double %362
}

declare dso_local i32 @EXTRACT_WORDS(i32, i32, double) #1

declare dso_local double @__ieee754_j0(double) #1

declare dso_local double @__ieee754_j1(double) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #2

declare dso_local i32 @sincos(double, double*, double*) #1

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #3

declare dso_local double @__ieee754_log(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
