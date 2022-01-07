; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/dsa/extr_dsa_gen.c_dsa_builtin_paramgen2.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/dsa/extr_dsa_gen.c_dsa_builtin_paramgen2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32*, i32* }

@EVP_MAX_MD_SIZE = common dso_local global i32 0, align 4
@DSA_F_DSA_BUILTIN_PARAMGEN2 = common dso_local global i32 0, align 4
@DSA_R_INVALID_PARAMETERS = common dso_local global i32 0, align 4
@DSS_prime_checks = common dso_local global i32 0, align 4
@DSA_R_Q_NOT_PRIME = common dso_local global i32 0, align 4
@dsa_builtin_paramgen2.ggen = internal constant [4 x i8] c"ggen", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dsa_builtin_paramgen2(%struct.TYPE_3__* %0, i64 %1, i64 %2, i32* %3, i8* %4, i64 %5, i32 %6, i8* %7, i32* %8, i64* %9, i32* %10) #0 {
  %12 = alloca %struct.TYPE_3__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i64*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i32*, align 8
  %34 = alloca i32*, align 8
  %35 = alloca i32*, align 8
  %36 = alloca i32*, align 8
  %37 = alloca i32*, align 8
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32*, align 8
  %46 = alloca i32*, align 8
  %47 = alloca i32, align 4
  %48 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %12, align 8
  store i64 %1, i64* %13, align 8
  store i64 %2, i64* %14, align 8
  store i32* %3, i32** %15, align 8
  store i8* %4, i8** %16, align 8
  store i64 %5, i64* %17, align 8
  store i32 %6, i32* %18, align 4
  store i8* %7, i8** %19, align 8
  store i32* %8, i32** %20, align 8
  store i64* %9, i64** %21, align 8
  store i32* %10, i32** %22, align 8
  store i32 -1, i32* %23, align 4
  store i8* null, i8** %24, align 8
  store i8* null, i8** %25, align 8
  %49 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %50 = zext i32 %49 to i64
  %51 = call i8* @llvm.stacksave()
  store i8* %51, i8** %26, align 8
  %52 = alloca i8, i64 %50, align 16
  store i64 %50, i64* %27, align 8
  store i32* null, i32** %34, align 8
  store i32* null, i32** %35, align 8
  store i32* null, i32** %36, align 8
  store i32* null, i32** %37, align 8
  store i32 0, i32* %40, align 4
  store i32 0, i32* %41, align 4
  %53 = load i64, i64* %14, align 8
  %54 = lshr i64 %53, 3
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %42, align 4
  store i32 0, i32* %43, align 4
  store i32 0, i32* %44, align 4
  store i32* null, i32** %45, align 8
  %56 = call i32* (...) @EVP_MD_CTX_new()
  store i32* %56, i32** %46, align 8
  store i32 2, i32* %47, align 4
  %57 = load i32*, i32** %46, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %11
  br label %619

60:                                               ; preds = %11
  %61 = load i64, i64* %13, align 8
  %62 = load i64, i64* %14, align 8
  %63 = icmp ule i64 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load i32, i32* @DSA_F_DSA_BUILTIN_PARAMGEN2, align 4
  %66 = load i32, i32* @DSA_R_INVALID_PARAMETERS, align 4
  %67 = call i32 @DSAerr(i32 %65, i32 %66)
  br label %619

68:                                               ; preds = %60
  %69 = load i32*, i32** %15, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %85

71:                                               ; preds = %68
  %72 = load i64, i64* %14, align 8
  %73 = icmp eq i64 %72, 160
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = call i32* (...) @EVP_sha1()
  store i32* %75, i32** %15, align 8
  br label %84

76:                                               ; preds = %71
  %77 = load i64, i64* %14, align 8
  %78 = icmp eq i64 %77, 224
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = call i32* (...) @EVP_sha224()
  store i32* %80, i32** %15, align 8
  br label %83

81:                                               ; preds = %76
  %82 = call i32* (...) @EVP_sha256()
  store i32* %82, i32** %15, align 8
  br label %83

83:                                               ; preds = %81, %79
  br label %84

84:                                               ; preds = %83, %74
  br label %85

85:                                               ; preds = %84, %68
  %86 = load i32*, i32** %15, align 8
  %87 = call i32 @EVP_MD_size(i32* %86)
  store i32 %87, i32* %28, align 4
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %100

92:                                               ; preds = %85
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load i32, i32* %18, align 4
  %99 = icmp sge i32 %98, 0
  br i1 %99, label %100, label %132

100:                                              ; preds = %97, %92, %85
  %101 = load i64, i64* %17, align 8
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load i32, i32* %28, align 4
  %105 = sext i32 %104 to i64
  store i64 %105, i64* %17, align 8
  br label %106

106:                                              ; preds = %103, %100
  %107 = load i64, i64* %17, align 8
  %108 = call i8* @OPENSSL_malloc(i64 %107)
  store i8* %108, i8** %24, align 8
  %109 = load i8*, i8** %19, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %113

