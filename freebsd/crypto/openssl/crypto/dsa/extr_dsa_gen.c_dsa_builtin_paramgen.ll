; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/dsa/extr_dsa_gen.c_dsa_builtin_paramgen.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/dsa/extr_dsa_gen.c_dsa_builtin_paramgen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32*, i32* }

@SHA256_DIGEST_LENGTH = common dso_local global i32 0, align 4
@SHA_DIGEST_LENGTH = common dso_local global i32 0, align 4
@SHA224_DIGEST_LENGTH = common dso_local global i32 0, align 4
@DSA_F_DSA_BUILTIN_PARAMGEN = common dso_local global i32 0, align 4
@DSA_R_SEED_LEN_SMALL = common dso_local global i32 0, align 4
@DSS_prime_checks = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dsa_builtin_paramgen(%struct.TYPE_3__* %0, i64 %1, i64 %2, i32* %3, i8* %4, i64 %5, i8* %6, i32* %7, i64* %8, i32* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_3__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i64*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i32*, align 8
  %34 = alloca i32*, align 8
  %35 = alloca i32*, align 8
  %36 = alloca i32*, align 8
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32*, align 8
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %12, align 8
  store i64 %1, i64* %13, align 8
  store i64 %2, i64* %14, align 8
  store i32* %3, i32** %15, align 8
  store i8* %4, i8** %16, align 8
  store i64 %5, i64* %17, align 8
  store i8* %6, i8** %18, align 8
  store i32* %7, i32** %19, align 8
  store i64* %8, i64** %20, align 8
  store i32* %9, i32** %21, align 8
  store i32 0, i32* %22, align 4
  %48 = load i32, i32* @SHA256_DIGEST_LENGTH, align 4
  %49 = zext i32 %48 to i64
  %50 = call i8* @llvm.stacksave()
  store i8* %50, i8** %23, align 8
  %51 = alloca i8, i64 %49, align 16
  store i64 %49, i64* %24, align 8
  %52 = load i32, i32* @SHA256_DIGEST_LENGTH, align 4
  %53 = zext i32 %52 to i64
  %54 = alloca i8, i64 %53, align 16
  store i64 %53, i64* %25, align 8
  %55 = load i32, i32* @SHA256_DIGEST_LENGTH, align 4
  %56 = zext i32 %55 to i64
  %57 = alloca i8, i64 %56, align 16
  store i64 %56, i64* %26, align 8
  %58 = load i32, i32* @SHA256_DIGEST_LENGTH, align 4
  %59 = zext i32 %58 to i64
  %60 = alloca i8, i64 %59, align 16
  store i64 %59, i64* %27, align 8
  store i32* null, i32** %33, align 8
  store i32* null, i32** %34, align 8
  store i32* null, i32** %35, align 8
  store i32* null, i32** %36, align 8
  store i32 0, i32* %39, align 4
  store i32 0, i32* %40, align 4
  %61 = load i64, i64* %14, align 8
  %62 = lshr i64 %61, 3
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %41, align 4
  store i32 0, i32* %42, align 4
  store i32 0, i32* %43, align 4
  store i32* null, i32** %44, align 8
  store i32 2, i32* %45, align 4
  %64 = load i32, i32* %41, align 4
  %65 = load i32, i32* @SHA_DIGEST_LENGTH, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %10
  %68 = load i32, i32* %41, align 4
  %69 = load i32, i32* @SHA224_DIGEST_LENGTH, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %67
  %72 = load i32, i32* %41, align 4
  %73 = load i32, i32* @SHA256_DIGEST_LENGTH, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  store i32 0, i32* %11, align 4
  store i32 1, i32* %46, align 4
  br label %588

76:                                               ; preds = %71, %67, %10
  %77 = load i32*, i32** %15, align 8
  %78 = icmp eq i32* %77, null
  br i1 %78, label %79, label %95

79:                                               ; preds = %76
  %80 = load i32, i32* %41, align 4
  %81 = load i32, i32* @SHA_DIGEST_LENGTH, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  %84 = call i32* (...) @EVP_sha1()
  store i32* %84, i32** %15, align 8
  br label %94

85:                                               ; preds = %79
  %86 = load i32, i32* %41, align 4
  %87 = load i32, i32* @SHA224_DIGEST_LENGTH, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = call i32* (...) @EVP_sha224()
  store i32* %90, i32** %15, align 8
  br label %93

91:                                               ; preds = %85
  %92 = call i32* (...) @EVP_sha256()
  store i32* %92, i32** %15, align 8
  br label %93

93:                                               ; preds = %91, %89
  br label %94

94:                                               ; preds = %93, %83
  br label %98

95:                                               ; preds = %76
  %96 = load i32*, i32** %15, align 8
  %97 = call i32 @EVP_MD_size(i32* %96)
  store i32 %97, i32* %41, align 4
  br label %98

98:                                               ; preds = %95, %94
  %99 = load i64, i64* %13, align 8
  %100 = icmp ult i64 %99, 512
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  store i64 512, i64* %13, align 8
  br label %102

102:                                              ; preds = %101, %98
  %103 = load i64, i64* %13, align 8
  %104 = add i64 %103, 63
  %105 = udiv i64 %104, 64
  %106 = mul i64 %105, 64
  store i64 %106, i64* %13, align 8
  %107 = load i8*, i8** %16, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %131

109:                                              ; preds = %102
  %110 = load i64, i64* %17, align 8
  %111 = load i32, i32* %41, align 4
  %112 = sext i32 %111 to i64
  %113 = icmp ult i64 %110, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %109
  %115 = load i32, i32* @DSA_F_DSA_BUILTIN_PARAMGEN, align 4
  %116 = load i32, i32* @DSA_R_SEED_LEN_SMALL, align 4
  %117 = call i32 @DSAerr(i32 %115, i32 %116)
  store i32 0, i32* %11, align 4
  store i32 1, i32* %46, align 4
  br label %588

118:                                              ; preds = %109
  %119 = load i64, i64* %17, align 8
  %120 = load i32, i32* %41, align 4
  %121 = sext i32 %120 to i64
  %122 = icmp ugt i64 %119, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %118
  %124 = load i32, i32* %41, align 4
  %125 = sext i32 %124 to i64
  store i64 %125, i64* %17, align 8
  br label %126

126:                                              ; preds = %123, %118
  %127 = load i8*, i8** %16, align 8
  %128 = load i64, i64* %17, align 8
  %129 = trunc i64 %128 to i32
  %130 = call i32 @memcpy(i8* %51, i8* %127, i32 %129)
  br label %131

131:                                              ; preds = %126, %102
  %132 = call i32* (...) @BN_MONT_CTX_new()
  store i32* %132, i32** %36, align 8
  %133 = icmp eq i32* %132, null
  br i1 %133, label %134, label %135

134:                                              ; preds = %131
  br label %513

135:                                              ; preds = %131
  %136 = call i32* (...) @BN_CTX_new()
  store i32* %136, i32** %44, align 8
  %137 = icmp eq i32* %136, null
  br i1 %137, label %138, label %139

138:                                              ; preds = %135
  br label %513

139:                                              ; preds = %135
  %140 = load i32*, i32** %44, align 8
  %141 = call i32 @BN_CTX_start(i32* %140)
  %142 = load i32*, i32** %44, align 8
  %143 = call i32* @BN_CTX_get(i32* %142)
  store i32* %143, i32** %28, align 8
  %144 = load i32*, i32** %44, align 8
  %145 = call i32* @BN_CTX_get(i32* %144)
  store i32* %145, i32** %33, align 8
  %146 = load i32*, i32** %44, align 8
  %147 = call i32* @BN_CTX_get(i32* %146)
  store i32* %147, i32** %29, align 8
  %148 = load i32*, i32** %44, align 8
  %149 = call i32* @BN_CTX_get(i32* %148)
  store i32* %149, i32** %34, align 8
  %150 = load i32*, i32** %44, align 8
  %151 = call i32* @BN_CTX_get(i32* %150)
  store i32* %151, i32** %30, align 8
  %152 = load i32*, i32** %44, align 8
  %153 = call i32* @BN_CTX_get(i32* %152)
  store i32* %153, i32** %31, align 8
  %154 = load i32*, i32** %44, align 8
  %155 = call i32* @BN_CTX_get(i32* %154)
  store i32* %155, i32** %35, align 8
  %156 = load i32*, i32** %44, align 8
  %157 = call i32* @BN_CTX_get(i32* %156)
  store i32* %157, i32** %32, align 8
  %158 = load i32*, i32** %32, align 8
  %159 = icmp eq i32* %158, null
  br i1 %159, label %160, label %161

160:                                              ; preds = %139
  br label %513

161:                                              ; preds = %139
  %162 = load i32*, i32** %32, align 8
  %163 = call i32* (...) @BN_value_one()
  %164 = load i64, i64* %13, align 8
  %165 = sub i64 %164, 1
  %166 = trunc i64 %165 to i32
  %167 = call i32 @BN_lshift(i32* %162, i32* %163, i32 %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %170, label %169

169:                                              ; preds = %161
  br label %513

170:                                              ; preds = %161
  br label %171

171:                                              ; preds = %447, %170
  br label %172

172:                                              ; preds = %285, %171
  %173 = load i8*, i8** %16, align 8
  %174 = icmp eq i8* %173, null
  %175 = zext i1 %174 to i32
  store i32 %175, i32* %47, align 4
  %176 = load i32*, i32** %21, align 8
  %177 = load i32, i32* %40, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %40, align 4
  %179 = call i32 @BN_GENCB_call(i32* %176, i32 0, i32 %177)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %182, label %181

181:                                              ; preds = %172
  br label %513

182:                                              ; preds = %172
  %183 = load i32, i32* %47, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %191

185:                                              ; preds = %182
  %186 = load i32, i32* %41, align 4
  %187 = call i64 @RAND_bytes(i8* %51, i32 %186)
  %188 = icmp sle i64 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %185
  br label %513

190:                                              ; preds = %185
  br label %192

191:                                              ; preds = %182
  store i8* null, i8** %16, align 8
  br label %192

192:                                              ; preds = %191, %190
  %193 = load i32, i32* %41, align 4
  %194 = call i32 @memcpy(i8* %57, i8* %51, i32 %193)
  %195 = load i32, i32* %41, align 4
  %196 = call i32 @memcpy(i8* %60, i8* %51, i32 %195)
  %197 = load i32, i32* %41, align 4
  %198 = sub nsw i32 %197, 1
  store i32 %198, i32* %37, align 4
  br label %199

199:                                              ; preds = %216, %192
  %200 = load i32, i32* %37, align 4
  %201 = icmp sge i32 %200, 0
  br i1 %201, label %202, label %219

202:                                              ; preds = %199
  %203 = load i32, i32* %37, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i8, i8* %57, i64 %204
  %206 = load i8, i8* %205, align 1
  %207 = add i8 %206, 1
  store i8 %207, i8* %205, align 1
  %208 = load i32, i32* %37, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i8, i8* %57, i64 %209
  %211 = load i8, i8* %210, align 1
  %212 = zext i8 %211 to i32
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %202
  br label %219

215:                                              ; preds = %202
  br label %216

216:                                              ; preds = %215
  %217 = load i32, i32* %37, align 4
  %218 = add nsw i32 %217, -1
  store i32 %218, i32* %37, align 4
  br label %199

219:                                              ; preds = %214, %199
  %220 = load i32, i32* %41, align 4
  %221 = load i32*, i32** %15, align 8
  %222 = call i32 @EVP_Digest(i8* %51, i32 %220, i8* %54, i32* null, i32* %221, i32* null)
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %225, label %224

224:                                              ; preds = %219
  br label %513

225:                                              ; preds = %219
  %226 = load i32, i32* %41, align 4
  %227 = load i32*, i32** %15, align 8
  %228 = call i32 @EVP_Digest(i8* %57, i32 %226, i8* %60, i32* null, i32* %227, i32* null)
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %231, label %230

230:                                              ; preds = %225
  br label %513

231:                                              ; preds = %225
  store i32 0, i32* %37, align 4
  br label %232

232:                                              ; preds = %249, %231
  %233 = load i32, i32* %37, align 4
  %234 = load i32, i32* %41, align 4
  %235 = icmp slt i32 %233, %234
  br i1 %235, label %236, label %252

236:                                              ; preds = %232
  %237 = load i32, i32* %37, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i8, i8* %60, i64 %238
  %240 = load i8, i8* %239, align 1
  %241 = zext i8 %240 to i32
  %242 = load i32, i32* %37, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i8, i8* %54, i64 %243
  %245 = load i8, i8* %244, align 1
  %246 = zext i8 %245 to i32
  %247 = xor i32 %246, %241
  %248 = trunc i32 %247 to i8
  store i8 %248, i8* %244, align 1
  br label %249

249:                                              ; preds = %236
  %250 = load i32, i32* %37, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %37, align 4
  br label %232

252:                                              ; preds = %232
  %253 = getelementptr inbounds i8, i8* %54, i64 0
  %254 = load i8, i8* %253, align 16
  %255 = zext i8 %254 to i32
  %256 = or i32 %255, 128
  %257 = trunc i32 %256 to i8
  store i8 %257, i8* %253, align 16
  %258 = load i32, i32* %41, align 4
  %259 = sub nsw i32 %258, 1
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i8, i8* %54, i64 %260
  %262 = load i8, i8* %261, align 1
  %263 = zext i8 %262 to i32
  %264 = or i32 %263, 1
  %265 = trunc i32 %264 to i8
  store i8 %265, i8* %261, align 1
  %266 = load i32, i32* %41, align 4
  %267 = load i32*, i32** %34, align 8
  %268 = call i32 @BN_bin2bn(i8* %54, i32 %266, i32* %267)
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %271, label %270

270:                                              ; preds = %252
  br label %513

271:                                              ; preds = %252
  %272 = load i32*, i32** %34, align 8
  %273 = load i32, i32* @DSS_prime_checks, align 4
  %274 = load i32*, i32** %44, align 8
  %275 = load i32, i32* %47, align 4
  %276 = load i32*, i32** %21, align 8
  %277 = call i32 @BN_is_prime_fasttest_ex(i32* %272, i32 %273, i32* %274, i32 %275, i32* %276)
  store i32 %277, i32* %43, align 4
  %278 = load i32, i32* %43, align 4
  %279 = icmp sgt i32 %278, 0
  br i1 %279, label %280, label %281

280:                                              ; preds = %271
  br label %286

281:                                              ; preds = %271
  %282 = load i32, i32* %43, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %285

284:                                              ; preds = %281
  br label %513

285:                                              ; preds = %281
  br label %172

286:                                              ; preds = %280
  %287 = load i32*, i32** %21, align 8
  %288 = call i32 @BN_GENCB_call(i32* %287, i32 2, i32 0)
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %291, label %290

290:                                              ; preds = %286
  br label %513

291:                                              ; preds = %286
  %292 = load i32*, i32** %21, align 8
  %293 = call i32 @BN_GENCB_call(i32* %292, i32 3, i32 0)
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %296, label %295

295:                                              ; preds = %291
  br label %513

296:                                              ; preds = %291
  store i32 0, i32* %42, align 4
  %297 = load i64, i64* %13, align 8
  %298 = sub i64 %297, 1
  %299 = udiv i64 %298, 160
  %300 = trunc i64 %299 to i32
  store i32 %300, i32* %39, align 4
  br label %301

301:                                              ; preds = %446, %296
  %302 = load i32, i32* %42, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %310

304:                                              ; preds = %301
  %305 = load i32*, i32** %21, align 8
  %306 = load i32, i32* %42, align 4
  %307 = call i32 @BN_GENCB_call(i32* %305, i32 0, i32 %306)
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %310, label %309

309:                                              ; preds = %304
  br label %513

310:                                              ; preds = %304, %301
  %311 = load i32*, i32** %29, align 8
  %312 = call i32 @BN_zero(i32* %311)
  store i32 0, i32* %38, align 4
  br label %313

313:                                              ; preds = %370, %310
  %314 = load i32, i32* %38, align 4
  %315 = load i32, i32* %39, align 4
  %316 = icmp sle i32 %314, %315
  br i1 %316, label %317, label %373

317:                                              ; preds = %313
  %318 = load i32, i32* %41, align 4
  %319 = sub nsw i32 %318, 1
  store i32 %319, i32* %37, align 4
  br label %320

320:                                              ; preds = %337, %317
  %321 = load i32, i32* %37, align 4
  %322 = icmp sge i32 %321, 0
  br i1 %322, label %323, label %340

323:                                              ; preds = %320
  %324 = load i32, i32* %37, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i8, i8* %57, i64 %325
  %327 = load i8, i8* %326, align 1
  %328 = add i8 %327, 1
  store i8 %328, i8* %326, align 1
  %329 = load i32, i32* %37, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds i8, i8* %57, i64 %330
  %332 = load i8, i8* %331, align 1
  %333 = zext i8 %332 to i32
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %336

335:                                              ; preds = %323
  br label %340

336:                                              ; preds = %323
  br label %337

337:                                              ; preds = %336
  %338 = load i32, i32* %37, align 4
  %339 = add nsw i32 %338, -1
  store i32 %339, i32* %37, align 4
  br label %320

340:                                              ; preds = %335, %320
  %341 = load i32, i32* %41, align 4
  %342 = load i32*, i32** %15, align 8
  %343 = call i32 @EVP_Digest(i8* %57, i32 %341, i8* %54, i32* null, i32* %342, i32* null)
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %346, label %345

345:                                              ; preds = %340
  br label %513

346:                                              ; preds = %340
  %347 = load i32, i32* %41, align 4
  %348 = load i32*, i32** %28, align 8
  %349 = call i32 @BN_bin2bn(i8* %54, i32 %347, i32* %348)
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %352, label %351

351:                                              ; preds = %346
  br label %513

352:                                              ; preds = %346
  %353 = load i32*, i32** %28, align 8
  %354 = load i32*, i32** %28, align 8
  %355 = load i32, i32* %41, align 4
  %356 = shl i32 %355, 3
  %357 = load i32, i32* %38, align 4
  %358 = mul nsw i32 %356, %357
  %359 = call i32 @BN_lshift(i32* %353, i32* %354, i32 %358)
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %362, label %361

361:                                              ; preds = %352
  br label %513

362:                                              ; preds = %352
  %363 = load i32*, i32** %29, align 8
  %364 = load i32*, i32** %29, align 8
  %365 = load i32*, i32** %28, align 8
  %366 = call i32 @BN_add(i32* %363, i32* %364, i32* %365)
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %369, label %368

368:                                              ; preds = %362
  br label %513

369:                                              ; preds = %362
  br label %370

370:                                              ; preds = %369
  %371 = load i32, i32* %38, align 4
  %372 = add nsw i32 %371, 1
  store i32 %372, i32* %38, align 4
  br label %313

373:                                              ; preds = %313
  %374 = load i32*, i32** %29, align 8
  %375 = load i64, i64* %13, align 8
  %376 = sub i64 %375, 1
  %377 = call i32 @BN_mask_bits(i32* %374, i64 %376)
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %380, label %379

379:                                              ; preds = %373
  br label %513

380:                                              ; preds = %373
  %381 = load i32*, i32** %30, align 8
  %382 = load i32*, i32** %29, align 8
  %383 = call i32 @BN_copy(i32* %381, i32* %382)
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %386, label %385

385:                                              ; preds = %380
  br label %513

386:                                              ; preds = %380
  %387 = load i32*, i32** %30, align 8
  %388 = load i32*, i32** %30, align 8
  %389 = load i32*, i32** %32, align 8
  %390 = call i32 @BN_add(i32* %387, i32* %388, i32* %389)
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %393, label %392

392:                                              ; preds = %386
  br label %513

393:                                              ; preds = %386
  %394 = load i32*, i32** %28, align 8
  %395 = load i32*, i32** %34, align 8
  %396 = call i32 @BN_lshift1(i32* %394, i32* %395)
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %399, label %398

398:                                              ; preds = %393
  br label %513

399:                                              ; preds = %393
  %400 = load i32*, i32** %31, align 8
  %401 = load i32*, i32** %30, align 8
  %402 = load i32*, i32** %28, align 8
  %403 = load i32*, i32** %44, align 8
  %404 = call i32 @BN_mod(i32* %400, i32* %401, i32* %402, i32* %403)
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %407, label %406

406:                                              ; preds = %399
  br label %513

407:                                              ; preds = %399
  %408 = load i32*, i32** %28, align 8
  %409 = load i32*, i32** %31, align 8
  %410 = call i32* (...) @BN_value_one()
  %411 = call i32 @BN_sub(i32* %408, i32* %409, i32* %410)
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %414, label %413

413:                                              ; preds = %407
  br label %513

414:                                              ; preds = %407
  %415 = load i32*, i32** %35, align 8
  %416 = load i32*, i32** %30, align 8
  %417 = load i32*, i32** %28, align 8
  %418 = call i32 @BN_sub(i32* %415, i32* %416, i32* %417)
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %421, label %420

420:                                              ; preds = %414
  br label %513

421:                                              ; preds = %414
  %422 = load i32*, i32** %35, align 8
  %423 = load i32*, i32** %32, align 8
  %424 = call i64 @BN_cmp(i32* %422, i32* %423)
  %425 = icmp sge i64 %424, 0
  br i1 %425, label %426, label %440

426:                                              ; preds = %421
  %427 = load i32*, i32** %35, align 8
  %428 = load i32, i32* @DSS_prime_checks, align 4
  %429 = load i32*, i32** %44, align 8
  %430 = load i32*, i32** %21, align 8
  %431 = call i32 @BN_is_prime_fasttest_ex(i32* %427, i32 %428, i32* %429, i32 1, i32* %430)
  store i32 %431, i32* %43, align 4
  %432 = load i32, i32* %43, align 4
  %433 = icmp sgt i32 %432, 0
  br i1 %433, label %434, label %435

434:                                              ; preds = %426
  br label %448

435:                                              ; preds = %426
  %436 = load i32, i32* %43, align 4
  %437 = icmp ne i32 %436, 0
  br i1 %437, label %438, label %439

438:                                              ; preds = %435
  br label %513

439:                                              ; preds = %435
  br label %440

440:                                              ; preds = %439, %421
  %441 = load i32, i32* %42, align 4
  %442 = add nsw i32 %441, 1
  store i32 %442, i32* %42, align 4
  %443 = load i32, i32* %42, align 4
  %444 = icmp sge i32 %443, 4096
  br i1 %444, label %445, label %446

445:                                              ; preds = %440
  br label %447

446:                                              ; preds = %440
  br label %301

447:                                              ; preds = %445
  br label %171

448:                                              ; preds = %434
  %449 = load i32*, i32** %21, align 8
  %450 = call i32 @BN_GENCB_call(i32* %449, i32 2, i32 1)
  %451 = icmp ne i32 %450, 0
  br i1 %451, label %453, label %452

452:                                              ; preds = %448
  br label %513

453:                                              ; preds = %448
  %454 = load i32*, i32** %32, align 8
  %455 = load i32*, i32** %35, align 8
  %456 = call i32* (...) @BN_value_one()
  %457 = call i32 @BN_sub(i32* %454, i32* %455, i32* %456)
  %458 = icmp ne i32 %457, 0
  br i1 %458, label %460, label %459

459:                                              ; preds = %453
  br label %513

460:                                              ; preds = %453
  %461 = load i32*, i32** %28, align 8
  %462 = load i32*, i32** %32, align 8
  %463 = load i32*, i32** %34, align 8
  %464 = load i32*, i32** %44, align 8
  %465 = call i32 @BN_div(i32* %461, i32* null, i32* %462, i32* %463, i32* %464)
  %466 = icmp ne i32 %465, 0
  br i1 %466, label %468, label %467

467:                                              ; preds = %460
  br label %513

468:                                              ; preds = %460
  %469 = load i32*, i32** %32, align 8
  %470 = load i32, i32* %45, align 4
  %471 = call i32 @BN_set_word(i32* %469, i32 %470)
  %472 = icmp ne i32 %471, 0
  br i1 %472, label %474, label %473

473:                                              ; preds = %468
  br label %513

474:                                              ; preds = %468
  %475 = load i32*, i32** %36, align 8
  %476 = load i32*, i32** %35, align 8
  %477 = load i32*, i32** %44, align 8
  %478 = call i32 @BN_MONT_CTX_set(i32* %475, i32* %476, i32* %477)
  %479 = icmp ne i32 %478, 0
  br i1 %479, label %481, label %480

480:                                              ; preds = %474
  br label %513

481:                                              ; preds = %474
  br label %482

482:                                              ; preds = %504, %481
  %483 = load i32*, i32** %33, align 8
  %484 = load i32*, i32** %32, align 8
  %485 = load i32*, i32** %28, align 8
  %486 = load i32*, i32** %35, align 8
  %487 = load i32*, i32** %44, align 8
  %488 = load i32*, i32** %36, align 8
  %489 = call i32 @BN_mod_exp_mont(i32* %483, i32* %484, i32* %485, i32* %486, i32* %487, i32* %488)
  %490 = icmp ne i32 %489, 0
  br i1 %490, label %492, label %491

491:                                              ; preds = %482
  br label %513

492:                                              ; preds = %482
  %493 = load i32*, i32** %33, align 8
  %494 = call i32 @BN_is_one(i32* %493)
  %495 = icmp ne i32 %494, 0
  br i1 %495, label %497, label %496

496:                                              ; preds = %492
  br label %507

497:                                              ; preds = %492
  %498 = load i32*, i32** %32, align 8
  %499 = load i32*, i32** %32, align 8
  %500 = call i32* (...) @BN_value_one()
  %501 = call i32 @BN_add(i32* %498, i32* %499, i32* %500)
  %502 = icmp ne i32 %501, 0
  br i1 %502, label %504, label %503

503:                                              ; preds = %497
  br label %513

504:                                              ; preds = %497
  %505 = load i32, i32* %45, align 4
  %506 = add i32 %505, 1
  store i32 %506, i32* %45, align 4
  br label %482

507:                                              ; preds = %496
  %508 = load i32*, i32** %21, align 8
  %509 = call i32 @BN_GENCB_call(i32* %508, i32 3, i32 1)
  %510 = icmp ne i32 %509, 0
  br i1 %510, label %512, label %511

511:                                              ; preds = %507
  br label %513

512:                                              ; preds = %507
  store i32 1, i32* %22, align 4
  br label %513

513:                                              ; preds = %558, %512, %511, %503, %491, %480, %473, %467, %459, %452, %438, %420, %413, %406, %398, %392, %385, %379, %368, %361, %351, %345, %309, %295, %290, %284, %270, %230, %224, %189, %181, %169, %160, %138, %134
  %514 = load i32, i32* %22, align 4
  %515 = icmp ne i32 %514, 0
  br i1 %515, label %516, label %580

516:                                              ; preds = %513
  %517 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %518 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %517, i32 0, i32 2
  %519 = load i32*, i32** %518, align 8
  %520 = call i32 @BN_free(i32* %519)
  %521 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %522 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %521, i32 0, i32 1
  %523 = load i32*, i32** %522, align 8
  %524 = call i32 @BN_free(i32* %523)
  %525 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %526 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %525, i32 0, i32 0
  %527 = load i32*, i32** %526, align 8
  %528 = call i32 @BN_free(i32* %527)
  %529 = load i32*, i32** %35, align 8
  %530 = call i8* @BN_dup(i32* %529)
  %531 = bitcast i8* %530 to i32*
  %532 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %533 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %532, i32 0, i32 2
  store i32* %531, i32** %533, align 8
  %534 = load i32*, i32** %34, align 8
  %535 = call i8* @BN_dup(i32* %534)
  %536 = bitcast i8* %535 to i32*
  %537 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %538 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %537, i32 0, i32 1
  store i32* %536, i32** %538, align 8
  %539 = load i32*, i32** %33, align 8
  %540 = call i8* @BN_dup(i32* %539)
  %541 = bitcast i8* %540 to i32*
  %542 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %543 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %542, i32 0, i32 0
  store i32* %541, i32** %543, align 8
  %544 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %545 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %544, i32 0, i32 2
  %546 = load i32*, i32** %545, align 8
  %547 = icmp eq i32* %546, null
  br i1 %547, label %558, label %548

548:                                              ; preds = %516
  %549 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %550 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %549, i32 0, i32 1
  %551 = load i32*, i32** %550, align 8
  %552 = icmp eq i32* %551, null
  br i1 %552, label %558, label %553

553:                                              ; preds = %548
  %554 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %555 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %554, i32 0, i32 0
  %556 = load i32*, i32** %555, align 8
  %557 = icmp eq i32* %556, null
  br i1 %557, label %558, label %559

558:                                              ; preds = %553, %548, %516
  store i32 0, i32* %22, align 4
  br label %513

559:                                              ; preds = %553
  %560 = load i32*, i32** %19, align 8
  %561 = icmp ne i32* %560, null
  br i1 %561, label %562, label %565

562:                                              ; preds = %559
  %563 = load i32, i32* %42, align 4
  %564 = load i32*, i32** %19, align 8
  store i32 %563, i32* %564, align 4
  br label %565

565:                                              ; preds = %562, %559
  %566 = load i64*, i64** %20, align 8
  %567 = icmp ne i64* %566, null
  br i1 %567, label %568, label %572

568:                                              ; preds = %565
  %569 = load i32, i32* %45, align 4
  %570 = zext i32 %569 to i64
  %571 = load i64*, i64** %20, align 8
  store i64 %570, i64* %571, align 8
  br label %572

572:                                              ; preds = %568, %565
  %573 = load i8*, i8** %18, align 8
  %574 = icmp ne i8* %573, null
  br i1 %574, label %575, label %579

575:                                              ; preds = %572
  %576 = load i8*, i8** %18, align 8
  %577 = load i32, i32* %41, align 4
  %578 = call i32 @memcpy(i8* %576, i8* %51, i32 %577)
  br label %579

579:                                              ; preds = %575, %572
  br label %580

580:                                              ; preds = %579, %513
  %581 = load i32*, i32** %44, align 8
  %582 = call i32 @BN_CTX_end(i32* %581)
  %583 = load i32*, i32** %44, align 8
  %584 = call i32 @BN_CTX_free(i32* %583)
  %585 = load i32*, i32** %36, align 8
  %586 = call i32 @BN_MONT_CTX_free(i32* %585)
  %587 = load i32, i32* %22, align 4
  store i32 %587, i32* %11, align 4
  store i32 1, i32* %46, align 4
  br label %588

588:                                              ; preds = %580, %114, %75
  %589 = load i8*, i8** %23, align 8
  call void @llvm.stackrestore(i8* %589)
  %590 = load i32, i32* %11, align 4
  ret i32 %590
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @EVP_sha1(...) #2

declare dso_local i32* @EVP_sha224(...) #2

declare dso_local i32* @EVP_sha256(...) #2

declare dso_local i32 @EVP_MD_size(i32*) #2

declare dso_local i32 @DSAerr(i32, i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32* @BN_MONT_CTX_new(...) #2

declare dso_local i32* @BN_CTX_new(...) #2

declare dso_local i32 @BN_CTX_start(i32*) #2

declare dso_local i32* @BN_CTX_get(i32*) #2

declare dso_local i32 @BN_lshift(i32*, i32*, i32) #2

declare dso_local i32* @BN_value_one(...) #2

declare dso_local i32 @BN_GENCB_call(i32*, i32, i32) #2

declare dso_local i64 @RAND_bytes(i8*, i32) #2

declare dso_local i32 @EVP_Digest(i8*, i32, i8*, i32*, i32*, i32*) #2

declare dso_local i32 @BN_bin2bn(i8*, i32, i32*) #2

declare dso_local i32 @BN_is_prime_fasttest_ex(i32*, i32, i32*, i32, i32*) #2

declare dso_local i32 @BN_zero(i32*) #2

declare dso_local i32 @BN_add(i32*, i32*, i32*) #2

declare dso_local i32 @BN_mask_bits(i32*, i64) #2

declare dso_local i32 @BN_copy(i32*, i32*) #2

declare dso_local i32 @BN_lshift1(i32*, i32*) #2

declare dso_local i32 @BN_mod(i32*, i32*, i32*, i32*) #2

declare dso_local i32 @BN_sub(i32*, i32*, i32*) #2

declare dso_local i64 @BN_cmp(i32*, i32*) #2

declare dso_local i32 @BN_div(i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @BN_set_word(i32*, i32) #2

declare dso_local i32 @BN_MONT_CTX_set(i32*, i32*, i32*) #2

declare dso_local i32 @BN_mod_exp_mont(i32*, i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @BN_is_one(i32*) #2

declare dso_local i32 @BN_free(i32*) #2

declare dso_local i8* @BN_dup(i32*) #2

declare dso_local i32 @BN_CTX_end(i32*) #2

declare dso_local i32 @BN_CTX_free(i32*) #2

declare dso_local i32 @BN_MONT_CTX_free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
