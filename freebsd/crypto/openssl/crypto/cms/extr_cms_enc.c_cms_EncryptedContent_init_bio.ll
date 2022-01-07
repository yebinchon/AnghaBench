; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/cms/extr_cms_enc.c_cms_EncryptedContent_init_bio.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/cms/extr_cms_enc.c_cms_EncryptedContent_init_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i64, i64, i32*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i64 }

@EVP_MAX_IV_LENGTH = common dso_local global i32 0, align 4
@CMS_F_CMS_ENCRYPTEDCONTENT_INIT_BIO = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@CMS_R_UNKNOWN_CIPHER = common dso_local global i32 0, align 4
@CMS_R_CIPHER_INITIALISATION_ERROR = common dso_local global i32 0, align 4
@CMS_R_CIPHER_PARAMETER_INITIALISATION_ERROR = common dso_local global i32 0, align 4
@CMS_R_INVALID_KEY_LENGTH = common dso_local global i32 0, align 4
@V_ASN1_UNDEF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @cms_EncryptedContent_init_bio(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  store %struct.TYPE_8__* %20, %struct.TYPE_8__** %7, align 8
  %21 = load i32, i32* @EVP_MAX_IV_LENGTH, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %8, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i64 0, i64* %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 3
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 1, i32 0
  store i32 %30, i32* %14, align 4
  %31 = call i32 (...) @BIO_f_cipher()
  %32 = call i32* @BIO_new(i32 %31)
  store i32* %32, i32** %4, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %1
  %36 = load i32, i32* @CMS_F_CMS_ENCRYPTEDCONTENT_INIT_BIO, align 4
  %37 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %38 = call i32 @CMSerr(i32 %36, i32 %37)
  store i32* null, i32** %2, align 8
  store i32 1, i32* %16, align 4
  br label %279

39:                                               ; preds = %1
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @BIO_get_cipher_ctx(i32* %40, i32** %5)
  %42 = load i32, i32* %14, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %39
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  store i32* %47, i32** %6, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %44
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 3
  store i32* null, i32** %54, align 8
  br label %55

55:                                               ; preds = %52, %44
  br label %68

56:                                               ; preds = %39
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32* @EVP_get_cipherbyobj(i32 %59)
  store i32* %60, i32** %6, align 8
  %61 = load i32*, i32** %6, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %67, label %63

63:                                               ; preds = %56
  %64 = load i32, i32* @CMS_F_CMS_ENCRYPTEDCONTENT_INIT_BIO, align 4
  %65 = load i32, i32* @CMS_R_UNKNOWN_CIPHER, align 4
  %66 = call i32 @CMSerr(i32 %64, i32 %65)
  br label %252

67:                                               ; preds = %56
  br label %68

68:                                               ; preds = %67, %55
  %69 = load i32*, i32** %5, align 8
  %70 = load i32*, i32** %6, align 8
  %71 = load i32, i32* %14, align 4
  %72 = call i64 @EVP_CipherInit_ex(i32* %69, i32* %70, i32* null, i8* null, i8* null, i32 %71)
  %73 = icmp sle i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load i32, i32* @CMS_F_CMS_ENCRYPTEDCONTENT_INIT_BIO, align 4
  %76 = load i32, i32* @CMS_R_CIPHER_INITIALISATION_ERROR, align 4
  %77 = call i32 @CMSerr(i32 %75, i32 %76)
  br label %252

78:                                               ; preds = %68
  %79 = load i32, i32* %14, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %98

81:                                               ; preds = %78
  %82 = load i32*, i32** %5, align 8
  %83 = call i32 @EVP_CIPHER_CTX_type(i32* %82)
  %84 = call i32 @OBJ_nid2obj(i32 %83)
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 8
  %87 = load i32*, i32** %5, align 8
  %88 = call i32 @EVP_CIPHER_CTX_iv_length(i32* %87)
  store i32 %88, i32* %17, align 4
  %89 = load i32, i32* %17, align 4
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %81
  %92 = load i32, i32* %17, align 4
  %93 = call i64 @RAND_bytes(i8* %24, i32 %92)
  %94 = icmp sle i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  br label %252

96:                                               ; preds = %91
  store i8* %24, i8** %10, align 8
  br label %97

97:                                               ; preds = %96, %81
  br label %110

98:                                               ; preds = %78
  %99 = load i32*, i32** %5, align 8
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %101, align 8
  %103 = call i64 @EVP_CIPHER_asn1_to_param(i32* %99, %struct.TYPE_10__* %102)
  %104 = icmp sle i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %98
  %106 = load i32, i32* @CMS_F_CMS_ENCRYPTEDCONTENT_INIT_BIO, align 4
  %107 = load i32, i32* @CMS_R_CIPHER_PARAMETER_INITIALISATION_ERROR, align 4
  %108 = call i32 @CMSerr(i32 %106, i32 %107)
  br label %252

109:                                              ; preds = %98
  br label %110

110:                                              ; preds = %109, %97
  %111 = load i32*, i32** %5, align 8
  %112 = call i64 @EVP_CIPHER_CTX_key_length(i32* %111)
  store i64 %112, i64* %12, align 8
  %113 = load i32, i32* %14, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %110
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %136, label %120

120:                                              ; preds = %115, %110
  %121 = load i64, i64* %12, align 8
  %122 = call i8* @OPENSSL_malloc(i64 %121)
  store i8* %122, i8** %11, align 8
  %123 = load i8*, i8** %11, align 8
  %124 = icmp eq i8* %123, null
  br i1 %124, label %125, label %129

125:                                              ; preds = %120
  %126 = load i32, i32* @CMS_F_CMS_ENCRYPTEDCONTENT_INIT_BIO, align 4
  %127 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %128 = call i32 @CMSerr(i32 %126, i32 %127)
  br label %252

129:                                              ; preds = %120
  %130 = load i32*, i32** %5, align 8
  %131 = load i8*, i8** %11, align 8
  %132 = call i64 @EVP_CIPHER_CTX_rand_key(i32* %130, i8* %131)
  %133 = icmp sle i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %129
  br label %252

135:                                              ; preds = %129
  br label %136

136:                                              ; preds = %135, %115
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  %140 = icmp ne i8* %139, null
  br i1 %140, label %154, label %141

141:                                              ; preds = %136
  %142 = load i8*, i8** %11, align 8
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 0
  store i8* %142, i8** %144, align 8
  %145 = load i64, i64* %12, align 8
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 1
  store i64 %145, i64* %147, align 8
  store i8* null, i8** %11, align 8
  %148 = load i32, i32* %14, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %141
  store i32 1, i32* %15, align 4
  br label %153

151:                                              ; preds = %141
  %152 = call i32 (...) @ERR_clear_error()
  br label %153

153:                                              ; preds = %151, %150
  br label %154

154:                                              ; preds = %153, %136
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* %12, align 8
  %159 = icmp ne i64 %157, %158
  br i1 %159, label %160, label %196

160:                                              ; preds = %154
  %161 = load i32*, i32** %5, align 8
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = call i64 @EVP_CIPHER_CTX_set_key_length(i32* %161, i64 %164)
  %166 = icmp sle i64 %165, 0
  br i1 %166, label %167, label %195

167:                                              ; preds = %160
  %168 = load i32, i32* %14, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %175, label %170

170:                                              ; preds = %167
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 2
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %170, %167
  %176 = load i32, i32* @CMS_F_CMS_ENCRYPTEDCONTENT_INIT_BIO, align 4
  %177 = load i32, i32* @CMS_R_INVALID_KEY_LENGTH, align 4
  %178 = call i32 @CMSerr(i32 %176, i32 %177)
  br label %252

179:                                              ; preds = %170
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 0
  %182 = load i8*, i8** %181, align 8
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = call i32 @OPENSSL_clear_free(i8* %182, i64 %185)
  %187 = load i8*, i8** %11, align 8
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 0
  store i8* %187, i8** %189, align 8
  %190 = load i64, i64* %12, align 8
  %191 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 1
  store i64 %190, i64* %192, align 8
  store i8* null, i8** %11, align 8
  %193 = call i32 (...) @ERR_clear_error()
  br label %194

194:                                              ; preds = %179
  br label %195

195:                                              ; preds = %194, %160
  br label %196

196:                                              ; preds = %195, %154
  %197 = load i32*, i32** %5, align 8
  %198 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i32 0, i32 0
  %200 = load i8*, i8** %199, align 8
  %201 = load i8*, i8** %10, align 8
  %202 = load i32, i32* %14, align 4
  %203 = call i64 @EVP_CipherInit_ex(i32* %197, i32* null, i32* null, i8* %200, i8* %201, i32 %202)
  %204 = icmp sle i64 %203, 0
  br i1 %204, label %205, label %209

205:                                              ; preds = %196
  %206 = load i32, i32* @CMS_F_CMS_ENCRYPTEDCONTENT_INIT_BIO, align 4
  %207 = load i32, i32* @CMS_R_CIPHER_INITIALISATION_ERROR, align 4
  %208 = call i32 @CMSerr(i32 %206, i32 %207)
  br label %252

209:                                              ; preds = %196
  %210 = load i32, i32* %14, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %251

212:                                              ; preds = %209
  %213 = call %struct.TYPE_10__* (...) @ASN1_TYPE_new()
  %214 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 0
  store %struct.TYPE_10__* %213, %struct.TYPE_10__** %215, align 8
  %216 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i32 0, i32 0
  %218 = load %struct.TYPE_10__*, %struct.TYPE_10__** %217, align 8
  %219 = icmp eq %struct.TYPE_10__* %218, null
  br i1 %219, label %220, label %224

220:                                              ; preds = %212
  %221 = load i32, i32* @CMS_F_CMS_ENCRYPTEDCONTENT_INIT_BIO, align 4
  %222 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %223 = call i32 @CMSerr(i32 %221, i32 %222)
  br label %252

224:                                              ; preds = %212
  %225 = load i32*, i32** %5, align 8
  %226 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 0
  %228 = load %struct.TYPE_10__*, %struct.TYPE_10__** %227, align 8
  %229 = call i64 @EVP_CIPHER_param_to_asn1(i32* %225, %struct.TYPE_10__* %228)
  %230 = icmp sle i64 %229, 0
  br i1 %230, label %231, label %235

231:                                              ; preds = %224
  %232 = load i32, i32* @CMS_F_CMS_ENCRYPTEDCONTENT_INIT_BIO, align 4
  %233 = load i32, i32* @CMS_R_CIPHER_PARAMETER_INITIALISATION_ERROR, align 4
  %234 = call i32 @CMSerr(i32 %232, i32 %233)
  br label %252

235:                                              ; preds = %224
  %236 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i32 0, i32 0
  %238 = load %struct.TYPE_10__*, %struct.TYPE_10__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = load i64, i64* @V_ASN1_UNDEF, align 8
  %242 = icmp eq i64 %240, %241
  br i1 %242, label %243, label %250

243:                                              ; preds = %235
  %244 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 0
  %246 = load %struct.TYPE_10__*, %struct.TYPE_10__** %245, align 8
  %247 = call i32 @ASN1_TYPE_free(%struct.TYPE_10__* %246)
  %248 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %248, i32 0, i32 0
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %249, align 8
  br label %250

250:                                              ; preds = %243, %235
  br label %251

251:                                              ; preds = %250, %209
  store i32 1, i32* %13, align 4
  br label %252

252:                                              ; preds = %251, %231, %220, %205, %175, %134, %125, %105, %95, %74, %63
  %253 = load i32, i32* %15, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %258

255:                                              ; preds = %252
  %256 = load i32, i32* %13, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %268, label %258

258:                                              ; preds = %255, %252
  %259 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %260 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %259, i32 0, i32 0
  %261 = load i8*, i8** %260, align 8
  %262 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %263 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %262, i32 0, i32 1
  %264 = load i64, i64* %263, align 8
  %265 = call i32 @OPENSSL_clear_free(i8* %261, i64 %264)
  %266 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %267 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %266, i32 0, i32 0
  store i8* null, i8** %267, align 8
  br label %268

268:                                              ; preds = %258, %255
  %269 = load i8*, i8** %11, align 8
  %270 = load i64, i64* %12, align 8
  %271 = call i32 @OPENSSL_clear_free(i8* %269, i64 %270)
  %272 = load i32, i32* %13, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %276

274:                                              ; preds = %268
  %275 = load i32*, i32** %4, align 8
  store i32* %275, i32** %2, align 8
  store i32 1, i32* %16, align 4
  br label %279

276:                                              ; preds = %268
  %277 = load i32*, i32** %4, align 8
  %278 = call i32 @BIO_free(i32* %277)
  store i32* null, i32** %2, align 8
  store i32 1, i32* %16, align 4
  br label %279

279:                                              ; preds = %276, %274, %35
  %280 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %280)
  %281 = load i32*, i32** %2, align 8
  ret i32* %281
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @BIO_new(i32) #2