111:                                              ; preds = %106
  %112 = load i8*, i8** %19, align 8
  store i8* %112, i8** %25, align 8
  br label %116

113:                                              ; preds = %106
  %114 = load i64, i64* %17, align 8
  %115 = call i8* @OPENSSL_malloc(i64 %114)
  store i8* %115, i8** %25, align 8
  br label %116

116:                                              ; preds = %113, %111
  %117 = load i8*, i8** %24, align 8
  %118 = icmp eq i8* %117, null
  br i1 %118, label %122, label %119

119:                                              ; preds = %116
  %120 = load i8*, i8** %25, align 8
  %121 = icmp eq i8* %120, null
  br i1 %121, label %122, label %123

122:                                              ; preds = %119, %116
  br label %619

123:                                              ; preds = %119
  %124 = load i8*, i8** %16, align 8
  %125 = icmp ne i8* %124, null
  br i1 %125, label %126, label %131

126:                                              ; preds = %123
  %127 = load i8*, i8** %24, align 8
  %128 = load i8*, i8** %16, align 8
  %129 = load i64, i64* %17, align 8
  %130 = call i32 @memcpy(i8* %127, i8* %128, i64 %129)
  br label %131

131:                                              ; preds = %126, %123
  br label %132

132:                                              ; preds = %131, %97
  %133 = call i32* (...) @BN_CTX_new()
  store i32* %133, i32** %45, align 8
  %134 = icmp eq i32* %133, null
  br i1 %134, label %135, label %136

135:                                              ; preds = %132
  br label %619

136:                                              ; preds = %132
  %137 = call i32* (...) @BN_MONT_CTX_new()
  store i32* %137, i32** %37, align 8
  %138 = icmp eq i32* %137, null
  br i1 %138, label %139, label %140

139:                                              ; preds = %136
  br label %619

140:                                              ; preds = %136
  %141 = load i32*, i32** %45, align 8
  %142 = call i32 @BN_CTX_start(i32* %141)
  %143 = load i32*, i32** %45, align 8
  %144 = call i32* @BN_CTX_get(i32* %143)
  store i32* %144, i32** %29, align 8
  %145 = load i32*, i32** %45, align 8
  %146 = call i32* @BN_CTX_get(i32* %145)
  store i32* %146, i32** %34, align 8
  %147 = load i32*, i32** %45, align 8
  %148 = call i32* @BN_CTX_get(i32* %147)
  store i32* %148, i32** %30, align 8
  %149 = load i32*, i32** %45, align 8
  %150 = call i32* @BN_CTX_get(i32* %149)
  store i32* %150, i32** %31, align 8
  %151 = load i32*, i32** %45, align 8
  %152 = call i32* @BN_CTX_get(i32* %151)
  store i32* %152, i32** %32, align 8
  %153 = load i32*, i32** %45, align 8
  %154 = call i32* @BN_CTX_get(i32* %153)
  store i32* %154, i32** %33, align 8
  %155 = load i32*, i32** %33, align 8
  %156 = icmp eq i32* %155, null
  br i1 %156, label %157, label %158

157:                                              ; preds = %140
  br label %619

158:                                              ; preds = %140
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 2
  %161 = load i32*, i32** %160, align 8
  %162 = icmp ne i32* %161, null
  br i1 %162, label %163, label %183

163:                                              ; preds = %158
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  %167 = icmp ne i32* %166, null
  br i1 %167, label %168, label %183

168:                                              ; preds = %163
  %169 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 2
  %171 = load i32*, i32** %170, align 8
  store i32* %171, i32** %36, align 8
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 1
  %174 = load i32*, i32** %173, align 8
  store i32* %174, i32** %35, align 8
  %175 = load i32, i32* %18, align 4
  %176 = icmp sge i32 %175, 0
  br i1 %176, label %177, label %182

177:                                              ; preds = %168
  %178 = load i8*, i8** %25, align 8
  %179 = load i8*, i8** %24, align 8
  %180 = load i64, i64* %17, align 8
  %181 = call i32 @memcpy(i8* %178, i8* %179, i64 %180)
  br label %182

182:                                              ; preds = %177, %168
  br label %492

183:                                              ; preds = %163, %158
  %184 = load i32*, i32** %45, align 8
  %185 = call i32* @BN_CTX_get(i32* %184)
  store i32* %185, i32** %36, align 8
  %186 = load i32*, i32** %45, align 8
  %187 = call i32* @BN_CTX_get(i32* %186)
  store i32* %187, i32** %35, align 8
  %188 = load i32*, i32** %35, align 8
  %189 = icmp eq i32* %188, null
  br i1 %189, label %190, label %191

190:                                              ; preds = %183
  br label %619

191:                                              ; preds = %183
  br label %192

192:                                              ; preds = %191
  %193 = load i32*, i32** %33, align 8
  %194 = call i32* (...) @BN_value_one()
  %195 = load i64, i64* %13, align 8
  %196 = sub i64 %195, 1
  %197 = trunc i64 %196 to i32
  %198 = call i32 @BN_lshift(i32* %193, i32* %194, i32 %197)
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %201, label %200

