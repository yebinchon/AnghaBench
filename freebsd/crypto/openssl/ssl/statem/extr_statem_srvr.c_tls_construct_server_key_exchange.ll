; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_srvr.c_tls_construct_server_key_exchange.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_srvr.c_tls_construct_server_key_exchange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { %struct.TYPE_22__*, %struct.TYPE_25__*, %struct.TYPE_28__*, %struct.TYPE_20__ }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { %struct.TYPE_21__*, %struct.TYPE_23__*, i32*, %struct.TYPE_27__* }
%struct.TYPE_21__ = type { i32* }
%struct.TYPE_23__ = type { i64, i32 }
%struct.TYPE_27__ = type { i64, i32 }
%struct.TYPE_28__ = type { i32*, i32* (%struct.TYPE_26__*, i32, i32)*, i32*, i64 }
%struct.TYPE_20__ = type { i32*, i32*, i32*, i32* }

@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_CONSTRUCT_SERVER_KEY_EXCHANGE = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@SSL_kPSK = common dso_local global i64 0, align 8
@SSL_kRSAPSK = common dso_local global i64 0, align 8
@SSL_kDHE = common dso_local global i64 0, align 8
@SSL_kDHEPSK = common dso_local global i64 0, align 8
@SSL_R_MISSING_TMP_DH_KEY = common dso_local global i32 0, align 4
@SSL_SECOP_TMP_DH = common dso_local global i32 0, align 4
@SSL_AD_HANDSHAKE_FAILURE = common dso_local global i32 0, align 4
@SSL_R_DH_KEY_TOO_SMALL = common dso_local global i32 0, align 4
@SSL_kECDHE = common dso_local global i64 0, align 8
@SSL_kECDHEPSK = common dso_local global i64 0, align 8
@SSL_R_UNSUPPORTED_ELLIPTIC_CURVE = common dso_local global i32 0, align 4
@ERR_R_EC_LIB = common dso_local global i32 0, align 4
@SSL_kSRP = common dso_local global i64 0, align 8
@SSL_R_MISSING_SRP_PARAM = common dso_local global i32 0, align 4
@SSL_R_UNKNOWN_KEY_EXCHANGE_TYPE = common dso_local global i32 0, align 4
@SSL_aNULL = common dso_local global i32 0, align 4
@SSL_aSRP = common dso_local global i32 0, align 4
@SSL_PSK = common dso_local global i64 0, align 8
@SSL_AD_DECODE_ERROR = common dso_local global i32 0, align 4
@PSK_MAX_IDENTITY_LEN = common dso_local global i64 0, align 8
@NAMED_CURVE_TYPE = common dso_local global i32 0, align 4
@EVP_PKEY_RSA_PSS = common dso_local global i64 0, align 8
@RSA_PKCS1_PSS_PADDING = common dso_local global i32 0, align 4
@RSA_PSS_SALTLEN_DIGEST = common dso_local global i32 0, align 4
@ERR_R_EVP_LIB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_construct_server_key_exchange(%struct.TYPE_26__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_27__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca [4 x i32*], align 16
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_28__*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i32, align 4
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i8* null, i8** %7, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %35 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_25__*, %struct.TYPE_25__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %38, i32 0, i32 3
  %40 = load %struct.TYPE_27__*, %struct.TYPE_27__** %39, align 8
  store %struct.TYPE_27__* %40, %struct.TYPE_27__** %10, align 8
  %41 = call i32* (...) @EVP_MD_CTX_new()
  store i32* %41, i32** %14, align 8
  store i32* null, i32** %15, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @WPACKET_get_total_written(i32* %42, i64* %17)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %2
  %46 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %47 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %48 = load i32, i32* @SSL_F_TLS_CONSTRUCT_SERVER_KEY_EXCHANGE, align 4
  %49 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %50 = call i32 @SSLfatal(%struct.TYPE_26__* %46, i32 %47, i32 %48, i32 %49)
  br label %718

51:                                               ; preds = %2
  %52 = load i32*, i32** %14, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  %55 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %56 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %57 = load i32, i32* @SSL_F_TLS_CONSTRUCT_SERVER_KEY_EXCHANGE, align 4
  %58 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %59 = call i32 @SSLfatal(%struct.TYPE_26__* %55, i32 %56, i32 %57, i32 %58)
  br label %718

60:                                               ; preds = %51
  %61 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_25__*, %struct.TYPE_25__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_23__*, %struct.TYPE_23__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %12, align 8
  %69 = getelementptr inbounds [4 x i32*], [4 x i32*]* %13, i64 0, i64 3
  store i32* null, i32** %69, align 8
  %70 = getelementptr inbounds [4 x i32*], [4 x i32*]* %13, i64 0, i64 2
  store i32* null, i32** %70, align 16
  %71 = getelementptr inbounds [4 x i32*], [4 x i32*]* %13, i64 0, i64 1
  store i32* null, i32** %71, align 8
  %72 = getelementptr inbounds [4 x i32*], [4 x i32*]* %13, i64 0, i64 0
  store i32* null, i32** %72, align 16
  %73 = load i64, i64* %12, align 8
  %74 = load i64, i64* @SSL_kPSK, align 8
  %75 = load i64, i64* @SSL_kRSAPSK, align 8
  %76 = or i64 %74, %75
  %77 = and i64 %73, %76
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %60
  br label %367

80:                                               ; preds = %60
  %81 = load i64, i64* %12, align 8
  %82 = load i64, i64* @SSL_kDHE, align 8
  %83 = load i64, i64* @SSL_kDHEPSK, align 8
  %84 = or i64 %82, %83
  %85 = and i64 %81, %84
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %232

87:                                               ; preds = %80
  %88 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %88, i32 0, i32 2
  %90 = load %struct.TYPE_28__*, %struct.TYPE_28__** %89, align 8
  store %struct.TYPE_28__* %90, %struct.TYPE_28__** %18, align 8
  store i32* null, i32** %19, align 8
  %91 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_28__*, %struct.TYPE_28__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %119

97:                                               ; preds = %87
  %98 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %99 = call i32* @ssl_get_auto_dh(%struct.TYPE_26__* %98)
  store i32* %99, i32** %21, align 8
  %100 = call i32* (...) @EVP_PKEY_new()
  store i32* %100, i32** %6, align 8
  %101 = load i32*, i32** %6, align 8
  %102 = icmp eq i32* %101, null
  br i1 %102, label %106, label %103

103:                                              ; preds = %97
  %104 = load i32*, i32** %21, align 8
  %105 = icmp eq i32* %104, null
  br i1 %105, label %106, label %114

106:                                              ; preds = %103, %97
  %107 = load i32*, i32** %21, align 8
  %108 = call i32 @DH_free(i32* %107)
  %109 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %110 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %111 = load i32, i32* @SSL_F_TLS_CONSTRUCT_SERVER_KEY_EXCHANGE, align 4
  %112 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %113 = call i32 @SSLfatal(%struct.TYPE_26__* %109, i32 %110, i32 %111, i32 %112)
  br label %718

114:                                              ; preds = %103
  %115 = load i32*, i32** %6, align 8
  %116 = load i32*, i32** %21, align 8
  %117 = call i32 @EVP_PKEY_assign_DH(i32* %115, i32* %116)
  %118 = load i32*, i32** %6, align 8
  store i32* %118, i32** %19, align 8
  br label %123

119:                                              ; preds = %87
  %120 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  %121 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %120, i32 0, i32 2
  %122 = load i32*, i32** %121, align 8
  store i32* %122, i32** %19, align 8
  br label %123

123:                                              ; preds = %119, %114
  %124 = load i32*, i32** %19, align 8
  %125 = icmp eq i32* %124, null
  br i1 %125, label %126, label %153

126:                                              ; preds = %123
  %127 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %127, i32 0, i32 2
  %129 = load %struct.TYPE_28__*, %struct.TYPE_28__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %129, i32 0, i32 1
  %131 = load i32* (%struct.TYPE_26__*, i32, i32)*, i32* (%struct.TYPE_26__*, i32, i32)** %130, align 8
  %132 = icmp ne i32* (%struct.TYPE_26__*, i32, i32)* %131, null
  br i1 %132, label %133, label %153

133:                                              ; preds = %126
  %134 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %134, i32 0, i32 2
  %136 = load %struct.TYPE_28__*, %struct.TYPE_28__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %136, i32 0, i32 1
  %138 = load i32* (%struct.TYPE_26__*, i32, i32)*, i32* (%struct.TYPE_26__*, i32, i32)** %137, align 8
  %139 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %140 = call i32* %138(%struct.TYPE_26__* %139, i32 0, i32 1024)
  store i32* %140, i32** %22, align 8
  %141 = load i32*, i32** %22, align 8
  %142 = call i32* @ssl_dh_to_pkey(i32* %141)
  store i32* %142, i32** %6, align 8
  %143 = load i32*, i32** %6, align 8
  %144 = icmp eq i32* %143, null
  br i1 %144, label %145, label %151

145:                                              ; preds = %133
  %146 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %147 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %148 = load i32, i32* @SSL_F_TLS_CONSTRUCT_SERVER_KEY_EXCHANGE, align 4
  %149 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %150 = call i32 @SSLfatal(%struct.TYPE_26__* %146, i32 %147, i32 %148, i32 %149)
  br label %718

151:                                              ; preds = %133
  %152 = load i32*, i32** %6, align 8
  store i32* %152, i32** %19, align 8
  br label %153

153:                                              ; preds = %151, %126, %123
  %154 = load i32*, i32** %19, align 8
  %155 = icmp eq i32* %154, null
  br i1 %155, label %156, label %162

156:                                              ; preds = %153
  %157 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %158 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %159 = load i32, i32* @SSL_F_TLS_CONSTRUCT_SERVER_KEY_EXCHANGE, align 4
  %160 = load i32, i32* @SSL_R_MISSING_TMP_DH_KEY, align 4
  %161 = call i32 @SSLfatal(%struct.TYPE_26__* %157, i32 %158, i32 %159, i32 %160)
  br label %718

162:                                              ; preds = %153
  %163 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %164 = load i32, i32* @SSL_SECOP_TMP_DH, align 4
  %165 = load i32*, i32** %19, align 8
  %166 = call i32 @EVP_PKEY_security_bits(i32* %165)
  %167 = load i32*, i32** %19, align 8
  %168 = call i32 @ssl_security(%struct.TYPE_26__* %163, i32 %164, i32 %166, i32 0, i32* %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %176, label %170

170:                                              ; preds = %162
  %171 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %172 = load i32, i32* @SSL_AD_HANDSHAKE_FAILURE, align 4
  %173 = load i32, i32* @SSL_F_TLS_CONSTRUCT_SERVER_KEY_EXCHANGE, align 4
  %174 = load i32, i32* @SSL_R_DH_KEY_TOO_SMALL, align 4
  %175 = call i32 @SSLfatal(%struct.TYPE_26__* %171, i32 %172, i32 %173, i32 %174)
  br label %718

176:                                              ; preds = %162
  %177 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %177, i32 0, i32 1
  %179 = load %struct.TYPE_25__*, %struct.TYPE_25__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %180, i32 0, i32 2
  %182 = load i32*, i32** %181, align 8
  %183 = icmp ne i32* %182, null
  br i1 %183, label %184, label %190

184:                                              ; preds = %176
  %185 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %186 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %187 = load i32, i32* @SSL_F_TLS_CONSTRUCT_SERVER_KEY_EXCHANGE, align 4
  %188 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %189 = call i32 @SSLfatal(%struct.TYPE_26__* %185, i32 %186, i32 %187, i32 %188)
  br label %718

190:                                              ; preds = %176
  %191 = load i32*, i32** %19, align 8
  %192 = call i32* @ssl_generate_pkey(i32* %191)
  %193 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %193, i32 0, i32 1
  %195 = load %struct.TYPE_25__*, %struct.TYPE_25__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %196, i32 0, i32 2
  store i32* %192, i32** %197, align 8
  %198 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %198, i32 0, i32 1
  %200 = load %struct.TYPE_25__*, %struct.TYPE_25__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %201, i32 0, i32 2
  %203 = load i32*, i32** %202, align 8
  %204 = icmp eq i32* %203, null
  br i1 %204, label %205, label %206

205:                                              ; preds = %190
  br label %718

206:                                              ; preds = %190
  %207 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %207, i32 0, i32 1
  %209 = load %struct.TYPE_25__*, %struct.TYPE_25__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %210, i32 0, i32 2
  %212 = load i32*, i32** %211, align 8
  %213 = call i32* @EVP_PKEY_get0_DH(i32* %212)
  store i32* %213, i32** %20, align 8
  %214 = load i32*, i32** %20, align 8
  %215 = icmp eq i32* %214, null
  br i1 %215, label %216, label %222

216:                                              ; preds = %206
  %217 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %218 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %219 = load i32, i32* @SSL_F_TLS_CONSTRUCT_SERVER_KEY_EXCHANGE, align 4
  %220 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %221 = call i32 @SSLfatal(%struct.TYPE_26__* %217, i32 %218, i32 %219, i32 %220)
  br label %718

222:                                              ; preds = %206
  %223 = load i32*, i32** %6, align 8
  %224 = call i32 @EVP_PKEY_free(i32* %223)
  store i32* null, i32** %6, align 8
  %225 = load i32*, i32** %20, align 8
  %226 = getelementptr inbounds [4 x i32*], [4 x i32*]* %13, i64 0, i64 0
  %227 = getelementptr inbounds [4 x i32*], [4 x i32*]* %13, i64 0, i64 1
  %228 = call i32 @DH_get0_pqg(i32* %225, i32** %226, i32* null, i32** %227)
  %229 = load i32*, i32** %20, align 8
  %230 = getelementptr inbounds [4 x i32*], [4 x i32*]* %13, i64 0, i64 2
  %231 = call i32 @DH_get0_key(i32* %229, i32** %230, i32* null)
  br label %366

232:                                              ; preds = %80
  %233 = load i64, i64* %12, align 8
  %234 = load i64, i64* @SSL_kECDHE, align 8
  %235 = load i64, i64* @SSL_kECDHEPSK, align 8
  %236 = or i64 %234, %235
  %237 = and i64 %233, %236
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %302

239:                                              ; preds = %232
  %240 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %241 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %240, i32 0, i32 1
  %242 = load %struct.TYPE_25__*, %struct.TYPE_25__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %243, i32 0, i32 2
  %245 = load i32*, i32** %244, align 8
  %246 = icmp ne i32* %245, null
  br i1 %246, label %247, label %253

247:                                              ; preds = %239
  %248 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %249 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %250 = load i32, i32* @SSL_F_TLS_CONSTRUCT_SERVER_KEY_EXCHANGE, align 4
  %251 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %252 = call i32 @SSLfatal(%struct.TYPE_26__* %248, i32 %249, i32 %250, i32 %251)
  br label %718

253:                                              ; preds = %239
  %254 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %255 = call i32 @tls1_shared_group(%struct.TYPE_26__* %254, i32 -2)
  store i32 %255, i32* %9, align 4
  %256 = load i32, i32* %9, align 4
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %258, label %264

258:                                              ; preds = %253
  %259 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %260 = load i32, i32* @SSL_AD_HANDSHAKE_FAILURE, align 4
  %261 = load i32, i32* @SSL_F_TLS_CONSTRUCT_SERVER_KEY_EXCHANGE, align 4
  %262 = load i32, i32* @SSL_R_UNSUPPORTED_ELLIPTIC_CURVE, align 4
  %263 = call i32 @SSLfatal(%struct.TYPE_26__* %259, i32 %260, i32 %261, i32 %262)
  br label %718

264:                                              ; preds = %253
  %265 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %266 = load i32, i32* %9, align 4
  %267 = call i32* @ssl_generate_pkey_group(%struct.TYPE_26__* %265, i32 %266)
  %268 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %269 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %268, i32 0, i32 1
  %270 = load %struct.TYPE_25__*, %struct.TYPE_25__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %271, i32 0, i32 2
  store i32* %267, i32** %272, align 8
  %273 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %274 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %273, i32 0, i32 1
  %275 = load %struct.TYPE_25__*, %struct.TYPE_25__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %276, i32 0, i32 2
  %278 = load i32*, i32** %277, align 8
  %279 = icmp eq i32* %278, null
  br i1 %279, label %280, label %281

280:                                              ; preds = %264
  br label %718

281:                                              ; preds = %264
  %282 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %283 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %282, i32 0, i32 1
  %284 = load %struct.TYPE_25__*, %struct.TYPE_25__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %285, i32 0, i32 2
  %287 = load i32*, i32** %286, align 8
  %288 = call i64 @EVP_PKEY_get1_tls_encodedpoint(i32* %287, i8** %7)
  store i64 %288, i64* %8, align 8
  %289 = load i64, i64* %8, align 8
  %290 = icmp eq i64 %289, 0
  br i1 %290, label %291, label %297

291:                                              ; preds = %281
  %292 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %293 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %294 = load i32, i32* @SSL_F_TLS_CONSTRUCT_SERVER_KEY_EXCHANGE, align 4
  %295 = load i32, i32* @ERR_R_EC_LIB, align 4
  %296 = call i32 @SSLfatal(%struct.TYPE_26__* %292, i32 %293, i32 %294, i32 %295)
  br label %718

297:                                              ; preds = %281
  %298 = getelementptr inbounds [4 x i32*], [4 x i32*]* %13, i64 0, i64 0
  store i32* null, i32** %298, align 16
  %299 = getelementptr inbounds [4 x i32*], [4 x i32*]* %13, i64 0, i64 1
  store i32* null, i32** %299, align 8
  %300 = getelementptr inbounds [4 x i32*], [4 x i32*]* %13, i64 0, i64 2
  store i32* null, i32** %300, align 16
  %301 = getelementptr inbounds [4 x i32*], [4 x i32*]* %13, i64 0, i64 3
  store i32* null, i32** %301, align 8
  br label %365

302:                                              ; preds = %232
  %303 = load i64, i64* %12, align 8
  %304 = load i64, i64* @SSL_kSRP, align 8
  %305 = and i64 %303, %304
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %358

307:                                              ; preds = %302
  %308 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %309 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %308, i32 0, i32 3
  %310 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %309, i32 0, i32 3
  %311 = load i32*, i32** %310, align 8
  %312 = icmp eq i32* %311, null
  br i1 %312, label %331, label %313

313:                                              ; preds = %307
  %314 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %315 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %314, i32 0, i32 3
  %316 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %315, i32 0, i32 2
  %317 = load i32*, i32** %316, align 8
  %318 = icmp eq i32* %317, null
  br i1 %318, label %331, label %319

319:                                              ; preds = %313
  %320 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %321 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %320, i32 0, i32 3
  %322 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %321, i32 0, i32 1
  %323 = load i32*, i32** %322, align 8
  %324 = icmp eq i32* %323, null
  br i1 %324, label %331, label %325

325:                                              ; preds = %319
  %326 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %327 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %326, i32 0, i32 3
  %328 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %327, i32 0, i32 0
  %329 = load i32*, i32** %328, align 8
  %330 = icmp eq i32* %329, null
  br i1 %330, label %331, label %337

331:                                              ; preds = %325, %319, %313, %307
  %332 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %333 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %334 = load i32, i32* @SSL_F_TLS_CONSTRUCT_SERVER_KEY_EXCHANGE, align 4
  %335 = load i32, i32* @SSL_R_MISSING_SRP_PARAM, align 4
  %336 = call i32 @SSLfatal(%struct.TYPE_26__* %332, i32 %333, i32 %334, i32 %335)
  br label %718

337:                                              ; preds = %325
  %338 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %339 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %338, i32 0, i32 3
  %340 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %339, i32 0, i32 3
  %341 = load i32*, i32** %340, align 8
  %342 = getelementptr inbounds [4 x i32*], [4 x i32*]* %13, i64 0, i64 0
  store i32* %341, i32** %342, align 16
  %343 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %344 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %343, i32 0, i32 3
  %345 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %344, i32 0, i32 2
  %346 = load i32*, i32** %345, align 8
  %347 = getelementptr inbounds [4 x i32*], [4 x i32*]* %13, i64 0, i64 1
  store i32* %346, i32** %347, align 8
  %348 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %349 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %348, i32 0, i32 3
  %350 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %349, i32 0, i32 1
  %351 = load i32*, i32** %350, align 8
  %352 = getelementptr inbounds [4 x i32*], [4 x i32*]* %13, i64 0, i64 2
  store i32* %351, i32** %352, align 16
  %353 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %354 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %353, i32 0, i32 3
  %355 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %354, i32 0, i32 0
  %356 = load i32*, i32** %355, align 8
  %357 = getelementptr inbounds [4 x i32*], [4 x i32*]* %13, i64 0, i64 3
  store i32* %356, i32** %357, align 8
  br label %364

358:                                              ; preds = %302
  %359 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %360 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %361 = load i32, i32* @SSL_F_TLS_CONSTRUCT_SERVER_KEY_EXCHANGE, align 4
  %362 = load i32, i32* @SSL_R_UNKNOWN_KEY_EXCHANGE_TYPE, align 4
  %363 = call i32 @SSLfatal(%struct.TYPE_26__* %359, i32 %360, i32 %361, i32 %362)
  br label %718

364:                                              ; preds = %337
  br label %365

365:                                              ; preds = %364, %297
  br label %366

366:                                              ; preds = %365, %222
  br label %367

367:                                              ; preds = %366, %79
  %368 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %369 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %368, i32 0, i32 1
  %370 = load %struct.TYPE_25__*, %struct.TYPE_25__** %369, align 8
  %371 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %370, i32 0, i32 0
  %372 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %371, i32 0, i32 1
  %373 = load %struct.TYPE_23__*, %struct.TYPE_23__** %372, align 8
  %374 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %373, i32 0, i32 1
  %375 = load i32, i32* %374, align 8
  %376 = load i32, i32* @SSL_aNULL, align 4
  %377 = load i32, i32* @SSL_aSRP, align 4
  %378 = or i32 %376, %377
  %379 = and i32 %375, %378
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %393, label %381

381:                                              ; preds = %367
  %382 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %383 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %382, i32 0, i32 1
  %384 = load %struct.TYPE_25__*, %struct.TYPE_25__** %383, align 8
  %385 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %384, i32 0, i32 0
  %386 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %385, i32 0, i32 1
  %387 = load %struct.TYPE_23__*, %struct.TYPE_23__** %386, align 8
  %388 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %387, i32 0, i32 0
  %389 = load i64, i64* %388, align 8
  %390 = load i64, i64* @SSL_PSK, align 8
  %391 = and i64 %389, %390
  %392 = icmp ne i64 %391, 0
  br i1 %392, label %393, label %394

393:                                              ; preds = %381, %367
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %10, align 8
  br label %404

394:                                              ; preds = %381
  %395 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %396 = icmp eq %struct.TYPE_27__* %395, null
  br i1 %396, label %397, label %403

397:                                              ; preds = %394
  %398 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %399 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %400 = load i32, i32* @SSL_F_TLS_CONSTRUCT_SERVER_KEY_EXCHANGE, align 4
  %401 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %402 = call i32 @SSLfatal(%struct.TYPE_26__* %398, i32 %399, i32 %400, i32 %401)
  br label %718

403:                                              ; preds = %394
  br label %404

404:                                              ; preds = %403, %393
  %405 = load i64, i64* %12, align 8
  %406 = load i64, i64* @SSL_PSK, align 8
  %407 = and i64 %405, %406
  %408 = icmp ne i64 %407, 0
  br i1 %408, label %409, label %446

409:                                              ; preds = %404
  %410 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %411 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %410, i32 0, i32 2
  %412 = load %struct.TYPE_28__*, %struct.TYPE_28__** %411, align 8
  %413 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %412, i32 0, i32 0
  %414 = load i32*, i32** %413, align 8
  %415 = icmp eq i32* %414, null
  br i1 %415, label %416, label %417

416:                                              ; preds = %409
  br label %424

417:                                              ; preds = %409
  %418 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %419 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %418, i32 0, i32 2
  %420 = load %struct.TYPE_28__*, %struct.TYPE_28__** %419, align 8
  %421 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %420, i32 0, i32 0
  %422 = load i32*, i32** %421, align 8
  %423 = call i64 @strlen(i32* %422)
  br label %424

424:                                              ; preds = %417, %416
  %425 = phi i64 [ 0, %416 ], [ %423, %417 ]
  store i64 %425, i64* %23, align 8
  %426 = load i64, i64* %23, align 8
  %427 = load i64, i64* @PSK_MAX_IDENTITY_LEN, align 8
  %428 = icmp ugt i64 %426, %427
  br i1 %428, label %439, label %429

429:                                              ; preds = %424
  %430 = load i32*, i32** %5, align 8
  %431 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %432 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %431, i32 0, i32 2
  %433 = load %struct.TYPE_28__*, %struct.TYPE_28__** %432, align 8
  %434 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %433, i32 0, i32 0
  %435 = load i32*, i32** %434, align 8
  %436 = load i64, i64* %23, align 8
  %437 = call i32 @WPACKET_sub_memcpy_u16(i32* %430, i32* %435, i64 %436)
  %438 = icmp ne i32 %437, 0
  br i1 %438, label %445, label %439

439:                                              ; preds = %429, %424
  %440 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %441 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %442 = load i32, i32* @SSL_F_TLS_CONSTRUCT_SERVER_KEY_EXCHANGE, align 4
  %443 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %444 = call i32 @SSLfatal(%struct.TYPE_26__* %440, i32 %441, i32 %442, i32 %443)
  br label %718

445:                                              ; preds = %429
  br label %446

446:                                              ; preds = %445, %404
  store i32 0, i32* %11, align 4
  br label %447

447:                                              ; preds = %543, %446
  %448 = load i32, i32* %11, align 4
  %449 = icmp slt i32 %448, 4
  br i1 %449, label %450, label %456

450:                                              ; preds = %447
  %451 = load i32, i32* %11, align 4
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds [4 x i32*], [4 x i32*]* %13, i64 0, i64 %452
  %454 = load i32*, i32** %453, align 8
  %455 = icmp ne i32* %454, null
  br label %456

456:                                              ; preds = %450, %447
  %457 = phi i1 [ false, %447 ], [ %455, %450 ]
  br i1 %457, label %458, label %546

458:                                              ; preds = %456
  %459 = load i32, i32* %11, align 4
  %460 = icmp eq i32 %459, 2
  br i1 %460, label %461, label %469

461:                                              ; preds = %458
  %462 = load i64, i64* %12, align 8
  %463 = load i64, i64* @SSL_kSRP, align 8
  %464 = and i64 %462, %463
  %465 = icmp ne i64 %464, 0
  br i1 %465, label %466, label %469

466:                                              ; preds = %461
  %467 = load i32*, i32** %5, align 8
  %468 = call i32 @WPACKET_start_sub_packet_u8(i32* %467)
  store i32 %468, i32* %25, align 4
  br label %472

469:                                              ; preds = %461, %458
  %470 = load i32*, i32** %5, align 8
  %471 = call i32 @WPACKET_start_sub_packet_u16(i32* %470)
  store i32 %471, i32* %25, align 4
  br label %472

472:                                              ; preds = %469, %466
  %473 = load i32, i32* %25, align 4
  %474 = icmp ne i32 %473, 0
  br i1 %474, label %481, label %475

475:                                              ; preds = %472
  %476 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %477 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %478 = load i32, i32* @SSL_F_TLS_CONSTRUCT_SERVER_KEY_EXCHANGE, align 4
  %479 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %480 = call i32 @SSLfatal(%struct.TYPE_26__* %476, i32 %477, i32 %478, i32 %479)
  br label %718

481:                                              ; preds = %472
  %482 = load i32, i32* %11, align 4
  %483 = icmp eq i32 %482, 2
  br i1 %483, label %484, label %517

484:                                              ; preds = %481
  %485 = load i64, i64* %12, align 8
  %486 = load i64, i64* @SSL_kDHE, align 8
  %487 = load i64, i64* @SSL_kDHEPSK, align 8
  %488 = or i64 %486, %487
  %489 = and i64 %485, %488
  %490 = icmp ne i64 %489, 0
  br i1 %490, label %491, label %517

491:                                              ; preds = %484
  %492 = getelementptr inbounds [4 x i32*], [4 x i32*]* %13, i64 0, i64 0
  %493 = load i32*, i32** %492, align 16
  %494 = call i64 @BN_num_bytes(i32* %493)
  %495 = getelementptr inbounds [4 x i32*], [4 x i32*]* %13, i64 0, i64 2
  %496 = load i32*, i32** %495, align 16
  %497 = call i64 @BN_num_bytes(i32* %496)
  %498 = sub i64 %494, %497
  store i64 %498, i64* %26, align 8
  %499 = load i64, i64* %26, align 8
  %500 = icmp ugt i64 %499, 0
  br i1 %500, label %501, label %516

501:                                              ; preds = %491
  %502 = load i32*, i32** %5, align 8
  %503 = load i64, i64* %26, align 8
  %504 = call i32 @WPACKET_allocate_bytes(i32* %502, i64 %503, i8** %24)
  %505 = icmp ne i32 %504, 0
  br i1 %505, label %512, label %506

506:                                              ; preds = %501
  %507 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %508 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %509 = load i32, i32* @SSL_F_TLS_CONSTRUCT_SERVER_KEY_EXCHANGE, align 4
  %510 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %511 = call i32 @SSLfatal(%struct.TYPE_26__* %507, i32 %508, i32 %509, i32 %510)
  br label %718

512:                                              ; preds = %501
  %513 = load i8*, i8** %24, align 8
  %514 = load i64, i64* %26, align 8
  %515 = call i32 @memset(i8* %513, i32 0, i64 %514)
  br label %516

516:                                              ; preds = %512, %491
  br label %517

517:                                              ; preds = %516, %484, %481
  %518 = load i32*, i32** %5, align 8
  %519 = load i32, i32* %11, align 4
  %520 = sext i32 %519 to i64
  %521 = getelementptr inbounds [4 x i32*], [4 x i32*]* %13, i64 0, i64 %520
  %522 = load i32*, i32** %521, align 8
  %523 = call i64 @BN_num_bytes(i32* %522)
  %524 = call i32 @WPACKET_allocate_bytes(i32* %518, i64 %523, i8** %24)
  %525 = icmp ne i32 %524, 0
  br i1 %525, label %526, label %530

526:                                              ; preds = %517
  %527 = load i32*, i32** %5, align 8
  %528 = call i32 @WPACKET_close(i32* %527)
  %529 = icmp ne i32 %528, 0
  br i1 %529, label %536, label %530

530:                                              ; preds = %526, %517
  %531 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %532 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %533 = load i32, i32* @SSL_F_TLS_CONSTRUCT_SERVER_KEY_EXCHANGE, align 4
  %534 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %535 = call i32 @SSLfatal(%struct.TYPE_26__* %531, i32 %532, i32 %533, i32 %534)
  br label %718

536:                                              ; preds = %526
  %537 = load i32, i32* %11, align 4
  %538 = sext i32 %537 to i64
  %539 = getelementptr inbounds [4 x i32*], [4 x i32*]* %13, i64 0, i64 %538
  %540 = load i32*, i32** %539, align 8
  %541 = load i8*, i8** %24, align 8
  %542 = call i32 @BN_bn2bin(i32* %540, i8* %541)
  br label %543

543:                                              ; preds = %536
  %544 = load i32, i32* %11, align 4
  %545 = add nsw i32 %544, 1
  store i32 %545, i32* %11, align 4
  br label %447

546:                                              ; preds = %456
  %547 = load i64, i64* %12, align 8
  %548 = load i64, i64* @SSL_kECDHE, align 8
  %549 = load i64, i64* @SSL_kECDHEPSK, align 8
  %550 = or i64 %548, %549
  %551 = and i64 %547, %550
  %552 = icmp ne i64 %551, 0
  br i1 %552, label %553, label %582

553:                                              ; preds = %546
  %554 = load i32*, i32** %5, align 8
  %555 = load i32, i32* @NAMED_CURVE_TYPE, align 4
  %556 = call i32 @WPACKET_put_bytes_u8(i32* %554, i32 %555)
  %557 = icmp ne i32 %556, 0
  br i1 %557, label %558, label %573

558:                                              ; preds = %553
  %559 = load i32*, i32** %5, align 8
  %560 = call i32 @WPACKET_put_bytes_u8(i32* %559, i32 0)
  %561 = icmp ne i32 %560, 0
  br i1 %561, label %562, label %573

562:                                              ; preds = %558
  %563 = load i32*, i32** %5, align 8
  %564 = load i32, i32* %9, align 4
  %565 = call i32 @WPACKET_put_bytes_u8(i32* %563, i32 %564)
  %566 = icmp ne i32 %565, 0
  br i1 %566, label %567, label %573

567:                                              ; preds = %562
  %568 = load i32*, i32** %5, align 8
  %569 = load i8*, i8** %7, align 8
  %570 = load i64, i64* %8, align 8
  %571 = call i32 @WPACKET_sub_memcpy_u8(i32* %568, i8* %569, i64 %570)
  %572 = icmp ne i32 %571, 0
  br i1 %572, label %579, label %573

573:                                              ; preds = %567, %562, %558, %553
  %574 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %575 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %576 = load i32, i32* @SSL_F_TLS_CONSTRUCT_SERVER_KEY_EXCHANGE, align 4
  %577 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %578 = call i32 @SSLfatal(%struct.TYPE_26__* %574, i32 %575, i32 %576, i32 %577)
  br label %718

579:                                              ; preds = %567
  %580 = load i8*, i8** %7, align 8
  %581 = call i32 @OPENSSL_free(i8* %580)
  store i8* null, i8** %7, align 8
  br label %582

582:                                              ; preds = %579, %546
  %583 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %584 = icmp ne %struct.TYPE_27__* %583, null
  br i1 %584, label %585, label %715

585:                                              ; preds = %582
  %586 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %587 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %586, i32 0, i32 1
  %588 = load %struct.TYPE_25__*, %struct.TYPE_25__** %587, align 8
  %589 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %588, i32 0, i32 0
  %590 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %589, i32 0, i32 0
  %591 = load %struct.TYPE_21__*, %struct.TYPE_21__** %590, align 8
  %592 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %591, i32 0, i32 0
  %593 = load i32*, i32** %592, align 8
  store i32* %593, i32** %27, align 8
  %594 = load i32*, i32** %27, align 8
  %595 = icmp eq i32* %594, null
  br i1 %595, label %600, label %596

596:                                              ; preds = %585
  %597 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %598 = call i32 @tls1_lookup_md(%struct.TYPE_27__* %597, i32** %28)
  %599 = icmp ne i32 %598, 0
  br i1 %599, label %606, label %600

600:                                              ; preds = %596, %585
  %601 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %602 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %603 = load i32, i32* @SSL_F_TLS_CONSTRUCT_SERVER_KEY_EXCHANGE, align 4
  %604 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %605 = call i32 @SSLfatal(%struct.TYPE_26__* %601, i32 %602, i32 %603, i32 %604)
  br label %718

606:                                              ; preds = %596
  %607 = load i32*, i32** %5, align 8
  %608 = call i32 @WPACKET_get_length(i32* %607, i64* %16)
  %609 = icmp ne i32 %608, 0
  br i1 %609, label %616, label %610

610:                                              ; preds = %606
  %611 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %612 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %613 = load i32, i32* @SSL_F_TLS_CONSTRUCT_SERVER_KEY_EXCHANGE, align 4
  %614 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %615 = call i32 @SSLfatal(%struct.TYPE_26__* %611, i32 %612, i32 %613, i32 %614)
  br label %718

616:                                              ; preds = %606
  %617 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %618 = call i64 @SSL_USE_SIGALGS(%struct.TYPE_26__* %617)
  %619 = icmp ne i64 %618, 0
  br i1 %619, label %620, label %633

620:                                              ; preds = %616
  %621 = load i32*, i32** %5, align 8
  %622 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %623 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %622, i32 0, i32 1
  %624 = load i32, i32* %623, align 8
  %625 = call i32 @WPACKET_put_bytes_u16(i32* %621, i32 %624)
  %626 = icmp ne i32 %625, 0
  br i1 %626, label %633, label %627

627:                                              ; preds = %620
  %628 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %629 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %630 = load i32, i32* @SSL_F_TLS_CONSTRUCT_SERVER_KEY_EXCHANGE, align 4
  %631 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %632 = call i32 @SSLfatal(%struct.TYPE_26__* %628, i32 %629, i32 %630, i32 %631)
  br label %718

633:                                              ; preds = %620, %616
  %634 = load i32*, i32** %27, align 8
  %635 = call i64 @EVP_PKEY_size(i32* %634)
  store i64 %635, i64* %32, align 8
  %636 = load i32*, i32** %5, align 8
  %637 = load i64, i64* %32, align 8
  %638 = call i32 @WPACKET_sub_reserve_bytes_u16(i32* %636, i64 %637, i8** %29)
  %639 = icmp ne i32 %638, 0
  br i1 %639, label %640, label %646

640:                                              ; preds = %633
  %641 = load i32*, i32** %14, align 8
  %642 = load i32*, i32** %28, align 8
  %643 = load i32*, i32** %27, align 8
  %644 = call i64 @EVP_DigestSignInit(i32* %641, i32** %15, i32* %642, i32* null, i32* %643)
  %645 = icmp sle i64 %644, 0
  br i1 %645, label %646, label %652

646:                                              ; preds = %640, %633
  %647 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %648 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %649 = load i32, i32* @SSL_F_TLS_CONSTRUCT_SERVER_KEY_EXCHANGE, align 4
  %650 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %651 = call i32 @SSLfatal(%struct.TYPE_26__* %647, i32 %648, i32 %649, i32 %650)
  br label %718

652:                                              ; preds = %640
  %653 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %654 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %653, i32 0, i32 0
  %655 = load i64, i64* %654, align 8
  %656 = load i64, i64* @EVP_PKEY_RSA_PSS, align 8
  %657 = icmp eq i64 %655, %656
  br i1 %657, label %658, label %675

658:                                              ; preds = %652
  %659 = load i32*, i32** %15, align 8
  %660 = load i32, i32* @RSA_PKCS1_PSS_PADDING, align 4
  %661 = call i64 @EVP_PKEY_CTX_set_rsa_padding(i32* %659, i32 %660)
  %662 = icmp sle i64 %661, 0
  br i1 %662, label %668, label %663

663:                                              ; preds = %658
  %664 = load i32*, i32** %15, align 8
  %665 = load i32, i32* @RSA_PSS_SALTLEN_DIGEST, align 4
  %666 = call i64 @EVP_PKEY_CTX_set_rsa_pss_saltlen(i32* %664, i32 %665)
  %667 = icmp sle i64 %666, 0
  br i1 %667, label %668, label %674

668:                                              ; preds = %663, %658
  %669 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %670 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %671 = load i32, i32* @SSL_F_TLS_CONSTRUCT_SERVER_KEY_EXCHANGE, align 4
  %672 = load i32, i32* @ERR_R_EVP_LIB, align 4
  %673 = call i32 @SSLfatal(%struct.TYPE_26__* %669, i32 %670, i32 %671, i32 %672)
  br label %718

674:                                              ; preds = %663
  br label %675

675:                                              ; preds = %674, %652
  %676 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %677 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %678 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %677, i32 0, i32 0
  %679 = load %struct.TYPE_22__*, %struct.TYPE_22__** %678, align 8
  %680 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %679, i32 0, i32 0
  %681 = load i64, i64* %680, align 8
  %682 = load i64, i64* %17, align 8
  %683 = add i64 %681, %682
  %684 = load i64, i64* %16, align 8
  %685 = call i64 @construct_key_exchange_tbs(%struct.TYPE_26__* %676, i8** %31, i64 %683, i64 %684)
  store i64 %685, i64* %33, align 8
  %686 = load i64, i64* %33, align 8
  %687 = icmp eq i64 %686, 0
  br i1 %687, label %688, label %689

688:                                              ; preds = %675
  br label %718

689:                                              ; preds = %675
  %690 = load i32*, i32** %14, align 8
  %691 = load i8*, i8** %29, align 8
  %692 = load i8*, i8** %31, align 8
  %693 = load i64, i64* %33, align 8
  %694 = call i32 @EVP_DigestSign(i32* %690, i8* %691, i64* %32, i8* %692, i64 %693)
  store i32 %694, i32* %34, align 4
  %695 = load i8*, i8** %31, align 8
  %696 = call i32 @OPENSSL_free(i8* %695)
  %697 = load i32, i32* %34, align 4
  %698 = icmp sle i32 %697, 0
  br i1 %698, label %708, label %699

699:                                              ; preds = %689
  %700 = load i32*, i32** %5, align 8
  %701 = load i64, i64* %32, align 8
  %702 = call i32 @WPACKET_sub_allocate_bytes_u16(i32* %700, i64 %701, i8** %30)
  %703 = icmp ne i32 %702, 0
  br i1 %703, label %704, label %708

704:                                              ; preds = %699
  %705 = load i8*, i8** %29, align 8
  %706 = load i8*, i8** %30, align 8
  %707 = icmp ne i8* %705, %706
  br i1 %707, label %708, label %714

708:                                              ; preds = %704, %699, %689
  %709 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %710 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %711 = load i32, i32* @SSL_F_TLS_CONSTRUCT_SERVER_KEY_EXCHANGE, align 4
  %712 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %713 = call i32 @SSLfatal(%struct.TYPE_26__* %709, i32 %710, i32 %711, i32 %712)
  br label %718

714:                                              ; preds = %704
  br label %715

715:                                              ; preds = %714, %582
  %716 = load i32*, i32** %14, align 8
  %717 = call i32 @EVP_MD_CTX_free(i32* %716)
  store i32 1, i32* %3, align 4
  br label %725

718:                                              ; preds = %708, %688, %668, %646, %627, %610, %600, %573, %530, %506, %475, %439, %397, %358, %331, %291, %280, %258, %247, %216, %205, %184, %170, %156, %145, %106, %54, %45
  %719 = load i32*, i32** %6, align 8
  %720 = call i32 @EVP_PKEY_free(i32* %719)
  %721 = load i8*, i8** %7, align 8
  %722 = call i32 @OPENSSL_free(i8* %721)
  %723 = load i32*, i32** %14, align 8
  %724 = call i32 @EVP_MD_CTX_free(i32* %723)
  store i32 0, i32* %3, align 4
  br label %725

725:                                              ; preds = %718, %715
  %726 = load i32, i32* %3, align 4
  ret i32 %726
}

declare dso_local i32* @EVP_MD_CTX_new(...) #1

declare dso_local i32 @WPACKET_get_total_written(i32*, i64*) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_26__*, i32, i32, i32) #1

