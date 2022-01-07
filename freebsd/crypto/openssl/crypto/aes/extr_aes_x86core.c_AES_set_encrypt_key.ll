; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/aes/extr_aes_x86core.c_AES_set_encrypt_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/aes/extr_aes_x86core.c_AES_set_encrypt_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32 }

@Te4 = common dso_local global i64* null, align 8
@rcon = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AES_set_encrypt_key(i8* %0, i32 %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  store i32 0, i32* %9, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %15 = icmp ne %struct.TYPE_3__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %13, %3
  store i32 -1, i32* %4, align 4
  br label %446

17:                                               ; preds = %13
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 128
  br i1 %19, label %20, label %27

20:                                               ; preds = %17
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 192
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 256
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 -2, i32* %4, align 4
  br label %446

27:                                               ; preds = %23, %20, %17
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %8, align 8
  %31 = load i32, i32* %6, align 4
  %32 = icmp eq i32 %31, 128
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  store i32 10, i32* %35, align 8
  br label %46

36:                                               ; preds = %27
  %37 = load i32, i32* %6, align 4
  %38 = icmp eq i32 %37, 192
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  store i32 12, i32* %41, align 8
  br label %45

42:                                               ; preds = %36
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  store i32 14, i32* %44, align 8
  br label %45

45:                                               ; preds = %42, %39
  br label %46

46:                                               ; preds = %45, %33
  %47 = load i8*, i8** %5, align 8
  %48 = call i32 @GETU32(i8* %47)
  %49 = load i32*, i32** %8, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  store i32 %48, i32* %50, align 4
  %51 = load i8*, i8** %5, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 4
  %53 = call i32 @GETU32(i8* %52)
  %54 = load i32*, i32** %8, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  store i32 %53, i32* %55, align 4
  %56 = load i8*, i8** %5, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 8
  %58 = call i32 @GETU32(i8* %57)
  %59 = load i32*, i32** %8, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 2
  store i32 %58, i32* %60, align 4
  %61 = load i8*, i8** %5, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 12
  %63 = call i32 @GETU32(i8* %62)
  %64 = load i32*, i32** %8, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 3
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp eq i32 %66, 128
  br i1 %67, label %68, label %155

68:                                               ; preds = %46
  br label %69

69:                                               ; preds = %68, %152
  %70 = load i32*, i32** %8, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 3
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %10, align 4
  %73 = load i32*, i32** %8, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = load i64*, i64** @Te4, align 8
  %77 = load i32, i32* %10, align 4
  %78 = ashr i32 %77, 8
  %79 = and i32 %78, 255
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %76, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = trunc i64 %82 to i32
  %84 = xor i32 %75, %83
  %85 = load i64*, i64** @Te4, align 8
  %86 = load i32, i32* %10, align 4
  %87 = ashr i32 %86, 16
  %88 = and i32 %87, 255
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %85, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = trunc i64 %91 to i32
  %93 = shl i32 %92, 8
  %94 = xor i32 %84, %93
  %95 = load i64*, i64** @Te4, align 8
  %96 = load i32, i32* %10, align 4
  %97 = ashr i32 %96, 24
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i64, i64* %95, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = trunc i64 %100 to i32
  %102 = shl i32 %101, 16
  %103 = xor i32 %94, %102
  %104 = load i64*, i64** @Te4, align 8
  %105 = load i32, i32* %10, align 4
  %106 = and i32 %105, 255
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i64, i64* %104, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = trunc i64 %109 to i32
  %111 = shl i32 %110, 24
  %112 = xor i32 %103, %111
  %113 = load i32*, i32** @rcon, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = xor i32 %112, %117
  %119 = load i32*, i32** %8, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 4
  store i32 %118, i32* %120, align 4
  %121 = load i32*, i32** %8, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32*, i32** %8, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 4
  %126 = load i32, i32* %125, align 4
  %127 = xor i32 %123, %126
  %128 = load i32*, i32** %8, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 5
  store i32 %127, i32* %129, align 4
  %130 = load i32*, i32** %8, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 2
  %132 = load i32, i32* %131, align 4
  %133 = load i32*, i32** %8, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 5
  %135 = load i32, i32* %134, align 4
  %136 = xor i32 %132, %135
  %137 = load i32*, i32** %8, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 6
  store i32 %136, i32* %138, align 4
  %139 = load i32*, i32** %8, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 3
  %141 = load i32, i32* %140, align 4
  %142 = load i32*, i32** %8, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 6
  %144 = load i32, i32* %143, align 4
  %145 = xor i32 %141, %144
  %146 = load i32*, i32** %8, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 7
  store i32 %145, i32* %147, align 4
  %148 = load i32, i32* %9, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %9, align 4
  %150 = icmp eq i32 %149, 10
  br i1 %150, label %151, label %152

151:                                              ; preds = %69
  store i32 0, i32* %4, align 4
  br label %446

152:                                              ; preds = %69
  %153 = load i32*, i32** %8, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 4
  store i32* %154, i32** %8, align 8
  br label %69

155:                                              ; preds = %46
  %156 = load i8*, i8** %5, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 16
  %158 = call i32 @GETU32(i8* %157)
  %159 = load i32*, i32** %8, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 4
  store i32 %158, i32* %160, align 4
  %161 = load i8*, i8** %5, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 20
  %163 = call i32 @GETU32(i8* %162)
  %164 = load i32*, i32** %8, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 5
  store i32 %163, i32* %165, align 4
  %166 = load i32, i32* %6, align 4
  %167 = icmp eq i32 %166, 192
  br i1 %167, label %168, label %273

168:                                              ; preds = %155
  br label %169

169:                                              ; preds = %168, %252
  %170 = load i32*, i32** %8, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 5
  %172 = load i32, i32* %171, align 4
  store i32 %172, i32* %10, align 4
  %173 = load i32*, i32** %8, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 0
  %175 = load i32, i32* %174, align 4
  %176 = load i64*, i64** @Te4, align 8
  %177 = load i32, i32* %10, align 4
  %178 = ashr i32 %177, 8
  %179 = and i32 %178, 255
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i64, i64* %176, i64 %180
  %182 = load i64, i64* %181, align 8
  %183 = trunc i64 %182 to i32
  %184 = xor i32 %175, %183
  %185 = load i64*, i64** @Te4, align 8
  %186 = load i32, i32* %10, align 4
  %187 = ashr i32 %186, 16
  %188 = and i32 %187, 255
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i64, i64* %185, i64 %189
  %191 = load i64, i64* %190, align 8
  %192 = trunc i64 %191 to i32
  %193 = shl i32 %192, 8
  %194 = xor i32 %184, %193
  %195 = load i64*, i64** @Te4, align 8
  %196 = load i32, i32* %10, align 4
  %197 = ashr i32 %196, 24
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i64, i64* %195, i64 %198
  %200 = load i64, i64* %199, align 8
  %201 = trunc i64 %200 to i32
  %202 = shl i32 %201, 16
  %203 = xor i32 %194, %202
  %204 = load i64*, i64** @Te4, align 8
  %205 = load i32, i32* %10, align 4
  %206 = and i32 %205, 255
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i64, i64* %204, i64 %207
  %209 = load i64, i64* %208, align 8
  %210 = trunc i64 %209 to i32
  %211 = shl i32 %210, 24
  %212 = xor i32 %203, %211
  %213 = load i32*, i32** @rcon, align 8
  %214 = load i32, i32* %9, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %213, i64 %215
  %217 = load i32, i32* %216, align 4
  %218 = xor i32 %212, %217
  %219 = load i32*, i32** %8, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 6
  store i32 %218, i32* %220, align 4
  %221 = load i32*, i32** %8, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 1
  %223 = load i32, i32* %222, align 4
  %224 = load i32*, i32** %8, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 6
  %226 = load i32, i32* %225, align 4
  %227 = xor i32 %223, %226
  %228 = load i32*, i32** %8, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 7
  store i32 %227, i32* %229, align 4
  %230 = load i32*, i32** %8, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 2
  %232 = load i32, i32* %231, align 4
  %233 = load i32*, i32** %8, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 7
  %235 = load i32, i32* %234, align 4
  %236 = xor i32 %232, %235
  %237 = load i32*, i32** %8, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 8
  store i32 %236, i32* %238, align 4
  %239 = load i32*, i32** %8, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 3
  %241 = load i32, i32* %240, align 4
  %242 = load i32*, i32** %8, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 8
  %244 = load i32, i32* %243, align 4
  %245 = xor i32 %241, %244
  %246 = load i32*, i32** %8, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 9
  store i32 %245, i32* %247, align 4
  %248 = load i32, i32* %9, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %9, align 4
  %250 = icmp eq i32 %249, 8
  br i1 %250, label %251, label %252

251:                                              ; preds = %169
  store i32 0, i32* %4, align 4
  br label %446

252:                                              ; preds = %169
  %253 = load i32*, i32** %8, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 4
  %255 = load i32, i32* %254, align 4
  %256 = load i32*, i32** %8, align 8
  %257 = getelementptr inbounds i32, i32* %256, i64 9
  %258 = load i32, i32* %257, align 4
  %259 = xor i32 %255, %258
  %260 = load i32*, i32** %8, align 8
  %261 = getelementptr inbounds i32, i32* %260, i64 10
  store i32 %259, i32* %261, align 4
  %262 = load i32*, i32** %8, align 8
  %263 = getelementptr inbounds i32, i32* %262, i64 5
  %264 = load i32, i32* %263, align 4
  %265 = load i32*, i32** %8, align 8
  %266 = getelementptr inbounds i32, i32* %265, i64 10
  %267 = load i32, i32* %266, align 4
  %268 = xor i32 %264, %267
  %269 = load i32*, i32** %8, align 8
  %270 = getelementptr inbounds i32, i32* %269, i64 11
  store i32 %268, i32* %270, align 4
  %271 = load i32*, i32** %8, align 8
  %272 = getelementptr inbounds i32, i32* %271, i64 6
  store i32* %272, i32** %8, align 8
  br label %169

273:                                              ; preds = %155
  %274 = load i8*, i8** %5, align 8
  %275 = getelementptr inbounds i8, i8* %274, i64 24
  %276 = call i32 @GETU32(i8* %275)
  %277 = load i32*, i32** %8, align 8
  %278 = getelementptr inbounds i32, i32* %277, i64 6
  store i32 %276, i32* %278, align 4
  %279 = load i8*, i8** %5, align 8
  %280 = getelementptr inbounds i8, i8* %279, i64 28
  %281 = call i32 @GETU32(i8* %280)
  %282 = load i32*, i32** %8, align 8
  %283 = getelementptr inbounds i32, i32* %282, i64 7
  store i32 %281, i32* %283, align 4
  %284 = load i32, i32* %6, align 4
  %285 = icmp eq i32 %284, 256
  br i1 %285, label %286, label %445

286:                                              ; preds = %273
  br label %287

287:                                              ; preds = %286, %370
  %288 = load i32*, i32** %8, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 7
  %290 = load i32, i32* %289, align 4
  store i32 %290, i32* %10, align 4
  %291 = load i32*, i32** %8, align 8
  %292 = getelementptr inbounds i32, i32* %291, i64 0
  %293 = load i32, i32* %292, align 4
  %294 = load i64*, i64** @Te4, align 8
  %295 = load i32, i32* %10, align 4
  %296 = ashr i32 %295, 8
  %297 = and i32 %296, 255
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i64, i64* %294, i64 %298
  %300 = load i64, i64* %299, align 8
  %301 = trunc i64 %300 to i32
  %302 = xor i32 %293, %301
  %303 = load i64*, i64** @Te4, align 8
  %304 = load i32, i32* %10, align 4
  %305 = ashr i32 %304, 16
  %306 = and i32 %305, 255
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i64, i64* %303, i64 %307
  %309 = load i64, i64* %308, align 8
  %310 = trunc i64 %309 to i32
  %311 = shl i32 %310, 8
  %312 = xor i32 %302, %311
  %313 = load i64*, i64** @Te4, align 8
  %314 = load i32, i32* %10, align 4
  %315 = ashr i32 %314, 24
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i64, i64* %313, i64 %316
  %318 = load i64, i64* %317, align 8
  %319 = trunc i64 %318 to i32
  %320 = shl i32 %319, 16
  %321 = xor i32 %312, %320
  %322 = load i64*, i64** @Te4, align 8
  %323 = load i32, i32* %10, align 4
  %324 = and i32 %323, 255
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i64, i64* %322, i64 %325
  %327 = load i64, i64* %326, align 8
  %328 = trunc i64 %327 to i32
  %329 = shl i32 %328, 24
  %330 = xor i32 %321, %329
  %331 = load i32*, i32** @rcon, align 8
  %332 = load i32, i32* %9, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i32, i32* %331, i64 %333
  %335 = load i32, i32* %334, align 4
  %336 = xor i32 %330, %335
  %337 = load i32*, i32** %8, align 8
  %338 = getelementptr inbounds i32, i32* %337, i64 8
  store i32 %336, i32* %338, align 4
  %339 = load i32*, i32** %8, align 8
  %340 = getelementptr inbounds i32, i32* %339, i64 1
  %341 = load i32, i32* %340, align 4
  %342 = load i32*, i32** %8, align 8
  %343 = getelementptr inbounds i32, i32* %342, i64 8
  %344 = load i32, i32* %343, align 4
  %345 = xor i32 %341, %344
  %346 = load i32*, i32** %8, align 8
  %347 = getelementptr inbounds i32, i32* %346, i64 9
  store i32 %345, i32* %347, align 4
  %348 = load i32*, i32** %8, align 8
  %349 = getelementptr inbounds i32, i32* %348, i64 2
  %350 = load i32, i32* %349, align 4
  %351 = load i32*, i32** %8, align 8
  %352 = getelementptr inbounds i32, i32* %351, i64 9
  %353 = load i32, i32* %352, align 4
  %354 = xor i32 %350, %353
  %355 = load i32*, i32** %8, align 8
  %356 = getelementptr inbounds i32, i32* %355, i64 10
  store i32 %354, i32* %356, align 4
  %357 = load i32*, i32** %8, align 8
  %358 = getelementptr inbounds i32, i32* %357, i64 3
  %359 = load i32, i32* %358, align 4
  %360 = load i32*, i32** %8, align 8
  %361 = getelementptr inbounds i32, i32* %360, i64 10
  %362 = load i32, i32* %361, align 4
  %363 = xor i32 %359, %362
  %364 = load i32*, i32** %8, align 8
  %365 = getelementptr inbounds i32, i32* %364, i64 11
  store i32 %363, i32* %365, align 4
  %366 = load i32, i32* %9, align 4
  %367 = add nsw i32 %366, 1
  store i32 %367, i32* %9, align 4
  %368 = icmp eq i32 %367, 7
  br i1 %368, label %369, label %370

369:                                              ; preds = %287
  store i32 0, i32* %4, align 4
  br label %446

370:                                              ; preds = %287
  %371 = load i32*, i32** %8, align 8
  %372 = getelementptr inbounds i32, i32* %371, i64 11
  %373 = load i32, i32* %372, align 4
  store i32 %373, i32* %10, align 4
  %374 = load i32*, i32** %8, align 8
  %375 = getelementptr inbounds i32, i32* %374, i64 4
  %376 = load i32, i32* %375, align 4
  %377 = load i64*, i64** @Te4, align 8
  %378 = load i32, i32* %10, align 4
  %379 = and i32 %378, 255
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds i64, i64* %377, i64 %380
  %382 = load i64, i64* %381, align 8
  %383 = trunc i64 %382 to i32
  %384 = xor i32 %376, %383
  %385 = load i64*, i64** @Te4, align 8
  %386 = load i32, i32* %10, align 4
  %387 = ashr i32 %386, 8
  %388 = and i32 %387, 255
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds i64, i64* %385, i64 %389
  %391 = load i64, i64* %390, align 8
  %392 = trunc i64 %391 to i32
  %393 = shl i32 %392, 8
  %394 = xor i32 %384, %393
  %395 = load i64*, i64** @Te4, align 8
  %396 = load i32, i32* %10, align 4
  %397 = ashr i32 %396, 16
  %398 = and i32 %397, 255
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds i64, i64* %395, i64 %399
  %401 = load i64, i64* %400, align 8
  %402 = trunc i64 %401 to i32
  %403 = shl i32 %402, 16
  %404 = xor i32 %394, %403
  %405 = load i64*, i64** @Te4, align 8
  %406 = load i32, i32* %10, align 4
  %407 = ashr i32 %406, 24
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds i64, i64* %405, i64 %408
  %410 = load i64, i64* %409, align 8
  %411 = trunc i64 %410 to i32
  %412 = shl i32 %411, 24
  %413 = xor i32 %404, %412
  %414 = load i32*, i32** %8, align 8
  %415 = getelementptr inbounds i32, i32* %414, i64 12
  store i32 %413, i32* %415, align 4
  %416 = load i32*, i32** %8, align 8
  %417 = getelementptr inbounds i32, i32* %416, i64 5
  %418 = load i32, i32* %417, align 4
  %419 = load i32*, i32** %8, align 8
  %420 = getelementptr inbounds i32, i32* %419, i64 12
  %421 = load i32, i32* %420, align 4
  %422 = xor i32 %418, %421
  %423 = load i32*, i32** %8, align 8
  %424 = getelementptr inbounds i32, i32* %423, i64 13
  store i32 %422, i32* %424, align 4
  %425 = load i32*, i32** %8, align 8
  %426 = getelementptr inbounds i32, i32* %425, i64 6
  %427 = load i32, i32* %426, align 4
  %428 = load i32*, i32** %8, align 8
  %429 = getelementptr inbounds i32, i32* %428, i64 13
  %430 = load i32, i32* %429, align 4
  %431 = xor i32 %427, %430
  %432 = load i32*, i32** %8, align 8
  %433 = getelementptr inbounds i32, i32* %432, i64 14
  store i32 %431, i32* %433, align 4
  %434 = load i32*, i32** %8, align 8
  %435 = getelementptr inbounds i32, i32* %434, i64 7
  %436 = load i32, i32* %435, align 4
  %437 = load i32*, i32** %8, align 8
  %438 = getelementptr inbounds i32, i32* %437, i64 14
  %439 = load i32, i32* %438, align 4
  %440 = xor i32 %436, %439
  %441 = load i32*, i32** %8, align 8
  %442 = getelementptr inbounds i32, i32* %441, i64 15
  store i32 %440, i32* %442, align 4
  %443 = load i32*, i32** %8, align 8
  %444 = getelementptr inbounds i32, i32* %443, i64 8
  store i32* %444, i32** %8, align 8
  br label %287

445:                                              ; preds = %273
  store i32 0, i32* %4, align 4
  br label %446

446:                                              ; preds = %445, %369, %251, %151, %26, %16
  %447 = load i32, i32* %4, align 4
  ret i32 %447
}

declare dso_local i32 @GETU32(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
