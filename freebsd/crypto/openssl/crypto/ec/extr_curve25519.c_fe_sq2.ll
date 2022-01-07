; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_curve25519.c_fe_sq2.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_curve25519.c_fe_sq2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kTop38Bits = common dso_local global i32 0, align 4
@kTop39Bits = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @fe_sq2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fe_sq2(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
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
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %103 = load i32*, i32** %4, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %5, align 4
  %106 = load i32*, i32** %4, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 1
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %6, align 4
  %109 = load i32*, i32** %4, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 2
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %7, align 4
  %112 = load i32*, i32** %4, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 3
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* %8, align 4
  %115 = load i32*, i32** %4, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 4
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* %9, align 4
  %118 = load i32*, i32** %4, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 5
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %10, align 4
  %121 = load i32*, i32** %4, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 6
  %123 = load i32, i32* %122, align 4
  store i32 %123, i32* %11, align 4
  %124 = load i32*, i32** %4, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 7
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %12, align 4
  %127 = load i32*, i32** %4, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 8
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %13, align 4
  %130 = load i32*, i32** %4, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 9
  %132 = load i32, i32* %131, align 4
  store i32 %132, i32* %14, align 4
  %133 = load i32, i32* %5, align 4
  %134 = mul nsw i32 2, %133
  store i32 %134, i32* %15, align 4
  %135 = load i32, i32* %6, align 4
  %136 = mul nsw i32 2, %135
  store i32 %136, i32* %16, align 4
  %137 = load i32, i32* %7, align 4
  %138 = mul nsw i32 2, %137
  store i32 %138, i32* %17, align 4
  %139 = load i32, i32* %8, align 4
  %140 = mul nsw i32 2, %139
  store i32 %140, i32* %18, align 4
  %141 = load i32, i32* %9, align 4
  %142 = mul nsw i32 2, %141
  store i32 %142, i32* %19, align 4
  %143 = load i32, i32* %10, align 4
  %144 = mul nsw i32 2, %143
  store i32 %144, i32* %20, align 4
  %145 = load i32, i32* %11, align 4
  %146 = mul nsw i32 2, %145
  store i32 %146, i32* %21, align 4
  %147 = load i32, i32* %12, align 4
  %148 = mul nsw i32 2, %147
  store i32 %148, i32* %22, align 4
  %149 = load i32, i32* %10, align 4
  %150 = mul nsw i32 38, %149
  store i32 %150, i32* %23, align 4
  %151 = load i32, i32* %11, align 4
  %152 = mul nsw i32 19, %151
  store i32 %152, i32* %24, align 4
  %153 = load i32, i32* %12, align 4
  %154 = mul nsw i32 38, %153
  store i32 %154, i32* %25, align 4
  %155 = load i32, i32* %13, align 4
  %156 = mul nsw i32 19, %155
  store i32 %156, i32* %26, align 4
  %157 = load i32, i32* %14, align 4
  %158 = mul nsw i32 38, %157
  store i32 %158, i32* %27, align 4
  %159 = load i32, i32* %5, align 4
  %160 = load i32, i32* %5, align 4
  %161 = mul nsw i32 %159, %160
  store i32 %161, i32* %28, align 4
  %162 = load i32, i32* %15, align 4
  %163 = load i32, i32* %6, align 4
  %164 = mul nsw i32 %162, %163
  store i32 %164, i32* %29, align 4
  %165 = load i32, i32* %15, align 4
  %166 = load i32, i32* %7, align 4
  %167 = mul nsw i32 %165, %166
  store i32 %167, i32* %30, align 4
  %168 = load i32, i32* %15, align 4
  %169 = load i32, i32* %8, align 4
  %170 = mul nsw i32 %168, %169
  store i32 %170, i32* %31, align 4
  %171 = load i32, i32* %15, align 4
  %172 = load i32, i32* %9, align 4
  %173 = mul nsw i32 %171, %172
  store i32 %173, i32* %32, align 4
  %174 = load i32, i32* %15, align 4
  %175 = load i32, i32* %10, align 4
  %176 = mul nsw i32 %174, %175
  store i32 %176, i32* %33, align 4
  %177 = load i32, i32* %15, align 4
  %178 = load i32, i32* %11, align 4
  %179 = mul nsw i32 %177, %178
  store i32 %179, i32* %34, align 4
  %180 = load i32, i32* %15, align 4
  %181 = load i32, i32* %12, align 4
  %182 = mul nsw i32 %180, %181
  store i32 %182, i32* %35, align 4
  %183 = load i32, i32* %15, align 4
  %184 = load i32, i32* %13, align 4
  %185 = mul nsw i32 %183, %184
  store i32 %185, i32* %36, align 4
  %186 = load i32, i32* %15, align 4
  %187 = load i32, i32* %14, align 4
  %188 = mul nsw i32 %186, %187
  store i32 %188, i32* %37, align 4
  %189 = load i32, i32* %16, align 4
  %190 = load i32, i32* %6, align 4
  %191 = mul nsw i32 %189, %190
  store i32 %191, i32* %38, align 4
  %192 = load i32, i32* %16, align 4
  %193 = load i32, i32* %7, align 4
  %194 = mul nsw i32 %192, %193
  store i32 %194, i32* %39, align 4
  %195 = load i32, i32* %16, align 4
  %196 = load i32, i32* %18, align 4
  %197 = mul nsw i32 %195, %196
  store i32 %197, i32* %40, align 4
  %198 = load i32, i32* %16, align 4
  %199 = load i32, i32* %9, align 4
  %200 = mul nsw i32 %198, %199
  store i32 %200, i32* %41, align 4
  %201 = load i32, i32* %16, align 4
  %202 = load i32, i32* %20, align 4
  %203 = mul nsw i32 %201, %202
  store i32 %203, i32* %42, align 4
  %204 = load i32, i32* %16, align 4
  %205 = load i32, i32* %11, align 4
  %206 = mul nsw i32 %204, %205
  store i32 %206, i32* %43, align 4
  %207 = load i32, i32* %16, align 4
  %208 = load i32, i32* %22, align 4
  %209 = mul nsw i32 %207, %208
  store i32 %209, i32* %44, align 4
  %210 = load i32, i32* %16, align 4
  %211 = load i32, i32* %13, align 4
  %212 = mul nsw i32 %210, %211
  store i32 %212, i32* %45, align 4
  %213 = load i32, i32* %16, align 4
  %214 = load i32, i32* %27, align 4
  %215 = mul nsw i32 %213, %214
  store i32 %215, i32* %46, align 4
  %216 = load i32, i32* %7, align 4
  %217 = load i32, i32* %7, align 4
  %218 = mul nsw i32 %216, %217
  store i32 %218, i32* %47, align 4
  %219 = load i32, i32* %17, align 4
  %220 = load i32, i32* %8, align 4
  %221 = mul nsw i32 %219, %220
  store i32 %221, i32* %48, align 4
  %222 = load i32, i32* %17, align 4
  %223 = load i32, i32* %9, align 4
  %224 = mul nsw i32 %222, %223
  store i32 %224, i32* %49, align 4
  %225 = load i32, i32* %17, align 4
  %226 = load i32, i32* %10, align 4
  %227 = mul nsw i32 %225, %226
  store i32 %227, i32* %50, align 4
  %228 = load i32, i32* %17, align 4
  %229 = load i32, i32* %11, align 4
  %230 = mul nsw i32 %228, %229
  store i32 %230, i32* %51, align 4
  %231 = load i32, i32* %17, align 4
  %232 = load i32, i32* %12, align 4
  %233 = mul nsw i32 %231, %232
  store i32 %233, i32* %52, align 4
  %234 = load i32, i32* %17, align 4
  %235 = load i32, i32* %26, align 4
  %236 = mul nsw i32 %234, %235
  store i32 %236, i32* %53, align 4
  %237 = load i32, i32* %7, align 4
  %238 = load i32, i32* %27, align 4
  %239 = mul nsw i32 %237, %238
  store i32 %239, i32* %54, align 4
  %240 = load i32, i32* %18, align 4
  %241 = load i32, i32* %8, align 4
  %242 = mul nsw i32 %240, %241
  store i32 %242, i32* %55, align 4
  %243 = load i32, i32* %18, align 4
  %244 = load i32, i32* %9, align 4
  %245 = mul nsw i32 %243, %244
  store i32 %245, i32* %56, align 4
  %246 = load i32, i32* %18, align 4
  %247 = load i32, i32* %20, align 4
  %248 = mul nsw i32 %246, %247
  store i32 %248, i32* %57, align 4
  %249 = load i32, i32* %18, align 4
  %250 = load i32, i32* %11, align 4
  %251 = mul nsw i32 %249, %250
  store i32 %251, i32* %58, align 4
  %252 = load i32, i32* %18, align 4
  %253 = load i32, i32* %25, align 4
  %254 = mul nsw i32 %252, %253
  store i32 %254, i32* %59, align 4
  %255 = load i32, i32* %18, align 4
  %256 = load i32, i32* %26, align 4
  %257 = mul nsw i32 %255, %256
  store i32 %257, i32* %60, align 4
  %258 = load i32, i32* %18, align 4
  %259 = load i32, i32* %27, align 4
  %260 = mul nsw i32 %258, %259
  store i32 %260, i32* %61, align 4
  %261 = load i32, i32* %9, align 4
  %262 = load i32, i32* %9, align 4
  %263 = mul nsw i32 %261, %262
  store i32 %263, i32* %62, align 4
  %264 = load i32, i32* %19, align 4
  %265 = load i32, i32* %10, align 4
  %266 = mul nsw i32 %264, %265
  store i32 %266, i32* %63, align 4
  %267 = load i32, i32* %19, align 4
  %268 = load i32, i32* %24, align 4
  %269 = mul nsw i32 %267, %268
  store i32 %269, i32* %64, align 4
  %270 = load i32, i32* %9, align 4
  %271 = load i32, i32* %25, align 4
  %272 = mul nsw i32 %270, %271
  store i32 %272, i32* %65, align 4
  %273 = load i32, i32* %19, align 4
  %274 = load i32, i32* %26, align 4
  %275 = mul nsw i32 %273, %274
  store i32 %275, i32* %66, align 4
  %276 = load i32, i32* %9, align 4
  %277 = load i32, i32* %27, align 4
  %278 = mul nsw i32 %276, %277
  store i32 %278, i32* %67, align 4
  %279 = load i32, i32* %10, align 4
  %280 = load i32, i32* %23, align 4
  %281 = mul nsw i32 %279, %280
  store i32 %281, i32* %68, align 4
  %282 = load i32, i32* %20, align 4
  %283 = load i32, i32* %24, align 4
  %284 = mul nsw i32 %282, %283
  store i32 %284, i32* %69, align 4
  %285 = load i32, i32* %20, align 4
  %286 = load i32, i32* %25, align 4
  %287 = mul nsw i32 %285, %286
  store i32 %287, i32* %70, align 4
  %288 = load i32, i32* %20, align 4
  %289 = load i32, i32* %26, align 4
  %290 = mul nsw i32 %288, %289
  store i32 %290, i32* %71, align 4
  %291 = load i32, i32* %20, align 4
  %292 = load i32, i32* %27, align 4
  %293 = mul nsw i32 %291, %292
  store i32 %293, i32* %72, align 4
  %294 = load i32, i32* %11, align 4
  %295 = load i32, i32* %24, align 4
  %296 = mul nsw i32 %294, %295
  store i32 %296, i32* %73, align 4
  %297 = load i32, i32* %11, align 4
  %298 = load i32, i32* %25, align 4
  %299 = mul nsw i32 %297, %298
  store i32 %299, i32* %74, align 4
  %300 = load i32, i32* %21, align 4
  %301 = load i32, i32* %26, align 4
  %302 = mul nsw i32 %300, %301
  store i32 %302, i32* %75, align 4
  %303 = load i32, i32* %11, align 4
  %304 = load i32, i32* %27, align 4
  %305 = mul nsw i32 %303, %304
  store i32 %305, i32* %76, align 4
  %306 = load i32, i32* %12, align 4
  %307 = load i32, i32* %25, align 4
  %308 = mul nsw i32 %306, %307
  store i32 %308, i32* %77, align 4
  %309 = load i32, i32* %22, align 4
  %310 = load i32, i32* %26, align 4
  %311 = mul nsw i32 %309, %310
  store i32 %311, i32* %78, align 4
  %312 = load i32, i32* %22, align 4
  %313 = load i32, i32* %27, align 4
  %314 = mul nsw i32 %312, %313
  store i32 %314, i32* %79, align 4
  %315 = load i32, i32* %13, align 4
  %316 = load i32, i32* %26, align 4
  %317 = mul nsw i32 %315, %316
  store i32 %317, i32* %80, align 4
  %318 = load i32, i32* %13, align 4
  %319 = load i32, i32* %27, align 4
  %320 = mul nsw i32 %318, %319
  store i32 %320, i32* %81, align 4
  %321 = load i32, i32* %14, align 4
  %322 = load i32, i32* %27, align 4
  %323 = mul nsw i32 %321, %322
  store i32 %323, i32* %82, align 4
  %324 = load i32, i32* %28, align 4
  %325 = load i32, i32* %46, align 4
  %326 = add nsw i32 %324, %325
  %327 = load i32, i32* %53, align 4
  %328 = add nsw i32 %326, %327
  %329 = load i32, i32* %59, align 4
  %330 = add nsw i32 %328, %329
  %331 = load i32, i32* %64, align 4
  %332 = add nsw i32 %330, %331
  %333 = load i32, i32* %68, align 4
  %334 = add nsw i32 %332, %333
  store i32 %334, i32* %83, align 4
  %335 = load i32, i32* %29, align 4
  %336 = load i32, i32* %54, align 4
  %337 = add nsw i32 %335, %336
  %338 = load i32, i32* %60, align 4
  %339 = add nsw i32 %337, %338
  %340 = load i32, i32* %65, align 4
  %341 = add nsw i32 %339, %340
  %342 = load i32, i32* %69, align 4
  %343 = add nsw i32 %341, %342
  store i32 %343, i32* %84, align 4
  %344 = load i32, i32* %30, align 4
  %345 = load i32, i32* %38, align 4
  %346 = add nsw i32 %344, %345
  %347 = load i32, i32* %61, align 4
  %348 = add nsw i32 %346, %347
  %349 = load i32, i32* %66, align 4
  %350 = add nsw i32 %348, %349
  %351 = load i32, i32* %70, align 4
  %352 = add nsw i32 %350, %351
  %353 = load i32, i32* %73, align 4
  %354 = add nsw i32 %352, %353
  store i32 %354, i32* %85, align 4
  %355 = load i32, i32* %31, align 4
  %356 = load i32, i32* %39, align 4
  %357 = add nsw i32 %355, %356
  %358 = load i32, i32* %67, align 4
  %359 = add nsw i32 %357, %358
  %360 = load i32, i32* %71, align 4
  %361 = add nsw i32 %359, %360
  %362 = load i32, i32* %74, align 4
  %363 = add nsw i32 %361, %362
  store i32 %363, i32* %86, align 4
  %364 = load i32, i32* %32, align 4
  %365 = load i32, i32* %40, align 4
  %366 = add nsw i32 %364, %365
  %367 = load i32, i32* %47, align 4
  %368 = add nsw i32 %366, %367
  %369 = load i32, i32* %72, align 4
  %370 = add nsw i32 %368, %369
  %371 = load i32, i32* %75, align 4
  %372 = add nsw i32 %370, %371
  %373 = load i32, i32* %77, align 4
  %374 = add nsw i32 %372, %373
  store i32 %374, i32* %87, align 4
  %375 = load i32, i32* %33, align 4
  %376 = load i32, i32* %41, align 4
  %377 = add nsw i32 %375, %376
  %378 = load i32, i32* %48, align 4
  %379 = add nsw i32 %377, %378
  %380 = load i32, i32* %76, align 4
  %381 = add nsw i32 %379, %380
  %382 = load i32, i32* %78, align 4
  %383 = add nsw i32 %381, %382
  store i32 %383, i32* %88, align 4
  %384 = load i32, i32* %34, align 4
  %385 = load i32, i32* %42, align 4
  %386 = add nsw i32 %384, %385
  %387 = load i32, i32* %49, align 4
  %388 = add nsw i32 %386, %387
  %389 = load i32, i32* %55, align 4
  %390 = add nsw i32 %388, %389
  %391 = load i32, i32* %79, align 4
  %392 = add nsw i32 %390, %391
  %393 = load i32, i32* %80, align 4
  %394 = add nsw i32 %392, %393
  store i32 %394, i32* %89, align 4
  %395 = load i32, i32* %35, align 4
  %396 = load i32, i32* %43, align 4
  %397 = add nsw i32 %395, %396
  %398 = load i32, i32* %50, align 4
  %399 = add nsw i32 %397, %398
  %400 = load i32, i32* %56, align 4
  %401 = add nsw i32 %399, %400
  %402 = load i32, i32* %81, align 4
  %403 = add nsw i32 %401, %402
  store i32 %403, i32* %90, align 4
  %404 = load i32, i32* %36, align 4
  %405 = load i32, i32* %44, align 4
  %406 = add nsw i32 %404, %405
  %407 = load i32, i32* %51, align 4
  %408 = add nsw i32 %406, %407
  %409 = load i32, i32* %57, align 4
  %410 = add nsw i32 %408, %409
  %411 = load i32, i32* %62, align 4
  %412 = add nsw i32 %410, %411
  %413 = load i32, i32* %82, align 4
  %414 = add nsw i32 %412, %413
  store i32 %414, i32* %91, align 4
  %415 = load i32, i32* %37, align 4
  %416 = load i32, i32* %45, align 4
  %417 = add nsw i32 %415, %416
  %418 = load i32, i32* %52, align 4
  %419 = add nsw i32 %417, %418
  %420 = load i32, i32* %58, align 4
  %421 = add nsw i32 %419, %420
  %422 = load i32, i32* %63, align 4
  %423 = add nsw i32 %421, %422
  store i32 %423, i32* %92, align 4
  %424 = load i32, i32* %83, align 4
  %425 = load i32, i32* %83, align 4
  %426 = add nsw i32 %425, %424
  store i32 %426, i32* %83, align 4
  %427 = load i32, i32* %84, align 4
  %428 = load i32, i32* %84, align 4
  %429 = add nsw i32 %428, %427
  store i32 %429, i32* %84, align 4
  %430 = load i32, i32* %85, align 4
  %431 = load i32, i32* %85, align 4
  %432 = add nsw i32 %431, %430
  store i32 %432, i32* %85, align 4
  %433 = load i32, i32* %86, align 4
  %434 = load i32, i32* %86, align 4
  %435 = add nsw i32 %434, %433
  store i32 %435, i32* %86, align 4
  %436 = load i32, i32* %87, align 4
  %437 = load i32, i32* %87, align 4
  %438 = add nsw i32 %437, %436
  store i32 %438, i32* %87, align 4
  %439 = load i32, i32* %88, align 4
  %440 = load i32, i32* %88, align 4
  %441 = add nsw i32 %440, %439
  store i32 %441, i32* %88, align 4
  %442 = load i32, i32* %89, align 4
  %443 = load i32, i32* %89, align 4
  %444 = add nsw i32 %443, %442
  store i32 %444, i32* %89, align 4
  %445 = load i32, i32* %90, align 4
  %446 = load i32, i32* %90, align 4
  %447 = add nsw i32 %446, %445
  store i32 %447, i32* %90, align 4
  %448 = load i32, i32* %91, align 4
  %449 = load i32, i32* %91, align 4
  %450 = add nsw i32 %449, %448
  store i32 %450, i32* %91, align 4
  %451 = load i32, i32* %92, align 4
  %452 = load i32, i32* %92, align 4
  %453 = add nsw i32 %452, %451
  store i32 %453, i32* %92, align 4
  %454 = load i32, i32* %83, align 4
  %455 = add nsw i32 %454, 33554432
  store i32 %455, i32* %93, align 4
  %456 = load i32, i32* %93, align 4
  %457 = ashr i32 %456, 26
  %458 = load i32, i32* %84, align 4
  %459 = add nsw i32 %458, %457
  store i32 %459, i32* %84, align 4
  %460 = load i32, i32* %93, align 4
  %461 = load i32, i32* @kTop38Bits, align 4
  %462 = and i32 %460, %461
  %463 = load i32, i32* %83, align 4
  %464 = sub nsw i32 %463, %462
  store i32 %464, i32* %83, align 4
  %465 = load i32, i32* %87, align 4
  %466 = add nsw i32 %465, 33554432
  store i32 %466, i32* %97, align 4
  %467 = load i32, i32* %97, align 4
  %468 = ashr i32 %467, 26
  %469 = load i32, i32* %88, align 4
  %470 = add nsw i32 %469, %468
  store i32 %470, i32* %88, align 4
  %471 = load i32, i32* %97, align 4
  %472 = load i32, i32* @kTop38Bits, align 4
  %473 = and i32 %471, %472
  %474 = load i32, i32* %87, align 4
  %475 = sub nsw i32 %474, %473
  store i32 %475, i32* %87, align 4
  %476 = load i32, i32* %84, align 4
  %477 = add nsw i32 %476, 16777216
  store i32 %477, i32* %94, align 4
  %478 = load i32, i32* %94, align 4
  %479 = ashr i32 %478, 25
  %480 = load i32, i32* %85, align 4
  %481 = add nsw i32 %480, %479
  store i32 %481, i32* %85, align 4
  %482 = load i32, i32* %94, align 4
  %483 = load i32, i32* @kTop39Bits, align 4
  %484 = and i32 %482, %483
  %485 = load i32, i32* %84, align 4
  %486 = sub nsw i32 %485, %484
  store i32 %486, i32* %84, align 4
  %487 = load i32, i32* %88, align 4
  %488 = add nsw i32 %487, 16777216
  store i32 %488, i32* %98, align 4
  %489 = load i32, i32* %98, align 4
  %490 = ashr i32 %489, 25
  %491 = load i32, i32* %89, align 4
  %492 = add nsw i32 %491, %490
  store i32 %492, i32* %89, align 4
  %493 = load i32, i32* %98, align 4
  %494 = load i32, i32* @kTop39Bits, align 4
  %495 = and i32 %493, %494
  %496 = load i32, i32* %88, align 4
  %497 = sub nsw i32 %496, %495
  store i32 %497, i32* %88, align 4
  %498 = load i32, i32* %85, align 4
  %499 = add nsw i32 %498, 33554432
  store i32 %499, i32* %95, align 4
  %500 = load i32, i32* %95, align 4
  %501 = ashr i32 %500, 26
  %502 = load i32, i32* %86, align 4
  %503 = add nsw i32 %502, %501
  store i32 %503, i32* %86, align 4
  %504 = load i32, i32* %95, align 4
  %505 = load i32, i32* @kTop38Bits, align 4
  %506 = and i32 %504, %505
  %507 = load i32, i32* %85, align 4
  %508 = sub nsw i32 %507, %506
  store i32 %508, i32* %85, align 4
  %509 = load i32, i32* %89, align 4
  %510 = add nsw i32 %509, 33554432
  store i32 %510, i32* %99, align 4
  %511 = load i32, i32* %99, align 4
  %512 = ashr i32 %511, 26
  %513 = load i32, i32* %90, align 4
  %514 = add nsw i32 %513, %512
  store i32 %514, i32* %90, align 4
  %515 = load i32, i32* %99, align 4
  %516 = load i32, i32* @kTop38Bits, align 4
  %517 = and i32 %515, %516
  %518 = load i32, i32* %89, align 4
  %519 = sub nsw i32 %518, %517
  store i32 %519, i32* %89, align 4
  %520 = load i32, i32* %86, align 4
  %521 = add nsw i32 %520, 16777216
  store i32 %521, i32* %96, align 4
  %522 = load i32, i32* %96, align 4
  %523 = ashr i32 %522, 25
  %524 = load i32, i32* %87, align 4
  %525 = add nsw i32 %524, %523
  store i32 %525, i32* %87, align 4
  %526 = load i32, i32* %96, align 4
  %527 = load i32, i32* @kTop39Bits, align 4
  %528 = and i32 %526, %527
  %529 = load i32, i32* %86, align 4
  %530 = sub nsw i32 %529, %528
  store i32 %530, i32* %86, align 4
  %531 = load i32, i32* %90, align 4
  %532 = add nsw i32 %531, 16777216
  store i32 %532, i32* %100, align 4
  %533 = load i32, i32* %100, align 4
  %534 = ashr i32 %533, 25
  %535 = load i32, i32* %91, align 4
  %536 = add nsw i32 %535, %534
  store i32 %536, i32* %91, align 4
  %537 = load i32, i32* %100, align 4
  %538 = load i32, i32* @kTop39Bits, align 4
  %539 = and i32 %537, %538
  %540 = load i32, i32* %90, align 4
  %541 = sub nsw i32 %540, %539
  store i32 %541, i32* %90, align 4
  %542 = load i32, i32* %87, align 4
  %543 = add nsw i32 %542, 33554432
  store i32 %543, i32* %97, align 4
  %544 = load i32, i32* %97, align 4
  %545 = ashr i32 %544, 26
  %546 = load i32, i32* %88, align 4
  %547 = add nsw i32 %546, %545
  store i32 %547, i32* %88, align 4
  %548 = load i32, i32* %97, align 4
  %549 = load i32, i32* @kTop38Bits, align 4
  %550 = and i32 %548, %549
  %551 = load i32, i32* %87, align 4
  %552 = sub nsw i32 %551, %550
  store i32 %552, i32* %87, align 4
  %553 = load i32, i32* %91, align 4
  %554 = add nsw i32 %553, 33554432
  store i32 %554, i32* %101, align 4
  %555 = load i32, i32* %101, align 4
  %556 = ashr i32 %555, 26
  %557 = load i32, i32* %92, align 4
  %558 = add nsw i32 %557, %556
  store i32 %558, i32* %92, align 4
  %559 = load i32, i32* %101, align 4
  %560 = load i32, i32* @kTop38Bits, align 4
  %561 = and i32 %559, %560
  %562 = load i32, i32* %91, align 4
  %563 = sub nsw i32 %562, %561
  store i32 %563, i32* %91, align 4
  %564 = load i32, i32* %92, align 4
  %565 = add nsw i32 %564, 16777216
  store i32 %565, i32* %102, align 4
  %566 = load i32, i32* %102, align 4
  %567 = ashr i32 %566, 25
  %568 = mul nsw i32 %567, 19
  %569 = load i32, i32* %83, align 4
  %570 = add nsw i32 %569, %568
  store i32 %570, i32* %83, align 4
  %571 = load i32, i32* %102, align 4
  %572 = load i32, i32* @kTop39Bits, align 4
  %573 = and i32 %571, %572
  %574 = load i32, i32* %92, align 4
  %575 = sub nsw i32 %574, %573
  store i32 %575, i32* %92, align 4
  %576 = load i32, i32* %83, align 4
  %577 = add nsw i32 %576, 33554432
  store i32 %577, i32* %93, align 4
  %578 = load i32, i32* %93, align 4
  %579 = ashr i32 %578, 26
  %580 = load i32, i32* %84, align 4
  %581 = add nsw i32 %580, %579
  store i32 %581, i32* %84, align 4
  %582 = load i32, i32* %93, align 4
  %583 = load i32, i32* @kTop38Bits, align 4
  %584 = and i32 %582, %583
  %585 = load i32, i32* %83, align 4
  %586 = sub nsw i32 %585, %584
  store i32 %586, i32* %83, align 4
  %587 = load i32, i32* %83, align 4
  %588 = load i32*, i32** %3, align 8
  %589 = getelementptr inbounds i32, i32* %588, i64 0
  store i32 %587, i32* %589, align 4
  %590 = load i32, i32* %84, align 4
  %591 = load i32*, i32** %3, align 8
  %592 = getelementptr inbounds i32, i32* %591, i64 1
  store i32 %590, i32* %592, align 4
  %593 = load i32, i32* %85, align 4
  %594 = load i32*, i32** %3, align 8
  %595 = getelementptr inbounds i32, i32* %594, i64 2
  store i32 %593, i32* %595, align 4
  %596 = load i32, i32* %86, align 4
  %597 = load i32*, i32** %3, align 8
  %598 = getelementptr inbounds i32, i32* %597, i64 3
  store i32 %596, i32* %598, align 4
  %599 = load i32, i32* %87, align 4
  %600 = load i32*, i32** %3, align 8
  %601 = getelementptr inbounds i32, i32* %600, i64 4
  store i32 %599, i32* %601, align 4
  %602 = load i32, i32* %88, align 4
  %603 = load i32*, i32** %3, align 8
  %604 = getelementptr inbounds i32, i32* %603, i64 5
  store i32 %602, i32* %604, align 4
  %605 = load i32, i32* %89, align 4
  %606 = load i32*, i32** %3, align 8
  %607 = getelementptr inbounds i32, i32* %606, i64 6
  store i32 %605, i32* %607, align 4
  %608 = load i32, i32* %90, align 4
  %609 = load i32*, i32** %3, align 8
  %610 = getelementptr inbounds i32, i32* %609, i64 7
  store i32 %608, i32* %610, align 4
  %611 = load i32, i32* %91, align 4
  %612 = load i32*, i32** %3, align 8
  %613 = getelementptr inbounds i32, i32* %612, i64 8
  store i32 %611, i32* %613, align 4
  %614 = load i32, i32* %92, align 4
  %615 = load i32*, i32** %3, align 8
  %616 = getelementptr inbounds i32, i32* %615, i64 9
  store i32 %614, i32* %616, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
