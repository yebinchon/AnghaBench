; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rsa/extr_rsa_chk.c_RSA_check_key_ex.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rsa/extr_rsa_chk.c_RSA_check_key_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32*, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32* }
%struct.TYPE_5__ = type { i32*, i32*, i32*, i32* }

@RSA_F_RSA_CHECK_KEY_EX = common dso_local global i32 0, align 4
@RSA_R_VALUE_MISSING = common dso_local global i32 0, align 4
@RSA_ASN1_VERSION_MULTI = common dso_local global i64 0, align 8
@RSA_R_INVALID_MULTI_PRIME_KEY = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@RSA_R_BAD_E_VALUE = common dso_local global i32 0, align 4
@BN_prime_checks = common dso_local global i32 0, align 4
@RSA_R_P_NOT_PRIME = common dso_local global i32 0, align 4
@RSA_R_Q_NOT_PRIME = common dso_local global i32 0, align 4
@RSA_R_MP_R_NOT_PRIME = common dso_local global i32 0, align 4
@RSA_R_N_DOES_NOT_EQUAL_PRODUCT_OF_PRIMES = common dso_local global i32 0, align 4
@RSA_R_N_DOES_NOT_EQUAL_P_Q = common dso_local global i32 0, align 4
@RSA_R_D_E_NOT_CONGRUENT_TO_1 = common dso_local global i32 0, align 4
@RSA_R_DMP1_NOT_CONGRUENT_TO_D = common dso_local global i32 0, align 4
@RSA_R_DMQ1_NOT_CONGRUENT_TO_D = common dso_local global i32 0, align 4
@RSA_R_IQMP_NOT_INVERSE_OF_Q = common dso_local global i32 0, align 4
@RSA_R_MP_EXPONENT_NOT_CONGRUENT_TO_D = common dso_local global i32 0, align 4
@RSA_R_MP_COEFFICIENT_NOT_INVERSE_OF_R = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RSA_check_key_ex(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 1, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 4
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %40, label %20

20:                                               ; preds = %2
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 5
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %40, label %25

25:                                               ; preds = %20
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 9
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %40, label %30

30:                                               ; preds = %25
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 8
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %35, %30, %25, %20, %2
  %41 = load i32, i32* @RSA_F_RSA_CHECK_KEY_EX, align 4
  %42 = load i32, i32* @RSA_R_VALUE_MISSING, align 4
  %43 = call i32 @RSAerr(i32 %41, i32 %42)
  store i32 0, i32* %3, align 4
  br label %507

44:                                               ; preds = %35
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @RSA_ASN1_VERSION_MULTI, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %71

50:                                               ; preds = %44
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @sk_RSA_PRIME_INFO_num(i32 %53)
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %13, align 4
  %56 = icmp sle i32 %55, 0
  br i1 %56, label %66, label %57

57:                                               ; preds = %50
  %58 = load i32, i32* %13, align 4
  %59 = add nsw i32 %58, 2
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 9
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @BN_num_bits(i32* %62)
  %64 = call i32 @rsa_multip_cap(i32 %63)
  %65 = icmp sgt i32 %59, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %57, %50
  %67 = load i32, i32* @RSA_F_RSA_CHECK_KEY_EX, align 4
  %68 = load i32, i32* @RSA_R_INVALID_MULTI_PRIME_KEY, align 4
  %69 = call i32 @RSAerr(i32 %67, i32 %68)
  store i32 0, i32* %3, align 4
  br label %507

70:                                               ; preds = %57
  br label %71

71:                                               ; preds = %70, %44
  %72 = call i32* (...) @BN_new()
  store i32* %72, i32** %6, align 8
  %73 = call i32* (...) @BN_new()
  store i32* %73, i32** %7, align 8
  %74 = call i32* (...) @BN_new()
  store i32* %74, i32** %8, align 8
  %75 = call i32* (...) @BN_new()
  store i32* %75, i32** %9, align 8
  %76 = call i32* (...) @BN_new()
  store i32* %76, i32** %10, align 8
  %77 = call i32* (...) @BN_CTX_new()
  store i32* %77, i32** %11, align 8
  %78 = load i32*, i32** %6, align 8
  %79 = icmp eq i32* %78, null
  br i1 %79, label %95, label %80

80:                                               ; preds = %71
  %81 = load i32*, i32** %7, align 8
  %82 = icmp eq i32* %81, null
  br i1 %82, label %95, label %83

83:                                               ; preds = %80
  %84 = load i32*, i32** %8, align 8
  %85 = icmp eq i32* %84, null
  br i1 %85, label %95, label %86

86:                                               ; preds = %83
  %87 = load i32*, i32** %9, align 8
  %88 = icmp eq i32* %87, null
  br i1 %88, label %95, label %89

89:                                               ; preds = %86
  %90 = load i32*, i32** %10, align 8
  %91 = icmp eq i32* %90, null
  br i1 %91, label %95, label %92

92:                                               ; preds = %89
  %93 = load i32*, i32** %11, align 8
  %94 = icmp eq i32* %93, null
  br i1 %94, label %95, label %99

95:                                               ; preds = %92, %89, %86, %83, %80, %71
  store i32 -1, i32* %12, align 4
  %96 = load i32, i32* @RSA_F_RSA_CHECK_KEY_EX, align 4
  %97 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %98 = call i32 @RSAerr(i32 %96, i32 %97)
  br label %493

99:                                               ; preds = %92
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 8
  %102 = load i32*, i32** %101, align 8
  %103 = call i64 @BN_is_one(i32* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %99
  store i32 0, i32* %12, align 4
  %106 = load i32, i32* @RSA_F_RSA_CHECK_KEY_EX, align 4
  %107 = load i32, i32* @RSA_R_BAD_E_VALUE, align 4
  %108 = call i32 @RSAerr(i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %105, %99
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 8
  %112 = load i32*, i32** %111, align 8
  %113 = call i32 @BN_is_odd(i32* %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %119, label %115

115:                                              ; preds = %109
  store i32 0, i32* %12, align 4
  %116 = load i32, i32* @RSA_F_RSA_CHECK_KEY_EX, align 4
  %117 = load i32, i32* @RSA_R_BAD_E_VALUE, align 4
  %118 = call i32 @RSAerr(i32 %116, i32 %117)
  br label %119

119:                                              ; preds = %115, %109
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 4
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* @BN_prime_checks, align 4
  %124 = load i32*, i32** %5, align 8
  %125 = call i32 @BN_is_prime_ex(i32* %122, i32 %123, i32* null, i32* %124)
  %126 = icmp ne i32 %125, 1
  br i1 %126, label %127, label %131

127:                                              ; preds = %119
  store i32 0, i32* %12, align 4
  %128 = load i32, i32* @RSA_F_RSA_CHECK_KEY_EX, align 4
  %129 = load i32, i32* @RSA_R_P_NOT_PRIME, align 4
  %130 = call i32 @RSAerr(i32 %128, i32 %129)
  br label %131

131:                                              ; preds = %127, %119
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 5
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* @BN_prime_checks, align 4
  %136 = load i32*, i32** %5, align 8
  %137 = call i32 @BN_is_prime_ex(i32* %134, i32 %135, i32* null, i32* %136)
  %138 = icmp ne i32 %137, 1
  br i1 %138, label %139, label %143

139:                                              ; preds = %131
  store i32 0, i32* %12, align 4
  %140 = load i32, i32* @RSA_F_RSA_CHECK_KEY_EX, align 4
  %141 = load i32, i32* @RSA_R_Q_NOT_PRIME, align 4
  %142 = call i32 @RSAerr(i32 %140, i32 %141)
  br label %143

143:                                              ; preds = %139, %131
  store i32 0, i32* %14, align 4
  br label %144

144:                                              ; preds = %166, %143
  %145 = load i32, i32* %14, align 4
  %146 = load i32, i32* %13, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %169

148:                                              ; preds = %144
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* %14, align 4
  %153 = call %struct.TYPE_5__* @sk_RSA_PRIME_INFO_value(i32 %151, i32 %152)
  store %struct.TYPE_5__* %153, %struct.TYPE_5__** %15, align 8
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 1
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* @BN_prime_checks, align 4
  %158 = load i32*, i32** %5, align 8
  %159 = call i32 @BN_is_prime_ex(i32* %156, i32 %157, i32* null, i32* %158)
  %160 = icmp ne i32 %159, 1
  br i1 %160, label %161, label %165

161:                                              ; preds = %148
  store i32 0, i32* %12, align 4
  %162 = load i32, i32* @RSA_F_RSA_CHECK_KEY_EX, align 4
  %163 = load i32, i32* @RSA_R_MP_R_NOT_PRIME, align 4
  %164 = call i32 @RSAerr(i32 %162, i32 %163)
  br label %165

165:                                              ; preds = %161, %148
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %14, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %14, align 4
  br label %144

169:                                              ; preds = %144
  %170 = load i32*, i32** %6, align 8
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 4
  %173 = load i32*, i32** %172, align 8
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 5
  %176 = load i32*, i32** %175, align 8
  %177 = load i32*, i32** %11, align 8
  %178 = call i32 @BN_mul(i32* %170, i32* %173, i32* %176, i32* %177)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %181, label %180

180:                                              ; preds = %169
  store i32 -1, i32* %12, align 4
  br label %493

181:                                              ; preds = %169
  store i32 0, i32* %14, align 4
  br label %182

182:                                              ; preds = %202, %181
  %183 = load i32, i32* %14, align 4
  %184 = load i32, i32* %13, align 4
  %185 = icmp slt i32 %183, %184
  br i1 %185, label %186, label %205

186:                                              ; preds = %182
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* %14, align 4
  %191 = call %struct.TYPE_5__* @sk_RSA_PRIME_INFO_value(i32 %189, i32 %190)
  store %struct.TYPE_5__* %191, %struct.TYPE_5__** %15, align 8
  %192 = load i32*, i32** %6, align 8
  %193 = load i32*, i32** %6, align 8
  %194 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 1
  %196 = load i32*, i32** %195, align 8
  %197 = load i32*, i32** %11, align 8
  %198 = call i32 @BN_mul(i32* %192, i32* %193, i32* %196, i32* %197)
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %201, label %200

200:                                              ; preds = %186
  store i32 -1, i32* %12, align 4
  br label %493

201:                                              ; preds = %186
  br label %202

202:                                              ; preds = %201
  %203 = load i32, i32* %14, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %14, align 4
  br label %182

205:                                              ; preds = %182
  %206 = load i32*, i32** %6, align 8
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 9
  %209 = load i32*, i32** %208, align 8
  %210 = call i64 @BN_cmp(i32* %206, i32* %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %224

212:                                              ; preds = %205
  store i32 0, i32* %12, align 4
  %213 = load i32, i32* %13, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %219

215:                                              ; preds = %212
  %216 = load i32, i32* @RSA_F_RSA_CHECK_KEY_EX, align 4
  %217 = load i32, i32* @RSA_R_N_DOES_NOT_EQUAL_PRODUCT_OF_PRIMES, align 4
  %218 = call i32 @RSAerr(i32 %216, i32 %217)
  br label %223

219:                                              ; preds = %212
  %220 = load i32, i32* @RSA_F_RSA_CHECK_KEY_EX, align 4
  %221 = load i32, i32* @RSA_R_N_DOES_NOT_EQUAL_P_Q, align 4
  %222 = call i32 @RSAerr(i32 %220, i32 %221)
  br label %223

223:                                              ; preds = %219, %215
  br label %224

224:                                              ; preds = %223, %205
  %225 = load i32*, i32** %6, align 8
  %226 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 4
  %228 = load i32*, i32** %227, align 8
  %229 = call i32 (...) @BN_value_one()
  %230 = call i32 @BN_sub(i32* %225, i32* %228, i32 %229)
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %233, label %232

232:                                              ; preds = %224
  store i32 -1, i32* %12, align 4
  br label %493

233:                                              ; preds = %224
  %234 = load i32*, i32** %7, align 8
  %235 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %236 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %235, i32 0, i32 5
  %237 = load i32*, i32** %236, align 8
  %238 = call i32 (...) @BN_value_one()
  %239 = call i32 @BN_sub(i32* %234, i32* %237, i32 %238)
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %242, label %241

241:                                              ; preds = %233
  store i32 -1, i32* %12, align 4
  br label %493

242:                                              ; preds = %233
  %243 = load i32*, i32** %9, align 8
  %244 = load i32*, i32** %6, align 8
  %245 = load i32*, i32** %7, align 8
  %246 = load i32*, i32** %11, align 8
  %247 = call i32 @BN_mul(i32* %243, i32* %244, i32* %245, i32* %246)
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %250, label %249

249:                                              ; preds = %242
  store i32 -1, i32* %12, align 4
  br label %493

250:                                              ; preds = %242
  %251 = load i32*, i32** %10, align 8
  %252 = load i32*, i32** %6, align 8
  %253 = load i32*, i32** %7, align 8
  %254 = load i32*, i32** %11, align 8
  %255 = call i32 @BN_gcd(i32* %251, i32* %252, i32* %253, i32* %254)
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %258, label %257

257:                                              ; preds = %250
  store i32 -1, i32* %12, align 4
  br label %493

258:                                              ; preds = %250
  store i32 0, i32* %14, align 4
  br label %259

259:                                              ; preds = %294, %258
  %260 = load i32, i32* %14, align 4
  %261 = load i32, i32* %13, align 4
  %262 = icmp slt i32 %260, %261
  br i1 %262, label %263, label %297

263:                                              ; preds = %259
  %264 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %265 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 8
  %267 = load i32, i32* %14, align 4
  %268 = call %struct.TYPE_5__* @sk_RSA_PRIME_INFO_value(i32 %266, i32 %267)
  store %struct.TYPE_5__* %268, %struct.TYPE_5__** %15, align 8
  %269 = load i32*, i32** %8, align 8
  %270 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %271 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %270, i32 0, i32 1
  %272 = load i32*, i32** %271, align 8
  %273 = call i32 (...) @BN_value_one()
  %274 = call i32 @BN_sub(i32* %269, i32* %272, i32 %273)
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %277, label %276

276:                                              ; preds = %263
  store i32 -1, i32* %12, align 4
  br label %493

277:                                              ; preds = %263
  %278 = load i32*, i32** %9, align 8
  %279 = load i32*, i32** %9, align 8
  %280 = load i32*, i32** %8, align 8
  %281 = load i32*, i32** %11, align 8
  %282 = call i32 @BN_mul(i32* %278, i32* %279, i32* %280, i32* %281)
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %285, label %284

284:                                              ; preds = %277
  store i32 -1, i32* %12, align 4
  br label %493

285:                                              ; preds = %277
  %286 = load i32*, i32** %10, align 8
  %287 = load i32*, i32** %10, align 8
  %288 = load i32*, i32** %8, align 8
  %289 = load i32*, i32** %11, align 8
  %290 = call i32 @BN_gcd(i32* %286, i32* %287, i32* %288, i32* %289)
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %293, label %292

292:                                              ; preds = %285
  store i32 -1, i32* %12, align 4
  br label %493

293:                                              ; preds = %285
  br label %294

294:                                              ; preds = %293
  %295 = load i32, i32* %14, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %14, align 4
  br label %259

297:                                              ; preds = %259
  %298 = load i32*, i32** %8, align 8
  %299 = load i32*, i32** %9, align 8
  %300 = load i32*, i32** %10, align 8
  %301 = load i32*, i32** %11, align 8
  %302 = call i32 @BN_div(i32* %298, i32* null, i32* %299, i32* %300, i32* %301)
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %305, label %304

304:                                              ; preds = %297
  store i32 -1, i32* %12, align 4
  br label %493

305:                                              ; preds = %297
  %306 = load i32*, i32** %6, align 8
  %307 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %308 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %307, i32 0, i32 1
  %309 = load i32*, i32** %308, align 8
  %310 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %311 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %310, i32 0, i32 8
  %312 = load i32*, i32** %311, align 8
  %313 = load i32*, i32** %8, align 8
  %314 = load i32*, i32** %11, align 8
  %315 = call i32 @BN_mod_mul(i32* %306, i32* %309, i32* %312, i32* %313, i32* %314)
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %318, label %317

317:                                              ; preds = %305
  store i32 -1, i32* %12, align 4
  br label %493

318:                                              ; preds = %305
  %319 = load i32*, i32** %6, align 8
  %320 = call i64 @BN_is_one(i32* %319)
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %326, label %322

322:                                              ; preds = %318
  store i32 0, i32* %12, align 4
  %323 = load i32, i32* @RSA_F_RSA_CHECK_KEY_EX, align 4
  %324 = load i32, i32* @RSA_R_D_E_NOT_CONGRUENT_TO_1, align 4
  %325 = call i32 @RSAerr(i32 %323, i32 %324)
  br label %326

326:                                              ; preds = %322, %318
  %327 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %328 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %327, i32 0, i32 7
  %329 = load i32*, i32** %328, align 8
  %330 = icmp ne i32* %329, null
  br i1 %330, label %331, label %425

331:                                              ; preds = %326
  %332 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %333 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %332, i32 0, i32 6
  %334 = load i32*, i32** %333, align 8
  %335 = icmp ne i32* %334, null
  br i1 %335, label %336, label %425

336:                                              ; preds = %331
  %337 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %338 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %337, i32 0, i32 3
  %339 = load i32*, i32** %338, align 8
  %340 = icmp ne i32* %339, null
  br i1 %340, label %341, label %425

341:                                              ; preds = %336
  %342 = load i32*, i32** %6, align 8
  %343 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %344 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %343, i32 0, i32 4
  %345 = load i32*, i32** %344, align 8
  %346 = call i32 (...) @BN_value_one()
  %347 = call i32 @BN_sub(i32* %342, i32* %345, i32 %346)
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %350, label %349

349:                                              ; preds = %341
  store i32 -1, i32* %12, align 4
  br label %493

350:                                              ; preds = %341
  %351 = load i32*, i32** %7, align 8
  %352 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %353 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %352, i32 0, i32 1
  %354 = load i32*, i32** %353, align 8
  %355 = load i32*, i32** %6, align 8
  %356 = load i32*, i32** %11, align 8
  %357 = call i32 @BN_mod(i32* %351, i32* %354, i32* %355, i32* %356)
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %360, label %359

359:                                              ; preds = %350
  store i32 -1, i32* %12, align 4
  br label %493

360:                                              ; preds = %350
  %361 = load i32*, i32** %7, align 8
  %362 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %363 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %362, i32 0, i32 7
  %364 = load i32*, i32** %363, align 8
  %365 = call i64 @BN_cmp(i32* %361, i32* %364)
  %366 = icmp ne i64 %365, 0
  br i1 %366, label %367, label %371

367:                                              ; preds = %360
  store i32 0, i32* %12, align 4
  %368 = load i32, i32* @RSA_F_RSA_CHECK_KEY_EX, align 4
  %369 = load i32, i32* @RSA_R_DMP1_NOT_CONGRUENT_TO_D, align 4
  %370 = call i32 @RSAerr(i32 %368, i32 %369)
  br label %371

371:                                              ; preds = %367, %360
  %372 = load i32*, i32** %6, align 8
  %373 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %374 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %373, i32 0, i32 5
  %375 = load i32*, i32** %374, align 8
  %376 = call i32 (...) @BN_value_one()
  %377 = call i32 @BN_sub(i32* %372, i32* %375, i32 %376)
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %380, label %379

379:                                              ; preds = %371
  store i32 -1, i32* %12, align 4
  br label %493

380:                                              ; preds = %371
  %381 = load i32*, i32** %7, align 8
  %382 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %383 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %382, i32 0, i32 1
  %384 = load i32*, i32** %383, align 8
  %385 = load i32*, i32** %6, align 8
  %386 = load i32*, i32** %11, align 8
  %387 = call i32 @BN_mod(i32* %381, i32* %384, i32* %385, i32* %386)
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %390, label %389

389:                                              ; preds = %380
  store i32 -1, i32* %12, align 4
  br label %493

390:                                              ; preds = %380
  %391 = load i32*, i32** %7, align 8
  %392 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %393 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %392, i32 0, i32 6
  %394 = load i32*, i32** %393, align 8
  %395 = call i64 @BN_cmp(i32* %391, i32* %394)
  %396 = icmp ne i64 %395, 0
  br i1 %396, label %397, label %401

397:                                              ; preds = %390
  store i32 0, i32* %12, align 4
  %398 = load i32, i32* @RSA_F_RSA_CHECK_KEY_EX, align 4
  %399 = load i32, i32* @RSA_R_DMQ1_NOT_CONGRUENT_TO_D, align 4
  %400 = call i32 @RSAerr(i32 %398, i32 %399)
  br label %401

401:                                              ; preds = %397, %390
  %402 = load i32*, i32** %6, align 8
  %403 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %404 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %403, i32 0, i32 5
  %405 = load i32*, i32** %404, align 8
  %406 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %407 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %406, i32 0, i32 4
  %408 = load i32*, i32** %407, align 8
  %409 = load i32*, i32** %11, align 8
  %410 = call i32 @BN_mod_inverse(i32* %402, i32* %405, i32* %408, i32* %409)
  %411 = icmp ne i32 %410, 0
  br i1 %411, label %413, label %412

412:                                              ; preds = %401
  store i32 -1, i32* %12, align 4
  br label %493

413:                                              ; preds = %401
  %414 = load i32*, i32** %6, align 8
  %415 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %416 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %415, i32 0, i32 3
  %417 = load i32*, i32** %416, align 8
  %418 = call i64 @BN_cmp(i32* %414, i32* %417)
  %419 = icmp ne i64 %418, 0
  br i1 %419, label %420, label %424

420:                                              ; preds = %413
  store i32 0, i32* %12, align 4
  %421 = load i32, i32* @RSA_F_RSA_CHECK_KEY_EX, align 4
  %422 = load i32, i32* @RSA_R_IQMP_NOT_INVERSE_OF_Q, align 4
  %423 = call i32 @RSAerr(i32 %421, i32 %422)
  br label %424

424:                                              ; preds = %420, %413
  br label %425

425:                                              ; preds = %424, %336, %331, %326
  store i32 0, i32* %14, align 4
  br label %426

426:                                              ; preds = %489, %425
  %427 = load i32, i32* %14, align 4
  %428 = load i32, i32* %13, align 4
  %429 = icmp slt i32 %427, %428
  br i1 %429, label %430, label %492

430:                                              ; preds = %426
  %431 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %432 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %431, i32 0, i32 2
  %433 = load i32, i32* %432, align 8
  %434 = load i32, i32* %14, align 4
  %435 = call %struct.TYPE_5__* @sk_RSA_PRIME_INFO_value(i32 %433, i32 %434)
  store %struct.TYPE_5__* %435, %struct.TYPE_5__** %15, align 8
  %436 = load i32*, i32** %6, align 8
  %437 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %438 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %437, i32 0, i32 1
  %439 = load i32*, i32** %438, align 8
  %440 = call i32 (...) @BN_value_one()
  %441 = call i32 @BN_sub(i32* %436, i32* %439, i32 %440)
  %442 = icmp ne i32 %441, 0
  br i1 %442, label %444, label %443

443:                                              ; preds = %430
  store i32 -1, i32* %12, align 4
  br label %493

444:                                              ; preds = %430
  %445 = load i32*, i32** %7, align 8
  %446 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %447 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %446, i32 0, i32 1
  %448 = load i32*, i32** %447, align 8
  %449 = load i32*, i32** %6, align 8
  %450 = load i32*, i32** %11, align 8
  %451 = call i32 @BN_mod(i32* %445, i32* %448, i32* %449, i32* %450)
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %454, label %453

453:                                              ; preds = %444
  store i32 -1, i32* %12, align 4
  br label %493

454:                                              ; preds = %444
  %455 = load i32*, i32** %7, align 8
  %456 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %457 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %456, i32 0, i32 3
  %458 = load i32*, i32** %457, align 8
  %459 = call i64 @BN_cmp(i32* %455, i32* %458)
  %460 = icmp ne i64 %459, 0
  br i1 %460, label %461, label %465

461:                                              ; preds = %454
  store i32 0, i32* %12, align 4
  %462 = load i32, i32* @RSA_F_RSA_CHECK_KEY_EX, align 4
  %463 = load i32, i32* @RSA_R_MP_EXPONENT_NOT_CONGRUENT_TO_D, align 4
  %464 = call i32 @RSAerr(i32 %462, i32 %463)
  br label %465

465:                                              ; preds = %461, %454
  %466 = load i32*, i32** %6, align 8
  %467 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %468 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %467, i32 0, i32 2
  %469 = load i32*, i32** %468, align 8
  %470 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %471 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %470, i32 0, i32 1
  %472 = load i32*, i32** %471, align 8
  %473 = load i32*, i32** %11, align 8
  %474 = call i32 @BN_mod_inverse(i32* %466, i32* %469, i32* %472, i32* %473)
  %475 = icmp ne i32 %474, 0
  br i1 %475, label %477, label %476

476:                                              ; preds = %465
  store i32 -1, i32* %12, align 4
  br label %493

477:                                              ; preds = %465
  %478 = load i32*, i32** %6, align 8
  %479 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %480 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %479, i32 0, i32 0
  %481 = load i32*, i32** %480, align 8
  %482 = call i64 @BN_cmp(i32* %478, i32* %481)
  %483 = icmp ne i64 %482, 0
  br i1 %483, label %484, label %488

484:                                              ; preds = %477
  store i32 0, i32* %12, align 4
  %485 = load i32, i32* @RSA_F_RSA_CHECK_KEY_EX, align 4
  %486 = load i32, i32* @RSA_R_MP_COEFFICIENT_NOT_INVERSE_OF_R, align 4
  %487 = call i32 @RSAerr(i32 %485, i32 %486)
  br label %488

488:                                              ; preds = %484, %477
  br label %489

489:                                              ; preds = %488
  %490 = load i32, i32* %14, align 4
  %491 = add nsw i32 %490, 1
  store i32 %491, i32* %14, align 4
  br label %426

492:                                              ; preds = %426
  br label %493

493:                                              ; preds = %492, %476, %453, %443, %412, %389, %379, %359, %349, %317, %304, %292, %284, %276, %257, %249, %241, %232, %200, %180, %95
  %494 = load i32*, i32** %6, align 8
  %495 = call i32 @BN_free(i32* %494)
  %496 = load i32*, i32** %7, align 8
  %497 = call i32 @BN_free(i32* %496)
  %498 = load i32*, i32** %8, align 8
  %499 = call i32 @BN_free(i32* %498)
  %500 = load i32*, i32** %9, align 8
  %501 = call i32 @BN_free(i32* %500)
  %502 = load i32*, i32** %10, align 8
  %503 = call i32 @BN_free(i32* %502)
  %504 = load i32*, i32** %11, align 8
  %505 = call i32 @BN_CTX_free(i32* %504)
  %506 = load i32, i32* %12, align 4
  store i32 %506, i32* %3, align 4
  br label %507

507:                                              ; preds = %493, %66, %40
  %508 = load i32, i32* %3, align 4
  ret i32 %508
}

declare dso_local i32 @RSAerr(i32, i32) #1

declare dso_local i32 @sk_RSA_PRIME_INFO_num(i32) #1

declare dso_local i32 @rsa_multip_cap(i32) #1

declare dso_local i32 @BN_num_bits(i32*) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i64 @BN_is_one(i32*) #1

declare dso_local i32 @BN_is_odd(i32*) #1

declare dso_local i32 @BN_is_prime_ex(i32*, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_5__* @sk_RSA_PRIME_INFO_value(i32, i32) #1

declare dso_local i32 @BN_mul(i32*, i32*, i32*, i32*) #1

declare dso_local i64 @BN_cmp(i32*, i32*) #1

declare dso_local i32 @BN_sub(i32*, i32*, i32) #1

declare dso_local i32 @BN_value_one(...) #1

declare dso_local i32 @BN_gcd(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_div(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_mod_mul(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_mod(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_mod_inverse(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_free(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