declare dso_local i32 @BIO_f_cipher(...) #2

declare dso_local i32 @CMSerr(i32, i32) #2

declare dso_local i32 @BIO_get_cipher_ctx(i32*, i32**) #2

declare dso_local i32* @EVP_get_cipherbyobj(i32) #2

declare dso_local i64 @EVP_CipherInit_ex(i32*, i32*, i32*, i8*, i8*, i32) #2

declare dso_local i32 @OBJ_nid2obj(i32) #2

declare dso_local i32 @EVP_CIPHER_CTX_type(i32*) #2

declare dso_local i32 @EVP_CIPHER_CTX_iv_length(i32*) #2

declare dso_local i64 @RAND_bytes(i8*, i32) #2

declare dso_local i64 @EVP_CIPHER_asn1_to_param(i32*, %struct.TYPE_10__*) #2

declare dso_local i64 @EVP_CIPHER_CTX_key_length(i32*) #2

declare dso_local i8* @OPENSSL_malloc(i64) #2

declare dso_local i64 @EVP_CIPHER_CTX_rand_key(i32*, i8*) #2

declare dso_local i32 @ERR_clear_error(...) #2

declare dso_local i64 @EVP_CIPHER_CTX_set_key_length(i32*, i64) #2

declare dso_local i32 @OPENSSL_clear_free(i8*, i64) #2

declare dso_local %struct.TYPE_10__* @ASN1_TYPE_new(...) #2

declare dso_local i64 @EVP_CIPHER_param_to_asn1(i32*, %struct.TYPE_10__*) #2

declare dso_local i32 @ASN1_TYPE_free(%struct.TYPE_10__*) #2

declare dso_local i32 @BIO_free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
