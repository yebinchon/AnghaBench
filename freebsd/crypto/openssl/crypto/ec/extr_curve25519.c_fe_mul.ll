; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_curve25519.c_fe_mul.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_curve25519.c_fe_mul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kTop38Bits = common dso_local global i32 0, align 4
@kTop39Bits = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*)* @fe_mul to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fe_mul(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
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
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  %52 = alloca i32, align 4
  %53 = alloca i32, align 4
  %54 = alloca i32, align 4
  %55 = alloca i32, align 4
  %56 = alloca i32, align 4
  %57 = alloca i32, align 4
  %58 = alloca i32, align 4
  %59 = alloca i32, align 4
  %60 = alloca i32, align 4
  %61 = alloca i32, align 4
  %62 = alloca i32, align 4
  %63 = alloca i32, align 4
  %64 = alloca i32, align 4
  %65 = alloca i32, align 4
  %66 = alloca i32, align 4
  %67 = alloca i32, align 4
  %68 = alloca i32, align 4
  %69 = alloca i32, align 4
  %70 = alloca i32, align 4
  %71 = alloca i32, align 4
  %72 = alloca i32, align 4
  %73 = alloca i32, align 4
  %74 = alloca i32, align 4
  %75 = alloca i32, align 4
  %76 = alloca i32, align 4
  %77 = alloca i32, align 4
  %78 = alloca i32, align 4
  %79 = alloca i32, align 4
  %80 = alloca i32, align 4
  %81 = alloca i32, align 4
  %82 = alloca i32, align 4
  %83 = alloca i32, align 4
  %84 = alloca i32, align 4
  %85 = alloca i32, align 4
  %86 = alloca i32, align 4
  %87 = alloca i32, align 4
  %88 = alloca i32, align 4
  %89 = alloca i32, align 4
  %90 = alloca i32, align 4
  %91 = alloca i32, align 4
  %92 = alloca i32, align 4
  %93 = alloca i32, align 4
  %94 = alloca i32, align 4
  %95 = alloca i32, align 4
  %96 = alloca i32, align 4
  %97 = alloca i32, align 4
  %98 = alloca i32, align 4
  %99 = alloca i32, align 4
  %100 = alloca i32, align 4
  %101 = alloca i32, align 4
  %102 = alloca i32, align 4
  %103 = alloca i32, align 4
  %104 = alloca i32, align 4
  %105 = alloca i32, align 4
  %106 = alloca i32, align 4
  %107 = alloca i32, align 4
  %108 = alloca i32, align 4
  %109 = alloca i32, align 4
  %110 = alloca i32, align 4
  %111 = alloca i32, align 4
  %112 = alloca i32, align 4
  %113 = alloca i32, align 4
  %114 = alloca i32, align 4
  %115 = alloca i32, align 4
  %116 = alloca i32, align 4
  %117 = alloca i32, align 4
  %118 = alloca i32, align 4
  %119 = alloca i32, align 4
  %120 = alloca i32, align 4
  %121 = alloca i32, align 4
  %122 = alloca i32, align 4
  %123 = alloca i32, align 4
  %124 = alloca i32, align 4
  %125 = alloca i32, align 4
  %126 = alloca i32, align 4
  %127 = alloca i32, align 4
  %128 = alloca i32, align 4
  %129 = alloca i32, align 4
  %130 = alloca i32, align 4
  %131 = alloca i32, align 4
  %132 = alloca i32, align 4
  %133 = alloca i32, align 4
  %134 = alloca i32, align 4
  %135 = alloca i32, align 4
  %136 = alloca i32, align 4
  %137 = alloca i32, align 4
  %138 = alloca i32, align 4
  %139 = alloca i32, align 4
  %140 = alloca i32, align 4
  %141 = alloca i32, align 4
  %142 = alloca i32, align 4
  %143 = alloca i32, align 4
  %144 = alloca i32, align 4
  %145 = alloca i32, align 4
  %146 = alloca i32, align 4
  %147 = alloca i32, align 4
  %148 = alloca i32, align 4
  %149 = alloca i32, align 4
  %150 = alloca i32, align 4
  %151 = alloca i32, align 4
  %152 = alloca i32, align 4
  %153 = alloca i32, align 4
  %154 = alloca i32, align 4
  %155 = alloca i32, align 4
  %156 = alloca i32, align 4
  %157 = alloca i32, align 4
  %158 = alloca i32, align 4
  %159 = alloca i32, align 4
  %160 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %161 = load i32*, i32** %5, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 0
  %163 = load i32, i32* %162, align 4
  store i32 %163, i32* %7, align 4
  %164 = load i32*, i32** %5, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 1
  %166 = load i32, i32* %165, align 4
  store i32 %166, i32* %8, align 4
  %167 = load i32*, i32** %5, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 2
  %169 = load i32, i32* %168, align 4
  store i32 %169, i32* %9, align 4
  %170 = load i32*, i32** %5, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 3
  %172 = load i32, i32* %171, align 4
  store i32 %172, i32* %10, align 4
  %173 = load i32*, i32** %5, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 4
  %175 = load i32, i32* %174, align 4
  store i32 %175, i32* %11, align 4
  %176 = load i32*, i32** %5, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 5
  %178 = load i32, i32* %177, align 4
  store i32 %178, i32* %12, align 4
  %179 = load i32*, i32** %5, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 6
  %181 = load i32, i32* %180, align 4
  store i32 %181, i32* %13, align 4
  %182 = load i32*, i32** %5, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 7
  %184 = load i32, i32* %183, align 4
  store i32 %184, i32* %14, align 4
  %185 = load i32*, i32** %5, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 8
  %187 = load i32, i32* %186, align 4
  store i32 %187, i32* %15, align 4
  %188 = load i32*, i32** %5, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 9
  %190 = load i32, i32* %189, align 4
  store i32 %190, i32* %16, align 4
  %191 = load i32*, i32** %6, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 0
  %193 = load i32, i32* %192, align 4
  store i32 %193, i32* %17, align 4
  %194 = load i32*, i32** %6, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 1
  %196 = load i32, i32* %195, align 4
  store i32 %196, i32* %18, align 4
  %197 = load i32*, i32** %6, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 2
  %199 = load i32, i32* %198, align 4
  store i32 %199, i32* %19, align 4
  %200 = load i32*, i32** %6, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 3
  %202 = load i32, i32* %201, align 4
  store i32 %202, i32* %20, align 4
  %203 = load i32*, i32** %6, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 4
  %205 = load i32, i32* %204, align 4
  store i32 %205, i32* %21, align 4
  %206 = load i32*, i32** %6, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 5
  %208 = load i32, i32* %207, align 4
  store i32 %208, i32* %22, align 4
  %209 = load i32*, i32** %6, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 6
  %211 = load i32, i32* %210, align 4
  store i32 %211, i32* %23, align 4
  %212 = load i32*, i32** %6, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 7
  %214 = load i32, i32* %213, align 4
  store i32 %214, i32* %24, align 4
  %215 = load i32*, i32** %6, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 8
  %217 = load i32, i32* %216, align 4
  store i32 %217, i32* %25, align 4
  %218 = load i32*, i32** %6, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 9
  %220 = load i32, i32* %219, align 4
  store i32 %220, i32* %26, align 4
  %221 = load i32, i32* %18, align 4
  %222 = mul nsw i32 19, %221
  store i32 %222, i32* %27, align 4
  %223 = load i32, i32* %19, align 4
  %224 = mul nsw i32 19, %223
  store i32 %224, i32* %28, align 4
  %225 = load i32, i32* %20, align 4
  %226 = mul nsw i32 19, %225
  store i32 %226, i32* %29, align 4
  %227 = load i32, i32* %21, align 4
  %228 = mul nsw i32 19, %227
  store i32 %228, i32* %30, align 4
  %229 = load i32, i32* %22, align 4
  %230 = mul nsw i32 19, %229
  store i32 %230, i32* %31, align 4
  %231 = load i32, i32* %23, align 4
  %232 = mul nsw i32 19, %231
  store i32 %232, i32* %32, align 4
  %233 = load i32, i32* %24, align 4
  %234 = mul nsw i32 19, %233
  store i32 %234, i32* %33, align 4
  %235 = load i32, i32* %25, align 4
  %236 = mul nsw i32 19, %235
  store i32 %236, i32* %34, align 4
  %237 = load i32, i32* %26, align 4
  %238 = mul nsw i32 19, %237
  store i32 %238, i32* %35, align 4
  %239 = load i32, i32* %8, align 4
  %240 = mul nsw i32 2, %239
  store i32 %240, i32* %36, align 4
  %241 = load i32, i32* %10, align 4
  %242 = mul nsw i32 2, %241
  store i32 %242, i32* %37, align 4
  %243 = load i32, i32* %12, align 4
  %244 = mul nsw i32 2, %243
  store i32 %244, i32* %38, align 4
  %245 = load i32, i32* %14, align 4
  %246 = mul nsw i32 2, %245
  store i32 %246, i32* %39, align 4
  %247 = load i32, i32* %16, align 4
  %248 = mul nsw i32 2, %247
  store i32 %248, i32* %40, align 4
  %249 = load i32, i32* %7, align 4
  %250 = load i32, i32* %17, align 4
  %251 = mul nsw i32 %249, %250
  store i32 %251, i32* %41, align 4
  %252 = load i32, i32* %7, align 4
  %253 = load i32, i32* %18, align 4
  %254 = mul nsw i32 %252, %253
  store i32 %254, i32* %42, align 4
  %255 = load i32, i32* %7, align 4
  %256 = load i32, i32* %19, align 4
  %257 = mul nsw i32 %255, %256
  store i32 %257, i32* %43, align 4
  %258 = load i32, i32* %7, align 4
  %259 = load i32, i32* %20, align 4
  %260 = mul nsw i32 %258, %259
  store i32 %260, i32* %44, align 4
  %261 = load i32, i32* %7, align 4
  %262 = load i32, i32* %21, align 4
  %263 = mul nsw i32 %261, %262
  store i32 %263, i32* %45, align 4
  %264 = load i32, i32* %7, align 4
  %265 = load i32, i32* %22, align 4
  %266 = mul nsw i32 %264, %265
  store i32 %266, i32* %46, align 4
  %267 = load i32, i32* %7, align 4
  %268 = load i32, i32* %23, align 4
  %269 = mul nsw i32 %267, %268
  store i32 %269, i32* %47, align 4
  %270 = load i32, i32* %7, align 4
  %271 = load i32, i32* %24, align 4
  %272 = mul nsw i32 %270, %271
  store i32 %272, i32* %48, align 4
  %273 = load i32, i32* %7, align 4
  %274 = load i32, i32* %25, align 4
  %275 = mul nsw i32 %273, %274
  store i32 %275, i32* %49, align 4
  %276 = load i32, i32* %7, align 4
  %277 = load i32, i32* %26, align 4
  %278 = mul nsw i32 %276, %277
  store i32 %278, i32* %50, align 4
  %279 = load i32, i32* %8, align 4
  %280 = load i32, i32* %17, align 4
  %281 = mul nsw i32 %279, %280
  store i32 %281, i32* %51, align 4
  %282 = load i32, i32* %36, align 4
  %283 = load i32, i32* %18, align 4
  %284 = mul nsw i32 %282, %283
  store i32 %284, i32* %52, align 4
  %285 = load i32, i32* %8, align 4
  %286 = load i32, i32* %19, align 4
  %287 = mul nsw i32 %285, %286
  store i32 %287, i32* %53, align 4
  %288 = load i32, i32* %36, align 4
  %289 = load i32, i32* %20, align 4
  %290 = mul nsw i32 %288, %289
  store i32 %290, i32* %54, align 4
  %291 = load i32, i32* %8, align 4
  %292 = load i32, i32* %21, align 4
  %293 = mul nsw i32 %291, %292
  store i32 %293, i32* %55, align 4
  %294 = load i32, i32* %36, align 4
  %295 = load i32, i32* %22, align 4
  %296 = mul nsw i32 %294, %295
  store i32 %296, i32* %56, align 4
  %297 = load i32, i32* %8, align 4
  %298 = load i32, i32* %23, align 4
  %299 = mul nsw i32 %297, %298
  store i32 %299, i32* %57, align 4
  %300 = load i32, i32* %36, align 4
  %301 = load i32, i32* %24, align 4
  %302 = mul nsw i32 %300, %301
  store i32 %302, i32* %58, align 4
  %303 = load i32, i32* %8, align 4
  %304 = load i32, i32* %25, align 4
  %305 = mul nsw i32 %303, %304
  store i32 %305, i32* %59, align 4
  %306 = load i32, i32* %36, align 4
  %307 = load i32, i32* %35, align 4
  %308 = mul nsw i32 %306, %307
  store i32 %308, i32* %60, align 4
  %309 = load i32, i32* %9, align 4
  %310 = load i32, i32* %17, align 4
  %311 = mul nsw i32 %309, %310
  store i32 %311, i32* %61, align 4
  %312 = load i32, i32* %9, align 4
  %313 = load i32, i32* %18, align 4
  %314 = mul nsw i32 %312, %313
  store i32 %314, i32* %62, align 4
  %315 = load i32, i32* %9, align 4
  %316 = load i32, i32* %19, align 4
  %317 = mul nsw i32 %315, %316
  store i32 %317, i32* %63, align 4
  %318 = load i32, i32* %9, align 4
  %319 = load i32, i32* %20, align 4
  %320 = mul nsw i32 %318, %319
  store i32 %320, i32* %64, align 4
  %321 = load i32, i32* %9, align 4
  %322 = load i32, i32* %21, align 4
  %323 = mul nsw i32 %321, %322
  store i32 %323, i32* %65, align 4
  %324 = load i32, i32* %9, align 4
  %325 = load i32, i32* %22, align 4
  %326 = mul nsw i32 %324, %325
  store i32 %326, i32* %66, align 4
  %327 = load i32, i32* %9, align 4
  %328 = load i32, i32* %23, align 4
  %329 = mul nsw i32 %327, %328
  store i32 %329, i32* %67, align 4
  %330 = load i32, i32* %9, align 4
  %331 = load i32, i32* %24, align 4
  %332 = mul nsw i32 %330, %331
  store i32 %332, i32* %68, align 4
  %333 = load i32, i32* %9, align 4
  %334 = load i32, i32* %34, align 4
  %335 = mul nsw i32 %333, %334
  store i32 %335, i32* %69, align 4
  %336 = load i32, i32* %9, align 4
  %337 = load i32, i32* %35, align 4
  %338 = mul nsw i32 %336, %337
  store i32 %338, i32* %70, align 4
  %339 = load i32, i32* %10, align 4
  %340 = load i32, i32* %17, align 4
  %341 = mul nsw i32 %339, %340
  store i32 %341, i32* %71, align 4
  %342 = load i32, i32* %37, align 4
  %343 = load i32, i32* %18, align 4
  %344 = mul nsw i32 %342, %343
  store i32 %344, i32* %72, align 4
  %345 = load i32, i32* %10, align 4
  %346 = load i32, i32* %19, align 4
  %347 = mul nsw i32 %345, %346
  store i32 %347, i32* %73, align 4
  %348 = load i32, i32* %37, align 4
  %349 = load i32, i32* %20, align 4
  %350 = mul nsw i32 %348, %349
  store i32 %350, i32* %74, align 4
  %351 = load i32, i32* %10, align 4
  %352 = load i32, i32* %21, align 4
  %353 = mul nsw i32 %351, %352
  store i32 %353, i32* %75, align 4
  %354 = load i32, i32* %37, align 4
  %355 = load i32, i32* %22, align 4
  %356 = mul nsw i32 %354, %355
  store i32 %356, i32* %76, align 4
  %357 = load i32, i32* %10, align 4
  %358 = load i32, i32* %23, align 4
  %359 = mul nsw i32 %357, %358
  store i32 %359, i32* %77, align 4
  %360 = load i32, i32* %37, align 4
  %361 = load i32, i32* %33, align 4
  %362 = mul nsw i32 %360, %361
  store i32 %362, i32* %78, align 4
  %363 = load i32, i32* %10, align 4
  %364 = load i32, i32* %34, align 4
  %365 = mul nsw i32 %363, %364
  store i32 %365, i32* %79, align 4
  %366 = load i32, i32* %37, align 4
  %367 = load i32, i32* %35, align 4
  %368 = mul nsw i32 %366, %367
  store i32 %368, i32* %80, align 4
  %369 = load i32, i32* %11, align 4
  %370 = load i32, i32* %17, align 4
  %371 = mul nsw i32 %369, %370
  store i32 %371, i32* %81, align 4
  %372 = load i32, i32* %11, align 4
  %373 = load i32, i32* %18, align 4
  %374 = mul nsw i32 %372, %373
  store i32 %374, i32* %82, align 4
  %375 = load i32, i32* %11, align 4
  %376 = load i32, i32* %19, align 4
  %377 = mul nsw i32 %375, %376
  store i32 %377, i32* %83, align 4
  %378 = load i32, i32* %11, align 4
  %379 = load i32, i32* %20, align 4
  %380 = mul nsw i32 %378, %379
  store i32 %380, i32* %84, align 4
  %381 = load i32, i32* %11, align 4
  %382 = load i32, i32* %21, align 4
  %383 = mul nsw i32 %381, %382
  store i32 %383, i32* %85, align 4
  %384 = load i32, i32* %11, align 4
  %385 = load i32, i32* %22, align 4
  %386 = mul nsw i32 %384, %385
  store i32 %386, i32* %86, align 4
  %387 = load i32, i32* %11, align 4
  %388 = load i32, i32* %32, align 4
  %389 = mul nsw i32 %387, %388
  store i32 %389, i32* %87, align 4
  %390 = load i32, i32* %11, align 4
  %391 = load i32, i32* %33, align 4
  %392 = mul nsw i32 %390, %391
  store i32 %392, i32* %88, align 4
  %393 = load i32, i32* %11, align 4
  %394 = load i32, i32* %34, align 4
  %395 = mul nsw i32 %393, %394
  store i32 %395, i32* %89, align 4
  %396 = load i32, i32* %11, align 4
  %397 = load i32, i32* %35, align 4
  %398 = mul nsw i32 %396, %397
  store i32 %398, i32* %90, align 4
  %399 = load i32, i32* %12, align 4
  %400 = load i32, i32* %17, align 4
  %401 = mul nsw i32 %399, %400
  store i32 %401, i32* %91, align 4
  %402 = load i32, i32* %38, align 4
  %403 = load i32, i32* %18, align 4
  %404 = mul nsw i32 %402, %403
  store i32 %404, i32* %92, align 4
  %405 = load i32, i32* %12, align 4
  %406 = load i32, i32* %19, align 4
  %407 = mul nsw i32 %405, %406
  store i32 %407, i32* %93, align 4
  %408 = load i32, i32* %38, align 4
  %409 = load i32, i32* %20, align 4
  %410 = mul nsw i32 %408, %409
  store i32 %410, i32* %94, align 4
  %411 = load i32, i32* %12, align 4
  %412 = load i32, i32* %21, align 4
  %413 = mul nsw i32 %411, %412
  store i32 %413, i32* %95, align 4
  %414 = load i32, i32* %38, align 4
  %415 = load i32, i32* %31, align 4
  %416 = mul nsw i32 %414, %415
  store i32 %416, i32* %96, align 4
  %417 = load i32, i32* %12, align 4
  %418 = load i32, i32* %32, align 4
  %419 = mul nsw i32 %417, %418
  store i32 %419, i32* %97, align 4
  %420 = load i32, i32* %38, align 4
  %421 = load i32, i32* %33, align 4
  %422 = mul nsw i32 %420, %421
  store i32 %422, i32* %98, align 4
  %423 = load i32, i32* %12, align 4
  %424 = load i32, i32* %34, align 4
  %425 = mul nsw i32 %423, %424
  store i32 %425, i32* %99, align 4
  %426 = load i32, i32* %38, align 4
  %427 = load i32, i32* %35, align 4
  %428 = mul nsw i32 %426, %427
  store i32 %428, i32* %100, align 4
  %429 = load i32, i32* %13, align 4
  %430 = load i32, i32* %17, align 4
  %431 = mul nsw i32 %429, %430
  store i32 %431, i32* %101, align 4
  %432 = load i32, i32* %13, align 4
  %433 = load i32, i32* %18, align 4
  %434 = mul nsw i32 %432, %433
  store i32 %434, i32* %102, align 4
  %435 = load i32, i32* %13, align 4
  %436 = load i32, i32* %19, align 4
  %437 = mul nsw i32 %435, %436
  store i32 %437, i32* %103, align 4
  %438 = load i32, i32* %13, align 4
  %439 = load i32, i32* %20, align 4
  %440 = mul nsw i32 %438, %439
  store i32 %440, i32* %104, align 4
  %441 = load i32, i32* %13, align 4
  %442 = load i32, i32* %30, align 4
  %443 = mul nsw i32 %441, %442
  store i32 %443, i32* %105, align 4
  %444 = load i32, i32* %13, align 4
  %445 = load i32, i32* %31, align 4
  %446 = mul nsw i32 %444, %445
  store i32 %446, i32* %106, align 4
  %447 = load i32, i32* %13, align 4
  %448 = load i32, i32* %32, align 4
  %449 = mul nsw i32 %447, %448
  store i32 %449, i32* %107, align 4
  %450 = load i32, i32* %13, align 4
  %451 = load i32, i32* %33, align 4
  %452 = mul nsw i32 %450, %451
  store i32 %452, i32* %108, align 4
  %453 = load i32, i32* %13, align 4
  %454 = load i32, i32* %34, align 4
  %455 = mul nsw i32 %453, %454
  store i32 %455, i32* %109, align 4
  %456 = load i32, i32* %13, align 4
  %457 = load i32, i32* %35, align 4
  %458 = mul nsw i32 %456, %457
  store i32 %458, i32* %110, align 4
  %459 = load i32, i32* %14, align 4
  %460 = load i32, i32* %17, align 4
  %461 = mul nsw i32 %459, %460
  store i32 %461, i32* %111, align 4
  %462 = load i32, i32* %39, align 4
  %463 = load i32, i32* %18, align 4
  %464 = mul nsw i32 %462, %463
  store i32 %464, i32* %112, align 4
  %465 = load i32, i32* %14, align 4
  %466 = load i32, i32* %19, align 4
  %467 = mul nsw i32 %465, %466
  store i32 %467, i32* %113, align 4
  %468 = load i32, i32* %39, align 4
  %469 = load i32, i32* %29, align 4
  %470 = mul nsw i32 %468, %469
  store i32 %470, i32* %114, align 4
  %471 = load i32, i32* %14, align 4
  %472 = load i32, i32* %30, align 4
  %473 = mul nsw i32 %471, %472
  store i32 %473, i32* %115, align 4
  %474 = load i32, i32* %39, align 4
  %475 = load i32, i32* %31, align 4
  %476 = mul nsw i32 %474, %475
  store i32 %476, i32* %116, align 4
  %477 = load i32, i32* %14, align 4
  %478 = load i32, i32* %32, align 4
  %479 = mul nsw i32 %477, %478
  store i32 %479, i32* %117, align 4
  %480 = load i32, i32* %39, align 4
  %481 = load i32, i32* %33, align 4
  %482 = mul nsw i32 %480, %481
  store i32 %482, i32* %118, align 4
  %483 = load i32, i32* %14, align 4
  %484 = load i32, i32* %34, align 4
  %485 = mul nsw i32 %483, %484
  store i32 %485, i32* %119, align 4
  %486 = load i32, i32* %39, align 4
  %487 = load i32, i32* %35, align 4
  %488 = mul nsw i32 %486, %487
  store i32 %488, i32* %120, align 4
  %489 = load i32, i32* %15, align 4
  %490 = load i32, i32* %17, align 4
  %491 = mul nsw i32 %489, %490
  store i32 %491, i32* %121, align 4
  %492 = load i32, i32* %15, align 4
  %493 = load i32, i32* %18, align 4
  %494 = mul nsw i32 %492, %493
  store i32 %494, i32* %122, align 4
  %495 = load i32, i32* %15, align 4
  %496 = load i32, i32* %28, align 4
  %497 = mul nsw i32 %495, %496
  store i32 %497, i32* %123, align 4
  %498 = load i32, i32* %15, align 4
  %499 = load i32, i32* %29, align 4
  %500 = mul nsw i32 %498, %499
  store i32 %500, i32* %124, align 4
  %501 = load i32, i32* %15, align 4
  %502 = load i32, i32* %30, align 4
  %503 = mul nsw i32 %501, %502
  store i32 %503, i32* %125, align 4
  %504 = load i32, i32* %15, align 4
  %505 = load i32, i32* %31, align 4
  %506 = mul nsw i32 %504, %505
  store i32 %506, i32* %126, align 4
  %507 = load i32, i32* %15, align 4
  %508 = load i32, i32* %32, align 4
  %509 = mul nsw i32 %507, %508
  store i32 %509, i32* %127, align 4
  %510 = load i32, i32* %15, align 4
  %511 = load i32, i32* %33, align 4
  %512 = mul nsw i32 %510, %511
  store i32 %512, i32* %128, align 4
  %513 = load i32, i32* %15, align 4
  %514 = load i32, i32* %34, align 4
  %515 = mul nsw i32 %513, %514
  store i32 %515, i32* %129, align 4
  %516 = load i32, i32* %15, align 4
  %517 = load i32, i32* %35, align 4
  %518 = mul nsw i32 %516, %517
  store i32 %518, i32* %130, align 4
  %519 = load i32, i32* %16, align 4
  %520 = load i32, i32* %17, align 4
  %521 = mul nsw i32 %519, %520
  store i32 %521, i32* %131, align 4
  %522 = load i32, i32* %40, align 4
  %523 = load i32, i32* %27, align 4
  %524 = mul nsw i32 %522, %523
  store i32 %524, i32* %132, align 4
  %525 = load i32, i32* %16, align 4
  %526 = load i32, i32* %28, align 4
  %527 = mul nsw i32 %525, %526
  store i32 %527, i32* %133, align 4
  %528 = load i32, i32* %40, align 4
  %529 = load i32, i32* %29, align 4
  %530 = mul nsw i32 %528, %529
  store i32 %530, i32* %134, align 4
  %531 = load i32, i32* %16, align 4
  %532 = load i32, i32* %30, align 4
  %533 = mul nsw i32 %531, %532
  store i32 %533, i32* %135, align 4
  %534 = load i32, i32* %40, align 4
  %535 = load i32, i32* %31, align 4
  %536 = mul nsw i32 %534, %535
  store i32 %536, i32* %136, align 4
  %537 = load i32, i32* %16, align 4
  %538 = load i32, i32* %32, align 4
  %539 = mul nsw i32 %537, %538
  store i32 %539, i32* %137, align 4
  %540 = load i32, i32* %40, align 4
  %541 = load i32, i32* %33, align 4
  %542 = mul nsw i32 %540, %541
  store i32 %542, i32* %138, align 4
  %543 = load i32, i32* %16, align 4
  %544 = load i32, i32* %34, align 4
  %545 = mul nsw i32 %543, %544
  store i32 %545, i32* %139, align 4
  %546 = load i32, i32* %40, align 4
  %547 = load i32, i32* %35, align 4
  %548 = mul nsw i32 %546, %547
  store i32 %548, i32* %140, align 4
  %549 = load i32, i32* %41, align 4
  %550 = load i32, i32* %60, align 4
  %551 = add nsw i32 %549, %550
  %552 = load i32, i32* %69, align 4
  %553 = add nsw i32 %551, %552
  %554 = load i32, i32* %78, align 4
  %555 = add nsw i32 %553, %554
  %556 = load i32, i32* %87, align 4
  %557 = add nsw i32 %555, %556
  %558 = load i32, i32* %96, align 4
  %559 = add nsw i32 %557, %558
  %560 = load i32, i32* %105, align 4
  %561 = add nsw i32 %559, %560
  %562 = load i32, i32* %114, align 4
  %563 = add nsw i32 %561, %562
  %564 = load i32, i32* %123, align 4
  %565 = add nsw i32 %563, %564
  %566 = load i32, i32* %132, align 4
  %567 = add nsw i32 %565, %566
  store i32 %567, i32* %141, align 4
  %568 = load i32, i32* %42, align 4
  %569 = load i32, i32* %51, align 4
  %570 = add nsw i32 %568, %569
  %571 = load i32, i32* %70, align 4
  %572 = add nsw i32 %570, %571
  %573 = load i32, i32* %79, align 4
  %574 = add nsw i32 %572, %573
  %575 = load i32, i32* %88, align 4
  %576 = add nsw i32 %574, %575
  %577 = load i32, i32* %97, align 4
  %578 = add nsw i32 %576, %577
  %579 = load i32, i32* %106, align 4
  %580 = add nsw i32 %578, %579
  %581 = load i32, i32* %115, align 4
  %582 = add nsw i32 %580, %581
  %583 = load i32, i32* %124, align 4
  %584 = add nsw i32 %582, %583
  %585 = load i32, i32* %133, align 4
  %586 = add nsw i32 %584, %585
  store i32 %586, i32* %142, align 4
  %587 = load i32, i32* %43, align 4
  %588 = load i32, i32* %52, align 4
  %589 = add nsw i32 %587, %588
  %590 = load i32, i32* %61, align 4
  %591 = add nsw i32 %589, %590
  %592 = load i32, i32* %80, align 4
  %593 = add nsw i32 %591, %592
  %594 = load i32, i32* %89, align 4
  %595 = add nsw i32 %593, %594
  %596 = load i32, i32* %98, align 4
  %597 = add nsw i32 %595, %596
  %598 = load i32, i32* %107, align 4
  %599 = add nsw i32 %597, %598
  %600 = load i32, i32* %116, align 4
  %601 = add nsw i32 %599, %600
  %602 = load i32, i32* %125, align 4
  %603 = add nsw i32 %601, %602
  %604 = load i32, i32* %134, align 4
  %605 = add nsw i32 %603, %604
  store i32 %605, i32* %143, align 4
  %606 = load i32, i32* %44, align 4
  %607 = load i32, i32* %53, align 4
  %608 = add nsw i32 %606, %607
  %609 = load i32, i32* %62, align 4
  %610 = add nsw i32 %608, %609
  %611 = load i32, i32* %71, align 4
  %612 = add nsw i32 %610, %611
  %613 = load i32, i32* %90, align 4
  %614 = add nsw i32 %612, %613
  %615 = load i32, i32* %99, align 4
  %616 = add nsw i32 %614, %615
  %617 = load i32, i32* %108, align 4
  %618 = add nsw i32 %616, %617
  %619 = load i32, i32* %117, align 4
  %620 = add nsw i32 %618, %619
  %621 = load i32, i32* %126, align 4
  %622 = add nsw i32 %620, %621
  %623 = load i32, i32* %135, align 4
  %624 = add nsw i32 %622, %623
  store i32 %624, i32* %144, align 4
  %625 = load i32, i32* %45, align 4
  %626 = load i32, i32* %54, align 4
  %627 = add nsw i32 %625, %626
  %628 = load i32, i32* %63, align 4
  %629 = add nsw i32 %627, %628
  %630 = load i32, i32* %72, align 4
  %631 = add nsw i32 %629, %630
  %632 = load i32, i32* %81, align 4
  %633 = add nsw i32 %631, %632
  %634 = load i32, i32* %100, align 4
  %635 = add nsw i32 %633, %634
  %636 = load i32, i32* %109, align 4
  %637 = add nsw i32 %635, %636
  %638 = load i32, i32* %118, align 4
  %639 = add nsw i32 %637, %638
  %640 = load i32, i32* %127, align 4
  %641 = add nsw i32 %639, %640
  %642 = load i32, i32* %136, align 4
  %643 = add nsw i32 %641, %642
  store i32 %643, i32* %145, align 4
  %644 = load i32, i32* %46, align 4
  %645 = load i32, i32* %55, align 4
  %646 = add nsw i32 %644, %645
  %647 = load i32, i32* %64, align 4
  %648 = add nsw i32 %646, %647
  %649 = load i32, i32* %73, align 4
  %650 = add nsw i32 %648, %649
  %651 = load i32, i32* %82, align 4
  %652 = add nsw i32 %650, %651
  %653 = load i32, i32* %91, align 4
  %654 = add nsw i32 %652, %653
  %655 = load i32, i32* %110, align 4
  %656 = add nsw i32 %654, %655
  %657 = load i32, i32* %119, align 4
  %658 = add nsw i32 %656, %657
  %659 = load i32, i32* %128, align 4
  %660 = add nsw i32 %658, %659
  %661 = load i32, i32* %137, align 4
  %662 = add nsw i32 %660, %661
  store i32 %662, i32* %146, align 4
  %663 = load i32, i32* %47, align 4
  %664 = load i32, i32* %56, align 4
  %665 = add nsw i32 %663, %664
  %666 = load i32, i32* %65, align 4
  %667 = add nsw i32 %665, %666
  %668 = load i32, i32* %74, align 4
  %669 = add nsw i32 %667, %668
  %670 = load i32, i32* %83, align 4
  %671 = add nsw i32 %669, %670
  %672 = load i32, i32* %92, align 4
  %673 = add nsw i32 %671, %672
  %674 = load i32, i32* %101, align 4
  %675 = add nsw i32 %673, %674
  %676 = load i32, i32* %120, align 4
  %677 = add nsw i32 %675, %676
  %678 = load i32, i32* %129, align 4
  %679 = add nsw i32 %677, %678
  %680 = load i32, i32* %138, align 4
  %681 = add nsw i32 %679, %680
  store i32 %681, i32* %147, align 4
  %682 = load i32, i32* %48, align 4
  %683 = load i32, i32* %57, align 4
  %684 = add nsw i32 %682, %683
  %685 = load i32, i32* %66, align 4
  %686 = add nsw i32 %684, %685
  %687 = load i32, i32* %75, align 4
  %688 = add nsw i32 %686, %687
  %689 = load i32, i32* %84, align 4
  %690 = add nsw i32 %688, %689
  %691 = load i32, i32* %93, align 4
  %692 = add nsw i32 %690, %691
  %693 = load i32, i32* %102, align 4
  %694 = add nsw i32 %692, %693
  %695 = load i32, i32* %111, align 4
  %696 = add nsw i32 %694, %695
  %697 = load i32, i32* %130, align 4
  %698 = add nsw i32 %696, %697
  %699 = load i32, i32* %139, align 4
  %700 = add nsw i32 %698, %699
  store i32 %700, i32* %148, align 4
  %701 = load i32, i32* %49, align 4
  %702 = load i32, i32* %58, align 4
  %703 = add nsw i32 %701, %702
  %704 = load i32, i32* %67, align 4
  %705 = add nsw i32 %703, %704
  %706 = load i32, i32* %76, align 4
  %707 = add nsw i32 %705, %706
  %708 = load i32, i32* %85, align 4
  %709 = add nsw i32 %707, %708
  %710 = load i32, i32* %94, align 4
  %711 = add nsw i32 %709, %710
  %712 = load i32, i32* %103, align 4
  %713 = add nsw i32 %711, %712
  %714 = load i32, i32* %112, align 4
  %715 = add nsw i32 %713, %714
  %716 = load i32, i32* %121, align 4
  %717 = add nsw i32 %715, %716
  %718 = load i32, i32* %140, align 4
  %719 = add nsw i32 %717, %718
  store i32 %719, i32* %149, align 4
  %720 = load i32, i32* %50, align 4
  %721 = load i32, i32* %59, align 4
  %722 = add nsw i32 %720, %721
  %723 = load i32, i32* %68, align 4
  %724 = add nsw i32 %722, %723
  %725 = load i32, i32* %77, align 4
  %726 = add nsw i32 %724, %725
  %727 = load i32, i32* %86, align 4
  %728 = add nsw i32 %726, %727
  %729 = load i32, i32* %95, align 4
  %730 = add nsw i32 %728, %729
  %731 = load i32, i32* %104, align 4
  %732 = add nsw i32 %730, %731
  %733 = load i32, i32* %113, align 4
  %734 = add nsw i32 %732, %733
  %735 = load i32, i32* %122, align 4
  %736 = add nsw i32 %734, %735
  %737 = load i32, i32* %131, align 4
  %738 = add nsw i32 %736, %737
  store i32 %738, i32* %150, align 4
  %739 = load i32, i32* %141, align 4
  %740 = add nsw i32 %739, 33554432
  store i32 %740, i32* %151, align 4
  %741 = load i32, i32* %151, align 4
  %742 = ashr i32 %741, 26
  %743 = load i32, i32* %142, align 4
  %744 = add nsw i32 %743, %742
  store i32 %744, i32* %142, align 4
  %745 = load i32, i32* %151, align 4
  %746 = load i32, i32* @kTop38Bits, align 4
  %747 = and i32 %745, %746
  %748 = load i32, i32* %141, align 4
  %749 = sub nsw i32 %748, %747
  store i32 %749, i32* %141, align 4
  %750 = load i32, i32* %145, align 4
  %751 = add nsw i32 %750, 33554432
  store i32 %751, i32* %155, align 4
  %752 = load i32, i32* %155, align 4
  %753 = ashr i32 %752, 26
  %754 = load i32, i32* %146, align 4
  %755 = add nsw i32 %754, %753
  store i32 %755, i32* %146, align 4
  %756 = load i32, i32* %155, align 4
  %757 = load i32, i32* @kTop38Bits, align 4
  %758 = and i32 %756, %757
  %759 = load i32, i32* %145, align 4
  %760 = sub nsw i32 %759, %758
  store i32 %760, i32* %145, align 4
  %761 = load i32, i32* %142, align 4
  %762 = add nsw i32 %761, 16777216
  store i32 %762, i32* %152, align 4
  %763 = load i32, i32* %152, align 4
  %764 = ashr i32 %763, 25
  %765 = load i32, i32* %143, align 4
  %766 = add nsw i32 %765, %764
  store i32 %766, i32* %143, align 4
  %767 = load i32, i32* %152, align 4
  %768 = load i32, i32* @kTop39Bits, align 4
  %769 = and i32 %767, %768
  %770 = load i32, i32* %142, align 4
  %771 = sub nsw i32 %770, %769
  store i32 %771, i32* %142, align 4
  %772 = load i32, i32* %146, align 4
  %773 = add nsw i32 %772, 16777216
  store i32 %773, i32* %156, align 4
  %774 = load i32, i32* %156, align 4
  %775 = ashr i32 %774, 25
  %776 = load i32, i32* %147, align 4
  %777 = add nsw i32 %776, %775
  store i32 %777, i32* %147, align 4
  %778 = load i32, i32* %156, align 4
  %779 = load i32, i32* @kTop39Bits, align 4
  %780 = and i32 %778, %779
  %781 = load i32, i32* %146, align 4
  %782 = sub nsw i32 %781, %780
  store i32 %782, i32* %146, align 4
  %783 = load i32, i32* %143, align 4
  %784 = add nsw i32 %783, 33554432
  store i32 %784, i32* %153, align 4
  %785 = load i32, i32* %153, align 4
  %786 = ashr i32 %785, 26
  %787 = load i32, i32* %144, align 4
  %788 = add nsw i32 %787, %786
  store i32 %788, i32* %144, align 4
  %789 = load i32, i32* %153, align 4
  %790 = load i32, i32* @kTop38Bits, align 4
  %791 = and i32 %789, %790
  %792 = load i32, i32* %143, align 4
  %793 = sub nsw i32 %792, %791
  store i32 %793, i32* %143, align 4
  %794 = load i32, i32* %147, align 4
  %795 = add nsw i32 %794, 33554432
  store i32 %795, i32* %157, align 4
  %796 = load i32, i32* %157, align 4
  %797 = ashr i32 %796, 26
  %798 = load i32, i32* %148, align 4
  %799 = add nsw i32 %798, %797
  store i32 %799, i32* %148, align 4
  %800 = load i32, i32* %157, align 4
  %801 = load i32, i32* @kTop38Bits, align 4
  %802 = and i32 %800, %801
  %803 = load i32, i32* %147, align 4
  %804 = sub nsw i32 %803, %802
  store i32 %804, i32* %147, align 4
  %805 = load i32, i32* %144, align 4
  %806 = add nsw i32 %805, 16777216
  store i32 %806, i32* %154, align 4
  %807 = load i32, i32* %154, align 4
  %808 = ashr i32 %807, 25
  %809 = load i32, i32* %145, align 4
  %810 = add nsw i32 %809, %808
  store i32 %810, i32* %145, align 4
  %811 = load i32, i32* %154, align 4
  %812 = load i32, i32* @kTop39Bits, align 4
  %813 = and i32 %811, %812
  %814 = load i32, i32* %144, align 4
  %815 = sub nsw i32 %814, %813
  store i32 %815, i32* %144, align 4
  %816 = load i32, i32* %148, align 4
  %817 = add nsw i32 %816, 16777216
  store i32 %817, i32* %158, align 4
  %818 = load i32, i32* %158, align 4
  %819 = ashr i32 %818, 25
  %820 = load i32, i32* %149, align 4
  %821 = add nsw i32 %820, %819
  store i32 %821, i32* %149, align 4
  %822 = load i32, i32* %158, align 4
  %823 = load i32, i32* @kTop39Bits, align 4
  %824 = and i32 %822, %823
  %825 = load i32, i32* %148, align 4
  %826 = sub nsw i32 %825, %824
  store i32 %826, i32* %148, align 4
  %827 = load i32, i32* %145, align 4
  %828 = add nsw i32 %827, 33554432
  store i32 %828, i32* %155, align 4
  %829 = load i32, i32* %155, align 4
  %830 = ashr i32 %829, 26
  %831 = load i32, i32* %146, align 4
  %832 = add nsw i32 %831, %830
  store i32 %832, i32* %146, align 4
  %833 = load i32, i32* %155, align 4
  %834 = load i32, i32* @kTop38Bits, align 4
  %835 = and i32 %833, %834
  %836 = load i32, i32* %145, align 4
  %837 = sub nsw i32 %836, %835
  store i32 %837, i32* %145, align 4
  %838 = load i32, i32* %149, align 4
  %839 = add nsw i32 %838, 33554432
  store i32 %839, i32* %159, align 4
  %840 = load i32, i32* %159, align 4
  %841 = ashr i32 %840, 26
  %842 = load i32, i32* %150, align 4
  %843 = add nsw i32 %842, %841
  store i32 %843, i32* %150, align 4
  %844 = load i32, i32* %159, align 4
  %845 = load i32, i32* @kTop38Bits, align 4
  %846 = and i32 %844, %845
  %847 = load i32, i32* %149, align 4
  %848 = sub nsw i32 %847, %846
  store i32 %848, i32* %149, align 4
  %849 = load i32, i32* %150, align 4
  %850 = add nsw i32 %849, 16777216
  store i32 %850, i32* %160, align 4
  %851 = load i32, i32* %160, align 4
  %852 = ashr i32 %851, 25
  %853 = mul nsw i32 %852, 19
  %854 = load i32, i32* %141, align 4
  %855 = add nsw i32 %854, %853
  store i32 %855, i32* %141, align 4
  %856 = load i32, i32* %160, align 4
  %857 = load i32, i32* @kTop39Bits, align 4
  %858 = and i32 %856, %857
  %859 = load i32, i32* %150, align 4
  %860 = sub nsw i32 %859, %858
  store i32 %860, i32* %150, align 4
  %861 = load i32, i32* %141, align 4
  %862 = add nsw i32 %861, 33554432
  store i32 %862, i32* %151, align 4
  %863 = load i32, i32* %151, align 4
  %864 = ashr i32 %863, 26
  %865 = load i32, i32* %142, align 4
  %866 = add nsw i32 %865, %864
  store i32 %866, i32* %142, align 4
  %867 = load i32, i32* %151, align 4
  %868 = load i32, i32* @kTop38Bits, align 4
  %869 = and i32 %867, %868
  %870 = load i32, i32* %141, align 4
  %871 = sub nsw i32 %870, %869
  store i32 %871, i32* %141, align 4
  %872 = load i32, i32* %141, align 4
  %873 = load i32*, i32** %4, align 8
  %874 = getelementptr inbounds i32, i32* %873, i64 0
  store i32 %872, i32* %874, align 4
  %875 = load i32, i32* %142, align 4
  %876 = load i32*, i32** %4, align 8
  %877 = getelementptr inbounds i32, i32* %876, i64 1
  store i32 %875, i32* %877, align 4
  %878 = load i32, i32* %143, align 4
  %879 = load i32*, i32** %4, align 8
  %880 = getelementptr inbounds i32, i32* %879, i64 2
  store i32 %878, i32* %880, align 4
  %881 = load i32, i32* %144, align 4
  %882 = load i32*, i32** %4, align 8
  %883 = getelementptr inbounds i32, i32* %882, i64 3
  store i32 %881, i32* %883, align 4
  %884 = load i32, i32* %145, align 4
  %885 = load i32*, i32** %4, align 8
  %886 = getelementptr inbounds i32, i32* %885, i64 4
  store i32 %884, i32* %886, align 4
  %887 = load i32, i32* %146, align 4
  %888 = load i32*, i32** %4, align 8
  %889 = getelementptr inbounds i32, i32* %888, i64 5
  store i32 %887, i32* %889, align 4
  %890 = load i32, i32* %147, align 4
  %891 = load i32*, i32** %4, align 8
  %892 = getelementptr inbounds i32, i32* %891, i64 6
  store i32 %890, i32* %892, align 4
  %893 = load i32, i32* %148, align 4
  %894 = load i32*, i32** %4, align 8
  %895 = getelementptr inbounds i32, i32* %894, i64 7
  store i32 %893, i32* %895, align 4
  %896 = load i32, i32* %149, align 4
  %897 = load i32*, i32** %4, align 8
  %898 = getelementptr inbounds i32, i32* %897, i64 8
  store i32 %896, i32* %898, align 4
  %899 = load i32, i32* %150, align 4
  %900 = load i32*, i32** %4, align 8
  %901 = getelementptr inbounds i32, i32* %900, i64 9
  store i32 %899, i32* %901, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
