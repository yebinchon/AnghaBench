; ModuleID = '/home/carl/AnghaBench/freebsd/sys/crypto/aesni/extr_aesni.c_aesni_cipher_crypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/crypto/aesni/extr_aesni.c_aesni_cipher_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aesni_session = type { i32, i32, i32, i32, i32 }
%struct.cryptodesc = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cryptop = type { i32, i32 }

@AES_BLOCK_LEN = common dso_local global i32 0, align 4
@GMAC_DIGEST_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"AES_NIST_GCM_16/AES_CCM_16  must include MAC descriptor\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@CRD_F_ENCRYPT = common dso_local global i32 0, align 4
@CRD_F_KEY_EXPLICIT = common dso_local global i32 0, align 4
@CRD_F_IV_EXPLICIT = common dso_local global i32 0, align 4
@CRD_F_IV_PRESENT = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@M_AESNI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aesni_session*, %struct.cryptodesc*, %struct.cryptodesc*, %struct.cryptop*)* @aesni_cipher_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aesni_cipher_crypt(%struct.aesni_session* %0, %struct.cryptodesc* %1, %struct.cryptodesc* %2, %struct.cryptop* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.aesni_session*, align 8
  %7 = alloca %struct.cryptodesc*, align 8
  %8 = alloca %struct.cryptodesc*, align 8
  %9 = alloca %struct.cryptop*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.aesni_session* %0, %struct.aesni_session** %6, align 8
  store %struct.cryptodesc* %1, %struct.cryptodesc** %7, align 8
  store %struct.cryptodesc* %2, %struct.cryptodesc** %8, align 8
  store %struct.cryptop* %3, %struct.cryptop** %9, align 8
  %21 = load i32, i32* @AES_BLOCK_LEN, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %10, align 8
  %24 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %11, align 8
  %25 = load i32, i32* @GMAC_DIGEST_LEN, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca i32, i64 %26, align 16
  store i64 %26, i64* %12, align 8
  %28 = load %struct.aesni_session*, %struct.aesni_session** %6, align 8
  %29 = getelementptr inbounds %struct.aesni_session, %struct.aesni_session* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 129
  br i1 %31, label %32, label %37

32:                                               ; preds = %4
  %33 = load %struct.aesni_session*, %struct.aesni_session** %6, align 8
  %34 = getelementptr inbounds %struct.aesni_session, %struct.aesni_session* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 131
  br i1 %36, label %40, label %37

37:                                               ; preds = %32, %4
  %38 = load %struct.cryptodesc*, %struct.cryptodesc** %8, align 8
  %39 = icmp ne %struct.cryptodesc* %38, null
  br label %40

40:                                               ; preds = %37, %32
  %41 = phi i1 [ true, %32 ], [ %39, %37 ]
  %42 = zext i1 %41 to i32
  %43 = call i32 @KASSERT(i32 %42, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %16, align 4
  store i32* null, i32** %14, align 8
  %44 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %45 = load %struct.cryptop*, %struct.cryptop** %9, align 8
  %46 = call i32* @aesni_cipher_alloc(%struct.cryptodesc* %44, %struct.cryptop* %45, i32* %18)
  store i32* %46, i32** %13, align 8
  %47 = load i32*, i32** %13, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %40
  %50 = load i32, i32* @ENOMEM, align 4
  store i32 %50, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %461

51:                                               ; preds = %40
  store i32 0, i32* %19, align 4
  %52 = load %struct.aesni_session*, %struct.aesni_session** %6, align 8
  %53 = getelementptr inbounds %struct.aesni_session, %struct.aesni_session* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 129
  br i1 %55, label %61, label %56

56:                                               ; preds = %51
  %57 = load %struct.aesni_session*, %struct.aesni_session** %6, align 8
  %58 = getelementptr inbounds %struct.aesni_session, %struct.aesni_session* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 131
  br i1 %60, label %61, label %70

61:                                               ; preds = %56, %51
  %62 = load %struct.cryptodesc*, %struct.cryptodesc** %8, align 8
  %63 = load %struct.cryptop*, %struct.cryptop** %9, align 8
  %64 = call i32* @aesni_cipher_alloc(%struct.cryptodesc* %62, %struct.cryptop* %63, i32* %19)
  store i32* %64, i32** %14, align 8
  %65 = load i32*, i32** %14, align 8
  %66 = icmp eq i32* %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = load i32, i32* @ENOMEM, align 4
  store i32 %68, i32* %15, align 4
  br label %435

69:                                               ; preds = %61
  br label %70

70:                                               ; preds = %69, %56
  store i32 0, i32* %15, align 4
  %71 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %72 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @CRD_F_ENCRYPT, align 4
  %75 = and i32 %73, %74
  %76 = load i32, i32* @CRD_F_ENCRYPT, align 4
  %77 = icmp eq i32 %75, %76
  %78 = zext i1 %77 to i32
  store i32 %78, i32* %17, align 4
  %79 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %80 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @CRD_F_KEY_EXPLICIT, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %98

85:                                               ; preds = %70
  %86 = load %struct.aesni_session*, %struct.aesni_session** %6, align 8
  %87 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %88 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %87, i32 0, i32 7
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %91 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @aesni_cipher_setup_common(%struct.aesni_session* %86, i32 %89, i32 %92)
  store i32 %93, i32* %15, align 4
  %94 = load i32, i32* %15, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %85
  br label %435

97:                                               ; preds = %85
  br label %98

98:                                               ; preds = %97, %70
  %99 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %100 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  switch i32 %101, label %106 [
    i32 132, label %102
    i32 130, label %102
    i32 128, label %104
    i32 129, label %105
    i32 131, label %105
  ]

102:                                              ; preds = %98, %98
  %103 = load i32, i32* @AES_BLOCK_LEN, align 4
  store i32 %103, i32* %16, align 4
  br label %106

104:                                              ; preds = %98
  store i32 8, i32* %16, align 4
  br label %106

105:                                              ; preds = %98, %98
  store i32 12, i32* %16, align 4
  br label %106

106:                                              ; preds = %98, %105, %104, %102
  %107 = load i32, i32* %17, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %145

109:                                              ; preds = %106
  %110 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %111 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @CRD_F_IV_EXPLICIT, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %109
  %117 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %118 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %16, align 4
  %121 = call i32 @bcopy(i32 %119, i32* %24, i32 %120)
  br label %125

122:                                              ; preds = %109
  %123 = load i32, i32* %16, align 4
  %124 = call i32 @arc4rand(i32* %24, i32 %123, i32 0)
  br label %125

125:                                              ; preds = %122, %116
  %126 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %127 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @CRD_F_IV_PRESENT, align 4
  %130 = and i32 %128, %129
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %144

132:                                              ; preds = %125
  %133 = load %struct.cryptop*, %struct.cryptop** %9, align 8
  %134 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.cryptop*, %struct.cryptop** %9, align 8
  %137 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %140 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %16, align 4
  %143 = call i32 @crypto_copyback(i32 %135, i32 %138, i32 %141, i32 %142, i32* %24)
  br label %144

144:                                              ; preds = %132, %125
  br label %171

145:                                              ; preds = %106
  %146 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %147 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @CRD_F_IV_EXPLICIT, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %145
  %153 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %154 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %153, i32 0, i32 5
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* %16, align 4
  %157 = call i32 @bcopy(i32 %155, i32* %24, i32 %156)
  br label %170

158:                                              ; preds = %145
  %159 = load %struct.cryptop*, %struct.cryptop** %9, align 8
  %160 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.cryptop*, %struct.cryptop** %9, align 8
  %163 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %166 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %165, i32 0, i32 4
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* %16, align 4
  %169 = call i32 @crypto_copydata(i32 %161, i32 %164, i32 %167, i32 %168, i32* %24)
  br label %170

170:                                              ; preds = %158, %152
  br label %171

171:                                              ; preds = %170, %144
  %172 = load %struct.aesni_session*, %struct.aesni_session** %6, align 8
  %173 = getelementptr inbounds %struct.aesni_session, %struct.aesni_session* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  switch i32 %174, label %413 [
    i32 132, label %175
    i32 130, label %204
    i32 128, label %217
    i32 129, label %253
    i32 131, label %333
  ]

175:                                              ; preds = %171
  %176 = load i32, i32* %17, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %191

178:                                              ; preds = %175
  %179 = load %struct.aesni_session*, %struct.aesni_session** %6, align 8
  %180 = getelementptr inbounds %struct.aesni_session, %struct.aesni_session* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.aesni_session*, %struct.aesni_session** %6, align 8
  %183 = getelementptr inbounds %struct.aesni_session, %struct.aesni_session* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %186 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = load i32*, i32** %13, align 8
  %189 = load i32*, i32** %13, align 8
  %190 = call i32 @aesni_encrypt_cbc(i32 %181, i32 %184, i32 %187, i32* %188, i32* %189, i32* %24)
  br label %203

191:                                              ; preds = %175
  %192 = load %struct.aesni_session*, %struct.aesni_session** %6, align 8
  %193 = getelementptr inbounds %struct.aesni_session, %struct.aesni_session* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.aesni_session*, %struct.aesni_session** %6, align 8
  %196 = getelementptr inbounds %struct.aesni_session, %struct.aesni_session* %195, i32 0, i32 4
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %199 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 4
  %201 = load i32*, i32** %13, align 8
  %202 = call i32 @aesni_decrypt_cbc(i32 %194, i32 %197, i32 %200, i32* %201, i32* %24)
  br label %203

203:                                              ; preds = %191, %178
  br label %413

204:                                              ; preds = %171
  %205 = load %struct.aesni_session*, %struct.aesni_session** %6, align 8
  %206 = getelementptr inbounds %struct.aesni_session, %struct.aesni_session* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.aesni_session*, %struct.aesni_session** %6, align 8
  %209 = getelementptr inbounds %struct.aesni_session, %struct.aesni_session* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %212 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 4
  %214 = load i32*, i32** %13, align 8
  %215 = load i32*, i32** %13, align 8
  %216 = call i32 @aesni_encrypt_icm(i32 %207, i32 %210, i32 %213, i32* %214, i32* %215, i32* %24)
  br label %413

217:                                              ; preds = %171
  %218 = load i32, i32* %17, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %236

220:                                              ; preds = %217
  %221 = load %struct.aesni_session*, %struct.aesni_session** %6, align 8
  %222 = getelementptr inbounds %struct.aesni_session, %struct.aesni_session* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.aesni_session*, %struct.aesni_session** %6, align 8
  %225 = getelementptr inbounds %struct.aesni_session, %struct.aesni_session* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.aesni_session*, %struct.aesni_session** %6, align 8
  %228 = getelementptr inbounds %struct.aesni_session, %struct.aesni_session* %227, i32 0, i32 3
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %231 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 4
  %233 = load i32*, i32** %13, align 8
  %234 = load i32*, i32** %13, align 8
  %235 = call i32 @aesni_encrypt_xts(i32 %223, i32 %226, i32 %229, i32 %232, i32* %233, i32* %234, i32* %24)
  br label %252

236:                                              ; preds = %217
  %237 = load %struct.aesni_session*, %struct.aesni_session** %6, align 8
  %238 = getelementptr inbounds %struct.aesni_session, %struct.aesni_session* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.aesni_session*, %struct.aesni_session** %6, align 8
  %241 = getelementptr inbounds %struct.aesni_session, %struct.aesni_session* %240, i32 0, i32 4
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.aesni_session*, %struct.aesni_session** %6, align 8
  %244 = getelementptr inbounds %struct.aesni_session, %struct.aesni_session* %243, i32 0, i32 3
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %247 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 4
  %249 = load i32*, i32** %13, align 8
  %250 = load i32*, i32** %13, align 8
  %251 = call i32 @aesni_decrypt_xts(i32 %239, i32 %242, i32 %245, i32 %248, i32* %249, i32* %250, i32* %24)
  br label %252

252:                                              ; preds = %236, %220
  br label %413

253:                                              ; preds = %171
  %254 = load i32, i32* %17, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %269, label %256

256:                                              ; preds = %253
  %257 = load %struct.cryptop*, %struct.cryptop** %9, align 8
  %258 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = load %struct.cryptop*, %struct.cryptop** %9, align 8
  %261 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.cryptodesc*, %struct.cryptodesc** %8, align 8
  %264 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %263, i32 0, i32 4
  %265 = load i32, i32* %264, align 4
  %266 = mul nuw i64 4, %26
  %267 = trunc i64 %266 to i32
  %268 = call i32 @crypto_copydata(i32 %259, i32 %262, i32 %265, i32 %267, i32* %27)
  br label %273

269:                                              ; preds = %253
  %270 = mul nuw i64 4, %26
  %271 = trunc i64 %270 to i32
  %272 = call i32 @bzero(i32* %27, i32 %271)
  br label %273

273:                                              ; preds = %269, %256
  %274 = load i32, i32* %17, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %310

276:                                              ; preds = %273
  %277 = load i32*, i32** %13, align 8
  %278 = load i32*, i32** %13, align 8
  %279 = load i32*, i32** %14, align 8
  %280 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %281 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %280, i32 0, i32 2
  %282 = load i32, i32* %281, align 4
  %283 = load %struct.cryptodesc*, %struct.cryptodesc** %8, align 8
  %284 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %283, i32 0, i32 2
  %285 = load i32, i32* %284, align 4
  %286 = load i32, i32* %16, align 4
  %287 = load %struct.aesni_session*, %struct.aesni_session** %6, align 8
  %288 = getelementptr inbounds %struct.aesni_session, %struct.aesni_session* %287, i32 0, i32 2
  %289 = load i32, i32* %288, align 4
  %290 = load %struct.aesni_session*, %struct.aesni_session** %6, align 8
  %291 = getelementptr inbounds %struct.aesni_session, %struct.aesni_session* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 4
  %293 = call i32 @AES_GCM_encrypt(i32* %277, i32* %278, i32* %279, i32* %24, i32* %27, i32 %282, i32 %285, i32 %286, i32 %289, i32 %292)
  %294 = load %struct.cryptodesc*, %struct.cryptodesc** %8, align 8
  %295 = icmp ne %struct.cryptodesc* %294, null
  br i1 %295, label %296, label %309

296:                                              ; preds = %276
  %297 = load %struct.cryptop*, %struct.cryptop** %9, align 8
  %298 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  %300 = load %struct.cryptop*, %struct.cryptop** %9, align 8
  %301 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 4
  %303 = load %struct.cryptodesc*, %struct.cryptodesc** %8, align 8
  %304 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %303, i32 0, i32 4
  %305 = load i32, i32* %304, align 4
  %306 = mul nuw i64 4, %26
  %307 = trunc i64 %306 to i32
  %308 = call i32 @crypto_copyback(i32 %299, i32 %302, i32 %305, i32 %307, i32* %27)
  br label %309

309:                                              ; preds = %296, %276
  br label %332

310:                                              ; preds = %273
  %311 = load i32*, i32** %13, align 8
  %312 = load i32*, i32** %13, align 8
  %313 = load i32*, i32** %14, align 8
  %314 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %315 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %314, i32 0, i32 2
  %316 = load i32, i32* %315, align 4
  %317 = load %struct.cryptodesc*, %struct.cryptodesc** %8, align 8
  %318 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %317, i32 0, i32 2
  %319 = load i32, i32* %318, align 4
  %320 = load i32, i32* %16, align 4
  %321 = load %struct.aesni_session*, %struct.aesni_session** %6, align 8
  %322 = getelementptr inbounds %struct.aesni_session, %struct.aesni_session* %321, i32 0, i32 2
  %323 = load i32, i32* %322, align 4
  %324 = load %struct.aesni_session*, %struct.aesni_session** %6, align 8
  %325 = getelementptr inbounds %struct.aesni_session, %struct.aesni_session* %324, i32 0, i32 1
  %326 = load i32, i32* %325, align 4
  %327 = call i32 @AES_GCM_decrypt(i32* %311, i32* %312, i32* %313, i32* %24, i32* %27, i32 %316, i32 %319, i32 %320, i32 %323, i32 %326)
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %331, label %329

329:                                              ; preds = %310
  %330 = load i32, i32* @EBADMSG, align 4
  store i32 %330, i32* %15, align 4
  br label %331

331:                                              ; preds = %329, %310
  br label %332

332:                                              ; preds = %331, %309
  br label %413

333:                                              ; preds = %171
  %334 = load i32, i32* %17, align 4
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %349, label %336

336:                                              ; preds = %333
  %337 = load %struct.cryptop*, %struct.cryptop** %9, align 8
  %338 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %337, i32 0, i32 1
  %339 = load i32, i32* %338, align 4
  %340 = load %struct.cryptop*, %struct.cryptop** %9, align 8
  %341 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 4
  %343 = load %struct.cryptodesc*, %struct.cryptodesc** %8, align 8
  %344 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %343, i32 0, i32 4
  %345 = load i32, i32* %344, align 4
  %346 = mul nuw i64 4, %26
  %347 = trunc i64 %346 to i32
  %348 = call i32 @crypto_copydata(i32 %339, i32 %342, i32 %345, i32 %347, i32* %27)
  br label %353

349:                                              ; preds = %333
  %350 = mul nuw i64 4, %26
  %351 = trunc i64 %350 to i32
  %352 = call i32 @bzero(i32* %27, i32 %351)
  br label %353

353:                                              ; preds = %349, %336
  %354 = load i32, i32* %17, align 4
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %390

356:                                              ; preds = %353
  %357 = load i32*, i32** %13, align 8
  %358 = load i32*, i32** %13, align 8
  %359 = load i32*, i32** %14, align 8
  %360 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %361 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %360, i32 0, i32 2
  %362 = load i32, i32* %361, align 4
  %363 = load %struct.cryptodesc*, %struct.cryptodesc** %8, align 8
  %364 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %363, i32 0, i32 2
  %365 = load i32, i32* %364, align 4
  %366 = load i32, i32* %16, align 4
  %367 = load %struct.aesni_session*, %struct.aesni_session** %6, align 8
  %368 = getelementptr inbounds %struct.aesni_session, %struct.aesni_session* %367, i32 0, i32 2
  %369 = load i32, i32* %368, align 4
  %370 = load %struct.aesni_session*, %struct.aesni_session** %6, align 8
  %371 = getelementptr inbounds %struct.aesni_session, %struct.aesni_session* %370, i32 0, i32 1
  %372 = load i32, i32* %371, align 4
  %373 = call i32 @AES_CCM_encrypt(i32* %357, i32* %358, i32* %359, i32* %24, i32* %27, i32 %362, i32 %365, i32 %366, i32 %369, i32 %372)
  %374 = load %struct.cryptodesc*, %struct.cryptodesc** %8, align 8
  %375 = icmp ne %struct.cryptodesc* %374, null
  br i1 %375, label %376, label %389

376:                                              ; preds = %356
  %377 = load %struct.cryptop*, %struct.cryptop** %9, align 8
  %378 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %377, i32 0, i32 1
  %379 = load i32, i32* %378, align 4
  %380 = load %struct.cryptop*, %struct.cryptop** %9, align 8
  %381 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %380, i32 0, i32 0
  %382 = load i32, i32* %381, align 4
  %383 = load %struct.cryptodesc*, %struct.cryptodesc** %8, align 8
  %384 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %383, i32 0, i32 4
  %385 = load i32, i32* %384, align 4
  %386 = mul nuw i64 4, %26
  %387 = trunc i64 %386 to i32
  %388 = call i32 @crypto_copyback(i32 %379, i32 %382, i32 %385, i32 %387, i32* %27)
  br label %389

389:                                              ; preds = %376, %356
  br label %412

390:                                              ; preds = %353
  %391 = load i32*, i32** %13, align 8
  %392 = load i32*, i32** %13, align 8
  %393 = load i32*, i32** %14, align 8
  %394 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %395 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %394, i32 0, i32 2
  %396 = load i32, i32* %395, align 4
  %397 = load %struct.cryptodesc*, %struct.cryptodesc** %8, align 8
  %398 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %397, i32 0, i32 2
  %399 = load i32, i32* %398, align 4
  %400 = load i32, i32* %16, align 4
  %401 = load %struct.aesni_session*, %struct.aesni_session** %6, align 8
  %402 = getelementptr inbounds %struct.aesni_session, %struct.aesni_session* %401, i32 0, i32 2
  %403 = load i32, i32* %402, align 4
  %404 = load %struct.aesni_session*, %struct.aesni_session** %6, align 8
  %405 = getelementptr inbounds %struct.aesni_session, %struct.aesni_session* %404, i32 0, i32 1
  %406 = load i32, i32* %405, align 4
  %407 = call i32 @AES_CCM_decrypt(i32* %391, i32* %392, i32* %393, i32* %24, i32* %27, i32 %396, i32 %399, i32 %400, i32 %403, i32 %406)
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %411, label %409

409:                                              ; preds = %390
  %410 = load i32, i32* @EBADMSG, align 4
  store i32 %410, i32* %15, align 4
  br label %411

411:                                              ; preds = %409, %390
  br label %412

412:                                              ; preds = %411, %389
  br label %413

413:                                              ; preds = %171, %412, %332, %252, %204, %203
  %414 = load i32, i32* %18, align 4
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %416, label %434

416:                                              ; preds = %413
  %417 = load i32, i32* %15, align 4
  %418 = icmp eq i32 %417, 0
  br i1 %418, label %419, label %434

419:                                              ; preds = %416
  %420 = load %struct.cryptop*, %struct.cryptop** %9, align 8
  %421 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %420, i32 0, i32 1
  %422 = load i32, i32* %421, align 4
  %423 = load %struct.cryptop*, %struct.cryptop** %9, align 8
  %424 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %423, i32 0, i32 0
  %425 = load i32, i32* %424, align 4
  %426 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %427 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %426, i32 0, i32 3
  %428 = load i32, i32* %427, align 4
  %429 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %430 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %429, i32 0, i32 2
  %431 = load i32, i32* %430, align 4
  %432 = load i32*, i32** %13, align 8
  %433 = call i32 @crypto_copyback(i32 %422, i32 %425, i32 %428, i32 %431, i32* %432)
  br label %434

434:                                              ; preds = %419, %416, %413
  br label %435

435:                                              ; preds = %434, %96, %67
  %436 = load i32, i32* %18, align 4
  %437 = icmp ne i32 %436, 0
  br i1 %437, label %438, label %447

438:                                              ; preds = %435
  %439 = load i32*, i32** %13, align 8
  %440 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %441 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %440, i32 0, i32 2
  %442 = load i32, i32* %441, align 4
  %443 = call i32 @explicit_bzero(i32* %439, i32 %442)
  %444 = load i32*, i32** %13, align 8
  %445 = load i32, i32* @M_AESNI, align 4
  %446 = call i32 @free(i32* %444, i32 %445)
  br label %447

447:                                              ; preds = %438, %435
  %448 = load i32, i32* %19, align 4
  %449 = icmp ne i32 %448, 0
  br i1 %449, label %450, label %459

450:                                              ; preds = %447
  %451 = load i32*, i32** %14, align 8
  %452 = load %struct.cryptodesc*, %struct.cryptodesc** %8, align 8
  %453 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %452, i32 0, i32 2
  %454 = load i32, i32* %453, align 4
  %455 = call i32 @explicit_bzero(i32* %451, i32 %454)
  %456 = load i32*, i32** %14, align 8
  %457 = load i32, i32* @M_AESNI, align 4
  %458 = call i32 @free(i32* %456, i32 %457)
  br label %459

459:                                              ; preds = %450, %447
  %460 = load i32, i32* %15, align 4
  store i32 %460, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %461

461:                                              ; preds = %459, %49
  %462 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %462)
  %463 = load i32, i32* %5, align 4
  ret i32 %463
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @KASSERT(i32, i8*) #2

declare dso_local i32* @aesni_cipher_alloc(%struct.cryptodesc*, %struct.cryptop*, i32*) #2

declare dso_local i32 @aesni_cipher_setup_common(%struct.aesni_session*, i32, i32) #2

declare dso_local i32 @bcopy(i32, i32*, i32) #2

declare dso_local i32 @arc4rand(i32*, i32, i32) #2

declare dso_local i32 @crypto_copyback(i32, i32, i32, i32, i32*) #2

declare dso_local i32 @crypto_copydata(i32, i32, i32, i32, i32*) #2

declare dso_local i32 @aesni_encrypt_cbc(i32, i32, i32, i32*, i32*, i32*) #2

declare dso_local i32 @aesni_decrypt_cbc(i32, i32, i32, i32*, i32*) #2

declare dso_local i32 @aesni_encrypt_icm(i32, i32, i32, i32*, i32*, i32*) #2

declare dso_local i32 @aesni_encrypt_xts(i32, i32, i32, i32, i32*, i32*, i32*) #2

declare dso_local i32 @aesni_decrypt_xts(i32, i32, i32, i32, i32*, i32*, i32*) #2

declare dso_local i32 @bzero(i32*, i32) #2

declare dso_local i32 @AES_GCM_encrypt(i32*, i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @AES_GCM_decrypt(i32*, i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @AES_CCM_encrypt(i32*, i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @AES_CCM_decrypt(i32*, i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @explicit_bzero(i32*, i32) #2

declare dso_local i32 @free(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
