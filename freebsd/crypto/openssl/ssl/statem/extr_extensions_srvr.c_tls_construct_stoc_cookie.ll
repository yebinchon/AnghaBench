; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_extensions_srvr.c_tls_construct_stoc_cookie.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_extensions_srvr.c_tls_construct_stoc_cookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_18__*, %struct.TYPE_16__*, %struct.TYPE_15__*, %struct.TYPE_13__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i64 (%struct.TYPE_19__*, i8*, i64*)* }
%struct.TYPE_15__ = type { i32, i32*, %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 (i32, i32*, i64*)* }

@EXT_RETURN_FAIL = common dso_local global i32 0, align 4
@TLS1_FLAGS_STATELESS = common dso_local global i32 0, align 4
@EXT_RETURN_NOT_SENT = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_CONSTRUCT_STOC_COOKIE = common dso_local global i32 0, align 4
@SSL_R_NO_COOKIE_CALLBACK_SET = common dso_local global i32 0, align 4
@TLSEXT_TYPE_cookie = common dso_local global i32 0, align 4
@MAX_COOKIE_SIZE = common dso_local global i64 0, align 8
@COOKIE_STATE_FORMAT_VERSION = common dso_local global i32 0, align 4
@TLS1_3_VERSION = common dso_local global i32 0, align 4
@EVP_MAX_MD_SIZE = common dso_local global i64 0, align 8
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_COOKIE_LENGTH = common dso_local global i64 0, align 8
@SSL_R_COOKIE_GEN_CALLBACK_FAILURE = common dso_local global i32 0, align 4
@SHA256_DIGEST_LENGTH = common dso_local global i64 0, align 8
@EVP_PKEY_HMAC = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@EXT_RETURN_SENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_construct_stoc_cookie(%struct.TYPE_19__* %0, i32* %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %28 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %28, i32* %27, align 4
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @TLS1_FLAGS_STATELESS, align 4
  %35 = and i32 %33, %34
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %5
  %38 = load i32, i32* @EXT_RETURN_NOT_SENT, align 4
  store i32 %38, i32* %6, align 4
  br label %354

39:                                               ; preds = %5
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 0
  %44 = load i64 (%struct.TYPE_19__*, i8*, i64*)*, i64 (%struct.TYPE_19__*, i8*, i64*)** %43, align 8
  %45 = icmp eq i64 (%struct.TYPE_19__*, i8*, i64*)* %44, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %39
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %48 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %49 = load i32, i32* @SSL_F_TLS_CONSTRUCT_STOC_COOKIE, align 4
  %50 = load i32, i32* @SSL_R_NO_COOKIE_CALLBACK_SET, align 4
  %51 = call i32 @SSLfatal(%struct.TYPE_19__* %47, i32 %48, i32 %49, i32 %50)
  %52 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %52, i32* %6, align 4
  br label %354

53:                                               ; preds = %39
  %54 = load i32*, i32** %8, align 8
  %55 = load i32, i32* @TLSEXT_TYPE_cookie, align 4
  %56 = call i32 @WPACKET_put_bytes_u16(i32* %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %135

58:                                               ; preds = %53
  %59 = load i32*, i32** %8, align 8
  %60 = call i32 @WPACKET_start_sub_packet_u16(i32* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %135

62:                                               ; preds = %58
  %63 = load i32*, i32** %8, align 8
  %64 = call i32 @WPACKET_start_sub_packet_u16(i32* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %135

66:                                               ; preds = %62
  %67 = load i32*, i32** %8, align 8
  %68 = call i32 @WPACKET_get_total_written(i32* %67, i64* %19)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %135

70:                                               ; preds = %66
  %71 = load i32*, i32** %8, align 8
  %72 = load i64, i64* @MAX_COOKIE_SIZE, align 8
  %73 = call i32 @WPACKET_reserve_bytes(i32* %71, i64 %72, i8** %16)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %135

75:                                               ; preds = %70
  %76 = load i32*, i32** %8, align 8
  %77 = load i32, i32* @COOKIE_STATE_FORMAT_VERSION, align 4
  %78 = call i32 @WPACKET_put_bytes_u16(i32* %76, i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %135

80:                                               ; preds = %75
  %81 = load i32*, i32** %8, align 8
  %82 = load i32, i32* @TLS1_3_VERSION, align 4
  %83 = call i32 @WPACKET_put_bytes_u16(i32* %81, i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %135

85:                                               ; preds = %80
  %86 = load i32*, i32** %8, align 8
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 2
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @WPACKET_put_bytes_u16(i32* %86, i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %135

94:                                               ; preds = %85
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 3
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  %99 = load i32 (i32, i32*, i64*)*, i32 (i32, i32*, i64*)** %98, align 8
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 2
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32*, i32** %8, align 8
  %107 = call i32 %99(i32 %105, i32* %106, i64* %20)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %135

109:                                              ; preds = %94
  %110 = load i32*, i32** %8, align 8
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i32 0, i32 2
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = icmp eq i32* %115, null
  %117 = zext i1 %116 to i32
  %118 = call i32 @WPACKET_put_bytes_u8(i32* %110, i32 %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %135

120:                                              ; preds = %109
  %121 = load i32*, i32** %8, align 8
  %122 = call i64 @time(i32* null)
  %123 = trunc i64 %122 to i32
  %124 = call i32 @WPACKET_put_bytes_u32(i32* %121, i32 %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %135

126:                                              ; preds = %120
  %127 = load i32*, i32** %8, align 8
  %128 = call i32 @WPACKET_start_sub_packet_u16(i32* %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %126
  %131 = load i32*, i32** %8, align 8
  %132 = load i64, i64* @EVP_MAX_MD_SIZE, align 8
  %133 = call i32 @WPACKET_reserve_bytes(i32* %131, i64 %132, i8** %12)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %142, label %135

135:                                              ; preds = %130, %126, %120, %109, %94, %85, %80, %75, %70, %66, %62, %58, %53
  %136 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %137 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %138 = load i32, i32* @SSL_F_TLS_CONSTRUCT_STOC_COOKIE, align 4
  %139 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %140 = call i32 @SSLfatal(%struct.TYPE_19__* %136, i32 %137, i32 %138, i32 %139)
  %141 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %141, i32* %6, align 4
  br label %354

142:                                              ; preds = %130
  %143 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %144 = call i32 @ssl3_digest_cached_records(%struct.TYPE_19__* %143, i32 0)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %142
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %148 = load i8*, i8** %12, align 8
  %149 = load i64, i64* @EVP_MAX_MD_SIZE, align 8
  %150 = call i32 @ssl_handshake_hash(%struct.TYPE_19__* %147, i8* %148, i64 %149, i64* %22)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %154, label %152

152:                                              ; preds = %146, %142
  %153 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %153, i32* %6, align 4
  br label %354

154:                                              ; preds = %146
  %155 = load i32*, i32** %8, align 8
  %156 = load i64, i64* %22, align 8
  %157 = call i32 @WPACKET_allocate_bytes(i32* %155, i64 %156, i8** %13)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %179

159:                                              ; preds = %154
  %160 = load i8*, i8** %12, align 8
  %161 = load i8*, i8** %13, align 8
  %162 = icmp eq i8* %160, %161
  %163 = zext i1 %162 to i32
  %164 = call i32 @ossl_assert(i32 %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %179

166:                                              ; preds = %159
  %167 = load i32*, i32** %8, align 8
  %168 = call i32 @WPACKET_close(i32* %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %179

170:                                              ; preds = %166
  %171 = load i32*, i32** %8, align 8
  %172 = call i32 @WPACKET_start_sub_packet_u8(i32* %171)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %179

174:                                              ; preds = %170
  %175 = load i32*, i32** %8, align 8
  %176 = load i64, i64* @SSL_COOKIE_LENGTH, align 8
  %177 = call i32 @WPACKET_reserve_bytes(i32* %175, i64 %176, i8** %14)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %186, label %179

179:                                              ; preds = %174, %170, %166, %159, %154
  %180 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %181 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %182 = load i32, i32* @SSL_F_TLS_CONSTRUCT_STOC_COOKIE, align 4
  %183 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %184 = call i32 @SSLfatal(%struct.TYPE_19__* %180, i32 %181, i32 %182, i32 %183)
  %185 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %185, i32* %6, align 4
  br label %354

186:                                              ; preds = %174
  %187 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %187, i32 0, i32 1
  %189 = load %struct.TYPE_16__*, %struct.TYPE_16__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %189, i32 0, i32 0
  %191 = load i64 (%struct.TYPE_19__*, i8*, i64*)*, i64 (%struct.TYPE_19__*, i8*, i64*)** %190, align 8
  %192 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %193 = load i8*, i8** %14, align 8
  %194 = call i64 %191(%struct.TYPE_19__* %192, i8* %193, i64* %24)
  %195 = icmp eq i64 %194, 0
  br i1 %195, label %196, label %203

196:                                              ; preds = %186
  %197 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %198 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %199 = load i32, i32* @SSL_F_TLS_CONSTRUCT_STOC_COOKIE, align 4
  %200 = load i32, i32* @SSL_R_COOKIE_GEN_CALLBACK_FAILURE, align 4
  %201 = call i32 @SSLfatal(%struct.TYPE_19__* %197, i32 %198, i32 %199, i32 %200)
  %202 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %202, i32* %6, align 4
  br label %354

203:                                              ; preds = %186
  %204 = load i32*, i32** %8, align 8
  %205 = load i64, i64* %24, align 8
  %206 = call i32 @WPACKET_allocate_bytes(i32* %204, i64 %205, i8** %15)
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %228

208:                                              ; preds = %203
  %209 = load i8*, i8** %14, align 8
  %210 = load i8*, i8** %15, align 8
  %211 = icmp eq i8* %209, %210
  %212 = zext i1 %211 to i32
  %213 = call i32 @ossl_assert(i32 %212)
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %228

215:                                              ; preds = %208
  %216 = load i32*, i32** %8, align 8
  %217 = call i32 @WPACKET_close(i32* %216)
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %228

219:                                              ; preds = %215
  %220 = load i32*, i32** %8, align 8
  %221 = call i32 @WPACKET_get_total_written(i32* %220, i64* %21)
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %228

223:                                              ; preds = %219
  %224 = load i32*, i32** %8, align 8
  %225 = load i64, i64* @SHA256_DIGEST_LENGTH, align 8
  %226 = call i32 @WPACKET_reserve_bytes(i32* %224, i64 %225, i8** %17)
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %235, label %228

228:                                              ; preds = %223, %219, %215, %208, %203
  %229 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %230 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %231 = load i32, i32* @SSL_F_TLS_CONSTRUCT_STOC_COOKIE, align 4
  %232 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %233 = call i32 @SSLfatal(%struct.TYPE_19__* %229, i32 %230, i32 %231, i32 %232)
  %234 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %234, i32* %6, align 4
  br label %354

235:                                              ; preds = %223
  %236 = load i64, i64* @SHA256_DIGEST_LENGTH, align 8
  store i64 %236, i64* %23, align 8
  %237 = load i64, i64* %19, align 8
  %238 = load i64, i64* %21, align 8
  %239 = sub i64 %238, %237
  store i64 %239, i64* %21, align 8
  %240 = load i64, i64* %21, align 8
  %241 = load i64, i64* @MAX_COOKIE_SIZE, align 8
  %242 = load i64, i64* @SHA256_DIGEST_LENGTH, align 8
  %243 = sub i64 %241, %242
  %244 = icmp ule i64 %240, %243
  %245 = zext i1 %244 to i32
  %246 = call i32 @ossl_assert(i32 %245)
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %255, label %248

248:                                              ; preds = %235
  %249 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %250 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %251 = load i32, i32* @SSL_F_TLS_CONSTRUCT_STOC_COOKIE, align 4
  %252 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %253 = call i32 @SSLfatal(%struct.TYPE_19__* %249, i32 %250, i32 %251, i32 %252)
  %254 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %254, i32* %6, align 4
  br label %354

255:                                              ; preds = %235
  %256 = call i32* (...) @EVP_MD_CTX_create()
  store i32* %256, i32** %25, align 8
  %257 = load i32, i32* @EVP_PKEY_HMAC, align 4
  %258 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %259 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %258, i32 0, i32 0
  %260 = load %struct.TYPE_18__*, %struct.TYPE_18__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = call i32* @EVP_PKEY_new_raw_private_key(i32 %257, i32* null, i32 %263, i32 4)
  store i32* %264, i32** %26, align 8
  %265 = load i32*, i32** %25, align 8
  %266 = icmp eq i32* %265, null
  br i1 %266, label %270, label %267

267:                                              ; preds = %255
  %268 = load i32*, i32** %26, align 8
  %269 = icmp eq i32* %268, null
  br i1 %269, label %270, label %276

270:                                              ; preds = %267, %255
  %271 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %272 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %273 = load i32, i32* @SSL_F_TLS_CONSTRUCT_STOC_COOKIE, align 4
  %274 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %275 = call i32 @SSLfatal(%struct.TYPE_19__* %271, i32 %272, i32 %273, i32 %274)
  br label %348

276:                                              ; preds = %267
  %277 = load i32*, i32** %25, align 8
  %278 = call i32 (...) @EVP_sha256()
  %279 = load i32*, i32** %26, align 8
  %280 = call i64 @EVP_DigestSignInit(i32* %277, i32* null, i32 %278, i32* null, i32* %279)
  %281 = icmp sle i64 %280, 0
  br i1 %281, label %289, label %282

282:                                              ; preds = %276
  %283 = load i32*, i32** %25, align 8
  %284 = load i8*, i8** %17, align 8
  %285 = load i8*, i8** %16, align 8
  %286 = load i64, i64* %21, align 8
  %287 = call i64 @EVP_DigestSign(i32* %283, i8* %284, i64* %23, i8* %285, i64 %286)
  %288 = icmp sle i64 %287, 0
  br i1 %288, label %289, label %295

289:                                              ; preds = %282, %276
  %290 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %291 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %292 = load i32, i32* @SSL_F_TLS_CONSTRUCT_STOC_COOKIE, align 4
  %293 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %294 = call i32 @SSLfatal(%struct.TYPE_19__* %290, i32 %291, i32 %292, i32 %293)
  br label %348

295:                                              ; preds = %282
  %296 = load i64, i64* %21, align 8
  %297 = load i64, i64* %23, align 8
  %298 = add i64 %296, %297
  %299 = load i64, i64* @MAX_COOKIE_SIZE, align 8
  %300 = icmp ule i64 %298, %299
  %301 = zext i1 %300 to i32
  %302 = call i32 @ossl_assert(i32 %301)
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %310, label %304

304:                                              ; preds = %295
  %305 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %306 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %307 = load i32, i32* @SSL_F_TLS_CONSTRUCT_STOC_COOKIE, align 4
  %308 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %309 = call i32 @SSLfatal(%struct.TYPE_19__* %305, i32 %306, i32 %307, i32 %308)
  br label %348

310:                                              ; preds = %295
  %311 = load i32*, i32** %8, align 8
  %312 = load i64, i64* %23, align 8
  %313 = call i32 @WPACKET_allocate_bytes(i32* %311, i64 %312, i8** %18)
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %340

315:                                              ; preds = %310
  %316 = load i8*, i8** %17, align 8
  %317 = load i8*, i8** %18, align 8
  %318 = icmp eq i8* %316, %317
  %319 = zext i1 %318 to i32
  %320 = call i32 @ossl_assert(i32 %319)
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %340

322:                                              ; preds = %315
  %323 = load i8*, i8** %16, align 8
  %324 = load i8*, i8** %17, align 8
  %325 = load i64, i64* %21, align 8
  %326 = sub i64 0, %325
  %327 = getelementptr inbounds i8, i8* %324, i64 %326
  %328 = icmp eq i8* %323, %327
  %329 = zext i1 %328 to i32
  %330 = call i32 @ossl_assert(i32 %329)
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %340

332:                                              ; preds = %322
  %333 = load i32*, i32** %8, align 8
  %334 = call i32 @WPACKET_close(i32* %333)
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %340

336:                                              ; preds = %332
  %337 = load i32*, i32** %8, align 8
  %338 = call i32 @WPACKET_close(i32* %337)
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %346, label %340

340:                                              ; preds = %336, %332, %322, %315, %310
  %341 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %342 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %343 = load i32, i32* @SSL_F_TLS_CONSTRUCT_STOC_COOKIE, align 4
  %344 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %345 = call i32 @SSLfatal(%struct.TYPE_19__* %341, i32 %342, i32 %343, i32 %344)
  br label %348

346:                                              ; preds = %336
  %347 = load i32, i32* @EXT_RETURN_SENT, align 4
  store i32 %347, i32* %27, align 4
  br label %348

348:                                              ; preds = %346, %340, %304, %289, %270
  %349 = load i32*, i32** %25, align 8
  %350 = call i32 @EVP_MD_CTX_free(i32* %349)
  %351 = load i32*, i32** %26, align 8
  %352 = call i32 @EVP_PKEY_free(i32* %351)
  %353 = load i32, i32* %27, align 4
  store i32 %353, i32* %6, align 4
  br label %354

354:                                              ; preds = %348, %248, %228, %196, %179, %152, %135, %46, %37
  %355 = load i32, i32* %6, align 4
  ret i32 %355
}

declare dso_local i32 @SSLfatal(%struct.TYPE_19__*, i32, i32, i32) #1

declare dso_local i32 @WPACKET_put_bytes_u16(i32*, i32) #1

declare dso_local i32 @WPACKET_start_sub_packet_u16(i32*) #1

declare dso_local i32 @WPACKET_get_total_written(i32*, i64*) #1

declare dso_local i32 @WPACKET_reserve_bytes(i32*, i64, i8**) #1

declare dso_local i32 @WPACKET_put_bytes_u8(i32*, i32) #1

declare dso_local i32 @WPACKET_put_bytes_u32(i32*, i32) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @ssl3_digest_cached_records(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @ssl_handshake_hash(%struct.TYPE_19__*, i8*, i64, i64*) #1

declare dso_local i32 @WPACKET_allocate_bytes(i32*, i64, i8**) #1

declare dso_local i32 @ossl_assert(i32) #1

declare dso_local i32 @WPACKET_close(i32*) #1

declare dso_local i32 @WPACKET_start_sub_packet_u8(i32*) #1

declare dso_local i32* @EVP_MD_CTX_create(...) #1

declare dso_local i32* @EVP_PKEY_new_raw_private_key(i32, i32*, i32, i32) #1

declare dso_local i64 @EVP_DigestSignInit(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @EVP_sha256(...) #1

declare dso_local i64 @EVP_DigestSign(i32*, i8*, i64*, i8*, i64) #1

declare dso_local i32 @EVP_MD_CTX_free(i32*) #1

declare dso_local i32 @EVP_PKEY_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
