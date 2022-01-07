; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_extensions_srvr.c_tls_parse_ctos_cookie.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_extensions_srvr.c_tls_parse_ctos_cookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32, %struct.TYPE_15__, %struct.TYPE_20__*, %struct.TYPE_14__*, i32, i32, %struct.TYPE_16__*, %struct.TYPE_18__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_14__ = type { i32 (i64, i32*, i64*)* }
%struct.TYPE_16__ = type { i64 (%struct.TYPE_21__*, i8*, i32)* }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }

@SHA256_DIGEST_LENGTH = common dso_local global i32 0, align 4
@MAX_HRR_SIZE = common dso_local global i32 0, align 4
@TLS1_FLAGS_STATELESS = common dso_local global i32 0, align 4
@SSL_AD_DECODE_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_PARSE_CTOS_COOKIE = common dso_local global i32 0, align 4
@SSL_R_LENGTH_MISMATCH = common dso_local global i32 0, align 4
@EVP_PKEY_HMAC = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_AD_ILLEGAL_PARAMETER = common dso_local global i32 0, align 4
@SSL_R_COOKIE_MISMATCH = common dso_local global i32 0, align 4
@COOKIE_STATE_FORMAT_VERSION = common dso_local global i32 0, align 4
@TLS1_3_VERSION = common dso_local global i32 0, align 4
@SSL_R_BAD_PROTOCOL_VERSION_NUMBER = common dso_local global i32 0, align 4
@SSL_R_BAD_CIPHER = common dso_local global i32 0, align 4
@SSL3_MT_SERVER_HELLO = common dso_local global i32 0, align 4
@TLS1_2_VERSION = common dso_local global i32 0, align 4
@hrrrandom = common dso_local global i32 0, align 4
@SSL3_RANDOM_SIZE = common dso_local global i32 0, align 4
@TLSEXT_TYPE_supported_versions = common dso_local global i32 0, align 4
@TLSEXT_TYPE_key_share = common dso_local global i32 0, align 4
@TLSEXT_TYPE_cookie = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_parse_ctos_cookie(%struct.TYPE_21__* %0, i32* %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %36 = load i32, i32* @SHA256_DIGEST_LENGTH, align 4
  %37 = zext i32 %36 to i64
  %38 = call i8* @llvm.stacksave()
  store i8* %38, i8** %26, align 8
  %39 = alloca i8, i64 %37, align 16
  store i64 %37, i64* %27, align 8
  %40 = load i32, i32* @MAX_HRR_SIZE, align 4
  %41 = zext i32 %40 to i64
  %42 = alloca i8, i64 %41, align 16
  store i64 %41, i64* %28, align 8
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 7
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 0
  %47 = load i64 (%struct.TYPE_21__*, i8*, i32)*, i64 (%struct.TYPE_21__*, i8*, i32)** %46, align 8
  %48 = icmp eq i64 (%struct.TYPE_21__*, i8*, i32)* %47, null
  br i1 %48, label %58, label %49

49:                                               ; preds = %5
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 3
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @TLS1_FLAGS_STATELESS, align 4
  %56 = and i32 %54, %55
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %49, %5
  store i32 1, i32* %6, align 4
  store i32 1, i32* %35, align 4
  br label %454

59:                                               ; preds = %49
  %60 = load i32*, i32** %8, align 8
  %61 = call i32 @PACKET_as_length_prefixed_2(i32* %60, i32* %18)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %59
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %65 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %66 = load i32, i32* @SSL_F_TLS_PARSE_CTOS_COOKIE, align 4
  %67 = load i32, i32* @SSL_R_LENGTH_MISMATCH, align 4
  %68 = call i32 @SSLfatal(%struct.TYPE_21__* %64, i32 %65, i32 %66, i32 %67)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %35, align 4
  br label %454

69:                                               ; preds = %59
  %70 = load i32, i32* %18, align 4
  store i32 %70, i32* %19, align 4
  %71 = call i8* @PACKET_data(i32* %19)
  store i8* %71, i8** %23, align 8
  %72 = call i32 @PACKET_remaining(i32* %19)
  %73 = sext i32 %72 to i64
  store i64 %73, i64* %29, align 8
  %74 = load i64, i64* %29, align 8
  %75 = load i32, i32* @SHA256_DIGEST_LENGTH, align 4
  %76 = sext i32 %75 to i64
  %77 = icmp ult i64 %74, %76
  br i1 %77, label %86, label %78

78:                                               ; preds = %69
  %79 = load i64, i64* %29, align 8
  %80 = load i32, i32* @SHA256_DIGEST_LENGTH, align 4
  %81 = sext i32 %80 to i64
  %82 = sub i64 %79, %81
  %83 = trunc i64 %82 to i32
  %84 = call i32 @PACKET_forward(i32* %19, i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %78, %69
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %88 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %89 = load i32, i32* @SSL_F_TLS_PARSE_CTOS_COOKIE, align 4
  %90 = load i32, i32* @SSL_R_LENGTH_MISMATCH, align 4
  %91 = call i32 @SSLfatal(%struct.TYPE_21__* %87, i32 %88, i32 %89, i32 %90)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %35, align 4
  br label %454

92:                                               ; preds = %78
  %93 = call i8* @PACKET_data(i32* %19)
  store i8* %93, i8** %24, align 8
  %94 = call i32* (...) @EVP_MD_CTX_create()
  store i32* %94, i32** %16, align 8
  %95 = load i32, i32* @EVP_PKEY_HMAC, align 4
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 8
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32* @EVP_PKEY_new_raw_private_key(i32 %95, i32* null, i32 %101, i32 4)
  store i32* %102, i32** %17, align 8
  %103 = load i32*, i32** %16, align 8
  %104 = icmp eq i32* %103, null
  br i1 %104, label %108, label %105

105:                                              ; preds = %92
  %106 = load i32*, i32** %17, align 8
  %107 = icmp eq i32* %106, null
  br i1 %107, label %108, label %118

108:                                              ; preds = %105, %92
  %109 = load i32*, i32** %16, align 8
  %110 = call i32 @EVP_MD_CTX_free(i32* %109)
  %111 = load i32*, i32** %17, align 8
  %112 = call i32 @EVP_PKEY_free(i32* %111)
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %114 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %115 = load i32, i32* @SSL_F_TLS_PARSE_CTOS_COOKIE, align 4
  %116 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %117 = call i32 @SSLfatal(%struct.TYPE_21__* %113, i32 %114, i32 %115, i32 %116)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %35, align 4
  br label %454

118:                                              ; preds = %105
  %119 = load i32, i32* @SHA256_DIGEST_LENGTH, align 4
  %120 = sext i32 %119 to i64
  store i64 %120, i64* %30, align 8
  %121 = load i32*, i32** %16, align 8
  %122 = call i32 (...) @EVP_sha256()
  %123 = load i32*, i32** %17, align 8
  %124 = call i64 @EVP_DigestSignInit(i32* %121, i32* null, i32 %122, i32* null, i32* %123)
  %125 = icmp sle i64 %124, 0
  br i1 %125, label %140, label %126

126:                                              ; preds = %118
  %127 = load i32*, i32** %16, align 8
  %128 = load i8*, i8** %23, align 8
  %129 = load i64, i64* %29, align 8
  %130 = load i32, i32* @SHA256_DIGEST_LENGTH, align 4
  %131 = sext i32 %130 to i64
  %132 = sub i64 %129, %131
  %133 = call i64 @EVP_DigestSign(i32* %127, i8* %39, i64* %30, i8* %128, i64 %132)
  %134 = icmp sle i64 %133, 0
  br i1 %134, label %140, label %135

135:                                              ; preds = %126
  %136 = load i64, i64* %30, align 8
  %137 = load i32, i32* @SHA256_DIGEST_LENGTH, align 4
  %138 = sext i32 %137 to i64
  %139 = icmp ne i64 %136, %138
  br i1 %139, label %140, label %150

140:                                              ; preds = %135, %126, %118
  %141 = load i32*, i32** %16, align 8
  %142 = call i32 @EVP_MD_CTX_free(i32* %141)
  %143 = load i32*, i32** %17, align 8
  %144 = call i32 @EVP_PKEY_free(i32* %143)
  %145 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %146 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %147 = load i32, i32* @SSL_F_TLS_PARSE_CTOS_COOKIE, align 4
  %148 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %149 = call i32 @SSLfatal(%struct.TYPE_21__* %145, i32 %146, i32 %147, i32 %148)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %35, align 4
  br label %454

150:                                              ; preds = %135
  %151 = load i32*, i32** %16, align 8
  %152 = call i32 @EVP_MD_CTX_free(i32* %151)
  %153 = load i32*, i32** %17, align 8
  %154 = call i32 @EVP_PKEY_free(i32* %153)
  %155 = load i8*, i8** %24, align 8
  %156 = load i32, i32* @SHA256_DIGEST_LENGTH, align 4
  %157 = call i64 @CRYPTO_memcmp(i8* %39, i8* %155, i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %150
  %160 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %161 = load i32, i32* @SSL_AD_ILLEGAL_PARAMETER, align 4
  %162 = load i32, i32* @SSL_F_TLS_PARSE_CTOS_COOKIE, align 4
  %163 = load i32, i32* @SSL_R_COOKIE_MISMATCH, align 4
  %164 = call i32 @SSLfatal(%struct.TYPE_21__* %160, i32 %161, i32 %162, i32 %163)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %35, align 4
  br label %454

165:                                              ; preds = %150
  %166 = call i32 @PACKET_get_net_2(i32* %18, i32* %12)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %174, label %168

168:                                              ; preds = %165
  %169 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %170 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %171 = load i32, i32* @SSL_F_TLS_PARSE_CTOS_COOKIE, align 4
  %172 = load i32, i32* @SSL_R_LENGTH_MISMATCH, align 4
  %173 = call i32 @SSLfatal(%struct.TYPE_21__* %169, i32 %170, i32 %171, i32 %172)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %35, align 4
  br label %454

174:                                              ; preds = %165
  %175 = load i32, i32* %12, align 4
  %176 = load i32, i32* @COOKIE_STATE_FORMAT_VERSION, align 4
  %177 = icmp ne i32 %175, %176
  br i1 %177, label %178, label %179

178:                                              ; preds = %174
  store i32 1, i32* %6, align 4
  store i32 1, i32* %35, align 4
  br label %454

179:                                              ; preds = %174
  %180 = call i32 @PACKET_get_net_2(i32* %18, i32* %13)
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %188, label %182

182:                                              ; preds = %179
  %183 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %184 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %185 = load i32, i32* @SSL_F_TLS_PARSE_CTOS_COOKIE, align 4
  %186 = load i32, i32* @SSL_R_LENGTH_MISMATCH, align 4
  %187 = call i32 @SSLfatal(%struct.TYPE_21__* %183, i32 %184, i32 %185, i32 %186)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %35, align 4
  br label %454

188:                                              ; preds = %179
  %189 = load i32, i32* %13, align 4
  %190 = load i32, i32* @TLS1_3_VERSION, align 4
  %191 = icmp ne i32 %189, %190
  br i1 %191, label %192, label %198

192:                                              ; preds = %188
  %193 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %194 = load i32, i32* @SSL_AD_ILLEGAL_PARAMETER, align 4
  %195 = load i32, i32* @SSL_F_TLS_PARSE_CTOS_COOKIE, align 4
  %196 = load i32, i32* @SSL_R_BAD_PROTOCOL_VERSION_NUMBER, align 4
  %197 = call i32 @SSLfatal(%struct.TYPE_21__* %193, i32 %194, i32 %195, i32 %196)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %35, align 4
  br label %454

198:                                              ; preds = %188
  %199 = call i32 @PACKET_get_net_2(i32* %18, i32* %15)
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %207, label %201

201:                                              ; preds = %198
  %202 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %203 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %204 = load i32, i32* @SSL_F_TLS_PARSE_CTOS_COOKIE, align 4
  %205 = load i32, i32* @SSL_R_LENGTH_MISMATCH, align 4
  %206 = call i32 @SSLfatal(%struct.TYPE_21__* %202, i32 %203, i32 %204, i32 %205)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %35, align 4
  br label %454

207:                                              ; preds = %198
  %208 = call i8* @PACKET_data(i32* %18)
  store i8* %208, i8** %25, align 8
  %209 = call i32 @PACKET_forward(i32* %18, i32 2)
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %217, label %211

211:                                              ; preds = %207
  %212 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %213 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %214 = load i32, i32* @SSL_F_TLS_PARSE_CTOS_COOKIE, align 4
  %215 = load i32, i32* @SSL_R_LENGTH_MISMATCH, align 4
  %216 = call i32 @SSLfatal(%struct.TYPE_21__* %212, i32 %213, i32 %214, i32 %215)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %35, align 4
  br label %454

217:                                              ; preds = %207
  %218 = load i32, i32* %15, align 4
  %219 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %220 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %219, i32 0, i32 3
  %221 = load %struct.TYPE_20__*, %struct.TYPE_20__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = icmp ne i32 %218, %223
  br i1 %224, label %236, label %225

225:                                              ; preds = %217
  %226 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %227 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %226, i32 0, i32 3
  %228 = load %struct.TYPE_20__*, %struct.TYPE_20__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %228, i32 0, i32 2
  %230 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %233 = load i8*, i8** %25, align 8
  %234 = call i64 @ssl_get_cipher_by_char(%struct.TYPE_21__* %232, i8* %233, i32 0)
  %235 = icmp ne i64 %231, %234
  br i1 %235, label %236, label %242

236:                                              ; preds = %225, %217
  %237 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %238 = load i32, i32* @SSL_AD_ILLEGAL_PARAMETER, align 4
  %239 = load i32, i32* @SSL_F_TLS_PARSE_CTOS_COOKIE, align 4
  %240 = load i32, i32* @SSL_R_BAD_CIPHER, align 4
  %241 = call i32 @SSLfatal(%struct.TYPE_21__* %237, i32 %238, i32 %239, i32 %240)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %35, align 4
  br label %454

242:                                              ; preds = %225
  %243 = call i32 @PACKET_get_1(i32* %18, i32* %14)
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %258

245:                                              ; preds = %242
  %246 = call i32 @PACKET_get_net_4(i32* %18, i64* %33)
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %258

248:                                              ; preds = %245
  %249 = call i32 @PACKET_get_length_prefixed_2(i32* %18, i32* %20)
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %258

251:                                              ; preds = %248
  %252 = call i32 @PACKET_get_length_prefixed_1(i32* %18, i32* %21)
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %258

254:                                              ; preds = %251
  %255 = call i32 @PACKET_remaining(i32* %18)
  %256 = load i32, i32* @SHA256_DIGEST_LENGTH, align 4
  %257 = icmp ne i32 %255, %256
  br i1 %257, label %258, label %264

258:                                              ; preds = %254, %251, %248, %245, %242
  %259 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %260 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %261 = load i32, i32* @SSL_F_TLS_PARSE_CTOS_COOKIE, align 4
  %262 = load i32, i32* @SSL_R_LENGTH_MISMATCH, align 4
  %263 = call i32 @SSLfatal(%struct.TYPE_21__* %259, i32 %260, i32 %261, i32 %262)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %35, align 4
  br label %454

264:                                              ; preds = %254
  %265 = call i64 @time(i32* null)
  store i64 %265, i64* %34, align 8
  %266 = load i64, i64* %33, align 8
  %267 = load i64, i64* %34, align 8
  %268 = icmp ugt i64 %266, %267
  br i1 %268, label %274, label %269

269:                                              ; preds = %264
  %270 = load i64, i64* %34, align 8
  %271 = load i64, i64* %33, align 8
  %272 = sub i64 %270, %271
  %273 = icmp ugt i64 %272, 600
  br i1 %273, label %274, label %275

274:                                              ; preds = %269, %264
  store i32 1, i32* %6, align 4
  store i32 1, i32* %35, align 4
  br label %454

275:                                              ; preds = %269
  %276 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %277 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %276, i32 0, i32 7
  %278 = load %struct.TYPE_16__*, %struct.TYPE_16__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %278, i32 0, i32 0
  %280 = load i64 (%struct.TYPE_21__*, i8*, i32)*, i64 (%struct.TYPE_21__*, i8*, i32)** %279, align 8
  %281 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %282 = call i8* @PACKET_data(i32* %21)
  %283 = call i32 @PACKET_remaining(i32* %21)
  %284 = call i64 %280(%struct.TYPE_21__* %281, i8* %282, i32 %283)
  %285 = icmp eq i64 %284, 0
  br i1 %285, label %286, label %292

286:                                              ; preds = %275
  %287 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %288 = load i32, i32* @SSL_AD_ILLEGAL_PARAMETER, align 4
  %289 = load i32, i32* @SSL_F_TLS_PARSE_CTOS_COOKIE, align 4
  %290 = load i32, i32* @SSL_R_COOKIE_MISMATCH, align 4
  %291 = call i32 @SSLfatal(%struct.TYPE_21__* %287, i32 %288, i32 %289, i32 %290)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %35, align 4
  br label %454

292:                                              ; preds = %275
  %293 = trunc i64 %41 to i32
  %294 = call i32 @WPACKET_init_static_len(i32* %22, i8* %42, i32 %293, i32 0)
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %302, label %296

296:                                              ; preds = %292
  %297 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %298 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %299 = load i32, i32* @SSL_F_TLS_PARSE_CTOS_COOKIE, align 4
  %300 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %301 = call i32 @SSLfatal(%struct.TYPE_21__* %297, i32 %298, i32 %299, i32 %300)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %35, align 4
  br label %454

302:                                              ; preds = %292
  %303 = load i32, i32* @SSL3_MT_SERVER_HELLO, align 4
  %304 = call i32 @WPACKET_put_bytes_u8(i32* %22, i32 %303)
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %347

306:                                              ; preds = %302
  %307 = call i32 @WPACKET_start_sub_packet_u24(i32* %22)
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %347

309:                                              ; preds = %306
  %310 = load i32, i32* @TLS1_2_VERSION, align 4
  %311 = call i32 @WPACKET_put_bytes_u16(i32* %22, i32 %310)
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %347

313:                                              ; preds = %309
  %314 = load i32, i32* @hrrrandom, align 4
  %315 = load i32, i32* @SSL3_RANDOM_SIZE, align 4
  %316 = call i32 @WPACKET_memcpy(i32* %22, i32 %314, i32 %315)
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %347

318:                                              ; preds = %313
  %319 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %320 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %319, i32 0, i32 6
  %321 = load i32, i32* %320, align 4
  %322 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %323 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %322, i32 0, i32 5
  %324 = load i32, i32* %323, align 8
  %325 = call i32 @WPACKET_sub_memcpy_u8(i32* %22, i32 %321, i32 %324)
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %347

327:                                              ; preds = %318
  %328 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %329 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %328, i32 0, i32 4
  %330 = load %struct.TYPE_14__*, %struct.TYPE_14__** %329, align 8
  %331 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %330, i32 0, i32 0
  %332 = load i32 (i64, i32*, i64*)*, i32 (i64, i32*, i64*)** %331, align 8
  %333 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %334 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %333, i32 0, i32 3
  %335 = load %struct.TYPE_20__*, %struct.TYPE_20__** %334, align 8
  %336 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %335, i32 0, i32 2
  %337 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %336, i32 0, i32 0
  %338 = load i64, i64* %337, align 8
  %339 = call i32 %332(i64 %338, i32* %22, i64* %32)
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %347

341:                                              ; preds = %327
  %342 = call i32 @WPACKET_put_bytes_u8(i32* %22, i32 0)
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %347

344:                                              ; preds = %341
  %345 = call i32 @WPACKET_start_sub_packet_u16(i32* %22)
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %354, label %347

347:                                              ; preds = %344, %341, %327, %318, %313, %309, %306, %302
  %348 = call i32 @WPACKET_cleanup(i32* %22)
  %349 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %350 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %351 = load i32, i32* @SSL_F_TLS_PARSE_CTOS_COOKIE, align 4
  %352 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %353 = call i32 @SSLfatal(%struct.TYPE_21__* %349, i32 %350, i32 %351, i32 %352)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %35, align 4
  br label %454

354:                                              ; preds = %344
  %355 = load i32, i32* @TLSEXT_TYPE_supported_versions, align 4
  %356 = call i32 @WPACKET_put_bytes_u16(i32* %22, i32 %355)
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %370

358:                                              ; preds = %354
  %359 = call i32 @WPACKET_start_sub_packet_u16(i32* %22)
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %370

361:                                              ; preds = %358
  %362 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %363 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 8
  %365 = call i32 @WPACKET_put_bytes_u16(i32* %22, i32 %364)
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %370

367:                                              ; preds = %361
  %368 = call i32 @WPACKET_close(i32* %22)
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %377, label %370

370:                                              ; preds = %367, %361, %358, %354
  %371 = call i32 @WPACKET_cleanup(i32* %22)
  %372 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %373 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %374 = load i32, i32* @SSL_F_TLS_PARSE_CTOS_COOKIE, align 4
  %375 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %376 = call i32 @SSLfatal(%struct.TYPE_21__* %372, i32 %373, i32 %374, i32 %375)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %35, align 4
  br label %454

377:                                              ; preds = %367
  %378 = load i32, i32* %14, align 4
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %406

380:                                              ; preds = %377
  %381 = load i32, i32* @TLSEXT_TYPE_key_share, align 4
  %382 = call i32 @WPACKET_put_bytes_u16(i32* %22, i32 %381)
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %398

384:                                              ; preds = %380
  %385 = call i32 @WPACKET_start_sub_packet_u16(i32* %22)
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %387, label %398

387:                                              ; preds = %384
  %388 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %389 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %388, i32 0, i32 3
  %390 = load %struct.TYPE_20__*, %struct.TYPE_20__** %389, align 8
  %391 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %390, i32 0, i32 1
  %392 = load i32, i32* %391, align 4
  %393 = call i32 @WPACKET_put_bytes_u16(i32* %22, i32 %392)
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %398

395:                                              ; preds = %387
  %396 = call i32 @WPACKET_close(i32* %22)
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %405, label %398

398:                                              ; preds = %395, %387, %384, %380
  %399 = call i32 @WPACKET_cleanup(i32* %22)
  %400 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %401 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %402 = load i32, i32* @SSL_F_TLS_PARSE_CTOS_COOKIE, align 4
  %403 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %404 = call i32 @SSLfatal(%struct.TYPE_21__* %400, i32 %401, i32 %402, i32 %403)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %35, align 4
  br label %454

405:                                              ; preds = %395
  br label %406

406:                                              ; preds = %405, %377
  %407 = load i32, i32* @TLSEXT_TYPE_cookie, align 4
  %408 = call i32 @WPACKET_put_bytes_u16(i32* %22, i32 %407)
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %410, label %433

410:                                              ; preds = %406
  %411 = call i32 @WPACKET_start_sub_packet_u16(i32* %22)
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %413, label %433

413:                                              ; preds = %410
  %414 = load i8*, i8** %23, align 8
  %415 = load i64, i64* %29, align 8
  %416 = call i32 @WPACKET_sub_memcpy_u16(i32* %22, i8* %414, i64 %415)
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %418, label %433

418:                                              ; preds = %413
  %419 = call i32 @WPACKET_close(i32* %22)
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %421, label %433

421:                                              ; preds = %418
  %422 = call i32 @WPACKET_close(i32* %22)
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %424, label %433

424:                                              ; preds = %421
  %425 = call i32 @WPACKET_close(i32* %22)
  %426 = icmp ne i32 %425, 0
  br i1 %426, label %427, label %433

427:                                              ; preds = %424
  %428 = call i32 @WPACKET_get_total_written(i32* %22, i64* %31)
  %429 = icmp ne i32 %428, 0
  br i1 %429, label %430, label %433

430:                                              ; preds = %427
  %431 = call i32 @WPACKET_finish(i32* %22)
  %432 = icmp ne i32 %431, 0
  br i1 %432, label %440, label %433

433:                                              ; preds = %430, %427, %424, %421, %418, %413, %410, %406
  %434 = call i32 @WPACKET_cleanup(i32* %22)
  %435 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %436 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %437 = load i32, i32* @SSL_F_TLS_PARSE_CTOS_COOKIE, align 4
  %438 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %439 = call i32 @SSLfatal(%struct.TYPE_21__* %435, i32 %436, i32 %437, i32 %438)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %35, align 4
  br label %454

440:                                              ; preds = %430
  %441 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %442 = call i8* @PACKET_data(i32* %20)
  %443 = call i32 @PACKET_remaining(i32* %20)
  %444 = load i64, i64* %31, align 8
  %445 = call i32 @create_synthetic_message_hash(%struct.TYPE_21__* %441, i8* %442, i32 %443, i8* %42, i64 %444)
  %446 = icmp ne i32 %445, 0
  br i1 %446, label %448, label %447

447:                                              ; preds = %440
  store i32 0, i32* %6, align 4
  store i32 1, i32* %35, align 4
  br label %454

448:                                              ; preds = %440
  %449 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %450 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %449, i32 0, i32 1
  store i32 1, i32* %450, align 4
  %451 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %452 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %451, i32 0, i32 2
  %453 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %452, i32 0, i32 0
  store i32 1, i32* %453, align 8
  store i32 1, i32* %6, align 4
  store i32 1, i32* %35, align 4
  br label %454

454:                                              ; preds = %448, %447, %433, %398, %370, %347, %296, %286, %274, %258, %236, %211, %201, %192, %182, %178, %168, %159, %140, %108, %86, %63, %58
  %455 = load i8*, i8** %26, align 8
  call void @llvm.stackrestore(i8* %455)
  %456 = load i32, i32* %6, align 4
  ret i32 %456
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @PACKET_as_length_prefixed_2(i32*, i32*) #2

declare dso_local i32 @SSLfatal(%struct.TYPE_21__*, i32, i32, i32) #2

declare dso_local i8* @PACKET_data(i32*) #2

declare dso_local i32 @PACKET_remaining(i32*) #2

declare dso_local i32 @PACKET_forward(i32*, i32) #2

declare dso_local i32* @EVP_MD_CTX_create(...) #2

declare dso_local i32* @EVP_PKEY_new_raw_private_key(i32, i32*, i32, i32) #2

declare dso_local i32 @EVP_MD_CTX_free(i32*) #2

declare dso_local i32 @EVP_PKEY_free(i32*) #2

declare dso_local i64 @EVP_DigestSignInit(i32*, i32*, i32, i32*, i32*) #2

declare dso_local i32 @EVP_sha256(...) #2

declare dso_local i64 @EVP_DigestSign(i32*, i8*, i64*, i8*, i64) #2

declare dso_local i64 @CRYPTO_memcmp(i8*, i8*, i32) #2

declare dso_local i32 @PACKET_get_net_2(i32*, i32*) #2

declare dso_local i64 @ssl_get_cipher_by_char(%struct.TYPE_21__*, i8*, i32) #2

declare dso_local i32 @PACKET_get_1(i32*, i32*) #2

declare dso_local i32 @PACKET_get_net_4(i32*, i64*) #2

declare dso_local i32 @PACKET_get_length_prefixed_2(i32*, i32*) #2

declare dso_local i32 @PACKET_get_length_prefixed_1(i32*, i32*) #2

declare dso_local i64 @time(i32*) #2

declare dso_local i32 @WPACKET_init_static_len(i32*, i8*, i32, i32) #2

declare dso_local i32 @WPACKET_put_bytes_u8(i32*, i32) #2

declare dso_local i32 @WPACKET_start_sub_packet_u24(i32*) #2

declare dso_local i32 @WPACKET_put_bytes_u16(i32*, i32) #2

declare dso_local i32 @WPACKET_memcpy(i32*, i32, i32) #2

declare dso_local i32 @WPACKET_sub_memcpy_u8(i32*, i32, i32) #2

declare dso_local i32 @WPACKET_start_sub_packet_u16(i32*) #2

declare dso_local i32 @WPACKET_cleanup(i32*) #2

declare dso_local i32 @WPACKET_close(i32*) #2

declare dso_local i32 @WPACKET_sub_memcpy_u16(i32*, i8*, i64) #2

declare dso_local i32 @WPACKET_get_total_written(i32*, i64*) #2

declare dso_local i32 @WPACKET_finish(i32*) #2

declare dso_local i32 @create_synthetic_message_hash(%struct.TYPE_21__*, i8*, i32, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
