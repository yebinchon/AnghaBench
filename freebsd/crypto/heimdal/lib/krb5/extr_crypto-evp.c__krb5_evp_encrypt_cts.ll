; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_crypto-evp.c__krb5_evp_encrypt_cts.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_crypto-evp.c__krb5_evp_encrypt_cts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._krb5_key_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct._krb5_evp_schedule* }
%struct._krb5_evp_schedule = type { i32*, i32* }

@EVP_MAX_BLOCK_LENGTH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"message block too short\00", align 1
@zero_ivec = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_krb5_evp_encrypt_cts(i32 %0, %struct._krb5_key_data* %1, i8* %2, i64 %3, i64 %4, i32 %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct._krb5_key_data*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct._krb5_evp_schedule*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  store i32 %0, i32* %9, align 4
  store %struct._krb5_key_data* %1, %struct._krb5_key_data** %10, align 8
  store i8* %2, i8** %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  %28 = load %struct._krb5_key_data*, %struct._krb5_key_data** %10, align 8
  %29 = getelementptr inbounds %struct._krb5_key_data, %struct._krb5_key_data* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load %struct._krb5_evp_schedule*, %struct._krb5_evp_schedule** %31, align 8
  store %struct._krb5_evp_schedule* %32, %struct._krb5_evp_schedule** %18, align 8
  %33 = load i32, i32* @EVP_MAX_BLOCK_LENGTH, align 4
  %34 = zext i32 %33 to i64
  %35 = call i8* @llvm.stacksave()
  store i8* %35, i8** %19, align 8
  %36 = alloca i8, i64 %34, align 16
  store i64 %34, i64* %20, align 8
  %37 = load i32, i32* @EVP_MAX_BLOCK_LENGTH, align 4
  %38 = zext i32 %37 to i64
  %39 = alloca i8, i64 %38, align 16
  store i64 %38, i64* %21, align 8
  %40 = load i64, i64* %13, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %7
  %43 = load %struct._krb5_evp_schedule*, %struct._krb5_evp_schedule** %18, align 8
  %44 = getelementptr inbounds %struct._krb5_evp_schedule, %struct._krb5_evp_schedule* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  br label %50

46:                                               ; preds = %7
  %47 = load %struct._krb5_evp_schedule*, %struct._krb5_evp_schedule** %18, align 8
  %48 = getelementptr inbounds %struct._krb5_evp_schedule, %struct._krb5_evp_schedule* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  br label %50

50:                                               ; preds = %46, %42
  %51 = phi i32* [ %45, %42 ], [ %49, %46 ]
  store i32* %51, i32** %22, align 8
  %52 = load i32*, i32** %22, align 8
  %53 = call i64 @EVP_CIPHER_CTX_block_size(i32* %52)
  store i64 %53, i64* %17, align 8
  %54 = load i64, i64* %12, align 8
  %55 = load i64, i64* %17, align 8
  %56 = icmp ult i64 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %50
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @EINVAL, align 4
  %60 = call i32 @krb5_set_error_message(i32 %58, i32 %59, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %61 = load i32, i32* @EINVAL, align 4
  store i32 %61, i32* %8, align 4
  store i32 1, i32* %24, align 4
  br label %320

62:                                               ; preds = %50
  %63 = load i64, i64* %12, align 8
  %64 = load i64, i64* %17, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %62
  %67 = load i32*, i32** %22, align 8
  %68 = load i8*, i8** @zero_ivec, align 8
  %69 = call i32 @EVP_CipherInit_ex(i32* %67, i32* null, i32* null, i32* null, i8* %68, i32 -1)
  %70 = load i32*, i32** %22, align 8
  %71 = load i8*, i8** %11, align 8
  %72 = load i8*, i8** %11, align 8
  %73 = load i64, i64* %12, align 8
  %74 = call i32 @EVP_Cipher(i32* %70, i8* %71, i8* %72, i64 %73)
  store i32 0, i32* %8, align 4
  store i32 1, i32* %24, align 4
  br label %320

75:                                               ; preds = %62
  br label %76

76:                                               ; preds = %75
  %77 = load i8*, i8** %15, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load i32*, i32** %22, align 8
  %81 = load i8*, i8** %15, align 8
  %82 = call i32 @EVP_CipherInit_ex(i32* %80, i32* null, i32* null, i32* null, i8* %81, i32 -1)
  br label %87

83:                                               ; preds = %76
  %84 = load i32*, i32** %22, align 8
  %85 = load i8*, i8** @zero_ivec, align 8
  %86 = call i32 @EVP_CipherInit_ex(i32* %84, i32* null, i32* null, i32* null, i8* %85, i32 -1)
  br label %87

87:                                               ; preds = %83, %79
  %88 = load i64, i64* %13, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %175

90:                                               ; preds = %87
  %91 = load i8*, i8** %11, align 8
  store i8* %91, i8** %23, align 8
  %92 = load i64, i64* %12, align 8
  %93 = sub i64 %92, 1
  %94 = load i64, i64* %17, align 8
  %95 = udiv i64 %93, %94
  %96 = load i64, i64* %17, align 8
  %97 = mul i64 %95, %96
  store i64 %97, i64* %16, align 8
  %98 = load i32*, i32** %22, align 8
  %99 = load i8*, i8** %23, align 8
  %100 = load i8*, i8** %23, align 8
  %101 = load i64, i64* %16, align 8
  %102 = call i32 @EVP_Cipher(i32* %98, i8* %99, i8* %100, i64 %101)
  %103 = load i64, i64* %16, align 8
  %104 = load i64, i64* %17, align 8
  %105 = sub i64 %103, %104
  %106 = load i8*, i8** %23, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 %105
  store i8* %107, i8** %23, align 8
  %108 = load i64, i64* %16, align 8
  %109 = load i64, i64* %12, align 8
  %110 = sub i64 %109, %108
  store i64 %110, i64* %12, align 8
  %111 = load i8*, i8** %23, align 8
  %112 = load i64, i64* %17, align 8
  %113 = call i32 @memcpy(i8* %39, i8* %111, i64 %112)
  store i64 0, i64* %16, align 8
  br label %114

114:                                              ; preds = %134, %90
  %115 = load i64, i64* %16, align 8
  %116 = load i64, i64* %12, align 8
  %117 = icmp ult i64 %115, %116
  br i1 %117, label %118, label %137

118:                                              ; preds = %114
  %119 = load i8*, i8** %23, align 8
  %120 = load i64, i64* %16, align 8
  %121 = load i64, i64* %17, align 8
  %122 = add i64 %120, %121
  %123 = getelementptr inbounds i8, i8* %119, i64 %122
  %124 = load i8, i8* %123, align 1
  %125 = zext i8 %124 to i32
  %126 = load i64, i64* %16, align 8
  %127 = getelementptr inbounds i8, i8* %39, i64 %126
  %128 = load i8, i8* %127, align 1
  %129 = zext i8 %128 to i32
  %130 = xor i32 %125, %129
  %131 = trunc i32 %130 to i8
  %132 = load i64, i64* %16, align 8
  %133 = getelementptr inbounds i8, i8* %36, i64 %132
  store i8 %131, i8* %133, align 1
  br label %134

134:                                              ; preds = %118
  %135 = load i64, i64* %16, align 8
  %136 = add i64 %135, 1
  store i64 %136, i64* %16, align 8
  br label %114

137:                                              ; preds = %114
  br label %138

138:                                              ; preds = %151, %137
  %139 = load i64, i64* %16, align 8
  %140 = load i64, i64* %17, align 8
  %141 = icmp ult i64 %139, %140
  br i1 %141, label %142, label %154

142:                                              ; preds = %138
  %143 = load i64, i64* %16, align 8
  %144 = getelementptr inbounds i8, i8* %39, i64 %143
  %145 = load i8, i8* %144, align 1
  %146 = zext i8 %145 to i32
  %147 = xor i32 0, %146
  %148 = trunc i32 %147 to i8
  %149 = load i64, i64* %16, align 8
  %150 = getelementptr inbounds i8, i8* %36, i64 %149
  store i8 %148, i8* %150, align 1
  br label %151

151:                                              ; preds = %142
  %152 = load i64, i64* %16, align 8
  %153 = add i64 %152, 1
  store i64 %153, i64* %16, align 8
  br label %138

154:                                              ; preds = %138
  %155 = load i32*, i32** %22, align 8
  %156 = load i8*, i8** @zero_ivec, align 8
  %157 = call i32 @EVP_CipherInit_ex(i32* %155, i32* null, i32* null, i32* null, i8* %156, i32 -1)
  %158 = load i32*, i32** %22, align 8
  %159 = load i8*, i8** %23, align 8
  %160 = load i64, i64* %17, align 8
  %161 = call i32 @EVP_Cipher(i32* %158, i8* %159, i8* %36, i64 %160)
  %162 = load i8*, i8** %23, align 8
  %163 = load i64, i64* %17, align 8
  %164 = getelementptr inbounds i8, i8* %162, i64 %163
  %165 = load i64, i64* %12, align 8
  %166 = call i32 @memcpy(i8* %164, i8* %39, i64 %165)
  %167 = load i8*, i8** %15, align 8
  %168 = icmp ne i8* %167, null
  br i1 %168, label %169, label %174

169:                                              ; preds = %154
  %170 = load i8*, i8** %15, align 8
  %171 = load i8*, i8** %23, align 8
  %172 = load i64, i64* %17, align 8
  %173 = call i32 @memcpy(i8* %170, i8* %171, i64 %172)
  br label %174

174:                                              ; preds = %169, %154
  br label %319

175:                                              ; preds = %87
  %176 = load i32, i32* @EVP_MAX_BLOCK_LENGTH, align 4
  %177 = zext i32 %176 to i64
  %178 = call i8* @llvm.stacksave()
  store i8* %178, i8** %25, align 8
  %179 = alloca i8, i64 %177, align 16
  store i64 %177, i64* %26, align 8
  %180 = load i32, i32* @EVP_MAX_BLOCK_LENGTH, align 4
  %181 = zext i32 %180 to i64
  %182 = alloca i8, i64 %181, align 16
  store i64 %181, i64* %27, align 8
  %183 = load i8*, i8** %11, align 8
  store i8* %183, i8** %23, align 8
  %184 = load i64, i64* %12, align 8
  %185 = load i64, i64* %17, align 8
  %186 = mul i64 %185, 2
  %187 = icmp ugt i64 %184, %186
  br i1 %187, label %188, label %221

188:                                              ; preds = %175
  %189 = load i64, i64* %12, align 8
  %190 = load i64, i64* %17, align 8
  %191 = mul i64 %190, 2
  %192 = sub i64 %189, %191
  %193 = load i64, i64* %17, align 8
  %194 = add i64 %192, %193
  %195 = sub i64 %194, 1
  %196 = load i64, i64* %17, align 8
  %197 = udiv i64 %195, %196
  %198 = load i64, i64* %17, align 8
  %199 = mul i64 %197, %198
  store i64 %199, i64* %16, align 8
  %200 = load i8*, i8** %23, align 8
  %201 = load i64, i64* %16, align 8
  %202 = getelementptr inbounds i8, i8* %200, i64 %201
  %203 = load i64, i64* %17, align 8
  %204 = sub i64 0, %203
  %205 = getelementptr inbounds i8, i8* %202, i64 %204
  %206 = load i64, i64* %17, align 8
  %207 = call i32 @memcpy(i8* %39, i8* %205, i64 %206)
  %208 = load i32*, i32** %22, align 8
  %209 = load i8*, i8** %23, align 8
  %210 = load i8*, i8** %23, align 8
  %211 = load i64, i64* %16, align 8
  %212 = call i32 @EVP_Cipher(i32* %208, i8* %209, i8* %210, i64 %211)
  %213 = load i64, i64* %16, align 8
  %214 = load i8*, i8** %23, align 8
  %215 = getelementptr inbounds i8, i8* %214, i64 %213
  store i8* %215, i8** %23, align 8
  %216 = load i64, i64* %16, align 8
  %217 = load i64, i64* %17, align 8
  %218 = add i64 %216, %217
  %219 = load i64, i64* %12, align 8
  %220 = sub i64 %219, %218
  store i64 %220, i64* %12, align 8
  br label %236

221:                                              ; preds = %175
  %222 = load i8*, i8** %15, align 8
  %223 = icmp ne i8* %222, null
  br i1 %223, label %224, label %228

224:                                              ; preds = %221
  %225 = load i8*, i8** %15, align 8
  %226 = load i64, i64* %17, align 8
  %227 = call i32 @memcpy(i8* %39, i8* %225, i64 %226)
  br label %232

228:                                              ; preds = %221
  %229 = load i8*, i8** @zero_ivec, align 8
  %230 = load i64, i64* %17, align 8
  %231 = call i32 @memcpy(i8* %39, i8* %229, i64 %230)
  br label %232

232:                                              ; preds = %228, %224
  %233 = load i64, i64* %17, align 8
  %234 = load i64, i64* %12, align 8
  %235 = sub i64 %234, %233
  store i64 %235, i64* %12, align 8
  br label %236

236:                                              ; preds = %232, %188
  %237 = load i8*, i8** %23, align 8
  %238 = load i64, i64* %17, align 8
  %239 = call i32 @memcpy(i8* %36, i8* %237, i64 %238)
  %240 = load i32*, i32** %22, align 8
  %241 = load i8*, i8** @zero_ivec, align 8
  %242 = call i32 @EVP_CipherInit_ex(i32* %240, i32* null, i32* null, i32* null, i8* %241, i32 -1)
  %243 = load i32*, i32** %22, align 8
  %244 = load i8*, i8** %23, align 8
  %245 = load i64, i64* %17, align 8
  %246 = call i32 @EVP_Cipher(i32* %243, i8* %179, i8* %244, i64 %245)
  %247 = load i8*, i8** %23, align 8
  %248 = load i64, i64* %17, align 8
  %249 = getelementptr inbounds i8, i8* %247, i64 %248
  %250 = load i64, i64* %12, align 8
  %251 = call i32 @memcpy(i8* %182, i8* %249, i64 %250)
  %252 = load i64, i64* %12, align 8
  %253 = getelementptr inbounds i8, i8* %182, i64 %252
  %254 = load i64, i64* %12, align 8
  %255 = getelementptr inbounds i8, i8* %179, i64 %254
  %256 = load i64, i64* %17, align 8
  %257 = load i64, i64* %12, align 8
  %258 = sub i64 %256, %257
  %259 = call i32 @memcpy(i8* %253, i8* %255, i64 %258)
  store i64 0, i64* %16, align 8
  br label %260

260:                                              ; preds = %280, %236
  %261 = load i64, i64* %16, align 8
  %262 = load i64, i64* %12, align 8
  %263 = icmp ult i64 %261, %262
  br i1 %263, label %264, label %283

264:                                              ; preds = %260
  %265 = load i64, i64* %16, align 8
  %266 = getelementptr inbounds i8, i8* %179, i64 %265
  %267 = load i8, i8* %266, align 1
  %268 = zext i8 %267 to i32
  %269 = load i64, i64* %16, align 8
  %270 = getelementptr inbounds i8, i8* %182, i64 %269
  %271 = load i8, i8* %270, align 1
  %272 = zext i8 %271 to i32
  %273 = xor i32 %268, %272
  %274 = trunc i32 %273 to i8
  %275 = load i8*, i8** %23, align 8
  %276 = load i64, i64* %16, align 8
  %277 = load i64, i64* %17, align 8
  %278 = add i64 %276, %277
  %279 = getelementptr inbounds i8, i8* %275, i64 %278
  store i8 %274, i8* %279, align 1
  br label %280

280:                                              ; preds = %264
  %281 = load i64, i64* %16, align 8
  %282 = add i64 %281, 1
  store i64 %282, i64* %16, align 8
  br label %260

283:                                              ; preds = %260
  %284 = load i32*, i32** %22, align 8
  %285 = load i8*, i8** @zero_ivec, align 8
  %286 = call i32 @EVP_CipherInit_ex(i32* %284, i32* null, i32* null, i32* null, i8* %285, i32 -1)
  %287 = load i32*, i32** %22, align 8
  %288 = load i8*, i8** %23, align 8
  %289 = load i64, i64* %17, align 8
  %290 = call i32 @EVP_Cipher(i32* %287, i8* %288, i8* %182, i64 %289)
  store i64 0, i64* %16, align 8
  br label %291

291:                                              ; preds = %307, %283
  %292 = load i64, i64* %16, align 8
  %293 = load i64, i64* %17, align 8
  %294 = icmp ult i64 %292, %293
  br i1 %294, label %295, label %310

295:                                              ; preds = %291
  %296 = load i64, i64* %16, align 8
  %297 = getelementptr inbounds i8, i8* %39, i64 %296
  %298 = load i8, i8* %297, align 1
  %299 = zext i8 %298 to i32
  %300 = load i8*, i8** %23, align 8
  %301 = load i64, i64* %16, align 8
  %302 = getelementptr inbounds i8, i8* %300, i64 %301
  %303 = load i8, i8* %302, align 1
  %304 = zext i8 %303 to i32
  %305 = xor i32 %304, %299
  %306 = trunc i32 %305 to i8
  store i8 %306, i8* %302, align 1
  br label %307

307:                                              ; preds = %295
  %308 = load i64, i64* %16, align 8
  %309 = add i64 %308, 1
  store i64 %309, i64* %16, align 8
  br label %291

310:                                              ; preds = %291
  %311 = load i8*, i8** %15, align 8
  %312 = icmp ne i8* %311, null
  br i1 %312, label %313, label %317

313:                                              ; preds = %310
  %314 = load i8*, i8** %15, align 8
  %315 = load i64, i64* %17, align 8
  %316 = call i32 @memcpy(i8* %314, i8* %36, i64 %315)
  br label %317

317:                                              ; preds = %313, %310
  %318 = load i8*, i8** %25, align 8
  call void @llvm.stackrestore(i8* %318)
  br label %319

319:                                              ; preds = %317, %174
  store i32 0, i32* %8, align 4
  store i32 1, i32* %24, align 4
  br label %320

320:                                              ; preds = %319, %66, %57
  %321 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %321)
  %322 = load i32, i32* %8, align 4
  ret i32 %322
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @EVP_CIPHER_CTX_block_size(i32*) #2

declare dso_local i32 @krb5_set_error_message(i32, i32, i8*) #2

declare dso_local i32 @EVP_CipherInit_ex(i32*, i32*, i32*, i32*, i8*, i32) #2

declare dso_local i32 @EVP_Cipher(i32*, i8*, i8*, i64) #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
