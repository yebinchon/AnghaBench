; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_erf.c_erf.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_erf.c_erf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@one = common dso_local global double 0.000000e+00, align 8
@efx8 = common dso_local global double 0.000000e+00, align 8
@efx = common dso_local global double 0.000000e+00, align 8
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
@tiny = common dso_local global double 0.000000e+00, align 8
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
define dso_local double @erf(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  store double %0, double* %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load double, double* %3, align 8
  %17 = call i32 @GET_HIGH_WORD(i32 %15, double %16)
  %18 = load i32, i32* %4, align 4
  %19 = and i32 %18, 2147483647
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp sge i32 %20, 2146435072
  br i1 %21, label %22, label %33

22:                                               ; preds = %1
  %23 = load i32, i32* %4, align 4
  %24 = ashr i32 %23, 31
  %25 = shl i32 %24, 1
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = sub nsw i32 1, %26
  %28 = sitofp i32 %27 to double
  %29 = load double, double* @one, align 8
  %30 = load double, double* %3, align 8
  %31 = fdiv double %29, %30
  %32 = fadd double %28, %31
  store double %32, double* %2, align 8
  br label %358

33:                                               ; preds = %1
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %34, 1072365568
  br i1 %35, label %36, label %106

36:                                               ; preds = %33
  %37 = load i32, i32* %5, align 4
  %38 = icmp slt i32 %37, 1043333120
  br i1 %38, label %39, label %56

39:                                               ; preds = %36
  %40 = load i32, i32* %5, align 4
  %41 = icmp slt i32 %40, 8388608
  br i1 %41, label %42, label %50

42:                                               ; preds = %39
  %43 = load double, double* %3, align 8
  %44 = fmul double 8.000000e+00, %43
  %45 = load double, double* @efx8, align 8
  %46 = load double, double* %3, align 8
  %47 = fmul double %45, %46
  %48 = fadd double %44, %47
  %49 = fdiv double %48, 8.000000e+00
  store double %49, double* %2, align 8
  br label %358

50:                                               ; preds = %39
  %51 = load double, double* %3, align 8
  %52 = load double, double* @efx, align 8
  %53 = load double, double* %3, align 8
  %54 = fmul double %52, %53
  %55 = fadd double %51, %54
  store double %55, double* %2, align 8
  br label %358

56:                                               ; preds = %36
  %57 = load double, double* %3, align 8
  %58 = load double, double* %3, align 8
  %59 = fmul double %57, %58
  store double %59, double* %13, align 8
  %60 = load double, double* @pp0, align 8
  %61 = load double, double* %13, align 8
  %62 = load double, double* @pp1, align 8
  %63 = load double, double* %13, align 8
  %64 = load double, double* @pp2, align 8
  %65 = load double, double* %13, align 8
  %66 = load double, double* @pp3, align 8
  %67 = load double, double* %13, align 8
  %68 = load double, double* @pp4, align 8
  %69 = fmul double %67, %68
  %70 = fadd double %66, %69
  %71 = fmul double %65, %70
  %72 = fadd double %64, %71
  %73 = fmul double %63, %72
  %74 = fadd double %62, %73
  %75 = fmul double %61, %74
  %76 = fadd double %60, %75
  store double %76, double* %14, align 8
  %77 = load double, double* @one, align 8
  %78 = load double, double* %13, align 8
  %79 = load double, double* @qq1, align 8
  %80 = load double, double* %13, align 8
  %81 = load double, double* @qq2, align 8
  %82 = load double, double* %13, align 8
  %83 = load double, double* @qq3, align 8
  %84 = load double, double* %13, align 8
  %85 = load double, double* @qq4, align 8
  %86 = load double, double* %13, align 8
  %87 = load double, double* @qq5, align 8
  %88 = fmul double %86, %87
  %89 = fadd double %85, %88
  %90 = fmul double %84, %89
  %91 = fadd double %83, %90
  %92 = fmul double %82, %91
  %93 = fadd double %81, %92
  %94 = fmul double %80, %93
  %95 = fadd double %79, %94
  %96 = fmul double %78, %95
  %97 = fadd double %77, %96
  store double %97, double* %11, align 8
  %98 = load double, double* %14, align 8
  %99 = load double, double* %11, align 8
  %100 = fdiv double %98, %99
  store double %100, double* %12, align 8
  %101 = load double, double* %3, align 8
  %102 = load double, double* %3, align 8
  %103 = load double, double* %12, align 8
  %104 = fmul double %102, %103
  %105 = fadd double %101, %104
  store double %105, double* %2, align 8
  br label %358

106:                                              ; preds = %33
  %107 = load i32, i32* %5, align 4
  %108 = icmp slt i32 %107, 1072955392
  br i1 %108, label %109, label %179

109:                                              ; preds = %106
  %110 = load double, double* %3, align 8
  %111 = call double @llvm.fabs.f64(double %110)
  %112 = load double, double* @one, align 8
  %113 = fsub double %111, %112
  store double %113, double* %11, align 8
  %114 = load double, double* @pa0, align 8
  %115 = load double, double* %11, align 8
  %116 = load double, double* @pa1, align 8
  %117 = load double, double* %11, align 8
  %118 = load double, double* @pa2, align 8
  %119 = load double, double* %11, align 8
  %120 = load double, double* @pa3, align 8
  %121 = load double, double* %11, align 8
  %122 = load double, double* @pa4, align 8
  %123 = load double, double* %11, align 8
  %124 = load double, double* @pa5, align 8
  %125 = load double, double* %11, align 8
  %126 = load double, double* @pa6, align 8
  %127 = fmul double %125, %126
  %128 = fadd double %124, %127
  %129 = fmul double %123, %128
  %130 = fadd double %122, %129
  %131 = fmul double %121, %130
  %132 = fadd double %120, %131
  %133 = fmul double %119, %132
  %134 = fadd double %118, %133
  %135 = fmul double %117, %134
  %136 = fadd double %116, %135
  %137 = fmul double %115, %136
  %138 = fadd double %114, %137
  store double %138, double* %9, align 8
  %139 = load double, double* @one, align 8
  %140 = load double, double* %11, align 8
  %141 = load double, double* @qa1, align 8
  %142 = load double, double* %11, align 8
  %143 = load double, double* @qa2, align 8
  %144 = load double, double* %11, align 8
  %145 = load double, double* @qa3, align 8
  %146 = load double, double* %11, align 8
  %147 = load double, double* @qa4, align 8
  %148 = load double, double* %11, align 8
  %149 = load double, double* @qa5, align 8
  %150 = load double, double* %11, align 8
  %151 = load double, double* @qa6, align 8
  %152 = fmul double %150, %151
  %153 = fadd double %149, %152
  %154 = fmul double %148, %153
  %155 = fadd double %147, %154
  %156 = fmul double %146, %155
  %157 = fadd double %145, %156
  %158 = fmul double %144, %157
  %159 = fadd double %143, %158
  %160 = fmul double %142, %159
  %161 = fadd double %141, %160
  %162 = fmul double %140, %161
  %163 = fadd double %139, %162
  store double %163, double* %10, align 8
  %164 = load i32, i32* %4, align 4
  %165 = icmp sge i32 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %109
  %167 = load double, double* @erx, align 8
  %168 = load double, double* %9, align 8
  %169 = load double, double* %10, align 8
  %170 = fdiv double %168, %169
  %171 = fadd double %167, %170
  store double %171, double* %2, align 8
  br label %358

172:                                              ; preds = %109
  %173 = load double, double* @erx, align 8
  %174 = fneg double %173
  %175 = load double, double* %9, align 8
  %176 = load double, double* %10, align 8
  %177 = fdiv double %175, %176
  %178 = fsub double %174, %177
  store double %178, double* %2, align 8
  br label %358

179:                                              ; preds = %106
  %180 = load i32, i32* %5, align 4
  %181 = icmp sge i32 %180, 1075314688
  br i1 %181, label %182, label %193

182:                                              ; preds = %179
  %183 = load i32, i32* %4, align 4
  %184 = icmp sge i32 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %182
  %186 = load double, double* @one, align 8
  %187 = load double, double* @tiny, align 8
  %188 = fsub double %186, %187
  store double %188, double* %2, align 8
  br label %358

189:                                              ; preds = %182
  %190 = load double, double* @tiny, align 8
  %191 = load double, double* @one, align 8
  %192 = fsub double %190, %191
  store double %192, double* %2, align 8
  br label %358

193:                                              ; preds = %179
  %194 = load double, double* %3, align 8
  %195 = call double @llvm.fabs.f64(double %194)
  store double %195, double* %3, align 8
  %196 = load double, double* @one, align 8
  %197 = load double, double* %3, align 8
  %198 = load double, double* %3, align 8
  %199 = fmul double %197, %198
  %200 = fdiv double %196, %199
  store double %200, double* %11, align 8
  %201 = load i32, i32* %5, align 4
  %202 = icmp slt i32 %201, 1074191214
  br i1 %202, label %203, label %266

203:                                              ; preds = %193
  %204 = load double, double* @ra0, align 8
  %205 = load double, double* %11, align 8
  %206 = load double, double* @ra1, align 8
  %207 = load double, double* %11, align 8
  %208 = load double, double* @ra2, align 8
  %209 = load double, double* %11, align 8
  %210 = load double, double* @ra3, align 8
  %211 = load double, double* %11, align 8
  %212 = load double, double* @ra4, align 8
  %213 = load double, double* %11, align 8
  %214 = load double, double* @ra5, align 8
  %215 = load double, double* %11, align 8
  %216 = load double, double* @ra6, align 8
  %217 = load double, double* %11, align 8
  %218 = load double, double* @ra7, align 8
  %219 = fmul double %217, %218
  %220 = fadd double %216, %219
  %221 = fmul double %215, %220
  %222 = fadd double %214, %221
  %223 = fmul double %213, %222
  %224 = fadd double %212, %223
  %225 = fmul double %211, %224
  %226 = fadd double %210, %225
  %227 = fmul double %209, %226
  %228 = fadd double %208, %227
  %229 = fmul double %207, %228
  %230 = fadd double %206, %229
  %231 = fmul double %205, %230
  %232 = fadd double %204, %231
  store double %232, double* %7, align 8
  %233 = load double, double* @one, align 8
  %234 = load double, double* %11, align 8
  %235 = load double, double* @sa1, align 8
  %236 = load double, double* %11, align 8
  %237 = load double, double* @sa2, align 8
  %238 = load double, double* %11, align 8
  %239 = load double, double* @sa3, align 8
  %240 = load double, double* %11, align 8
  %241 = load double, double* @sa4, align 8
  %242 = load double, double* %11, align 8
  %243 = load double, double* @sa5, align 8
  %244 = load double, double* %11, align 8
  %245 = load double, double* @sa6, align 8
  %246 = load double, double* %11, align 8
  %247 = load double, double* @sa7, align 8
  %248 = load double, double* %11, align 8
  %249 = load double, double* @sa8, align 8
  %250 = fmul double %248, %249
  %251 = fadd double %247, %250
  %252 = fmul double %246, %251
  %253 = fadd double %245, %252
  %254 = fmul double %244, %253
  %255 = fadd double %243, %254
  %256 = fmul double %242, %255
  %257 = fadd double %241, %256
  %258 = fmul double %240, %257
  %259 = fadd double %239, %258
  %260 = fmul double %238, %259
  %261 = fadd double %237, %260
  %262 = fmul double %236, %261
  %263 = fadd double %235, %262
  %264 = fmul double %234, %263
  %265 = fadd double %233, %264
  store double %265, double* %8, align 8
  br label %321

266:                                              ; preds = %193
  %267 = load double, double* @rb0, align 8
  %268 = load double, double* %11, align 8
  %269 = load double, double* @rb1, align 8
  %270 = load double, double* %11, align 8
  %271 = load double, double* @rb2, align 8
  %272 = load double, double* %11, align 8
  %273 = load double, double* @rb3, align 8
  %274 = load double, double* %11, align 8
  %275 = load double, double* @rb4, align 8
  %276 = load double, double* %11, align 8
  %277 = load double, double* @rb5, align 8
  %278 = load double, double* %11, align 8
  %279 = load double, double* @rb6, align 8
  %280 = fmul double %278, %279
  %281 = fadd double %277, %280
  %282 = fmul double %276, %281
  %283 = fadd double %275, %282
  %284 = fmul double %274, %283
  %285 = fadd double %273, %284
  %286 = fmul double %272, %285
  %287 = fadd double %271, %286
  %288 = fmul double %270, %287
  %289 = fadd double %269, %288
  %290 = fmul double %268, %289
  %291 = fadd double %267, %290
  store double %291, double* %7, align 8
  %292 = load double, double* @one, align 8
  %293 = load double, double* %11, align 8
  %294 = load double, double* @sb1, align 8
  %295 = load double, double* %11, align 8
  %296 = load double, double* @sb2, align 8
  %297 = load double, double* %11, align 8
  %298 = load double, double* @sb3, align 8
  %299 = load double, double* %11, align 8
  %300 = load double, double* @sb4, align 8
  %301 = load double, double* %11, align 8
  %302 = load double, double* @sb5, align 8
  %303 = load double, double* %11, align 8
  %304 = load double, double* @sb6, align 8
  %305 = load double, double* %11, align 8
  %306 = load double, double* @sb7, align 8
  %307 = fmul double %305, %306
  %308 = fadd double %304, %307
  %309 = fmul double %303, %308
  %310 = fadd double %302, %309
  %311 = fmul double %301, %310
  %312 = fadd double %300, %311
  %313 = fmul double %299, %312
  %314 = fadd double %298, %313
  %315 = fmul double %297, %314
  %316 = fadd double %296, %315
  %317 = fmul double %295, %316
  %318 = fadd double %294, %317
  %319 = fmul double %293, %318
  %320 = fadd double %292, %319
  store double %320, double* %8, align 8
  br label %321

321:                                              ; preds = %266, %203
  %322 = load double, double* %3, align 8
  store double %322, double* %13, align 8
  %323 = load double, double* %13, align 8
  %324 = call i32 @SET_LOW_WORD(double %323, i32 0)
  %325 = load double, double* %13, align 8
  %326 = fneg double %325
  %327 = load double, double* %13, align 8
  %328 = fmul double %326, %327
  %329 = fsub double %328, 5.625000e-01
  %330 = call double @__ieee754_exp(double %329)
  %331 = load double, double* %13, align 8
  %332 = load double, double* %3, align 8
  %333 = fsub double %331, %332
  %334 = load double, double* %13, align 8
  %335 = load double, double* %3, align 8
  %336 = fadd double %334, %335
  %337 = fmul double %333, %336
  %338 = load double, double* %7, align 8
  %339 = load double, double* %8, align 8
  %340 = fdiv double %338, %339
  %341 = fadd double %337, %340
  %342 = call double @__ieee754_exp(double %341)
  %343 = fmul double %330, %342
  store double %343, double* %14, align 8
  %344 = load i32, i32* %4, align 4
  %345 = icmp sge i32 %344, 0
  br i1 %345, label %346, label %352

346:                                              ; preds = %321
  %347 = load double, double* @one, align 8
  %348 = load double, double* %14, align 8
  %349 = load double, double* %3, align 8
  %350 = fdiv double %348, %349
  %351 = fsub double %347, %350
  store double %351, double* %2, align 8
  br label %358

352:                                              ; preds = %321
  %353 = load double, double* %14, align 8
  %354 = load double, double* %3, align 8
  %355 = fdiv double %353, %354
  %356 = load double, double* @one, align 8
  %357 = fsub double %355, %356
  store double %357, double* %2, align 8
  br label %358

358:                                              ; preds = %352, %346, %189, %185, %172, %166, %56, %50, %42, %22
  %359 = load double, double* %2, align 8
  ret double %359
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