200:                                              ; preds = %192
  br label %619

201:                                              ; preds = %192
  br label %202

202:                                              ; preds = %485, %201
  br label %203

203:                                              ; preds = %298, %202
  %204 = load i32*, i32** %22, align 8
  %205 = load i32, i32* %41, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %41, align 4
  %207 = call i32 @BN_GENCB_call(i32* %204, i32 0, i32 %205)
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %210, label %209

209:                                              ; preds = %203
  br label %619

210:                                              ; preds = %203
  %211 = load i8*, i8** %16, align 8
  %212 = icmp ne i8* %211, null
  br i1 %212, label %220, label %213

213:                                              ; preds = %210
  %214 = load i8*, i8** %24, align 8
  %215 = load i64, i64* %17, align 8
  %216 = call i64 @RAND_bytes(i8* %214, i64 %215)
  %217 = icmp sle i64 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %213
  br label %619

219:                                              ; preds = %213
  br label %220

220:                                              ; preds = %219, %210
  %221 = load i8*, i8** %24, align 8
  %222 = load i64, i64* %17, align 8
  %223 = load i32*, i32** %15, align 8
  %224 = call i32 @EVP_Digest(i8* %221, i64 %222, i8* %52, i32* null, i32* %223, i32* null)
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %227, label %226

226:                                              ; preds = %220
  br label %619

227:                                              ; preds = %220
  %228 = load i32, i32* %28, align 4
  %229 = load i32, i32* %42, align 4
  %230 = icmp sgt i32 %228, %229
  br i1 %230, label %231, label %239

231:                                              ; preds = %227
  %232 = load i32, i32* %28, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i8, i8* %52, i64 %233
  %235 = load i32, i32* %42, align 4
  %236 = sext i32 %235 to i64
  %237 = sub i64 0, %236
  %238 = getelementptr inbounds i8, i8* %234, i64 %237
  store i8* %238, i8** %48, align 8
  br label %240

239:                                              ; preds = %227
  store i8* %52, i8** %48, align 8
  br label %240

240:                                              ; preds = %239, %231
  %241 = load i32, i32* %28, align 4
  %242 = load i32, i32* %42, align 4
  %243 = icmp slt i32 %241, %242
  br i1 %243, label %244, label %252

244:                                              ; preds = %240
  %245 = load i32, i32* %28, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i8, i8* %52, i64 %246
  %248 = load i32, i32* %42, align 4
  %249 = load i32, i32* %28, align 4
  %250 = sub nsw i32 %248, %249
  %251 = call i32 @memset(i8* %247, i32 0, i32 %250)
  br label %252

252:                                              ; preds = %244, %240
  %253 = load i8*, i8** %48, align 8
  %254 = getelementptr inbounds i8, i8* %253, i64 0
  %255 = load i8, i8* %254, align 1
  %256 = zext i8 %255 to i32
  %257 = or i32 %256, 128
  %258 = trunc i32 %257 to i8
  store i8 %258, i8* %254, align 1
  %259 = load i8*, i8** %48, align 8
  %260 = load i32, i32* %42, align 4
  %261 = sub nsw i32 %260, 1
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i8, i8* %259, i64 %262
  %264 = load i8, i8* %263, align 1
  %265 = zext i8 %264 to i32
  %266 = or i32 %265, 1
  %267 = trunc i32 %266 to i8
  store i8 %267, i8* %263, align 1
  %268 = load i8*, i8** %48, align 8
  %269 = load i32, i32* %42, align 4
  %270 = load i32*, i32** %35, align 8
  %271 = call i32 @BN_bin2bn(i8* %268, i32 %269, i32* %270)
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %274, label %273

273:                                              ; preds = %252
  br label %619

274:                                              ; preds = %252
  %275 = load i32*, i32** %35, align 8
  %276 = load i32, i32* @DSS_prime_checks, align 4
  %277 = load i32*, i32** %45, align 8
  %278 = load i8*, i8** %16, align 8
  %279 = icmp ne i8* %278, null
  %280 = zext i1 %279 to i64
  %281 = select i1 %279, i32 1, i32 0
  %282 = load i32*, i32** %22, align 8
  %283 = call i32 @BN_is_prime_fasttest_ex(i32* %275, i32 %276, i32* %277, i32 %281, i32* %282)
  store i32 %283, i32* %44, align 4
  %284 = load i32, i32* %44, align 4
  %285 = icmp sgt i32 %284, 0
  br i1 %285, label %286, label %287

286:                                              ; preds = %274
  br label %299

287:                                              ; preds = %274
  %288 = load i32, i32* %44, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %291

290:                                              ; preds = %287
  br label %619

291:                                              ; preds = %287
  %292 = load i8*, i8** %16, align 8
  %293 = icmp ne i8* %292, null
  br i1 %293, label %294, label %298

294:                                              ; preds = %291
  store i32 0, i32* %23, align 4
  %295 = load i32, i32* @DSA_F_DSA_BUILTIN_PARAMGEN2, align 4
  %296 = load i32, i32* @DSA_R_Q_NOT_PRIME, align 4
  %297 = call i32 @DSAerr(i32 %295, i32 %296)
  br label %619

