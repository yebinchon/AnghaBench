; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_lib.c_tls_construct_cert_verify.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_lib.c_tls_construct_cert_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, %struct.TYPE_16__*, %struct.TYPE_15__* }
%struct.TYPE_16__ = type { i32, i64 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__*, %struct.TYPE_18__* }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_18__ = type { i32, i32 }

@TLS13_TBS_PREAMBLE_SIZE = common dso_local global i32 0, align 4
@EVP_MAX_MD_SIZE = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_CONSTRUCT_CERT_VERIFY = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@ERR_R_EVP_LIB = common dso_local global i32 0, align 4
@EVP_PKEY_RSA_PSS = common dso_local global i32 0, align 4
@RSA_PKCS1_PSS_PADDING = common dso_local global i32 0, align 4
@RSA_PSS_SALTLEN_DIGEST = common dso_local global i32 0, align 4
@SSL3_VERSION = common dso_local global i64 0, align 8
@EVP_CTRL_SSL3_MASTER_SECRET = common dso_local global i32 0, align 4
@NID_id_GostR3410_2001 = common dso_local global i32 0, align 4
@NID_id_GostR3410_2012_256 = common dso_local global i32 0, align 4
@NID_id_GostR3410_2012_512 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_construct_cert_verify(%struct.TYPE_17__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_18__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i8* null, i8** %13, align 8
  %19 = load i32, i32* @TLS13_TBS_PREAMBLE_SIZE, align 4
  %20 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %21 = add nsw i32 %19, %20
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %14, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %15, align 8
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %29, align 8
  store %struct.TYPE_18__* %30, %struct.TYPE_18__** %16, align 8
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %32 = icmp eq %struct.TYPE_18__* %31, null
  br i1 %32, label %41, label %33

33:                                               ; preds = %2
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %38, align 8
  %40 = icmp eq %struct.TYPE_13__* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %33, %2
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %43 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %44 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CERT_VERIFY, align 4
  %45 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %46 = call i32 @SSLfatal(%struct.TYPE_17__* %42, i32 %43, i32 %44, i32 %45)
  br label %243

47:                                               ; preds = %33
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  store i32* %55, i32** %6, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %62, label %58

58:                                               ; preds = %47
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %60 = call i32 @tls1_lookup_md(%struct.TYPE_18__* %59, i32** %7)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %58, %47
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %64 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %65 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CERT_VERIFY, align 4
  %66 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %67 = call i32 @SSLfatal(%struct.TYPE_17__* %63, i32 %64, i32 %65, i32 %66)
  br label %243

68:                                               ; preds = %58
  %69 = call i32* (...) @EVP_MD_CTX_new()
  store i32* %69, i32** %8, align 8
  %70 = load i32*, i32** %8, align 8
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %78

72:                                               ; preds = %68
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %74 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %75 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CERT_VERIFY, align 4
  %76 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %77 = call i32 @SSLfatal(%struct.TYPE_17__* %73, i32 %74, i32 %75, i32 %76)
  br label %243

78:                                               ; preds = %68
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %80 = call i32 @get_cert_verify_tbs_data(%struct.TYPE_17__* %79, i8* %24, i8** %12, i64* %10)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %78
  br label %243

83:                                               ; preds = %78
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %85 = call i64 @SSL_USE_SIGALGS(%struct.TYPE_17__* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %100

87:                                               ; preds = %83
  %88 = load i32*, i32** %5, align 8
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @WPACKET_put_bytes_u16(i32* %88, i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %100, label %94

94:                                               ; preds = %87
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %96 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %97 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CERT_VERIFY, align 4
  %98 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %99 = call i32 @SSLfatal(%struct.TYPE_17__* %95, i32 %96, i32 %97, i32 %98)
  br label %243

100:                                              ; preds = %87, %83
  %101 = load i32*, i32** %6, align 8
  %102 = call i64 @EVP_PKEY_size(i32* %101)
  store i64 %102, i64* %11, align 8
  %103 = load i64, i64* %11, align 8
  %104 = call i8* @OPENSSL_malloc(i64 %103)
  store i8* %104, i8** %13, align 8
  %105 = load i8*, i8** %13, align 8
  %106 = icmp eq i8* %105, null
  br i1 %106, label %107, label %113

107:                                              ; preds = %100
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %109 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %110 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CERT_VERIFY, align 4
  %111 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %112 = call i32 @SSLfatal(%struct.TYPE_17__* %108, i32 %109, i32 %110, i32 %111)
  br label %243

113:                                              ; preds = %100
  %114 = load i32*, i32** %8, align 8
  %115 = load i32*, i32** %7, align 8
  %116 = load i32*, i32** %6, align 8
  %117 = call i64 @EVP_DigestSignInit(i32* %114, i32** %9, i32* %115, i32* null, i32* %116)
  %118 = icmp sle i64 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %113
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %121 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %122 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CERT_VERIFY, align 4
  %123 = load i32, i32* @ERR_R_EVP_LIB, align 4
  %124 = call i32 @SSLfatal(%struct.TYPE_17__* %120, i32 %121, i32 %122, i32 %123)
  br label %243

125:                                              ; preds = %113
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @EVP_PKEY_RSA_PSS, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %148

131:                                              ; preds = %125
  %132 = load i32*, i32** %9, align 8
  %133 = load i32, i32* @RSA_PKCS1_PSS_PADDING, align 4
  %134 = call i64 @EVP_PKEY_CTX_set_rsa_padding(i32* %132, i32 %133)
  %135 = icmp sle i64 %134, 0
  br i1 %135, label %141, label %136

136:                                              ; preds = %131
  %137 = load i32*, i32** %9, align 8
  %138 = load i32, i32* @RSA_PSS_SALTLEN_DIGEST, align 4
  %139 = call i64 @EVP_PKEY_CTX_set_rsa_pss_saltlen(i32* %137, i32 %138)
  %140 = icmp sle i64 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %136, %131
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %143 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %144 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CERT_VERIFY, align 4
  %145 = load i32, i32* @ERR_R_EVP_LIB, align 4
  %146 = call i32 @SSLfatal(%struct.TYPE_17__* %142, i32 %143, i32 %144, i32 %145)
  br label %243

147:                                              ; preds = %136
  br label %148

148:                                              ; preds = %147, %125
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @SSL3_VERSION, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %188

154:                                              ; preds = %148
  %155 = load i32*, i32** %8, align 8
  %156 = load i8*, i8** %12, align 8
  %157 = load i64, i64* %10, align 8
  %158 = call i64 @EVP_DigestSignUpdate(i32* %155, i8* %156, i64 %157)
  %159 = icmp sle i64 %158, 0
  br i1 %159, label %181, label %160

160:                                              ; preds = %154
  %161 = load i32*, i32** %8, align 8
  %162 = load i32, i32* @EVP_CTRL_SSL3_MASTER_SECRET, align 4
  %163 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %163, i32 0, i32 1
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = trunc i64 %167 to i32
  %169 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %169, i32 0, i32 1
  %171 = load %struct.TYPE_16__*, %struct.TYPE_16__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @EVP_MD_CTX_ctrl(i32* %161, i32 %162, i32 %168, i32 %173)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %181

176:                                              ; preds = %160
  %177 = load i32*, i32** %8, align 8
  %178 = load i8*, i8** %13, align 8
  %179 = call i64 @EVP_DigestSignFinal(i32* %177, i8* %178, i64* %11)
  %180 = icmp sle i64 %179, 0
  br i1 %180, label %181, label %187

181:                                              ; preds = %176, %160, %154
  %182 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %183 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %184 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CERT_VERIFY, align 4
  %185 = load i32, i32* @ERR_R_EVP_LIB, align 4
  %186 = call i32 @SSLfatal(%struct.TYPE_17__* %182, i32 %183, i32 %184, i32 %185)
  br label %243

187:                                              ; preds = %176
  br label %202

188:                                              ; preds = %148
  %189 = load i32*, i32** %8, align 8
  %190 = load i8*, i8** %13, align 8
  %191 = load i8*, i8** %12, align 8
  %192 = load i64, i64* %10, align 8
  %193 = call i64 @EVP_DigestSign(i32* %189, i8* %190, i64* %11, i8* %191, i64 %192)
  %194 = icmp sle i64 %193, 0
  br i1 %194, label %195, label %201

195:                                              ; preds = %188
  %196 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %197 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %198 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CERT_VERIFY, align 4
  %199 = load i32, i32* @ERR_R_EVP_LIB, align 4
  %200 = call i32 @SSLfatal(%struct.TYPE_17__* %196, i32 %197, i32 %198, i32 %199)
  br label %243

201:                                              ; preds = %188
  br label %202

202:                                              ; preds = %201, %187
  %203 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %204 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  store i32 %205, i32* %17, align 4
  %206 = load i32, i32* %17, align 4
  %207 = load i32, i32* @NID_id_GostR3410_2001, align 4
  %208 = icmp eq i32 %206, %207
  br i1 %208, label %217, label %209

209:                                              ; preds = %202
  %210 = load i32, i32* %17, align 4
  %211 = load i32, i32* @NID_id_GostR3410_2012_256, align 4
  %212 = icmp eq i32 %210, %211
  br i1 %212, label %217, label %213

213:                                              ; preds = %209
  %214 = load i32, i32* %17, align 4
  %215 = load i32, i32* @NID_id_GostR3410_2012_512, align 4
  %216 = icmp eq i32 %214, %215
  br i1 %216, label %217, label %221

217:                                              ; preds = %213, %209, %202
  %218 = load i8*, i8** %13, align 8
  %219 = load i64, i64* %11, align 8
  %220 = call i32 @BUF_reverse(i8* %218, i32* null, i64 %219)
  br label %221

221:                                              ; preds = %217, %213
  %222 = load i32*, i32** %5, align 8
  %223 = load i8*, i8** %13, align 8
  %224 = load i64, i64* %11, align 8
  %225 = call i32 @WPACKET_sub_memcpy_u16(i32* %222, i8* %223, i64 %224)
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %233, label %227

227:                                              ; preds = %221
  %228 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %229 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %230 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CERT_VERIFY, align 4
  %231 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %232 = call i32 @SSLfatal(%struct.TYPE_17__* %228, i32 %229, i32 %230, i32 %231)
  br label %243

233:                                              ; preds = %221
  %234 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %235 = call i32 @ssl3_digest_cached_records(%struct.TYPE_17__* %234, i32 0)
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %238, label %237

237:                                              ; preds = %233
  br label %243

238:                                              ; preds = %233
  %239 = load i8*, i8** %13, align 8
  %240 = call i32 @OPENSSL_free(i8* %239)
  %241 = load i32*, i32** %8, align 8
  %242 = call i32 @EVP_MD_CTX_free(i32* %241)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %18, align 4
  br label %248

243:                                              ; preds = %237, %227, %195, %181, %141, %119, %107, %94, %82, %72, %62, %41
  %244 = load i8*, i8** %13, align 8
  %245 = call i32 @OPENSSL_free(i8* %244)
  %246 = load i32*, i32** %8, align 8
  %247 = call i32 @EVP_MD_CTX_free(i32* %246)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %18, align 4
  br label %248

248:                                              ; preds = %243, %238
  %249 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %249)
  %250 = load i32, i32* %3, align 4
  ret i32 %250
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SSLfatal(%struct.TYPE_17__*, i32, i32, i32) #2

declare dso_local i32 @tls1_lookup_md(%struct.TYPE_18__*, i32**) #2

declare dso_local i32* @EVP_MD_CTX_new(...) #2

declare dso_local i32 @get_cert_verify_tbs_data(%struct.TYPE_17__*, i8*, i8**, i64*) #2

declare dso_local i64 @SSL_USE_SIGALGS(%struct.TYPE_17__*) #2

declare dso_local i32 @WPACKET_put_bytes_u16(i32*, i32) #2

declare dso_local i64 @EVP_PKEY_size(i32*) #2

declare dso_local i8* @OPENSSL_malloc(i64) #2

declare dso_local i64 @EVP_DigestSignInit(i32*, i32**, i32*, i32*, i32*) #2

declare dso_local i64 @EVP_PKEY_CTX_set_rsa_padding(i32*, i32) #2

declare dso_local i64 @EVP_PKEY_CTX_set_rsa_pss_saltlen(i32*, i32) #2

declare dso_local i64 @EVP_DigestSignUpdate(i32*, i8*, i64) #2

declare dso_local i32 @EVP_MD_CTX_ctrl(i32*, i32, i32, i32) #2

declare dso_local i64 @EVP_DigestSignFinal(i32*, i8*, i64*) #2

declare dso_local i64 @EVP_DigestSign(i32*, i8*, i64*, i8*, i64) #2

declare dso_local i32 @BUF_reverse(i8*, i32*, i64) #2

declare dso_local i32 @WPACKET_sub_memcpy_u16(i32*, i8*, i64) #2

declare dso_local i32 @ssl3_digest_cached_records(%struct.TYPE_17__*, i32) #2

declare dso_local i32 @OPENSSL_free(i8*) #2

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
