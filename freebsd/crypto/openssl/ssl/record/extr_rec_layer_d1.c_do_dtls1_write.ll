; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/record/extr_rec_layer_d1.c_do_dtls1_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/record/extr_rec_layer_d1.c_do_dtls1_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_39__ = type { i64, i32, %struct.TYPE_37__, i32, i32 (i32, i32, i32, i8*, i32, %struct.TYPE_39__*, i32)*, %struct.TYPE_35__*, i32*, i32*, i32, i32*, %struct.TYPE_33__* }
%struct.TYPE_37__ = type { i64, i8*, i32, i64, i32*, %struct.TYPE_36__*, i32* }
%struct.TYPE_36__ = type { i64 }
%struct.TYPE_35__ = type { i32 (%struct.TYPE_39__*)*, i64, %struct.TYPE_34__* }
%struct.TYPE_34__ = type { i32 (%struct.TYPE_39__*, %struct.TYPE_38__*, i32, i32)*, i32 (%struct.TYPE_39__*, %struct.TYPE_38__*, i8*, i32)* }
%struct.TYPE_38__ = type { i64 }
%struct.TYPE_33__ = type { i64 }

@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_DO_DTLS1_WRITE = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_R_EXCEEDS_MAX_FRAGMENT_SIZE = common dso_local global i32 0, align 4
@DTLS_ANY_VERSION = common dso_local global i64 0, align 8
@DTLS1_BAD_VER = common dso_local global i64 0, align 8
@DTLS1_VERSION = common dso_local global i32 0, align 4
@EVP_CIPH_CBC_MODE = common dso_local global i32 0, align 4
@EVP_CIPH_GCM_MODE = common dso_local global i32 0, align 4
@EVP_GCM_TLS_EXPLICIT_IV_LEN = common dso_local global i32 0, align 4
@EVP_CIPH_CCM_MODE = common dso_local global i32 0, align 4
@EVP_CCM_TLS_EXPLICIT_IV_LEN = common dso_local global i32 0, align 4
@SSL_R_COMPRESSION_FAILURE = common dso_local global i32 0, align 4
@SSL3_RT_HEADER = common dso_local global i32 0, align 4
@DTLS1_RT_HEADER_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_dtls1_write(%struct.TYPE_39__* %0, i32 %1, i8* %2, i64 %3, i32 %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_39__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_38__, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  store %struct.TYPE_39__* %0, %struct.TYPE_39__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i64* %5, i64** %13, align 8
  store i32 0, i32* %18, align 4
  store i64 0, i64* %19, align 8
  %25 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %26, i32 0, i32 6
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  store i32* %29, i32** %22, align 8
  %30 = load i32*, i32** %22, align 8
  %31 = call i64 @SSL3_BUFFER_get_left(i32* %30)
  %32 = icmp eq i64 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @ossl_assert(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %6
  %37 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %38 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %39 = load i32, i32* @SSL_F_DO_DTLS1_WRITE, align 4
  %40 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %41 = call i32 @SSLfatal(%struct.TYPE_39__* %37, i32 %38, i32 %39, i32 %40)
  store i32 0, i32* %7, align 4
  br label %423

42:                                               ; preds = %6
  %43 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %43, i32 0, i32 10
  %45 = load %struct.TYPE_33__*, %struct.TYPE_33__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %42
  %50 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %50, i32 0, i32 5
  %52 = load %struct.TYPE_35__*, %struct.TYPE_35__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %52, i32 0, i32 0
  %54 = load i32 (%struct.TYPE_39__*)*, i32 (%struct.TYPE_39__*)** %53, align 8
  %55 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %56 = call i32 %54(%struct.TYPE_39__* %55)
  store i32 %56, i32* %16, align 4
  %57 = load i32, i32* %16, align 4
  %58 = icmp sle i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %49
  %60 = load i32, i32* %16, align 4
  store i32 %60, i32* %7, align 4
  br label %423

61:                                               ; preds = %49
  br label %62

62:                                               ; preds = %61, %42
  %63 = load i64, i64* %11, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load i32, i32* %12, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %65
  store i32 0, i32* %7, align 4
  br label %423

69:                                               ; preds = %65, %62
  %70 = load i64, i64* %11, align 8
  %71 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %72 = call i64 @ssl_get_max_send_fragment(%struct.TYPE_39__* %71)
  %73 = icmp ugt i64 %70, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %76 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %77 = load i32, i32* @SSL_F_DO_DTLS1_WRITE, align 4
  %78 = load i32, i32* @SSL_R_EXCEEDS_MAX_FRAGMENT_SIZE, align 4
  %79 = call i32 @SSLfatal(%struct.TYPE_39__* %75, i32 %76, i32 %77, i32 %78)
  store i32 0, i32* %7, align 4
  br label %423

80:                                               ; preds = %69
  %81 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %81, i32 0, i32 9
  %83 = load i32*, i32** %82, align 8
  store i32* %83, i32** %23, align 8
  %84 = load i32*, i32** %23, align 8
  %85 = icmp eq i32* %84, null
  br i1 %85, label %97, label %86

86:                                               ; preds = %80
  %87 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %87, i32 0, i32 7
  %89 = load i32*, i32** %88, align 8
  %90 = icmp eq i32* %89, null
  br i1 %90, label %97, label %91

91:                                               ; preds = %86
  %92 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %92, i32 0, i32 8
  %94 = load i32, i32* %93, align 8
  %95 = call i32* @EVP_MD_CTX_md(i32 %94)
  %96 = icmp eq i32* %95, null
  br i1 %96, label %97, label %98

97:                                               ; preds = %91, %86, %80
  store i32 1, i32* %18, align 4
  br label %98

98:                                               ; preds = %97, %91
  %99 = load i32, i32* %18, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  store i32 0, i32* %17, align 4
  br label %116

102:                                              ; preds = %98
  %103 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %103, i32 0, i32 8
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @EVP_MD_CTX_size(i32 %105)
  store i32 %106, i32* %17, align 4
  %107 = load i32, i32* %17, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %102
  %110 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %111 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %112 = load i32, i32* @SSL_F_DO_DTLS1_WRITE, align 4
  %113 = load i32, i32* @SSL_R_EXCEEDS_MAX_FRAGMENT_SIZE, align 4
  %114 = call i32 @SSLfatal(%struct.TYPE_39__* %110, i32 %111, i32 %112, i32 %113)
  store i32 -1, i32* %7, align 4
  br label %423

115:                                              ; preds = %102
  br label %116

116:                                              ; preds = %115, %101
  %117 = load i32*, i32** %22, align 8
  %118 = call i8* @SSL3_BUFFER_get_buf(i32* %117)
  %119 = load i64, i64* %19, align 8
  %120 = getelementptr inbounds i8, i8* %118, i64 %119
  store i8* %120, i8** %14, align 8
  %121 = load i32, i32* %9, align 4
  %122 = and i32 %121, 255
  %123 = trunc i32 %122 to i8
  %124 = load i8*, i8** %14, align 8
  %125 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %125, i8** %14, align 8
  store i8 %123, i8* %124, align 1
  %126 = load i32, i32* %9, align 4
  %127 = call i32 @SSL3_RECORD_set_type(%struct.TYPE_38__* %21, i32 %126)
  %128 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %128, i32 0, i32 5
  %130 = load %struct.TYPE_35__*, %struct.TYPE_35__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @DTLS_ANY_VERSION, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %152

135:                                              ; preds = %116
  %136 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @DTLS1_BAD_VER, align 8
  %140 = icmp ne i64 %138, %139
  br i1 %140, label %141, label %152

141:                                              ; preds = %135
  %142 = load i32, i32* @DTLS1_VERSION, align 4
  %143 = ashr i32 %142, 8
  %144 = trunc i32 %143 to i8
  %145 = load i8*, i8** %14, align 8
  %146 = getelementptr inbounds i8, i8* %145, i32 1
  store i8* %146, i8** %14, align 8
  store i8 %144, i8* %145, align 1
  %147 = load i32, i32* @DTLS1_VERSION, align 4
  %148 = and i32 %147, 255
  %149 = trunc i32 %148 to i8
  %150 = load i8*, i8** %14, align 8
  %151 = getelementptr inbounds i8, i8* %150, i32 1
  store i8* %151, i8** %14, align 8
  store i8 %149, i8* %150, align 1
  br label %167

152:                                              ; preds = %135, %116
  %153 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = ashr i32 %155, 8
  %157 = trunc i32 %156 to i8
  %158 = load i8*, i8** %14, align 8
  %159 = getelementptr inbounds i8, i8* %158, i32 1
  store i8* %159, i8** %14, align 8
  store i8 %157, i8* %158, align 1
  %160 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = and i32 %162, 255
  %164 = trunc i32 %163 to i8
  %165 = load i8*, i8** %14, align 8
  %166 = getelementptr inbounds i8, i8* %165, i32 1
  store i8* %166, i8** %14, align 8
  store i8 %164, i8* %165, align 1
  br label %167

167:                                              ; preds = %152, %141
  %168 = load i8*, i8** %14, align 8
  store i8* %168, i8** %15, align 8
  %169 = load i8*, i8** %14, align 8
  %170 = getelementptr inbounds i8, i8* %169, i64 10
  store i8* %170, i8** %14, align 8
  %171 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %171, i32 0, i32 7
  %173 = load i32*, i32** %172, align 8
  %174 = icmp ne i32* %173, null
  br i1 %174, label %175, label %208

175:                                              ; preds = %167
  %176 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %176, i32 0, i32 7
  %178 = load i32*, i32** %177, align 8
  %179 = call i32 @EVP_CIPHER_CTX_mode(i32* %178)
  store i32 %179, i32* %24, align 4
  %180 = load i32, i32* %24, align 4
  %181 = load i32, i32* @EVP_CIPH_CBC_MODE, align 4
  %182 = icmp eq i32 %180, %181
  br i1 %182, label %183, label %192

183:                                              ; preds = %175
  %184 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %184, i32 0, i32 7
  %186 = load i32*, i32** %185, align 8
  %187 = call i32 @EVP_CIPHER_CTX_iv_length(i32* %186)
  store i32 %187, i32* %20, align 4
  %188 = load i32, i32* %20, align 4
  %189 = icmp sle i32 %188, 1
  br i1 %189, label %190, label %191

190:                                              ; preds = %183
  store i32 0, i32* %20, align 4
  br label %191

191:                                              ; preds = %190, %183
  br label %207

192:                                              ; preds = %175
  %193 = load i32, i32* %24, align 4
  %194 = load i32, i32* @EVP_CIPH_GCM_MODE, align 4
  %195 = icmp eq i32 %193, %194
  br i1 %195, label %196, label %198

196:                                              ; preds = %192
  %197 = load i32, i32* @EVP_GCM_TLS_EXPLICIT_IV_LEN, align 4
  store i32 %197, i32* %20, align 4
  br label %206

198:                                              ; preds = %192
  %199 = load i32, i32* %24, align 4
  %200 = load i32, i32* @EVP_CIPH_CCM_MODE, align 4
  %201 = icmp eq i32 %199, %200
  br i1 %201, label %202, label %204

202:                                              ; preds = %198
  %203 = load i32, i32* @EVP_CCM_TLS_EXPLICIT_IV_LEN, align 4
  store i32 %203, i32* %20, align 4
  br label %205

204:                                              ; preds = %198
  store i32 0, i32* %20, align 4
  br label %205

205:                                              ; preds = %204, %202
  br label %206

206:                                              ; preds = %205, %196
  br label %207

207:                                              ; preds = %206, %191
  br label %209

208:                                              ; preds = %167
  store i32 0, i32* %20, align 4
  br label %209

209:                                              ; preds = %208, %207
  %210 = load i8*, i8** %14, align 8
  %211 = load i32, i32* %20, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i8, i8* %210, i64 %212
  %214 = call i32 @SSL3_RECORD_set_data(%struct.TYPE_38__* %21, i8* %213)
  %215 = load i64, i64* %11, align 8
  %216 = call i32 @SSL3_RECORD_set_length(%struct.TYPE_38__* %21, i64 %215)
  %217 = load i8*, i8** %10, align 8
  %218 = call i32 @SSL3_RECORD_set_input(%struct.TYPE_38__* %21, i8* %217)
  %219 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %220 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %219, i32 0, i32 6
  %221 = load i32*, i32** %220, align 8
  %222 = icmp ne i32* %221, null
  br i1 %222, label %223, label %234

223:                                              ; preds = %209
  %224 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %225 = call i32 @ssl3_do_compress(%struct.TYPE_39__* %224, %struct.TYPE_38__* %21)
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %233, label %227

227:                                              ; preds = %223
  %228 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %229 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %230 = load i32, i32* @SSL_F_DO_DTLS1_WRITE, align 4
  %231 = load i32, i32* @SSL_R_COMPRESSION_FAILURE, align 4
  %232 = call i32 @SSLfatal(%struct.TYPE_39__* %228, i32 %229, i32 %230, i32 %231)
  store i32 -1, i32* %7, align 4
  br label %423

233:                                              ; preds = %223
  br label %241

234:                                              ; preds = %209
  %235 = call i8* @SSL3_RECORD_get_data(%struct.TYPE_38__* %21)
  %236 = call i32* @SSL3_RECORD_get_input(%struct.TYPE_38__* %21)
  %237 = call i64 @SSL3_RECORD_get_length(%struct.TYPE_38__* %21)
  %238 = trunc i64 %237 to i32
  %239 = call i32 @memcpy(i8* %235, i32* %236, i32 %238)
  %240 = call i32 @SSL3_RECORD_reset_input(%struct.TYPE_38__* %21)
  br label %241

241:                                              ; preds = %234, %233
  %242 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %243 = call i64 @SSL_WRITE_ETM(%struct.TYPE_39__* %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %274, label %245

245:                                              ; preds = %241
  %246 = load i32, i32* %17, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %274

248:                                              ; preds = %245
  %249 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %250 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %249, i32 0, i32 5
  %251 = load %struct.TYPE_35__*, %struct.TYPE_35__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %251, i32 0, i32 2
  %253 = load %struct.TYPE_34__*, %struct.TYPE_34__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %253, i32 0, i32 1
  %255 = load i32 (%struct.TYPE_39__*, %struct.TYPE_38__*, i8*, i32)*, i32 (%struct.TYPE_39__*, %struct.TYPE_38__*, i8*, i32)** %254, align 8
  %256 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %257 = load i8*, i8** %14, align 8
  %258 = call i64 @SSL3_RECORD_get_length(%struct.TYPE_38__* %21)
  %259 = load i32, i32* %20, align 4
  %260 = sext i32 %259 to i64
  %261 = add i64 %258, %260
  %262 = getelementptr inbounds i8, i8* %257, i64 %261
  %263 = call i32 %255(%struct.TYPE_39__* %256, %struct.TYPE_38__* %21, i8* %262, i32 1)
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %271, label %265

265:                                              ; preds = %248
  %266 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %267 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %268 = load i32, i32* @SSL_F_DO_DTLS1_WRITE, align 4
  %269 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %270 = call i32 @SSLfatal(%struct.TYPE_39__* %266, i32 %267, i32 %268, i32 %269)
  store i32 -1, i32* %7, align 4
  br label %423

271:                                              ; preds = %248
  %272 = load i32, i32* %17, align 4
  %273 = call i32 @SSL3_RECORD_add_length(%struct.TYPE_38__* %21, i32 %272)
  br label %274

274:                                              ; preds = %271, %245, %241
  %275 = load i8*, i8** %14, align 8
  %276 = call i32 @SSL3_RECORD_set_data(%struct.TYPE_38__* %21, i8* %275)
  %277 = call i32 @SSL3_RECORD_reset_input(%struct.TYPE_38__* %21)
  %278 = load i32, i32* %20, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %283

280:                                              ; preds = %274
  %281 = load i32, i32* %20, align 4
  %282 = call i32 @SSL3_RECORD_add_length(%struct.TYPE_38__* %21, i32 %281)
  br label %283

283:                                              ; preds = %280, %274
  %284 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %285 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %284, i32 0, i32 5
  %286 = load %struct.TYPE_35__*, %struct.TYPE_35__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %286, i32 0, i32 2
  %288 = load %struct.TYPE_34__*, %struct.TYPE_34__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %288, i32 0, i32 0
  %290 = load i32 (%struct.TYPE_39__*, %struct.TYPE_38__*, i32, i32)*, i32 (%struct.TYPE_39__*, %struct.TYPE_38__*, i32, i32)** %289, align 8
  %291 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %292 = call i32 %290(%struct.TYPE_39__* %291, %struct.TYPE_38__* %21, i32 1, i32 1)
  %293 = icmp slt i32 %292, 1
  br i1 %293, label %294, label %305

294:                                              ; preds = %283
  %295 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %296 = call i32 @ossl_statem_in_error(%struct.TYPE_39__* %295)
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %304, label %298

298:                                              ; preds = %294
  %299 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %300 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %301 = load i32, i32* @SSL_F_DO_DTLS1_WRITE, align 4
  %302 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %303 = call i32 @SSLfatal(%struct.TYPE_39__* %299, i32 %300, i32 %301, i32 %302)
  br label %304

304:                                              ; preds = %298, %294
  store i32 -1, i32* %7, align 4
  br label %423

305:                                              ; preds = %283
  %306 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %307 = call i64 @SSL_WRITE_ETM(%struct.TYPE_39__* %306)
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %335

309:                                              ; preds = %305
  %310 = load i32, i32* %17, align 4
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %335

312:                                              ; preds = %309
  %313 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %314 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %313, i32 0, i32 5
  %315 = load %struct.TYPE_35__*, %struct.TYPE_35__** %314, align 8
  %316 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %315, i32 0, i32 2
  %317 = load %struct.TYPE_34__*, %struct.TYPE_34__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %317, i32 0, i32 1
  %319 = load i32 (%struct.TYPE_39__*, %struct.TYPE_38__*, i8*, i32)*, i32 (%struct.TYPE_39__*, %struct.TYPE_38__*, i8*, i32)** %318, align 8
  %320 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %321 = load i8*, i8** %14, align 8
  %322 = call i64 @SSL3_RECORD_get_length(%struct.TYPE_38__* %21)
  %323 = getelementptr inbounds i8, i8* %321, i64 %322
  %324 = call i32 %319(%struct.TYPE_39__* %320, %struct.TYPE_38__* %21, i8* %323, i32 1)
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %332, label %326

326:                                              ; preds = %312
  %327 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %328 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %329 = load i32, i32* @SSL_F_DO_DTLS1_WRITE, align 4
  %330 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %331 = call i32 @SSLfatal(%struct.TYPE_39__* %327, i32 %328, i32 %329, i32 %330)
  store i32 -1, i32* %7, align 4
  br label %423

332:                                              ; preds = %312
  %333 = load i32, i32* %17, align 4
  %334 = call i32 @SSL3_RECORD_add_length(%struct.TYPE_38__* %21, i32 %333)
  br label %335

335:                                              ; preds = %332, %309, %305
  %336 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %337 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %336, i32 0, i32 2
  %338 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %337, i32 0, i32 5
  %339 = load %struct.TYPE_36__*, %struct.TYPE_36__** %338, align 8
  %340 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %339, i32 0, i32 0
  %341 = load i64, i64* %340, align 8
  %342 = load i8*, i8** %15, align 8
  %343 = call i32 @s2n(i64 %341, i8* %342)
  %344 = load i8*, i8** %15, align 8
  %345 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %346 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %345, i32 0, i32 2
  %347 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %346, i32 0, i32 4
  %348 = load i32*, i32** %347, align 8
  %349 = getelementptr inbounds i32, i32* %348, i64 2
  %350 = call i32 @memcpy(i8* %344, i32* %349, i32 6)
  %351 = load i8*, i8** %15, align 8
  %352 = getelementptr inbounds i8, i8* %351, i64 6
  store i8* %352, i8** %15, align 8
  %353 = call i64 @SSL3_RECORD_get_length(%struct.TYPE_38__* %21)
  %354 = load i8*, i8** %15, align 8
  %355 = call i32 @s2n(i64 %353, i8* %354)
  %356 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %357 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %356, i32 0, i32 4
  %358 = load i32 (i32, i32, i32, i8*, i32, %struct.TYPE_39__*, i32)*, i32 (i32, i32, i32, i8*, i32, %struct.TYPE_39__*, i32)** %357, align 8
  %359 = icmp ne i32 (i32, i32, i32, i8*, i32, %struct.TYPE_39__*, i32)* %358, null
  br i1 %359, label %360, label %376

360:                                              ; preds = %335
  %361 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %362 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %361, i32 0, i32 4
  %363 = load i32 (i32, i32, i32, i8*, i32, %struct.TYPE_39__*, i32)*, i32 (i32, i32, i32, i8*, i32, %struct.TYPE_39__*, i32)** %362, align 8
  %364 = load i32, i32* @SSL3_RT_HEADER, align 4
  %365 = load i8*, i8** %15, align 8
  %366 = load i32, i32* @DTLS1_RT_HEADER_LENGTH, align 4
  %367 = sext i32 %366 to i64
  %368 = sub i64 0, %367
  %369 = getelementptr inbounds i8, i8* %365, i64 %368
  %370 = load i32, i32* @DTLS1_RT_HEADER_LENGTH, align 4
  %371 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %372 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %373 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %372, i32 0, i32 3
  %374 = load i32, i32* %373, align 8
  %375 = call i32 %363(i32 1, i32 0, i32 %364, i8* %369, i32 %370, %struct.TYPE_39__* %371, i32 %374)
  br label %376

376:                                              ; preds = %360, %335
  %377 = load i32, i32* %9, align 4
  %378 = call i32 @SSL3_RECORD_set_type(%struct.TYPE_38__* %21, i32 %377)
  %379 = load i32, i32* @DTLS1_RT_HEADER_LENGTH, align 4
  %380 = call i32 @SSL3_RECORD_add_length(%struct.TYPE_38__* %21, i32 %379)
  %381 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %382 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %381, i32 0, i32 2
  %383 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %382, i32 0, i32 4
  %384 = load i32*, i32** %383, align 8
  %385 = getelementptr inbounds i32, i32* %384, i64 0
  %386 = call i32 @ssl3_record_sequence_update(i32* %385)
  %387 = load i32, i32* %12, align 4
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %389, label %393

389:                                              ; preds = %376
  %390 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %21, i32 0, i32 0
  %391 = load i64, i64* %390, align 8
  %392 = load i64*, i64** %13, align 8
  store i64 %391, i64* %392, align 8
  store i32 1, i32* %7, align 4
  br label %423

393:                                              ; preds = %376
  %394 = load i32*, i32** %22, align 8
  %395 = load i64, i64* %19, align 8
  %396 = call i64 @SSL3_RECORD_get_length(%struct.TYPE_38__* %21)
  %397 = add i64 %395, %396
  %398 = call i32 @SSL3_BUFFER_set_left(i32* %394, i64 %397)
  %399 = load i32*, i32** %22, align 8
  %400 = call i32 @SSL3_BUFFER_set_offset(i32* %399, i32 0)
  %401 = load i64, i64* %11, align 8
  %402 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %403 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %402, i32 0, i32 2
  %404 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %403, i32 0, i32 0
  store i64 %401, i64* %404, align 8
  %405 = load i8*, i8** %10, align 8
  %406 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %407 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %406, i32 0, i32 2
  %408 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %407, i32 0, i32 1
  store i8* %405, i8** %408, align 8
  %409 = load i32, i32* %9, align 4
  %410 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %411 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %410, i32 0, i32 2
  %412 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %411, i32 0, i32 2
  store i32 %409, i32* %412, align 8
  %413 = load i64, i64* %11, align 8
  %414 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %415 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %414, i32 0, i32 2
  %416 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %415, i32 0, i32 3
  store i64 %413, i64* %416, align 8
  %417 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %418 = load i32, i32* %9, align 4
  %419 = load i8*, i8** %10, align 8
  %420 = load i64, i64* %11, align 8
  %421 = load i64*, i64** %13, align 8
  %422 = call i32 @ssl3_write_pending(%struct.TYPE_39__* %417, i32 %418, i8* %419, i64 %420, i64* %421)
  store i32 %422, i32* %7, align 4
  br label %423

423:                                              ; preds = %393, %389, %326, %304, %265, %227, %109, %74, %68, %59, %36
  %424 = load i32, i32* %7, align 4
  ret i32 %424
}

declare dso_local i32 @ossl_assert(i32) #1

declare dso_local i64 @SSL3_BUFFER_get_left(i32*) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_39__*, i32, i32, i32) #1

declare dso_local i64 @ssl_get_max_send_fragment(%struct.TYPE_39__*) #1

declare dso_local i32* @EVP_MD_CTX_md(i32) #1

declare dso_local i32 @EVP_MD_CTX_size(i32) #1

declare dso_local i8* @SSL3_BUFFER_get_buf(i32*) #1

declare dso_local i32 @SSL3_RECORD_set_type(%struct.TYPE_38__*, i32) #1

declare dso_local i32 @EVP_CIPHER_CTX_mode(i32*) #1

declare dso_local i32 @EVP_CIPHER_CTX_iv_length(i32*) #1

declare dso_local i32 @SSL3_RECORD_set_data(%struct.TYPE_38__*, i8*) #1

declare dso_local i32 @SSL3_RECORD_set_length(%struct.TYPE_38__*, i64) #1

declare dso_local i32 @SSL3_RECORD_set_input(%struct.TYPE_38__*, i8*) #1

declare dso_local i32 @ssl3_do_compress(%struct.TYPE_39__*, %struct.TYPE_38__*) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i8* @SSL3_RECORD_get_data(%struct.TYPE_38__*) #1

declare dso_local i32* @SSL3_RECORD_get_input(%struct.TYPE_38__*) #1

declare dso_local i64 @SSL3_RECORD_get_length(%struct.TYPE_38__*) #1

declare dso_local i32 @SSL3_RECORD_reset_input(%struct.TYPE_38__*) #1

declare dso_local i64 @SSL_WRITE_ETM(%struct.TYPE_39__*) #1

declare dso_local i32 @SSL3_RECORD_add_length(%struct.TYPE_38__*, i32) #1

declare dso_local i32 @ossl_statem_in_error(%struct.TYPE_39__*) #1

declare dso_local i32 @s2n(i64, i8*) #1

declare dso_local i32 @ssl3_record_sequence_update(i32*) #1

declare dso_local i32 @SSL3_BUFFER_set_left(i32*, i64) #1

declare dso_local i32 @SSL3_BUFFER_set_offset(i32*, i32) #1

declare dso_local i32 @ssl3_write_pending(%struct.TYPE_39__*, i32, i8*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