298:                                              ; preds = %291
  br label %203

299:                                              ; preds = %286
  %300 = load i8*, i8** %19, align 8
  %301 = icmp ne i8* %300, null
  br i1 %301, label %302, label %307

302:                                              ; preds = %299
  %303 = load i8*, i8** %19, align 8
  %304 = load i8*, i8** %24, align 8
  %305 = load i64, i64* %17, align 8
  %306 = call i32 @memcpy(i8* %303, i8* %304, i64 %305)
  br label %307

307:                                              ; preds = %302, %299
  %308 = load i32*, i32** %22, align 8
  %309 = call i32 @BN_GENCB_call(i32* %308, i32 2, i32 0)
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %312, label %311

311:                                              ; preds = %307
  br label %619

312:                                              ; preds = %307
  %313 = load i32*, i32** %22, align 8
  %314 = call i32 @BN_GENCB_call(i32* %313, i32 3, i32 0)
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %317, label %316

316:                                              ; preds = %312
  br label %619

317:                                              ; preds = %312
  store i32 0, i32* %43, align 4
  %318 = load i64, i64* %13, align 8
  %319 = sub i64 %318, 1
  %320 = load i32, i32* %28, align 4
  %321 = shl i32 %320, 3
  %322 = sext i32 %321 to i64
  %323 = udiv i64 %319, %322
  %324 = trunc i64 %323 to i32
  store i32 %324, i32* %40, align 4
  br label %325

325:                                              ; preds = %477, %317
  %326 = load i32, i32* %43, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %334

328:                                              ; preds = %325
  %329 = load i32*, i32** %22, align 8
  %330 = load i32, i32* %43, align 4
  %331 = call i32 @BN_GENCB_call(i32* %329, i32 0, i32 %330)
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %334, label %333

333:                                              ; preds = %328
  br label %619

334:                                              ; preds = %328, %325
  %335 = load i32*, i32** %30, align 8
  %336 = call i32 @BN_zero(i32* %335)
  store i32 0, i32* %39, align 4
  br label %337

337:                                              ; preds = %398, %334
  %338 = load i32, i32* %39, align 4
  %339 = load i32, i32* %40, align 4
  %340 = icmp sle i32 %338, %339
  br i1 %340, label %341, label %401

341:                                              ; preds = %337
  %342 = load i64, i64* %17, align 8
  %343 = sub i64 %342, 1
  %344 = trunc i64 %343 to i32
  store i32 %344, i32* %38, align 4
  br label %345

345:                                              ; preds = %364, %341
  %346 = load i32, i32* %38, align 4
  %347 = icmp sge i32 %346, 0
  br i1 %347, label %348, label %367

348:                                              ; preds = %345
  %349 = load i8*, i8** %24, align 8
  %350 = load i32, i32* %38, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds i8, i8* %349, i64 %351
  %353 = load i8, i8* %352, align 1
  %354 = add i8 %353, 1
  store i8 %354, i8* %352, align 1
  %355 = load i8*, i8** %24, align 8
  %356 = load i32, i32* %38, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds i8, i8* %355, i64 %357
  %359 = load i8, i8* %358, align 1
  %360 = zext i8 %359 to i32
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %363

362:                                              ; preds = %348
  br label %367

363:                                              ; preds = %348
  br label %364

364:                                              ; preds = %363
  %365 = load i32, i32* %38, align 4
  %366 = add nsw i32 %365, -1
  store i32 %366, i32* %38, align 4
  br label %345

367:                                              ; preds = %362, %345
  %368 = load i8*, i8** %24, align 8
  %369 = load i64, i64* %17, align 8
  %370 = load i32*, i32** %15, align 8
  %371 = call i32 @EVP_Digest(i8* %368, i64 %369, i8* %52, i32* null, i32* %370, i32* null)
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %374, label %373

373:                                              ; preds = %367
  br label %619

374:                                              ; preds = %367
  %375 = load i32, i32* %28, align 4
  %376 = load i32*, i32** %29, align 8
  %377 = call i32 @BN_bin2bn(i8* %52, i32 %375, i32* %376)
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %380, label %379

379:                                              ; preds = %374
  br label %619

380:                                              ; preds = %374
  %381 = load i32*, i32** %29, align 8
  %382 = load i32*, i32** %29, align 8
  %383 = load i32, i32* %28, align 4
  %384 = shl i32 %383, 3
  %385 = load i32, i32* %39, align 4
  %386 = mul nsw i32 %384, %385
  %387 = call i32 @BN_lshift(i32* %381, i32* %382, i32 %386)
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %390, label %389

389:                                              ; preds = %380
  br label %619

390:                                              ; preds = %380
  %391 = load i32*, i32** %30, align 8
  %392 = load i32*, i32** %30, align 8
  %393 = load i32*, i32** %29, align 8
  %394 = call i32 @BN_add(i32* %391, i32* %392, i32* %393)
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %397, label %396

396:                                              ; preds = %390
  br label %619

397:                                              ; preds = %390
  br label %398

