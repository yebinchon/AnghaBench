; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_evp_enc.c_EVP_CipherInit_ex.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_evp_enc.c_EVP_CipherInit_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i64, i8*, i8*, i32, %struct.TYPE_13__*, i64, i64, i32, i32, i32*, i32* }
%struct.TYPE_13__ = type { i64, i32, i32, i32 (%struct.TYPE_12__*, i8*, i8*, i32)*, i32, i64 }

@EVP_F_EVP_CIPHERINIT_EX = common dso_local global i32 0, align 4
@EVP_R_INITIALIZATION_ERROR = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@EVP_CIPHER_CTX_FLAG_WRAP_ALLOW = common dso_local global i32 0, align 4
@EVP_CIPH_CTRL_INIT = common dso_local global i32 0, align 4
@EVP_CTRL_INIT = common dso_local global i32 0, align 4
@EVP_R_NO_CIPHER_SET = common dso_local global i32 0, align 4
@EVP_CIPH_WRAP_MODE = common dso_local global i32 0, align 4
@EVP_R_WRAP_MODE_NOT_ALLOWED = common dso_local global i32 0, align 4
@EVP_CIPH_CUSTOM_IV = common dso_local global i32 0, align 4
@EVP_CIPH_ALWAYS_CALL_INIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EVP_CipherInit_ex(%struct.TYPE_12__* %0, %struct.TYPE_13__* %1, i32* %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %9, align 8
  store i32* %2, i32** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load i32, i32* %13, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %22

18:                                               ; preds = %6
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %13, align 4
  br label %30

22:                                               ; preds = %6
  %23 = load i32, i32* %13, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 1, i32* %13, align 4
  br label %26

26:                                               ; preds = %25, %22
  %27 = load i32, i32* %13, align 4
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  br label %30

30:                                               ; preds = %26, %18
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 11
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %54

35:                                               ; preds = %30
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 5
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %37, align 8
  %39 = icmp ne %struct.TYPE_13__* %38, null
  br i1 %39, label %40, label %54

40:                                               ; preds = %35
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %42 = icmp eq %struct.TYPE_13__* %41, null
  br i1 %42, label %53, label %43

43:                                               ; preds = %40
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 5
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %46, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %43, %40
  br label %191

54:                                               ; preds = %43, %35, %30
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %56 = icmp ne %struct.TYPE_13__* %55, null
  br i1 %56, label %57, label %180

57:                                               ; preds = %54
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 5
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %59, align 8
  %61 = icmp ne %struct.TYPE_13__* %60, null
  br i1 %61, label %62, label %74

62:                                               ; preds = %57
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %14, align 8
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %67 = call i32 @EVP_CIPHER_CTX_reset(%struct.TYPE_12__* %66)
  %68 = load i32, i32* %13, align 4
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load i64, i64* %14, align 8
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 1
  store i64 %71, i64* %73, align 8
  br label %74

74:                                               ; preds = %62, %57
  %75 = load i32*, i32** %10, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %86

77:                                               ; preds = %74
  %78 = load i32*, i32** %10, align 8
  %79 = call i32 @ENGINE_init(i32* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %77
  %82 = load i32, i32* @EVP_F_EVP_CIPHERINIT_EX, align 4
  %83 = load i32, i32* @EVP_R_INITIALIZATION_ERROR, align 4
  %84 = call i32 @EVPerr(i32 %82, i32 %83)
  store i32 0, i32* %7, align 4
  br label %327

85:                                               ; preds = %77
  br label %91

86:                                               ; preds = %74
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call i32* @ENGINE_get_cipher_engine(i64 %89)
  store i32* %90, i32** %10, align 8
  br label %91

91:                                               ; preds = %86, %85
  %92 = load i32*, i32** %10, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %111

94:                                               ; preds = %91
  %95 = load i32*, i32** %10, align 8
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = call %struct.TYPE_13__* @ENGINE_get_cipher(i32* %95, i64 %98)
  store %struct.TYPE_13__* %99, %struct.TYPE_13__** %15, align 8
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %101 = icmp ne %struct.TYPE_13__* %100, null
  br i1 %101, label %106, label %102

102:                                              ; preds = %94
  %103 = load i32, i32* @EVP_F_EVP_CIPHERINIT_EX, align 4
  %104 = load i32, i32* @EVP_R_INITIALIZATION_ERROR, align 4
  %105 = call i32 @EVPerr(i32 %103, i32 %104)
  store i32 0, i32* %7, align 4
  br label %327

106:                                              ; preds = %94
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  store %struct.TYPE_13__* %107, %struct.TYPE_13__** %9, align 8
  %108 = load i32*, i32** %10, align 8
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 11
  store i32* %108, i32** %110, align 8
  br label %114

111:                                              ; preds = %91
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 11
  store i32* null, i32** %113, align 8
  br label %114

114:                                              ; preds = %111, %106
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 5
  store %struct.TYPE_13__* %115, %struct.TYPE_13__** %117, align 8
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 5
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 5
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %144

124:                                              ; preds = %114
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 5
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 5
  %129 = load i64, i64* %128, align 8
  %130 = call i32* @OPENSSL_zalloc(i64 %129)
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 10
  store i32* %130, i32** %132, align 8
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 10
  %135 = load i32*, i32** %134, align 8
  %136 = icmp eq i32* %135, null
  br i1 %136, label %137, label %143

137:                                              ; preds = %124
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 5
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %139, align 8
  %140 = load i32, i32* @EVP_F_EVP_CIPHERINIT_EX, align 4
  %141 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %142 = call i32 @EVPerr(i32 %140, i32 %141)
  store i32 0, i32* %7, align 4
  br label %327

143:                                              ; preds = %124
  br label %147

144:                                              ; preds = %114
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 10
  store i32* null, i32** %146, align 8
  br label %147

147:                                              ; preds = %144, %143
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 9
  store i32 %150, i32* %152, align 4
  %153 = load i32, i32* @EVP_CIPHER_CTX_FLAG_WRAP_ALLOW, align 4
  %154 = sext i32 %153 to i64
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = and i64 %157, %154
  store i64 %158, i64* %156, align 8
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 5
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @EVP_CIPH_CTRL_INIT, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %179

167:                                              ; preds = %147
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %169 = load i32, i32* @EVP_CTRL_INIT, align 4
  %170 = call i32 @EVP_CIPHER_CTX_ctrl(%struct.TYPE_12__* %168, i32 %169, i32 0, i32* null)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %178, label %172

172:                                              ; preds = %167
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 5
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %174, align 8
  %175 = load i32, i32* @EVP_F_EVP_CIPHERINIT_EX, align 4
  %176 = load i32, i32* @EVP_R_INITIALIZATION_ERROR, align 4
  %177 = call i32 @EVPerr(i32 %175, i32 %176)
  store i32 0, i32* %7, align 4
  br label %327

178:                                              ; preds = %167
  br label %179

179:                                              ; preds = %178, %147
  br label %190

180:                                              ; preds = %54
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 5
  %183 = load %struct.TYPE_13__*, %struct.TYPE_13__** %182, align 8
  %184 = icmp ne %struct.TYPE_13__* %183, null
  br i1 %184, label %189, label %185

185:                                              ; preds = %180
  %186 = load i32, i32* @EVP_F_EVP_CIPHERINIT_EX, align 4
  %187 = load i32, i32* @EVP_R_NO_CIPHER_SET, align 4
  %188 = call i32 @EVPerr(i32 %186, i32 %187)
  store i32 0, i32* %7, align 4
  br label %327

189:                                              ; preds = %180
  br label %190

190:                                              ; preds = %189, %179
  br label %191

191:                                              ; preds = %190, %53
  %192 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 5
  %194 = load %struct.TYPE_13__*, %struct.TYPE_13__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 4
  %197 = icmp eq i32 %196, 1
  br i1 %197, label %212, label %198

198:                                              ; preds = %191
  %199 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i32 0, i32 5
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  %204 = icmp eq i32 %203, 8
  br i1 %204, label %212, label %205

205:                                              ; preds = %198
  %206 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i32 0, i32 5
  %208 = load %struct.TYPE_13__*, %struct.TYPE_13__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 4
  %211 = icmp eq i32 %210, 16
  br label %212

212:                                              ; preds = %205, %198, %191
  %213 = phi i1 [ true, %198 ], [ true, %191 ], [ %211, %205 ]
  %214 = zext i1 %213 to i32
  %215 = call i32 @OPENSSL_assert(i32 %214)
  %216 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i32 0, i32 1
  %218 = load i64, i64* %217, align 8
  %219 = load i32, i32* @EVP_CIPHER_CTX_FLAG_WRAP_ALLOW, align 4
  %220 = sext i32 %219 to i64
  %221 = and i64 %218, %220
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %232, label %223

223:                                              ; preds = %212
  %224 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %225 = call i32 @EVP_CIPHER_CTX_mode(%struct.TYPE_12__* %224)
  %226 = load i32, i32* @EVP_CIPH_WRAP_MODE, align 4
  %227 = icmp eq i32 %225, %226
  br i1 %227, label %228, label %232

228:                                              ; preds = %223
  %229 = load i32, i32* @EVP_F_EVP_CIPHERINIT_EX, align 4
  %230 = load i32, i32* @EVP_R_WRAP_MODE_NOT_ALLOWED, align 4
  %231 = call i32 @EVPerr(i32 %229, i32 %230)
  store i32 0, i32* %7, align 4
  br label %327

232:                                              ; preds = %223, %212
  %233 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %234 = call i32 @EVP_CIPHER_CTX_cipher(%struct.TYPE_12__* %233)
  %235 = call i32 @EVP_CIPHER_flags(i32 %234)
  %236 = load i32, i32* @EVP_CIPH_CUSTOM_IV, align 4
  %237 = and i32 %235, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %288, label %239

239:                                              ; preds = %232
  %240 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %241 = call i32 @EVP_CIPHER_CTX_mode(%struct.TYPE_12__* %240)
  switch i32 %241, label %286 [
    i32 128, label %242
    i32 130, label %242
    i32 132, label %243
    i32 129, label %243
    i32 133, label %246
    i32 131, label %272
  ]

242:                                              ; preds = %239, %239
  br label %287

243:                                              ; preds = %239, %239
  %244 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %245 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %244, i32 0, i32 8
  store i32 0, i32* %245, align 8
  br label %246

246:                                              ; preds = %239, %243
  %247 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %248 = call i32 @EVP_CIPHER_CTX_iv_length(%struct.TYPE_12__* %247)
  %249 = icmp sle i32 %248, 8
  %250 = zext i1 %249 to i32
  %251 = call i32 @OPENSSL_assert(i32 %250)
  %252 = load i8*, i8** %12, align 8
  %253 = icmp ne i8* %252, null
  br i1 %253, label %254, label %262

254:                                              ; preds = %246
  %255 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %256 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %255, i32 0, i32 2
  %257 = load i8*, i8** %256, align 8
  %258 = load i8*, i8** %12, align 8
  %259 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %260 = call i32 @EVP_CIPHER_CTX_iv_length(%struct.TYPE_12__* %259)
  %261 = call i32 @memcpy(i8* %257, i8* %258, i32 %260)
  br label %262

262:                                              ; preds = %254, %246
  %263 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %264 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %263, i32 0, i32 3
  %265 = load i8*, i8** %264, align 8
  %266 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %267 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %266, i32 0, i32 2
  %268 = load i8*, i8** %267, align 8
  %269 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %270 = call i32 @EVP_CIPHER_CTX_iv_length(%struct.TYPE_12__* %269)
  %271 = call i32 @memcpy(i8* %265, i8* %268, i32 %270)
  br label %287

272:                                              ; preds = %239
  %273 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %274 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %273, i32 0, i32 8
  store i32 0, i32* %274, align 8
  %275 = load i8*, i8** %12, align 8
  %276 = icmp ne i8* %275, null
  br i1 %276, label %277, label %285

277:                                              ; preds = %272
  %278 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %279 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %278, i32 0, i32 3
  %280 = load i8*, i8** %279, align 8
  %281 = load i8*, i8** %12, align 8
  %282 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %283 = call i32 @EVP_CIPHER_CTX_iv_length(%struct.TYPE_12__* %282)
  %284 = call i32 @memcpy(i8* %280, i8* %281, i32 %283)
  br label %285

285:                                              ; preds = %277, %272
  br label %287

286:                                              ; preds = %239
  store i32 0, i32* %7, align 4
  br label %327

287:                                              ; preds = %285, %262, %242
  br label %288

288:                                              ; preds = %287, %232
  %289 = load i8*, i8** %11, align 8
  %290 = icmp ne i8* %289, null
  br i1 %290, label %300, label %291

291:                                              ; preds = %288
  %292 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %293 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %292, i32 0, i32 5
  %294 = load %struct.TYPE_13__*, %struct.TYPE_13__** %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 8
  %297 = load i32, i32* @EVP_CIPH_ALWAYS_CALL_INIT, align 4
  %298 = and i32 %296, %297
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %314

300:                                              ; preds = %291, %288
  %301 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %302 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %301, i32 0, i32 5
  %303 = load %struct.TYPE_13__*, %struct.TYPE_13__** %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %303, i32 0, i32 3
  %305 = load i32 (%struct.TYPE_12__*, i8*, i8*, i32)*, i32 (%struct.TYPE_12__*, i8*, i8*, i32)** %304, align 8
  %306 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %307 = load i8*, i8** %11, align 8
  %308 = load i8*, i8** %12, align 8
  %309 = load i32, i32* %13, align 4
  %310 = call i32 %305(%struct.TYPE_12__* %306, i8* %307, i8* %308, i32 %309)
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %313, label %312

312:                                              ; preds = %300
  store i32 0, i32* %7, align 4
  br label %327

313:                                              ; preds = %300
  br label %314

314:                                              ; preds = %313, %291
  %315 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %316 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %315, i32 0, i32 7
  store i64 0, i64* %316, align 8
  %317 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %318 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %317, i32 0, i32 6
  store i64 0, i64* %318, align 8
  %319 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %320 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %319, i32 0, i32 5
  %321 = load %struct.TYPE_13__*, %struct.TYPE_13__** %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %321, i32 0, i32 2
  %323 = load i32, i32* %322, align 4
  %324 = sub nsw i32 %323, 1
  %325 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %326 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %325, i32 0, i32 4
  store i32 %324, i32* %326, align 8
  store i32 1, i32* %7, align 4
  br label %327

327:                                              ; preds = %314, %312, %286, %228, %185, %172, %137, %102, %81
  %328 = load i32, i32* %7, align 4
  ret i32 %328
}

declare dso_local i32 @EVP_CIPHER_CTX_reset(%struct.TYPE_12__*) #1

declare dso_local i32 @ENGINE_init(i32*) #1

declare dso_local i32 @EVPerr(i32, i32) #1

declare dso_local i32* @ENGINE_get_cipher_engine(i64) #1

declare dso_local %struct.TYPE_13__* @ENGINE_get_cipher(i32*, i64) #1

declare dso_local i32* @OPENSSL_zalloc(i64) #1

declare dso_local i32 @EVP_CIPHER_CTX_ctrl(%struct.TYPE_12__*, i32, i32, i32*) #1

declare dso_local i32 @OPENSSL_assert(i32) #1

declare dso_local i32 @EVP_CIPHER_CTX_mode(%struct.TYPE_12__*) #1

declare dso_local i32 @EVP_CIPHER_flags(i32) #1

declare dso_local i32 @EVP_CIPHER_CTX_cipher(%struct.TYPE_12__*) #1

declare dso_local i32 @EVP_CIPHER_CTX_iv_length(%struct.TYPE_12__*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