declare dso_local i32* @ssl_get_auto_dh(%struct.TYPE_26__*) #1

declare dso_local i32* @EVP_PKEY_new(...) #1

declare dso_local i32 @DH_free(i32*) #1

declare dso_local i32 @EVP_PKEY_assign_DH(i32*, i32*) #1

declare dso_local i32* @ssl_dh_to_pkey(i32*) #1

declare dso_local i32 @ssl_security(%struct.TYPE_26__*, i32, i32, i32, i32*) #1

declare dso_local i32 @EVP_PKEY_security_bits(i32*) #1

declare dso_local i32* @ssl_generate_pkey(i32*) #1

declare dso_local i32* @EVP_PKEY_get0_DH(i32*) #1

declare dso_local i32 @EVP_PKEY_free(i32*) #1

declare dso_local i32 @DH_get0_pqg(i32*, i32**, i32*, i32**) #1

declare dso_local i32 @DH_get0_key(i32*, i32**, i32*) #1

declare dso_local i32 @tls1_shared_group(%struct.TYPE_26__*, i32) #1

declare dso_local i32* @ssl_generate_pkey_group(%struct.TYPE_26__*, i32) #1

declare dso_local i64 @EVP_PKEY_get1_tls_encodedpoint(i32*, i8**) #1

declare dso_local i64 @strlen(i32*) #1