398:                                              ; preds = %397
  %399 = load i32, i32* %39, align 4
  %400 = add nsw i32 %399, 1
  store i32 %400, i32* %39, align 4
  br label %337

401:                                              ; preds = %337
  %402 = load i32*, i32** %30, align 8
  %403 = load i64, i64* %13, align 8
  %404 = sub i64 %403, 1
  %405 = call i32 @BN_mask_bits(i32* %402, i64 %404)
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %408, label %407

407:                                              ; preds = %401
  br label %619

408:                                              ; preds = %401
  %409 = load i32*, i32** %31, align 8
  %410 = load i32*, i32** %30, align 8
  %411 = call i32 @BN_copy(i32* %409, i32* %410)
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %414, label %413

413:                                              ; preds = %408
  br label %619

414:                                              ; preds = %408
  %415 = load i32*, i32** %31, align 8
  %416 = load i32*, i32** %31, align 8
  %417 = load i32*, i32** %33, align 8
  %418 = call i32 @BN_add(i32* %415, i32* %416, i32* %417)
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %421, label %420

420:                                              ; preds = %414
  br label %619

421:                                              ; preds = %414
  %422 = load i32*, i32** %29, align 8
  %423 = load i32*, i32** %35, align 8
  %424 = call i32 @BN_lshift1(i32* %422, i32* %423)
  %425 = icmp ne i32 %424, 0
  br i1 %425, label %427, label %426

426:                                              ; preds = %421
  br label %619

427:                                              ; preds = %421
  %428 = load i32*, i32** %32, align 8
  %429 = load i32*, i32** %31, align 8
  %430 = load i32*, i32** %29, align 8
  %431 = load i32*, i32** %45, align 8
  %432 = call i32 @BN_mod(i32* %428, i32* %429, i32* %430, i32* %431)
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %435, label %434

434:                                              ; preds = %427
  br label %619

435:                                              ; preds = %427
  %436 = load i32*, i32** %29, align 8
  %437 = load i32*, i32** %32, align 8
  %438 = call i32* (...) @BN_value_one()
  %439 = call i32 @BN_sub(i32* %436, i32* %437, i32* %438)
  %440 = icmp ne i32 %439, 0
  br i1 %440, label %442, label %441

441:                                              ; preds = %435
  br label %619

442:                                              ; preds = %435
  %443 = load i32*, i32** %36, align 8
  %444 = load i32*, i32** %31, align 8
  %445 = load i32*, i32** %29, align 8
  %446 = call i32 @BN_sub(i32* %443, i32* %444, i32* %445)
  %447 = icmp ne i32 %446, 0
  br i1 %447, label %449, label %448

448:                                              ; preds = %442
  br label %619

449:                                              ; preds = %442
  %450 = load i32*, i32** %36, align 8
  %451 = load i32*, i32** %33, align 8
  %452 = call i64 @BN_cmp(i32* %450, i32* %451)
  %453 = icmp sge i64 %452, 0
  br i1 %453, label %454, label %468

454:                                              ; preds = %449
  %455 = load i32*, i32** %36, align 8
  %456 = load i32, i32* @DSS_prime_checks, align 4
  %457 = load i32*, i32** %45, align 8
  %458 = load i32*, i32** %22, align 8
  %459 = call i32 @BN_is_prime_fasttest_ex(i32* %455, i32 %456, i32* %457, i32 1, i32* %458)
  store i32 %459, i32* %44, align 4
  %460 = load i32, i32* %44, align 4
  %461 = icmp sgt i32 %460, 0
  br i1 %461, label %462, label %463

462:                                              ; preds = %454
  br label %486

463:                                              ; preds = %454
  %464 = load i32, i32* %44, align 4
  %465 = icmp ne i32 %464, 0
  br i1 %465, label %466, label %467

466:                                              ; preds = %463
  br label %619

467:                                              ; preds = %463
  br label %468

468:                                              ; preds = %467, %449
  %469 = load i32, i32* %43, align 4
  %470 = add nsw i32 %469, 1
  store i32 %470, i32* %43, align 4
  %471 = load i32, i32* %43, align 4
  %472 = load i64, i64* %13, align 8
  %473 = mul i64 4, %472
  %474 = trunc i64 %473 to i32
  %475 = icmp sge i32 %471, %474
  br i1 %475, label %476, label %477

476:                                              ; preds = %468
  br label %478

477:                                              ; preds = %468
  br label %325

478:                                              ; preds = %476
  %479 = load i8*, i8** %16, align 8
  %480 = icmp ne i8* %479, null
  br i1 %480, label %481, label %485

481:                                              ; preds = %478
  store i32 0, i32* %23, align 4
  %482 = load i32, i32* @DSA_F_DSA_BUILTIN_PARAMGEN2, align 4
  %483 = load i32, i32* @DSA_R_INVALID_PARAMETERS, align 4
  %484 = call i32 @DSAerr(i32 %482, i32 %483)
  br label %619

485:                                              ; preds = %478
  br label %202

