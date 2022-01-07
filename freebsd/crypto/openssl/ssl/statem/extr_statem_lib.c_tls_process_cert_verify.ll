; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_lib.c_tls_process_cert_verify.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_lib.c_tls_process_cert_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, %struct.TYPE_15__*, i32, %struct.TYPE_13__* }
%struct.TYPE_15__ = type { i32*, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i64, i32* }

@MSG_PROCESS_ERROR = common dso_local global i32 0, align 4
@TLS13_TBS_PREAMBLE_SIZE = common dso_local global i32 0, align 4
@EVP_MAX_MD_SIZE = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_PROCESS_CERT_VERIFY = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_AD_ILLEGAL_PARAMETER = common dso_local global i32 0, align 4
@SSL_R_SIGNATURE_FOR_NON_SIGNING_CERTIFICATE = common dso_local global i32 0, align 4
@SSL_AD_DECODE_ERROR = common dso_local global i32 0, align 4
@SSL_R_BAD_PACKET = common dso_local global i32 0, align 4
@NID_id_GostR3410_2001 = common dso_local global i32 0, align 4
@NID_id_GostR3410_2012_256 = common dso_local global i32 0, align 4
@NID_id_GostR3410_2012_512 = common dso_local global i32 0, align 4
@SSL_R_LENGTH_MISMATCH = common dso_local global i32 0, align 4
@SSL_R_WRONG_SIGNATURE_SIZE = common dso_local global i32 0, align 4
@ERR_R_EVP_LIB = common dso_local global i32 0, align 4
@RSA_PKCS1_PSS_PADDING = common dso_local global i32 0, align 4
@RSA_PSS_SALTLEN_DIGEST = common dso_local global i32 0, align 4
@SSL3_VERSION = common dso_local global i64 0, align 8
@EVP_CTRL_SSL3_MASTER_SECRET = common dso_local global i32 0, align 4
@SSL_AD_DECRYPT_ERROR = common dso_local global i32 0, align 4
@SSL_R_BAD_SIGNATURE = common dso_local global i32 0, align 4
@MSG_PROCESS_CONTINUE_PROCESSING = common dso_local global i32 0, align 4
@MSG_PROCESS_CONTINUE_READING = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_process_cert_verify(%struct.TYPE_16__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i8* null, i8** %7, align 8
  %21 = load i32, i32* @MSG_PROCESS_ERROR, align 4
  store i32 %21, i32* %8, align 4
  store i32* null, i32** %12, align 8
  store i64 0, i64* %13, align 8
  %22 = load i32, i32* @TLS13_TBS_PREAMBLE_SIZE, align 4
  %23 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %24 = add nsw i32 %22, %23
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %15, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %16, align 8
  %28 = call i32* (...) @EVP_MD_CTX_new()
  store i32* %28, i32** %17, align 8
  store i32* null, i32** %18, align 8
  %29 = load i32*, i32** %17, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %2
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %33 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %34 = load i32, i32* @SSL_F_TLS_PROCESS_CERT_VERIFY, align 4
  %35 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %36 = call i32 @SSLfatal(%struct.TYPE_16__* %32, i32 %33, i32 %34, i32 %35)
  br label %338

37:                                               ; preds = %2
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 3
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  store i32* %42, i32** %11, align 8
  %43 = load i32*, i32** %11, align 8
  %44 = call i32* @X509_get0_pubkey(i32* %43)
  store i32* %44, i32** %5, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %37
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %49 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %50 = load i32, i32* @SSL_F_TLS_PROCESS_CERT_VERIFY, align 4
  %51 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %52 = call i32 @SSLfatal(%struct.TYPE_16__* %48, i32 %49, i32 %50, i32 %51)
  br label %338

53:                                               ; preds = %37
  %54 = load i32*, i32** %5, align 8
  %55 = call i32* @ssl_cert_lookup_by_pkey(i32* %54, i32* null)
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %63

57:                                               ; preds = %53
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %59 = load i32, i32* @SSL_AD_ILLEGAL_PARAMETER, align 4
  %60 = load i32, i32* @SSL_F_TLS_PROCESS_CERT_VERIFY, align 4
  %61 = load i32, i32* @SSL_R_SIGNATURE_FOR_NON_SIGNING_CERTIFICATE, align 4
  %62 = call i32 @SSLfatal(%struct.TYPE_16__* %58, i32 %59, i32 %60, i32 %61)
  br label %338

63:                                               ; preds = %53
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %65 = call i64 @SSL_USE_SIGALGS(%struct.TYPE_16__* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %85

67:                                               ; preds = %63
  %68 = load i32*, i32** %4, align 8
  %69 = call i32 @PACKET_get_net_2(i32* %68, i32* %19)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %67
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %73 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %74 = load i32, i32* @SSL_F_TLS_PROCESS_CERT_VERIFY, align 4
  %75 = load i32, i32* @SSL_R_BAD_PACKET, align 4
  %76 = call i32 @SSLfatal(%struct.TYPE_16__* %72, i32 %73, i32 %74, i32 %75)
  br label %338

77:                                               ; preds = %67
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %79 = load i32, i32* %19, align 4
  %80 = load i32*, i32** %5, align 8
  %81 = call i64 @tls12_check_peer_sigalg(%struct.TYPE_16__* %78, i32 %79, i32* %80)
  %82 = icmp sle i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  br label %338

84:                                               ; preds = %77
  br label %97

85:                                               ; preds = %63
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %87 = load i32*, i32** %5, align 8
  %88 = call i32 @tls1_set_peer_legacy_sigalg(%struct.TYPE_16__* %86, i32* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %96, label %90

90:                                               ; preds = %85
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %92 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %93 = load i32, i32* @SSL_F_TLS_PROCESS_CERT_VERIFY, align 4
  %94 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %95 = call i32 @SSLfatal(%struct.TYPE_16__* %91, i32 %92, i32 %93, i32 %94)
  br label %338

96:                                               ; preds = %85
  br label %97

97:                                               ; preds = %96, %84
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @tls1_lookup_md(i32 %103, i32** %12)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %112, label %106

106:                                              ; preds = %97
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %108 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %109 = load i32, i32* @SSL_F_TLS_PROCESS_CERT_VERIFY, align 4
  %110 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %111 = call i32 @SSLfatal(%struct.TYPE_16__* %107, i32 %108, i32 %109, i32 %110)
  br label %338

112:                                              ; preds = %97
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %114 = call i64 @SSL_USE_SIGALGS(%struct.TYPE_16__* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %142, label %116

116:                                              ; preds = %112
  %117 = load i32*, i32** %4, align 8
  %118 = call i32 @PACKET_remaining(i32* %117)
  %119 = icmp eq i32 %118, 64
  br i1 %119, label %120, label %130

120:                                              ; preds = %116
  %121 = load i32*, i32** %5, align 8
  %122 = call i32 @EVP_PKEY_id(i32* %121)
  %123 = load i32, i32* @NID_id_GostR3410_2001, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %139, label %125

125:                                              ; preds = %120
  %126 = load i32*, i32** %5, align 8
  %127 = call i32 @EVP_PKEY_id(i32* %126)
  %128 = load i32, i32* @NID_id_GostR3410_2012_256, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %139, label %130

130:                                              ; preds = %125, %116
  %131 = load i32*, i32** %4, align 8
  %132 = call i32 @PACKET_remaining(i32* %131)
  %133 = icmp eq i32 %132, 128
  br i1 %133, label %134, label %142

134:                                              ; preds = %130
  %135 = load i32*, i32** %5, align 8
  %136 = call i32 @EVP_PKEY_id(i32* %135)
  %137 = load i32, i32* @NID_id_GostR3410_2012_512, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %134, %125, %120
  %140 = load i32*, i32** %4, align 8
  %141 = call i32 @PACKET_remaining(i32* %140)
  store i32 %141, i32* %10, align 4
  br label %153

142:                                              ; preds = %134, %130, %112
  %143 = load i32*, i32** %4, align 8
  %144 = call i32 @PACKET_get_net_2(i32* %143, i32* %10)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %152, label %146

146:                                              ; preds = %142
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %148 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %149 = load i32, i32* @SSL_F_TLS_PROCESS_CERT_VERIFY, align 4
  %150 = load i32, i32* @SSL_R_LENGTH_MISMATCH, align 4
  %151 = call i32 @SSLfatal(%struct.TYPE_16__* %147, i32 %148, i32 %149, i32 %150)
  br label %338

152:                                              ; preds = %142
  br label %153

153:                                              ; preds = %152, %139
  %154 = load i32*, i32** %5, align 8
  %155 = call i32 @EVP_PKEY_size(i32* %154)
  store i32 %155, i32* %9, align 4
  %156 = load i32, i32* %10, align 4
  %157 = load i32, i32* %9, align 4
  %158 = icmp sgt i32 %156, %157
  br i1 %158, label %168, label %159

159:                                              ; preds = %153
  %160 = load i32*, i32** %4, align 8
  %161 = call i32 @PACKET_remaining(i32* %160)
  %162 = load i32, i32* %9, align 4
  %163 = icmp sgt i32 %161, %162
  br i1 %163, label %168, label %164

164:                                              ; preds = %159
  %165 = load i32*, i32** %4, align 8
  %166 = call i32 @PACKET_remaining(i32* %165)
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %164, %159, %153
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %170 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %171 = load i32, i32* @SSL_F_TLS_PROCESS_CERT_VERIFY, align 4
  %172 = load i32, i32* @SSL_R_WRONG_SIGNATURE_SIZE, align 4
  %173 = call i32 @SSLfatal(%struct.TYPE_16__* %169, i32 %170, i32 %171, i32 %172)
  br label %338

174:                                              ; preds = %164
  %175 = load i32*, i32** %4, align 8
  %176 = load i32, i32* %10, align 4
  %177 = call i32 @PACKET_get_bytes(i32* %175, i8** %6, i32 %176)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %185, label %179

179:                                              ; preds = %174
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %181 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %182 = load i32, i32* @SSL_F_TLS_PROCESS_CERT_VERIFY, align 4
  %183 = load i32, i32* @SSL_R_LENGTH_MISMATCH, align 4
  %184 = call i32 @SSLfatal(%struct.TYPE_16__* %180, i32 %181, i32 %182, i32 %183)
  br label %338

185:                                              ; preds = %174
  %186 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %187 = call i32 @get_cert_verify_tbs_data(%struct.TYPE_16__* %186, i8* %27, i8** %14, i64* %13)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %190, label %189

189:                                              ; preds = %185
  br label %338

190:                                              ; preds = %185
  %191 = load i32*, i32** %17, align 8
  %192 = load i32*, i32** %12, align 8
  %193 = load i32*, i32** %5, align 8
  %194 = call i64 @EVP_DigestVerifyInit(i32* %191, i32** %18, i32* %192, i32* null, i32* %193)
  %195 = icmp sle i64 %194, 0
  br i1 %195, label %196, label %202

196:                                              ; preds = %190
  %197 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %198 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %199 = load i32, i32* @SSL_F_TLS_PROCESS_CERT_VERIFY, align 4
  %200 = load i32, i32* @ERR_R_EVP_LIB, align 4
  %201 = call i32 @SSLfatal(%struct.TYPE_16__* %197, i32 %198, i32 %199, i32 %200)
  br label %338

202:                                              ; preds = %190
  %203 = load i32*, i32** %5, align 8
  %204 = call i32 @EVP_PKEY_id(i32* %203)
  store i32 %204, i32* %20, align 4
  %205 = load i32, i32* %20, align 4
  %206 = load i32, i32* @NID_id_GostR3410_2001, align 4
  %207 = icmp eq i32 %205, %206
  br i1 %207, label %216, label %208

208:                                              ; preds = %202
  %209 = load i32, i32* %20, align 4
  %210 = load i32, i32* @NID_id_GostR3410_2012_256, align 4
  %211 = icmp eq i32 %209, %210
  br i1 %211, label %216, label %212

212:                                              ; preds = %208
  %213 = load i32, i32* %20, align 4
  %214 = load i32, i32* @NID_id_GostR3410_2012_512, align 4
  %215 = icmp eq i32 %213, %214
  br i1 %215, label %216, label %232

216:                                              ; preds = %212, %208, %202
  %217 = load i32, i32* %10, align 4
  %218 = call i8* @OPENSSL_malloc(i32 %217)
  store i8* %218, i8** %7, align 8
  %219 = icmp eq i8* %218, null
  br i1 %219, label %220, label %226

220:                                              ; preds = %216
  %221 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %222 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %223 = load i32, i32* @SSL_F_TLS_PROCESS_CERT_VERIFY, align 4
  %224 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %225 = call i32 @SSLfatal(%struct.TYPE_16__* %221, i32 %222, i32 %223, i32 %224)
  br label %338

226:                                              ; preds = %216
  %227 = load i8*, i8** %7, align 8
  %228 = load i8*, i8** %6, align 8
  %229 = load i32, i32* %10, align 4
  %230 = call i32 @BUF_reverse(i8* %227, i8* %228, i32 %229)
  %231 = load i8*, i8** %7, align 8
  store i8* %231, i8** %6, align 8
  br label %232

232:                                              ; preds = %226, %212
  %233 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %234 = call i64 @SSL_USE_PSS(%struct.TYPE_16__* %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %253

236:                                              ; preds = %232
  %237 = load i32*, i32** %18, align 8
  %238 = load i32, i32* @RSA_PKCS1_PSS_PADDING, align 4
  %239 = call i64 @EVP_PKEY_CTX_set_rsa_padding(i32* %237, i32 %238)
  %240 = icmp sle i64 %239, 0
  br i1 %240, label %246, label %241

241:                                              ; preds = %236
  %242 = load i32*, i32** %18, align 8
  %243 = load i32, i32* @RSA_PSS_SALTLEN_DIGEST, align 4
  %244 = call i64 @EVP_PKEY_CTX_set_rsa_pss_saltlen(i32* %242, i32 %243)
  %245 = icmp sle i64 %244, 0
  br i1 %245, label %246, label %252

246:                                              ; preds = %241, %236
  %247 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %248 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %249 = load i32, i32* @SSL_F_TLS_PROCESS_CERT_VERIFY, align 4
  %250 = load i32, i32* @ERR_R_EVP_LIB, align 4
  %251 = call i32 @SSLfatal(%struct.TYPE_16__* %247, i32 %248, i32 %249, i32 %250)
  br label %338

252:                                              ; preds = %241
  br label %253

253:                                              ; preds = %252, %232
  %254 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %255 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = load i64, i64* @SSL3_VERSION, align 8
  %258 = icmp eq i64 %256, %257
  br i1 %258, label %259, label %300

259:                                              ; preds = %253
  %260 = load i32*, i32** %17, align 8
  %261 = load i8*, i8** %14, align 8
  %262 = load i64, i64* %13, align 8
  %263 = call i64 @EVP_DigestVerifyUpdate(i32* %260, i8* %261, i64 %262)
  %264 = icmp sle i64 %263, 0
  br i1 %264, label %281, label %265

265:                                              ; preds = %259
  %266 = load i32*, i32** %17, align 8
  %267 = load i32, i32* @EVP_CTRL_SSL3_MASTER_SECRET, align 4
  %268 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %269 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %268, i32 0, i32 3
  %270 = load %struct.TYPE_13__*, %struct.TYPE_13__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %270, i32 0, i32 1
  %272 = load i64, i64* %271, align 8
  %273 = trunc i64 %272 to i32
  %274 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %275 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %274, i32 0, i32 3
  %276 = load %struct.TYPE_13__*, %struct.TYPE_13__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = call i32 @EVP_MD_CTX_ctrl(i32* %266, i32 %267, i32 %273, i32 %278)
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %287, label %281

281:                                              ; preds = %265, %259
  %282 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %283 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %284 = load i32, i32* @SSL_F_TLS_PROCESS_CERT_VERIFY, align 4
  %285 = load i32, i32* @ERR_R_EVP_LIB, align 4
  %286 = call i32 @SSLfatal(%struct.TYPE_16__* %282, i32 %283, i32 %284, i32 %285)
  br label %338

287:                                              ; preds = %265
  %288 = load i32*, i32** %17, align 8
  %289 = load i8*, i8** %6, align 8
  %290 = load i32, i32* %10, align 4
  %291 = call i64 @EVP_DigestVerifyFinal(i32* %288, i8* %289, i32 %290)
  %292 = icmp sle i64 %291, 0
  br i1 %292, label %293, label %299

293:                                              ; preds = %287
  %294 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %295 = load i32, i32* @SSL_AD_DECRYPT_ERROR, align 4
  %296 = load i32, i32* @SSL_F_TLS_PROCESS_CERT_VERIFY, align 4
  %297 = load i32, i32* @SSL_R_BAD_SIGNATURE, align 4
  %298 = call i32 @SSLfatal(%struct.TYPE_16__* %294, i32 %295, i32 %296, i32 %297)
  br label %338

299:                                              ; preds = %287
  br label %316

300:                                              ; preds = %253
  %301 = load i32*, i32** %17, align 8
  %302 = load i8*, i8** %6, align 8
  %303 = load i32, i32* %10, align 4
  %304 = load i8*, i8** %14, align 8
  %305 = load i64, i64* %13, align 8
  %306 = call i32 @EVP_DigestVerify(i32* %301, i8* %302, i32 %303, i8* %304, i64 %305)
  store i32 %306, i32* %9, align 4
  %307 = load i32, i32* %9, align 4
  %308 = icmp sle i32 %307, 0
  br i1 %308, label %309, label %315

309:                                              ; preds = %300
  %310 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %311 = load i32, i32* @SSL_AD_DECRYPT_ERROR, align 4
  %312 = load i32, i32* @SSL_F_TLS_PROCESS_CERT_VERIFY, align 4
  %313 = load i32, i32* @SSL_R_BAD_SIGNATURE, align 4
  %314 = call i32 @SSLfatal(%struct.TYPE_16__* %310, i32 %311, i32 %312, i32 %313)
  br label %338

315:                                              ; preds = %300
  br label %316

316:                                              ; preds = %315, %299
  %317 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %318 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %317, i32 0, i32 2
  %319 = load i32, i32* %318, align 8
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %335, label %321

321:                                              ; preds = %316
  %322 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %323 = call i64 @SSL_IS_TLS13(%struct.TYPE_16__* %322)
  %324 = icmp ne i64 %323, 0
  br i1 %324, label %325, label %335

325:                                              ; preds = %321
  %326 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %327 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %326, i32 0, i32 1
  %328 = load %struct.TYPE_15__*, %struct.TYPE_15__** %327, align 8
  %329 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %328, i32 0, i32 1
  %330 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 8
  %332 = icmp eq i32 %331, 1
  br i1 %332, label %333, label %335

333:                                              ; preds = %325
  %334 = load i32, i32* @MSG_PROCESS_CONTINUE_PROCESSING, align 4
  store i32 %334, i32* %8, align 4
  br label %337

335:                                              ; preds = %325, %321, %316
  %336 = load i32, i32* @MSG_PROCESS_CONTINUE_READING, align 4
  store i32 %336, i32* %8, align 4
  br label %337

337:                                              ; preds = %335, %333
  br label %338

338:                                              ; preds = %337, %309, %293, %281, %246, %220, %196, %189, %179, %168, %146, %106, %90, %83, %71, %57, %47, %31
  %339 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %340 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %339, i32 0, i32 1
  %341 = load %struct.TYPE_15__*, %struct.TYPE_15__** %340, align 8
  %342 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %341, i32 0, i32 0
  %343 = load i32*, i32** %342, align 8
  %344 = call i32 @BIO_free(i32* %343)
  %345 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %346 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %345, i32 0, i32 1
  %347 = load %struct.TYPE_15__*, %struct.TYPE_15__** %346, align 8
  %348 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %347, i32 0, i32 0
  store i32* null, i32** %348, align 8
  %349 = load i32*, i32** %17, align 8
  %350 = call i32 @EVP_MD_CTX_free(i32* %349)
  %351 = load i8*, i8** %7, align 8
  %352 = call i32 @OPENSSL_free(i8* %351)
  %353 = load i32, i32* %8, align 4
  %354 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %354)
  ret i32 %353
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @EVP_MD_CTX_new(...) #2

declare dso_local i32 @SSLfatal(%struct.TYPE_16__*, i32, i32, i32) #2

declare dso_local i32* @X509_get0_pubkey(i32*) #2

declare dso_local i32* @ssl_cert_lookup_by_pkey(i32*, i32*) #2

declare dso_local i64 @SSL_USE_SIGALGS(%struct.TYPE_16__*) #2

declare dso_local i32 @PACKET_get_net_2(i32*, i32*) #2

declare dso_local i64 @tls12_check_peer_sigalg(%struct.TYPE_16__*, i32, i32*) #2

declare dso_local i32 @tls1_set_peer_legacy_sigalg(%struct.TYPE_16__*, i32*) #2

declare dso_local i32 @tls1_lookup_md(i32, i32**) #2

declare dso_local i32 @PACKET_remaining(i32*) #2

declare dso_local i32 @EVP_PKEY_id(i32*) #2

declare dso_local i32 @EVP_PKEY_size(i32*) #2

declare dso_local i32 @PACKET_get_bytes(i32*, i8**, i32) #2

declare dso_local i32 @get_cert_verify_tbs_data(%struct.TYPE_16__*, i8*, i8**, i64*) #2

declare dso_local i64 @EVP_DigestVerifyInit(i32*, i32**, i32*, i32*, i32*) #2

declare dso_local i8* @OPENSSL_malloc(i32) #2

declare dso_local i32 @BUF_reverse(i8*, i8*, i32) #2

declare dso_local i64 @SSL_USE_PSS(%struct.TYPE_16__*) #2

declare dso_local i64 @EVP_PKEY_CTX_set_rsa_padding(i32*, i32) #2

declare dso_local i64 @EVP_PKEY_CTX_set_rsa_pss_saltlen(i32*, i32) #2

declare dso_local i64 @EVP_DigestVerifyUpdate(i32*, i8*, i64) #2

declare dso_local i32 @EVP_MD_CTX_ctrl(i32*, i32, i32, i32) #2

declare dso_local i64 @EVP_DigestVerifyFinal(i32*, i8*, i32) #2

declare dso_local i32 @EVP_DigestVerify(i32*, i8*, i32, i8*, i64) #2

declare dso_local i64 @SSL_IS_TLS13(%struct.TYPE_16__*) #2

declare dso_local i32 @BIO_free(i32*) #2

declare dso_local i32 @EVP_MD_CTX_free(i32*) #2

declare dso_local i32 @OPENSSL_free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
