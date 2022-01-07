; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/record/extr_ssl3_record_tls13.c_tls13_enc.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/record/extr_ssl3_record_tls13.c_tls13_enc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i8*, i8*, i64, %struct.TYPE_25__*, %struct.TYPE_22__*, %struct.TYPE_19__*, i32, i32*, i32* }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { %struct.TYPE_21__*, %struct.TYPE_20__ }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_19__ = type { %struct.TYPE_18__*, %struct.TYPE_17__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_15__ = type { i64, i8*, i8*, i64, i64 }

@EVP_MAX_IV_LENGTH = common dso_local global i32 0, align 4
@SSL3_RT_HEADER_LENGTH = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS13_ENC = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL3_RT_ALERT = common dso_local global i64 0, align 8
@SSL_EARLY_DATA_WRITING = common dso_local global i64 0, align 8
@SSL_EARLY_DATA_WRITE_RETRY = common dso_local global i64 0, align 8
@SSL_AESCCM = common dso_local global i32 0, align 4
@SSL_AES128CCM8 = common dso_local global i32 0, align 4
@SSL_AES256CCM8 = common dso_local global i32 0, align 4
@EVP_CCM8_TLS_TAG_LEN = common dso_local global i64 0, align 8
@EVP_CCM_TLS_TAG_LEN = common dso_local global i64 0, align 8
@EVP_CTRL_AEAD_SET_TAG = common dso_local global i32 0, align 4
@SSL_AESGCM = common dso_local global i32 0, align 4
@EVP_GCM_TLS_TAG_LEN = common dso_local global i64 0, align 8
@SSL_CHACHA20 = common dso_local global i32 0, align 4
@EVP_CHACHAPOLY_TLS_TAG_LEN = common dso_local global i64 0, align 8
@SEQ_NUM_SIZE = common dso_local global i64 0, align 8
@EVP_CTRL_AEAD_GET_TAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls13_enc(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_15__*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %27 = load i32, i32* @EVP_MAX_IV_LENGTH, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %11, align 8
  %30 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %12, align 8
  %31 = load i32, i32* @SSL3_RT_HEADER_LENGTH, align 4
  %32 = zext i32 %31 to i64
  %33 = alloca i8, i64 %32, align 16
  store i64 %32, i64* %13, align 8
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i64 0
  store %struct.TYPE_15__* %35, %struct.TYPE_15__** %23, align 8
  %36 = load i64, i64* %8, align 8
  %37 = icmp ne i64 %36, 1
  br i1 %37, label %38, label %44

38:                                               ; preds = %4
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %40 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %41 = load i32, i32* @SSL_F_TLS13_ENC, align 4
  %42 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %43 = call i32 @SSLfatal(%struct.TYPE_16__* %39, i32 %40, i32 %41, i32 %42)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %26, align 4
  br label %468

44:                                               ; preds = %4
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %44
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 8
  %50 = load i32*, i32** %49, align 8
  store i32* %50, i32** %10, align 8
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  store i8* %53, i8** %19, align 8
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 6
  %56 = call i8* @RECORD_LAYER_get_write_sequence(i32* %55)
  store i8* %56, i8** %20, align 8
  br label %67

57:                                               ; preds = %44
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 7
  %60 = load i32*, i32** %59, align 8
  store i32* %60, i32** %10, align 8
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  store i8* %63, i8** %19, align 8
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 6
  %66 = call i8* @RECORD_LAYER_get_read_sequence(i32* %65)
  store i8* %66, i8** %20, align 8
  br label %67

67:                                               ; preds = %57, %47
  %68 = load i32*, i32** %10, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %76, label %70

70:                                               ; preds = %67
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @SSL3_RT_ALERT, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %92

76:                                               ; preds = %70, %67
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 2
  %82 = load i8*, i8** %81, align 8
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @memmove(i8* %79, i8* %82, i64 %85)
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 1
  %89 = load i8*, i8** %88, align 8
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 2
  store i8* %89, i8** %91, align 8
  store i32 1, i32* %5, align 4
  store i32 1, i32* %26, align 4
  br label %468

92:                                               ; preds = %70
  %93 = load i32*, i32** %10, align 8
  %94 = call i64 @EVP_CIPHER_CTX_iv_length(i32* %93)
  store i64 %94, i64* %14, align 8
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @SSL_EARLY_DATA_WRITING, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %106, label %100

100:                                              ; preds = %92
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @SSL_EARLY_DATA_WRITE_RETRY, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %160

106:                                              ; preds = %100, %92
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 5
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %108, align 8
  %110 = icmp ne %struct.TYPE_19__* %109, null
  br i1 %110, label %111, label %127

111:                                              ; preds = %106
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 5
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp sgt i64 %117, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %111
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 5
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %24, align 4
  br label %159

127:                                              ; preds = %111, %106
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 4
  %130 = load %struct.TYPE_22__*, %struct.TYPE_22__** %129, align 8
  %131 = icmp ne %struct.TYPE_22__* %130, null
  br i1 %131, label %132, label %140

132:                                              ; preds = %127
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 4
  %135 = load %struct.TYPE_22__*, %struct.TYPE_22__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp sgt i64 %138, 0
  br label %140

140:                                              ; preds = %132, %127
  %141 = phi i1 [ false, %127 ], [ %139, %132 ]
  %142 = zext i1 %141 to i32
  %143 = call i32 @ossl_assert(i32 %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %151, label %145

145:                                              ; preds = %140
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %147 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %148 = load i32, i32* @SSL_F_TLS13_ENC, align 4
  %149 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %150 = call i32 @SSLfatal(%struct.TYPE_16__* %146, i32 %147, i32 %148, i32 %149)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %26, align 4
  br label %468

151:                                              ; preds = %140
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 4
  %154 = load %struct.TYPE_22__*, %struct.TYPE_22__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_21__*, %struct.TYPE_21__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  store i32 %158, i32* %24, align 4
  br label %159

159:                                              ; preds = %151, %119
  br label %186

160:                                              ; preds = %100
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i32 0, i32 3
  %163 = load %struct.TYPE_25__*, %struct.TYPE_25__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %164, i32 0, i32 0
  %166 = load %struct.TYPE_23__*, %struct.TYPE_23__** %165, align 8
  %167 = icmp ne %struct.TYPE_23__* %166, null
  %168 = zext i1 %167 to i32
  %169 = call i32 @ossl_assert(i32 %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %177, label %171

171:                                              ; preds = %160
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %173 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %174 = load i32, i32* @SSL_F_TLS13_ENC, align 4
  %175 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %176 = call i32 @SSLfatal(%struct.TYPE_16__* %172, i32 %173, i32 %174, i32 %175)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %26, align 4
  br label %468

177:                                              ; preds = %160
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 3
  %180 = load %struct.TYPE_25__*, %struct.TYPE_25__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %181, i32 0, i32 0
  %183 = load %struct.TYPE_23__*, %struct.TYPE_23__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  store i32 %185, i32* %24, align 4
  br label %186

186:                                              ; preds = %177, %159
  %187 = load i32, i32* %24, align 4
  %188 = load i32, i32* @SSL_AESCCM, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %218

191:                                              ; preds = %186
  %192 = load i32, i32* %24, align 4
  %193 = load i32, i32* @SSL_AES128CCM8, align 4
  %194 = load i32, i32* @SSL_AES256CCM8, align 4
  %195 = or i32 %193, %194
  %196 = and i32 %192, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %191
  %199 = load i64, i64* @EVP_CCM8_TLS_TAG_LEN, align 8
  store i64 %199, i64* %15, align 8
  br label %202

200:                                              ; preds = %191
  %201 = load i64, i64* @EVP_CCM_TLS_TAG_LEN, align 8
  store i64 %201, i64* %15, align 8
  br label %202

202:                                              ; preds = %200, %198
  %203 = load i32, i32* %9, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %217

205:                                              ; preds = %202
  %206 = load i32*, i32** %10, align 8
  %207 = load i32, i32* @EVP_CTRL_AEAD_SET_TAG, align 4
  %208 = load i64, i64* %15, align 8
  %209 = call i64 @EVP_CIPHER_CTX_ctrl(i32* %206, i32 %207, i64 %208, i8* null)
  %210 = icmp sle i64 %209, 0
  br i1 %210, label %211, label %217

211:                                              ; preds = %205
  %212 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %213 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %214 = load i32, i32* @SSL_F_TLS13_ENC, align 4
  %215 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %216 = call i32 @SSLfatal(%struct.TYPE_16__* %212, i32 %213, i32 %214, i32 %215)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %26, align 4
  br label %468

217:                                              ; preds = %205, %202
  br label %240

218:                                              ; preds = %186
  %219 = load i32, i32* %24, align 4
  %220 = load i32, i32* @SSL_AESGCM, align 4
  %221 = and i32 %219, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %225

223:                                              ; preds = %218
  %224 = load i64, i64* @EVP_GCM_TLS_TAG_LEN, align 8
  store i64 %224, i64* %15, align 8
  br label %239

225:                                              ; preds = %218
  %226 = load i32, i32* %24, align 4
  %227 = load i32, i32* @SSL_CHACHA20, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %232

230:                                              ; preds = %225
  %231 = load i64, i64* @EVP_CHACHAPOLY_TLS_TAG_LEN, align 8
  store i64 %231, i64* %15, align 8
  br label %238

232:                                              ; preds = %225
  %233 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %234 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %235 = load i32, i32* @SSL_F_TLS13_ENC, align 4
  %236 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %237 = call i32 @SSLfatal(%struct.TYPE_16__* %233, i32 %234, i32 %235, i32 %236)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %26, align 4
  br label %468

238:                                              ; preds = %230
  br label %239

239:                                              ; preds = %238, %223
  br label %240

240:                                              ; preds = %239, %217
  %241 = load i32, i32* %9, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %257, label %243

243:                                              ; preds = %240
  %244 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %245 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %244, i32 0, i32 3
  %246 = load i64, i64* %245, align 8
  %247 = load i64, i64* %15, align 8
  %248 = add i64 %247, 1
  %249 = icmp ult i64 %246, %248
  br i1 %249, label %250, label %251

250:                                              ; preds = %243
  store i32 0, i32* %5, align 4
  store i32 1, i32* %26, align 4
  br label %468

251:                                              ; preds = %243
  %252 = load i64, i64* %15, align 8
  %253 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %254 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %253, i32 0, i32 3
  %255 = load i64, i64* %254, align 8
  %256 = sub i64 %255, %252
  store i64 %256, i64* %254, align 8
  br label %257

257:                                              ; preds = %251, %240
  %258 = load i64, i64* %14, align 8
  %259 = load i64, i64* @SEQ_NUM_SIZE, align 8
  %260 = icmp ult i64 %258, %259
  br i1 %260, label %261, label %267

261:                                              ; preds = %257
  %262 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %263 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %264 = load i32, i32* @SSL_F_TLS13_ENC, align 4
  %265 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %266 = call i32 @SSLfatal(%struct.TYPE_16__* %262, i32 %263, i32 %264, i32 %265)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %26, align 4
  br label %468

267:                                              ; preds = %257
  %268 = load i64, i64* %14, align 8
  %269 = load i64, i64* @SEQ_NUM_SIZE, align 8
  %270 = sub i64 %268, %269
  store i64 %270, i64* %16, align 8
  %271 = load i8*, i8** %19, align 8
  %272 = load i64, i64* %16, align 8
  %273 = call i32 @memcpy(i8* %30, i8* %271, i64 %272)
  store i64 0, i64* %17, align 8
  br label %274

274:                                              ; preds = %297, %267
  %275 = load i64, i64* %17, align 8
  %276 = load i64, i64* @SEQ_NUM_SIZE, align 8
  %277 = icmp ult i64 %275, %276
  br i1 %277, label %278, label %300

278:                                              ; preds = %274
  %279 = load i8*, i8** %19, align 8
  %280 = load i64, i64* %16, align 8
  %281 = load i64, i64* %17, align 8
  %282 = add i64 %280, %281
  %283 = getelementptr inbounds i8, i8* %279, i64 %282
  %284 = load i8, i8* %283, align 1
  %285 = zext i8 %284 to i32
  %286 = load i8*, i8** %20, align 8
  %287 = load i64, i64* %17, align 8
  %288 = getelementptr inbounds i8, i8* %286, i64 %287
  %289 = load i8, i8* %288, align 1
  %290 = zext i8 %289 to i32
  %291 = xor i32 %285, %290
  %292 = trunc i32 %291 to i8
  %293 = load i64, i64* %16, align 8
  %294 = load i64, i64* %17, align 8
  %295 = add i64 %293, %294
  %296 = getelementptr inbounds i8, i8* %30, i64 %295
  store i8 %292, i8* %296, align 1
  br label %297

297:                                              ; preds = %278
  %298 = load i64, i64* %17, align 8
  %299 = add i64 %298, 1
  store i64 %299, i64* %17, align 8
  br label %274

300:                                              ; preds = %274
  %301 = load i64, i64* @SEQ_NUM_SIZE, align 8
  store i64 %301, i64* %17, align 8
  br label %302

302:                                              ; preds = %321, %300
  %303 = load i64, i64* %17, align 8
  %304 = icmp ugt i64 %303, 0
  br i1 %304, label %305, label %324

305:                                              ; preds = %302
  %306 = load i8*, i8** %20, align 8
  %307 = load i64, i64* %17, align 8
  %308 = sub i64 %307, 1
  %309 = getelementptr inbounds i8, i8* %306, i64 %308
  %310 = load i8, i8* %309, align 1
  %311 = add i8 %310, 1
  store i8 %311, i8* %309, align 1
  %312 = load i8*, i8** %20, align 8
  %313 = load i64, i64* %17, align 8
  %314 = sub i64 %313, 1
  %315 = getelementptr inbounds i8, i8* %312, i64 %314
  %316 = load i8, i8* %315, align 1
  %317 = zext i8 %316 to i32
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %320

319:                                              ; preds = %305
  br label %324

320:                                              ; preds = %305
  br label %321

321:                                              ; preds = %320
  %322 = load i64, i64* %17, align 8
  %323 = add i64 %322, -1
  store i64 %323, i64* %17, align 8
  br label %302

324:                                              ; preds = %319, %302
  %325 = load i64, i64* %17, align 8
  %326 = icmp eq i64 %325, 0
  br i1 %326, label %327, label %328

327:                                              ; preds = %324
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %26, align 4
  br label %468

328:                                              ; preds = %324
  %329 = load i32*, i32** %10, align 8
  %330 = load i32, i32* %9, align 4
  %331 = call i64 @EVP_CipherInit_ex(i32* %329, i32* null, i32* null, i32* null, i8* %30, i32 %330)
  %332 = icmp sle i64 %331, 0
  br i1 %332, label %349, label %333

333:                                              ; preds = %328
  %334 = load i32, i32* %9, align 4
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %350, label %336

336:                                              ; preds = %333
  %337 = load i32*, i32** %10, align 8
  %338 = load i32, i32* @EVP_CTRL_AEAD_SET_TAG, align 4
  %339 = load i64, i64* %15, align 8
  %340 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %341 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %340, i32 0, i32 1
  %342 = load i8*, i8** %341, align 8
  %343 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %344 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %343, i32 0, i32 3
  %345 = load i64, i64* %344, align 8
  %346 = getelementptr inbounds i8, i8* %342, i64 %345
  %347 = call i64 @EVP_CIPHER_CTX_ctrl(i32* %337, i32 %338, i64 %339, i8* %346)
  %348 = icmp sle i64 %347, 0
  br i1 %348, label %349, label %350

349:                                              ; preds = %336, %328
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %26, align 4
  br label %468

350:                                              ; preds = %336, %333
  %351 = trunc i64 %32 to i32
  %352 = call i32 @WPACKET_init_static_len(i32* %25, i8* %33, i32 %351, i32 0)
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %385

354:                                              ; preds = %350
  %355 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %356 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %355, i32 0, i32 0
  %357 = load i64, i64* %356, align 8
  %358 = call i32 @WPACKET_put_bytes_u8(i32* %25, i64 %357)
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %385

360:                                              ; preds = %354
  %361 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %362 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %361, i32 0, i32 4
  %363 = load i64, i64* %362, align 8
  %364 = call i32 @WPACKET_put_bytes_u16(i32* %25, i64 %363)
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %385

366:                                              ; preds = %360
  %367 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %368 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %367, i32 0, i32 3
  %369 = load i64, i64* %368, align 8
  %370 = load i64, i64* %15, align 8
  %371 = add i64 %369, %370
  %372 = call i32 @WPACKET_put_bytes_u16(i32* %25, i64 %371)
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %385

374:                                              ; preds = %366
  %375 = call i32 @WPACKET_get_total_written(i32* %25, i64* %18)
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %385

377:                                              ; preds = %374
  %378 = load i64, i64* %18, align 8
  %379 = load i32, i32* @SSL3_RT_HEADER_LENGTH, align 4
  %380 = sext i32 %379 to i64
  %381 = icmp ne i64 %378, %380
  br i1 %381, label %385, label %382

382:                                              ; preds = %377
  %383 = call i32 @WPACKET_finish(i32* %25)
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %387, label %385

385:                                              ; preds = %382, %377, %374, %366, %360, %354, %350
  %386 = call i32 @WPACKET_cleanup(i32* %25)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %26, align 4
  br label %468

387:                                              ; preds = %382
  %388 = load i32, i32* %24, align 4
  %389 = load i32, i32* @SSL_AESCCM, align 4
  %390 = and i32 %388, %389
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %392, label %400

392:                                              ; preds = %387
  %393 = load i32*, i32** %10, align 8
  %394 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %395 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %394, i32 0, i32 3
  %396 = load i64, i64* %395, align 8
  %397 = trunc i64 %396 to i32
  %398 = call i64 @EVP_CipherUpdate(i32* %393, i8* null, i32* %21, i8* null, i32 %397)
  %399 = icmp sle i64 %398, 0
  br i1 %399, label %438, label %400

400:                                              ; preds = %392, %387
  %401 = load i32*, i32** %10, align 8
  %402 = trunc i64 %32 to i32
  %403 = call i64 @EVP_CipherUpdate(i32* %401, i8* null, i32* %21, i8* %33, i32 %402)
  %404 = icmp sle i64 %403, 0
  br i1 %404, label %438, label %405

405:                                              ; preds = %400
  %406 = load i32*, i32** %10, align 8
  %407 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %408 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %407, i32 0, i32 1
  %409 = load i8*, i8** %408, align 8
  %410 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %411 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %410, i32 0, i32 2
  %412 = load i8*, i8** %411, align 8
  %413 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %414 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %413, i32 0, i32 3
  %415 = load i64, i64* %414, align 8
  %416 = trunc i64 %415 to i32
  %417 = call i64 @EVP_CipherUpdate(i32* %406, i8* %409, i32* %21, i8* %412, i32 %416)
  %418 = icmp sle i64 %417, 0
  br i1 %418, label %438, label %419

419:                                              ; preds = %405
  %420 = load i32*, i32** %10, align 8
  %421 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %422 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %421, i32 0, i32 1
  %423 = load i8*, i8** %422, align 8
  %424 = load i32, i32* %21, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds i8, i8* %423, i64 %425
  %427 = call i64 @EVP_CipherFinal_ex(i32* %420, i8* %426, i32* %22)
  %428 = icmp sle i64 %427, 0
  br i1 %428, label %438, label %429

429:                                              ; preds = %419
  %430 = load i32, i32* %21, align 4
  %431 = load i32, i32* %22, align 4
  %432 = add nsw i32 %430, %431
  %433 = sext i32 %432 to i64
  %434 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %435 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %434, i32 0, i32 3
  %436 = load i64, i64* %435, align 8
  %437 = icmp ne i64 %433, %436
  br i1 %437, label %438, label %439

438:                                              ; preds = %429, %419, %405, %400, %392
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %26, align 4
  br label %468

439:                                              ; preds = %429
  %440 = load i32, i32* %9, align 4
  %441 = icmp ne i32 %440, 0
  br i1 %441, label %442, label %467

442:                                              ; preds = %439
  %443 = load i32*, i32** %10, align 8
  %444 = load i32, i32* @EVP_CTRL_AEAD_GET_TAG, align 4
  %445 = load i64, i64* %15, align 8
  %446 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %447 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %446, i32 0, i32 1
  %448 = load i8*, i8** %447, align 8
  %449 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %450 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %449, i32 0, i32 3
  %451 = load i64, i64* %450, align 8
  %452 = getelementptr inbounds i8, i8* %448, i64 %451
  %453 = call i64 @EVP_CIPHER_CTX_ctrl(i32* %443, i32 %444, i64 %445, i8* %452)
  %454 = icmp sle i64 %453, 0
  br i1 %454, label %455, label %461

455:                                              ; preds = %442
  %456 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %457 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %458 = load i32, i32* @SSL_F_TLS13_ENC, align 4
  %459 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %460 = call i32 @SSLfatal(%struct.TYPE_16__* %456, i32 %457, i32 %458, i32 %459)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %26, align 4
  br label %468

461:                                              ; preds = %442
  %462 = load i64, i64* %15, align 8
  %463 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %464 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %463, i32 0, i32 3
  %465 = load i64, i64* %464, align 8
  %466 = add i64 %465, %462
  store i64 %466, i64* %464, align 8
  br label %467

467:                                              ; preds = %461, %439
  store i32 1, i32* %5, align 4
  store i32 1, i32* %26, align 4
  br label %468

468:                                              ; preds = %467, %455, %438, %385, %349, %327, %261, %250, %232, %211, %171, %145, %76, %38
  %469 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %469)
  %470 = load i32, i32* %5, align 4
  ret i32 %470
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SSLfatal(%struct.TYPE_16__*, i32, i32, i32) #2

declare dso_local i8* @RECORD_LAYER_get_write_sequence(i32*) #2

declare dso_local i8* @RECORD_LAYER_get_read_sequence(i32*) #2

declare dso_local i32 @memmove(i8*, i8*, i64) #2

declare dso_local i64 @EVP_CIPHER_CTX_iv_length(i32*) #2

declare dso_local i32 @ossl_assert(i32) #2

declare dso_local i64 @EVP_CIPHER_CTX_ctrl(i32*, i32, i64, i8*) #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

declare dso_local i64 @EVP_CipherInit_ex(i32*, i32*, i32*, i32*, i8*, i32) #2

declare dso_local i32 @WPACKET_init_static_len(i32*, i8*, i32, i32) #2

declare dso_local i32 @WPACKET_put_bytes_u8(i32*, i64) #2

declare dso_local i32 @WPACKET_put_bytes_u16(i32*, i64) #2

declare dso_local i32 @WPACKET_get_total_written(i32*, i64*) #2

declare dso_local i32 @WPACKET_finish(i32*) #2

declare dso_local i32 @WPACKET_cleanup(i32*) #2

declare dso_local i64 @EVP_CipherUpdate(i32*, i8*, i32*, i8*, i32) #2

declare dso_local i64 @EVP_CipherFinal_ex(i32*, i8*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