486:                                              ; preds = %462
  %487 = load i32*, i32** %22, align 8
  %488 = call i32 @BN_GENCB_call(i32* %487, i32 2, i32 1)
  %489 = icmp ne i32 %488, 0
  br i1 %489, label %491, label %490

490:                                              ; preds = %486
  br label %619

491:                                              ; preds = %486
  br label %492

492:                                              ; preds = %491, %182
  %493 = load i32*, i32** %33, align 8
  %494 = load i32*, i32** %36, align 8
  %495 = call i32* (...) @BN_value_one()
  %496 = call i32 @BN_sub(i32* %493, i32* %494, i32* %495)
  %497 = icmp ne i32 %496, 0
  br i1 %497, label %499, label %498

498:                                              ; preds = %492
  br label %619

499:                                              ; preds = %492
  %500 = load i32*, i32** %29, align 8
  %501 = load i32*, i32** %33, align 8
  %502 = load i32*, i32** %35, align 8
  %503 = load i32*, i32** %45, align 8
  %504 = call i32 @BN_div(i32* %500, i32* null, i32* %501, i32* %502, i32* %503)
  %505 = icmp ne i32 %504, 0
  br i1 %505, label %507, label %506

506:                                              ; preds = %499
  br label %619

507:                                              ; preds = %499
  %508 = load i32, i32* %18, align 4
  %509 = icmp slt i32 %508, 0
  br i1 %509, label %510, label %517

510:                                              ; preds = %507
  %511 = load i32*, i32** %33, align 8
  %512 = load i32, i32* %47, align 4
  %513 = call i32 @BN_set_word(i32* %511, i32 %512)
  %514 = icmp ne i32 %513, 0
  br i1 %514, label %516, label %515

515:                                              ; preds = %510
  br label %619

516:                                              ; preds = %510
  br label %518

517:                                              ; preds = %507
  store i32 1, i32* %47, align 4
  br label %518

518:                                              ; preds = %517, %516
  %519 = load i32*, i32** %37, align 8
  %520 = load i32*, i32** %36, align 8
  %521 = load i32*, i32** %45, align 8
  %522 = call i32 @BN_MONT_CTX_set(i32* %519, i32* %520, i32* %521)
  %523 = icmp ne i32 %522, 0
  br i1 %523, label %525, label %524

524:                                              ; preds = %518
  br label %619

525:                                              ; preds = %518
  br label %526

526:                                              ; preds = %612, %525
  %527 = load i32, i32* %18, align 4
  %528 = icmp sge i32 %527, 0
  br i1 %528, label %529, label %578

529:                                              ; preds = %526
  %530 = load i32, i32* %18, align 4
  %531 = and i32 %530, 255
  %532 = trunc i32 %531 to i8
  %533 = getelementptr inbounds i8, i8* %52, i64 0
  store i8 %532, i8* %533, align 16
  %534 = load i32, i32* %47, align 4
  %535 = lshr i32 %534, 8
  %536 = and i32 %535, 255
  %537 = trunc i32 %536 to i8
  %538 = getelementptr inbounds i8, i8* %52, i64 1
  store i8 %537, i8* %538, align 1
  %539 = load i32, i32* %47, align 4
  %540 = and i32 %539, 255
  %541 = trunc i32 %540 to i8
  %542 = getelementptr inbounds i8, i8* %52, i64 2
  store i8 %541, i8* %542, align 2
  %543 = load i32*, i32** %46, align 8
  %544 = load i32*, i32** %15, align 8
  %545 = call i32 @EVP_DigestInit_ex(i32* %543, i32* %544, i32* null)
  %546 = icmp ne i32 %545, 0
  br i1 %546, label %548, label %547

547:                                              ; preds = %529
  br label %619

548:                                              ; preds = %529
  %549 = load i32*, i32** %46, align 8
  %550 = load i8*, i8** %25, align 8
  %551 = load i64, i64* %17, align 8
  %552 = trunc i64 %551 to i32
  %553 = call i32 @EVP_DigestUpdate(i32* %549, i8* %550, i32 %552)
  %554 = icmp ne i32 %553, 0
  br i1 %554, label %556, label %555

555:                                              ; preds = %548
  br label %619

556:                                              ; preds = %548
  %557 = load i32*, i32** %46, align 8
  %558 = call i32 @EVP_DigestUpdate(i32* %557, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @dsa_builtin_paramgen2.ggen, i64 0, i64 0), i32 4)
  %559 = icmp ne i32 %558, 0
  br i1 %559, label %561, label %560

560:                                              ; preds = %556
  br label %619

561:                                              ; preds = %556
  %562 = load i32*, i32** %46, align 8
  %563 = call i32 @EVP_DigestUpdate(i32* %562, i8* %52, i32 3)
  %564 = icmp ne i32 %563, 0
  br i1 %564, label %566, label %565

565:                                              ; preds = %561
  br label %619

566:                                              ; preds = %561
  %567 = load i32*, i32** %46, align 8
  %568 = call i32 @EVP_DigestFinal_ex(i32* %567, i8* %52, i32* null)
  %569 = icmp ne i32 %568, 0
  br i1 %569, label %571, label %570

