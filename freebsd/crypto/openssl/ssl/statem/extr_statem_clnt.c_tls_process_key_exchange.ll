; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_clnt.c_tls_process_key_exchange.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_clnt.c_tls_process_key_exchange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__, i32* }
%struct.TYPE_18__ = type { %struct.TYPE_17__*, i32 }
%struct.TYPE_17__ = type { i64, i32 }

@SSL_PSK = common dso_local global i64 0, align 8
@SSL_kPSK = common dso_local global i64 0, align 8
@SSL_kRSAPSK = common dso_local global i64 0, align 8
@SSL_kSRP = common dso_local global i64 0, align 8
@SSL_kDHE = common dso_local global i64 0, align 8
@SSL_kDHEPSK = common dso_local global i64 0, align 8
@SSL_kECDHE = common dso_local global i64 0, align 8
@SSL_kECDHEPSK = common dso_local global i64 0, align 8
@SSL_AD_UNEXPECTED_MESSAGE = common dso_local global i32 0, align 4
@SSL_F_TLS_PROCESS_KEY_EXCHANGE = common dso_local global i32 0, align 4
@SSL_R_UNEXPECTED_MESSAGE = common dso_local global i32 0, align 4
@SSL_AD_DECODE_ERROR = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_R_LENGTH_TOO_SHORT = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_R_LENGTH_MISMATCH = common dso_local global i32 0, align 4
@SSL_R_WRONG_SIGNATURE_LENGTH = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@ERR_R_EVP_LIB = common dso_local global i32 0, align 4
@RSA_PKCS1_PSS_PADDING = common dso_local global i32 0, align 4
@RSA_PSS_SALTLEN_DIGEST = common dso_local global i32 0, align 4
@SSL_AD_DECRYPT_ERROR = common dso_local global i32 0, align 4
@SSL_R_BAD_SIGNATURE = common dso_local global i32 0, align 4
@SSL_aNULL = common dso_local global i32 0, align 4
@SSL_aSRP = common dso_local global i32 0, align 4
@SSL_R_BAD_DATA = common dso_local global i32 0, align 4
@SSL_R_EXTRA_DATA_IN_MESSAGE = common dso_local global i32 0, align 4
@MSG_PROCESS_CONTINUE_READING = common dso_local global i32 0, align 4
@MSG_PROCESS_ERROR = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_process_key_exchange(%struct.TYPE_20__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %6, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %10, align 4
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @EVP_PKEY_free(i32* %33)
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 1
  store i32* null, i32** %38, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* @SSL_PSK, align 8
  %41 = and i64 %39, %40
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %2
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @tls_process_ske_psk_preamble(%struct.TYPE_20__* %44, i32* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %43
  br label %326

49:                                               ; preds = %43
  br label %50

50:                                               ; preds = %49, %2
  %51 = load i64, i64* %6, align 8
  %52 = load i64, i64* @SSL_kPSK, align 8
  %53 = load i64, i64* @SSL_kRSAPSK, align 8
  %54 = or i64 %52, %53
  %55 = and i64 %51, %54
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  br label %111

58:                                               ; preds = %50
  %59 = load i64, i64* %6, align 8
  %60 = load i64, i64* @SSL_kSRP, align 8
  %61 = and i64 %59, %60
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %58
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %65 = load i32*, i32** %5, align 8
  %66 = call i32 @tls_process_ske_srp(%struct.TYPE_20__* %64, i32* %65, i32** %7)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %63
  br label %326

69:                                               ; preds = %63
  br label %110

70:                                               ; preds = %58
  %71 = load i64, i64* %6, align 8
  %72 = load i64, i64* @SSL_kDHE, align 8
  %73 = load i64, i64* @SSL_kDHEPSK, align 8
  %74 = or i64 %72, %73
  %75 = and i64 %71, %74
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %70
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %79 = load i32*, i32** %5, align 8
  %80 = call i32 @tls_process_ske_dhe(%struct.TYPE_20__* %78, i32* %79, i32** %7)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %77
  br label %326

83:                                               ; preds = %77
  br label %109

84:                                               ; preds = %70
  %85 = load i64, i64* %6, align 8
  %86 = load i64, i64* @SSL_kECDHE, align 8
  %87 = load i64, i64* @SSL_kECDHEPSK, align 8
  %88 = or i64 %86, %87
  %89 = and i64 %85, %88
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %84
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %93 = load i32*, i32** %5, align 8
  %94 = call i32 @tls_process_ske_ecdhe(%struct.TYPE_20__* %92, i32* %93, i32** %7)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %91
  br label %326

97:                                               ; preds = %91
  br label %108

98:                                               ; preds = %84
  %99 = load i64, i64* %6, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %98
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %103 = load i32, i32* @SSL_AD_UNEXPECTED_MESSAGE, align 4
  %104 = load i32, i32* @SSL_F_TLS_PROCESS_KEY_EXCHANGE, align 4
  %105 = load i32, i32* @SSL_R_UNEXPECTED_MESSAGE, align 4
  %106 = call i32 @SSLfatal(%struct.TYPE_20__* %102, i32 %103, i32 %104, i32 %105)
  br label %326

107:                                              ; preds = %98
  br label %108

108:                                              ; preds = %107, %97
  br label %109

109:                                              ; preds = %108, %83
  br label %110

110:                                              ; preds = %109, %69
  br label %111

111:                                              ; preds = %110, %57
  %112 = load i32*, i32** %7, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %114, label %283

114:                                              ; preds = %111
  store i32* null, i32** %14, align 8
  %115 = call i64 @PACKET_remaining(i32* %10)
  %116 = load i32*, i32** %5, align 8
  %117 = call i64 @PACKET_remaining(i32* %116)
  %118 = sub i64 %115, %117
  %119 = call i32 @PACKET_get_sub_packet(i32* %10, i32* %12, i64 %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %127, label %121

121:                                              ; preds = %114
  %122 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %123 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %124 = load i32, i32* @SSL_F_TLS_PROCESS_KEY_EXCHANGE, align 4
  %125 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %126 = call i32 @SSLfatal(%struct.TYPE_20__* %122, i32 %123, i32 %124, i32 %125)
  br label %326

127:                                              ; preds = %114
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %129 = call i64 @SSL_USE_SIGALGS(%struct.TYPE_20__* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %149

131:                                              ; preds = %127
  %132 = load i32*, i32** %5, align 8
  %133 = call i32 @PACKET_get_net_2(i32* %132, i32* %18)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %141, label %135

135:                                              ; preds = %131
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %137 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %138 = load i32, i32* @SSL_F_TLS_PROCESS_KEY_EXCHANGE, align 4
  %139 = load i32, i32* @SSL_R_LENGTH_TOO_SHORT, align 4
  %140 = call i32 @SSLfatal(%struct.TYPE_20__* %136, i32 %137, i32 %138, i32 %139)
  br label %326

141:                                              ; preds = %131
  %142 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %143 = load i32, i32* %18, align 4
  %144 = load i32*, i32** %7, align 8
  %145 = call i64 @tls12_check_peer_sigalg(%struct.TYPE_20__* %142, i32 %143, i32* %144)
  %146 = icmp sle i64 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %141
  br label %326

148:                                              ; preds = %141
  br label %161

149:                                              ; preds = %127
  %150 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %151 = load i32*, i32** %7, align 8
  %152 = call i32 @tls1_set_peer_legacy_sigalg(%struct.TYPE_20__* %150, i32* %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %160, label %154

154:                                              ; preds = %149
  %155 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %156 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %157 = load i32, i32* @SSL_F_TLS_PROCESS_KEY_EXCHANGE, align 4
  %158 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %159 = call i32 @SSLfatal(%struct.TYPE_20__* %155, i32 %156, i32 %157, i32 %158)
  br label %326

160:                                              ; preds = %149
  br label %161

161:                                              ; preds = %160, %148
  %162 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %162, i32 0, i32 0
  %164 = load %struct.TYPE_19__*, %struct.TYPE_19__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @tls1_lookup_md(i32 %167, i32** %14)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %176, label %170

170:                                              ; preds = %161
  %171 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %172 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %173 = load i32, i32* @SSL_F_TLS_PROCESS_KEY_EXCHANGE, align 4
  %174 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %175 = call i32 @SSLfatal(%struct.TYPE_20__* %171, i32 %172, i32 %173, i32 %174)
  br label %326

176:                                              ; preds = %161
  %177 = load i32*, i32** %5, align 8
  %178 = call i32 @PACKET_get_length_prefixed_2(i32* %177, i32* %11)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %176
  %181 = load i32*, i32** %5, align 8
  %182 = call i64 @PACKET_remaining(i32* %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %190

184:                                              ; preds = %180, %176
  %185 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %186 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %187 = load i32, i32* @SSL_F_TLS_PROCESS_KEY_EXCHANGE, align 4
  %188 = load i32, i32* @SSL_R_LENGTH_MISMATCH, align 4
  %189 = call i32 @SSLfatal(%struct.TYPE_20__* %185, i32 %186, i32 %187, i32 %188)
  br label %326

190:                                              ; preds = %180
  %191 = load i32*, i32** %7, align 8
  %192 = call i32 @EVP_PKEY_size(i32* %191)
  store i32 %192, i32* %13, align 4
  %193 = load i32, i32* %13, align 4
  %194 = icmp slt i32 %193, 0
  br i1 %194, label %195, label %201

195:                                              ; preds = %190
  %196 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %197 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %198 = load i32, i32* @SSL_F_TLS_PROCESS_KEY_EXCHANGE, align 4
  %199 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %200 = call i32 @SSLfatal(%struct.TYPE_20__* %196, i32 %197, i32 %198, i32 %199)
  br label %326

201:                                              ; preds = %190
  %202 = call i64 @PACKET_remaining(i32* %11)
  %203 = load i32, i32* %13, align 4
  %204 = sext i32 %203 to i64
  %205 = icmp ugt i64 %202, %204
  br i1 %205, label %206, label %212

206:                                              ; preds = %201
  %207 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %208 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %209 = load i32, i32* @SSL_F_TLS_PROCESS_KEY_EXCHANGE, align 4
  %210 = load i32, i32* @SSL_R_WRONG_SIGNATURE_LENGTH, align 4
  %211 = call i32 @SSLfatal(%struct.TYPE_20__* %207, i32 %208, i32 %209, i32 %210)
  br label %326

212:                                              ; preds = %201
  %213 = call i32* (...) @EVP_MD_CTX_new()
  store i32* %213, i32** %8, align 8
  %214 = load i32*, i32** %8, align 8
  %215 = icmp eq i32* %214, null
  br i1 %215, label %216, label %222

216:                                              ; preds = %212
  %217 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %218 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %219 = load i32, i32* @SSL_F_TLS_PROCESS_KEY_EXCHANGE, align 4
  %220 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %221 = call i32 @SSLfatal(%struct.TYPE_20__* %217, i32 %218, i32 %219, i32 %220)
  br label %326

222:                                              ; preds = %212
  %223 = load i32*, i32** %8, align 8
  %224 = load i32*, i32** %14, align 8
  %225 = load i32*, i32** %7, align 8
  %226 = call i64 @EVP_DigestVerifyInit(i32* %223, i32** %9, i32* %224, i32* null, i32* %225)
  %227 = icmp sle i64 %226, 0
  br i1 %227, label %228, label %234

228:                                              ; preds = %222
  %229 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %230 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %231 = load i32, i32* @SSL_F_TLS_PROCESS_KEY_EXCHANGE, align 4
  %232 = load i32, i32* @ERR_R_EVP_LIB, align 4
  %233 = call i32 @SSLfatal(%struct.TYPE_20__* %229, i32 %230, i32 %231, i32 %232)
  br label %326

234:                                              ; preds = %222
  %235 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %236 = call i64 @SSL_USE_PSS(%struct.TYPE_20__* %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %255

238:                                              ; preds = %234
  %239 = load i32*, i32** %9, align 8
  %240 = load i32, i32* @RSA_PKCS1_PSS_PADDING, align 4
  %241 = call i64 @EVP_PKEY_CTX_set_rsa_padding(i32* %239, i32 %240)
  %242 = icmp sle i64 %241, 0
  br i1 %242, label %248, label %243

243:                                              ; preds = %238
  %244 = load i32*, i32** %9, align 8
  %245 = load i32, i32* @RSA_PSS_SALTLEN_DIGEST, align 4
  %246 = call i64 @EVP_PKEY_CTX_set_rsa_pss_saltlen(i32* %244, i32 %245)
  %247 = icmp sle i64 %246, 0
  br i1 %247, label %248, label %254

248:                                              ; preds = %243, %238
  %249 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %250 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %251 = load i32, i32* @SSL_F_TLS_PROCESS_KEY_EXCHANGE, align 4
  %252 = load i32, i32* @ERR_R_EVP_LIB, align 4
  %253 = call i32 @SSLfatal(%struct.TYPE_20__* %249, i32 %250, i32 %251, i32 %252)
  br label %326

254:                                              ; preds = %243
  br label %255

255:                                              ; preds = %254, %234
  %256 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %257 = call i32 @PACKET_data(i32* %12)
  %258 = call i64 @PACKET_remaining(i32* %12)
  %259 = call i64 @construct_key_exchange_tbs(%struct.TYPE_20__* %256, i8** %15, i32 %257, i64 %258)
  store i64 %259, i64* %16, align 8
  %260 = load i64, i64* %16, align 8
  %261 = icmp eq i64 %260, 0
  br i1 %261, label %262, label %263

262:                                              ; preds = %255
  br label %326

263:                                              ; preds = %255
  %264 = load i32*, i32** %8, align 8
  %265 = call i32 @PACKET_data(i32* %11)
  %266 = call i64 @PACKET_remaining(i32* %11)
  %267 = load i8*, i8** %15, align 8
  %268 = load i64, i64* %16, align 8
  %269 = call i32 @EVP_DigestVerify(i32* %264, i32 %265, i64 %266, i8* %267, i64 %268)
  store i32 %269, i32* %17, align 4
  %270 = load i8*, i8** %15, align 8
  %271 = call i32 @OPENSSL_free(i8* %270)
  %272 = load i32, i32* %17, align 4
  %273 = icmp sle i32 %272, 0
  br i1 %273, label %274, label %280

274:                                              ; preds = %263
  %275 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %276 = load i32, i32* @SSL_AD_DECRYPT_ERROR, align 4
  %277 = load i32, i32* @SSL_F_TLS_PROCESS_KEY_EXCHANGE, align 4
  %278 = load i32, i32* @SSL_R_BAD_SIGNATURE, align 4
  %279 = call i32 @SSLfatal(%struct.TYPE_20__* %275, i32 %276, i32 %277, i32 %278)
  br label %326

280:                                              ; preds = %263
  %281 = load i32*, i32** %8, align 8
  %282 = call i32 @EVP_MD_CTX_free(i32* %281)
  store i32* null, i32** %8, align 8
  br label %324

283:                                              ; preds = %111
  %284 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %285 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %284, i32 0, i32 0
  %286 = load %struct.TYPE_19__*, %struct.TYPE_19__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %287, i32 0, i32 0
  %289 = load %struct.TYPE_17__*, %struct.TYPE_17__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 8
  %292 = load i32, i32* @SSL_aNULL, align 4
  %293 = load i32, i32* @SSL_aSRP, align 4
  %294 = or i32 %292, %293
  %295 = and i32 %291, %294
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %313, label %297

297:                                              ; preds = %283
  %298 = load i64, i64* %6, align 8
  %299 = load i64, i64* @SSL_PSK, align 8
  %300 = and i64 %298, %299
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %313, label %302

302:                                              ; preds = %297
  %303 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %304 = call i64 @ssl3_check_cert_and_algorithm(%struct.TYPE_20__* %303)
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %312

306:                                              ; preds = %302
  %307 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %308 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %309 = load i32, i32* @SSL_F_TLS_PROCESS_KEY_EXCHANGE, align 4
  %310 = load i32, i32* @SSL_R_BAD_DATA, align 4
  %311 = call i32 @SSLfatal(%struct.TYPE_20__* %307, i32 %308, i32 %309, i32 %310)
  br label %312

312:                                              ; preds = %306, %302
  br label %326

313:                                              ; preds = %297, %283
  %314 = load i32*, i32** %5, align 8
  %315 = call i64 @PACKET_remaining(i32* %314)
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %317, label %323

317:                                              ; preds = %313
  %318 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %319 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %320 = load i32, i32* @SSL_F_TLS_PROCESS_KEY_EXCHANGE, align 4
  %321 = load i32, i32* @SSL_R_EXTRA_DATA_IN_MESSAGE, align 4
  %322 = call i32 @SSLfatal(%struct.TYPE_20__* %318, i32 %319, i32 %320, i32 %321)
  br label %326

323:                                              ; preds = %313
  br label %324

324:                                              ; preds = %323, %280
  %325 = load i32, i32* @MSG_PROCESS_CONTINUE_READING, align 4
  store i32 %325, i32* %3, align 4
  br label %330

326:                                              ; preds = %317, %312, %274, %262, %248, %228, %216, %206, %195, %184, %170, %154, %147, %135, %121, %101, %96, %82, %68, %48
  %327 = load i32*, i32** %8, align 8
  %328 = call i32 @EVP_MD_CTX_free(i32* %327)
  %329 = load i32, i32* @MSG_PROCESS_ERROR, align 4
  store i32 %329, i32* %3, align 4
  br label %330

330:                                              ; preds = %326, %324
  %331 = load i32, i32* %3, align 4
  ret i32 %331
}

declare dso_local i32 @EVP_PKEY_free(i32*) #1

declare dso_local i32 @tls_process_ske_psk_preamble(%struct.TYPE_20__*, i32*) #1

declare dso_local i32 @tls_process_ske_srp(%struct.TYPE_20__*, i32*, i32**) #1

declare dso_local i32 @tls_process_ske_dhe(%struct.TYPE_20__*, i32*, i32**) #1

declare dso_local i32 @tls_process_ske_ecdhe(%struct.TYPE_20__*, i32*, i32**) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_20__*, i32, i32, i32) #1

declare dso_local i32 @PACKET_get_sub_packet(i32*, i32*, i64) #1

declare dso_local i64 @PACKET_remaining(i32*) #1

declare dso_local i64 @SSL_USE_SIGALGS(%struct.TYPE_20__*) #1

declare dso_local i32 @PACKET_get_net_2(i32*, i32*) #1

declare dso_local i64 @tls12_check_peer_sigalg(%struct.TYPE_20__*, i32, i32*) #1

declare dso_local i32 @tls1_set_peer_legacy_sigalg(%struct.TYPE_20__*, i32*) #1

declare dso_local i32 @tls1_lookup_md(i32, i32**) #1

declare dso_local i32 @PACKET_get_length_prefixed_2(i32*, i32*) #1

declare dso_local i32 @EVP_PKEY_size(i32*) #1

declare dso_local i32* @EVP_MD_CTX_new(...) #1

declare dso_local i64 @EVP_DigestVerifyInit(i32*, i32**, i32*, i32*, i32*) #1

declare dso_local i64 @SSL_USE_PSS(%struct.TYPE_20__*) #1

declare dso_local i64 @EVP_PKEY_CTX_set_rsa_padding(i32*, i32) #1

declare dso_local i64 @EVP_PKEY_CTX_set_rsa_pss_saltlen(i32*, i32) #1

declare dso_local i64 @construct_key_exchange_tbs(%struct.TYPE_20__*, i8**, i32, i64) #1

declare dso_local i32 @PACKET_data(i32*) #1

declare dso_local i32 @EVP_DigestVerify(i32*, i32, i64, i8*, i64) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @EVP_MD_CTX_free(i32*) #1

declare dso_local i64 @ssl3_check_cert_and_algorithm(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
