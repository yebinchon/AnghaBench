; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_lgamma_r.c_lgamma_r.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_lgamma_r.c_lgamma_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@one = common dso_local global double 0.000000e+00, align 8
@vzero = common dso_local global double 0.000000e+00, align 8
@zero = common dso_local global double 0.000000e+00, align 8
@pi = common dso_local global double 0.000000e+00, align 8
@tc = common dso_local global double 0.000000e+00, align 8
@a0 = common dso_local global i32 0, align 4
@a2 = common dso_local global i32 0, align 4
@a4 = common dso_local global i32 0, align 4
@a6 = common dso_local global i32 0, align 4
@a8 = common dso_local global i32 0, align 4
@a10 = common dso_local global double 0.000000e+00, align 8
@a1 = common dso_local global i32 0, align 4
@a3 = common dso_local global i32 0, align 4
@a5 = common dso_local global i32 0, align 4
@a7 = common dso_local global i32 0, align 4
@a9 = common dso_local global i32 0, align 4
@a11 = common dso_local global double 0.000000e+00, align 8
@t0 = common dso_local global i32 0, align 4
@t3 = common dso_local global i32 0, align 4
@t6 = common dso_local global i32 0, align 4
@t9 = common dso_local global i32 0, align 4
@t12 = common dso_local global double 0.000000e+00, align 8
@t1 = common dso_local global i32 0, align 4
@t4 = common dso_local global i32 0, align 4
@t7 = common dso_local global i32 0, align 4
@t10 = common dso_local global i32 0, align 4
@t13 = common dso_local global double 0.000000e+00, align 8
@t2 = common dso_local global i32 0, align 4
@t5 = common dso_local global i32 0, align 4
@t8 = common dso_local global i32 0, align 4
@t11 = common dso_local global i32 0, align 4
@t14 = common dso_local global double 0.000000e+00, align 8
@tt = common dso_local global i32 0, align 4
@tf = common dso_local global i32 0, align 4
@u0 = common dso_local global i32 0, align 4
@u1 = common dso_local global i32 0, align 4
@u2 = common dso_local global i32 0, align 4
@u3 = common dso_local global i32 0, align 4
@u4 = common dso_local global i32 0, align 4
@u5 = common dso_local global double 0.000000e+00, align 8
@v1 = common dso_local global i32 0, align 4
@v2 = common dso_local global i32 0, align 4
@v3 = common dso_local global i32 0, align 4
@v4 = common dso_local global i32 0, align 4
@v5 = common dso_local global double 0.000000e+00, align 8
@s0 = common dso_local global double 0.000000e+00, align 8
@s1 = common dso_local global double 0.000000e+00, align 8
@s2 = common dso_local global double 0.000000e+00, align 8
@s3 = common dso_local global double 0.000000e+00, align 8
@s4 = common dso_local global double 0.000000e+00, align 8
@s5 = common dso_local global double 0.000000e+00, align 8
@s6 = common dso_local global double 0.000000e+00, align 8
@r1 = common dso_local global double 0.000000e+00, align 8
@r2 = common dso_local global double 0.000000e+00, align 8
@r3 = common dso_local global double 0.000000e+00, align 8
@r4 = common dso_local global double 0.000000e+00, align 8
@r5 = common dso_local global double 0.000000e+00, align 8
@r6 = common dso_local global double 0.000000e+00, align 8
@w0 = common dso_local global double 0.000000e+00, align 8
@w1 = common dso_local global double 0.000000e+00, align 8
@w2 = common dso_local global double 0.000000e+00, align 8
@w3 = common dso_local global double 0.000000e+00, align 8
@w4 = common dso_local global double 0.000000e+00, align 8
@w5 = common dso_local global double 0.000000e+00, align 8
@w6 = common dso_local global double 0.000000e+00, align 8
@half = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @__ieee754_lgamma_r(double %0, i32* %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca i32*, align 8
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
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store double %0, double* %4, align 8
  store i32* %1, i32** %5, align 8
  %21 = load i32, i32* %17, align 4
  %22 = load i32, i32* %20, align 4
  %23 = load double, double* %4, align 8
  %24 = call i32 @EXTRACT_WORDS(i32 %21, i32 %22, double %23)
  %25 = load i32*, i32** %5, align 8
  store i32 1, i32* %25, align 4
  %26 = load i32, i32* %17, align 4
  %27 = and i32 %26, 2147483647
  store i32 %27, i32* %19, align 4
  %28 = load i32, i32* %19, align 4
  %29 = icmp sge i32 %28, 2146435072
  br i1 %29, label %30, label %34

30:                                               ; preds = %2
  %31 = load double, double* %4, align 8
  %32 = load double, double* %4, align 8
  %33 = fmul double %31, %32
  store double %33, double* %3, align 8
  br label %544

34:                                               ; preds = %2
  %35 = load i32, i32* %17, align 4
  %36 = ashr i32 %35, 31
  %37 = mul nsw i32 2, %36
  %38 = sub nsw i32 1, %37
  %39 = load i32*, i32** %5, align 8
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* %19, align 4
  %41 = icmp slt i32 %40, 1013972992
  br i1 %41, label %42, label %56

42:                                               ; preds = %34
  %43 = load i32, i32* %19, align 4
  %44 = load i32, i32* %20, align 4
  %45 = or i32 %43, %44
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load double, double* @one, align 8
  %49 = load double, double* @vzero, align 8
  %50 = fdiv double %48, %49
  store double %50, double* %3, align 8
  br label %544

51:                                               ; preds = %42
  %52 = load double, double* %4, align 8
  %53 = call double @llvm.fabs.f64(double %52)
  %54 = call double @__ieee754_log(double %53)
  %55 = fneg double %54
  store double %55, double* %3, align 8
  br label %544

56:                                               ; preds = %34
  %57 = load i32, i32* %17, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %93

59:                                               ; preds = %56
  %60 = load i32*, i32** %5, align 8
  store i32 1, i32* %60, align 4
  %61 = load i32, i32* %19, align 4
  %62 = icmp sge i32 %61, 1127219200
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load double, double* @one, align 8
  %65 = load double, double* @vzero, align 8
  %66 = fdiv double %64, %65
  store double %66, double* %3, align 8
  br label %544

67:                                               ; preds = %59
  %68 = load double, double* %4, align 8
  %69 = call double @sin_pi(double %68)
  store double %69, double* %13, align 8
  %70 = load double, double* %13, align 8
  %71 = load double, double* @zero, align 8
  %72 = fcmp oeq double %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %67
  %74 = load double, double* @one, align 8
  %75 = load double, double* @vzero, align 8
  %76 = fdiv double %74, %75
  store double %76, double* %3, align 8
  br label %544

77:                                               ; preds = %67
  %78 = load double, double* @pi, align 8
  %79 = load double, double* %13, align 8
  %80 = load double, double* %4, align 8
  %81 = fmul double %79, %80
  %82 = call double @llvm.fabs.f64(double %81)
  %83 = fdiv double %78, %82
  %84 = call double @__ieee754_log(double %83)
  store double %84, double* %6, align 8
  %85 = load double, double* %13, align 8
  %86 = load double, double* @zero, align 8
  %87 = fcmp olt double %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %77
  %89 = load i32*, i32** %5, align 8
  store i32 -1, i32* %89, align 4
  br label %90

90:                                               ; preds = %88, %77
  %91 = load double, double* %4, align 8
  %92 = fneg double %91
  store double %92, double* %4, align 8
  br label %93

93:                                               ; preds = %90, %56
  %94 = load i32, i32* %19, align 4
  %95 = sub nsw i32 %94, 1072693248
  %96 = load i32, i32* %20, align 4
  %97 = or i32 %95, %96
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %105, label %99

99:                                               ; preds = %93
  %100 = load i32, i32* %19, align 4
  %101 = sub nsw i32 %100, 1073741824
  %102 = load i32, i32* %20, align 4
  %103 = or i32 %101, %102
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %99, %93
  store double 0.000000e+00, double* %12, align 8
  br label %535

106:                                              ; preds = %99
  %107 = load i32, i32* %19, align 4
  %108 = icmp slt i32 %107, 1073741824
  br i1 %108, label %109, label %379

109:                                              ; preds = %106
  %110 = load i32, i32* %19, align 4
  %111 = icmp sle i32 %110, 1072483532
  br i1 %111, label %112, label %135

112:                                              ; preds = %109
  %113 = load double, double* %4, align 8
  %114 = call double @__ieee754_log(double %113)
  %115 = fneg double %114
  store double %115, double* %12, align 8
  %116 = load i32, i32* %19, align 4
  %117 = icmp sge i32 %116, 1072130372
  br i1 %117, label %118, label %122

118:                                              ; preds = %112
  %119 = load double, double* @one, align 8
  %120 = load double, double* %4, align 8
  %121 = fsub double %119, %120
  store double %121, double* %15, align 8
  store i32 0, i32* %18, align 4
  br label %134

122:                                              ; preds = %112
  %123 = load i32, i32* %19, align 4
  %124 = icmp sge i32 %123, 1070442081
  br i1 %124, label %125, label %131

125:                                              ; preds = %122
  %126 = load double, double* %4, align 8
  %127 = load double, double* @tc, align 8
  %128 = load double, double* @one, align 8
  %129 = fsub double %127, %128
  %130 = fsub double %126, %129
  store double %130, double* %15, align 8
  store i32 1, i32* %18, align 4
  br label %133

131:                                              ; preds = %122
  %132 = load double, double* %4, align 8
  store double %132, double* %15, align 8
  store i32 2, i32* %18, align 4
  br label %133

133:                                              ; preds = %131, %125
  br label %134

134:                                              ; preds = %133, %118
  br label %155

135:                                              ; preds = %109
  %136 = load double, double* @zero, align 8
  store double %136, double* %12, align 8
  %137 = load i32, i32* %19, align 4
  %138 = icmp sge i32 %137, 1073460419
  br i1 %138, label %139, label %142

139:                                              ; preds = %135
  %140 = load double, double* %4, align 8
  %141 = fsub double 2.000000e+00, %140
  store double %141, double* %15, align 8
  store i32 0, i32* %18, align 4
  br label %154

142:                                              ; preds = %135
  %143 = load i32, i32* %19, align 4
  %144 = icmp sge i32 %143, 1072936132
  br i1 %144, label %145, label %149

145:                                              ; preds = %142
  %146 = load double, double* %4, align 8
  %147 = load double, double* @tc, align 8
  %148 = fsub double %146, %147
  store double %148, double* %15, align 8
  store i32 1, i32* %18, align 4
  br label %153

149:                                              ; preds = %142
  %150 = load double, double* %4, align 8
  %151 = load double, double* @one, align 8
  %152 = fsub double %150, %151
  store double %152, double* %15, align 8
  store i32 2, i32* %18, align 4
  br label %153

153:                                              ; preds = %149, %145
  br label %154

154:                                              ; preds = %153, %139
  br label %155

155:                                              ; preds = %154, %134
  %156 = load i32, i32* %18, align 4
  switch i32 %156, label %378 [
    i32 0, label %157
    i32 1, label %226
    i32 2, label %316
  ]

157:                                              ; preds = %155
  %158 = load double, double* %15, align 8
  %159 = load double, double* %15, align 8
  %160 = fmul double %158, %159
  store double %160, double* %16, align 8
  %161 = load i32, i32* @a0, align 4
  %162 = sitofp i32 %161 to double
  %163 = load double, double* %16, align 8
  %164 = load i32, i32* @a2, align 4
  %165 = sitofp i32 %164 to double
  %166 = load double, double* %16, align 8
  %167 = load i32, i32* @a4, align 4
  %168 = sitofp i32 %167 to double
  %169 = load double, double* %16, align 8
  %170 = load i32, i32* @a6, align 4
  %171 = sitofp i32 %170 to double
  %172 = load double, double* %16, align 8
  %173 = load i32, i32* @a8, align 4
  %174 = sitofp i32 %173 to double
  %175 = load double, double* %16, align 8
  %176 = load double, double* @a10, align 8
  %177 = fmul double %175, %176
  %178 = fadd double %174, %177
  %179 = fmul double %172, %178
  %180 = fadd double %171, %179
  %181 = fmul double %169, %180
  %182 = fadd double %168, %181
  %183 = fmul double %166, %182
  %184 = fadd double %165, %183
  %185 = fmul double %163, %184
  %186 = fadd double %162, %185
  store double %186, double* %8, align 8
  %187 = load double, double* %16, align 8
  %188 = load i32, i32* @a1, align 4
  %189 = sitofp i32 %188 to double
  %190 = load double, double* %16, align 8
  %191 = load i32, i32* @a3, align 4
  %192 = sitofp i32 %191 to double
  %193 = load double, double* %16, align 8
  %194 = load i32, i32* @a5, align 4
  %195 = sitofp i32 %194 to double
  %196 = load double, double* %16, align 8
  %197 = load i32, i32* @a7, align 4
  %198 = sitofp i32 %197 to double
  %199 = load double, double* %16, align 8
  %200 = load i32, i32* @a9, align 4
  %201 = sitofp i32 %200 to double
  %202 = load double, double* %16, align 8
  %203 = load double, double* @a11, align 8
  %204 = fmul double %202, %203
  %205 = fadd double %201, %204
  %206 = fmul double %199, %205
  %207 = fadd double %198, %206
  %208 = fmul double %196, %207
  %209 = fadd double %195, %208
  %210 = fmul double %193, %209
  %211 = fadd double %192, %210
  %212 = fmul double %190, %211
  %213 = fadd double %189, %212
  %214 = fmul double %187, %213
  store double %214, double* %9, align 8
  %215 = load double, double* %15, align 8
  %216 = load double, double* %8, align 8
  %217 = fmul double %215, %216
  %218 = load double, double* %9, align 8
  %219 = fadd double %217, %218
  store double %219, double* %7, align 8
  %220 = load double, double* %7, align 8
  %221 = load double, double* %15, align 8
  %222 = fdiv double %221, 2.000000e+00
  %223 = fsub double %220, %222
  %224 = load double, double* %12, align 8
  %225 = fadd double %224, %223
  store double %225, double* %12, align 8
  br label %378

226:                                              ; preds = %155
  %227 = load double, double* %15, align 8
  %228 = load double, double* %15, align 8
  %229 = fmul double %227, %228
  store double %229, double* %16, align 8
  %230 = load double, double* %16, align 8
  %231 = load double, double* %15, align 8
  %232 = fmul double %230, %231
  store double %232, double* %14, align 8
  %233 = load i32, i32* @t0, align 4
  %234 = sitofp i32 %233 to double
  %235 = load double, double* %14, align 8
  %236 = load i32, i32* @t3, align 4
  %237 = sitofp i32 %236 to double
  %238 = load double, double* %14, align 8
  %239 = load i32, i32* @t6, align 4
  %240 = sitofp i32 %239 to double
  %241 = load double, double* %14, align 8
  %242 = load i32, i32* @t9, align 4
  %243 = sitofp i32 %242 to double
  %244 = load double, double* %14, align 8
  %245 = load double, double* @t12, align 8
  %246 = fmul double %244, %245
  %247 = fadd double %243, %246
  %248 = fmul double %241, %247
  %249 = fadd double %240, %248
  %250 = fmul double %238, %249
  %251 = fadd double %237, %250
  %252 = fmul double %235, %251
  %253 = fadd double %234, %252
  store double %253, double* %8, align 8
  %254 = load i32, i32* @t1, align 4
  %255 = sitofp i32 %254 to double
  %256 = load double, double* %14, align 8
  %257 = load i32, i32* @t4, align 4
  %258 = sitofp i32 %257 to double
  %259 = load double, double* %14, align 8
  %260 = load i32, i32* @t7, align 4
  %261 = sitofp i32 %260 to double
  %262 = load double, double* %14, align 8
  %263 = load i32, i32* @t10, align 4
  %264 = sitofp i32 %263 to double
  %265 = load double, double* %14, align 8
  %266 = load double, double* @t13, align 8
  %267 = fmul double %265, %266
  %268 = fadd double %264, %267
  %269 = fmul double %262, %268
  %270 = fadd double %261, %269
  %271 = fmul double %259, %270
  %272 = fadd double %258, %271
  %273 = fmul double %256, %272
  %274 = fadd double %255, %273
  store double %274, double* %9, align 8
  %275 = load i32, i32* @t2, align 4
  %276 = sitofp i32 %275 to double
  %277 = load double, double* %14, align 8
  %278 = load i32, i32* @t5, align 4
  %279 = sitofp i32 %278 to double
  %280 = load double, double* %14, align 8
  %281 = load i32, i32* @t8, align 4
  %282 = sitofp i32 %281 to double
  %283 = load double, double* %14, align 8
  %284 = load i32, i32* @t11, align 4
  %285 = sitofp i32 %284 to double
  %286 = load double, double* %14, align 8
  %287 = load double, double* @t14, align 8
  %288 = fmul double %286, %287
  %289 = fadd double %285, %288
  %290 = fmul double %283, %289
  %291 = fadd double %282, %290
  %292 = fmul double %280, %291
  %293 = fadd double %279, %292
  %294 = fmul double %277, %293
  %295 = fadd double %276, %294
  store double %295, double* %10, align 8
  %296 = load double, double* %16, align 8
  %297 = load double, double* %8, align 8
  %298 = fmul double %296, %297
  %299 = load i32, i32* @tt, align 4
  %300 = sitofp i32 %299 to double
  %301 = load double, double* %14, align 8
  %302 = load double, double* %9, align 8
  %303 = load double, double* %15, align 8
  %304 = load double, double* %10, align 8
  %305 = fmul double %303, %304
  %306 = fadd double %302, %305
  %307 = fmul double %301, %306
  %308 = fsub double %300, %307
  %309 = fsub double %298, %308
  store double %309, double* %7, align 8
  %310 = load i32, i32* @tf, align 4
  %311 = sitofp i32 %310 to double
  %312 = load double, double* %7, align 8
  %313 = fadd double %311, %312
  %314 = load double, double* %12, align 8
  %315 = fadd double %314, %313
  store double %315, double* %12, align 8
  br label %378

316:                                              ; preds = %155
  %317 = load double, double* %15, align 8
  %318 = load i32, i32* @u0, align 4
  %319 = sitofp i32 %318 to double
  %320 = load double, double* %15, align 8
  %321 = load i32, i32* @u1, align 4
  %322 = sitofp i32 %321 to double
  %323 = load double, double* %15, align 8
  %324 = load i32, i32* @u2, align 4
  %325 = sitofp i32 %324 to double
  %326 = load double, double* %15, align 8
  %327 = load i32, i32* @u3, align 4
  %328 = sitofp i32 %327 to double
  %329 = load double, double* %15, align 8
  %330 = load i32, i32* @u4, align 4
  %331 = sitofp i32 %330 to double
  %332 = load double, double* %15, align 8
  %333 = load double, double* @u5, align 8
  %334 = fmul double %332, %333
  %335 = fadd double %331, %334
  %336 = fmul double %329, %335
  %337 = fadd double %328, %336
  %338 = fmul double %326, %337
  %339 = fadd double %325, %338
  %340 = fmul double %323, %339
  %341 = fadd double %322, %340
  %342 = fmul double %320, %341
  %343 = fadd double %319, %342
  %344 = fmul double %317, %343
  store double %344, double* %8, align 8
  %345 = load double, double* @one, align 8
  %346 = load double, double* %15, align 8
  %347 = load i32, i32* @v1, align 4
  %348 = sitofp i32 %347 to double
  %349 = load double, double* %15, align 8
  %350 = load i32, i32* @v2, align 4
  %351 = sitofp i32 %350 to double
  %352 = load double, double* %15, align 8
  %353 = load i32, i32* @v3, align 4
  %354 = sitofp i32 %353 to double
  %355 = load double, double* %15, align 8
  %356 = load i32, i32* @v4, align 4
  %357 = sitofp i32 %356 to double
  %358 = load double, double* %15, align 8
  %359 = load double, double* @v5, align 8
  %360 = fmul double %358, %359
  %361 = fadd double %357, %360
  %362 = fmul double %355, %361
  %363 = fadd double %354, %362
  %364 = fmul double %352, %363
  %365 = fadd double %351, %364
  %366 = fmul double %349, %365
  %367 = fadd double %348, %366
  %368 = fmul double %346, %367
  %369 = fadd double %345, %368
  store double %369, double* %9, align 8
  %370 = load double, double* %8, align 8
  %371 = load double, double* %9, align 8
  %372 = fdiv double %370, %371
  %373 = load double, double* %15, align 8
  %374 = fdiv double %373, 2.000000e+00
  %375 = fsub double %372, %374
  %376 = load double, double* %12, align 8
  %377 = fadd double %376, %375
  store double %377, double* %12, align 8
  br label %378

378:                                              ; preds = %316, %155, %226, %157
  br label %534

379:                                              ; preds = %106
  %380 = load i32, i32* %19, align 4
  %381 = icmp slt i32 %380, 1075838976
  br i1 %381, label %382, label %479

382:                                              ; preds = %379
  %383 = load double, double* %4, align 8
  %384 = fptosi double %383 to i32
  store i32 %384, i32* %18, align 4
  %385 = load double, double* %4, align 8
  %386 = load i32, i32* %18, align 4
  %387 = sitofp i32 %386 to double
  %388 = fsub double %385, %387
  store double %388, double* %15, align 8
  %389 = load double, double* %15, align 8
  %390 = load double, double* @s0, align 8
  %391 = load double, double* %15, align 8
  %392 = load double, double* @s1, align 8
  %393 = load double, double* %15, align 8
  %394 = load double, double* @s2, align 8
  %395 = load double, double* %15, align 8
  %396 = load double, double* @s3, align 8
  %397 = load double, double* %15, align 8
  %398 = load double, double* @s4, align 8
  %399 = load double, double* %15, align 8
  %400 = load double, double* @s5, align 8
  %401 = load double, double* %15, align 8
  %402 = load double, double* @s6, align 8
  %403 = fmul double %401, %402
  %404 = fadd double %400, %403
  %405 = fmul double %399, %404
  %406 = fadd double %398, %405
  %407 = fmul double %397, %406
  %408 = fadd double %396, %407
  %409 = fmul double %395, %408
  %410 = fadd double %394, %409
  %411 = fmul double %393, %410
  %412 = fadd double %392, %411
  %413 = fmul double %391, %412
  %414 = fadd double %390, %413
  %415 = fmul double %389, %414
  store double %415, double* %7, align 8
  %416 = load double, double* @one, align 8
  %417 = load double, double* %15, align 8
  %418 = load double, double* @r1, align 8
  %419 = load double, double* %15, align 8
  %420 = load double, double* @r2, align 8
  %421 = load double, double* %15, align 8
  %422 = load double, double* @r3, align 8
  %423 = load double, double* %15, align 8
  %424 = load double, double* @r4, align 8
  %425 = load double, double* %15, align 8
  %426 = load double, double* @r5, align 8
  %427 = load double, double* %15, align 8
  %428 = load double, double* @r6, align 8
  %429 = fmul double %427, %428
  %430 = fadd double %426, %429
  %431 = fmul double %425, %430
  %432 = fadd double %424, %431
  %433 = fmul double %423, %432
  %434 = fadd double %422, %433
  %435 = fmul double %421, %434
  %436 = fadd double %420, %435
  %437 = fmul double %419, %436
  %438 = fadd double %418, %437
  %439 = fmul double %417, %438
  %440 = fadd double %416, %439
  store double %440, double* %11, align 8
  %441 = load double, double* %15, align 8
  %442 = fdiv double %441, 2.000000e+00
  %443 = load double, double* %7, align 8
  %444 = load double, double* %11, align 8
  %445 = fdiv double %443, %444
  %446 = fadd double %442, %445
  store double %446, double* %12, align 8
  %447 = load double, double* @one, align 8
  store double %447, double* %16, align 8
  %448 = load i32, i32* %18, align 4
  switch i32 %448, label %478 [
    i32 7, label %449
    i32 6, label %454
    i32 5, label %459
    i32 4, label %464
    i32 3, label %469
  ]

449:                                              ; preds = %382
  %450 = load double, double* %15, align 8
  %451 = fadd double %450, 6.000000e+00
  %452 = load double, double* %16, align 8
  %453 = fmul double %452, %451
  store double %453, double* %16, align 8
  br label %454

454:                                              ; preds = %382, %449
  %455 = load double, double* %15, align 8
  %456 = fadd double %455, 5.000000e+00
  %457 = load double, double* %16, align 8
  %458 = fmul double %457, %456
  store double %458, double* %16, align 8
  br label %459

459:                                              ; preds = %382, %454
  %460 = load double, double* %15, align 8
  %461 = fadd double %460, 4.000000e+00
  %462 = load double, double* %16, align 8
  %463 = fmul double %462, %461
  store double %463, double* %16, align 8
  br label %464

464:                                              ; preds = %382, %459
  %465 = load double, double* %15, align 8
  %466 = fadd double %465, 3.000000e+00
  %467 = load double, double* %16, align 8
  %468 = fmul double %467, %466
  store double %468, double* %16, align 8
  br label %469

469:                                              ; preds = %382, %464
  %470 = load double, double* %15, align 8
  %471 = fadd double %470, 2.000000e+00
  %472 = load double, double* %16, align 8
  %473 = fmul double %472, %471
  store double %473, double* %16, align 8
  %474 = load double, double* %16, align 8
  %475 = call double @__ieee754_log(double %474)
  %476 = load double, double* %12, align 8
  %477 = fadd double %476, %475
  store double %477, double* %12, align 8
  br label %478

478:                                              ; preds = %382, %469
  br label %533

479:                                              ; preds = %379
  %480 = load i32, i32* %19, align 4
  %481 = icmp slt i32 %480, 1131413504
  br i1 %481, label %482, label %525

482:                                              ; preds = %479
  %483 = load double, double* %4, align 8
  %484 = call double @__ieee754_log(double %483)
  store double %484, double* %13, align 8
  %485 = load double, double* @one, align 8
  %486 = load double, double* %4, align 8
  %487 = fdiv double %485, %486
  store double %487, double* %16, align 8
  %488 = load double, double* %16, align 8
  %489 = load double, double* %16, align 8
  %490 = fmul double %488, %489
  store double %490, double* %15, align 8
  %491 = load double, double* @w0, align 8
  %492 = load double, double* %16, align 8
  %493 = load double, double* @w1, align 8
  %494 = load double, double* %15, align 8
  %495 = load double, double* @w2, align 8
  %496 = load double, double* %15, align 8
  %497 = load double, double* @w3, align 8
  %498 = load double, double* %15, align 8
  %499 = load double, double* @w4, align 8
  %500 = load double, double* %15, align 8
  %501 = load double, double* @w5, align 8
  %502 = load double, double* %15, align 8
  %503 = load double, double* @w6, align 8
  %504 = fmul double %502, %503
  %505 = fadd double %501, %504
  %506 = fmul double %500, %505
  %507 = fadd double %499, %506
  %508 = fmul double %498, %507
  %509 = fadd double %497, %508
  %510 = fmul double %496, %509
  %511 = fadd double %495, %510
  %512 = fmul double %494, %511
  %513 = fadd double %493, %512
  %514 = fmul double %492, %513
  %515 = fadd double %491, %514
  store double %515, double* %14, align 8
  %516 = load double, double* %4, align 8
  %517 = load double, double* @half, align 8
  %518 = fsub double %516, %517
  %519 = load double, double* %13, align 8
  %520 = load double, double* @one, align 8
  %521 = fsub double %519, %520
  %522 = fmul double %518, %521
  %523 = load double, double* %14, align 8
  %524 = fadd double %522, %523
  store double %524, double* %12, align 8
  br label %532

525:                                              ; preds = %479
  %526 = load double, double* %4, align 8
  %527 = load double, double* %4, align 8
  %528 = call double @__ieee754_log(double %527)
  %529 = load double, double* @one, align 8
  %530 = fsub double %528, %529
  %531 = fmul double %526, %530
  store double %531, double* %12, align 8
  br label %532

532:                                              ; preds = %525, %482
  br label %533

533:                                              ; preds = %532, %478
  br label %534

534:                                              ; preds = %533, %378
  br label %535

535:                                              ; preds = %534, %105
  %536 = load i32, i32* %17, align 4
  %537 = icmp slt i32 %536, 0
  br i1 %537, label %538, label %542

538:                                              ; preds = %535
  %539 = load double, double* %6, align 8
  %540 = load double, double* %12, align 8
  %541 = fsub double %539, %540
  store double %541, double* %12, align 8
  br label %542

542:                                              ; preds = %538, %535
  %543 = load double, double* %12, align 8
  store double %543, double* %3, align 8
  br label %544

544:                                              ; preds = %542, %73, %63, %51, %47, %30
  %545 = load double, double* %3, align 8
  ret double %545
}

declare dso_local i32 @EXTRACT_WORDS(i32, i32, double) #1

declare dso_local double @__ieee754_log(double) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #2

declare dso_local double @sin_pi(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