570:                                              ; preds = %566
  br label %619

571:                                              ; preds = %566
  %572 = load i32, i32* %28, align 4
  %573 = load i32*, i32** %33, align 8
  %574 = call i32 @BN_bin2bn(i8* %52, i32 %572, i32* %573)
  %575 = icmp ne i32 %574, 0
  br i1 %575, label %577, label %576

576:                                              ; preds = %571
  br label %619

577:                                              ; preds = %571
  br label %578

578:                                              ; preds = %577, %526
  %579 = load i32*, i32** %34, align 8
  %580 = load i32*, i32** %33, align 8
  %581 = load i32*, i32** %29, align 8
  %582 = load i32*, i32** %36, align 8
  %583 = load i32*, i32** %45, align 8
  %584 = load i32*, i32** %37, align 8
  %585 = call i32 @BN_mod_exp_mont(i32* %579, i32* %580, i32* %581, i32* %582, i32* %583, i32* %584)
  %586 = icmp ne i32 %585, 0
  br i1 %586, label %588, label %587

587:                                              ; preds = %578
  br label %619

588:                                              ; preds = %578
  %589 = load i32*, i32** %34, align 8
  %590 = call i32 @BN_is_one(i32* %589)
  %591 = icmp ne i32 %590, 0
  br i1 %591, label %593, label %592

592:                                              ; preds = %588
  br label %613

593:                                              ; preds = %588
  %594 = load i32, i32* %18, align 4
  %595 = icmp slt i32 %594, 0
  br i1 %595, label %596, label %603

596:                                              ; preds = %593
  %597 = load i32*, i32** %33, align 8
  %598 = load i32*, i32** %33, align 8
  %599 = call i32* (...) @BN_value_one()
  %600 = call i32 @BN_add(i32* %597, i32* %598, i32* %599)
  %601 = icmp ne i32 %600, 0
  br i1 %601, label %603, label %602

602:                                              ; preds = %596
  br label %619

603:                                              ; preds = %596, %593
  %604 = load i32, i32* %47, align 4
  %605 = add i32 %604, 1
  store i32 %605, i32* %47, align 4
  %606 = load i32, i32* %18, align 4
  %607 = icmp sge i32 %606, 0
  br i1 %607, label %608, label %612

608:                                              ; preds = %603
  %609 = load i32, i32* %47, align 4
  %610 = icmp ugt i32 %609, 65535
  br i1 %610, label %611, label %612

611:                                              ; preds = %608
  br label %619

612:                                              ; preds = %608, %603
  br label %526

613:                                              ; preds = %592
  %614 = load i32*, i32** %22, align 8
  %615 = call i32 @BN_GENCB_call(i32* %614, i32 3, i32 1)
  %616 = icmp ne i32 %615, 0
  br i1 %616, label %618, label %617

617:                                              ; preds = %613
  br label %619

618:                                              ; preds = %613
  store i32 1, i32* %23, align 4
  br label %619

619:                                              ; preds = %678, %618, %617, %611, %602, %587, %576, %570, %565, %560, %555, %547, %524, %515, %506, %498, %490, %481, %466, %448, %441, %434, %426, %420, %413, %407, %396, %389, %379, %373, %333, %316, %311, %294, %290, %273, %226, %218, %209, %200, %190, %157, %139, %135, %122, %64, %59
  %620 = load i32, i32* %23, align 4
  %621 = icmp eq i32 %620, 1
  br i1 %621, label %622, label %693

622:                                              ; preds = %619
  %623 = load i32*, i32** %36, align 8
  %624 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %625 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %624, i32 0, i32 2
  %626 = load i32*, i32** %625, align 8
  %627 = icmp ne i32* %623, %626
  br i1 %627, label %628, label %638

628:                                              ; preds = %622
  %629 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %630 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %629, i32 0, i32 2
  %631 = load i32*, i32** %630, align 8
  %632 = call i32 @BN_free(i32* %631)
  %633 = load i32*, i32** %36, align 8
  %634 = call i8* @BN_dup(i32* %633)
  %635 = bitcast i8* %634 to i32*
  %636 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %637 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %636, i32 0, i32 2
  store i32* %635, i32** %637, align 8
  br label %638

638:                                              ; preds = %628, %622
  %639 = load i32*, i32** %35, align 8
  %640 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %641 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %640, i32 0, i32 1
  %642 = load i32*, i32** %641, align 8
  %643 = icmp ne i32* %639, %642
  br i1 %643, label %644, label %654

644:                                              ; preds = %638
  %645 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %646 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %645, i32 0, i32 1
  %647 = load i32*, i32** %646, align 8
  %648 = call i32 @BN_free(i32* %647)
  %649 = load i32*, i32** %35, align 8
  %650 = call i8* @BN_dup(i32* %649)
  %651 = bitcast i8* %650 to i32*
  %652 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %653 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %652, i32 0, i32 1
  store i32* %651, i32** %653, align 8
  br label %654

