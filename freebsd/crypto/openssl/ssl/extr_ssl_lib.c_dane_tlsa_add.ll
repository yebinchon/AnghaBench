; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_ssl_lib.c_dane_tlsa_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_ssl_lib.c_dane_tlsa_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32*, %struct.TYPE_10__*, i32* }
%struct.TYPE_10__ = type { i64* }
%struct.TYPE_11__ = type { i64, i64, i64, i64, i32*, i32* }

@SSL_F_DANE_TLSA_ADD = common dso_local global i32 0, align 4
@SSL_R_DANE_NOT_ENABLED = common dso_local global i32 0, align 4
@SSL_R_DANE_TLSA_BAD_DATA_LENGTH = common dso_local global i32 0, align 4
@DANETLS_USAGE_LAST = common dso_local global i64 0, align 8
@SSL_R_DANE_TLSA_BAD_CERTIFICATE_USAGE = common dso_local global i32 0, align 4
@DANETLS_SELECTOR_LAST = common dso_local global i64 0, align 8
@SSL_R_DANE_TLSA_BAD_SELECTOR = common dso_local global i32 0, align 4
@DANETLS_MATCHING_FULL = common dso_local global i64 0, align 8
@SSL_R_DANE_TLSA_BAD_MATCHING_TYPE = common dso_local global i32 0, align 4
@SSL_R_DANE_TLSA_BAD_DIGEST_LENGTH = common dso_local global i32 0, align 4
@SSL_R_DANE_TLSA_NULL_DATA = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@SSL_R_DANE_TLSA_BAD_CERTIFICATE = common dso_local global i32 0, align 4
@DANETLS_TA_MASK = common dso_local global i32 0, align 4
@SSL_R_DANE_TLSA_BAD_PUBLIC_KEY = common dso_local global i32 0, align 4
@DANETLS_USAGE_DANE_TA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i64, i64, i64, i8*, i64)* @dane_tlsa_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dane_tlsa_add(%struct.TYPE_12__* %0, i64 %1, i64 %2, i64 %3, i8* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  store i32* null, i32** %15, align 8
  %23 = load i64, i64* %13, align 8
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %16, align 4
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %6
  %30 = load i32, i32* @SSL_F_DANE_TLSA_ADD, align 4
  %31 = load i32, i32* @SSL_R_DANE_NOT_ENABLED, align 4
  %32 = call i32 @SSLerr(i32 %30, i32 %31)
  store i32 -1, i32* %7, align 4
  br label %332

33:                                               ; preds = %6
  %34 = load i32, i32* %16, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %33
  %37 = load i64, i64* %13, align 8
  %38 = load i32, i32* %16, align 4
  %39 = sext i32 %38 to i64
  %40 = icmp ne i64 %37, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %36, %33
  %42 = load i32, i32* @SSL_F_DANE_TLSA_ADD, align 4
  %43 = load i32, i32* @SSL_R_DANE_TLSA_BAD_DATA_LENGTH, align 4
  %44 = call i32 @SSLerr(i32 %42, i32 %43)
  store i32 0, i32* %7, align 4
  br label %332

45:                                               ; preds = %36
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* @DANETLS_USAGE_LAST, align 8
  %48 = icmp sgt i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load i32, i32* @SSL_F_DANE_TLSA_ADD, align 4
  %51 = load i32, i32* @SSL_R_DANE_TLSA_BAD_CERTIFICATE_USAGE, align 4
  %52 = call i32 @SSLerr(i32 %50, i32 %51)
  store i32 0, i32* %7, align 4
  br label %332

53:                                               ; preds = %45
  %54 = load i64, i64* %10, align 8
  %55 = load i64, i64* @DANETLS_SELECTOR_LAST, align 8
  %56 = icmp sgt i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load i32, i32* @SSL_F_DANE_TLSA_ADD, align 4
  %59 = load i32, i32* @SSL_R_DANE_TLSA_BAD_SELECTOR, align 4
  %60 = call i32 @SSLerr(i32 %58, i32 %59)
  store i32 0, i32* %7, align 4
  br label %332

61:                                               ; preds = %53
  %62 = load i64, i64* %11, align 8
  %63 = load i64, i64* @DANETLS_MATCHING_FULL, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %76

65:                                               ; preds = %61
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %67 = load i64, i64* %11, align 8
  %68 = call i32* @tlsa_md_get(%struct.TYPE_12__* %66, i64 %67)
  store i32* %68, i32** %15, align 8
  %69 = load i32*, i32** %15, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %65
  %72 = load i32, i32* @SSL_F_DANE_TLSA_ADD, align 4
  %73 = load i32, i32* @SSL_R_DANE_TLSA_BAD_MATCHING_TYPE, align 4
  %74 = call i32 @SSLerr(i32 %72, i32 %73)
  store i32 0, i32* %7, align 4
  br label %332

75:                                               ; preds = %65
  br label %76

76:                                               ; preds = %75, %61
  %77 = load i32*, i32** %15, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %88

79:                                               ; preds = %76
  %80 = load i64, i64* %13, align 8
  %81 = load i32*, i32** %15, align 8
  %82 = call i64 @EVP_MD_size(i32* %81)
  %83 = icmp ne i64 %80, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = load i32, i32* @SSL_F_DANE_TLSA_ADD, align 4
  %86 = load i32, i32* @SSL_R_DANE_TLSA_BAD_DIGEST_LENGTH, align 4
  %87 = call i32 @SSLerr(i32 %85, i32 %86)
  store i32 0, i32* %7, align 4
  br label %332

88:                                               ; preds = %79, %76
  %89 = load i8*, i8** %12, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %95, label %91

91:                                               ; preds = %88
  %92 = load i32, i32* @SSL_F_DANE_TLSA_ADD, align 4
  %93 = load i32, i32* @SSL_R_DANE_TLSA_NULL_DATA, align 4
  %94 = call i32 @SSLerr(i32 %92, i32 %93)
  store i32 0, i32* %7, align 4
  br label %332

95:                                               ; preds = %88
  %96 = call %struct.TYPE_11__* @OPENSSL_zalloc(i32 48)
  store %struct.TYPE_11__* %96, %struct.TYPE_11__** %14, align 8
  %97 = icmp eq %struct.TYPE_11__* %96, null
  br i1 %97, label %98, label %102

98:                                               ; preds = %95
  %99 = load i32, i32* @SSL_F_DANE_TLSA_ADD, align 4
  %100 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %101 = call i32 @SSLerr(i32 %99, i32 %100)
  store i32 -1, i32* %7, align 4
  br label %332

102:                                              ; preds = %95
  %103 = load i64, i64* %9, align 8
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  store i64 %103, i64* %105, align 8
  %106 = load i64, i64* %10, align 8
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 1
  store i64 %106, i64* %108, align 8
  %109 = load i64, i64* %11, align 8
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 2
  store i64 %109, i64* %111, align 8
  %112 = load i64, i64* %13, align 8
  %113 = call i32* @OPENSSL_malloc(i64 %112)
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 5
  store i32* %113, i32** %115, align 8
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 5
  %118 = load i32*, i32** %117, align 8
  %119 = icmp eq i32* %118, null
  br i1 %119, label %120, label %126

120:                                              ; preds = %102
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %122 = call i32 @tlsa_free(%struct.TYPE_11__* %121)
  %123 = load i32, i32* @SSL_F_DANE_TLSA_ADD, align 4
  %124 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %125 = call i32 @SSLerr(i32 %123, i32 %124)
  store i32 -1, i32* %7, align 4
  br label %332

126:                                              ; preds = %102
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 5
  %129 = load i32*, i32** %128, align 8
  %130 = load i8*, i8** %12, align 8
  %131 = load i64, i64* %13, align 8
  %132 = call i32 @memcpy(i32* %129, i8* %130, i64 %131)
  %133 = load i64, i64* %13, align 8
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 3
  store i64 %133, i64* %135, align 8
  %136 = load i64, i64* %11, align 8
  %137 = load i64, i64* @DANETLS_MATCHING_FULL, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %244

139:                                              ; preds = %126
  %140 = load i8*, i8** %12, align 8
  store i8* %140, i8** %19, align 8
  store i32* null, i32** %20, align 8
  store i32* null, i32** %21, align 8
  %141 = load i64, i64* %10, align 8
  switch i64 %141, label %243 [
    i64 129, label %142
    i64 128, label %209
  ]

142:                                              ; preds = %139
  %143 = load i32, i32* %16, align 4
  %144 = call i32 @d2i_X509(i32** %20, i8** %19, i32 %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %158

146:                                              ; preds = %142
  %147 = load i8*, i8** %19, align 8
  %148 = load i8*, i8** %12, align 8
  %149 = icmp ult i8* %147, %148
  br i1 %149, label %158, label %150

150:                                              ; preds = %146
  %151 = load i64, i64* %13, align 8
  %152 = load i8*, i8** %19, align 8
  %153 = load i8*, i8** %12, align 8
  %154 = ptrtoint i8* %152 to i64
  %155 = ptrtoint i8* %153 to i64
  %156 = sub i64 %154, %155
  %157 = icmp ne i64 %151, %156
  br i1 %157, label %158, label %164

158:                                              ; preds = %150, %146, %142
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %160 = call i32 @tlsa_free(%struct.TYPE_11__* %159)
  %161 = load i32, i32* @SSL_F_DANE_TLSA_ADD, align 4
  %162 = load i32, i32* @SSL_R_DANE_TLSA_BAD_CERTIFICATE, align 4
  %163 = call i32 @SSLerr(i32 %161, i32 %162)
  store i32 0, i32* %7, align 4
  br label %332

164:                                              ; preds = %150
  %165 = load i32*, i32** %20, align 8
  %166 = call i32* @X509_get0_pubkey(i32* %165)
  %167 = icmp eq i32* %166, null
  br i1 %167, label %168, label %174

168:                                              ; preds = %164
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %170 = call i32 @tlsa_free(%struct.TYPE_11__* %169)
  %171 = load i32, i32* @SSL_F_DANE_TLSA_ADD, align 4
  %172 = load i32, i32* @SSL_R_DANE_TLSA_BAD_CERTIFICATE, align 4
  %173 = call i32 @SSLerr(i32 %171, i32 %172)
  store i32 0, i32* %7, align 4
  br label %332

174:                                              ; preds = %164
  %175 = load i64, i64* %9, align 8
  %176 = call i32 @DANETLS_USAGE_BIT(i64 %175)
  %177 = load i32, i32* @DANETLS_TA_MASK, align 4
  %178 = and i32 %176, %177
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %174
  %181 = load i32*, i32** %20, align 8
  %182 = call i32 @X509_free(i32* %181)
  br label %243

183:                                              ; preds = %174
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 3
  %186 = load i32*, i32** %185, align 8
  %187 = icmp eq i32* %186, null
  br i1 %187, label %188, label %193

188:                                              ; preds = %183
  %189 = call i32* (...) @sk_X509_new_null()
  %190 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i32 0, i32 3
  store i32* %189, i32** %191, align 8
  %192 = icmp eq i32* %189, null
  br i1 %192, label %200, label %193

193:                                              ; preds = %188, %183
  %194 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i32 0, i32 3
  %196 = load i32*, i32** %195, align 8
  %197 = load i32*, i32** %20, align 8
  %198 = call i32 @sk_X509_push(i32* %196, i32* %197)
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %208, label %200

200:                                              ; preds = %193, %188
  %201 = load i32, i32* @SSL_F_DANE_TLSA_ADD, align 4
  %202 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %203 = call i32 @SSLerr(i32 %201, i32 %202)
  %204 = load i32*, i32** %20, align 8
  %205 = call i32 @X509_free(i32* %204)
  %206 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %207 = call i32 @tlsa_free(%struct.TYPE_11__* %206)
  store i32 -1, i32* %7, align 4
  br label %332

208:                                              ; preds = %193
  br label %243

209:                                              ; preds = %139
  %210 = load i32, i32* %16, align 4
  %211 = call i32 @d2i_PUBKEY(i32** %21, i8** %19, i32 %210)
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %225

213:                                              ; preds = %209
  %214 = load i8*, i8** %19, align 8
  %215 = load i8*, i8** %12, align 8
  %216 = icmp ult i8* %214, %215
  br i1 %216, label %225, label %217

217:                                              ; preds = %213
  %218 = load i64, i64* %13, align 8
  %219 = load i8*, i8** %19, align 8
  %220 = load i8*, i8** %12, align 8
  %221 = ptrtoint i8* %219 to i64
  %222 = ptrtoint i8* %220 to i64
  %223 = sub i64 %221, %222
  %224 = icmp ne i64 %218, %223
  br i1 %224, label %225, label %231

225:                                              ; preds = %217, %213, %209
  %226 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %227 = call i32 @tlsa_free(%struct.TYPE_11__* %226)
  %228 = load i32, i32* @SSL_F_DANE_TLSA_ADD, align 4
  %229 = load i32, i32* @SSL_R_DANE_TLSA_BAD_PUBLIC_KEY, align 4
  %230 = call i32 @SSLerr(i32 %228, i32 %229)
  store i32 0, i32* %7, align 4
  br label %332

231:                                              ; preds = %217
  %232 = load i64, i64* %9, align 8
  %233 = load i64, i64* @DANETLS_USAGE_DANE_TA, align 8
  %234 = icmp eq i64 %232, %233
  br i1 %234, label %235, label %239

235:                                              ; preds = %231
  %236 = load i32*, i32** %21, align 8
  %237 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %238 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %237, i32 0, i32 4
  store i32* %236, i32** %238, align 8
  br label %242

239:                                              ; preds = %231
  %240 = load i32*, i32** %21, align 8
  %241 = call i32 @EVP_PKEY_free(i32* %240)
  br label %242

242:                                              ; preds = %239, %235
  br label %243

243:                                              ; preds = %139, %242, %208, %180
  br label %244

244:                                              ; preds = %243, %126
  %245 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %246 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %245, i32 0, i32 1
  %247 = load i32*, i32** %246, align 8
  %248 = call i32 @sk_danetls_record_num(i32* %247)
  store i32 %248, i32* %18, align 4
  store i32 0, i32* %17, align 4
  br label %249

249:                                              ; preds = %308, %244
  %250 = load i32, i32* %17, align 4
  %251 = load i32, i32* %18, align 4
  %252 = icmp slt i32 %250, %251
  br i1 %252, label %253, label %311

253:                                              ; preds = %249
  %254 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %255 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %254, i32 0, i32 1
  %256 = load i32*, i32** %255, align 8
  %257 = load i32, i32* %17, align 4
  %258 = call %struct.TYPE_11__* @sk_danetls_record_value(i32* %256, i32 %257)
  store %struct.TYPE_11__* %258, %struct.TYPE_11__** %22, align 8
  %259 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %260 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = load i64, i64* %9, align 8
  %263 = icmp sgt i64 %261, %262
  br i1 %263, label %264, label %265

264:                                              ; preds = %253
  br label %308

265:                                              ; preds = %253
  %266 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %267 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %266, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = load i64, i64* %9, align 8
  %270 = icmp slt i64 %268, %269
  br i1 %270, label %271, label %272

271:                                              ; preds = %265
  br label %311

272:                                              ; preds = %265
  %273 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %274 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %273, i32 0, i32 1
  %275 = load i64, i64* %274, align 8
  %276 = load i64, i64* %10, align 8
  %277 = icmp sgt i64 %275, %276
  br i1 %277, label %278, label %279

278:                                              ; preds = %272
  br label %308

279:                                              ; preds = %272
  %280 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %281 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %280, i32 0, i32 1
  %282 = load i64, i64* %281, align 8
  %283 = load i64, i64* %10, align 8
  %284 = icmp slt i64 %282, %283
  br i1 %284, label %285, label %286

285:                                              ; preds = %279
  br label %311

286:                                              ; preds = %279
  %287 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %288 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %287, i32 0, i32 2
  %289 = load %struct.TYPE_10__*, %struct.TYPE_10__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %289, i32 0, i32 0
  %291 = load i64*, i64** %290, align 8
  %292 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %293 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %292, i32 0, i32 2
  %294 = load i64, i64* %293, align 8
  %295 = getelementptr inbounds i64, i64* %291, i64 %294
  %296 = load i64, i64* %295, align 8
  %297 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %298 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %297, i32 0, i32 2
  %299 = load %struct.TYPE_10__*, %struct.TYPE_10__** %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %299, i32 0, i32 0
  %301 = load i64*, i64** %300, align 8
  %302 = load i64, i64* %11, align 8
  %303 = getelementptr inbounds i64, i64* %301, i64 %302
  %304 = load i64, i64* %303, align 8
  %305 = icmp sgt i64 %296, %304
  br i1 %305, label %306, label %307

306:                                              ; preds = %286
  br label %308

307:                                              ; preds = %286
  br label %311

308:                                              ; preds = %306, %278, %264
  %309 = load i32, i32* %17, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %17, align 4
  br label %249

311:                                              ; preds = %307, %285, %271, %249
  %312 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %313 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %312, i32 0, i32 1
  %314 = load i32*, i32** %313, align 8
  %315 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %316 = load i32, i32* %17, align 4
  %317 = call i32 @sk_danetls_record_insert(i32* %314, %struct.TYPE_11__* %315, i32 %316)
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %325, label %319

319:                                              ; preds = %311
  %320 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %321 = call i32 @tlsa_free(%struct.TYPE_11__* %320)
  %322 = load i32, i32* @SSL_F_DANE_TLSA_ADD, align 4
  %323 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %324 = call i32 @SSLerr(i32 %322, i32 %323)
  store i32 -1, i32* %7, align 4
  br label %332

325:                                              ; preds = %311
  %326 = load i64, i64* %9, align 8
  %327 = call i32 @DANETLS_USAGE_BIT(i64 %326)
  %328 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %329 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 8
  %331 = or i32 %330, %327
  store i32 %331, i32* %329, align 8
  store i32 1, i32* %7, align 4
  br label %332

332:                                              ; preds = %325, %319, %225, %200, %168, %158, %120, %98, %91, %84, %71, %57, %49, %41, %29
  %333 = load i32, i32* %7, align 4
  ret i32 %333
}

declare dso_local i32 @SSLerr(i32, i32) #1

declare dso_local i32* @tlsa_md_get(%struct.TYPE_12__*, i64) #1

declare dso_local i64 @EVP_MD_size(i32*) #1

declare dso_local %struct.TYPE_11__* @OPENSSL_zalloc(i32) #1

declare dso_local i32* @OPENSSL_malloc(i64) #1

declare dso_local i32 @tlsa_free(%struct.TYPE_11__*) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

declare dso_local i32 @d2i_X509(i32**, i8**, i32) #1

declare dso_local i32* @X509_get0_pubkey(i32*) #1

declare dso_local i32 @DANETLS_USAGE_BIT(i64) #1

declare dso_local i32 @X509_free(i32*) #1

declare dso_local i32* @sk_X509_new_null(...) #1

declare dso_local i32 @sk_X509_push(i32*, i32*) #1

declare dso_local i32 @d2i_PUBKEY(i32**, i8**, i32) #1

declare dso_local i32 @EVP_PKEY_free(i32*) #1

declare dso_local i32 @sk_danetls_record_num(i32*) #1

declare dso_local %struct.TYPE_11__* @sk_danetls_record_value(i32*, i32) #1

declare dso_local i32 @sk_danetls_record_insert(i32*, %struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