declare dso_local i32 @WPACKET_sub_memcpy_u16(i32*, i32*, i64) #1

declare dso_local i32 @WPACKET_start_sub_packet_u8(i32*) #1

declare dso_local i32 @WPACKET_start_sub_packet_u16(i32*) #1

declare dso_local i64 @BN_num_bytes(i32*) #1

declare dso_local i32 @WPACKET_allocate_bytes(i32*, i64, i8**) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @WPACKET_close(i32*) #1

declare dso_local i32 @BN_bn2bin(i32*, i8*) #1

declare dso_local i32 @WPACKET_put_bytes_u8(i32*, i32) #1

declare dso_local i32 @WPACKET_sub_memcpy_u8(i32*, i8*, i64) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @tls1_lookup_md(%struct.TYPE_27__*, i32**) #1

declare dso_local i32 @WPACKET_get_length(i32*, i64*) #1

declare dso_local i64 @SSL_USE_SIGALGS(%struct.TYPE_26__*) #1

declare dso_local i32 @WPACKET_put_bytes_u16(i32*, i32) #1

declare dso_local i64 @EVP_PKEY_size(i32*) #1

declare dso_local i32 @WPACKET_sub_reserve_bytes_u16(i32*, i64, i8**) #1

declare dso_local i64 @EVP_DigestSignInit(i32*, i32**, i32*, i32*, i32*) #1

declare dso_local i64 @EVP_PKEY_CTX_set_rsa_padding(i32*, i32) #1

declare dso_local i64 @EVP_PKEY_CTX_set_rsa_pss_saltlen(i32*, i32) #1

declare dso_local i64 @construct_key_exchange_tbs(%struct.TYPE_26__*, i8**, i64, i64) #1

declare dso_local i32 @EVP_DigestSign(i32*, i8*, i64*, i8*, i64) #1

declare dso_local i32 @WPACKET_sub_allocate_bytes_u16(i32*, i64, i8**) #1

declare dso_local i32 @EVP_MD_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