654:                                              ; preds = %644, %638
  %655 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %656 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %655, i32 0, i32 0
  %657 = load i32*, i32** %656, align 8
  %658 = call i32 @BN_free(i32* %657)
  %659 = load i32*, i32** %34, align 8
  %660 = call i8* @BN_dup(i32* %659)
  %661 = bitcast i8* %660 to i32*
  %662 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %663 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %662, i32 0, i32 0
  store i32* %661, i32** %663, align 8
  %664 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %665 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %664, i32 0, i32 2
  %666 = load i32*, i32** %665, align 8
  %667 = icmp eq i32* %666, null
  br i1 %667, label %678, label %668

668:                                              ; preds = %654
  %669 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %670 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %669, i32 0, i32 1
  %671 = load i32*, i32** %670, align 8
  %672 = icmp eq i32* %671, null
  br i1 %672, label %678, label %673

673:                                              ; preds = %668
  %674 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %675 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %674, i32 0, i32 0
  %676 = load i32*, i32** %675, align 8
  %677 = icmp eq i32* %676, null
  br i1 %677, label %678, label %679

678:                                              ; preds = %673, %668, %654
  store i32 -1, i32* %23, align 4
  br label %619

679:                                              ; preds = %673
  %680 = load i32*, i32** %20, align 8
  %681 = icmp ne i32* %680, null
  br i1 %681, label %682, label %685

682:                                              ; preds = %679
  %683 = load i32, i32* %43, align 4
  %684 = load i32*, i32** %20, align 8
  store i32 %683, i32* %684, align 4
  br label %685

685:                                              ; preds = %682, %679
  %686 = load i64*, i64** %21, align 8
  %687 = icmp ne i64* %686, null
  br i1 %687, label %688, label %692

688:                                              ; preds = %685
  %689 = load i32, i32* %47, align 4
  %690 = zext i32 %689 to i64
  %691 = load i64*, i64** %21, align 8
  store i64 %690, i64* %691, align 8
  br label %692

692:                                              ; preds = %688, %685
  br label %693

693:                                              ; preds = %692, %619
  %694 = load i8*, i8** %24, align 8
  %695 = call i32 @OPENSSL_free(i8* %694)
  %696 = load i8*, i8** %19, align 8
  %697 = load i8*, i8** %25, align 8
  %698 = icmp ne i8* %696, %697
  br i1 %698, label %699, label %702

699:                                              ; preds = %693
  %700 = load i8*, i8** %25, align 8
  %701 = call i32 @OPENSSL_free(i8* %700)
  br label %702

702:                                              ; preds = %699, %693
  %703 = load i32*, i32** %45, align 8
  %704 = call i32 @BN_CTX_end(i32* %703)
  %705 = load i32*, i32** %45, align 8
  %706 = call i32 @BN_CTX_free(i32* %705)
  %707 = load i32*, i32** %37, align 8
  %708 = call i32 @BN_MONT_CTX_free(i32* %707)
  %709 = load i32*, i32** %46, align 8
  %710 = call i32 @EVP_MD_CTX_free(i32* %709)
  %711 = load i32, i32* %23, align 4
  %712 = load i8*, i8** %26, align 8
  call void @llvm.stackrestore(i8* %712)
  ret i32 %711
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @EVP_MD_CTX_new(...) #2

declare dso_local i32 @DSAerr(i32, i32) #2

declare dso_local i32* @EVP_sha1(...) #2

declare dso_local i32* @EVP_sha224(...) #2

declare dso_local i32* @EVP_sha256(...) #2

declare dso_local i32 @EVP_MD_size(i32*) #2

declare dso_local i8* @OPENSSL_malloc(i64) #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

declare dso_local i32* @BN_CTX_new(...) #2

declare dso_local i32* @BN_MONT_CTX_new(...) #2

declare dso_local i32 @BN_CTX_start(i32*) #2

declare dso_local i32* @BN_CTX_get(i32*) #2

declare dso_local i32 @BN_lshift(i32*, i32*, i32) #2

declare dso_local i32* @BN_value_one(...) #2

declare dso_local i32 @BN_GENCB_call(i32*, i32, i32) #2

declare dso_local i64 @RAND_bytes(i8*, i64) #2

declare dso_local i32 @EVP_Digest(i8*, i64, i8*, i32*, i32*, i32*) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

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

declare dso_local i32 @EVP_DigestInit_ex(i32*, i32*, i32*) #2

declare dso_local i32 @EVP_DigestUpdate(i32*, i8*, i32) #2

declare dso_local i32 @EVP_DigestFinal_ex(i32*, i8*, i32*) #2

declare dso_local i32 @BN_mod_exp_mont(i32*, i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @BN_is_one(i32*) #2

declare dso_local i32 @BN_free(i32*) #2

declare dso_local i8* @BN_dup(i32*) #2

declare dso_local i32 @OPENSSL_free(i8*) #2

declare dso_local i32 @BN_CTX_end(i32*) #2

declare dso_local i32 @BN_CTX_free(i32*) #2

declare dso_local i32 @BN_MONT_CTX_free(i32*) #2

declare dso_local i32 @EVP_MD_CTX_free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
