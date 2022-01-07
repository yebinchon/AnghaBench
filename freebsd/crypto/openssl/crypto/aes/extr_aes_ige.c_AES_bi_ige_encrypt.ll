; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/aes/extr_aes_ige.c_AES_bi_ige_encrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/aes/extr_aes_ige.c_AES_bi_ige_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@AES_ENCRYPT = common dso_local global i32 0, align 4
@AES_DECRYPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AES_bi_ige_encrypt(i8* %0, i8* %1, i64 %2, i32* %3, i32* %4, i8* %5, i32 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i8* %5, i8** %13, align 8
  store i32 %6, i32* %14, align 4
  %24 = load i64, i64* %10, align 8
  store i64 %24, i64* %16, align 8
  %25 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %17, align 8
  %28 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %18, align 8
  %29 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %30 = zext i32 %29 to i64
  %31 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %19, align 8
  %32 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %33 = zext i32 %32 to i64
  %34 = alloca i8, i64 %33, align 16
  store i64 %33, i64* %20, align 8
  %35 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %36 = zext i32 %35 to i64
  %37 = alloca i8, i64 %36, align 16
  store i64 %36, i64* %21, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %49

40:                                               ; preds = %7
  %41 = load i8*, i8** %9, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load i32*, i32** %11, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i8*, i8** %13, align 8
  %48 = icmp ne i8* %47, null
  br label %49

49:                                               ; preds = %46, %43, %40, %7
  %50 = phi i1 [ false, %43 ], [ false, %40 ], [ false, %7 ], [ %48, %46 ]
  %51 = zext i1 %50 to i32
  %52 = call i32 @OPENSSL_assert(i32 %51)
  %53 = load i32, i32* @AES_ENCRYPT, align 4
  %54 = load i32, i32* %14, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %60, label %56

56:                                               ; preds = %49
  %57 = load i32, i32* @AES_DECRYPT, align 4
  %58 = load i32, i32* %14, align 4
  %59 = icmp eq i32 %57, %58
  br label %60

60:                                               ; preds = %56, %49
  %61 = phi i1 [ true, %49 ], [ %59, %56 ]
  %62 = zext i1 %61 to i32
  %63 = call i32 @OPENSSL_assert(i32 %62)
  %64 = load i64, i64* %10, align 8
  %65 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %66 = sext i32 %65 to i64
  %67 = urem i64 %64, %66
  %68 = icmp eq i64 %67, 0
  %69 = zext i1 %68 to i32
  %70 = call i32 @OPENSSL_assert(i32 %69)
  %71 = load i32, i32* @AES_ENCRYPT, align 4
  %72 = load i32, i32* %14, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %235

74:                                               ; preds = %60
  %75 = load i8*, i8** %13, align 8
  store i8* %75, i8** %22, align 8
  %76 = load i8*, i8** %13, align 8
  %77 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %76, i64 %78
  store i8* %79, i8** %23, align 8
  br label %80

80:                                               ; preds = %136, %74
  %81 = load i64, i64* %16, align 8
  %82 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %83 = sext i32 %82 to i64
  %84 = icmp uge i64 %81, %83
  br i1 %84, label %85, label %153

85:                                               ; preds = %80
  store i64 0, i64* %15, align 8
  br label %86

86:                                               ; preds = %107, %85
  %87 = load i64, i64* %15, align 8
  %88 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %89 = sext i32 %88 to i64
  %90 = icmp ult i64 %87, %89
  br i1 %90, label %91, label %110

91:                                               ; preds = %86
  %92 = load i8*, i8** %8, align 8
  %93 = load i64, i64* %15, align 8
  %94 = getelementptr inbounds i8, i8* %92, i64 %93
  %95 = load i8, i8* %94, align 1
  %96 = zext i8 %95 to i32
  %97 = load i8*, i8** %22, align 8
  %98 = load i64, i64* %15, align 8
  %99 = getelementptr inbounds i8, i8* %97, i64 %98
  %100 = load i8, i8* %99, align 1
  %101 = zext i8 %100 to i32
  %102 = xor i32 %96, %101
  %103 = trunc i32 %102 to i8
  %104 = load i8*, i8** %9, align 8
  %105 = load i64, i64* %15, align 8
  %106 = getelementptr inbounds i8, i8* %104, i64 %105
  store i8 %103, i8* %106, align 1
  br label %107

107:                                              ; preds = %91
  %108 = load i64, i64* %15, align 8
  %109 = add i64 %108, 1
  store i64 %109, i64* %15, align 8
  br label %86

110:                                              ; preds = %86
  %111 = load i8*, i8** %9, align 8
  %112 = load i8*, i8** %9, align 8
  %113 = load i32*, i32** %11, align 8
  %114 = call i32 @AES_encrypt(i8* %111, i8* %112, i32* %113)
  store i64 0, i64* %15, align 8
  br label %115

115:                                              ; preds = %133, %110
  %116 = load i64, i64* %15, align 8
  %117 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %118 = sext i32 %117 to i64
  %119 = icmp ult i64 %116, %118
  br i1 %119, label %120, label %136

120:                                              ; preds = %115
  %121 = load i8*, i8** %23, align 8
  %122 = load i64, i64* %15, align 8
  %123 = getelementptr inbounds i8, i8* %121, i64 %122
  %124 = load i8, i8* %123, align 1
  %125 = zext i8 %124 to i32
  %126 = load i8*, i8** %9, align 8
  %127 = load i64, i64* %15, align 8
  %128 = getelementptr inbounds i8, i8* %126, i64 %127
  %129 = load i8, i8* %128, align 1
  %130 = zext i8 %129 to i32
  %131 = xor i32 %130, %125
  %132 = trunc i32 %131 to i8
  store i8 %132, i8* %128, align 1
  br label %133

133:                                              ; preds = %120
  %134 = load i64, i64* %15, align 8
  %135 = add i64 %134, 1
  store i64 %135, i64* %15, align 8
  br label %115

136:                                              ; preds = %115
  %137 = load i8*, i8** %9, align 8
  store i8* %137, i8** %22, align 8
  %138 = load i8*, i8** %8, align 8
  %139 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %140 = call i32 @memcpy(i8* %37, i8* %138, i32 %139)
  store i8* %37, i8** %23, align 8
  %141 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %142 = sext i32 %141 to i64
  %143 = load i64, i64* %16, align 8
  %144 = sub i64 %143, %142
  store i64 %144, i64* %16, align 8
  %145 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %146 = load i8*, i8** %8, align 8
  %147 = sext i32 %145 to i64
  %148 = getelementptr inbounds i8, i8* %146, i64 %147
  store i8* %148, i8** %8, align 8
  %149 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %150 = load i8*, i8** %9, align 8
  %151 = sext i32 %149 to i64
  %152 = getelementptr inbounds i8, i8* %150, i64 %151
  store i8* %152, i8** %9, align 8
  br label %80

153:                                              ; preds = %80
  %154 = load i8*, i8** %13, align 8
  %155 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %156 = mul nsw i32 %155, 2
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8, i8* %154, i64 %157
  store i8* %158, i8** %22, align 8
  %159 = load i8*, i8** %13, align 8
  %160 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %161 = mul nsw i32 %160, 3
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8, i8* %159, i64 %162
  store i8* %163, i8** %23, align 8
  %164 = load i64, i64* %10, align 8
  store i64 %164, i64* %16, align 8
  br label %165

165:                                              ; preds = %226, %153
  %166 = load i64, i64* %16, align 8
  %167 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %168 = sext i32 %167 to i64
  %169 = icmp uge i64 %166, %168
  br i1 %169, label %170, label %234

170:                                              ; preds = %165
  %171 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %172 = load i8*, i8** %9, align 8
  %173 = sext i32 %171 to i64
  %174 = sub i64 0, %173
  %175 = getelementptr inbounds i8, i8* %172, i64 %174
  store i8* %175, i8** %9, align 8
  %176 = load i8*, i8** %9, align 8
  %177 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %178 = call i32 @memcpy(i8* %28, i8* %176, i32 %177)
  store i64 0, i64* %15, align 8
  br label %179

179:                                              ; preds = %197, %170
  %180 = load i64, i64* %15, align 8
  %181 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %182 = sext i32 %181 to i64
  %183 = icmp ult i64 %180, %182
  br i1 %183, label %184, label %200

184:                                              ; preds = %179
  %185 = load i8*, i8** %22, align 8
  %186 = load i64, i64* %15, align 8
  %187 = getelementptr inbounds i8, i8* %185, i64 %186
  %188 = load i8, i8* %187, align 1
  %189 = zext i8 %188 to i32
  %190 = load i8*, i8** %9, align 8
  %191 = load i64, i64* %15, align 8
  %192 = getelementptr inbounds i8, i8* %190, i64 %191
  %193 = load i8, i8* %192, align 1
  %194 = zext i8 %193 to i32
  %195 = xor i32 %194, %189
  %196 = trunc i32 %195 to i8
  store i8 %196, i8* %192, align 1
  br label %197

197:                                              ; preds = %184
  %198 = load i64, i64* %15, align 8
  %199 = add i64 %198, 1
  store i64 %199, i64* %15, align 8
  br label %179

200:                                              ; preds = %179
  %201 = load i8*, i8** %9, align 8
  %202 = load i8*, i8** %9, align 8
  %203 = load i32*, i32** %11, align 8
  %204 = call i32 @AES_encrypt(i8* %201, i8* %202, i32* %203)
  store i64 0, i64* %15, align 8
  br label %205

205:                                              ; preds = %223, %200
  %206 = load i64, i64* %15, align 8
  %207 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %208 = sext i32 %207 to i64
  %209 = icmp ult i64 %206, %208
  br i1 %209, label %210, label %226

210:                                              ; preds = %205
  %211 = load i8*, i8** %23, align 8
  %212 = load i64, i64* %15, align 8
  %213 = getelementptr inbounds i8, i8* %211, i64 %212
  %214 = load i8, i8* %213, align 1
  %215 = zext i8 %214 to i32
  %216 = load i8*, i8** %9, align 8
  %217 = load i64, i64* %15, align 8
  %218 = getelementptr inbounds i8, i8* %216, i64 %217
  %219 = load i8, i8* %218, align 1
  %220 = zext i8 %219 to i32
  %221 = xor i32 %220, %215
  %222 = trunc i32 %221 to i8
  store i8 %222, i8* %218, align 1
  br label %223

223:                                              ; preds = %210
  %224 = load i64, i64* %15, align 8
  %225 = add i64 %224, 1
  store i64 %225, i64* %15, align 8
  br label %205

226:                                              ; preds = %205
  %227 = load i8*, i8** %9, align 8
  store i8* %227, i8** %22, align 8
  %228 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %229 = call i32 @memcpy(i8* %37, i8* %28, i32 %228)
  store i8* %37, i8** %23, align 8
  %230 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %231 = sext i32 %230 to i64
  %232 = load i64, i64* %16, align 8
  %233 = sub i64 %232, %231
  store i64 %233, i64* %16, align 8
  br label %165

234:                                              ; preds = %165
  br label %408

235:                                              ; preds = %60
  %236 = load i8*, i8** %13, align 8
  %237 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %238 = mul nsw i32 %237, 2
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i8, i8* %236, i64 %239
  store i8* %240, i8** %22, align 8
  %241 = load i8*, i8** %13, align 8
  %242 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %243 = mul nsw i32 %242, 3
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i8, i8* %241, i64 %244
  store i8* %245, i8** %23, align 8
  %246 = load i64, i64* %10, align 8
  %247 = load i8*, i8** %8, align 8
  %248 = getelementptr inbounds i8, i8* %247, i64 %246
  store i8* %248, i8** %8, align 8
  %249 = load i64, i64* %10, align 8
  %250 = load i8*, i8** %9, align 8
  %251 = getelementptr inbounds i8, i8* %250, i64 %249
  store i8* %251, i8** %9, align 8
  br label %252

252:                                              ; preds = %319, %235
  %253 = load i64, i64* %16, align 8
  %254 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %255 = sext i32 %254 to i64
  %256 = icmp uge i64 %253, %255
  br i1 %256, label %257, label %327

257:                                              ; preds = %252
  %258 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %259 = load i8*, i8** %8, align 8
  %260 = sext i32 %258 to i64
  %261 = sub i64 0, %260
  %262 = getelementptr inbounds i8, i8* %259, i64 %261
  store i8* %262, i8** %8, align 8
  %263 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %264 = load i8*, i8** %9, align 8
  %265 = sext i32 %263 to i64
  %266 = sub i64 0, %265
  %267 = getelementptr inbounds i8, i8* %264, i64 %266
  store i8* %267, i8** %9, align 8
  %268 = load i8*, i8** %8, align 8
  %269 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %270 = call i32 @memcpy(i8* %28, i8* %268, i32 %269)
  %271 = load i8*, i8** %8, align 8
  %272 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %273 = call i32 @memcpy(i8* %31, i8* %271, i32 %272)
  store i64 0, i64* %15, align 8
  br label %274

274:                                              ; preds = %291, %257
  %275 = load i64, i64* %15, align 8
  %276 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %277 = sext i32 %276 to i64
  %278 = icmp ult i64 %275, %277
  br i1 %278, label %279, label %294

279:                                              ; preds = %274
  %280 = load i8*, i8** %23, align 8
  %281 = load i64, i64* %15, align 8
  %282 = getelementptr inbounds i8, i8* %280, i64 %281
  %283 = load i8, i8* %282, align 1
  %284 = zext i8 %283 to i32
  %285 = load i64, i64* %15, align 8
  %286 = getelementptr inbounds i8, i8* %28, i64 %285
  %287 = load i8, i8* %286, align 1
  %288 = zext i8 %287 to i32
  %289 = xor i32 %288, %284
  %290 = trunc i32 %289 to i8
  store i8 %290, i8* %286, align 1
  br label %291

291:                                              ; preds = %279
  %292 = load i64, i64* %15, align 8
  %293 = add i64 %292, 1
  store i64 %293, i64* %15, align 8
  br label %274

294:                                              ; preds = %274
  %295 = load i8*, i8** %9, align 8
  %296 = load i32*, i32** %11, align 8
  %297 = call i32 @AES_decrypt(i8* %28, i8* %295, i32* %296)
  store i64 0, i64* %15, align 8
  br label %298

298:                                              ; preds = %316, %294
  %299 = load i64, i64* %15, align 8
  %300 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %301 = sext i32 %300 to i64
  %302 = icmp ult i64 %299, %301
  br i1 %302, label %303, label %319

303:                                              ; preds = %298
  %304 = load i8*, i8** %22, align 8
  %305 = load i64, i64* %15, align 8
  %306 = getelementptr inbounds i8, i8* %304, i64 %305
  %307 = load i8, i8* %306, align 1
  %308 = zext i8 %307 to i32
  %309 = load i8*, i8** %9, align 8
  %310 = load i64, i64* %15, align 8
  %311 = getelementptr inbounds i8, i8* %309, i64 %310
  %312 = load i8, i8* %311, align 1
  %313 = zext i8 %312 to i32
  %314 = xor i32 %313, %308
  %315 = trunc i32 %314 to i8
  store i8 %315, i8* %311, align 1
  br label %316

316:                                              ; preds = %303
  %317 = load i64, i64* %15, align 8
  %318 = add i64 %317, 1
  store i64 %318, i64* %15, align 8
  br label %298

319:                                              ; preds = %298
  %320 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %321 = call i32 @memcpy(i8* %34, i8* %31, i32 %320)
  store i8* %34, i8** %22, align 8
  %322 = load i8*, i8** %9, align 8
  store i8* %322, i8** %23, align 8
  %323 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %324 = sext i32 %323 to i64
  %325 = load i64, i64* %16, align 8
  %326 = sub i64 %325, %324
  store i64 %326, i64* %16, align 8
  br label %252

327:                                              ; preds = %252
  %328 = load i8*, i8** %13, align 8
  store i8* %328, i8** %22, align 8
  %329 = load i8*, i8** %13, align 8
  %330 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i8, i8* %329, i64 %331
  store i8* %332, i8** %23, align 8
  %333 = load i64, i64* %10, align 8
  store i64 %333, i64* %16, align 8
  br label %334

334:                                              ; preds = %391, %327
  %335 = load i64, i64* %16, align 8
  %336 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %337 = sext i32 %336 to i64
  %338 = icmp uge i64 %335, %337
  br i1 %338, label %339, label %407

339:                                              ; preds = %334
  %340 = load i8*, i8** %9, align 8
  %341 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %342 = call i32 @memcpy(i8* %28, i8* %340, i32 %341)
  %343 = load i8*, i8** %9, align 8
  %344 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %345 = call i32 @memcpy(i8* %31, i8* %343, i32 %344)
  store i64 0, i64* %15, align 8
  br label %346

346:                                              ; preds = %363, %339
  %347 = load i64, i64* %15, align 8
  %348 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %349 = sext i32 %348 to i64
  %350 = icmp ult i64 %347, %349
  br i1 %350, label %351, label %366

351:                                              ; preds = %346
  %352 = load i8*, i8** %23, align 8
  %353 = load i64, i64* %15, align 8
  %354 = getelementptr inbounds i8, i8* %352, i64 %353
  %355 = load i8, i8* %354, align 1
  %356 = zext i8 %355 to i32
  %357 = load i64, i64* %15, align 8
  %358 = getelementptr inbounds i8, i8* %28, i64 %357
  %359 = load i8, i8* %358, align 1
  %360 = zext i8 %359 to i32
  %361 = xor i32 %360, %356
  %362 = trunc i32 %361 to i8
  store i8 %362, i8* %358, align 1
  br label %363

363:                                              ; preds = %351
  %364 = load i64, i64* %15, align 8
  %365 = add i64 %364, 1
  store i64 %365, i64* %15, align 8
  br label %346

366:                                              ; preds = %346
  %367 = load i8*, i8** %9, align 8
  %368 = load i32*, i32** %11, align 8
  %369 = call i32 @AES_decrypt(i8* %28, i8* %367, i32* %368)
  store i64 0, i64* %15, align 8
  br label %370

370:                                              ; preds = %388, %366
  %371 = load i64, i64* %15, align 8
  %372 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %373 = sext i32 %372 to i64
  %374 = icmp ult i64 %371, %373
  br i1 %374, label %375, label %391

375:                                              ; preds = %370
  %376 = load i8*, i8** %22, align 8
  %377 = load i64, i64* %15, align 8
  %378 = getelementptr inbounds i8, i8* %376, i64 %377
  %379 = load i8, i8* %378, align 1
  %380 = zext i8 %379 to i32
  %381 = load i8*, i8** %9, align 8
  %382 = load i64, i64* %15, align 8
  %383 = getelementptr inbounds i8, i8* %381, i64 %382
  %384 = load i8, i8* %383, align 1
  %385 = zext i8 %384 to i32
  %386 = xor i32 %385, %380
  %387 = trunc i32 %386 to i8
  store i8 %387, i8* %383, align 1
  br label %388

388:                                              ; preds = %375
  %389 = load i64, i64* %15, align 8
  %390 = add i64 %389, 1
  store i64 %390, i64* %15, align 8
  br label %370

391:                                              ; preds = %370
  %392 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %393 = call i32 @memcpy(i8* %34, i8* %31, i32 %392)
  store i8* %34, i8** %22, align 8
  %394 = load i8*, i8** %9, align 8
  store i8* %394, i8** %23, align 8
  %395 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %396 = sext i32 %395 to i64
  %397 = load i64, i64* %16, align 8
  %398 = sub i64 %397, %396
  store i64 %398, i64* %16, align 8
  %399 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %400 = load i8*, i8** %8, align 8
  %401 = sext i32 %399 to i64
  %402 = getelementptr inbounds i8, i8* %400, i64 %401
  store i8* %402, i8** %8, align 8
  %403 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %404 = load i8*, i8** %9, align 8
  %405 = sext i32 %403 to i64
  %406 = getelementptr inbounds i8, i8* %404, i64 %405
  store i8* %406, i8** %9, align 8
  br label %334

407:                                              ; preds = %334
  br label %408

408:                                              ; preds = %407, %234
  %409 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %409)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @OPENSSL_assert(i32) #2

declare dso_local i32 @AES_encrypt(i8*, i8*, i32*) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @AES_decrypt(i8*, i8*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
