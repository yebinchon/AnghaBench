; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_s3_enc.c_ssl3_change_cipher_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_s3_enc.c_ssl3_change_cipher_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__*, i32, i32*, i32, i32*, i32*, i32, i32* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i8*, i8*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8*, i64, %struct.TYPE_8__*, i32*, i32* }
%struct.TYPE_8__ = type { i32* }

@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_SSL3_CHANGE_CIPHER_STATE = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL3_CC_READ = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@SSL_R_COMPRESSION_LIBRARY_ERROR = common dso_local global i32 0, align 4
@ENC_WRITE_STATE_INVALID = common dso_local global i32 0, align 4
@SSL3_CHANGE_CIPHER_CLIENT_WRITE = common dso_local global i32 0, align 4
@SSL3_CHANGE_CIPHER_SERVER_READ = common dso_local global i32 0, align 4
@SSL3_CC_WRITE = common dso_local global i32 0, align 4
@ENC_WRITE_STATE_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssl3_change_cipher_state(%struct.TYPE_12__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %21, align 4
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 4
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %12, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 3
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %14, align 8
  %34 = load i32*, i32** %14, align 8
  %35 = icmp ne i32* %34, null
  %36 = zext i1 %35 to i32
  %37 = call i32 @ossl_assert(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %2
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %41 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %42 = load i32, i32* @SSL_F_SSL3_CHANGE_CIPHER_STATE, align 4
  %43 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %44 = call i32 @SSLfatal(%struct.TYPE_12__* %40, i32 %41, i32 %42, i32 %43)
  br label %346

45:                                               ; preds = %2
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = icmp eq %struct.TYPE_8__* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  store i32* null, i32** %13, align 8
  br label %63

54:                                               ; preds = %45
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  store i32* %62, i32** %13, align 8
  br label %63

63:                                               ; preds = %54, %53
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @SSL3_CC_READ, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %143

68:                                               ; preds = %63
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 8
  %71 = load i32*, i32** %70, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  store i32 1, i32* %21, align 4
  br label %92

74:                                               ; preds = %68
  %75 = call i8* (...) @EVP_CIPHER_CTX_new()
  %76 = bitcast i8* %75 to i32*
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 8
  store i32* %76, i32** %78, align 8
  %79 = icmp eq i32* %76, null
  br i1 %79, label %80, label %86

80:                                               ; preds = %74
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %82 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %83 = load i32, i32* @SSL_F_SSL3_CHANGE_CIPHER_STATE, align 4
  %84 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %85 = call i32 @SSLfatal(%struct.TYPE_12__* %81, i32 %82, i32 %83, i32 %84)
  br label %346

86:                                               ; preds = %74
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 8
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @EVP_CIPHER_CTX_reset(i32* %89)
  br label %91

91:                                               ; preds = %86
  br label %92

92:                                               ; preds = %91, %73
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 8
  %95 = load i32*, i32** %94, align 8
  store i32* %95, i32** %11, align 8
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 7
  %98 = load i32*, i32** %14, align 8
  %99 = call i32* @ssl_replace_hash(i32* %97, i32* %98)
  %100 = icmp eq i32* %99, null
  br i1 %100, label %101, label %107

101:                                              ; preds = %92
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %103 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %104 = load i32, i32* @SSL_F_SSL3_CHANGE_CIPHER_STATE, align 4
  %105 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %106 = call i32 @SSLfatal(%struct.TYPE_12__* %102, i32 %103, i32 %104, i32 %105)
  br label %346

107:                                              ; preds = %92
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 6
  %110 = load i32*, i32** %109, align 8
  %111 = call i32 @COMP_CTX_free(i32* %110)
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 6
  store i32* null, i32** %113, align 8
  %114 = load i32*, i32** %13, align 8
  %115 = icmp ne i32* %114, null
  br i1 %115, label %116, label %133

116:                                              ; preds = %107
  %117 = load i32*, i32** %13, align 8
  %118 = call i8* @COMP_CTX_new(i32* %117)
  %119 = bitcast i8* %118 to i32*
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 6
  store i32* %119, i32** %121, align 8
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 6
  %124 = load i32*, i32** %123, align 8
  %125 = icmp eq i32* %124, null
  br i1 %125, label %126, label %132

126:                                              ; preds = %116
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %128 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %129 = load i32, i32* @SSL_F_SSL3_CHANGE_CIPHER_STATE, align 4
  %130 = load i32, i32* @SSL_R_COMPRESSION_LIBRARY_ERROR, align 4
  %131 = call i32 @SSLfatal(%struct.TYPE_12__* %127, i32 %128, i32 %129, i32 %130)
  br label %346

132:                                              ; preds = %116
  br label %133

133:                                              ; preds = %132, %107
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 2
  %136 = call i32 @RECORD_LAYER_reset_read_sequence(i32* %135)
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 0
  %141 = load i8*, i8** %140, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 0
  store i8* %142, i8** %7, align 8
  br label %222

143:                                              ; preds = %63
  %144 = load i32, i32* @ENC_WRITE_STATE_INVALID, align 4
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 0
  store i32 %144, i32* %147, align 8
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 5
  %150 = load i32*, i32** %149, align 8
  %151 = icmp ne i32* %150, null
  br i1 %151, label %152, label %153

152:                                              ; preds = %143
  store i32 1, i32* %21, align 4
  br label %171

153:                                              ; preds = %143
  %154 = call i8* (...) @EVP_CIPHER_CTX_new()
  %155 = bitcast i8* %154 to i32*
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 5
  store i32* %155, i32** %157, align 8
  %158 = icmp eq i32* %155, null
  br i1 %158, label %159, label %165

159:                                              ; preds = %153
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %161 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %162 = load i32, i32* @SSL_F_SSL3_CHANGE_CIPHER_STATE, align 4
  %163 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %164 = call i32 @SSLfatal(%struct.TYPE_12__* %160, i32 %161, i32 %162, i32 %163)
  br label %346

165:                                              ; preds = %153
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 5
  %168 = load i32*, i32** %167, align 8
  %169 = call i32 @EVP_CIPHER_CTX_reset(i32* %168)
  br label %170

170:                                              ; preds = %165
  br label %171

171:                                              ; preds = %170, %152
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 5
  %174 = load i32*, i32** %173, align 8
  store i32* %174, i32** %11, align 8
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 4
  %177 = load i32*, i32** %14, align 8
  %178 = call i32* @ssl_replace_hash(i32* %176, i32* %177)
  %179 = icmp eq i32* %178, null
  br i1 %179, label %180, label %186

180:                                              ; preds = %171
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %182 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %183 = load i32, i32* @SSL_F_SSL3_CHANGE_CIPHER_STATE, align 4
  %184 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %185 = call i32 @SSLfatal(%struct.TYPE_12__* %181, i32 %182, i32 %183, i32 %184)
  br label %346

186:                                              ; preds = %171
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 3
  %189 = load i32*, i32** %188, align 8
  %190 = call i32 @COMP_CTX_free(i32* %189)
  %191 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 3
  store i32* null, i32** %192, align 8
  %193 = load i32*, i32** %13, align 8
  %194 = icmp ne i32* %193, null
  br i1 %194, label %195, label %212

195:                                              ; preds = %186
  %196 = load i32*, i32** %13, align 8
  %197 = call i8* @COMP_CTX_new(i32* %196)
  %198 = bitcast i8* %197 to i32*
  %199 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i32 0, i32 3
  store i32* %198, i32** %200, align 8
  %201 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 3
  %203 = load i32*, i32** %202, align 8
  %204 = icmp eq i32* %203, null
  br i1 %204, label %205, label %211

205:                                              ; preds = %195
  %206 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %207 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %208 = load i32, i32* @SSL_F_SSL3_CHANGE_CIPHER_STATE, align 4
  %209 = load i32, i32* @SSL_R_COMPRESSION_LIBRARY_ERROR, align 4
  %210 = call i32 @SSLfatal(%struct.TYPE_12__* %206, i32 %207, i32 %208, i32 %209)
  br label %346

211:                                              ; preds = %195
  br label %212

212:                                              ; preds = %211, %186
  %213 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 0, i32 2
  %215 = call i32 @RECORD_LAYER_reset_write_sequence(i32* %214)
  %216 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i32 0, i32 1
  %218 = load %struct.TYPE_10__*, %struct.TYPE_10__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i32 0, i32 1
  %220 = load i8*, i8** %219, align 8
  %221 = getelementptr inbounds i8, i8* %220, i64 0
  store i8* %221, i8** %7, align 8
  br label %222

222:                                              ; preds = %212, %133
  %223 = load i32, i32* %21, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %228

225:                                              ; preds = %222
  %226 = load i32*, i32** %11, align 8
  %227 = call i32 @EVP_CIPHER_CTX_reset(i32* %226)
  br label %228

228:                                              ; preds = %225, %222
  %229 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %230 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %229, i32 0, i32 1
  %231 = load %struct.TYPE_10__*, %struct.TYPE_10__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %231, i32 0, i32 2
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i32 0, i32 0
  %234 = load i8*, i8** %233, align 8
  store i8* %234, i8** %6, align 8
  %235 = load i32*, i32** %14, align 8
  %236 = call i32 @EVP_MD_size(i32* %235)
  store i32 %236, i32* %15, align 4
  %237 = load i32, i32* %15, align 4
  %238 = icmp slt i32 %237, 0
  br i1 %238, label %239, label %245

239:                                              ; preds = %228
  %240 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %241 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %242 = load i32, i32* @SSL_F_SSL3_CHANGE_CIPHER_STATE, align 4
  %243 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %244 = call i32 @SSLfatal(%struct.TYPE_12__* %240, i32 %241, i32 %242, i32 %243)
  br label %346

245:                                              ; preds = %228
  %246 = load i32, i32* %15, align 4
  %247 = sext i32 %246 to i64
  store i64 %247, i64* %17, align 8
  %248 = load i32*, i32** %12, align 8
  %249 = call i64 @EVP_CIPHER_key_length(i32* %248)
  store i64 %249, i64* %20, align 8
  %250 = load i64, i64* %20, align 8
  store i64 %250, i64* %18, align 8
  %251 = load i32*, i32** %12, align 8
  %252 = call i64 @EVP_CIPHER_iv_length(i32* %251)
  store i64 %252, i64* %19, align 8
  %253 = load i32, i32* %5, align 4
  %254 = load i32, i32* @SSL3_CHANGE_CIPHER_CLIENT_WRITE, align 4
  %255 = icmp eq i32 %253, %254
  br i1 %255, label %260, label %256

256:                                              ; preds = %245
  %257 = load i32, i32* %5, align 4
  %258 = load i32, i32* @SSL3_CHANGE_CIPHER_SERVER_READ, align 4
  %259 = icmp eq i32 %257, %258
  br i1 %259, label %260, label %282

260:                                              ; preds = %256, %245
  %261 = load i8*, i8** %6, align 8
  %262 = getelementptr inbounds i8, i8* %261, i64 0
  store i8* %262, i8** %8, align 8
  %263 = load i64, i64* %17, align 8
  %264 = load i64, i64* %17, align 8
  %265 = add i64 %263, %264
  store i64 %265, i64* %16, align 8
  %266 = load i8*, i8** %6, align 8
  %267 = load i64, i64* %16, align 8
  %268 = getelementptr inbounds i8, i8* %266, i64 %267
  store i8* %268, i8** %9, align 8
  %269 = load i64, i64* %18, align 8
  %270 = load i64, i64* %18, align 8
  %271 = add i64 %269, %270
  %272 = load i64, i64* %16, align 8
  %273 = add i64 %272, %271
  store i64 %273, i64* %16, align 8
  %274 = load i8*, i8** %6, align 8
  %275 = load i64, i64* %16, align 8
  %276 = getelementptr inbounds i8, i8* %274, i64 %275
  store i8* %276, i8** %10, align 8
  %277 = load i64, i64* %19, align 8
  %278 = load i64, i64* %19, align 8
  %279 = add i64 %277, %278
  %280 = load i64, i64* %16, align 8
  %281 = add i64 %280, %279
  store i64 %281, i64* %16, align 8
  br label %306

282:                                              ; preds = %256
  %283 = load i64, i64* %17, align 8
  store i64 %283, i64* %16, align 8
  %284 = load i8*, i8** %6, align 8
  %285 = load i64, i64* %16, align 8
  %286 = getelementptr inbounds i8, i8* %284, i64 %285
  store i8* %286, i8** %8, align 8
  %287 = load i64, i64* %17, align 8
  %288 = load i64, i64* %18, align 8
  %289 = add i64 %287, %288
  %290 = load i64, i64* %16, align 8
  %291 = add i64 %290, %289
  store i64 %291, i64* %16, align 8
  %292 = load i8*, i8** %6, align 8
  %293 = load i64, i64* %16, align 8
  %294 = getelementptr inbounds i8, i8* %292, i64 %293
  store i8* %294, i8** %9, align 8
  %295 = load i64, i64* %18, align 8
  %296 = load i64, i64* %19, align 8
  %297 = add i64 %295, %296
  %298 = load i64, i64* %16, align 8
  %299 = add i64 %298, %297
  store i64 %299, i64* %16, align 8
  %300 = load i8*, i8** %6, align 8
  %301 = load i64, i64* %16, align 8
  %302 = getelementptr inbounds i8, i8* %300, i64 %301
  store i8* %302, i8** %10, align 8
  %303 = load i64, i64* %19, align 8
  %304 = load i64, i64* %16, align 8
  %305 = add i64 %304, %303
  store i64 %305, i64* %16, align 8
  br label %306

306:                                              ; preds = %282, %260
  %307 = load i64, i64* %16, align 8
  %308 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %309 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %308, i32 0, i32 1
  %310 = load %struct.TYPE_10__*, %struct.TYPE_10__** %309, align 8
  %311 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %310, i32 0, i32 2
  %312 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %311, i32 0, i32 1
  %313 = load i64, i64* %312, align 8
  %314 = icmp ugt i64 %307, %313
  br i1 %314, label %315, label %321

315:                                              ; preds = %306
  %316 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %317 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %318 = load i32, i32* @SSL_F_SSL3_CHANGE_CIPHER_STATE, align 4
  %319 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %320 = call i32 @SSLfatal(%struct.TYPE_12__* %316, i32 %317, i32 %318, i32 %319)
  br label %346

321:                                              ; preds = %306
  %322 = load i8*, i8** %7, align 8
  %323 = load i8*, i8** %8, align 8
  %324 = load i64, i64* %17, align 8
  %325 = call i32 @memcpy(i8* %322, i8* %323, i64 %324)
  %326 = load i32*, i32** %11, align 8
  %327 = load i32*, i32** %12, align 8
  %328 = load i8*, i8** %9, align 8
  %329 = load i8*, i8** %10, align 8
  %330 = load i32, i32* %5, align 4
  %331 = load i32, i32* @SSL3_CC_WRITE, align 4
  %332 = and i32 %330, %331
  %333 = call i32 @EVP_CipherInit_ex(i32* %326, i32* %327, i32* null, i8* %328, i8* %329, i32 %332)
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %341, label %335

335:                                              ; preds = %321
  %336 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %337 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %338 = load i32, i32* @SSL_F_SSL3_CHANGE_CIPHER_STATE, align 4
  %339 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %340 = call i32 @SSLfatal(%struct.TYPE_12__* %336, i32 %337, i32 %338, i32 %339)
  br label %346

341:                                              ; preds = %321
  %342 = load i32, i32* @ENC_WRITE_STATE_VALID, align 4
  %343 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %344 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %343, i32 0, i32 0
  %345 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %344, i32 0, i32 0
  store i32 %342, i32* %345, align 8
  store i32 1, i32* %3, align 4
  br label %347

346:                                              ; preds = %335, %315, %239, %205, %180, %159, %126, %101, %80, %39
  store i32 0, i32* %3, align 4
  br label %347

347:                                              ; preds = %346, %341
  %348 = load i32, i32* %3, align 4
  ret i32 %348
}

declare dso_local i32 @ossl_assert(i32) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_12__*, i32, i32, i32) #1

declare dso_local i8* @EVP_CIPHER_CTX_new(...) #1

declare dso_local i32 @EVP_CIPHER_CTX_reset(i32*) #1

declare dso_local i32* @ssl_replace_hash(i32*, i32*) #1

declare dso_local i32 @COMP_CTX_free(i32*) #1

declare dso_local i8* @COMP_CTX_new(i32*) #1

declare dso_local i32 @RECORD_LAYER_reset_read_sequence(i32*) #1

declare dso_local i32 @RECORD_LAYER_reset_write_sequence(i32*) #1

declare dso_local i32 @EVP_MD_size(i32*) #1

declare dso_local i64 @EVP_CIPHER_key_length(i32*) #1

declare dso_local i64 @EVP_CIPHER_iv_length(i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @EVP_CipherInit_ex(i32*, i32*, i32*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
