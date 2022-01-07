; ModuleID = '/home/carl/AnghaBench/freebsd/secure/lib/libcrypt/extr_crypt-des.c_do_des.c'
source_filename = "/home/carl/AnghaBench/freebsd/secure/lib/libcrypt/extr_crypt-des.c_do_des.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@en_keysl = common dso_local global i32* null, align 8
@en_keysr = common dso_local global i32* null, align 8
@de_keysl = common dso_local global i32* null, align 8
@de_keysr = common dso_local global i32* null, align 8
@ip_maskl = common dso_local global i32** null, align 8
@ip_maskr = common dso_local global i32** null, align 8
@saltbits = common dso_local global i32 0, align 4
@psbox = common dso_local global i32** null, align 8
@m_sbox = common dso_local global i64** null, align 8
@fp_maskl = common dso_local global i32** null, align 8
@fp_maskr = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i32*, i32)* @do_des to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_des(i32 %0, i32 %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %5
  store i32 1, i32* %6, align 4
  br label %473

25:                                               ; preds = %5
  %26 = load i32, i32* %11, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32*, i32** @en_keysl, align 8
  store i32* %29, i32** %16, align 8
  %30 = load i32*, i32** @en_keysr, align 8
  store i32* %30, i32** %17, align 8
  br label %36

31:                                               ; preds = %25
  %32 = load i32, i32* %11, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %11, align 4
  %34 = load i32*, i32** @de_keysl, align 8
  store i32* %34, i32** %16, align 8
  %35 = load i32*, i32** @de_keysr, align 8
  store i32* %35, i32** %17, align 8
  br label %36

36:                                               ; preds = %31, %28
  br label %37

37:                                               ; preds = %36
  %38 = load i32**, i32*** @ip_maskl, align 8
  %39 = getelementptr inbounds i32*, i32** %38, i64 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = ashr i32 %41, 24
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32**, i32*** @ip_maskl, align 8
  %47 = getelementptr inbounds i32*, i32** %46, i64 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = ashr i32 %49, 16
  %51 = and i32 %50, 255
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %48, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %45, %54
  %56 = load i32**, i32*** @ip_maskl, align 8
  %57 = getelementptr inbounds i32*, i32** %56, i64 2
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = ashr i32 %59, 8
  %61 = and i32 %60, 255
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %58, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %55, %64
  %66 = load i32**, i32*** @ip_maskl, align 8
  %67 = getelementptr inbounds i32*, i32** %66, i64 3
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = and i32 %69, 255
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %65, %73
  %75 = load i32**, i32*** @ip_maskl, align 8
  %76 = getelementptr inbounds i32*, i32** %75, i64 4
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = ashr i32 %78, 24
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %77, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %74, %82
  %84 = load i32**, i32*** @ip_maskl, align 8
  %85 = getelementptr inbounds i32*, i32** %84, i64 5
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %8, align 4
  %88 = ashr i32 %87, 16
  %89 = and i32 %88, 255
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %86, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %83, %92
  %94 = load i32**, i32*** @ip_maskl, align 8
  %95 = getelementptr inbounds i32*, i32** %94, i64 6
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %8, align 4
  %98 = ashr i32 %97, 8
  %99 = and i32 %98, 255
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %96, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %93, %102
  %104 = load i32**, i32*** @ip_maskl, align 8
  %105 = getelementptr inbounds i32*, i32** %104, i64 7
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %8, align 4
  %108 = and i32 %107, 255
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %106, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = or i32 %103, %111
  store i32 %112, i32* %12, align 4
  %113 = load i32**, i32*** @ip_maskr, align 8
  %114 = getelementptr inbounds i32*, i32** %113, i64 0
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %7, align 4
  %117 = ashr i32 %116, 24
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %115, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = load i32**, i32*** @ip_maskr, align 8
  %122 = getelementptr inbounds i32*, i32** %121, i64 1
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %7, align 4
  %125 = ashr i32 %124, 16
  %126 = and i32 %125, 255
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %123, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = or i32 %120, %129
  %131 = load i32**, i32*** @ip_maskr, align 8
  %132 = getelementptr inbounds i32*, i32** %131, i64 2
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %7, align 4
  %135 = ashr i32 %134, 8
  %136 = and i32 %135, 255
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %133, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = or i32 %130, %139
  %141 = load i32**, i32*** @ip_maskr, align 8
  %142 = getelementptr inbounds i32*, i32** %141, i64 3
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %7, align 4
  %145 = and i32 %144, 255
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %143, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = or i32 %140, %148
  %150 = load i32**, i32*** @ip_maskr, align 8
  %151 = getelementptr inbounds i32*, i32** %150, i64 4
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %8, align 4
  %154 = ashr i32 %153, 24
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %152, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = or i32 %149, %157
  %159 = load i32**, i32*** @ip_maskr, align 8
  %160 = getelementptr inbounds i32*, i32** %159, i64 5
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* %8, align 4
  %163 = ashr i32 %162, 16
  %164 = and i32 %163, 255
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %161, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = or i32 %158, %167
  %169 = load i32**, i32*** @ip_maskr, align 8
  %170 = getelementptr inbounds i32*, i32** %169, i64 6
  %171 = load i32*, i32** %170, align 8
  %172 = load i32, i32* %8, align 4
  %173 = ashr i32 %172, 8
  %174 = and i32 %173, 255
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %171, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = or i32 %168, %177
  %179 = load i32**, i32*** @ip_maskr, align 8
  %180 = getelementptr inbounds i32*, i32** %179, i64 7
  %181 = load i32*, i32** %180, align 8
  %182 = load i32, i32* %8, align 4
  %183 = and i32 %182, 255
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %181, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = or i32 %178, %186
  store i32 %187, i32* %13, align 4
  br label %188

188:                                              ; preds = %317, %37
  %189 = load i32, i32* %11, align 4
  %190 = add nsw i32 %189, -1
  store i32 %190, i32* %11, align 4
  %191 = icmp ne i32 %189, 0
  br i1 %191, label %192, label %320

192:                                              ; preds = %188
  %193 = load i32*, i32** %16, align 8
  store i32* %193, i32** %14, align 8
  %194 = load i32*, i32** %17, align 8
  store i32* %194, i32** %15, align 8
  store i32 16, i32* %21, align 4
  br label %195

195:                                              ; preds = %199, %192
  %196 = load i32, i32* %21, align 4
  %197 = add nsw i32 %196, -1
  store i32 %197, i32* %21, align 4
  %198 = icmp ne i32 %196, 0
  br i1 %198, label %199, label %317

199:                                              ; preds = %195
  %200 = load i32, i32* %13, align 4
  %201 = and i32 %200, 1
  %202 = shl i32 %201, 23
  %203 = load i32, i32* %13, align 4
  %204 = and i32 %203, -134217728
  %205 = lshr i32 %204, 9
  %206 = or i32 %202, %205
  %207 = load i32, i32* %13, align 4
  %208 = and i32 %207, 528482304
  %209 = ashr i32 %208, 11
  %210 = or i32 %206, %209
  %211 = load i32, i32* %13, align 4
  %212 = and i32 %211, 33030144
  %213 = ashr i32 %212, 13
  %214 = or i32 %210, %213
  %215 = load i32, i32* %13, align 4
  %216 = and i32 %215, 2064384
  %217 = ashr i32 %216, 15
  %218 = or i32 %214, %217
  store i32 %218, i32* %19, align 4
  %219 = load i32, i32* %13, align 4
  %220 = and i32 %219, 129024
  %221 = shl i32 %220, 7
  %222 = load i32, i32* %13, align 4
  %223 = and i32 %222, 8064
  %224 = shl i32 %223, 5
  %225 = or i32 %221, %224
  %226 = load i32, i32* %13, align 4
  %227 = and i32 %226, 504
  %228 = shl i32 %227, 3
  %229 = or i32 %225, %228
  %230 = load i32, i32* %13, align 4
  %231 = and i32 %230, 31
  %232 = shl i32 %231, 1
  %233 = or i32 %229, %232
  %234 = load i32, i32* %13, align 4
  %235 = and i32 %234, -2147483648
  %236 = lshr i32 %235, 31
  %237 = or i32 %233, %236
  store i32 %237, i32* %20, align 4
  %238 = load i32, i32* %19, align 4
  %239 = load i32, i32* %20, align 4
  %240 = xor i32 %238, %239
  %241 = load i32, i32* @saltbits, align 4
  %242 = and i32 %240, %241
  store i32 %242, i32* %18, align 4
  %243 = load i32, i32* %18, align 4
  %244 = load i32*, i32** %14, align 8
  %245 = getelementptr inbounds i32, i32* %244, i32 1
  store i32* %245, i32** %14, align 8
  %246 = load i32, i32* %244, align 4
  %247 = xor i32 %243, %246
  %248 = load i32, i32* %19, align 4
  %249 = xor i32 %248, %247
  store i32 %249, i32* %19, align 4
  %250 = load i32, i32* %18, align 4
  %251 = load i32*, i32** %15, align 8
  %252 = getelementptr inbounds i32, i32* %251, i32 1
  store i32* %252, i32** %15, align 8
  %253 = load i32, i32* %251, align 4
  %254 = xor i32 %250, %253
  %255 = load i32, i32* %20, align 4
  %256 = xor i32 %255, %254
  store i32 %256, i32* %20, align 4
  %257 = load i32**, i32*** @psbox, align 8
  %258 = getelementptr inbounds i32*, i32** %257, i64 0
  %259 = load i32*, i32** %258, align 8
  %260 = load i64**, i64*** @m_sbox, align 8
  %261 = getelementptr inbounds i64*, i64** %260, i64 0
  %262 = load i64*, i64** %261, align 8
  %263 = load i32, i32* %19, align 4
  %264 = ashr i32 %263, 12
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i64, i64* %262, i64 %265
  %267 = load i64, i64* %266, align 8
  %268 = getelementptr inbounds i32, i32* %259, i64 %267
  %269 = load i32, i32* %268, align 4
  %270 = load i32**, i32*** @psbox, align 8
  %271 = getelementptr inbounds i32*, i32** %270, i64 1
  %272 = load i32*, i32** %271, align 8
  %273 = load i64**, i64*** @m_sbox, align 8
  %274 = getelementptr inbounds i64*, i64** %273, i64 1
  %275 = load i64*, i64** %274, align 8
  %276 = load i32, i32* %19, align 4
  %277 = and i32 %276, 4095
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i64, i64* %275, i64 %278
  %280 = load i64, i64* %279, align 8
  %281 = getelementptr inbounds i32, i32* %272, i64 %280
  %282 = load i32, i32* %281, align 4
  %283 = or i32 %269, %282
  %284 = load i32**, i32*** @psbox, align 8
  %285 = getelementptr inbounds i32*, i32** %284, i64 2
  %286 = load i32*, i32** %285, align 8
  %287 = load i64**, i64*** @m_sbox, align 8
  %288 = getelementptr inbounds i64*, i64** %287, i64 2
  %289 = load i64*, i64** %288, align 8
  %290 = load i32, i32* %20, align 4
  %291 = ashr i32 %290, 12
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i64, i64* %289, i64 %292
  %294 = load i64, i64* %293, align 8
  %295 = getelementptr inbounds i32, i32* %286, i64 %294
  %296 = load i32, i32* %295, align 4
  %297 = or i32 %283, %296
  %298 = load i32**, i32*** @psbox, align 8
  %299 = getelementptr inbounds i32*, i32** %298, i64 3
  %300 = load i32*, i32** %299, align 8
  %301 = load i64**, i64*** @m_sbox, align 8
  %302 = getelementptr inbounds i64*, i64** %301, i64 3
  %303 = load i64*, i64** %302, align 8
  %304 = load i32, i32* %20, align 4
  %305 = and i32 %304, 4095
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i64, i64* %303, i64 %306
  %308 = load i64, i64* %307, align 8
  %309 = getelementptr inbounds i32, i32* %300, i64 %308
  %310 = load i32, i32* %309, align 4
  %311 = or i32 %297, %310
  store i32 %311, i32* %18, align 4
  %312 = load i32, i32* %12, align 4
  %313 = load i32, i32* %18, align 4
  %314 = xor i32 %313, %312
  store i32 %314, i32* %18, align 4
  %315 = load i32, i32* %13, align 4
  store i32 %315, i32* %12, align 4
  %316 = load i32, i32* %18, align 4
  store i32 %316, i32* %13, align 4
  br label %195

317:                                              ; preds = %195
  %318 = load i32, i32* %12, align 4
  store i32 %318, i32* %13, align 4
  %319 = load i32, i32* %18, align 4
  store i32 %319, i32* %12, align 4
  br label %188

320:                                              ; preds = %188
  %321 = load i32**, i32*** @fp_maskl, align 8
  %322 = getelementptr inbounds i32*, i32** %321, i64 0
  %323 = load i32*, i32** %322, align 8
  %324 = load i32, i32* %12, align 4
  %325 = ashr i32 %324, 24
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i32, i32* %323, i64 %326
  %328 = load i32, i32* %327, align 4
  %329 = load i32**, i32*** @fp_maskl, align 8
  %330 = getelementptr inbounds i32*, i32** %329, i64 1
  %331 = load i32*, i32** %330, align 8
  %332 = load i32, i32* %12, align 4
  %333 = ashr i32 %332, 16
  %334 = and i32 %333, 255
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i32, i32* %331, i64 %335
  %337 = load i32, i32* %336, align 4
  %338 = or i32 %328, %337
  %339 = load i32**, i32*** @fp_maskl, align 8
  %340 = getelementptr inbounds i32*, i32** %339, i64 2
  %341 = load i32*, i32** %340, align 8
  %342 = load i32, i32* %12, align 4
  %343 = ashr i32 %342, 8
  %344 = and i32 %343, 255
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds i32, i32* %341, i64 %345
  %347 = load i32, i32* %346, align 4
  %348 = or i32 %338, %347
  %349 = load i32**, i32*** @fp_maskl, align 8
  %350 = getelementptr inbounds i32*, i32** %349, i64 3
  %351 = load i32*, i32** %350, align 8
  %352 = load i32, i32* %12, align 4
  %353 = and i32 %352, 255
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds i32, i32* %351, i64 %354
  %356 = load i32, i32* %355, align 4
  %357 = or i32 %348, %356
  %358 = load i32**, i32*** @fp_maskl, align 8
  %359 = getelementptr inbounds i32*, i32** %358, i64 4
  %360 = load i32*, i32** %359, align 8
  %361 = load i32, i32* %13, align 4
  %362 = ashr i32 %361, 24
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds i32, i32* %360, i64 %363
  %365 = load i32, i32* %364, align 4
  %366 = or i32 %357, %365
  %367 = load i32**, i32*** @fp_maskl, align 8
  %368 = getelementptr inbounds i32*, i32** %367, i64 5
  %369 = load i32*, i32** %368, align 8
  %370 = load i32, i32* %13, align 4
  %371 = ashr i32 %370, 16
  %372 = and i32 %371, 255
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds i32, i32* %369, i64 %373
  %375 = load i32, i32* %374, align 4
  %376 = or i32 %366, %375
  %377 = load i32**, i32*** @fp_maskl, align 8
  %378 = getelementptr inbounds i32*, i32** %377, i64 6
  %379 = load i32*, i32** %378, align 8
  %380 = load i32, i32* %13, align 4
  %381 = ashr i32 %380, 8
  %382 = and i32 %381, 255
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds i32, i32* %379, i64 %383
  %385 = load i32, i32* %384, align 4
  %386 = or i32 %376, %385
  %387 = load i32**, i32*** @fp_maskl, align 8
  %388 = getelementptr inbounds i32*, i32** %387, i64 7
  %389 = load i32*, i32** %388, align 8
  %390 = load i32, i32* %13, align 4
  %391 = and i32 %390, 255
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds i32, i32* %389, i64 %392
  %394 = load i32, i32* %393, align 4
  %395 = or i32 %386, %394
  %396 = load i32*, i32** %9, align 8
  store i32 %395, i32* %396, align 4
  %397 = load i32**, i32*** @fp_maskr, align 8
  %398 = getelementptr inbounds i32*, i32** %397, i64 0
  %399 = load i32*, i32** %398, align 8
  %400 = load i32, i32* %12, align 4
  %401 = ashr i32 %400, 24
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds i32, i32* %399, i64 %402
  %404 = load i32, i32* %403, align 4
  %405 = load i32**, i32*** @fp_maskr, align 8
  %406 = getelementptr inbounds i32*, i32** %405, i64 1
  %407 = load i32*, i32** %406, align 8
  %408 = load i32, i32* %12, align 4
  %409 = ashr i32 %408, 16
  %410 = and i32 %409, 255
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds i32, i32* %407, i64 %411
  %413 = load i32, i32* %412, align 4
  %414 = or i32 %404, %413
  %415 = load i32**, i32*** @fp_maskr, align 8
  %416 = getelementptr inbounds i32*, i32** %415, i64 2
  %417 = load i32*, i32** %416, align 8
  %418 = load i32, i32* %12, align 4
  %419 = ashr i32 %418, 8
  %420 = and i32 %419, 255
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds i32, i32* %417, i64 %421
  %423 = load i32, i32* %422, align 4
  %424 = or i32 %414, %423
  %425 = load i32**, i32*** @fp_maskr, align 8
  %426 = getelementptr inbounds i32*, i32** %425, i64 3
  %427 = load i32*, i32** %426, align 8
  %428 = load i32, i32* %12, align 4
  %429 = and i32 %428, 255
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds i32, i32* %427, i64 %430
  %432 = load i32, i32* %431, align 4
  %433 = or i32 %424, %432
  %434 = load i32**, i32*** @fp_maskr, align 8
  %435 = getelementptr inbounds i32*, i32** %434, i64 4
  %436 = load i32*, i32** %435, align 8
  %437 = load i32, i32* %13, align 4
  %438 = ashr i32 %437, 24
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds i32, i32* %436, i64 %439
  %441 = load i32, i32* %440, align 4
  %442 = or i32 %433, %441
  %443 = load i32**, i32*** @fp_maskr, align 8
  %444 = getelementptr inbounds i32*, i32** %443, i64 5
  %445 = load i32*, i32** %444, align 8
  %446 = load i32, i32* %13, align 4
  %447 = ashr i32 %446, 16
  %448 = and i32 %447, 255
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds i32, i32* %445, i64 %449
  %451 = load i32, i32* %450, align 4
  %452 = or i32 %442, %451
  %453 = load i32**, i32*** @fp_maskr, align 8
  %454 = getelementptr inbounds i32*, i32** %453, i64 6
  %455 = load i32*, i32** %454, align 8
  %456 = load i32, i32* %13, align 4
  %457 = ashr i32 %456, 8
  %458 = and i32 %457, 255
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds i32, i32* %455, i64 %459
  %461 = load i32, i32* %460, align 4
  %462 = or i32 %452, %461
  %463 = load i32**, i32*** @fp_maskr, align 8
  %464 = getelementptr inbounds i32*, i32** %463, i64 7
  %465 = load i32*, i32** %464, align 8
  %466 = load i32, i32* %13, align 4
  %467 = and i32 %466, 255
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds i32, i32* %465, i64 %468
  %470 = load i32, i32* %469, align 4
  %471 = or i32 %462, %470
  %472 = load i32*, i32** %10, align 8
  store i32 %471, i32* %472, align 4
  store i32 0, i32* %6, align 4
  br label %473

473:                                              ; preds = %320, %24
  %474 = load i32, i32* %6, align 4
  ret i32 %474
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
