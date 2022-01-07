; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_lgammaf_r.c_lgammaf_r.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_lgammaf_r.c_lgammaf_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@one = common dso_local global float 0.000000e+00, align 4
@vzero = common dso_local global float 0.000000e+00, align 4
@zero = common dso_local global float 0.000000e+00, align 4
@pi = common dso_local global float 0.000000e+00, align 4
@tc = common dso_local global float 0.000000e+00, align 4
@a0 = common dso_local global i32 0, align 4
@a2 = common dso_local global i32 0, align 4
@a4 = common dso_local global float 0.000000e+00, align 4
@a1 = common dso_local global i32 0, align 4
@a3 = common dso_local global i32 0, align 4
@a5 = common dso_local global float 0.000000e+00, align 4
@t0 = common dso_local global i32 0, align 4
@t1 = common dso_local global float 0.000000e+00, align 4
@t2 = common dso_local global i32 0, align 4
@t3 = common dso_local global i32 0, align 4
@t4 = common dso_local global i32 0, align 4
@t5 = common dso_local global i32 0, align 4
@t6 = common dso_local global i32 0, align 4
@t7 = common dso_local global float 0.000000e+00, align 4
@tf = common dso_local global i32 0, align 4
@u0 = common dso_local global i32 0, align 4
@u1 = common dso_local global i32 0, align 4
@u2 = common dso_local global float 0.000000e+00, align 4
@v1 = common dso_local global i32 0, align 4
@v2 = common dso_local global i32 0, align 4
@v3 = common dso_local global float 0.000000e+00, align 4
@s0 = common dso_local global float 0.000000e+00, align 4
@s1 = common dso_local global float 0.000000e+00, align 4
@s2 = common dso_local global float 0.000000e+00, align 4
@s3 = common dso_local global float 0.000000e+00, align 4
@r1 = common dso_local global float 0.000000e+00, align 4
@r2 = common dso_local global float 0.000000e+00, align 4
@r3 = common dso_local global float 0.000000e+00, align 4
@w0 = common dso_local global float 0.000000e+00, align 4
@w1 = common dso_local global float 0.000000e+00, align 4
@w2 = common dso_local global float 0.000000e+00, align 4
@half = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @__ieee754_lgammaf_r(float %0, i32* %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca i32*, align 8
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store float %0, float* %4, align 4
  store i32* %1, i32** %5, align 8
  %19 = load i32, i32* %16, align 4
  %20 = load float, float* %4, align 4
  %21 = call i32 @GET_FLOAT_WORD(i32 %19, float %20)
  %22 = load i32*, i32** %5, align 8
  store i32 1, i32* %22, align 4
  %23 = load i32, i32* %16, align 4
  %24 = and i32 %23, 2147483647
  store i32 %24, i32* %18, align 4
  %25 = load i32, i32* %18, align 4
  %26 = icmp sge i32 %25, 2139095040
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  %28 = load float, float* %4, align 4
  %29 = load float, float* %4, align 4
  %30 = fmul float %28, %29
  store float %30, float* %3, align 4
  br label %392

31:                                               ; preds = %2
  %32 = load i32, i32* %16, align 4
  %33 = ashr i32 %32, 31
  %34 = mul nsw i32 2, %33
  %35 = sub nsw i32 1, %34
  %36 = load i32*, i32** %5, align 8
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* %18, align 4
  %38 = icmp slt i32 %37, 838860800
  br i1 %38, label %39, label %51

39:                                               ; preds = %31
  %40 = load i32, i32* %18, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load float, float* @one, align 4
  %44 = load float, float* @vzero, align 4
  %45 = fdiv float %43, %44
  store float %45, float* %3, align 4
  br label %392

46:                                               ; preds = %39
  %47 = load float, float* %4, align 4
  %48 = call float @llvm.fabs.f32(float %47)
  %49 = call float @__ieee754_logf(float %48)
  %50 = fneg float %49
  store float %50, float* %3, align 4
  br label %392

51:                                               ; preds = %31
  %52 = load i32, i32* %16, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %88

54:                                               ; preds = %51
  %55 = load i32*, i32** %5, align 8
  store i32 1, i32* %55, align 4
  %56 = load i32, i32* %18, align 4
  %57 = icmp sge i32 %56, 1258291200
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load float, float* @one, align 4
  %60 = load float, float* @vzero, align 4
  %61 = fdiv float %59, %60
  store float %61, float* %3, align 4
  br label %392

62:                                               ; preds = %54
  %63 = load float, float* %4, align 4
  %64 = call float @sin_pif(float %63)
  store float %64, float* %12, align 4
  %65 = load float, float* %12, align 4
  %66 = load float, float* @zero, align 4
  %67 = fcmp oeq float %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %62
  %69 = load float, float* @one, align 4
  %70 = load float, float* @vzero, align 4
  %71 = fdiv float %69, %70
  store float %71, float* %3, align 4
  br label %392

72:                                               ; preds = %62
  %73 = load float, float* @pi, align 4
  %74 = load float, float* %12, align 4
  %75 = load float, float* %4, align 4
  %76 = fmul float %74, %75
  %77 = call float @llvm.fabs.f32(float %76)
  %78 = fdiv float %73, %77
  %79 = call float @__ieee754_logf(float %78)
  store float %79, float* %6, align 4
  %80 = load float, float* %12, align 4
  %81 = load float, float* @zero, align 4
  %82 = fcmp olt float %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %72
  %84 = load i32*, i32** %5, align 8
  store i32 -1, i32* %84, align 4
  br label %85

85:                                               ; preds = %83, %72
  %86 = load float, float* %4, align 4
  %87 = fneg float %86
  store float %87, float* %4, align 4
  br label %88

88:                                               ; preds = %85, %51
  %89 = load i32, i32* %18, align 4
  %90 = icmp eq i32 %89, 1065353216
  br i1 %90, label %94, label %91

91:                                               ; preds = %88
  %92 = load i32, i32* %18, align 4
  %93 = icmp eq i32 %92, 1073741824
  br i1 %93, label %94, label %95

94:                                               ; preds = %91, %88
  store float 0.000000e+00, float* %11, align 4
  br label %383

95:                                               ; preds = %91
  %96 = load i32, i32* %18, align 4
  %97 = icmp slt i32 %96, 1073741824
  br i1 %97, label %98, label %267

98:                                               ; preds = %95
  %99 = load i32, i32* %18, align 4
  %100 = icmp sle i32 %99, 1063675494
  br i1 %100, label %101, label %124

101:                                              ; preds = %98
  %102 = load float, float* %4, align 4
  %103 = call float @__ieee754_logf(float %102)
  %104 = fneg float %103
  store float %104, float* %11, align 4
  %105 = load i32, i32* %18, align 4
  %106 = icmp sge i32 %105, 1060850208
  br i1 %106, label %107, label %111

107:                                              ; preds = %101
  %108 = load float, float* @one, align 4
  %109 = load float, float* %4, align 4
  %110 = fsub float %108, %109
  store float %110, float* %14, align 4
  store i32 0, i32* %17, align 4
  br label %123

111:                                              ; preds = %101
  %112 = load i32, i32* %18, align 4
  %113 = icmp sge i32 %112, 1047343880
  br i1 %113, label %114, label %120

114:                                              ; preds = %111
  %115 = load float, float* %4, align 4
  %116 = load float, float* @tc, align 4
  %117 = load float, float* @one, align 4
  %118 = fsub float %116, %117
  %119 = fsub float %115, %118
  store float %119, float* %14, align 4
  store i32 1, i32* %17, align 4
  br label %122

120:                                              ; preds = %111
  %121 = load float, float* %4, align 4
  store float %121, float* %14, align 4
  store i32 2, i32* %17, align 4
  br label %122

122:                                              ; preds = %120, %114
  br label %123

123:                                              ; preds = %122, %107
  br label %144

124:                                              ; preds = %98
  %125 = load float, float* @zero, align 4
  store float %125, float* %11, align 4
  %126 = load i32, i32* %18, align 4
  %127 = icmp sge i32 %126, 1071490584
  br i1 %127, label %128, label %131

128:                                              ; preds = %124
  %129 = load float, float* %4, align 4
  %130 = fsub float 2.000000e+00, %129
  store float %130, float* %14, align 4
  store i32 0, i32* %17, align 4
  br label %143

131:                                              ; preds = %124
  %132 = load i32, i32* %18, align 4
  %133 = icmp sge i32 %132, 1067296288
  br i1 %133, label %134, label %138

134:                                              ; preds = %131
  %135 = load float, float* %4, align 4
  %136 = load float, float* @tc, align 4
  %137 = fsub float %135, %136
  store float %137, float* %14, align 4
  store i32 1, i32* %17, align 4
  br label %142

138:                                              ; preds = %131
  %139 = load float, float* %4, align 4
  %140 = load float, float* @one, align 4
  %141 = fsub float %139, %140
  store float %141, float* %14, align 4
  store i32 2, i32* %17, align 4
  br label %142

142:                                              ; preds = %138, %134
  br label %143

143:                                              ; preds = %142, %128
  br label %144

144:                                              ; preds = %143, %123
  %145 = load i32, i32* %17, align 4
  switch i32 %145, label %266 [
    i32 0, label %146
    i32 1, label %185
    i32 2, label %229
  ]

146:                                              ; preds = %144
  %147 = load float, float* %14, align 4
  %148 = load float, float* %14, align 4
  %149 = fmul float %147, %148
  store float %149, float* %15, align 4
  %150 = load i32, i32* @a0, align 4
  %151 = sitofp i32 %150 to float
  %152 = load float, float* %15, align 4
  %153 = load i32, i32* @a2, align 4
  %154 = sitofp i32 %153 to float
  %155 = load float, float* %15, align 4
  %156 = load float, float* @a4, align 4
  %157 = fmul float %155, %156
  %158 = fadd float %154, %157
  %159 = fmul float %152, %158
  %160 = fadd float %151, %159
  store float %160, float* %8, align 4
  %161 = load float, float* %15, align 4
  %162 = load i32, i32* @a1, align 4
  %163 = sitofp i32 %162 to float
  %164 = load float, float* %15, align 4
  %165 = load i32, i32* @a3, align 4
  %166 = sitofp i32 %165 to float
  %167 = load float, float* %15, align 4
  %168 = load float, float* @a5, align 4
  %169 = fmul float %167, %168
  %170 = fadd float %166, %169
  %171 = fmul float %164, %170
  %172 = fadd float %163, %171
  %173 = fmul float %161, %172
  store float %173, float* %9, align 4
  %174 = load float, float* %14, align 4
  %175 = load float, float* %8, align 4
  %176 = fmul float %174, %175
  %177 = load float, float* %9, align 4
  %178 = fadd float %176, %177
  store float %178, float* %7, align 4
  %179 = load float, float* %7, align 4
  %180 = load float, float* %14, align 4
  %181 = fdiv float %180, 2.000000e+00
  %182 = fsub float %179, %181
  %183 = load float, float* %11, align 4
  %184 = fadd float %183, %182
  store float %184, float* %11, align 4
  br label %266

185:                                              ; preds = %144
  %186 = load i32, i32* @t0, align 4
  %187 = sitofp i32 %186 to float
  %188 = load float, float* %14, align 4
  %189 = load float, float* @t1, align 4
  %190 = fmul float %188, %189
  %191 = fadd float %187, %190
  %192 = load float, float* %14, align 4
  %193 = load float, float* %14, align 4
  %194 = fmul float %192, %193
  %195 = load i32, i32* @t2, align 4
  %196 = sitofp i32 %195 to float
  %197 = load float, float* %14, align 4
  %198 = load i32, i32* @t3, align 4
  %199 = sitofp i32 %198 to float
  %200 = load float, float* %14, align 4
  %201 = load i32, i32* @t4, align 4
  %202 = sitofp i32 %201 to float
  %203 = load float, float* %14, align 4
  %204 = load i32, i32* @t5, align 4
  %205 = sitofp i32 %204 to float
  %206 = load float, float* %14, align 4
  %207 = load i32, i32* @t6, align 4
  %208 = sitofp i32 %207 to float
  %209 = load float, float* %14, align 4
  %210 = load float, float* @t7, align 4
  %211 = fmul float %209, %210
  %212 = fadd float %208, %211
  %213 = fmul float %206, %212
  %214 = fadd float %205, %213
  %215 = fmul float %203, %214
  %216 = fadd float %202, %215
  %217 = fmul float %200, %216
  %218 = fadd float %199, %217
  %219 = fmul float %197, %218
  %220 = fadd float %196, %219
  %221 = fmul float %194, %220
  %222 = fadd float %191, %221
  store float %222, float* %7, align 4
  %223 = load i32, i32* @tf, align 4
  %224 = sitofp i32 %223 to float
  %225 = load float, float* %7, align 4
  %226 = fadd float %224, %225
  %227 = load float, float* %11, align 4
  %228 = fadd float %227, %226
  store float %228, float* %11, align 4
  br label %266

229:                                              ; preds = %144
  %230 = load float, float* %14, align 4
  %231 = load i32, i32* @u0, align 4
  %232 = sitofp i32 %231 to float
  %233 = load float, float* %14, align 4
  %234 = load i32, i32* @u1, align 4
  %235 = sitofp i32 %234 to float
  %236 = load float, float* %14, align 4
  %237 = load float, float* @u2, align 4
  %238 = fmul float %236, %237
  %239 = fadd float %235, %238
  %240 = fmul float %233, %239
  %241 = fadd float %232, %240
  %242 = fmul float %230, %241
  store float %242, float* %8, align 4
  %243 = load float, float* @one, align 4
  %244 = load float, float* %14, align 4
  %245 = load i32, i32* @v1, align 4
  %246 = sitofp i32 %245 to float
  %247 = load float, float* %14, align 4
  %248 = load i32, i32* @v2, align 4
  %249 = sitofp i32 %248 to float
  %250 = load float, float* %14, align 4
  %251 = load float, float* @v3, align 4
  %252 = fmul float %250, %251
  %253 = fadd float %249, %252
  %254 = fmul float %247, %253
  %255 = fadd float %246, %254
  %256 = fmul float %244, %255
  %257 = fadd float %243, %256
  store float %257, float* %9, align 4
  %258 = load float, float* %8, align 4
  %259 = load float, float* %9, align 4
  %260 = fdiv float %258, %259
  %261 = load float, float* %14, align 4
  %262 = fdiv float %261, 2.000000e+00
  %263 = fsub float %260, %262
  %264 = load float, float* %11, align 4
  %265 = fadd float %264, %263
  store float %265, float* %11, align 4
  br label %266

266:                                              ; preds = %229, %144, %185, %146
  br label %382

267:                                              ; preds = %95
  %268 = load i32, i32* %18, align 4
  %269 = icmp slt i32 %268, 1090519040
  br i1 %269, label %270, label %343

270:                                              ; preds = %267
  %271 = load float, float* %4, align 4
  %272 = fptosi float %271 to i32
  store i32 %272, i32* %17, align 4
  %273 = load float, float* %4, align 4
  %274 = load i32, i32* %17, align 4
  %275 = sitofp i32 %274 to float
  %276 = fsub float %273, %275
  store float %276, float* %14, align 4
  %277 = load float, float* %14, align 4
  %278 = load float, float* @s0, align 4
  %279 = load float, float* %14, align 4
  %280 = load float, float* @s1, align 4
  %281 = load float, float* %14, align 4
  %282 = load float, float* @s2, align 4
  %283 = load float, float* %14, align 4
  %284 = load float, float* @s3, align 4
  %285 = fmul float %283, %284
  %286 = fadd float %282, %285
  %287 = fmul float %281, %286
  %288 = fadd float %280, %287
  %289 = fmul float %279, %288
  %290 = fadd float %278, %289
  %291 = fmul float %277, %290
  store float %291, float* %7, align 4
  %292 = load float, float* @one, align 4
  %293 = load float, float* %14, align 4
  %294 = load float, float* @r1, align 4
  %295 = load float, float* %14, align 4
  %296 = load float, float* @r2, align 4
  %297 = load float, float* %14, align 4
  %298 = load float, float* @r3, align 4
  %299 = fmul float %297, %298
  %300 = fadd float %296, %299
  %301 = fmul float %295, %300
  %302 = fadd float %294, %301
  %303 = fmul float %293, %302
  %304 = fadd float %292, %303
  store float %304, float* %10, align 4
  %305 = load float, float* %14, align 4
  %306 = fdiv float %305, 2.000000e+00
  %307 = load float, float* %7, align 4
  %308 = load float, float* %10, align 4
  %309 = fdiv float %307, %308
  %310 = fadd float %306, %309
  store float %310, float* %11, align 4
  %311 = load float, float* @one, align 4
  store float %311, float* %15, align 4
  %312 = load i32, i32* %17, align 4
  switch i32 %312, label %342 [
    i32 7, label %313
    i32 6, label %318
    i32 5, label %323
    i32 4, label %328
    i32 3, label %333
  ]

313:                                              ; preds = %270
  %314 = load float, float* %14, align 4
  %315 = fadd float %314, 6.000000e+00
  %316 = load float, float* %15, align 4
  %317 = fmul float %316, %315
  store float %317, float* %15, align 4
  br label %318

318:                                              ; preds = %270, %313
  %319 = load float, float* %14, align 4
  %320 = fadd float %319, 5.000000e+00
  %321 = load float, float* %15, align 4
  %322 = fmul float %321, %320
  store float %322, float* %15, align 4
  br label %323

323:                                              ; preds = %270, %318
  %324 = load float, float* %14, align 4
  %325 = fadd float %324, 4.000000e+00
  %326 = load float, float* %15, align 4
  %327 = fmul float %326, %325
  store float %327, float* %15, align 4
  br label %328

328:                                              ; preds = %270, %323
  %329 = load float, float* %14, align 4
  %330 = fadd float %329, 3.000000e+00
  %331 = load float, float* %15, align 4
  %332 = fmul float %331, %330
  store float %332, float* %15, align 4
  br label %333

333:                                              ; preds = %270, %328
  %334 = load float, float* %14, align 4
  %335 = fadd float %334, 2.000000e+00
  %336 = load float, float* %15, align 4
  %337 = fmul float %336, %335
  store float %337, float* %15, align 4
  %338 = load float, float* %15, align 4
  %339 = call float @__ieee754_logf(float %338)
  %340 = load float, float* %11, align 4
  %341 = fadd float %340, %339
  store float %341, float* %11, align 4
  br label %342

342:                                              ; preds = %270, %333
  br label %381

343:                                              ; preds = %267
  %344 = load i32, i32* %18, align 4
  %345 = icmp slt i32 %344, 1291845632
  br i1 %345, label %346, label %373

346:                                              ; preds = %343
  %347 = load float, float* %4, align 4
  %348 = call float @__ieee754_logf(float %347)
  store float %348, float* %12, align 4
  %349 = load float, float* @one, align 4
  %350 = load float, float* %4, align 4
  %351 = fdiv float %349, %350
  store float %351, float* %15, align 4
  %352 = load float, float* %15, align 4
  %353 = load float, float* %15, align 4
  %354 = fmul float %352, %353
  store float %354, float* %14, align 4
  %355 = load float, float* @w0, align 4
  %356 = load float, float* %15, align 4
  %357 = load float, float* @w1, align 4
  %358 = load float, float* %14, align 4
  %359 = load float, float* @w2, align 4
  %360 = fmul float %358, %359
  %361 = fadd float %357, %360
  %362 = fmul float %356, %361
  %363 = fadd float %355, %362
  store float %363, float* %13, align 4
  %364 = load float, float* %4, align 4
  %365 = load float, float* @half, align 4
  %366 = fsub float %364, %365
  %367 = load float, float* %12, align 4
  %368 = load float, float* @one, align 4
  %369 = fsub float %367, %368
  %370 = fmul float %366, %369
  %371 = load float, float* %13, align 4
  %372 = fadd float %370, %371
  store float %372, float* %11, align 4
  br label %380

373:                                              ; preds = %343
  %374 = load float, float* %4, align 4
  %375 = load float, float* %4, align 4
  %376 = call float @__ieee754_logf(float %375)
  %377 = load float, float* @one, align 4
  %378 = fsub float %376, %377
  %379 = fmul float %374, %378
  store float %379, float* %11, align 4
  br label %380

380:                                              ; preds = %373, %346
  br label %381

381:                                              ; preds = %380, %342
  br label %382

382:                                              ; preds = %381, %266
  br label %383

383:                                              ; preds = %382, %94
  %384 = load i32, i32* %16, align 4
  %385 = icmp slt i32 %384, 0
  br i1 %385, label %386, label %390

386:                                              ; preds = %383
  %387 = load float, float* %6, align 4
  %388 = load float, float* %11, align 4
  %389 = fsub float %387, %388
  store float %389, float* %11, align 4
  br label %390

390:                                              ; preds = %386, %383
  %391 = load float, float* %11, align 4
  store float %391, float* %3, align 4
  br label %392

392:                                              ; preds = %390, %68, %58, %46, %42, %27
  %393 = load float, float* %3, align 4
  ret float %393
}

declare dso_local i32 @GET_FLOAT_WORD(i32, float) #1

declare dso_local float @__ieee754_logf(float) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #2

declare dso_local float @sin_pif(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
