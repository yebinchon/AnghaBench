; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_extensions.c_tls_psk_do_binder.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_extensions.c_tls_psk_do_binder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i64, i64, %struct.TYPE_16__*, i64, %struct.TYPE_14__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_17__ = type { i32, i32, i64, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64 }

@EVP_MAX_MD_SIZE = common dso_local global i32 0, align 4
@tls_psk_do_binder.resumption_label = internal constant [11 x i8] c"res binder\00", align 1
@tls_psk_do_binder.external_label = internal constant [11 x i8] c"ext binder\00", align 1
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_PSK_DO_BINDER = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_EARLY_DATA_CONNECTING = common dso_local global i64 0, align 8
@SSL_HRR_PENDING = common dso_local global i64 0, align 8
@SSL_R_BAD_HANDSHAKE_LENGTH = common dso_local global i32 0, align 4
@EVP_PKEY_HMAC = common dso_local global i32 0, align 4
@SSL_AD_ILLEGAL_PARAMETER = common dso_local global i32 0, align 4
@SSL_R_BINDER_DOES_NOT_VERIFY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_psk_do_binder(%struct.TYPE_18__* %0, i32* %1, i8* %2, i64 %3, i8* %4, i8* %5, %struct.TYPE_17__* %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_17__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca i8*, align 8
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %10, align 8
  store i32* %1, i32** %11, align 8
  store i8* %2, i8** %12, align 8
  store i64 %3, i64* %13, align 8
  store i8* %4, i8** %14, align 8
  store i8* %5, i8** %15, align 8
  store %struct.TYPE_17__* %6, %struct.TYPE_17__** %16, align 8
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  store i32* null, i32** %19, align 8
  store i32* null, i32** %20, align 8
  %39 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %40 = zext i32 %39 to i64
  %41 = call i8* @llvm.stacksave()
  store i8* %41, i8** %21, align 8
  %42 = alloca i8, i64 %40, align 16
  store i64 %40, i64* %22, align 8
  %43 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %44 = zext i32 %43 to i64
  %45 = alloca i8, i64 %44, align 16
  store i64 %44, i64* %23, align 8
  %46 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %47 = zext i32 %46 to i64
  %48 = alloca i8, i64 %47, align 16
  store i64 %47, i64* %24, align 8
  %49 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %50 = zext i32 %49 to i64
  %51 = alloca i8, i64 %50, align 16
  store i64 %50, i64* %25, align 8
  %52 = load i32*, i32** %11, align 8
  %53 = call i32 @EVP_MD_size(i32* %52)
  store i32 %53, i32* %31, align 4
  store i32 -1, i32* %32, align 4
  store i32 0, i32* %33, align 4
  %54 = load i32, i32* %31, align 4
  %55 = icmp sge i32 %54, 0
  %56 = zext i1 %55 to i32
  %57 = call i32 @ossl_assert(i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %9
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %61 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %62 = load i32, i32* @SSL_F_TLS_PSK_DO_BINDER, align 4
  %63 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %64 = call i32 @SSLfatal(%struct.TYPE_18__* %60, i32 %61, i32 %62, i32 %63)
  br label %324

65:                                               ; preds = %9
  %66 = load i32, i32* %31, align 4
  %67 = sext i32 %66 to i64
  store i64 %67, i64* %30, align 8
  %68 = load i32, i32* %18, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %91

70:                                               ; preds = %65
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @SSL_EARLY_DATA_CONNECTING, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %91

76:                                               ; preds = %70
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 5
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %76
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp sgt i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  store i32 1, i32* %33, align 4
  br label %91

91:                                               ; preds = %90, %84, %76, %70, %65
  %92 = load i32, i32* %18, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @tls_psk_do_binder.external_label, i64 0, i64 0), i8** %27, align 8
  store i64 10, i64* %29, align 8
  br label %96

95:                                               ; preds = %91
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @tls_psk_do_binder.resumption_label, i64 0, i64 0), i8** %27, align 8
  store i64 10, i64* %29, align 8
  br label %96

96:                                               ; preds = %95, %94
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %107, label %101

101:                                              ; preds = %96
  %102 = load i32, i32* %18, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = load i32, i32* %33, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %104, %101, %96
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 4
  %110 = load i64, i64* %109, align 8
  %111 = inttoptr i64 %110 to i8*
  store i8* %111, i8** %26, align 8
  br label %117

112:                                              ; preds = %104
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = inttoptr i64 %115 to i8*
  store i8* %116, i8** %26, align 8
  br label %117

