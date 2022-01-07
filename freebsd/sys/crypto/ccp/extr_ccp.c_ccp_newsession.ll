; ModuleID = '/home/carl/AnghaBench/freebsd/sys/crypto/ccp/extr_ccp.c_ccp_newsession.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/crypto/ccp/extr_ccp.c_ccp_newsession.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_hash = type { i64 }
%struct.cryptoini = type { i32, i64, i32, i32*, %struct.cryptoini* }
%struct.ccp_softc = type { i32, i32, i32, i64 }
%struct.ccp_session = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i64, %struct.auth_hash* }
%struct.TYPE_4__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@CCP_AES_MODE_ECB = common dso_local global i32 0, align 4
@auth_hash_hmac_sha1 = common dso_local global %struct.auth_hash zeroinitializer, align 8
@SHA1 = common dso_local global i32 0, align 4
@SHA1_HASH_LEN = common dso_local global i32 0, align 4
@auth_hash_hmac_sha2_256 = common dso_local global %struct.auth_hash zeroinitializer, align 8
@SHA2_256 = common dso_local global i32 0, align 4
@SHA2_256_HASH_LEN = common dso_local global i32 0, align 4
@auth_hash_hmac_sha2_384 = common dso_local global %struct.auth_hash zeroinitializer, align 8
@SHA2_384 = common dso_local global i32 0, align 4
@SHA2_512_HASH_LEN = common dso_local global i32 0, align 4
@auth_hash_hmac_sha2_512 = common dso_local global %struct.auth_hash zeroinitializer, align 8
@SHA2_512 = common dso_local global i32 0, align 4
@CCP_AES_MODE_CBC = common dso_local global i32 0, align 4
@AES_BLOCK_LEN = common dso_local global i32 0, align 4
@CCP_AES_MODE_CTR = common dso_local global i32 0, align 4
@CCP_AES_MODE_GCTR = common dso_local global i32 0, align 4
@AES_GCM_IV_LEN = common dso_local global i32 0, align 4
@CCP_AES_MODE_XTS = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@GCM = common dso_local global i32 0, align 4
@AUTHENC = common dso_local global i32 0, align 4
@HMAC = common dso_local global i32 0, align 4
@BLKCIPHER = common dso_local global i32 0, align 4
@AES_GMAC_HASH_LEN = common dso_local global i64 0, align 8
@CHCR_SCMD_AUTH_MODE_GHASH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.cryptoini*)* @ccp_newsession to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccp_newsession(i32 %0, i32 %1, %struct.cryptoini* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cryptoini*, align 8
  %8 = alloca %struct.ccp_softc*, align 8
  %9 = alloca %struct.ccp_session*, align 8
  %10 = alloca %struct.auth_hash*, align 8
  %11 = alloca %struct.cryptoini*, align 8
  %12 = alloca %struct.cryptoini*, align 8
  %13 = alloca %struct.cryptoini*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.cryptoini* %2, %struct.cryptoini** %7, align 8
  %21 = load %struct.cryptoini*, %struct.cryptoini** %7, align 8
  %22 = icmp eq %struct.cryptoini* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* %4, align 4
  br label %324

25:                                               ; preds = %3
  %26 = load i32, i32* %6, align 4
  %27 = call %struct.ccp_session* @crypto_get_driver_session(i32 %26)
  store %struct.ccp_session* %27, %struct.ccp_session** %9, align 8
  store i32 0, i32* %20, align 4
  store %struct.cryptoini* null, %struct.cryptoini** %13, align 8
  store %struct.cryptoini* null, %struct.cryptoini** %12, align 8
  store %struct.auth_hash* null, %struct.auth_hash** %10, align 8
  store i32 0, i32* %15, align 4
  %28 = load i32, i32* @CCP_AES_MODE_ECB, align 4
  store i32 %28, i32* %14, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %29 = load %struct.cryptoini*, %struct.cryptoini** %7, align 8
  store %struct.cryptoini* %29, %struct.cryptoini** %11, align 8
  br label %30

30:                                               ; preds = %105, %25
  %31 = load %struct.cryptoini*, %struct.cryptoini** %11, align 8
  %32 = icmp ne %struct.cryptoini* %31, null
  br i1 %32, label %33, label %109

33:                                               ; preds = %30
  %34 = load %struct.cryptoini*, %struct.cryptoini** %11, align 8
  %35 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  switch i32 %36, label %102 [
    i32 131, label %37
    i32 130, label %37
    i32 129, label %37
    i32 128, label %37
    i32 138, label %37
    i32 137, label %37
    i32 136, label %37
    i32 135, label %61
    i32 134, label %61
    i32 133, label %61
    i32 132, label %61
  ]

37:                                               ; preds = %33, %33, %33, %33, %33, %33, %33
  %38 = load %struct.cryptoini*, %struct.cryptoini** %12, align 8
  %39 = icmp ne %struct.cryptoini* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32, i32* @EINVAL, align 4
  store i32 %41, i32* %4, align 4
  br label %324

42:                                               ; preds = %37
  %43 = load %struct.cryptoini*, %struct.cryptoini** %11, align 8
  store %struct.cryptoini* %43, %struct.cryptoini** %12, align 8
  %44 = load %struct.cryptoini*, %struct.cryptoini** %11, align 8
  %45 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  switch i32 %46, label %60 [
    i32 131, label %47
    i32 130, label %50
    i32 129, label %53
    i32 128, label %56
    i32 138, label %59
    i32 137, label %59
    i32 136, label %59
  ]

47:                                               ; preds = %42
  store %struct.auth_hash* @auth_hash_hmac_sha1, %struct.auth_hash** %10, align 8
  %48 = load i32, i32* @SHA1, align 4
  store i32 %48, i32* %15, align 4
  %49 = load i32, i32* @SHA1_HASH_LEN, align 4
  store i32 %49, i32* %17, align 4
  br label %60

50:                                               ; preds = %42
  store %struct.auth_hash* @auth_hash_hmac_sha2_256, %struct.auth_hash** %10, align 8
  %51 = load i32, i32* @SHA2_256, align 4
  store i32 %51, i32* %15, align 4
  %52 = load i32, i32* @SHA2_256_HASH_LEN, align 4
  store i32 %52, i32* %17, align 4
  br label %60

53:                                               ; preds = %42
  store %struct.auth_hash* @auth_hash_hmac_sha2_384, %struct.auth_hash** %10, align 8
  %54 = load i32, i32* @SHA2_384, align 4
  store i32 %54, i32* %15, align 4
  %55 = load i32, i32* @SHA2_512_HASH_LEN, align 4
  store i32 %55, i32* %17, align 4
  br label %60

56:                                               ; preds = %42
  store %struct.auth_hash* @auth_hash_hmac_sha2_512, %struct.auth_hash** %10, align 8
  %57 = load i32, i32* @SHA2_512, align 4
  store i32 %57, i32* %15, align 4
  %58 = load i32, i32* @SHA2_512_HASH_LEN, align 4
  store i32 %58, i32* %17, align 4
  br label %60

59:                                               ; preds = %42, %42, %42
  store i32 1, i32* %20, align 4
  br label %60

60:                                               ; preds = %42, %59, %56, %53, %50, %47
  br label %104

61:                                               ; preds = %33, %33, %33, %33
  %62 = load %struct.cryptoini*, %struct.cryptoini** %13, align 8
  %63 = icmp ne %struct.cryptoini* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = load i32, i32* @EINVAL, align 4
  store i32 %65, i32* %4, align 4
  br label %324

66:                                               ; preds = %61
  %67 = load %struct.cryptoini*, %struct.cryptoini** %11, align 8
  store %struct.cryptoini* %67, %struct.cryptoini** %13, align 8
  %68 = load %struct.cryptoini*, %struct.cryptoini** %11, align 8
  %69 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  switch i32 %70, label %83 [
    i32 135, label %71
    i32 134, label %74
    i32 133, label %77
    i32 132, label %80
  ]

71:                                               ; preds = %66
  %72 = load i32, i32* @CCP_AES_MODE_CBC, align 4
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* @AES_BLOCK_LEN, align 4
  store i32 %73, i32* %16, align 4
  br label %83

74:                                               ; preds = %66
  %75 = load i32, i32* @CCP_AES_MODE_CTR, align 4
  store i32 %75, i32* %14, align 4
  %76 = load i32, i32* @AES_BLOCK_LEN, align 4
  store i32 %76, i32* %16, align 4
  br label %83

77:                                               ; preds = %66
  %78 = load i32, i32* @CCP_AES_MODE_GCTR, align 4
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* @AES_GCM_IV_LEN, align 4
  store i32 %79, i32* %16, align 4
  br label %83

80:                                               ; preds = %66
  %81 = load i32, i32* @CCP_AES_MODE_XTS, align 4
  store i32 %81, i32* %14, align 4
  %82 = load i32, i32* @AES_BLOCK_LEN, align 4
  store i32 %82, i32* %16, align 4
  br label %83

83:                                               ; preds = %66, %80, %77, %74, %71
  %84 = load %struct.cryptoini*, %struct.cryptoini** %11, align 8
  %85 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %84, i32 0, i32 3
  %86 = load i32*, i32** %85, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %101

88:                                               ; preds = %83
  %89 = load %struct.cryptoini*, %struct.cryptoini** %11, align 8
  %90 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.cryptoini*, %struct.cryptoini** %11, align 8
  %93 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @ccp_aes_check_keylen(i32 %91, i32 %94)
  store i32 %95, i32* %19, align 4
  %96 = load i32, i32* %19, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %88
  %99 = load i32, i32* %19, align 4
  store i32 %99, i32* %4, align 4
  br label %324

100:                                              ; preds = %88
  br label %101

101:                                              ; preds = %100, %83
  br label %104

102:                                              ; preds = %33
  %103 = load i32, i32* @EINVAL, align 4
  store i32 %103, i32* %4, align 4
  br label %324

104:                                              ; preds = %101, %60
  br label %105

105:                                              ; preds = %104
  %106 = load %struct.cryptoini*, %struct.cryptoini** %11, align 8
  %107 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %106, i32 0, i32 4
  %108 = load %struct.cryptoini*, %struct.cryptoini** %107, align 8
  store %struct.cryptoini* %108, %struct.cryptoini** %11, align 8
  br label %30

109:                                              ; preds = %30
  %110 = load i32, i32* %20, align 4
  %111 = load i32, i32* %14, align 4
  %112 = load i32, i32* @CCP_AES_MODE_GCTR, align 4
  %113 = icmp eq i32 %111, %112
  %114 = zext i1 %113 to i32
  %115 = icmp ne i32 %110, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %109
  %117 = load i32, i32* @EINVAL, align 4
  store i32 %117, i32* %4, align 4
  br label %324

118:                                              ; preds = %109
  %119 = load %struct.cryptoini*, %struct.cryptoini** %12, align 8
  %120 = icmp eq %struct.cryptoini* %119, null
  br i1 %120, label %121, label %126

121:                                              ; preds = %118
  %122 = load %struct.cryptoini*, %struct.cryptoini** %13, align 8
  %123 = icmp eq %struct.cryptoini* %122, null
  br i1 %123, label %124, label %126

124:                                              ; preds = %121
  %125 = load i32, i32* @EINVAL, align 4
  store i32 %125, i32* %4, align 4
  br label %324

126:                                              ; preds = %121, %118
  %127 = load %struct.cryptoini*, %struct.cryptoini** %12, align 8
  %128 = icmp ne %struct.cryptoini* %127, null
  br i1 %128, label %129, label %136

129:                                              ; preds = %126
  %130 = load %struct.cryptoini*, %struct.cryptoini** %12, align 8
  %131 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %130, i32 0, i32 3
  %132 = load i32*, i32** %131, align 8
  %133 = icmp eq i32* %132, null
  br i1 %133, label %134, label %136

134:                                              ; preds = %129
  %135 = load i32, i32* @EINVAL, align 4
  store i32 %135, i32* %4, align 4
  br label %324

136:                                              ; preds = %129, %126
  %137 = load i32, i32* %5, align 4
  %138 = call %struct.ccp_softc* @device_get_softc(i32 %137)
  store %struct.ccp_softc* %138, %struct.ccp_softc** %8, align 8
  %139 = load %struct.ccp_softc*, %struct.ccp_softc** %8, align 8
  %140 = getelementptr inbounds %struct.ccp_softc, %struct.ccp_softc* %139, i32 0, i32 1
  %141 = call i32 @mtx_lock(i32* %140)
  %142 = load %struct.ccp_softc*, %struct.ccp_softc** %8, align 8
  %143 = getelementptr inbounds %struct.ccp_softc, %struct.ccp_softc* %142, i32 0, i32 3
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %136
  %147 = load %struct.ccp_softc*, %struct.ccp_softc** %8, align 8
  %148 = getelementptr inbounds %struct.ccp_softc, %struct.ccp_softc* %147, i32 0, i32 1
  %149 = call i32 @mtx_unlock(i32* %148)
  %150 = load i32, i32* @ENXIO, align 4
  store i32 %150, i32* %4, align 4
  br label %324

151:                                              ; preds = %136
  store i32 0, i32* %18, align 4
  br label %152

152:                                              ; preds = %169, %151
  %153 = load i32, i32* %18, align 4
  %154 = load %struct.ccp_softc*, %struct.ccp_softc** %8, align 8
  %155 = getelementptr inbounds %struct.ccp_softc, %struct.ccp_softc* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @nitems(i32 %156)
  %158 = icmp ult i32 %153, %157
  br i1 %158, label %159, label %172

159:                                              ; preds = %152
  %160 = load %struct.ccp_softc*, %struct.ccp_softc** %8, align 8
  %161 = getelementptr inbounds %struct.ccp_softc, %struct.ccp_softc* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* %18, align 4
  %164 = shl i32 1, %163
  %165 = and i32 %162, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %159
  br label %172

168:                                              ; preds = %159
  br label %169

169:                                              ; preds = %168
  %170 = load i32, i32* %18, align 4
  %171 = add i32 %170, 1
  store i32 %171, i32* %18, align 4
  br label %152

172:                                              ; preds = %167, %152
  %173 = load i32, i32* %18, align 4
  %174 = load %struct.ccp_softc*, %struct.ccp_softc** %8, align 8
  %175 = getelementptr inbounds %struct.ccp_softc, %struct.ccp_softc* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @nitems(i32 %176)
  %178 = icmp eq i32 %173, %177
  br i1 %178, label %179, label %184

179:                                              ; preds = %172
  %180 = load %struct.ccp_softc*, %struct.ccp_softc** %8, align 8
  %181 = getelementptr inbounds %struct.ccp_softc, %struct.ccp_softc* %180, i32 0, i32 1
  %182 = call i32 @mtx_unlock(i32* %181)
  %183 = load i32, i32* @ENXIO, align 4
  store i32 %183, i32* %4, align 4
  br label %324

184:                                              ; preds = %172
  %185 = load i32, i32* %18, align 4
  %186 = load %struct.ccp_session*, %struct.ccp_session** %9, align 8
  %187 = getelementptr inbounds %struct.ccp_session, %struct.ccp_session* %186, i32 0, i32 0
  store i32 %185, i32* %187, align 8
  %188 = load i32, i32* %20, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %194

190:                                              ; preds = %184
  %191 = load i32, i32* @GCM, align 4
  %192 = load %struct.ccp_session*, %struct.ccp_session** %9, align 8
  %193 = getelementptr inbounds %struct.ccp_session, %struct.ccp_session* %192, i32 0, i32 5
  store i32 %191, i32* %193, align 8
  br label %221

194:                                              ; preds = %184
  %195 = load %struct.cryptoini*, %struct.cryptoini** %12, align 8
  %196 = icmp ne %struct.cryptoini* %195, null
  br i1 %196, label %197, label %204

197:                                              ; preds = %194
  %198 = load %struct.cryptoini*, %struct.cryptoini** %13, align 8
  %199 = icmp ne %struct.cryptoini* %198, null
  br i1 %199, label %200, label %204

200:                                              ; preds = %197
  %201 = load i32, i32* @AUTHENC, align 4
  %202 = load %struct.ccp_session*, %struct.ccp_session** %9, align 8
  %203 = getelementptr inbounds %struct.ccp_session, %struct.ccp_session* %202, i32 0, i32 5
  store i32 %201, i32* %203, align 8
  br label %220

204:                                              ; preds = %197, %194
  %205 = load %struct.cryptoini*, %struct.cryptoini** %12, align 8
  %206 = icmp ne %struct.cryptoini* %205, null
  br i1 %206, label %207, label %211

207:                                              ; preds = %204
  %208 = load i32, i32* @HMAC, align 4
  %209 = load %struct.ccp_session*, %struct.ccp_session** %9, align 8
  %210 = getelementptr inbounds %struct.ccp_session, %struct.ccp_session* %209, i32 0, i32 5
  store i32 %208, i32* %210, align 8
  br label %219

211:                                              ; preds = %204
  %212 = load %struct.cryptoini*, %struct.cryptoini** %13, align 8
  %213 = icmp ne %struct.cryptoini* %212, null
  %214 = zext i1 %213 to i32
  %215 = call i32 @MPASS(i32 %214)
  %216 = load i32, i32* @BLKCIPHER, align 4
  %217 = load %struct.ccp_session*, %struct.ccp_session** %9, align 8
  %218 = getelementptr inbounds %struct.ccp_session, %struct.ccp_session* %217, i32 0, i32 5
  store i32 %216, i32* %218, align 8
  br label %219

219:                                              ; preds = %211, %207
  br label %220

220:                                              ; preds = %219, %200
  br label %221

221:                                              ; preds = %220, %190
  %222 = load i32, i32* %20, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %242

224:                                              ; preds = %221
  %225 = load %struct.cryptoini*, %struct.cryptoini** %12, align 8
  %226 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %225, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  %228 = icmp eq i64 %227, 0
  br i1 %228, label %229, label %234

229:                                              ; preds = %224
  %230 = load i64, i64* @AES_GMAC_HASH_LEN, align 8
  %231 = load %struct.ccp_session*, %struct.ccp_session** %9, align 8
  %232 = getelementptr inbounds %struct.ccp_session, %struct.ccp_session* %231, i32 0, i32 4
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i32 0, i32 0
  store i64 %230, i64* %233, align 8
  br label %241

234:                                              ; preds = %224
  %235 = load %struct.cryptoini*, %struct.cryptoini** %12, align 8
  %236 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %235, i32 0, i32 1
  %237 = load i64, i64* %236, align 8
  %238 = load %struct.ccp_session*, %struct.ccp_session** %9, align 8
  %239 = getelementptr inbounds %struct.ccp_session, %struct.ccp_session* %238, i32 0, i32 4
  %240 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %239, i32 0, i32 0
  store i64 %237, i64* %240, align 8
  br label %241

241:                                              ; preds = %234, %229
  br label %289

242:                                              ; preds = %221
  %243 = load %struct.cryptoini*, %struct.cryptoini** %12, align 8
  %244 = icmp ne %struct.cryptoini* %243, null
  br i1 %244, label %245, label %288

245:                                              ; preds = %242
  %246 = load %struct.auth_hash*, %struct.auth_hash** %10, align 8
  %247 = load %struct.ccp_session*, %struct.ccp_session** %9, align 8
  %248 = getelementptr inbounds %struct.ccp_session, %struct.ccp_session* %247, i32 0, i32 3
  %249 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %248, i32 0, i32 3
  store %struct.auth_hash* %246, %struct.auth_hash** %249, align 8
  %250 = load i32, i32* %15, align 4
  %251 = load %struct.ccp_session*, %struct.ccp_session** %9, align 8
  %252 = getelementptr inbounds %struct.ccp_session, %struct.ccp_session* %251, i32 0, i32 3
  %253 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %252, i32 0, i32 0
  store i32 %250, i32* %253, align 8
  %254 = load i32, i32* %17, align 4
  %255 = load %struct.ccp_session*, %struct.ccp_session** %9, align 8
  %256 = getelementptr inbounds %struct.ccp_session, %struct.ccp_session* %255, i32 0, i32 3
  %257 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %256, i32 0, i32 1
  store i32 %254, i32* %257, align 4
  %258 = load %struct.cryptoini*, %struct.cryptoini** %12, align 8
  %259 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %258, i32 0, i32 1
  %260 = load i64, i64* %259, align 8
  %261 = icmp eq i64 %260, 0
  br i1 %261, label %262, label %269

262:                                              ; preds = %245
  %263 = load %struct.auth_hash*, %struct.auth_hash** %10, align 8
  %264 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = load %struct.ccp_session*, %struct.ccp_session** %9, align 8
  %267 = getelementptr inbounds %struct.ccp_session, %struct.ccp_session* %266, i32 0, i32 3
  %268 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %267, i32 0, i32 2
  store i64 %265, i64* %268, align 8
  br label %276

269:                                              ; preds = %245
  %270 = load %struct.cryptoini*, %struct.cryptoini** %12, align 8
  %271 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %270, i32 0, i32 1
  %272 = load i64, i64* %271, align 8
  %273 = load %struct.ccp_session*, %struct.ccp_session** %9, align 8
  %274 = getelementptr inbounds %struct.ccp_session, %struct.ccp_session* %273, i32 0, i32 3
  %275 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %274, i32 0, i32 2
  store i64 %272, i64* %275, align 8
  br label %276

276:                                              ; preds = %269, %262
  %277 = load %struct.ccp_session*, %struct.ccp_session** %9, align 8
  %278 = load %struct.cryptoini*, %struct.cryptoini** %12, align 8
  %279 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = load %struct.cryptoini*, %struct.cryptoini** %12, align 8
  %282 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %281, i32 0, i32 3
  %283 = load i32*, i32** %282, align 8
  %284 = load %struct.cryptoini*, %struct.cryptoini** %12, align 8
  %285 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %284, i32 0, i32 2
  %286 = load i32, i32* %285, align 8
  %287 = call i32 @ccp_init_hmac_digest(%struct.ccp_session* %277, i32 %280, i32* %283, i32 %286)
  br label %288

288:                                              ; preds = %276, %242
  br label %289

289:                                              ; preds = %288, %241
  %290 = load %struct.cryptoini*, %struct.cryptoini** %13, align 8
  %291 = icmp ne %struct.cryptoini* %290, null
  br i1 %291, label %292, label %318

292:                                              ; preds = %289
  %293 = load i32, i32* %14, align 4
  %294 = load %struct.ccp_session*, %struct.ccp_session** %9, align 8
  %295 = getelementptr inbounds %struct.ccp_session, %struct.ccp_session* %294, i32 0, i32 2
  %296 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %295, i32 0, i32 0
  store i32 %293, i32* %296, align 8
  %297 = load i32, i32* %16, align 4
  %298 = load %struct.ccp_session*, %struct.ccp_session** %9, align 8
  %299 = getelementptr inbounds %struct.ccp_session, %struct.ccp_session* %298, i32 0, i32 2
  %300 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %299, i32 0, i32 1
  store i32 %297, i32* %300, align 4
  %301 = load %struct.cryptoini*, %struct.cryptoini** %13, align 8
  %302 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %301, i32 0, i32 3
  %303 = load i32*, i32** %302, align 8
  %304 = icmp ne i32* %303, null
  br i1 %304, label %305, label %317

305:                                              ; preds = %292
  %306 = load %struct.ccp_session*, %struct.ccp_session** %9, align 8
  %307 = load %struct.cryptoini*, %struct.cryptoini** %13, align 8
  %308 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 8
  %310 = load %struct.cryptoini*, %struct.cryptoini** %13, align 8
  %311 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %310, i32 0, i32 3
  %312 = load i32*, i32** %311, align 8
  %313 = load %struct.cryptoini*, %struct.cryptoini** %13, align 8
  %314 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %313, i32 0, i32 2
  %315 = load i32, i32* %314, align 8
  %316 = call i32 @ccp_aes_setkey(%struct.ccp_session* %306, i32 %309, i32* %312, i32 %315)
  br label %317

317:                                              ; preds = %305, %292
  br label %318

318:                                              ; preds = %317, %289
  %319 = load %struct.ccp_session*, %struct.ccp_session** %9, align 8
  %320 = getelementptr inbounds %struct.ccp_session, %struct.ccp_session* %319, i32 0, i32 1
  store i32 1, i32* %320, align 4
  %321 = load %struct.ccp_softc*, %struct.ccp_softc** %8, align 8
  %322 = getelementptr inbounds %struct.ccp_softc, %struct.ccp_softc* %321, i32 0, i32 1
  %323 = call i32 @mtx_unlock(i32* %322)
  store i32 0, i32* %4, align 4
  br label %324

324:                                              ; preds = %318, %179, %146, %134, %124, %116, %102, %98, %64, %40, %23
  %325 = load i32, i32* %4, align 4
  ret i32 %325
}

declare dso_local %struct.ccp_session* @crypto_get_driver_session(i32) #1

declare dso_local i32 @ccp_aes_check_keylen(i32, i32) #1

declare dso_local %struct.ccp_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @nitems(i32) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @ccp_init_hmac_digest(%struct.ccp_session*, i32, i32*, i32) #1

declare dso_local i32 @ccp_aes_setkey(%struct.ccp_session*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
