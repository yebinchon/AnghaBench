; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/record/extr_ssl3_record.c_dtls1_process_record.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/record/extr_ssl3_record.c_dtls1_process_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i32*, %struct.TYPE_21__*, i32*, i64, i32* }
%struct.TYPE_21__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 (%struct.TYPE_23__*, %struct.TYPE_22__*, i8*, i32)*, i32 (%struct.TYPE_23__*, %struct.TYPE_22__*, i32, i32)* }
%struct.TYPE_22__ = type { i8*, i64, i8*, i64, i64 }

@EVP_MAX_MD_SIZE = common dso_local global i32 0, align 4
@DTLS1_RT_HEADER_LENGTH = common dso_local global i64 0, align 8
@SSL3_RT_MAX_ENCRYPTED_LENGTH = common dso_local global i64 0, align 8
@SSL_AD_RECORD_OVERFLOW = common dso_local global i32 0, align 4
@SSL_F_DTLS1_PROCESS_RECORD = common dso_local global i32 0, align 4
@SSL_R_ENCRYPTED_LENGTH_TOO_LONG = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_AD_DECODE_ERROR = common dso_local global i32 0, align 4
@SSL_R_LENGTH_TOO_SHORT = common dso_local global i32 0, align 4
@SSL_AD_BAD_RECORD_MAC = common dso_local global i32 0, align 4
@SSL_R_DECRYPTION_FAILED_OR_BAD_RECORD_MAC = common dso_local global i32 0, align 4
@ERR_LIB_EVP = common dso_local global i32 0, align 4
@EVP_CIPH_CBC_MODE = common dso_local global i64 0, align 8
@SSL3_RT_MAX_COMPRESSED_LENGTH = common dso_local global i64 0, align 8
@SSL_R_COMPRESSED_LENGTH_TOO_LONG = common dso_local global i32 0, align 4
@SSL_AD_DECOMPRESSION_FAILURE = common dso_local global i32 0, align 4
@SSL_R_BAD_DECOMPRESSION = common dso_local global i32 0, align 4
@SSL3_RT_MAX_PLAIN_LENGTH = common dso_local global i64 0, align 8
@SSL_R_DATA_LENGTH_TOO_LONG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtls1_process_record(%struct.TYPE_23__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %4, align 8
  store i32* %1, i32** %5, align 8
  %19 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %12, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %13, align 8
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %23, i32 0, i32 0
  %25 = call %struct.TYPE_22__* @RECORD_LAYER_get_rrec(i32* %24)
  store %struct.TYPE_22__* %25, %struct.TYPE_22__** %9, align 8
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %26, i32 0, i32 5
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %8, align 8
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %29, i32 0, i32 0
  %31 = call i8* @RECORD_LAYER_get_packet(i32* %30)
  %32 = load i64, i64* @DTLS1_RT_HEADER_LENGTH, align 8
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %34, i32 0, i32 0
  store i8* %33, i8** %35, align 8
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @SSL3_RT_MAX_ENCRYPTED_LENGTH, align 8
  %40 = icmp ugt i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %2
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %43 = load i32, i32* @SSL_AD_RECORD_OVERFLOW, align 4
  %44 = load i32, i32* @SSL_F_DTLS1_PROCESS_RECORD, align 4
  %45 = load i32, i32* @SSL_R_ENCRYPTED_LENGTH_TOO_LONG, align 4
  %46 = call i32 @SSLfatal(%struct.TYPE_23__* %42, i32 %43, i32 %44, i32 %45)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %368

47:                                               ; preds = %2
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 2
  store i8* %50, i8** %52, align 8
  %53 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 3
  store i64 %55, i64* %57, align 8
  %58 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %59 = call i64 @SSL_READ_ETM(%struct.TYPE_23__* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %134

61:                                               ; preds = %47
  %62 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %134

66:                                               ; preds = %61
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %67, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = call i8* @EVP_MD_CTX_size(i64 %69)
  %71 = ptrtoint i8* %70 to i64
  store i64 %71, i64* %11, align 8
  %72 = load i64, i64* %11, align 8
  %73 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %74 = sext i32 %73 to i64
  %75 = icmp ule i64 %72, %74
  %76 = zext i1 %75 to i32
  %77 = call i32 @ossl_assert(i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %66
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %81 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %82 = load i32, i32* @SSL_F_DTLS1_PROCESS_RECORD, align 4
  %83 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %84 = call i32 @SSLfatal(%struct.TYPE_23__* %80, i32 %81, i32 %82, i32 %83)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %368

85:                                               ; preds = %66
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %11, align 8
  %90 = icmp ult i64 %88, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %85
  %92 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %93 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %94 = load i32, i32* @SSL_F_DTLS1_PROCESS_RECORD, align 4
  %95 = load i32, i32* @SSL_R_LENGTH_TOO_SHORT, align 4
  %96 = call i32 @SSLfatal(%struct.TYPE_23__* %92, i32 %93, i32 %94, i32 %95)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %368

97:                                               ; preds = %85
  %98 = load i64, i64* %11, align 8
  %99 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = sub i64 %101, %98
  store i64 %102, i64* %100, align 8
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %103, i32 0, i32 2
  %105 = load i8*, i8** %104, align 8
  %106 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds i8, i8* %105, i64 %108
  store i8* %109, i8** %15, align 8
  %110 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %110, i32 0, i32 2
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_20__*, %struct.TYPE_20__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %114, i32 0, i32 0
  %116 = load i32 (%struct.TYPE_23__*, %struct.TYPE_22__*, i8*, i32)*, i32 (%struct.TYPE_23__*, %struct.TYPE_22__*, i8*, i32)** %115, align 8
  %117 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %118 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %119 = call i32 %116(%struct.TYPE_23__* %117, %struct.TYPE_22__* %118, i8* %22, i32 0)
  store i32 %119, i32* %6, align 4
  %120 = load i32, i32* %6, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %127, label %122

122:                                              ; preds = %97
  %123 = load i8*, i8** %15, align 8
  %124 = load i64, i64* %11, align 8
  %125 = call i64 @CRYPTO_memcmp(i8* %22, i8* %123, i64 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %122, %97
  %128 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %129 = load i32, i32* @SSL_AD_BAD_RECORD_MAC, align 4
  %130 = load i32, i32* @SSL_F_DTLS1_PROCESS_RECORD, align 4
  %131 = load i32, i32* @SSL_R_DECRYPTION_FAILED_OR_BAD_RECORD_MAC, align 4
  %132 = call i32 @SSLfatal(%struct.TYPE_23__* %128, i32 %129, i32 %130, i32 %131)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %368

133:                                              ; preds = %122
  br label %134

134:                                              ; preds = %133, %61, %47
  %135 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %135, i32 0, i32 2
  %137 = load %struct.TYPE_21__*, %struct.TYPE_21__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_20__*, %struct.TYPE_20__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %139, i32 0, i32 1
  %141 = load i32 (%struct.TYPE_23__*, %struct.TYPE_22__*, i32, i32)*, i32 (%struct.TYPE_23__*, %struct.TYPE_22__*, i32, i32)** %140, align 8
  %142 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %143 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %144 = call i32 %141(%struct.TYPE_23__* %142, %struct.TYPE_22__* %143, i32 1, i32 0)
  store i32 %144, i32* %7, align 4
  %145 = load i32, i32* %7, align 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %158

147:                                              ; preds = %134
  %148 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %149 = call i64 @ossl_statem_in_error(%struct.TYPE_23__* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %147
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %368

152:                                              ; preds = %147
  %153 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %153, i32 0, i32 1
  store i64 0, i64* %154, align 8
  %155 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %155, i32 0, i32 0
  %157 = call i32 @RECORD_LAYER_reset_packet_length(i32* %156)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %368

158:                                              ; preds = %134
  %159 = load i32*, i32** %8, align 8
  %160 = icmp ne i32* %159, null
  br i1 %160, label %161, label %309

161:                                              ; preds = %158
  %162 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %163 = call i64 @SSL_READ_ETM(%struct.TYPE_23__* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %309, label %165

165:                                              ; preds = %161
  %166 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %166, i32 0, i32 3
  %168 = load i32*, i32** %167, align 8
  %169 = icmp ne i32* %168, null
  br i1 %169, label %170, label %309

170:                                              ; preds = %165
  %171 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %171, i32 0, i32 4
  %173 = load i64, i64* %172, align 8
  %174 = call i32* @EVP_MD_CTX_md(i64 %173)
  %175 = icmp ne i32* %174, null
  br i1 %175, label %176, label %309

176:                                              ; preds = %170
  store i8* null, i8** %16, align 8
  %177 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %178 = zext i32 %177 to i64
  %179 = call i8* @llvm.stacksave()
  store i8* %179, i8** %17, align 8
  %180 = alloca i8, i64 %178, align 16
  store i64 %178, i64* %18, align 8
  %181 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %181, i32 0, i32 4
  %183 = load i64, i64* %182, align 8
  %184 = call i8* @EVP_MD_CTX_size(i64 %183)
  %185 = ptrtoint i8* %184 to i32
  store i32 %185, i32* %10, align 4
  %186 = load i32, i32* %10, align 4
  %187 = icmp slt i32 %186, 0
  br i1 %187, label %188, label %194

188:                                              ; preds = %176
  %189 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %190 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %191 = load i32, i32* @SSL_F_DTLS1_PROCESS_RECORD, align 4
  %192 = load i32, i32* @ERR_LIB_EVP, align 4
  %193 = call i32 @SSLfatal(%struct.TYPE_23__* %189, i32 %190, i32 %191, i32 %192)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %305

194:                                              ; preds = %176
  %195 = load i32, i32* %10, align 4
  %196 = sext i32 %195 to i64
  store i64 %196, i64* %11, align 8
  %197 = load i64, i64* %11, align 8
  %198 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %199 = sext i32 %198 to i64
  %200 = icmp ule i64 %197, %199
  %201 = zext i1 %200 to i32
  %202 = call i32 @ossl_assert(i32 %201)
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %210, label %204

204:                                              ; preds = %194
  %205 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %206 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %207 = load i32, i32* @SSL_F_DTLS1_PROCESS_RECORD, align 4
  %208 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %209 = call i32 @SSLfatal(%struct.TYPE_23__* %205, i32 %206, i32 %207, i32 %208)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %305

210:                                              ; preds = %194
  %211 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %212 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %211, i32 0, i32 3
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* %11, align 8
  %215 = icmp ult i64 %213, %214
  br i1 %215, label %230, label %216

216:                                              ; preds = %210
  %217 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %217, i32 0, i32 3
  %219 = load i32*, i32** %218, align 8
  %220 = call i64 @EVP_CIPHER_CTX_mode(i32* %219)
  %221 = load i64, i64* @EVP_CIPH_CBC_MODE, align 8
  %222 = icmp eq i64 %220, %221
  br i1 %222, label %223, label %236

223:                                              ; preds = %216
  %224 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %225 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %224, i32 0, i32 3
  %226 = load i64, i64* %225, align 8
  %227 = load i64, i64* %11, align 8
  %228 = add i64 %227, 1
  %229 = icmp ult i64 %226, %228
  br i1 %229, label %230, label %236

230:                                              ; preds = %223, %210
  %231 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %232 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %233 = load i32, i32* @SSL_F_DTLS1_PROCESS_RECORD, align 4
  %234 = load i32, i32* @SSL_R_LENGTH_TOO_SHORT, align 4
  %235 = call i32 @SSLfatal(%struct.TYPE_23__* %231, i32 %232, i32 %233, i32 %234)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %305

236:                                              ; preds = %223, %216
  %237 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %238 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %237, i32 0, i32 3
  %239 = load i32*, i32** %238, align 8
  %240 = call i64 @EVP_CIPHER_CTX_mode(i32* %239)
  %241 = load i64, i64* @EVP_CIPH_CBC_MODE, align 8
  %242 = icmp eq i64 %240, %241
  br i1 %242, label %243, label %260

243:                                              ; preds = %236
  store i8* %180, i8** %16, align 8
  %244 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %245 = load i64, i64* %11, align 8
  %246 = call i32 @ssl3_cbc_copy_mac(i8* %180, %struct.TYPE_22__* %244, i64 %245)
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %254, label %248

248:                                              ; preds = %243
  %249 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %250 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %251 = load i32, i32* @SSL_F_DTLS1_PROCESS_RECORD, align 4
  %252 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %253 = call i32 @SSLfatal(%struct.TYPE_23__* %249, i32 %250, i32 %251, i32 %252)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %305

254:                                              ; preds = %243
  %255 = load i64, i64* %11, align 8
  %256 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %257 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %256, i32 0, i32 1
  %258 = load i64, i64* %257, align 8
  %259 = sub i64 %258, %255
  store i64 %259, i64* %257, align 8
  br label %273

260:                                              ; preds = %236
  %261 = load i64, i64* %11, align 8
  %262 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %263 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %262, i32 0, i32 1
  %264 = load i64, i64* %263, align 8
  %265 = sub i64 %264, %261
  store i64 %265, i64* %263, align 8
  %266 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %267 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %266, i32 0, i32 2
  %268 = load i8*, i8** %267, align 8
  %269 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %270 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %269, i32 0, i32 1
  %271 = load i64, i64* %270, align 8
  %272 = getelementptr inbounds i8, i8* %268, i64 %271
  store i8* %272, i8** %16, align 8
  br label %273

273:                                              ; preds = %260, %254
  %274 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %275 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %274, i32 0, i32 2
  %276 = load %struct.TYPE_21__*, %struct.TYPE_21__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %276, i32 0, i32 0
  %278 = load %struct.TYPE_20__*, %struct.TYPE_20__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %278, i32 0, i32 0
  %280 = load i32 (%struct.TYPE_23__*, %struct.TYPE_22__*, i8*, i32)*, i32 (%struct.TYPE_23__*, %struct.TYPE_22__*, i8*, i32)** %279, align 8
  %281 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %282 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %283 = call i32 %280(%struct.TYPE_23__* %281, %struct.TYPE_22__* %282, i8* %22, i32 0)
  store i32 %283, i32* %6, align 4
  %284 = load i32, i32* %6, align 4
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %294, label %286

286:                                              ; preds = %273
  %287 = load i8*, i8** %16, align 8
  %288 = icmp eq i8* %287, null
  br i1 %288, label %294, label %289

289:                                              ; preds = %286
  %290 = load i8*, i8** %16, align 8
  %291 = load i64, i64* %11, align 8
  %292 = call i64 @CRYPTO_memcmp(i8* %22, i8* %290, i64 %291)
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %295

294:                                              ; preds = %289, %286, %273
  store i32 -1, i32* %7, align 4
  br label %295

295:                                              ; preds = %294, %289
  %296 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %297 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %296, i32 0, i32 1
  %298 = load i64, i64* %297, align 8
  %299 = load i64, i64* @SSL3_RT_MAX_COMPRESSED_LENGTH, align 8
  %300 = load i64, i64* %11, align 8
  %301 = add i64 %299, %300
  %302 = icmp ugt i64 %298, %301
  br i1 %302, label %303, label %304

303:                                              ; preds = %295
  store i32 -1, i32* %7, align 4
  br label %304

304:                                              ; preds = %303, %295
  store i32 0, i32* %14, align 4
  br label %305

305:                                              ; preds = %304, %248, %230, %204, %188
  %306 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %306)
  %307 = load i32, i32* %14, align 4
  switch i32 %307, label %368 [
    i32 0, label %308
  ]

308:                                              ; preds = %305
  br label %309

309:                                              ; preds = %308, %170, %165, %161, %158
  %310 = load i32, i32* %7, align 4
  %311 = icmp slt i32 %310, 0
  br i1 %311, label %312, label %318

312:                                              ; preds = %309
  %313 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %314 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %313, i32 0, i32 1
  store i64 0, i64* %314, align 8
  %315 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %316 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %315, i32 0, i32 0
  %317 = call i32 @RECORD_LAYER_reset_packet_length(i32* %316)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %368

318:                                              ; preds = %309
  %319 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %320 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %319, i32 0, i32 1
  %321 = load i32*, i32** %320, align 8
  %322 = icmp ne i32* %321, null
  br i1 %322, label %323, label %347

323:                                              ; preds = %318
  %324 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %325 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %324, i32 0, i32 1
  %326 = load i64, i64* %325, align 8
  %327 = load i64, i64* @SSL3_RT_MAX_COMPRESSED_LENGTH, align 8
  %328 = icmp ugt i64 %326, %327
  br i1 %328, label %329, label %335

329:                                              ; preds = %323
  %330 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %331 = load i32, i32* @SSL_AD_RECORD_OVERFLOW, align 4
  %332 = load i32, i32* @SSL_F_DTLS1_PROCESS_RECORD, align 4
  %333 = load i32, i32* @SSL_R_COMPRESSED_LENGTH_TOO_LONG, align 4
  %334 = call i32 @SSLfatal(%struct.TYPE_23__* %330, i32 %331, i32 %332, i32 %333)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %368

335:                                              ; preds = %323
  %336 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %337 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %338 = call i32 @ssl3_do_uncompress(%struct.TYPE_23__* %336, %struct.TYPE_22__* %337)
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %346, label %340

340:                                              ; preds = %335
  %341 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %342 = load i32, i32* @SSL_AD_DECOMPRESSION_FAILURE, align 4
  %343 = load i32, i32* @SSL_F_DTLS1_PROCESS_RECORD, align 4
  %344 = load i32, i32* @SSL_R_BAD_DECOMPRESSION, align 4
  %345 = call i32 @SSLfatal(%struct.TYPE_23__* %341, i32 %342, i32 %343, i32 %344)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %368

346:                                              ; preds = %335
  br label %347

347:                                              ; preds = %346, %318
  %348 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %349 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %348, i32 0, i32 1
  %350 = load i64, i64* %349, align 8
  %351 = load i64, i64* @SSL3_RT_MAX_PLAIN_LENGTH, align 8
  %352 = icmp ugt i64 %350, %351
  br i1 %352, label %353, label %359

353:                                              ; preds = %347
  %354 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %355 = load i32, i32* @SSL_AD_RECORD_OVERFLOW, align 4
  %356 = load i32, i32* @SSL_F_DTLS1_PROCESS_RECORD, align 4
  %357 = load i32, i32* @SSL_R_DATA_LENGTH_TOO_LONG, align 4
  %358 = call i32 @SSLfatal(%struct.TYPE_23__* %354, i32 %355, i32 %356, i32 %357)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %368

359:                                              ; preds = %347
  %360 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %361 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %360, i32 0, i32 4
  store i64 0, i64* %361, align 8
  %362 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %363 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %362, i32 0, i32 0
  %364 = call i32 @RECORD_LAYER_reset_packet_length(i32* %363)
  %365 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %366 = load i32*, i32** %5, align 8
  %367 = call i32 @dtls1_record_bitmap_update(%struct.TYPE_23__* %365, i32* %366)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %368

368:                                              ; preds = %359, %353, %340, %329, %312, %305, %152, %151, %127, %91, %79, %41
  %369 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %369)
  %370 = load i32, i32* %3, align 4
  ret i32 %370
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_22__* @RECORD_LAYER_get_rrec(i32*) #2

declare dso_local i8* @RECORD_LAYER_get_packet(i32*) #2

declare dso_local i32 @SSLfatal(%struct.TYPE_23__*, i32, i32, i32) #2

declare dso_local i64 @SSL_READ_ETM(%struct.TYPE_23__*) #2

declare dso_local i8* @EVP_MD_CTX_size(i64) #2

declare dso_local i32 @ossl_assert(i32) #2

declare dso_local i64 @CRYPTO_memcmp(i8*, i8*, i64) #2

declare dso_local i64 @ossl_statem_in_error(%struct.TYPE_23__*) #2

declare dso_local i32 @RECORD_LAYER_reset_packet_length(i32*) #2

declare dso_local i32* @EVP_MD_CTX_md(i64) #2

declare dso_local i64 @EVP_CIPHER_CTX_mode(i32*) #2

declare dso_local i32 @ssl3_cbc_copy_mac(i8*, %struct.TYPE_22__*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @ssl3_do_uncompress(%struct.TYPE_23__*, %struct.TYPE_22__*) #2

declare dso_local i32 @dtls1_record_bitmap_update(%struct.TYPE_23__*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
