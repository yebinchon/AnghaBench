; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_t1_enc.c_tls1_change_cipher_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_t1_enc.c_tls1_change_cipher_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_11__, %struct.TYPE_15__*, i32, i32*, i32*, i32*, i32, %struct.TYPE_12__, i32*, i32*, i32* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_15__ = type { i8*, i64, i8*, i64, %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i32, i8*, i64, i64, %struct.TYPE_13__*, %struct.TYPE_16__*, i32*, i32* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_12__ = type { i64 }

@SSL3_CC_READ = common dso_local global i32 0, align 4
@TLS1_FLAGS_ENCRYPT_THEN_MAC_READ = common dso_local global i32 0, align 4
@TLS1_STREAM_MAC = common dso_local global i32 0, align 4
@SSL_MAC_FLAG_READ_MAC_STREAM = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS1_CHANGE_CIPHER_STATE = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@SSL_R_COMPRESSION_LIBRARY_ERROR = common dso_local global i32 0, align 4
@ENC_WRITE_STATE_INVALID = common dso_local global i32 0, align 4
@TLS1_FLAGS_ENCRYPT_THEN_MAC_WRITE = common dso_local global i32 0, align 4
@SSL_MAC_FLAG_WRITE_MAC_STREAM = common dso_local global i32 0, align 4
@EVP_CIPH_GCM_MODE = common dso_local global i64 0, align 8
@EVP_GCM_TLS_FIXED_IV_LEN = common dso_local global i64 0, align 8
@EVP_CIPH_CCM_MODE = common dso_local global i64 0, align 8
@EVP_CCM_TLS_FIXED_IV_LEN = common dso_local global i64 0, align 8
@SSL3_CHANGE_CIPHER_CLIENT_WRITE = common dso_local global i32 0, align 4
@SSL3_CHANGE_CIPHER_SERVER_READ = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@EVP_CIPH_FLAG_AEAD_CIPHER = common dso_local global i32 0, align 4
@SSL3_CC_WRITE = common dso_local global i32 0, align 4
@EVP_CTRL_GCM_SET_IV_FIXED = common dso_local global i32 0, align 4
@SSL_AES128CCM8 = common dso_local global i32 0, align 4
@SSL_AES256CCM8 = common dso_local global i32 0, align 4
@EVP_CCM8_TLS_TAG_LEN = common dso_local global i32 0, align 4
@EVP_CCM_TLS_TAG_LEN = common dso_local global i32 0, align 4
@EVP_CTRL_AEAD_SET_IVLEN = common dso_local global i32 0, align 4
@EVP_CTRL_AEAD_SET_TAG = common dso_local global i32 0, align 4
@EVP_CTRL_CCM_SET_IV_FIXED = common dso_local global i32 0, align 4
@EVP_CTRL_AEAD_SET_MAC_KEY = common dso_local global i32 0, align 4
@ENC_WRITE_STATE_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls1_change_cipher_state(%struct.TYPE_17__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_16__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %24, align 4
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 7
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %12, align 8
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 6
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %14, align 8
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %15, align 4
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 5
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %48, align 8
  store %struct.TYPE_16__* %49, %struct.TYPE_16__** %13, align 8
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @SSL3_CC_READ, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %183

54:                                               ; preds = %2
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 7
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %54
  %61 = load i32, i32* @TLS1_FLAGS_ENCRYPT_THEN_MAC_READ, align 4
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, %61
  store i32 %67, i32* %65, align 8
  br label %77

68:                                               ; preds = %54
  %69 = load i32, i32* @TLS1_FLAGS_ENCRYPT_THEN_MAC_READ, align 4
  %70 = xor i32 %69, -1
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 8
  %76 = and i32 %75, %70
  store i32 %76, i32* %74, align 8
  br label %77

77:                                               ; preds = %68, %60
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 4
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @TLS1_STREAM_MAC, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %77
  %90 = load i32, i32* @SSL_MAC_FLAG_READ_MAC_STREAM, align 4
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 6
  %93 = load i32, i32* %92, align 8
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 8
  br label %102

95:                                               ; preds = %77
  %96 = load i32, i32* @SSL_MAC_FLAG_READ_MAC_STREAM, align 4
  %97 = xor i32 %96, -1
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 6
  %100 = load i32, i32* %99, align 8
  %101 = and i32 %100, %97
  store i32 %101, i32* %99, align 8
  br label %102

102:                                              ; preds = %95, %89
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 10
  %105 = load i32*, i32** %104, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  store i32 1, i32* %24, align 4
  br label %126

108:                                              ; preds = %102
  %109 = call i8* (...) @EVP_CIPHER_CTX_new()
  %110 = bitcast i8* %109 to i32*
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 10
  store i32* %110, i32** %112, align 8
  %113 = icmp eq i32* %110, null
  br i1 %113, label %114, label %120

114:                                              ; preds = %108
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %116 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %117 = load i32, i32* @SSL_F_TLS1_CHANGE_CIPHER_STATE, align 4
  %118 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %119 = call i32 @SSLfatal(%struct.TYPE_17__* %115, i32 %116, i32 %117, i32 %118)
  br label %624

120:                                              ; preds = %108
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 10
  %123 = load i32*, i32** %122, align 8
  %124 = call i32 @EVP_CIPHER_CTX_reset(i32* %123)
  br label %125

125:                                              ; preds = %120
  br label %126

126:                                              ; preds = %125, %107
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 10
  %129 = load i32*, i32** %128, align 8
  store i32* %129, i32** %11, align 8
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 9
  %132 = call i32* @ssl_replace_hash(i32** %131, i32* null)
  store i32* %132, i32** %17, align 8
  %133 = load i32*, i32** %17, align 8
  %134 = icmp eq i32* %133, null
  br i1 %134, label %135, label %136

135:                                              ; preds = %126
  br label %624

136:                                              ; preds = %126
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 8
  %139 = load i32*, i32** %138, align 8
  %140 = call i32 @COMP_CTX_free(i32* %139)
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i32 0, i32 8
  store i32* null, i32** %142, align 8
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %144 = icmp ne %struct.TYPE_16__* %143, null
  br i1 %144, label %145, label %164

145:                                              ; preds = %136
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i8* @COMP_CTX_new(i32 %148)
  %150 = bitcast i8* %149 to i32*
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 8
  store i32* %150, i32** %152, align 8
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i32 0, i32 8
  %155 = load i32*, i32** %154, align 8
  %156 = icmp eq i32* %155, null
  br i1 %156, label %157, label %163

157:                                              ; preds = %145
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %159 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %160 = load i32, i32* @SSL_F_TLS1_CHANGE_CIPHER_STATE, align 4
  %161 = load i32, i32* @SSL_R_COMPRESSION_LIBRARY_ERROR, align 4
  %162 = call i32 @SSLfatal(%struct.TYPE_17__* %158, i32 %159, i32 %160, i32 %161)
  br label %624

163:                                              ; preds = %145
  br label %164

164:                                              ; preds = %163, %136
  %165 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %166 = call i64 @SSL_IS_DTLS(%struct.TYPE_17__* %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %172, label %168

168:                                              ; preds = %164
  %169 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %169, i32 0, i32 2
  %171 = call i32 @RECORD_LAYER_reset_read_sequence(i32* %170)
  br label %172

172:                                              ; preds = %168, %164
  %173 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %173, i32 0, i32 1
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 0
  %177 = load i8*, i8** %176, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 0
  store i8* %178, i8** %7, align 8
  %179 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %179, i32 0, i32 1
  %181 = load %struct.TYPE_15__*, %struct.TYPE_15__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %181, i32 0, i32 1
  store i64* %182, i64** %16, align 8
  br label %339

183:                                              ; preds = %2
  %184 = load i32, i32* @ENC_WRITE_STATE_INVALID, align 4
  %185 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 0
  store i32 %184, i32* %187, align 8
  %188 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %188, i32 0, i32 7
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %201

193:                                              ; preds = %183
  %194 = load i32, i32* @TLS1_FLAGS_ENCRYPT_THEN_MAC_WRITE, align 4
  %195 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %195, i32 0, i32 1
  %197 = load %struct.TYPE_15__*, %struct.TYPE_15__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %197, i32 0, i32 5
  %199 = load i32, i32* %198, align 8
  %200 = or i32 %199, %194
  store i32 %200, i32* %198, align 8
  br label %210

201:                                              ; preds = %183
  %202 = load i32, i32* @TLS1_FLAGS_ENCRYPT_THEN_MAC_WRITE, align 4
  %203 = xor i32 %202, -1
  %204 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %204, i32 0, i32 1
  %206 = load %struct.TYPE_15__*, %struct.TYPE_15__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %206, i32 0, i32 5
  %208 = load i32, i32* %207, align 8
  %209 = and i32 %208, %203
  store i32 %209, i32* %207, align 8
  br label %210

210:                                              ; preds = %201, %193
  %211 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %211, i32 0, i32 1
  %213 = load %struct.TYPE_15__*, %struct.TYPE_15__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %213, i32 0, i32 4
  %215 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %214, i32 0, i32 4
  %216 = load %struct.TYPE_13__*, %struct.TYPE_13__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* @TLS1_STREAM_MAC, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %228

222:                                              ; preds = %210
  %223 = load i32, i32* @SSL_MAC_FLAG_WRITE_MAC_STREAM, align 4
  %224 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %224, i32 0, i32 6
  %226 = load i32, i32* %225, align 8
  %227 = or i32 %226, %223
  store i32 %227, i32* %225, align 8
  br label %235

228:                                              ; preds = %210
  %229 = load i32, i32* @SSL_MAC_FLAG_WRITE_MAC_STREAM, align 4
  %230 = xor i32 %229, -1
  %231 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %232 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %231, i32 0, i32 6
  %233 = load i32, i32* %232, align 8
  %234 = and i32 %233, %230
  store i32 %234, i32* %232, align 8
  br label %235

235:                                              ; preds = %228, %222
  %236 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %237 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %236, i32 0, i32 5
  %238 = load i32*, i32** %237, align 8
  %239 = icmp ne i32* %238, null
  br i1 %239, label %240, label %245

240:                                              ; preds = %235
  %241 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %242 = call i64 @SSL_IS_DTLS(%struct.TYPE_17__* %241)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %245, label %244

244:                                              ; preds = %240
  store i32 1, i32* %24, align 4
  br label %258

245:                                              ; preds = %240, %235
  %246 = call i8* (...) @EVP_CIPHER_CTX_new()
  %247 = bitcast i8* %246 to i32*
  %248 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %249 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %248, i32 0, i32 5
  store i32* %247, i32** %249, align 8
  %250 = icmp eq i32* %247, null
  br i1 %250, label %251, label %257

251:                                              ; preds = %245
  %252 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %253 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %254 = load i32, i32* @SSL_F_TLS1_CHANGE_CIPHER_STATE, align 4
  %255 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %256 = call i32 @SSLfatal(%struct.TYPE_17__* %252, i32 %253, i32 %254, i32 %255)
  br label %624

257:                                              ; preds = %245
  br label %258

258:                                              ; preds = %257, %244
  %259 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %260 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %259, i32 0, i32 5
  %261 = load i32*, i32** %260, align 8
  store i32* %261, i32** %11, align 8
  %262 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %263 = call i64 @SSL_IS_DTLS(%struct.TYPE_17__* %262)
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %279

265:                                              ; preds = %258
  %266 = call i32* (...) @EVP_MD_CTX_new()
  store i32* %266, i32** %17, align 8
  %267 = load i32*, i32** %17, align 8
  %268 = icmp eq i32* %267, null
  br i1 %268, label %269, label %275

269:                                              ; preds = %265
  %270 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %271 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %272 = load i32, i32* @SSL_F_TLS1_CHANGE_CIPHER_STATE, align 4
  %273 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %274 = call i32 @SSLfatal(%struct.TYPE_17__* %270, i32 %271, i32 %272, i32 %273)
  br label %624

275:                                              ; preds = %265
  %276 = load i32*, i32** %17, align 8
  %277 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %278 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %277, i32 0, i32 4
  store i32* %276, i32** %278, align 8
  br label %292

279:                                              ; preds = %258
  %280 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %281 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %280, i32 0, i32 4
  %282 = call i32* @ssl_replace_hash(i32** %281, i32* null)
  store i32* %282, i32** %17, align 8
  %283 = load i32*, i32** %17, align 8
  %284 = icmp eq i32* %283, null
  br i1 %284, label %285, label %291

285:                                              ; preds = %279
  %286 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %287 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %288 = load i32, i32* @SSL_F_TLS1_CHANGE_CIPHER_STATE, align 4
  %289 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %290 = call i32 @SSLfatal(%struct.TYPE_17__* %286, i32 %287, i32 %288, i32 %289)
  br label %624

291:                                              ; preds = %279
  br label %292

292:                                              ; preds = %291, %275
  %293 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %294 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %293, i32 0, i32 3
  %295 = load i32*, i32** %294, align 8
  %296 = call i32 @COMP_CTX_free(i32* %295)
  %297 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %298 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %297, i32 0, i32 3
  store i32* null, i32** %298, align 8
  %299 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %300 = icmp ne %struct.TYPE_16__* %299, null
  br i1 %300, label %301, label %320

301:                                              ; preds = %292
  %302 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %303 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 4
  %305 = call i8* @COMP_CTX_new(i32 %304)
  %306 = bitcast i8* %305 to i32*
  %307 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %308 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %307, i32 0, i32 3
  store i32* %306, i32** %308, align 8
  %309 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %310 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %309, i32 0, i32 3
  %311 = load i32*, i32** %310, align 8
  %312 = icmp eq i32* %311, null
  br i1 %312, label %313, label %319

313:                                              ; preds = %301
  %314 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %315 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %316 = load i32, i32* @SSL_F_TLS1_CHANGE_CIPHER_STATE, align 4
  %317 = load i32, i32* @SSL_R_COMPRESSION_LIBRARY_ERROR, align 4
  %318 = call i32 @SSLfatal(%struct.TYPE_17__* %314, i32 %315, i32 %316, i32 %317)
  br label %624

319:                                              ; preds = %301
  br label %320

320:                                              ; preds = %319, %292
  %321 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %322 = call i64 @SSL_IS_DTLS(%struct.TYPE_17__* %321)
  %323 = icmp ne i64 %322, 0
  br i1 %323, label %328, label %324

324:                                              ; preds = %320
  %325 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %326 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %325, i32 0, i32 2
  %327 = call i32 @RECORD_LAYER_reset_write_sequence(i32* %326)
  br label %328

328:                                              ; preds = %324, %320
  %329 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %330 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %329, i32 0, i32 1
  %331 = load %struct.TYPE_15__*, %struct.TYPE_15__** %330, align 8
  %332 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %331, i32 0, i32 2
  %333 = load i8*, i8** %332, align 8
  %334 = getelementptr inbounds i8, i8* %333, i64 0
  store i8* %334, i8** %7, align 8
  %335 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %336 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %335, i32 0, i32 1
  %337 = load %struct.TYPE_15__*, %struct.TYPE_15__** %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %337, i32 0, i32 3
  store i64* %338, i64** %16, align 8
  br label %339

339:                                              ; preds = %328, %172
  %340 = load i32, i32* %24, align 4
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %345

342:                                              ; preds = %339
  %343 = load i32*, i32** %11, align 8
  %344 = call i32 @EVP_CIPHER_CTX_reset(i32* %343)
  br label %345

345:                                              ; preds = %342, %339
  %346 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %347 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %346, i32 0, i32 1
  %348 = load %struct.TYPE_15__*, %struct.TYPE_15__** %347, align 8
  %349 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %348, i32 0, i32 4
  %350 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %349, i32 0, i32 1
  %351 = load i8*, i8** %350, align 8
  store i8* %351, i8** %6, align 8
  %352 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %353 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %352, i32 0, i32 1
  %354 = load %struct.TYPE_15__*, %struct.TYPE_15__** %353, align 8
  %355 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %354, i32 0, i32 4
  %356 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %355, i32 0, i32 2
  %357 = load i64, i64* %356, align 8
  %358 = load i64*, i64** %16, align 8
  store i64 %357, i64* %358, align 8
  store i64 %357, i64* %20, align 8
  %359 = load i32*, i32** %12, align 8
  %360 = call i32 @EVP_CIPHER_key_length(i32* %359)
  %361 = sext i32 %360 to i64
  store i64 %361, i64* %23, align 8
  %362 = load i64, i64* %23, align 8
  store i64 %362, i64* %21, align 8
  %363 = load i32*, i32** %12, align 8
  %364 = call i64 @EVP_CIPHER_mode(i32* %363)
  %365 = load i64, i64* @EVP_CIPH_GCM_MODE, align 8
  %366 = icmp eq i64 %364, %365
  br i1 %366, label %367, label %369

367:                                              ; preds = %345
  %368 = load i64, i64* @EVP_GCM_TLS_FIXED_IV_LEN, align 8
  store i64 %368, i64* %22, align 8
  br label %380

369:                                              ; preds = %345
  %370 = load i32*, i32** %12, align 8
  %371 = call i64 @EVP_CIPHER_mode(i32* %370)
  %372 = load i64, i64* @EVP_CIPH_CCM_MODE, align 8
  %373 = icmp eq i64 %371, %372
  br i1 %373, label %374, label %376

374:                                              ; preds = %369
  %375 = load i64, i64* @EVP_CCM_TLS_FIXED_IV_LEN, align 8
  store i64 %375, i64* %22, align 8
  br label %379

376:                                              ; preds = %369
  %377 = load i32*, i32** %12, align 8
  %378 = call i64 @EVP_CIPHER_iv_length(i32* %377)
  store i64 %378, i64* %22, align 8
  br label %379

379:                                              ; preds = %376, %374
  br label %380

380:                                              ; preds = %379, %367
  %381 = load i32, i32* %5, align 4
  %382 = load i32, i32* @SSL3_CHANGE_CIPHER_CLIENT_WRITE, align 4
  %383 = icmp eq i32 %381, %382
  br i1 %383, label %388, label %384

384:                                              ; preds = %380
  %385 = load i32, i32* %5, align 4
  %386 = load i32, i32* @SSL3_CHANGE_CIPHER_SERVER_READ, align 4
  %387 = icmp eq i32 %385, %386
  br i1 %387, label %388, label %410

388:                                              ; preds = %384, %380
  %389 = load i8*, i8** %6, align 8
  %390 = getelementptr inbounds i8, i8* %389, i64 0
  store i8* %390, i8** %8, align 8
  %391 = load i64, i64* %20, align 8
  %392 = load i64, i64* %20, align 8
  %393 = add i64 %391, %392
  store i64 %393, i64* %19, align 8
  %394 = load i8*, i8** %6, align 8
  %395 = load i64, i64* %19, align 8
  %396 = getelementptr inbounds i8, i8* %394, i64 %395
  store i8* %396, i8** %9, align 8
  %397 = load i64, i64* %21, align 8
  %398 = load i64, i64* %21, align 8
  %399 = add i64 %397, %398
  %400 = load i64, i64* %19, align 8
  %401 = add i64 %400, %399
  store i64 %401, i64* %19, align 8
  %402 = load i8*, i8** %6, align 8
  %403 = load i64, i64* %19, align 8
  %404 = getelementptr inbounds i8, i8* %402, i64 %403
  store i8* %404, i8** %10, align 8
  %405 = load i64, i64* %22, align 8
  %406 = load i64, i64* %22, align 8
  %407 = add i64 %405, %406
  %408 = load i64, i64* %19, align 8
  %409 = add i64 %408, %407
  store i64 %409, i64* %19, align 8
  br label %434

410:                                              ; preds = %384
  %411 = load i64, i64* %20, align 8
  store i64 %411, i64* %19, align 8
  %412 = load i8*, i8** %6, align 8
  %413 = load i64, i64* %19, align 8
  %414 = getelementptr inbounds i8, i8* %412, i64 %413
  store i8* %414, i8** %8, align 8
  %415 = load i64, i64* %20, align 8
  %416 = load i64, i64* %21, align 8
  %417 = add i64 %415, %416
  %418 = load i64, i64* %19, align 8
  %419 = add i64 %418, %417
  store i64 %419, i64* %19, align 8
  %420 = load i8*, i8** %6, align 8
  %421 = load i64, i64* %19, align 8
  %422 = getelementptr inbounds i8, i8* %420, i64 %421
  store i8* %422, i8** %9, align 8
  %423 = load i64, i64* %21, align 8
  %424 = load i64, i64* %22, align 8
  %425 = add i64 %423, %424
  %426 = load i64, i64* %19, align 8
  %427 = add i64 %426, %425
  store i64 %427, i64* %19, align 8
  %428 = load i8*, i8** %6, align 8
  %429 = load i64, i64* %19, align 8
  %430 = getelementptr inbounds i8, i8* %428, i64 %429
  store i8* %430, i8** %10, align 8
  %431 = load i64, i64* %22, align 8
  %432 = load i64, i64* %19, align 8
  %433 = add i64 %432, %431
  store i64 %433, i64* %19, align 8
  br label %434

434:                                              ; preds = %410, %388
  %435 = load i64, i64* %19, align 8
  %436 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %437 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %436, i32 0, i32 1
  %438 = load %struct.TYPE_15__*, %struct.TYPE_15__** %437, align 8
  %439 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %438, i32 0, i32 4
  %440 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %439, i32 0, i32 3
  %441 = load i64, i64* %440, align 8
  %442 = icmp ugt i64 %435, %441
  br i1 %442, label %443, label %449

443:                                              ; preds = %434
  %444 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %445 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %446 = load i32, i32* @SSL_F_TLS1_CHANGE_CIPHER_STATE, align 4
  %447 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %448 = call i32 @SSLfatal(%struct.TYPE_17__* %444, i32 %445, i32 %446, i32 %447)
  br label %624

449:                                              ; preds = %434
  %450 = load i8*, i8** %7, align 8
  %451 = load i8*, i8** %8, align 8
  %452 = load i64, i64* %20, align 8
  %453 = call i32 @memcpy(i8* %450, i8* %451, i64 %452)
  %454 = load i32*, i32** %12, align 8
  %455 = call i32 @EVP_CIPHER_flags(i32* %454)
  %456 = load i32, i32* @EVP_CIPH_FLAG_AEAD_CIPHER, align 4
  %457 = and i32 %455, %456
  %458 = icmp ne i32 %457, 0
  br i1 %458, label %485, label %459

459:                                              ; preds = %449
  %460 = load i32, i32* %15, align 4
  %461 = load i8*, i8** %7, align 8
  %462 = load i64*, i64** %16, align 8
  %463 = load i64, i64* %462, align 8
  %464 = trunc i64 %463 to i32
  %465 = call i32* @EVP_PKEY_new_mac_key(i32 %460, i32* null, i8* %461, i32 %464)
  store i32* %465, i32** %18, align 8
  %466 = load i32*, i32** %18, align 8
  %467 = icmp eq i32* %466, null
  br i1 %467, label %474, label %468

468:                                              ; preds = %459
  %469 = load i32*, i32** %17, align 8
  %470 = load i32*, i32** %14, align 8
  %471 = load i32*, i32** %18, align 8
  %472 = call i64 @EVP_DigestSignInit(i32* %469, i32* null, i32* %470, i32* null, i32* %471)
  %473 = icmp sle i64 %472, 0
  br i1 %473, label %474, label %482

474:                                              ; preds = %468, %459
  %475 = load i32*, i32** %18, align 8
  %476 = call i32 @EVP_PKEY_free(i32* %475)
  %477 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %478 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %479 = load i32, i32* @SSL_F_TLS1_CHANGE_CIPHER_STATE, align 4
  %480 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %481 = call i32 @SSLfatal(%struct.TYPE_17__* %477, i32 %478, i32 %479, i32 %480)
  br label %624

482:                                              ; preds = %468
  %483 = load i32*, i32** %18, align 8
  %484 = call i32 @EVP_PKEY_free(i32* %483)
  br label %485

485:                                              ; preds = %482, %449
  %486 = load i32*, i32** %12, align 8
  %487 = call i64 @EVP_CIPHER_mode(i32* %486)
  %488 = load i64, i64* @EVP_CIPH_GCM_MODE, align 8
  %489 = icmp eq i64 %487, %488
  br i1 %489, label %490, label %514

490:                                              ; preds = %485
  %491 = load i32*, i32** %11, align 8
  %492 = load i32*, i32** %12, align 8
  %493 = load i8*, i8** %9, align 8
  %494 = load i32, i32* %5, align 4
  %495 = load i32, i32* @SSL3_CC_WRITE, align 4
  %496 = and i32 %494, %495
  %497 = call i32 @EVP_CipherInit_ex(i32* %491, i32* %492, i32* null, i8* %493, i8* null, i32 %496)
  %498 = icmp ne i32 %497, 0
  br i1 %498, label %499, label %507

499:                                              ; preds = %490
  %500 = load i32*, i32** %11, align 8
  %501 = load i32, i32* @EVP_CTRL_GCM_SET_IV_FIXED, align 4
  %502 = load i64, i64* %22, align 8
  %503 = trunc i64 %502 to i32
  %504 = load i8*, i8** %10, align 8
  %505 = call i32 @EVP_CIPHER_CTX_ctrl(i32* %500, i32 %501, i32 %503, i8* %504)
  %506 = icmp ne i32 %505, 0
  br i1 %506, label %513, label %507

507:                                              ; preds = %499, %490
  %508 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %509 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %510 = load i32, i32* @SSL_F_TLS1_CHANGE_CIPHER_STATE, align 4
  %511 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %512 = call i32 @SSLfatal(%struct.TYPE_17__* %508, i32 %509, i32 %510, i32 %511)
  br label %624

513:                                              ; preds = %499
  br label %594

514:                                              ; preds = %485
  %515 = load i32*, i32** %12, align 8
  %516 = call i64 @EVP_CIPHER_mode(i32* %515)
  %517 = load i64, i64* @EVP_CIPH_CCM_MODE, align 8
  %518 = icmp eq i64 %516, %517
  br i1 %518, label %519, label %576

519:                                              ; preds = %514
  %520 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %521 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %520, i32 0, i32 1
  %522 = load %struct.TYPE_15__*, %struct.TYPE_15__** %521, align 8
  %523 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %522, i32 0, i32 4
  %524 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %523, i32 0, i32 4
  %525 = load %struct.TYPE_13__*, %struct.TYPE_13__** %524, align 8
  %526 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %525, i32 0, i32 1
  %527 = load i32, i32* %526, align 4
  %528 = load i32, i32* @SSL_AES128CCM8, align 4
  %529 = load i32, i32* @SSL_AES256CCM8, align 4
  %530 = or i32 %528, %529
  %531 = and i32 %527, %530
  %532 = icmp ne i32 %531, 0
  br i1 %532, label %533, label %535

533:                                              ; preds = %519
  %534 = load i32, i32* @EVP_CCM8_TLS_TAG_LEN, align 4
  store i32 %534, i32* %25, align 4
  br label %537

535:                                              ; preds = %519
  %536 = load i32, i32* @EVP_CCM_TLS_TAG_LEN, align 4
  store i32 %536, i32* %25, align 4
  br label %537

537:                                              ; preds = %535, %533
  %538 = load i32*, i32** %11, align 8
  %539 = load i32*, i32** %12, align 8
  %540 = load i32, i32* %5, align 4
  %541 = load i32, i32* @SSL3_CC_WRITE, align 4
  %542 = and i32 %540, %541
  %543 = call i32 @EVP_CipherInit_ex(i32* %538, i32* %539, i32* null, i8* null, i8* null, i32 %542)
  %544 = icmp ne i32 %543, 0
  br i1 %544, label %545, label %569

545:                                              ; preds = %537
  %546 = load i32*, i32** %11, align 8
  %547 = load i32, i32* @EVP_CTRL_AEAD_SET_IVLEN, align 4
  %548 = call i32 @EVP_CIPHER_CTX_ctrl(i32* %546, i32 %547, i32 12, i8* null)
  %549 = icmp ne i32 %548, 0
  br i1 %549, label %550, label %569

550:                                              ; preds = %545
  %551 = load i32*, i32** %11, align 8
  %552 = load i32, i32* @EVP_CTRL_AEAD_SET_TAG, align 4
  %553 = load i32, i32* %25, align 4
  %554 = call i32 @EVP_CIPHER_CTX_ctrl(i32* %551, i32 %552, i32 %553, i8* null)
  %555 = icmp ne i32 %554, 0
  br i1 %555, label %556, label %569

556:                                              ; preds = %550
  %557 = load i32*, i32** %11, align 8
  %558 = load i32, i32* @EVP_CTRL_CCM_SET_IV_FIXED, align 4
  %559 = load i64, i64* %22, align 8
  %560 = trunc i64 %559 to i32
  %561 = load i8*, i8** %10, align 8
  %562 = call i32 @EVP_CIPHER_CTX_ctrl(i32* %557, i32 %558, i32 %560, i8* %561)
  %563 = icmp ne i32 %562, 0
  br i1 %563, label %564, label %569

564:                                              ; preds = %556
  %565 = load i32*, i32** %11, align 8
  %566 = load i8*, i8** %9, align 8
  %567 = call i32 @EVP_CipherInit_ex(i32* %565, i32* null, i32* null, i8* %566, i8* null, i32 -1)
  %568 = icmp ne i32 %567, 0
  br i1 %568, label %575, label %569

569:                                              ; preds = %564, %556, %550, %545, %537
  %570 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %571 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %572 = load i32, i32* @SSL_F_TLS1_CHANGE_CIPHER_STATE, align 4
  %573 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %574 = call i32 @SSLfatal(%struct.TYPE_17__* %570, i32 %571, i32 %572, i32 %573)
  br label %624

575:                                              ; preds = %564
  br label %593

576:                                              ; preds = %514
  %577 = load i32*, i32** %11, align 8
  %578 = load i32*, i32** %12, align 8
  %579 = load i8*, i8** %9, align 8
  %580 = load i8*, i8** %10, align 8
  %581 = load i32, i32* %5, align 4
  %582 = load i32, i32* @SSL3_CC_WRITE, align 4
  %583 = and i32 %581, %582
  %584 = call i32 @EVP_CipherInit_ex(i32* %577, i32* %578, i32* null, i8* %579, i8* %580, i32 %583)
  %585 = icmp ne i32 %584, 0
  br i1 %585, label %592, label %586

586:                                              ; preds = %576
  %587 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %588 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %589 = load i32, i32* @SSL_F_TLS1_CHANGE_CIPHER_STATE, align 4
  %590 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %591 = call i32 @SSLfatal(%struct.TYPE_17__* %587, i32 %588, i32 %589, i32 %590)
  br label %624

592:                                              ; preds = %576
  br label %593

593:                                              ; preds = %592, %575
  br label %594

594:                                              ; preds = %593, %513
  %595 = load i32*, i32** %12, align 8
  %596 = call i32 @EVP_CIPHER_flags(i32* %595)
  %597 = load i32, i32* @EVP_CIPH_FLAG_AEAD_CIPHER, align 4
  %598 = and i32 %596, %597
  %599 = icmp ne i32 %598, 0
  br i1 %599, label %600, label %619

600:                                              ; preds = %594
  %601 = load i64*, i64** %16, align 8
  %602 = load i64, i64* %601, align 8
  %603 = icmp ne i64 %602, 0
  br i1 %603, label %604, label %619

604:                                              ; preds = %600
  %605 = load i32*, i32** %11, align 8
  %606 = load i32, i32* @EVP_CTRL_AEAD_SET_MAC_KEY, align 4
  %607 = load i64*, i64** %16, align 8
  %608 = load i64, i64* %607, align 8
  %609 = trunc i64 %608 to i32
  %610 = load i8*, i8** %7, align 8
  %611 = call i32 @EVP_CIPHER_CTX_ctrl(i32* %605, i32 %606, i32 %609, i8* %610)
  %612 = icmp ne i32 %611, 0
  br i1 %612, label %619, label %613

613:                                              ; preds = %604
  %614 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %615 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %616 = load i32, i32* @SSL_F_TLS1_CHANGE_CIPHER_STATE, align 4
  %617 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %618 = call i32 @SSLfatal(%struct.TYPE_17__* %614, i32 %615, i32 %616, i32 %617)
  br label %624

619:                                              ; preds = %604, %600, %594
  %620 = load i32, i32* @ENC_WRITE_STATE_VALID, align 4
  %621 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %622 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %621, i32 0, i32 0
  %623 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %622, i32 0, i32 0
  store i32 %620, i32* %623, align 8
  store i32 1, i32* %3, align 4
  br label %625

624:                                              ; preds = %613, %586, %569, %507, %474, %443, %313, %285, %269, %251, %157, %135, %114
  store i32 0, i32* %3, align 4
  br label %625

625:                                              ; preds = %624, %619
  %626 = load i32, i32* %3, align 4
  ret i32 %626
}

declare dso_local i8* @EVP_CIPHER_CTX_new(...) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_17__*, i32, i32, i32) #1

declare dso_local i32 @EVP_CIPHER_CTX_reset(i32*) #1

declare dso_local i32* @ssl_replace_hash(i32**, i32*) #1

declare dso_local i32 @COMP_CTX_free(i32*) #1

declare dso_local i8* @COMP_CTX_new(i32) #1

declare dso_local i64 @SSL_IS_DTLS(%struct.TYPE_17__*) #1

declare dso_local i32 @RECORD_LAYER_reset_read_sequence(i32*) #1

declare dso_local i32* @EVP_MD_CTX_new(...) #1

declare dso_local i32 @RECORD_LAYER_reset_write_sequence(i32*) #1

declare dso_local i32 @EVP_CIPHER_key_length(i32*) #1

declare dso_local i64 @EVP_CIPHER_mode(i32*) #1

declare dso_local i64 @EVP_CIPHER_iv_length(i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @EVP_CIPHER_flags(i32*) #1

declare dso_local i32* @EVP_PKEY_new_mac_key(i32, i32*, i8*, i32) #1

declare dso_local i64 @EVP_DigestSignInit(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @EVP_PKEY_free(i32*) #1

declare dso_local i32 @EVP_CipherInit_ex(i32*, i32*, i32*, i8*, i8*, i32) #1

declare dso_local i32 @EVP_CIPHER_CTX_ctrl(i32*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
