; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rsa/extr_rsa_ossl.c_rsa_ossl_private_encrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rsa/extr_rsa_ossl.c_rsa_ossl_private_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, i32, i32, %struct.TYPE_6__*, i32*, i32*, i32*, i32*, i32*, i32*, i32 }
%struct.TYPE_6__ = type { i32 (i32*, i32*, i32*, i32, i32*, i32)*, i32 (i32*, i32*, %struct.TYPE_7__*, i32*)* }

@RSA_F_RSA_OSSL_PRIVATE_ENCRYPT = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@RSA_R_UNKNOWN_PADDING_TYPE = common dso_local global i32 0, align 4
@RSA_R_DATA_TOO_LARGE_FOR_MODULUS = common dso_local global i32 0, align 4
@RSA_FLAG_CACHE_PUBLIC = common dso_local global i32 0, align 4
@RSA_FLAG_NO_BLINDING = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@RSA_FLAG_EXT_PKEY = common dso_local global i32 0, align 4
@RSA_ASN1_VERSION_MULTI = common dso_local global i64 0, align 8
@RSA_R_MISSING_PRIVATE_KEY = common dso_local global i32 0, align 4
@BN_FLG_CONSTTIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*, %struct.TYPE_7__*, i32)* @rsa_ossl_private_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsa_ossl_private_encrypt(i32 %0, i8* %1, i8* %2, %struct.TYPE_7__* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %15, align 4
  store i32 -1, i32* %16, align 4
  store i8* null, i8** %17, align 8
  store i32* null, i32** %18, align 8
  store i32 0, i32* %19, align 4
  store i32* null, i32** %20, align 8
  store i32* null, i32** %21, align 8
  %23 = call i32* (...) @BN_CTX_new()
  store i32* %23, i32** %18, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %5
  br label %299

26:                                               ; preds = %5
  %27 = load i32*, i32** %18, align 8
  %28 = call i32 @BN_CTX_start(i32* %27)
  %29 = load i32*, i32** %18, align 8
  %30 = call i32* @BN_CTX_get(i32* %29)
  store i32* %30, i32** %11, align 8
  %31 = load i32*, i32** %18, align 8
  %32 = call i32* @BN_CTX_get(i32* %31)
  store i32* %32, i32** %12, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @BN_num_bytes(i32 %35)
  store i32 %36, i32* %15, align 4
  %37 = load i32, i32* %15, align 4
  %38 = call i8* @OPENSSL_malloc(i32 %37)
  store i8* %38, i8** %17, align 8
  %39 = load i32*, i32** %12, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %26
  %42 = load i8*, i8** %17, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %41, %26
  %45 = load i32, i32* @RSA_F_RSA_OSSL_PRIVATE_ENCRYPT, align 4
  %46 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %47 = call i32 @RSAerr(i32 %45, i32 %46)
  br label %299

48:                                               ; preds = %41
  %49 = load i32, i32* %10, align 4
  switch i32 %49, label %69 [
    i32 130, label %50
    i32 128, label %56
    i32 131, label %62
    i32 129, label %68
  ]

50:                                               ; preds = %48
  %51 = load i8*, i8** %17, align 8
  %52 = load i32, i32* %15, align 4
  %53 = load i8*, i8** %7, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @RSA_padding_add_PKCS1_type_1(i8* %51, i32 %52, i8* %53, i32 %54)
  store i32 %55, i32* %14, align 4
  br label %73

56:                                               ; preds = %48
  %57 = load i8*, i8** %17, align 8
  %58 = load i32, i32* %15, align 4
  %59 = load i8*, i8** %7, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @RSA_padding_add_X931(i8* %57, i32 %58, i8* %59, i32 %60)
  store i32 %61, i32* %14, align 4
  br label %73

62:                                               ; preds = %48
  %63 = load i8*, i8** %17, align 8
  %64 = load i32, i32* %15, align 4
  %65 = load i8*, i8** %7, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @RSA_padding_add_none(i8* %63, i32 %64, i8* %65, i32 %66)
  store i32 %67, i32* %14, align 4
  br label %73

68:                                               ; preds = %48
  br label %69

69:                                               ; preds = %48, %68
  %70 = load i32, i32* @RSA_F_RSA_OSSL_PRIVATE_ENCRYPT, align 4
  %71 = load i32, i32* @RSA_R_UNKNOWN_PADDING_TYPE, align 4
  %72 = call i32 @RSAerr(i32 %70, i32 %71)
  br label %299

73:                                               ; preds = %62, %56, %50
  %74 = load i32, i32* %14, align 4
  %75 = icmp sle i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  br label %299

77:                                               ; preds = %73
  %78 = load i8*, i8** %17, align 8
  %79 = load i32, i32* %15, align 4
  %80 = load i32*, i32** %11, align 8
  %81 = call i32* @BN_bin2bn(i8* %78, i32 %79, i32* %80)
  %82 = icmp eq i32* %81, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  br label %299

84:                                               ; preds = %77
  %85 = load i32*, i32** %11, align 8
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call i64 @BN_ucmp(i32* %85, i32 %88)
  %90 = icmp sge i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %84
  %92 = load i32, i32* @RSA_F_RSA_OSSL_PRIVATE_ENCRYPT, align 4
  %93 = load i32, i32* @RSA_R_DATA_TOO_LARGE_FOR_MODULUS, align 4
  %94 = call i32 @RSAerr(i32 %92, i32 %93)
  br label %299

95:                                               ; preds = %84
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @RSA_FLAG_CACHE_PUBLIC, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %116

102:                                              ; preds = %95
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 3
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 11
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load i32*, i32** %18, align 8
  %112 = call i32 @BN_MONT_CTX_set_locked(i32* %104, i32 %107, i32 %110, i32* %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %102
  br label %299

115:                                              ; preds = %102
  br label %116

116:                                              ; preds = %115, %95
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @RSA_FLAG_NO_BLINDING, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %134, label %123

123:                                              ; preds = %116
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %125 = load i32*, i32** %18, align 8
  %126 = call i32* @rsa_get_blinding(%struct.TYPE_7__* %124, i32* %19, i32* %125)
  store i32* %126, i32** %21, align 8
  %127 = load i32*, i32** %21, align 8
  %128 = icmp eq i32* %127, null
  br i1 %128, label %129, label %133

129:                                              ; preds = %123
  %130 = load i32, i32* @RSA_F_RSA_OSSL_PRIVATE_ENCRYPT, align 4
  %131 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %132 = call i32 @RSAerr(i32 %130, i32 %131)
  br label %299

133:                                              ; preds = %123
  br label %134

134:                                              ; preds = %133, %116
  %135 = load i32*, i32** %21, align 8
  %136 = icmp ne i32* %135, null
  br i1 %136, label %137, label %157

137:                                              ; preds = %134
  %138 = load i32, i32* %19, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %148, label %140

140:                                              ; preds = %137
  %141 = load i32*, i32** %18, align 8
  %142 = call i32* @BN_CTX_get(i32* %141)
  store i32* %142, i32** %20, align 8
  %143 = icmp eq i32* %142, null
  br i1 %143, label %144, label %148

144:                                              ; preds = %140
  %145 = load i32, i32* @RSA_F_RSA_OSSL_PRIVATE_ENCRYPT, align 4
  %146 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %147 = call i32 @RSAerr(i32 %145, i32 %146)
  br label %299

148:                                              ; preds = %140, %137
  %149 = load i32*, i32** %21, align 8
  %150 = load i32*, i32** %11, align 8
  %151 = load i32*, i32** %20, align 8
  %152 = load i32*, i32** %18, align 8
  %153 = call i32 @rsa_blinding_convert(i32* %149, i32* %150, i32* %151, i32* %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %156, label %155

155:                                              ; preds = %148
  br label %299

156:                                              ; preds = %148
  br label %157

157:                                              ; preds = %156, %134
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @RSA_FLAG_EXT_PKEY, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %195, label %164

164:                                              ; preds = %157
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @RSA_ASN1_VERSION_MULTI, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %195, label %170

170:                                              ; preds = %164
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 10
  %173 = load i32*, i32** %172, align 8
  %174 = icmp ne i32* %173, null
  br i1 %174, label %175, label %209

175:                                              ; preds = %170
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 9
  %178 = load i32*, i32** %177, align 8
  %179 = icmp ne i32* %178, null
  br i1 %179, label %180, label %209

180:                                              ; preds = %175
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 8
  %183 = load i32*, i32** %182, align 8
  %184 = icmp ne i32* %183, null
  br i1 %184, label %185, label %209

185:                                              ; preds = %180
  %186 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 7
  %188 = load i32*, i32** %187, align 8
  %189 = icmp ne i32* %188, null
  br i1 %189, label %190, label %209

190:                                              ; preds = %185
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 6
  %193 = load i32*, i32** %192, align 8
  %194 = icmp ne i32* %193, null
  br i1 %194, label %195, label %209

195:                                              ; preds = %190, %164, %157
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 4
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 1
  %200 = load i32 (i32*, i32*, %struct.TYPE_7__*, i32*)*, i32 (i32*, i32*, %struct.TYPE_7__*, i32*)** %199, align 8
  %201 = load i32*, i32** %12, align 8
  %202 = load i32*, i32** %11, align 8
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %204 = load i32*, i32** %18, align 8
  %205 = call i32 %200(i32* %201, i32* %202, %struct.TYPE_7__* %203, i32* %204)
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %208, label %207

207:                                              ; preds = %195
  br label %299

208:                                              ; preds = %195
  br label %258

209:                                              ; preds = %190, %185, %180, %175, %170
  %210 = call i32* (...) @BN_new()
  store i32* %210, i32** %22, align 8
  %211 = load i32*, i32** %22, align 8
  %212 = icmp eq i32* %211, null
  br i1 %212, label %213, label %217

213:                                              ; preds = %209
  %214 = load i32, i32* @RSA_F_RSA_OSSL_PRIVATE_ENCRYPT, align 4
  %215 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %216 = call i32 @RSAerr(i32 %214, i32 %215)
  br label %299

217:                                              ; preds = %209
  %218 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 5
  %220 = load i32*, i32** %219, align 8
  %221 = icmp eq i32* %220, null
  br i1 %221, label %222, label %228

222:                                              ; preds = %217
  %223 = load i32, i32* @RSA_F_RSA_OSSL_PRIVATE_ENCRYPT, align 4
  %224 = load i32, i32* @RSA_R_MISSING_PRIVATE_KEY, align 4
  %225 = call i32 @RSAerr(i32 %223, i32 %224)
  %226 = load i32*, i32** %22, align 8
  %227 = call i32 @BN_free(i32* %226)
  br label %299

228:                                              ; preds = %217
  %229 = load i32*, i32** %22, align 8
  %230 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %230, i32 0, i32 5
  %232 = load i32*, i32** %231, align 8
  %233 = load i32, i32* @BN_FLG_CONSTTIME, align 4
  %234 = call i32 @BN_with_flags(i32* %229, i32* %232, i32 %233)
  %235 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %236 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %235, i32 0, i32 4
  %237 = load %struct.TYPE_6__*, %struct.TYPE_6__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 0
  %239 = load i32 (i32*, i32*, i32*, i32, i32*, i32)*, i32 (i32*, i32*, i32*, i32, i32*, i32)** %238, align 8
  %240 = load i32*, i32** %12, align 8
  %241 = load i32*, i32** %11, align 8
  %242 = load i32*, i32** %22, align 8
  %243 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %244 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 8
  %246 = load i32*, i32** %18, align 8
  %247 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %248 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %247, i32 0, i32 3
  %249 = load i32, i32* %248, align 4
  %250 = call i32 %239(i32* %240, i32* %241, i32* %242, i32 %245, i32* %246, i32 %249)
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %255, label %252

252:                                              ; preds = %228
  %253 = load i32*, i32** %22, align 8
  %254 = call i32 @BN_free(i32* %253)
  br label %299

255:                                              ; preds = %228
  %256 = load i32*, i32** %22, align 8
  %257 = call i32 @BN_free(i32* %256)
  br label %258

258:                                              ; preds = %255, %208
  %259 = load i32*, i32** %21, align 8
  %260 = icmp ne i32* %259, null
  br i1 %260, label %261, label %270

261:                                              ; preds = %258
  %262 = load i32*, i32** %21, align 8
  %263 = load i32*, i32** %12, align 8
  %264 = load i32*, i32** %20, align 8
  %265 = load i32*, i32** %18, align 8
  %266 = call i32 @rsa_blinding_invert(i32* %262, i32* %263, i32* %264, i32* %265)
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %269, label %268

268:                                              ; preds = %261
  br label %299

269:                                              ; preds = %261
  br label %270

270:                                              ; preds = %269, %258
  %271 = load i32, i32* %10, align 4
  %272 = icmp eq i32 %271, 128
  br i1 %272, label %273, label %292

273:                                              ; preds = %270
  %274 = load i32*, i32** %11, align 8
  %275 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %276 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %275, i32 0, i32 2
  %277 = load i32, i32* %276, align 8
  %278 = load i32*, i32** %12, align 8
  %279 = call i32 @BN_sub(i32* %274, i32 %277, i32* %278)
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %282, label %281

281:                                              ; preds = %273
  br label %299

282:                                              ; preds = %273
  %283 = load i32*, i32** %12, align 8
  %284 = load i32*, i32** %11, align 8
  %285 = call i64 @BN_cmp(i32* %283, i32* %284)
  %286 = icmp sgt i64 %285, 0
  br i1 %286, label %287, label %289

287:                                              ; preds = %282
  %288 = load i32*, i32** %11, align 8
  store i32* %288, i32** %13, align 8
  br label %291

289:                                              ; preds = %282
  %290 = load i32*, i32** %12, align 8
  store i32* %290, i32** %13, align 8
  br label %291

291:                                              ; preds = %289, %287
  br label %294

292:                                              ; preds = %270
  %293 = load i32*, i32** %12, align 8
  store i32* %293, i32** %13, align 8
  br label %294

294:                                              ; preds = %292, %291
  %295 = load i32*, i32** %13, align 8
  %296 = load i8*, i8** %8, align 8
  %297 = load i32, i32* %15, align 4
  %298 = call i32 @BN_bn2binpad(i32* %295, i8* %296, i32 %297)
  store i32 %298, i32* %16, align 4
  br label %299

299:                                              ; preds = %294, %281, %268, %252, %222, %213, %207, %155, %144, %129, %114, %91, %83, %76, %69, %44, %25
  %300 = load i32*, i32** %18, align 8
  %301 = call i32 @BN_CTX_end(i32* %300)
  %302 = load i32*, i32** %18, align 8
  %303 = call i32 @BN_CTX_free(i32* %302)
  %304 = load i8*, i8** %17, align 8
  %305 = load i32, i32* %15, align 4
  %306 = call i32 @OPENSSL_clear_free(i8* %304, i32 %305)
  %307 = load i32, i32* %16, align 4
  ret i32 %307
}

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i32* @BN_CTX_get(i32*) #1

declare dso_local i32 @BN_num_bytes(i32) #1

declare dso_local i8* @OPENSSL_malloc(i32) #1

declare dso_local i32 @RSAerr(i32, i32) #1

declare dso_local i32 @RSA_padding_add_PKCS1_type_1(i8*, i32, i8*, i32) #1

declare dso_local i32 @RSA_padding_add_X931(i8*, i32, i8*, i32) #1

declare dso_local i32 @RSA_padding_add_none(i8*, i32, i8*, i32) #1

declare dso_local i32* @BN_bin2bn(i8*, i32, i32*) #1

declare dso_local i64 @BN_ucmp(i32*, i32) #1

declare dso_local i32 @BN_MONT_CTX_set_locked(i32*, i32, i32, i32*) #1

declare dso_local i32* @rsa_get_blinding(%struct.TYPE_7__*, i32*, i32*) #1

declare dso_local i32 @rsa_blinding_convert(i32*, i32*, i32*, i32*) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32 @BN_free(i32*) #1

declare dso_local i32 @BN_with_flags(i32*, i32*, i32) #1

declare dso_local i32 @rsa_blinding_invert(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_sub(i32*, i32, i32*) #1

declare dso_local i64 @BN_cmp(i32*, i32*) #1

declare dso_local i32 @BN_bn2binpad(i32*, i8*, i32) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

declare dso_local i32 @OPENSSL_clear_free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
