; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_t1_lib.c_tls_choose_sigalg.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_t1_lib.c_tls_choose_sigalg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i64, %struct.TYPE_28__*, %struct.TYPE_25__*, i64, %struct.TYPE_30__** }
%struct.TYPE_28__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { %struct.TYPE_30__*, %struct.TYPE_26__*, i32*, %struct.TYPE_24__* }
%struct.TYPE_30__ = type { i32, i64, i32, i64 }
%struct.TYPE_26__ = type { i32* }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_25__ = type { %struct.TYPE_26__*, %struct.TYPE_26__* }

@SSL_AD_HANDSHAKE_FAILURE = common dso_local global i32 0, align 4
@SSL_F_TLS_CHOOSE_SIGALG = common dso_local global i32 0, align 4
@SSL_R_NO_SUITABLE_SIGNATURE_ALGORITHM = common dso_local global i32 0, align 4
@SSL_aCERT = common dso_local global i32 0, align 4
@SSL_PKEY_ECC = common dso_local global i64 0, align 8
@EVP_PKEY_RSA_PSS = common dso_local global i64 0, align 8
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_AD_ILLEGAL_PARAMETER = common dso_local global i32 0, align 4
@SSL_R_WRONG_SIGNATURE_TYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_choose_sigalg(%struct.TYPE_29__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_29__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_30__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %6, align 8
  store i32 -1, i32* %7, align 4
  %15 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %18, i32 0, i32 1
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %19, align 8
  %20 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_28__*, %struct.TYPE_28__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %23, i32 0, i32 0
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %24, align 8
  %25 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %26 = call i64 @SSL_IS_TLS13(%struct.TYPE_29__* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %2
  %29 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %30 = call %struct.TYPE_30__* @find_sig_alg(%struct.TYPE_29__* %29, i32* null, i32* null)
  store %struct.TYPE_30__* %30, %struct.TYPE_30__** %6, align 8
  %31 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %32 = icmp eq %struct.TYPE_30__* %31, null
  br i1 %32, label %33, label %43

33:                                               ; preds = %28
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  store i32 1, i32* %3, align 4
  br label %336

37:                                               ; preds = %33
  %38 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %39 = load i32, i32* @SSL_AD_HANDSHAKE_FAILURE, align 4
  %40 = load i32, i32* @SSL_F_TLS_CHOOSE_SIGALG, align 4
  %41 = load i32, i32* @SSL_R_NO_SUITABLE_SIGNATURE_ALGORITHM, align 4
  %42 = call i32 @SSLfatal(%struct.TYPE_29__* %38, i32 %39, i32 %40, i32 %41)
  store i32 0, i32* %3, align 4
  br label %336

43:                                               ; preds = %28
  br label %299

44:                                               ; preds = %2
  %45 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_28__*, %struct.TYPE_28__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %48, i32 0, i32 3
  %50 = load %struct.TYPE_24__*, %struct.TYPE_24__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @SSL_aCERT, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %44
  store i32 1, i32* %3, align 4
  br label %336

57:                                               ; preds = %44
  %58 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %82, label %62

62:                                               ; preds = %57
  %63 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %64 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_25__*, %struct.TYPE_25__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_26__*, %struct.TYPE_26__** %67, align 8
  %69 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %69, i32 0, i32 2
  %71 = load %struct.TYPE_25__*, %struct.TYPE_25__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_26__*, %struct.TYPE_26__** %72, align 8
  %74 = ptrtoint %struct.TYPE_26__* %68 to i64
  %75 = ptrtoint %struct.TYPE_26__* %73 to i64
  %76 = sub i64 %74, %75
  %77 = sdiv exact i64 %76, 8
  %78 = trunc i64 %77 to i32
  %79 = call i32 @ssl_has_cert(%struct.TYPE_29__* %63, i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %62
  store i32 1, i32* %3, align 4
  br label %336

82:                                               ; preds = %62, %57
  %83 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %84 = call i64 @SSL_USE_SIGALGS(%struct.TYPE_29__* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %283

86:                                               ; preds = %82
  %87 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_28__*, %struct.TYPE_28__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %224

94:                                               ; preds = %86
  %95 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %96 = call i64 @tls1_suiteb(%struct.TYPE_29__* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %112

98:                                               ; preds = %94
  %99 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %99, i32 0, i32 2
  %101 = load %struct.TYPE_25__*, %struct.TYPE_25__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_26__*, %struct.TYPE_26__** %102, align 8
  %104 = load i64, i64* @SSL_PKEY_ECC, align 8
  %105 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %103, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = call i32* @EVP_PKEY_get0_EC_KEY(i32* %107)
  store i32* %108, i32** %10, align 8
  %109 = load i32*, i32** %10, align 8
  %110 = call i32 @EC_KEY_get0_group(i32* %109)
  %111 = call i32 @EC_GROUP_get_curve_name(i32 %110)
  store i32 %111, i32* %9, align 4
  br label %113

112:                                              ; preds = %94
  store i32 -1, i32* %9, align 4
  br label %113

113:                                              ; preds = %112, %98
  store i64 0, i64* %8, align 8
  br label %114

114:                                              ; preds = %204, %113
  %115 = load i64, i64* %8, align 8
  %116 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp ult i64 %115, %118
  br i1 %119, label %120, label %207

120:                                              ; preds = %114
  %121 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %121, i32 0, i32 4
  %123 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %122, align 8
  %124 = load i64, i64* %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_30__*, %struct.TYPE_30__** %123, i64 %124
  %126 = load %struct.TYPE_30__*, %struct.TYPE_30__** %125, align 8
  store %struct.TYPE_30__* %126, %struct.TYPE_30__** %6, align 8
  %127 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %127, i32 0, i32 3
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %120
  %132 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %133 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %134 = call i32 @tls12_get_cert_sigalg_idx(%struct.TYPE_29__* %132, %struct.TYPE_30__* %133)
  store i32 %134, i32* %7, align 4
  %135 = icmp eq i32 %134, -1
  br i1 %135, label %136, label %137

136:                                              ; preds = %131
  br label %204

137:                                              ; preds = %131
  br label %162

138:                                              ; preds = %120
  %139 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %139, i32 0, i32 2
  %141 = load %struct.TYPE_25__*, %struct.TYPE_25__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_26__*, %struct.TYPE_26__** %142, align 8
  %144 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %144, i32 0, i32 2
  %146 = load %struct.TYPE_25__*, %struct.TYPE_25__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %146, i32 0, i32 1
  %148 = load %struct.TYPE_26__*, %struct.TYPE_26__** %147, align 8
  %149 = ptrtoint %struct.TYPE_26__* %143 to i64
  %150 = ptrtoint %struct.TYPE_26__* %148 to i64
  %151 = sub i64 %149, %150
  %152 = sdiv exact i64 %151, 8
  %153 = trunc i64 %152 to i32
  store i32 %153, i32* %11, align 4
  %154 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  store i32 %156, i32* %7, align 4
  %157 = load i32, i32* %11, align 4
  %158 = load i32, i32* %7, align 4
  %159 = icmp ne i32 %157, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %138
  br label %204

161:                                              ; preds = %138
  br label %162

162:                                              ; preds = %161, %137
  %163 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %164 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %165 = load i32, i32* %7, align 4
  %166 = call i64 @has_usable_cert(%struct.TYPE_29__* %163, %struct.TYPE_30__* %164, i32 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %169, label %168

168:                                              ; preds = %162
  br label %204

169:                                              ; preds = %162
  %170 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @EVP_PKEY_RSA_PSS, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %175, label %193

175:                                              ; preds = %169
  %176 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %176, i32 0, i32 2
  %178 = load %struct.TYPE_25__*, %struct.TYPE_25__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %178, i32 0, i32 1
  %180 = load %struct.TYPE_26__*, %struct.TYPE_26__** %179, align 8
  %181 = load i32, i32* %7, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %183, i32 0, i32 0
  %185 = load i32*, i32** %184, align 8
  store i32* %185, i32** %12, align 8
  %186 = load i32*, i32** %12, align 8
  %187 = call i32 @EVP_PKEY_get0(i32* %186)
  %188 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %189 = call i32 @rsa_pss_check_min_key_size(i32 %187, %struct.TYPE_30__* %188)
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %192, label %191

191:                                              ; preds = %175
  br label %204

192:                                              ; preds = %175
  br label %193

193:                                              ; preds = %192, %169
  %194 = load i32, i32* %9, align 4
  %195 = icmp eq i32 %194, -1
  br i1 %195, label %202, label %196

196:                                              ; preds = %193
  %197 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = load i32, i32* %9, align 4
  %201 = icmp eq i32 %199, %200
  br i1 %201, label %202, label %203

202:                                              ; preds = %196, %193
  br label %207

203:                                              ; preds = %196
  br label %204

204:                                              ; preds = %203, %191, %168, %160, %136
  %205 = load i64, i64* %8, align 8
  %206 = add i64 %205, 1
  store i64 %206, i64* %8, align 8
  br label %114

207:                                              ; preds = %202, %114
  %208 = load i64, i64* %8, align 8
  %209 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = icmp eq i64 %208, %211
  br i1 %212, label %213, label %223

213:                                              ; preds = %207
  %214 = load i32, i32* %5, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %217, label %216

216:                                              ; preds = %213
  store i32 1, i32* %3, align 4
  br label %336

217:                                              ; preds = %213
  %218 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %219 = load i32, i32* @SSL_AD_HANDSHAKE_FAILURE, align 4
  %220 = load i32, i32* @SSL_F_TLS_CHOOSE_SIGALG, align 4
  %221 = load i32, i32* @SSL_R_NO_SUITABLE_SIGNATURE_ALGORITHM, align 4
  %222 = call i32 @SSLfatal(%struct.TYPE_29__* %218, i32 %219, i32 %220, i32 %221)
  store i32 0, i32* %3, align 4
  br label %336

223:                                              ; preds = %207
  br label %282

224:                                              ; preds = %86
  %225 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %226 = call %struct.TYPE_30__* @tls1_get_legacy_sigalg(%struct.TYPE_29__* %225, i32 -1)
  store %struct.TYPE_30__* %226, %struct.TYPE_30__** %6, align 8
  %227 = icmp eq %struct.TYPE_30__* %226, null
  br i1 %227, label %228, label %238

228:                                              ; preds = %224
  %229 = load i32, i32* %5, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %232, label %231

231:                                              ; preds = %228
  store i32 1, i32* %3, align 4
  br label %336

232:                                              ; preds = %228
  %233 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %234 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %235 = load i32, i32* @SSL_F_TLS_CHOOSE_SIGALG, align 4
  %236 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %237 = call i32 @SSLfatal(%struct.TYPE_29__* %233, i32 %234, i32 %235, i32 %236)
  store i32 0, i32* %3, align 4
  br label %336

238:                                              ; preds = %224
  %239 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %240 = call i64 @tls12_get_psigalgs(%struct.TYPE_29__* %239, i32 1, i64** %13)
  store i64 %240, i64* %14, align 8
  store i64 0, i64* %8, align 8
  br label %241

241:                                              ; preds = %262, %238
  %242 = load i64, i64* %8, align 8
  %243 = load i64, i64* %14, align 8
  %244 = icmp ult i64 %242, %243
  br i1 %244, label %245, label %267

245:                                              ; preds = %241
  %246 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %247 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %246, i32 0, i32 3
  %248 = load i64, i64* %247, align 8
  %249 = load i64*, i64** %13, align 8
  %250 = load i64, i64* %249, align 8
  %251 = icmp eq i64 %248, %250
  br i1 %251, label %252, label %261

252:                                              ; preds = %245
  %253 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %254 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %255 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %256 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = call i64 @has_usable_cert(%struct.TYPE_29__* %253, %struct.TYPE_30__* %254, i32 %257)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %261

260:                                              ; preds = %252
  br label %267

261:                                              ; preds = %252, %245
  br label %262

262:                                              ; preds = %261
  %263 = load i64, i64* %8, align 8
  %264 = add i64 %263, 1
  store i64 %264, i64* %8, align 8
  %265 = load i64*, i64** %13, align 8
  %266 = getelementptr inbounds i64, i64* %265, i32 1
  store i64* %266, i64** %13, align 8
  br label %241

267:                                              ; preds = %260, %241
  %268 = load i64, i64* %8, align 8
  %269 = load i64, i64* %14, align 8
  %270 = icmp eq i64 %268, %269
  br i1 %270, label %271, label %281

271:                                              ; preds = %267
  %272 = load i32, i32* %5, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %275, label %274

274:                                              ; preds = %271
  store i32 1, i32* %3, align 4
  br label %336

275:                                              ; preds = %271
  %276 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %277 = load i32, i32* @SSL_AD_ILLEGAL_PARAMETER, align 4
  %278 = load i32, i32* @SSL_F_TLS_CHOOSE_SIGALG, align 4
  %279 = load i32, i32* @SSL_R_WRONG_SIGNATURE_TYPE, align 4
  %280 = call i32 @SSLfatal(%struct.TYPE_29__* %276, i32 %277, i32 %278, i32 %279)
  store i32 0, i32* %3, align 4
  br label %336

281:                                              ; preds = %267
  br label %282

282:                                              ; preds = %281, %223
  br label %298

283:                                              ; preds = %82
  %284 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %285 = call %struct.TYPE_30__* @tls1_get_legacy_sigalg(%struct.TYPE_29__* %284, i32 -1)
  store %struct.TYPE_30__* %285, %struct.TYPE_30__** %6, align 8
  %286 = icmp eq %struct.TYPE_30__* %285, null
  br i1 %286, label %287, label %297

287:                                              ; preds = %283
  %288 = load i32, i32* %5, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %291, label %290

290:                                              ; preds = %287
  store i32 1, i32* %3, align 4
  br label %336

291:                                              ; preds = %287
  %292 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %293 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %294 = load i32, i32* @SSL_F_TLS_CHOOSE_SIGALG, align 4
  %295 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %296 = call i32 @SSLfatal(%struct.TYPE_29__* %292, i32 %293, i32 %294, i32 %295)
  store i32 0, i32* %3, align 4
  br label %336

297:                                              ; preds = %283
  br label %298

298:                                              ; preds = %297, %282
  br label %299

299:                                              ; preds = %298, %43
  %300 = load i32, i32* %7, align 4
  %301 = icmp eq i32 %300, -1
  br i1 %301, label %302, label %306

302:                                              ; preds = %299
  %303 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %304 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  store i32 %305, i32* %7, align 4
  br label %306

306:                                              ; preds = %302, %299
  %307 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %308 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %307, i32 0, i32 2
  %309 = load %struct.TYPE_25__*, %struct.TYPE_25__** %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %309, i32 0, i32 1
  %311 = load %struct.TYPE_26__*, %struct.TYPE_26__** %310, align 8
  %312 = load i32, i32* %7, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %311, i64 %313
  %315 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %316 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %315, i32 0, i32 1
  %317 = load %struct.TYPE_28__*, %struct.TYPE_28__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %317, i32 0, i32 0
  %319 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %318, i32 0, i32 1
  store %struct.TYPE_26__* %314, %struct.TYPE_26__** %319, align 8
  %320 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %321 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %320, i32 0, i32 1
  %322 = load %struct.TYPE_28__*, %struct.TYPE_28__** %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %322, i32 0, i32 0
  %324 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %323, i32 0, i32 1
  %325 = load %struct.TYPE_26__*, %struct.TYPE_26__** %324, align 8
  %326 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %327 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %326, i32 0, i32 2
  %328 = load %struct.TYPE_25__*, %struct.TYPE_25__** %327, align 8
  %329 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %328, i32 0, i32 0
  store %struct.TYPE_26__* %325, %struct.TYPE_26__** %329, align 8
  %330 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %331 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %332 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %331, i32 0, i32 1
  %333 = load %struct.TYPE_28__*, %struct.TYPE_28__** %332, align 8
  %334 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %333, i32 0, i32 0
  %335 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %334, i32 0, i32 0
  store %struct.TYPE_30__* %330, %struct.TYPE_30__** %335, align 8
  store i32 1, i32* %3, align 4
  br label %336

336:                                              ; preds = %306, %291, %290, %275, %274, %232, %231, %217, %216, %81, %56, %37, %36
  %337 = load i32, i32* %3, align 4
  ret i32 %337
}

declare dso_local i64 @SSL_IS_TLS13(%struct.TYPE_29__*) #1

declare dso_local %struct.TYPE_30__* @find_sig_alg(%struct.TYPE_29__*, i32*, i32*) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_29__*, i32, i32, i32) #1

declare dso_local i32 @ssl_has_cert(%struct.TYPE_29__*, i32) #1

declare dso_local i64 @SSL_USE_SIGALGS(%struct.TYPE_29__*) #1

declare dso_local i64 @tls1_suiteb(%struct.TYPE_29__*) #1

declare dso_local i32* @EVP_PKEY_get0_EC_KEY(i32*) #1

declare dso_local i32 @EC_GROUP_get_curve_name(i32) #1

declare dso_local i32 @EC_KEY_get0_group(i32*) #1

declare dso_local i32 @tls12_get_cert_sigalg_idx(%struct.TYPE_29__*, %struct.TYPE_30__*) #1

declare dso_local i64 @has_usable_cert(%struct.TYPE_29__*, %struct.TYPE_30__*, i32) #1

declare dso_local i32 @rsa_pss_check_min_key_size(i32, %struct.TYPE_30__*) #1

declare dso_local i32 @EVP_PKEY_get0(i32*) #1

declare dso_local %struct.TYPE_30__* @tls1_get_legacy_sigalg(%struct.TYPE_29__*, i32) #1

declare dso_local i64 @tls12_get_psigalgs(%struct.TYPE_29__*, i32, i64**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