117:                                              ; preds = %112, %107
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %119 = load i32*, i32** %11, align 8
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i8*, i8** %26, align 8
  %127 = call i32 @tls13_generate_secret(%struct.TYPE_18__* %118, i32* %119, i32* null, i32 %122, i32 %125, i8* %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %117
  br label %324

130:                                              ; preds = %117
  %131 = call i32* (...) @EVP_MD_CTX_new()
  store i32* %131, i32** %20, align 8
  %132 = load i32*, i32** %20, align 8
  %133 = icmp eq i32* %132, null
  br i1 %133, label %143, label %134

134:                                              ; preds = %130
  %135 = load i32*, i32** %20, align 8
  %136 = load i32*, i32** %11, align 8
  %137 = call i64 @EVP_DigestInit_ex(i32* %135, i32* %136, i32* null)
  %138 = icmp sle i64 %137, 0
  br i1 %138, label %143, label %139

139:                                              ; preds = %134
  %140 = load i32*, i32** %20, align 8
  %141 = call i64 @EVP_DigestFinal_ex(i32* %140, i8* %42, i32* null)
  %142 = icmp sle i64 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %139, %134, %130
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %145 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %146 = load i32, i32* @SSL_F_TLS_PSK_DO_BINDER, align 4
  %147 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %148 = call i32 @SSLfatal(%struct.TYPE_18__* %144, i32 %145, i32 %146, i32 %147)
  br label %324

149:                                              ; preds = %139
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %151 = load i32*, i32** %11, align 8
  %152 = load i8*, i8** %26, align 8
  %153 = load i8*, i8** %27, align 8
  %154 = load i64, i64* %29, align 8
  %155 = load i64, i64* %30, align 8
  %156 = load i64, i64* %30, align 8
  %157 = call i32 @tls13_hkdf_expand(%struct.TYPE_18__* %150, i32* %151, i8* %152, i8* %153, i64 %154, i8* %42, i64 %155, i8* %45, i64 %156, i32 1)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %160, label %159

159:                                              ; preds = %149
  br label %324

160:                                              ; preds = %149
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %162 = load i32*, i32** %11, align 8
  %163 = load i64, i64* %30, align 8
  %164 = call i32 @tls13_derive_finishedkey(%struct.TYPE_18__* %161, i32* %162, i8* %45, i8* %48, i64 %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %167, label %166

166:                                              ; preds = %160
  br label %324

167:                                              ; preds = %160
  %168 = load i32*, i32** %20, align 8
  %169 = load i32*, i32** %11, align 8
  %170 = call i64 @EVP_DigestInit_ex(i32* %168, i32* %169, i32* null)
  %171 = icmp sle i64 %170, 0
  br i1 %171, label %172, label %178

172:                                              ; preds = %167
  %173 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %174 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %175 = load i32, i32* @SSL_F_TLS_PSK_DO_BINDER, align 4
  %176 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %177 = call i32 @SSLfatal(%struct.TYPE_18__* %173, i32 %174, i32 %175, i32 %176)
  br label %324

178:                                              ; preds = %167
  %179 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %180 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @SSL_HRR_PENDING, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %244

184:                                              ; preds = %178
  %185 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %186 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %185, i32 0, i32 3
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = call i64 @BIO_get_mem_data(i32 %189, i8** %36)
  store i64 %190, i64* %35, align 8
  store i64 %190, i64* %34, align 8
  %191 = load i64, i64* %35, align 8
  %192 = icmp sle i64 %191, 0
  br i1 %192, label %193, label %199

193:                                              ; preds = %184
  %194 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %195 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %196 = load i32, i32* @SSL_F_TLS_PSK_DO_BINDER, align 4
  %197 = load i32, i32* @SSL_R_BAD_HANDSHAKE_LENGTH, align 4
  %198 = call i32 @SSLfatal(%struct.TYPE_18__* %194, i32 %195, i32 %196, i32 %197)
  br label %324

199:                                              ; preds = %184
  %200 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %201 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %200, i32 0, i32 2
  %202 = load i64, i64* %201, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %231

204:                                              ; preds = %199
  %205 = load i8*, i8** %36, align 8
  %206 = load i64, i64* %34, align 8
  %207 = call i32 @PACKET_buf_init(i32* %37, i8* %205, i64 %206)
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %221

209:                                              ; preds = %204
  %210 = call i32 @PACKET_forward(i32* %37, i32 1)
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %221

212:                                              ; preds = %209
  %213 = call i32 @PACKET_get_length_prefixed_3(i32* %37, i32* %38)
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %221

215:                                              ; preds = %212
  %216 = call i32 @PACKET_forward(i32* %37, i32 1)
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %221

218:                                              ; preds = %215
  %219 = call i32 @PACKET_get_length_prefixed_3(i32* %37, i32* %38)
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %227, label %221

221:                                              ; preds = %218, %215, %212, %209, %204
  %222 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %223 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %224 = load i32, i32* @SSL_F_TLS_PSK_DO_BINDER, align 4
  %225 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %226 = call i32 @SSLfatal(%struct.TYPE_18__* %222, i32 %223, i32 %224, i32 %225)
  br label %324

227:                                              ; preds = %218
  %228 = call i64 @PACKET_remaining(i32* %37)
  %229 = load i64, i64* %34, align 8
  %230 = sub i64 %229, %228
  store i64 %230, i64* %34, align 8
  br label %231

231:                                              ; preds = %227, %199
  %232 = load i32*, i32** %20, align 8
  %233 = load i8*, i8** %36, align 8
  %234 = load i64, i64* %34, align 8
  %235 = call i64 @EVP_DigestUpdate(i32* %232, i8* %233, i64 %234)
  %236 = icmp sle i64 %235, 0
  br i1 %236, label %237, label %243

237:                                              ; preds = %231
  %238 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %239 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %240 = load i32, i32* @SSL_F_TLS_PSK_DO_BINDER, align 4
  %241 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %242 = call i32 @SSLfatal(%struct.TYPE_18__* %238, i32 %239, i32 %240, i32 %241)
  br label %324

243:                                              ; preds = %231
  br label %244

244:                                              ; preds = %243, %178
  %245 = load i32*, i32** %20, align 8
  %246 = load i8*, i8** %12, align 8
  %247 = load i64, i64* %13, align 8
  %248 = call i64 @EVP_DigestUpdate(i32* %245, i8* %246, i64 %247)
  %249 = icmp sle i64 %248, 0
  br i1 %249, label %254, label %250

250:                                              ; preds = %244
  %251 = load i32*, i32** %20, align 8
  %252 = call i64 @EVP_DigestFinal_ex(i32* %251, i8* %42, i32* null)
  %253 = icmp sle i64 %252, 0
  br i1 %253, label %254, label %260

254:                                              ; preds = %250, %244
  %255 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %256 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %257 = load i32, i32* @SSL_F_TLS_PSK_DO_BINDER, align 4
  %258 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %259 = call i32 @SSLfatal(%struct.TYPE_18__* %255, i32 %256, i32 %257, i32 %258)
  br label %324

260:                                              ; preds = %250
  %261 = load i32, i32* @EVP_PKEY_HMAC, align 4
  %262 = load i64, i64* %30, align 8
  %263 = call i32* @EVP_PKEY_new_raw_private_key(i32 %261, i32* null, i8* %48, i64 %262)
  store i32* %263, i32** %19, align 8
  %264 = load i32*, i32** %19, align 8
  %265 = icmp eq i32* %264, null
  br i1 %265, label %266, label %272

266:                                              ; preds = %260
  %267 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %268 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %269 = load i32, i32* @SSL_F_TLS_PSK_DO_BINDER, align 4
  %270 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %271 = call i32 @SSLfatal(%struct.TYPE_18__* %267, i32 %268, i32 %269, i32 %270)
  br label %324

272:                                              ; preds = %260
  %273 = load i32, i32* %17, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %276, label %275

275:                                              ; preds = %272
  store i8* %51, i8** %15, align 8
  br label %276

276:                                              ; preds = %275, %272
  %277 = load i64, i64* %30, align 8
  store i64 %277, i64* %28, align 8
  %278 = load i32*, i32** %20, align 8
  %279 = load i32*, i32** %11, align 8
  %280 = load i32*, i32** %19, align 8
  %281 = call i64 @EVP_DigestSignInit(i32* %278, i32* null, i32* %279, i32* null, i32* %280)
  %282 = icmp sle i64 %281, 0
  br i1 %282, label %297, label %283

283:                                              ; preds = %276
  %284 = load i32*, i32** %20, align 8
  %285 = load i64, i64* %30, align 8
  %286 = call i64 @EVP_DigestSignUpdate(i32* %284, i8* %42, i64 %285)
  %287 = icmp sle i64 %286, 0
  br i1 %287, label %297, label %288

288:                                              ; preds = %283
  %289 = load i32*, i32** %20, align 8
  %290 = load i8*, i8** %15, align 8
  %291 = call i64 @EVP_DigestSignFinal(i32* %289, i8* %290, i64* %28)
  %292 = icmp sle i64 %291, 0
  br i1 %292, label %297, label %293

293:                                              ; preds = %288
  %294 = load i64, i64* %28, align 8
  %295 = load i64, i64* %30, align 8
  %296 = icmp ne i64 %294, %295
  br i1 %296, label %297, label %303

297:                                              ; preds = %293, %288, %283, %276
  %298 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %299 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %300 = load i32, i32* @SSL_F_TLS_PSK_DO_BINDER, align 4
  %301 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %302 = call i32 @SSLfatal(%struct.TYPE_18__* %298, i32 %299, i32 %300, i32 %301)
  br label %324

303:                                              ; preds = %293
  %304 = load i32, i32* %17, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %307

306:                                              ; preds = %303
  store i32 1, i32* %32, align 4
  br label %323

307:                                              ; preds = %303
  %308 = load i8*, i8** %14, align 8
  %309 = load i8*, i8** %15, align 8
  %310 = load i64, i64* %30, align 8
  %311 = call i64 @CRYPTO_memcmp(i8* %308, i8* %309, i64 %310)
  %312 = icmp eq i64 %311, 0
  %313 = zext i1 %312 to i32
  store i32 %313, i32* %32, align 4
  %314 = load i32, i32* %32, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %322, label %316

316:                                              ; preds = %307
  %317 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %318 = load i32, i32* @SSL_AD_ILLEGAL_PARAMETER, align 4
  %319 = load i32, i32* @SSL_F_TLS_PSK_DO_BINDER, align 4
  %320 = load i32, i32* @SSL_R_BINDER_DOES_NOT_VERIFY, align 4
  %321 = call i32 @SSLfatal(%struct.TYPE_18__* %317, i32 %318, i32 %319, i32 %320)
  br label %322

322:                                              ; preds = %316, %307
  br label %323

323:                                              ; preds = %322, %306
  br label %324

324:                                              ; preds = %323, %297, %266, %254, %237, %221, %193, %172, %166, %159, %143, %129, %59
  %325 = trunc i64 %44 to i32
  %326 = call i32 @OPENSSL_cleanse(i8* %45, i32 %325)
  %327 = trunc i64 %47 to i32
  %328 = call i32 @OPENSSL_cleanse(i8* %48, i32 %327)
  %329 = load i32*, i32** %19, align 8
  %330 = call i32 @EVP_PKEY_free(i32* %329)
  %331 = load i32*, i32** %20, align 8
  %332 = call i32 @EVP_MD_CTX_free(i32* %331)
  %333 = load i32, i32* %32, align 4
  %334 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %334)
  ret i32 %333
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @EVP_MD_size(i32*) #2

declare dso_local i32 @ossl_assert(i32) #2

declare dso_local i32 @SSLfatal(%struct.TYPE_18__*, i32, i32, i32) #2

declare dso_local i32 @tls13_generate_secret(%struct.TYPE_18__*, i32*, i32*, i32, i32, i8*) #2

declare dso_local i32* @EVP_MD_CTX_new(...) #2

declare dso_local i64 @EVP_DigestInit_ex(i32*, i32*, i32*) #2

declare dso_local i64 @EVP_DigestFinal_ex(i32*, i8*, i32*) #2

declare dso_local i32 @tls13_hkdf_expand(%struct.TYPE_18__*, i32*, i8*, i8*, i64, i8*, i64, i8*, i64, i32) #2

declare dso_local i32 @tls13_derive_finishedkey(%struct.TYPE_18__*, i32*, i8*, i8*, i64) #2

declare dso_local i64 @BIO_get_mem_data(i32, i8**) #2

declare dso_local i32 @PACKET_buf_init(i32*, i8*, i64) #2

declare dso_local i32 @PACKET_forward(i32*, i32) #2

declare dso_local i32 @PACKET_get_length_prefixed_3(i32*, i32*) #2

declare dso_local i64 @PACKET_remaining(i32*) #2

declare dso_local i64 @EVP_DigestUpdate(i32*, i8*, i64) #2

declare dso_local i32* @EVP_PKEY_new_raw_private_key(i32, i32*, i8*, i64) #2

declare dso_local i64 @EVP_DigestSignInit(i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i64 @EVP_DigestSignUpdate(i32*, i8*, i64) #2

declare dso_local i64 @EVP_DigestSignFinal(i32*, i8*, i64*) #2

declare dso_local i64 @CRYPTO_memcmp(i8*, i8*, i64) #2

declare dso_local i32 @OPENSSL_cleanse(i8*, i32) #2

declare dso_local i32 @EVP_PKEY_free(i32*) #2

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
