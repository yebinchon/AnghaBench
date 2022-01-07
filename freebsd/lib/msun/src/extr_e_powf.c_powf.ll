; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_powf.c_powf.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_powf.c_powf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@one = common dso_local global float 0.000000e+00, align 4
@zero = common dso_local global float 0.000000e+00, align 4
@huge = common dso_local global float 0.000000e+00, align 4
@tiny = common dso_local global float 0.000000e+00, align 4
@half = common dso_local global float 0.000000e+00, align 4
@thrd = common dso_local global float 0.000000e+00, align 4
@qrtr = common dso_local global float 0.000000e+00, align 4
@ivln2_h = common dso_local global float 0.000000e+00, align 4
@ivln2_l = common dso_local global float 0.000000e+00, align 4
@ivln2 = common dso_local global float 0.000000e+00, align 4
@two24 = common dso_local global float 0.000000e+00, align 4
@bp = common dso_local global float* null, align 8
@L1 = common dso_local global float 0.000000e+00, align 4
@L2 = common dso_local global float 0.000000e+00, align 4
@L3 = common dso_local global float 0.000000e+00, align 4
@L4 = common dso_local global float 0.000000e+00, align 4
@L5 = common dso_local global float 0.000000e+00, align 4
@L6 = common dso_local global float 0.000000e+00, align 4
@cp_h = common dso_local global float 0.000000e+00, align 4
@cp_l = common dso_local global float 0.000000e+00, align 4
@cp = common dso_local global float 0.000000e+00, align 4
@dp_l = common dso_local global float* null, align 8
@dp_h = common dso_local global float* null, align 8
@ovt = common dso_local global float 0.000000e+00, align 4
@lg2_h = common dso_local global float 0.000000e+00, align 4
@lg2 = common dso_local global float 0.000000e+00, align 4
@lg2_l = common dso_local global float 0.000000e+00, align 4
@P1 = common dso_local global float 0.000000e+00, align 4
@P2 = common dso_local global float 0.000000e+00, align 4
@P3 = common dso_local global float 0.000000e+00, align 4
@P4 = common dso_local global float 0.000000e+00, align 4
@P5 = common dso_local global float 0.000000e+00, align 4
@two = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @__ieee754_powf(float %0, float %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
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
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
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
  %32 = alloca float, align 4
  %33 = alloca float, align 4
  %34 = alloca float, align 4
  %35 = alloca float, align 4
  %36 = alloca float, align 4
  store float %0, float* %4, align 4
  store float %1, float* %5, align 4
  %37 = load i32, i32* %27, align 4
  %38 = load float, float* %4, align 4
  %39 = call i32 @GET_FLOAT_WORD(i32 %37, float %38)
  %40 = load i32, i32* %28, align 4
  %41 = load float, float* %5, align 4
  %42 = call i32 @GET_FLOAT_WORD(i32 %40, float %41)
  %43 = load i32, i32* %27, align 4
  %44 = and i32 %43, 2147483647
  store i32 %44, i32* %29, align 4
  %45 = load i32, i32* %28, align 4
  %46 = and i32 %45, 2147483647
  store i32 %46, i32* %30, align 4
  %47 = load i32, i32* %30, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %2
  %50 = load float, float* @one, align 4
  store float %50, float* %3, align 4
  br label %756

51:                                               ; preds = %2
  %52 = load i32, i32* %27, align 4
  %53 = icmp eq i32 %52, 1065353216
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load float, float* @one, align 4
  store float %55, float* %3, align 4
  br label %756

56:                                               ; preds = %51
  %57 = load i32, i32* %29, align 4
  %58 = icmp sgt i32 %57, 2139095040
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* %30, align 4
  %61 = icmp sgt i32 %60, 2139095040
  br i1 %61, label %62, label %66

62:                                               ; preds = %59, %56
  %63 = load float, float* %4, align 4
  %64 = load float, float* %5, align 4
  %65 = call float @nan_mix(float %63, float %64)
  store float %65, float* %3, align 4
  br label %756

66:                                               ; preds = %59
  store i32 0, i32* %25, align 4
  %67 = load i32, i32* %27, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %97

69:                                               ; preds = %66
  %70 = load i32, i32* %30, align 4
  %71 = icmp sge i32 %70, 1266679808
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  store i32 2, i32* %25, align 4
  br label %96

73:                                               ; preds = %69
  %74 = load i32, i32* %30, align 4
  %75 = icmp sge i32 %74, 1065353216
  br i1 %75, label %76, label %95

76:                                               ; preds = %73
  %77 = load i32, i32* %30, align 4
  %78 = ashr i32 %77, 23
  %79 = sub nsw i32 %78, 127
  store i32 %79, i32* %24, align 4
  %80 = load i32, i32* %30, align 4
  %81 = load i32, i32* %24, align 4
  %82 = sub nsw i32 23, %81
  %83 = ashr i32 %80, %82
  store i32 %83, i32* %23, align 4
  %84 = load i32, i32* %23, align 4
  %85 = load i32, i32* %24, align 4
  %86 = sub nsw i32 23, %85
  %87 = shl i32 %84, %86
  %88 = load i32, i32* %30, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %76
  %91 = load i32, i32* %23, align 4
  %92 = and i32 %91, 1
  %93 = sub nsw i32 2, %92
  store i32 %93, i32* %25, align 4
  br label %94

94:                                               ; preds = %90, %76
  br label %95

95:                                               ; preds = %94, %73
  br label %96

96:                                               ; preds = %95, %72
  br label %97

97:                                               ; preds = %96, %66
  %98 = load i32, i32* %30, align 4
  %99 = icmp eq i32 %98, 2139095040
  br i1 %99, label %100, label %127

100:                                              ; preds = %97
  %101 = load i32, i32* %29, align 4
  %102 = icmp eq i32 %101, 1065353216
  br i1 %102, label %103, label %105

103:                                              ; preds = %100
  %104 = load float, float* @one, align 4
  store float %104, float* %3, align 4
  br label %756

105:                                              ; preds = %100
  %106 = load i32, i32* %29, align 4
  %107 = icmp sgt i32 %106, 1065353216
  br i1 %107, label %108, label %117

108:                                              ; preds = %105
  %109 = load i32, i32* %28, align 4
  %110 = icmp sge i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %108
  %112 = load float, float* %5, align 4
  br label %115

113:                                              ; preds = %108
  %114 = load float, float* @zero, align 4
  br label %115

115:                                              ; preds = %113, %111
  %116 = phi float [ %112, %111 ], [ %114, %113 ]
  store float %116, float* %3, align 4
  br label %756

117:                                              ; preds = %105
  %118 = load i32, i32* %28, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %117
  %121 = load float, float* %5, align 4
  %122 = fneg float %121
  br label %125

123:                                              ; preds = %117
  %124 = load float, float* @zero, align 4
  br label %125

125:                                              ; preds = %123, %120
  %126 = phi float [ %122, %120 ], [ %124, %123 ]
  store float %126, float* %3, align 4
  br label %756

127:                                              ; preds = %97
  %128 = load i32, i32* %30, align 4
  %129 = icmp eq i32 %128, 1065353216
  br i1 %129, label %130, label %139

130:                                              ; preds = %127
  %131 = load i32, i32* %28, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %130
  %134 = load float, float* @one, align 4
  %135 = load float, float* %4, align 4
  %136 = fdiv float %134, %135
  store float %136, float* %3, align 4
  br label %756

137:                                              ; preds = %130
  %138 = load float, float* %4, align 4
  store float %138, float* %3, align 4
  br label %756

139:                                              ; preds = %127
  %140 = load i32, i32* %28, align 4
  %141 = icmp eq i32 %140, 1073741824
  br i1 %141, label %142, label %146

142:                                              ; preds = %139
  %143 = load float, float* %4, align 4
  %144 = load float, float* %4, align 4
  %145 = fmul float %143, %144
  store float %145, float* %3, align 4
  br label %756

146:                                              ; preds = %139
  %147 = load i32, i32* %28, align 4
  %148 = icmp eq i32 %147, 1056964608
  br i1 %148, label %149, label %156

149:                                              ; preds = %146
  %150 = load i32, i32* %27, align 4
  %151 = icmp sge i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %149
  %153 = load float, float* %4, align 4
  %154 = call float @__ieee754_sqrtf(float %153)
  store float %154, float* %3, align 4
  br label %756

155:                                              ; preds = %149
  br label %156

156:                                              ; preds = %155, %146
  %157 = load float, float* %4, align 4
  %158 = call float @llvm.fabs.f32(float %157)
  store float %158, float* %7, align 4
  %159 = load i32, i32* %29, align 4
  %160 = icmp eq i32 %159, 2139095040
  br i1 %160, label %167, label %161

161:                                              ; preds = %156
  %162 = load i32, i32* %29, align 4
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %167, label %164

164:                                              ; preds = %161
  %165 = load i32, i32* %29, align 4
  %166 = icmp eq i32 %165, 1065353216
  br i1 %166, label %167, label %202

167:                                              ; preds = %164, %161, %156
  %168 = load float, float* %7, align 4
  store float %168, float* %6, align 4
  %169 = load i32, i32* %28, align 4
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %167
  %172 = load float, float* @one, align 4
  %173 = load float, float* %6, align 4
  %174 = fdiv float %172, %173
  store float %174, float* %6, align 4
  br label %175

175:                                              ; preds = %171, %167
  %176 = load i32, i32* %27, align 4
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %178, label %200

178:                                              ; preds = %175
  %179 = load i32, i32* %29, align 4
  %180 = sub nsw i32 %179, 1065353216
  %181 = load i32, i32* %25, align 4
  %182 = or i32 %180, %181
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %192

184:                                              ; preds = %178
  %185 = load float, float* %6, align 4
  %186 = load float, float* %6, align 4
  %187 = fsub float %185, %186
  %188 = load float, float* %6, align 4
  %189 = load float, float* %6, align 4
  %190 = fsub float %188, %189
  %191 = fdiv float %187, %190
  store float %191, float* %6, align 4
  br label %199

192:                                              ; preds = %178
  %193 = load i32, i32* %25, align 4
  %194 = icmp eq i32 %193, 1
  br i1 %194, label %195, label %198

195:                                              ; preds = %192
  %196 = load float, float* %6, align 4
  %197 = fneg float %196
  store float %197, float* %6, align 4
  br label %198

198:                                              ; preds = %195, %192
  br label %199

199:                                              ; preds = %198, %184
  br label %200

200:                                              ; preds = %199, %175
  %201 = load float, float* %6, align 4
  store float %201, float* %3, align 4
  br label %756

202:                                              ; preds = %164
  %203 = load i32, i32* %27, align 4
  %204 = ashr i32 %203, 31
  %205 = sub nsw i32 %204, 1
  store i32 %205, i32* %26, align 4
  %206 = load i32, i32* %26, align 4
  %207 = load i32, i32* %25, align 4
  %208 = or i32 %206, %207
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %218

210:                                              ; preds = %202
  %211 = load float, float* %4, align 4
  %212 = load float, float* %4, align 4
  %213 = fsub float %211, %212
  %214 = load float, float* %4, align 4
  %215 = load float, float* %4, align 4
  %216 = fsub float %214, %215
  %217 = fdiv float %213, %216
  store float %217, float* %3, align 4
  br label %756

218:                                              ; preds = %202
  %219 = load float, float* @one, align 4
  store float %219, float* %17, align 4
  %220 = load i32, i32* %26, align 4
  %221 = load i32, i32* %25, align 4
  %222 = sub nsw i32 %221, 1
  %223 = or i32 %220, %222
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %228

225:                                              ; preds = %218
  %226 = load float, float* @one, align 4
  %227 = fneg float %226
  store float %227, float* %17, align 4
  br label %228

228:                                              ; preds = %225, %218
  %229 = load i32, i32* %30, align 4
  %230 = icmp sgt i32 %229, 1291845632
  br i1 %230, label %231, label %312

231:                                              ; preds = %228
  %232 = load i32, i32* %29, align 4
  %233 = icmp slt i32 %232, 1065353208
  br i1 %233, label %234, label %251

234:                                              ; preds = %231
  %235 = load i32, i32* %28, align 4
  %236 = icmp slt i32 %235, 0
  br i1 %236, label %237, label %243

237:                                              ; preds = %234
  %238 = load float, float* %17, align 4
  %239 = load float, float* @huge, align 4
  %240 = fmul float %238, %239
  %241 = load float, float* @huge, align 4
  %242 = fmul float %240, %241
  br label %249

243:                                              ; preds = %234
  %244 = load float, float* %17, align 4
  %245 = load float, float* @tiny, align 4
  %246 = fmul float %244, %245
  %247 = load float, float* @tiny, align 4
  %248 = fmul float %246, %247
  br label %249

249:                                              ; preds = %243, %237
  %250 = phi float [ %242, %237 ], [ %248, %243 ]
  store float %250, float* %3, align 4
  br label %756

251:                                              ; preds = %231
  %252 = load i32, i32* %29, align 4
  %253 = icmp sgt i32 %252, 1065353223
  br i1 %253, label %254, label %271

254:                                              ; preds = %251
  %255 = load i32, i32* %28, align 4
  %256 = icmp sgt i32 %255, 0
  br i1 %256, label %257, label %263

257:                                              ; preds = %254
  %258 = load float, float* %17, align 4
  %259 = load float, float* @huge, align 4
  %260 = fmul float %258, %259
  %261 = load float, float* @huge, align 4
  %262 = fmul float %260, %261
  br label %269

263:                                              ; preds = %254
  %264 = load float, float* %17, align 4
  %265 = load float, float* @tiny, align 4
  %266 = fmul float %264, %265
  %267 = load float, float* @tiny, align 4
  %268 = fmul float %266, %267
  br label %269

269:                                              ; preds = %263, %257
  %270 = phi float [ %262, %257 ], [ %268, %263 ]
  store float %270, float* %3, align 4
  br label %756

271:                                              ; preds = %251
  %272 = load float, float* %7, align 4
  %273 = fsub float %272, 1.000000e+00
  store float %273, float* %18, align 4
  %274 = load float, float* %18, align 4
  %275 = load float, float* %18, align 4
  %276 = fmul float %274, %275
  %277 = load float, float* @half, align 4
  %278 = load float, float* %18, align 4
  %279 = load float, float* @thrd, align 4
  %280 = load float, float* %18, align 4
  %281 = load float, float* @qrtr, align 4
  %282 = fmul float %280, %281
  %283 = fsub float %279, %282
  %284 = fmul float %278, %283
  %285 = fsub float %277, %284
  %286 = fmul float %276, %285
  store float %286, float* %21, align 4
  %287 = load float, float* @ivln2_h, align 4
  %288 = load float, float* %18, align 4
  %289 = fmul float %287, %288
  store float %289, float* %19, align 4
  %290 = load float, float* %18, align 4
  %291 = load float, float* @ivln2_l, align 4
  %292 = fmul float %290, %291
  %293 = load float, float* %21, align 4
  %294 = load float, float* @ivln2, align 4
  %295 = fmul float %293, %294
  %296 = fsub float %292, %295
  store float %296, float* %20, align 4
  %297 = load float, float* %19, align 4
  %298 = load float, float* %20, align 4
  %299 = fadd float %297, %298
  store float %299, float* %13, align 4
  %300 = load i32, i32* %31, align 4
  %301 = load float, float* %13, align 4
  %302 = call i32 @GET_FLOAT_WORD(i32 %300, float %301)
  %303 = load float, float* %13, align 4
  %304 = load i32, i32* %31, align 4
  %305 = and i32 %304, -4096
  %306 = call i32 @SET_FLOAT_WORD(float %303, i32 %305)
  %307 = load float, float* %20, align 4
  %308 = load float, float* %13, align 4
  %309 = load float, float* %19, align 4
  %310 = fsub float %308, %309
  %311 = fsub float %307, %310
  store float %311, float* %14, align 4
  br label %538

312:                                              ; preds = %228
  store i32 0, i32* %26, align 4
  %313 = load i32, i32* %29, align 4
  %314 = icmp slt i32 %313, 8388608
  br i1 %314, label %315, label %324

315:                                              ; preds = %312
  %316 = load float, float* @two24, align 4
  %317 = load float, float* %7, align 4
  %318 = fmul float %317, %316
  store float %318, float* %7, align 4
  %319 = load i32, i32* %26, align 4
  %320 = sub nsw i32 %319, 24
  store i32 %320, i32* %26, align 4
  %321 = load i32, i32* %29, align 4
  %322 = load float, float* %7, align 4
  %323 = call i32 @GET_FLOAT_WORD(i32 %321, float %322)
  br label %324

324:                                              ; preds = %315, %312
  %325 = load i32, i32* %29, align 4
  %326 = ashr i32 %325, 23
  %327 = sub nsw i32 %326, 127
  %328 = load i32, i32* %26, align 4
  %329 = add nsw i32 %328, %327
  store i32 %329, i32* %26, align 4
  %330 = load i32, i32* %29, align 4
  %331 = and i32 %330, 8388607
  store i32 %331, i32* %23, align 4
  %332 = load i32, i32* %23, align 4
  %333 = or i32 %332, 1065353216
  store i32 %333, i32* %29, align 4
  %334 = load i32, i32* %23, align 4
  %335 = icmp sle i32 %334, 1885297
  br i1 %335, label %336, label %337

336:                                              ; preds = %324
  store i32 0, i32* %24, align 4
  br label %347

337:                                              ; preds = %324
  %338 = load i32, i32* %23, align 4
  %339 = icmp slt i32 %338, 6140887
  br i1 %339, label %340, label %341

340:                                              ; preds = %337
  store i32 1, i32* %24, align 4
  br label %346

341:                                              ; preds = %337
  store i32 0, i32* %24, align 4
  %342 = load i32, i32* %26, align 4
  %343 = add nsw i32 %342, 1
  store i32 %343, i32* %26, align 4
  %344 = load i32, i32* %29, align 4
  %345 = sub nsw i32 %344, 8388608
  store i32 %345, i32* %29, align 4
  br label %346

346:                                              ; preds = %341, %340
  br label %347

347:                                              ; preds = %346, %336
  %348 = load float, float* %7, align 4
  %349 = load i32, i32* %29, align 4
  %350 = call i32 @SET_FLOAT_WORD(float %348, i32 %349)
  %351 = load float, float* %7, align 4
  %352 = load float*, float** @bp, align 8
  %353 = load i32, i32* %24, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds float, float* %352, i64 %354
  %356 = load float, float* %355, align 4
  %357 = fsub float %351, %356
  store float %357, float* %19, align 4
  %358 = load float, float* @one, align 4
  %359 = load float, float* %7, align 4
  %360 = load float*, float** @bp, align 8
  %361 = load i32, i32* %24, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds float, float* %360, i64 %362
  %364 = load float, float* %363, align 4
  %365 = fadd float %359, %364
  %366 = fdiv float %358, %365
  store float %366, float* %20, align 4
  %367 = load float, float* %19, align 4
  %368 = load float, float* %20, align 4
  %369 = fmul float %367, %368
  store float %369, float* %16, align 4
  %370 = load float, float* %16, align 4
  store float %370, float* %33, align 4
  %371 = load i32, i32* %31, align 4
  %372 = load float, float* %33, align 4
  %373 = call i32 @GET_FLOAT_WORD(i32 %371, float %372)
  %374 = load float, float* %33, align 4
  %375 = load i32, i32* %31, align 4
  %376 = and i32 %375, -4096
  %377 = call i32 @SET_FLOAT_WORD(float %374, i32 %376)
  %378 = load i32, i32* %29, align 4
  %379 = ashr i32 %378, 1
  %380 = and i32 %379, -4096
  %381 = or i32 %380, 536870912
  store i32 %381, i32* %31, align 4
  %382 = load float, float* %35, align 4
  %383 = load i32, i32* %31, align 4
  %384 = add nsw i32 %383, 4194304
  %385 = load i32, i32* %24, align 4
  %386 = shl i32 %385, 21
  %387 = add nsw i32 %384, %386
  %388 = call i32 @SET_FLOAT_WORD(float %382, i32 %387)
  %389 = load float, float* %7, align 4
  %390 = load float, float* %35, align 4
  %391 = load float*, float** @bp, align 8
  %392 = load i32, i32* %24, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds float, float* %391, i64 %393
  %395 = load float, float* %394, align 4
  %396 = fsub float %390, %395
  %397 = fsub float %389, %396
  store float %397, float* %36, align 4
  %398 = load float, float* %20, align 4
  %399 = load float, float* %19, align 4
  %400 = load float, float* %33, align 4
  %401 = load float, float* %35, align 4
  %402 = fmul float %400, %401
  %403 = fsub float %399, %402
  %404 = load float, float* %33, align 4
  %405 = load float, float* %36, align 4
  %406 = fmul float %404, %405
  %407 = fsub float %403, %406
  %408 = fmul float %398, %407
  store float %408, float* %34, align 4
  %409 = load float, float* %16, align 4
  %410 = load float, float* %16, align 4
  %411 = fmul float %409, %410
  store float %411, float* %32, align 4
  %412 = load float, float* %32, align 4
  %413 = load float, float* %32, align 4
  %414 = fmul float %412, %413
  %415 = load float, float* @L1, align 4
  %416 = load float, float* %32, align 4
  %417 = load float, float* @L2, align 4
  %418 = load float, float* %32, align 4
  %419 = load float, float* @L3, align 4
  %420 = load float, float* %32, align 4
  %421 = load float, float* @L4, align 4
  %422 = load float, float* %32, align 4
  %423 = load float, float* @L5, align 4
  %424 = load float, float* %32, align 4
  %425 = load float, float* @L6, align 4
  %426 = fmul float %424, %425
  %427 = fadd float %423, %426
  %428 = fmul float %422, %427
  %429 = fadd float %421, %428
  %430 = fmul float %420, %429
  %431 = fadd float %419, %430
  %432 = fmul float %418, %431
  %433 = fadd float %417, %432
  %434 = fmul float %416, %433
  %435 = fadd float %415, %434
  %436 = fmul float %414, %435
  store float %436, float* %15, align 4
  %437 = load float, float* %34, align 4
  %438 = load float, float* %33, align 4
  %439 = load float, float* %16, align 4
  %440 = fadd float %438, %439
  %441 = fmul float %437, %440
  %442 = load float, float* %15, align 4
  %443 = fadd float %442, %441
  store float %443, float* %15, align 4
  %444 = load float, float* %33, align 4
  %445 = load float, float* %33, align 4
  %446 = fmul float %444, %445
  store float %446, float* %32, align 4
  %447 = load float, float* %32, align 4
  %448 = fadd float 3.000000e+00, %447
  %449 = load float, float* %15, align 4
  %450 = fadd float %448, %449
  store float %450, float* %35, align 4
  %451 = load i32, i32* %31, align 4
  %452 = load float, float* %35, align 4
  %453 = call i32 @GET_FLOAT_WORD(i32 %451, float %452)
  %454 = load float, float* %35, align 4
  %455 = load i32, i32* %31, align 4
  %456 = and i32 %455, -4096
  %457 = call i32 @SET_FLOAT_WORD(float %454, i32 %456)
  %458 = load float, float* %15, align 4
  %459 = load float, float* %35, align 4
  %460 = fsub float %459, 3.000000e+00
  %461 = load float, float* %32, align 4
  %462 = fsub float %460, %461
  %463 = fsub float %458, %462
  store float %463, float* %36, align 4
  %464 = load float, float* %33, align 4
  %465 = load float, float* %35, align 4
  %466 = fmul float %464, %465
  store float %466, float* %19, align 4
  %467 = load float, float* %34, align 4
  %468 = load float, float* %35, align 4
  %469 = fmul float %467, %468
  %470 = load float, float* %36, align 4
  %471 = load float, float* %16, align 4
  %472 = fmul float %470, %471
  %473 = fadd float %469, %472
  store float %473, float* %20, align 4
  %474 = load float, float* %19, align 4
  %475 = load float, float* %20, align 4
  %476 = fadd float %474, %475
  store float %476, float* %10, align 4
  %477 = load i32, i32* %31, align 4
  %478 = load float, float* %10, align 4
  %479 = call i32 @GET_FLOAT_WORD(i32 %477, float %478)
  %480 = load float, float* %10, align 4
  %481 = load i32, i32* %31, align 4
  %482 = and i32 %481, -4096
  %483 = call i32 @SET_FLOAT_WORD(float %480, i32 %482)
  %484 = load float, float* %20, align 4
  %485 = load float, float* %10, align 4
  %486 = load float, float* %19, align 4
  %487 = fsub float %485, %486
  %488 = fsub float %484, %487
  store float %488, float* %11, align 4
  %489 = load float, float* @cp_h, align 4
  %490 = load float, float* %10, align 4
  %491 = fmul float %489, %490
  store float %491, float* %8, align 4
  %492 = load float, float* @cp_l, align 4
  %493 = load float, float* %10, align 4
  %494 = fmul float %492, %493
  %495 = load float, float* %11, align 4
  %496 = load float, float* @cp, align 4
  %497 = fmul float %495, %496
  %498 = fadd float %494, %497
  %499 = load float*, float** @dp_l, align 8
  %500 = load i32, i32* %24, align 4
  %501 = sext i32 %500 to i64
  %502 = getelementptr inbounds float, float* %499, i64 %501
  %503 = load float, float* %502, align 4
  %504 = fadd float %498, %503
  store float %504, float* %9, align 4
  %505 = load i32, i32* %26, align 4
  %506 = sitofp i32 %505 to float
  store float %506, float* %18, align 4
  %507 = load float, float* %8, align 4
  %508 = load float, float* %9, align 4
  %509 = fadd float %507, %508
  %510 = load float*, float** @dp_h, align 8
  %511 = load i32, i32* %24, align 4
  %512 = sext i32 %511 to i64
  %513 = getelementptr inbounds float, float* %510, i64 %512
  %514 = load float, float* %513, align 4
  %515 = fadd float %509, %514
  %516 = load float, float* %18, align 4
  %517 = fadd float %515, %516
  store float %517, float* %13, align 4
  %518 = load i32, i32* %31, align 4
  %519 = load float, float* %13, align 4
  %520 = call i32 @GET_FLOAT_WORD(i32 %518, float %519)
  %521 = load float, float* %13, align 4
  %522 = load i32, i32* %31, align 4
  %523 = and i32 %522, -4096
  %524 = call i32 @SET_FLOAT_WORD(float %521, i32 %523)
  %525 = load float, float* %9, align 4
  %526 = load float, float* %13, align 4
  %527 = load float, float* %18, align 4
  %528 = fsub float %526, %527
  %529 = load float*, float** @dp_h, align 8
  %530 = load i32, i32* %24, align 4
  %531 = sext i32 %530 to i64
  %532 = getelementptr inbounds float, float* %529, i64 %531
  %533 = load float, float* %532, align 4
  %534 = fsub float %528, %533
  %535 = load float, float* %8, align 4
  %536 = fsub float %534, %535
  %537 = fsub float %525, %536
  store float %537, float* %14, align 4
  br label %538

538:                                              ; preds = %347, %271
  %539 = load i32, i32* %31, align 4
  %540 = load float, float* %5, align 4
  %541 = call i32 @GET_FLOAT_WORD(i32 %539, float %540)
  %542 = load float, float* %12, align 4
  %543 = load i32, i32* %31, align 4
  %544 = and i32 %543, -4096
  %545 = call i32 @SET_FLOAT_WORD(float %542, i32 %544)
  %546 = load float, float* %5, align 4
  %547 = load float, float* %12, align 4
  %548 = fsub float %546, %547
  %549 = load float, float* %13, align 4
  %550 = fmul float %548, %549
  %551 = load float, float* %5, align 4
  %552 = load float, float* %14, align 4
  %553 = fmul float %551, %552
  %554 = fadd float %550, %553
  store float %554, float* %11, align 4
  %555 = load float, float* %12, align 4
  %556 = load float, float* %13, align 4
  %557 = fmul float %555, %556
  store float %557, float* %10, align 4
  %558 = load float, float* %11, align 4
  %559 = load float, float* %10, align 4
  %560 = fadd float %558, %559
  store float %560, float* %6, align 4
  %561 = load i32, i32* %23, align 4
  %562 = load float, float* %6, align 4
  %563 = call i32 @GET_FLOAT_WORD(i32 %561, float %562)
  %564 = load i32, i32* %23, align 4
  %565 = icmp sgt i32 %564, 1124073472
  br i1 %565, label %566, label %572

566:                                              ; preds = %538
  %567 = load float, float* %17, align 4
  %568 = load float, float* @huge, align 4
  %569 = fmul float %567, %568
  %570 = load float, float* @huge, align 4
  %571 = fmul float %569, %570
  store float %571, float* %3, align 4
  br label %756

572:                                              ; preds = %538
  %573 = load i32, i32* %23, align 4
  %574 = icmp eq i32 %573, 1124073472
  br i1 %574, label %575, label %590

575:                                              ; preds = %572
  %576 = load float, float* %11, align 4
  %577 = load float, float* @ovt, align 4
  %578 = fadd float %576, %577
  %579 = load float, float* %6, align 4
  %580 = load float, float* %10, align 4
  %581 = fsub float %579, %580
  %582 = fcmp ogt float %578, %581
  br i1 %582, label %583, label %589

583:                                              ; preds = %575
  %584 = load float, float* %17, align 4
  %585 = load float, float* @huge, align 4
  %586 = fmul float %584, %585
  %587 = load float, float* @huge, align 4
  %588 = fmul float %586, %587
  store float %588, float* %3, align 4
  br label %756

589:                                              ; preds = %575
  br label %618

590:                                              ; preds = %572
  %591 = load i32, i32* %23, align 4
  %592 = and i32 %591, 2147483647
  %593 = icmp sgt i32 %592, 1125515264
  br i1 %593, label %594, label %600

594:                                              ; preds = %590
  %595 = load float, float* %17, align 4
  %596 = load float, float* @tiny, align 4
  %597 = fmul float %595, %596
  %598 = load float, float* @tiny, align 4
  %599 = fmul float %597, %598
  store float %599, float* %3, align 4
  br label %756

600:                                              ; preds = %590
  %601 = load i32, i32* %23, align 4
  %602 = icmp eq i32 %601, -1021968384
  br i1 %602, label %603, label %616

603:                                              ; preds = %600
  %604 = load float, float* %11, align 4
  %605 = load float, float* %6, align 4
  %606 = load float, float* %10, align 4
  %607 = fsub float %605, %606
  %608 = fcmp ole float %604, %607
  br i1 %608, label %609, label %615

609:                                              ; preds = %603
  %610 = load float, float* %17, align 4
  %611 = load float, float* @tiny, align 4
  %612 = fmul float %610, %611
  %613 = load float, float* @tiny, align 4
  %614 = fmul float %612, %613
  store float %614, float* %3, align 4
  br label %756

615:                                              ; preds = %603
  br label %616

616:                                              ; preds = %615, %600
  br label %617

617:                                              ; preds = %616
  br label %618

618:                                              ; preds = %617, %589
  br label %619

619:                                              ; preds = %618
  %620 = load i32, i32* %23, align 4
  %621 = and i32 %620, 2147483647
  store i32 %621, i32* %22, align 4
  %622 = load i32, i32* %22, align 4
  %623 = ashr i32 %622, 23
  %624 = sub nsw i32 %623, 127
  store i32 %624, i32* %24, align 4
  store i32 0, i32* %26, align 4
  %625 = load i32, i32* %22, align 4
  %626 = icmp sgt i32 %625, 1056964608
  br i1 %626, label %627, label %659

627:                                              ; preds = %619
  %628 = load i32, i32* %23, align 4
  %629 = load i32, i32* %24, align 4
  %630 = add nsw i32 %629, 1
  %631 = ashr i32 8388608, %630
  %632 = add nsw i32 %628, %631
  store i32 %632, i32* %26, align 4
  %633 = load i32, i32* %26, align 4
  %634 = and i32 %633, 2147483647
  %635 = ashr i32 %634, 23
  %636 = sub nsw i32 %635, 127
  store i32 %636, i32* %24, align 4
  %637 = load float, float* %18, align 4
  %638 = load i32, i32* %26, align 4
  %639 = load i32, i32* %24, align 4
  %640 = ashr i32 8388607, %639
  %641 = xor i32 %640, -1
  %642 = and i32 %638, %641
  %643 = call i32 @SET_FLOAT_WORD(float %637, i32 %642)
  %644 = load i32, i32* %26, align 4
  %645 = and i32 %644, 8388607
  %646 = or i32 %645, 8388608
  %647 = load i32, i32* %24, align 4
  %648 = sub nsw i32 23, %647
  %649 = ashr i32 %646, %648
  store i32 %649, i32* %26, align 4
  %650 = load i32, i32* %23, align 4
  %651 = icmp slt i32 %650, 0
  br i1 %651, label %652, label %655

652:                                              ; preds = %627
  %653 = load i32, i32* %26, align 4
  %654 = sub nsw i32 0, %653
  store i32 %654, i32* %26, align 4
  br label %655

655:                                              ; preds = %652, %627
  %656 = load float, float* %18, align 4
  %657 = load float, float* %10, align 4
  %658 = fsub float %657, %656
  store float %658, float* %10, align 4
  br label %659

659:                                              ; preds = %655, %619
  %660 = load float, float* %11, align 4
  %661 = load float, float* %10, align 4
  %662 = fadd float %660, %661
  store float %662, float* %18, align 4
  %663 = load i32, i32* %31, align 4
  %664 = load float, float* %18, align 4
  %665 = call i32 @GET_FLOAT_WORD(i32 %663, float %664)
  %666 = load float, float* %18, align 4
  %667 = load i32, i32* %31, align 4
  %668 = and i32 %667, -32768
  %669 = call i32 @SET_FLOAT_WORD(float %666, i32 %668)
  %670 = load float, float* %18, align 4
  %671 = load float, float* @lg2_h, align 4
  %672 = fmul float %670, %671
  store float %672, float* %19, align 4
  %673 = load float, float* %11, align 4
  %674 = load float, float* %18, align 4
  %675 = load float, float* %10, align 4
  %676 = fsub float %674, %675
  %677 = fsub float %673, %676
  %678 = load float, float* @lg2, align 4
  %679 = fmul float %677, %678
  %680 = load float, float* %18, align 4
  %681 = load float, float* @lg2_l, align 4
  %682 = fmul float %680, %681
  %683 = fadd float %679, %682
  store float %683, float* %20, align 4
  %684 = load float, float* %19, align 4
  %685 = load float, float* %20, align 4
  %686 = fadd float %684, %685
  store float %686, float* %6, align 4
  %687 = load float, float* %20, align 4
  %688 = load float, float* %6, align 4
  %689 = load float, float* %19, align 4
  %690 = fsub float %688, %689
  %691 = fsub float %687, %690
  store float %691, float* %21, align 4
  %692 = load float, float* %6, align 4
  %693 = load float, float* %6, align 4
  %694 = fmul float %692, %693
  store float %694, float* %18, align 4
  %695 = load float, float* %6, align 4
  %696 = load float, float* %18, align 4
  %697 = load float, float* @P1, align 4
  %698 = load float, float* %18, align 4
  %699 = load float, float* @P2, align 4
  %700 = load float, float* %18, align 4
  %701 = load float, float* @P3, align 4
  %702 = load float, float* %18, align 4
  %703 = load float, float* @P4, align 4
  %704 = load float, float* %18, align 4
  %705 = load float, float* @P5, align 4
  %706 = fmul float %704, %705
  %707 = fadd float %703, %706
  %708 = fmul float %702, %707
  %709 = fadd float %701, %708
  %710 = fmul float %700, %709
  %711 = fadd float %699, %710
  %712 = fmul float %698, %711
  %713 = fadd float %697, %712
  %714 = fmul float %696, %713
  %715 = fsub float %695, %714
  store float %715, float* %13, align 4
  %716 = load float, float* %6, align 4
  %717 = load float, float* %13, align 4
  %718 = fmul float %716, %717
  %719 = load float, float* %13, align 4
  %720 = load float, float* @two, align 4
  %721 = fsub float %719, %720
  %722 = fdiv float %718, %721
  %723 = load float, float* %21, align 4
  %724 = load float, float* %6, align 4
  %725 = load float, float* %21, align 4
  %726 = fmul float %724, %725
  %727 = fadd float %723, %726
  %728 = fsub float %722, %727
  store float %728, float* %15, align 4
  %729 = load float, float* @one, align 4
  %730 = load float, float* %15, align 4
  %731 = load float, float* %6, align 4
  %732 = fsub float %730, %731
  %733 = fsub float %729, %732
  store float %733, float* %6, align 4
  %734 = load i32, i32* %23, align 4
  %735 = load float, float* %6, align 4
  %736 = call i32 @GET_FLOAT_WORD(i32 %734, float %735)
  %737 = load i32, i32* %26, align 4
  %738 = shl i32 %737, 23
  %739 = load i32, i32* %23, align 4
  %740 = add nsw i32 %739, %738
  store i32 %740, i32* %23, align 4
  %741 = load i32, i32* %23, align 4
  %742 = ashr i32 %741, 23
  %743 = icmp sle i32 %742, 0
  br i1 %743, label %744, label %748

744:                                              ; preds = %659
  %745 = load float, float* %6, align 4
  %746 = load i32, i32* %26, align 4
  %747 = call float @scalbnf(float %745, i32 %746) #4
  store float %747, float* %6, align 4
  br label %752

748:                                              ; preds = %659
  %749 = load float, float* %6, align 4
  %750 = load i32, i32* %23, align 4
  %751 = call i32 @SET_FLOAT_WORD(float %749, i32 %750)
  br label %752

752:                                              ; preds = %748, %744
  %753 = load float, float* %17, align 4
  %754 = load float, float* %6, align 4
  %755 = fmul float %753, %754
  store float %755, float* %3, align 4
  br label %756

756:                                              ; preds = %752, %609, %594, %583, %566, %269, %249, %210, %200, %152, %142, %137, %133, %125, %115, %103, %62, %54, %49
  %757 = load float, float* %3, align 4
  ret float %757
}

declare dso_local i32 @GET_FLOAT_WORD(i32, float) #1

declare dso_local float @nan_mix(float, float) #1

declare dso_local float @__ieee754_sqrtf(float) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #2

declare dso_local i32 @SET_FLOAT_WORD(float, i32) #1

; Function Attrs: nounwind
declare dso_local float @scalbnf(float, i32) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
