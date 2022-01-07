; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_erf.c_erfc.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_erf.c_erfc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@one = common dso_local global double 0.000000e+00, align 8
@pp0 = common dso_local global double 0.000000e+00, align 8
@pp1 = common dso_local global double 0.000000e+00, align 8
@pp2 = common dso_local global double 0.000000e+00, align 8
@pp3 = common dso_local global double 0.000000e+00, align 8
@pp4 = common dso_local global double 0.000000e+00, align 8
@qq1 = common dso_local global double 0.000000e+00, align 8
@qq2 = common dso_local global double 0.000000e+00, align 8
@qq3 = common dso_local global double 0.000000e+00, align 8
@qq4 = common dso_local global double 0.000000e+00, align 8
@qq5 = common dso_local global double 0.000000e+00, align 8
@half = common dso_local global double 0.000000e+00, align 8
@pa0 = common dso_local global double 0.000000e+00, align 8
@pa1 = common dso_local global double 0.000000e+00, align 8
@pa2 = common dso_local global double 0.000000e+00, align 8
@pa3 = common dso_local global double 0.000000e+00, align 8
@pa4 = common dso_local global double 0.000000e+00, align 8
@pa5 = common dso_local global double 0.000000e+00, align 8
@pa6 = common dso_local global double 0.000000e+00, align 8
@qa1 = common dso_local global double 0.000000e+00, align 8
@qa2 = common dso_local global double 0.000000e+00, align 8
@qa3 = common dso_local global double 0.000000e+00, align 8
@qa4 = common dso_local global double 0.000000e+00, align 8
@qa5 = common dso_local global double 0.000000e+00, align 8
@qa6 = common dso_local global double 0.000000e+00, align 8
@erx = common dso_local global double 0.000000e+00, align 8
@ra0 = common dso_local global double 0.000000e+00, align 8
@ra1 = common dso_local global double 0.000000e+00, align 8
@ra2 = common dso_local global double 0.000000e+00, align 8
@ra3 = common dso_local global double 0.000000e+00, align 8
@ra4 = common dso_local global double 0.000000e+00, align 8
@ra5 = common dso_local global double 0.000000e+00, align 8
@ra6 = common dso_local global double 0.000000e+00, align 8
@ra7 = common dso_local global double 0.000000e+00, align 8
@sa1 = common dso_local global double 0.000000e+00, align 8
@sa2 = common dso_local global double 0.000000e+00, align 8
@sa3 = common dso_local global double 0.000000e+00, align 8
@sa4 = common dso_local global double 0.000000e+00, align 8
@sa5 = common dso_local global double 0.000000e+00, align 8
@sa6 = common dso_local global double 0.000000e+00, align 8
@sa7 = common dso_local global double 0.000000e+00, align 8
@sa8 = common dso_local global double 0.000000e+00, align 8
@two = common dso_local global double 0.000000e+00, align 8
@tiny = common dso_local global double 0.000000e+00, align 8
@rb0 = common dso_local global double 0.000000e+00, align 8
@rb1 = common dso_local global double 0.000000e+00, align 8
@rb2 = common dso_local global double 0.000000e+00, align 8
@rb3 = common dso_local global double 0.000000e+00, align 8
@rb4 = common dso_local global double 0.000000e+00, align 8
@rb5 = common dso_local global double 0.000000e+00, align 8
@rb6 = common dso_local global double 0.000000e+00, align 8
@sb1 = common dso_local global double 0.000000e+00, align 8
@sb2 = common dso_local global double 0.000000e+00, align 8
@sb3 = common dso_local global double 0.000000e+00, align 8
@sb4 = common dso_local global double 0.000000e+00, align 8
@sb5 = common dso_local global double 0.000000e+00, align 8
@sb6 = common dso_local global double 0.000000e+00, align 8
@sb7 = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @erfc(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  store double %0, double* %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load double, double* %3, align 8
  %16 = call i32 @GET_HIGH_WORD(i32 %14, double %15)
  %17 = load i32, i32* %4, align 4
  %18 = and i32 %17, 2147483647
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp sge i32 %19, 2146435072
  br i1 %20, label %21, label %30

21:                                               ; preds = %1
  %22 = load i32, i32* %4, align 4
  %23 = ashr i32 %22, 31
  %24 = shl i32 %23, 1
  %25 = sitofp i32 %24 to double
  %26 = load double, double* @one, align 8
  %27 = load double, double* %3, align 8
  %28 = fdiv double %26, %27
  %29 = fadd double %25, %28
  store double %29, double* %2, align 8
  br label %372

30:                                               ; preds = %1
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %31, 1072365568
  br i1 %32, label %33, label %107

33:                                               ; preds = %30
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %34, 1013972992
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load double, double* @one, align 8
  %38 = load double, double* %3, align 8
  %39 = fsub double %37, %38
  store double %39, double* %2, align 8
  br label %372

40:                                               ; preds = %33
  %41 = load double, double* %3, align 8
  %42 = load double, double* %3, align 8
  %43 = fmul double %41, %42
  store double %43, double* %12, align 8
  %44 = load double, double* @pp0, align 8
  %45 = load double, double* %12, align 8
  %46 = load double, double* @pp1, align 8
  %47 = load double, double* %12, align 8
  %48 = load double, double* @pp2, align 8
  %49 = load double, double* %12, align 8
  %50 = load double, double* @pp3, align 8
  %51 = load double, double* %12, align 8
  %52 = load double, double* @pp4, align 8
  %53 = fmul double %51, %52
  %54 = fadd double %50, %53
  %55 = fmul double %49, %54
  %56 = fadd double %48, %55
  %57 = fmul double %47, %56
  %58 = fadd double %46, %57
  %59 = fmul double %45, %58
  %60 = fadd double %44, %59
  store double %60, double* %13, align 8
  %61 = load double, double* @one, align 8
  %62 = load double, double* %12, align 8
  %63 = load double, double* @qq1, align 8
  %64 = load double, double* %12, align 8
  %65 = load double, double* @qq2, align 8
  %66 = load double, double* %12, align 8
  %67 = load double, double* @qq3, align 8
  %68 = load double, double* %12, align 8
  %69 = load double, double* @qq4, align 8
  %70 = load double, double* %12, align 8
  %71 = load double, double* @qq5, align 8
  %72 = fmul double %70, %71
  %73 = fadd double %69, %72
  %74 = fmul double %68, %73
  %75 = fadd double %67, %74
  %76 = fmul double %66, %75
  %77 = fadd double %65, %76
  %78 = fmul double %64, %77
  %79 = fadd double %63, %78
  %80 = fmul double %62, %79
  %81 = fadd double %61, %80
  store double %81, double* %10, align 8
  %82 = load double, double* %13, align 8
  %83 = load double, double* %10, align 8
  %84 = fdiv double %82, %83
  store double %84, double* %11, align 8
  %85 = load i32, i32* %4, align 4
  %86 = icmp slt i32 %85, 1070596096
  br i1 %86, label %87, label %95

87:                                               ; preds = %40
  %88 = load double, double* @one, align 8
  %89 = load double, double* %3, align 8
  %90 = load double, double* %3, align 8
  %91 = load double, double* %11, align 8
  %92 = fmul double %90, %91
  %93 = fadd double %89, %92
  %94 = fsub double %88, %93
  store double %94, double* %2, align 8
  br label %372

95:                                               ; preds = %40
  %96 = load double, double* %3, align 8
  %97 = load double, double* %11, align 8
  %98 = fmul double %96, %97
  store double %98, double* %13, align 8
  %99 = load double, double* %3, align 8
  %100 = load double, double* @half, align 8
  %101 = fsub double %99, %100
  %102 = load double, double* %13, align 8
  %103 = fadd double %102, %101
  store double %103, double* %13, align 8
  %104 = load double, double* @half, align 8
  %105 = load double, double* %13, align 8
  %106 = fsub double %104, %105
  store double %106, double* %2, align 8
  br label %372

107:                                              ; preds = %30
  %108 = load i32, i32* %5, align 4
  %109 = icmp slt i32 %108, 1072955392
  br i1 %109, label %110, label %185

110:                                              ; preds = %107
  %111 = load double, double* %3, align 8
  %112 = call double @llvm.fabs.f64(double %111)
  %113 = load double, double* @one, align 8
  %114 = fsub double %112, %113
  store double %114, double* %10, align 8
  %115 = load double, double* @pa0, align 8
  %116 = load double, double* %10, align 8
  %117 = load double, double* @pa1, align 8
  %118 = load double, double* %10, align 8
  %119 = load double, double* @pa2, align 8
  %120 = load double, double* %10, align 8
  %121 = load double, double* @pa3, align 8
  %122 = load double, double* %10, align 8
  %123 = load double, double* @pa4, align 8
  %124 = load double, double* %10, align 8
  %125 = load double, double* @pa5, align 8
  %126 = load double, double* %10, align 8
  %127 = load double, double* @pa6, align 8
  %128 = fmul double %126, %127
  %129 = fadd double %125, %128
  %130 = fmul double %124, %129
  %131 = fadd double %123, %130
  %132 = fmul double %122, %131
  %133 = fadd double %121, %132
  %134 = fmul double %120, %133
  %135 = fadd double %119, %134
  %136 = fmul double %118, %135
  %137 = fadd double %117, %136
  %138 = fmul double %116, %137
  %139 = fadd double %115, %138
  store double %139, double* %8, align 8
  %140 = load double, double* @one, align 8
  %141 = load double, double* %10, align 8
  %142 = load double, double* @qa1, align 8
  %143 = load double, double* %10, align 8
  %144 = load double, double* @qa2, align 8
  %145 = load double, double* %10, align 8
  %146 = load double, double* @qa3, align 8
  %147 = load double, double* %10, align 8
  %148 = load double, double* @qa4, align 8
  %149 = load double, double* %10, align 8
  %150 = load double, double* @qa5, align 8
  %151 = load double, double* %10, align 8
  %152 = load double, double* @qa6, align 8
  %153 = fmul double %151, %152
  %154 = fadd double %150, %153
  %155 = fmul double %149, %154
  %156 = fadd double %148, %155
  %157 = fmul double %147, %156
  %158 = fadd double %146, %157
  %159 = fmul double %145, %158
  %160 = fadd double %144, %159
  %161 = fmul double %143, %160
  %162 = fadd double %142, %161
  %163 = fmul double %141, %162
  %164 = fadd double %140, %163
  store double %164, double* %9, align 8
  %165 = load i32, i32* %4, align 4
  %166 = icmp sge i32 %165, 0
  br i1 %166, label %167, label %176

167:                                              ; preds = %110
  %168 = load double, double* @one, align 8
  %169 = load double, double* @erx, align 8
  %170 = fsub double %168, %169
  store double %170, double* %12, align 8
  %171 = load double, double* %12, align 8
  %172 = load double, double* %8, align 8
  %173 = load double, double* %9, align 8
  %174 = fdiv double %172, %173
  %175 = fsub double %171, %174
  store double %175, double* %2, align 8
  br label %372

176:                                              ; preds = %110
  %177 = load double, double* @erx, align 8
  %178 = load double, double* %8, align 8
  %179 = load double, double* %9, align 8
  %180 = fdiv double %178, %179
  %181 = fadd double %177, %180
  store double %181, double* %12, align 8
  %182 = load double, double* @one, align 8
  %183 = load double, double* %12, align 8
  %184 = fadd double %182, %183
  store double %184, double* %2, align 8
  br label %372

185:                                              ; preds = %107
  %186 = load i32, i32* %5, align 4
  %187 = icmp slt i32 %186, 1077673984
  br i1 %187, label %188, label %361

188:                                              ; preds = %185
  %189 = load double, double* %3, align 8
  %190 = call double @llvm.fabs.f64(double %189)
  store double %190, double* %3, align 8
  %191 = load double, double* @one, align 8
  %192 = load double, double* %3, align 8
  %193 = load double, double* %3, align 8
  %194 = fmul double %192, %193
  %195 = fdiv double %191, %194
  store double %195, double* %10, align 8
  %196 = load i32, i32* %5, align 4
  %197 = icmp slt i32 %196, 1074191213
  br i1 %197, label %198, label %261

198:                                              ; preds = %188
  %199 = load double, double* @ra0, align 8
  %200 = load double, double* %10, align 8
  %201 = load double, double* @ra1, align 8
  %202 = load double, double* %10, align 8
  %203 = load double, double* @ra2, align 8
  %204 = load double, double* %10, align 8
  %205 = load double, double* @ra3, align 8
  %206 = load double, double* %10, align 8
  %207 = load double, double* @ra4, align 8
  %208 = load double, double* %10, align 8
  %209 = load double, double* @ra5, align 8
  %210 = load double, double* %10, align 8
  %211 = load double, double* @ra6, align 8
  %212 = load double, double* %10, align 8
  %213 = load double, double* @ra7, align 8
  %214 = fmul double %212, %213
  %215 = fadd double %211, %214
  %216 = fmul double %210, %215
  %217 = fadd double %209, %216
  %218 = fmul double %208, %217
  %219 = fadd double %207, %218
  %220 = fmul double %206, %219
  %221 = fadd double %205, %220
  %222 = fmul double %204, %221
  %223 = fadd double %203, %222
  %224 = fmul double %202, %223
  %225 = fadd double %201, %224
  %226 = fmul double %200, %225
  %227 = fadd double %199, %226
  store double %227, double* %6, align 8
  %228 = load double, double* @one, align 8
  %229 = load double, double* %10, align 8
  %230 = load double, double* @sa1, align 8
  %231 = load double, double* %10, align 8
  %232 = load double, double* @sa2, align 8
  %233 = load double, double* %10, align 8
  %234 = load double, double* @sa3, align 8
  %235 = load double, double* %10, align 8
  %236 = load double, double* @sa4, align 8
  %237 = load double, double* %10, align 8
  %238 = load double, double* @sa5, align 8
  %239 = load double, double* %10, align 8
  %240 = load double, double* @sa6, align 8
  %241 = load double, double* %10, align 8
  %242 = load double, double* @sa7, align 8
  %243 = load double, double* %10, align 8
  %244 = load double, double* @sa8, align 8
  %245 = fmul double %243, %244
  %246 = fadd double %242, %245
  %247 = fmul double %241, %246
  %248 = fadd double %240, %247
  %249 = fmul double %239, %248
  %250 = fadd double %238, %249
  %251 = fmul double %237, %250
  %252 = fadd double %236, %251
  %253 = fmul double %235, %252
  %254 = fadd double %234, %253
  %255 = fmul double %233, %254
  %256 = fadd double %232, %255
  %257 = fmul double %231, %256
  %258 = fadd double %230, %257
  %259 = fmul double %229, %258
  %260 = fadd double %228, %259
  store double %260, double* %7, align 8
  br label %326

261:                                              ; preds = %188
  %262 = load i32, i32* %4, align 4
  %263 = icmp slt i32 %262, 0
  br i1 %263, label %264, label %271

264:                                              ; preds = %261
  %265 = load i32, i32* %5, align 4
  %266 = icmp sge i32 %265, 1075314688
  br i1 %266, label %267, label %271

267:                                              ; preds = %264
  %268 = load double, double* @two, align 8
  %269 = load double, double* @tiny, align 8
  %270 = fsub double %268, %269
  store double %270, double* %2, align 8
  br label %372

271:                                              ; preds = %264, %261
  %272 = load double, double* @rb0, align 8
  %273 = load double, double* %10, align 8
  %274 = load double, double* @rb1, align 8
  %275 = load double, double* %10, align 8
  %276 = load double, double* @rb2, align 8
  %277 = load double, double* %10, align 8
  %278 = load double, double* @rb3, align 8
  %279 = load double, double* %10, align 8
  %280 = load double, double* @rb4, align 8
  %281 = load double, double* %10, align 8
  %282 = load double, double* @rb5, align 8
  %283 = load double, double* %10, align 8
  %284 = load double, double* @rb6, align 8
  %285 = fmul double %283, %284
  %286 = fadd double %282, %285
  %287 = fmul double %281, %286
  %288 = fadd double %280, %287
  %289 = fmul double %279, %288
  %290 = fadd double %278, %289
  %291 = fmul double %277, %290
  %292 = fadd double %276, %291
  %293 = fmul double %275, %292
  %294 = fadd double %274, %293
  %295 = fmul double %273, %294
  %296 = fadd double %272, %295
  store double %296, double* %6, align 8
  %297 = load double, double* @one, align 8
  %298 = load double, double* %10, align 8
  %299 = load double, double* @sb1, align 8
  %300 = load double, double* %10, align 8
  %301 = load double, double* @sb2, align 8
  %302 = load double, double* %10, align 8
  %303 = load double, double* @sb3, align 8
  %304 = load double, double* %10, align 8
  %305 = load double, double* @sb4, align 8
  %306 = load double, double* %10, align 8
  %307 = load double, double* @sb5, align 8
  %308 = load double, double* %10, align 8
  %309 = load double, double* @sb6, align 8
  %310 = load double, double* %10, align 8
  %311 = load double, double* @sb7, align 8
  %312 = fmul double %310, %311
  %313 = fadd double %309, %312
  %314 = fmul double %308, %313
  %315 = fadd double %307, %314
  %316 = fmul double %306, %315
  %317 = fadd double %305, %316
  %318 = fmul double %304, %317
  %319 = fadd double %303, %318
  %320 = fmul double %302, %319
  %321 = fadd double %301, %320
  %322 = fmul double %300, %321
  %323 = fadd double %299, %322
  %324 = fmul double %298, %323
  %325 = fadd double %297, %324
  store double %325, double* %7, align 8
  br label %326

326:                                              ; preds = %271, %198
  %327 = load double, double* %3, align 8
  store double %327, double* %12, align 8
  %328 = load double, double* %12, align 8
  %329 = call i32 @SET_LOW_WORD(double %328, i32 0)
  %330 = load double, double* %12, align 8
  %331 = fneg double %330
  %332 = load double, double* %12, align 8
  %333 = fmul double %331, %332
  %334 = fsub double %333, 5.625000e-01
  %335 = call double @__ieee754_exp(double %334)
  %336 = load double, double* %12, align 8
  %337 = load double, double* %3, align 8
  %338 = fsub double %336, %337
  %339 = load double, double* %12, align 8
  %340 = load double, double* %3, align 8
  %341 = fadd double %339, %340
  %342 = fmul double %338, %341
  %343 = load double, double* %6, align 8
  %344 = load double, double* %7, align 8
  %345 = fdiv double %343, %344
  %346 = fadd double %342, %345
  %347 = call double @__ieee754_exp(double %346)
  %348 = fmul double %335, %347
  store double %348, double* %13, align 8
  %349 = load i32, i32* %4, align 4
  %350 = icmp sgt i32 %349, 0
  br i1 %350, label %351, label %355

351:                                              ; preds = %326
  %352 = load double, double* %13, align 8
  %353 = load double, double* %3, align 8
  %354 = fdiv double %352, %353
  store double %354, double* %2, align 8
  br label %372

355:                                              ; preds = %326
  %356 = load double, double* @two, align 8
  %357 = load double, double* %13, align 8
  %358 = load double, double* %3, align 8
  %359 = fdiv double %357, %358
  %360 = fsub double %356, %359
  store double %360, double* %2, align 8
  br label %372

361:                                              ; preds = %185
  %362 = load i32, i32* %4, align 4
  %363 = icmp sgt i32 %362, 0
  br i1 %363, label %364, label %368

364:                                              ; preds = %361
  %365 = load double, double* @tiny, align 8
  %366 = load double, double* @tiny, align 8
  %367 = fmul double %365, %366
  store double %367, double* %2, align 8
  br label %372

368:                                              ; preds = %361
  %369 = load double, double* @two, align 8
  %370 = load double, double* @tiny, align 8
  %371 = fsub double %369, %370
  store double %371, double* %2, align 8
  br label %372

372:                                              ; preds = %368, %364, %355, %351, %267, %176, %167, %95, %87, %36, %21
  %373 = load double, double* %2, align 8
  ret double %373
}

declare dso_local i32 @GET_HIGH_WORD(i32, double) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #2

declare dso_local i32 @SET_LOW_WORD(double, i32) #1

declare dso_local double @__ieee754_exp(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
