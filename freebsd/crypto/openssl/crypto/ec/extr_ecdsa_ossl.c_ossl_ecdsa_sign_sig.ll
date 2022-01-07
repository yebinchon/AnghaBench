; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ecdsa_ossl.c_ossl_ecdsa_sign_sig.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ecdsa_ossl.c_ossl_ecdsa_sign_sig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32*, i32* }
%struct.TYPE_8__ = type { i32 }

@EC_F_OSSL_ECDSA_SIGN_SIG = common dso_local global i32 0, align 4
@ERR_R_PASSED_NULL_PARAMETER = common dso_local global i32 0, align 4
@EC_R_MISSING_PRIVATE_KEY = common dso_local global i32 0, align 4
@EC_R_CURVE_DOES_NOT_SUPPORT_SIGNING = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@ERR_R_BN_LIB = common dso_local global i32 0, align 4
@ERR_R_ECDSA_LIB = common dso_local global i32 0, align 4
@EC_R_NEED_NEW_SETUP_VALUES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @ossl_ecdsa_sign_sig(i8* %0, i32 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_8__*, align 8
  %21 = alloca %struct.TYPE_9__*, align 8
  %22 = alloca i32*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %12, align 4
  store i32* null, i32** %14, align 8
  store i32* null, i32** %16, align 8
  store i32* null, i32** %19, align 8
  %23 = load i32*, i32** %11, align 8
  %24 = call %struct.TYPE_8__* @EC_KEY_get0_group(i32* %23)
  store %struct.TYPE_8__* %24, %struct.TYPE_8__** %20, align 8
  %25 = load i32*, i32** %11, align 8
  %26 = call i32* @EC_KEY_get0_private_key(i32* %25)
  store i32* %26, i32** %22, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %28 = icmp eq %struct.TYPE_8__* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %5
  %30 = load i32, i32* @EC_F_OSSL_ECDSA_SIGN_SIG, align 4
  %31 = load i32, i32* @ERR_R_PASSED_NULL_PARAMETER, align 4
  %32 = call i32 @ECerr(i32 %30, i32 %31)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %6, align 8
  br label %259

33:                                               ; preds = %5
  %34 = load i32*, i32** %22, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load i32, i32* @EC_F_OSSL_ECDSA_SIGN_SIG, align 4
  %38 = load i32, i32* @EC_R_MISSING_PRIVATE_KEY, align 4
  %39 = call i32 @ECerr(i32 %37, i32 %38)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %6, align 8
  br label %259

40:                                               ; preds = %33
  %41 = load i32*, i32** %11, align 8
  %42 = call i32 @EC_KEY_can_sign(i32* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* @EC_F_OSSL_ECDSA_SIGN_SIG, align 4
  %46 = load i32, i32* @EC_R_CURVE_DOES_NOT_SUPPORT_SIGNING, align 4
  %47 = call i32 @ECerr(i32 %45, i32 %46)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %6, align 8
  br label %259

48:                                               ; preds = %40
  %49 = call %struct.TYPE_9__* (...) @ECDSA_SIG_new()
  store %struct.TYPE_9__* %49, %struct.TYPE_9__** %21, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %51 = icmp eq %struct.TYPE_9__* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load i32, i32* @EC_F_OSSL_ECDSA_SIGN_SIG, align 4
  %54 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %55 = call i32 @ECerr(i32 %53, i32 %54)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %6, align 8
  br label %259

56:                                               ; preds = %48
  %57 = call i8* (...) @BN_new()
  %58 = bitcast i8* %57 to i32*
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  store i32* %58, i32** %60, align 8
  %61 = call i8* (...) @BN_new()
  %62 = bitcast i8* %61 to i32*
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  store i32* %62, i32** %64, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = icmp eq i32* %67, null
  br i1 %68, label %74, label %69

69:                                               ; preds = %56
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = icmp eq i32* %72, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %69, %56
  %75 = load i32, i32* @EC_F_OSSL_ECDSA_SIGN_SIG, align 4
  %76 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %77 = call i32 @ECerr(i32 %75, i32 %76)
  br label %245

78:                                               ; preds = %69
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  store i32* %81, i32** %15, align 8
  %82 = call i32* (...) @BN_CTX_new()
  store i32* %82, i32** %19, align 8
  %83 = icmp eq i32* %82, null
  br i1 %83, label %88, label %84

84:                                               ; preds = %78
  %85 = call i8* (...) @BN_new()
  %86 = bitcast i8* %85 to i32*
  store i32* %86, i32** %16, align 8
  %87 = icmp eq i32* %86, null
  br i1 %87, label %88, label %92

88:                                               ; preds = %84, %78
  %89 = load i32, i32* @EC_F_OSSL_ECDSA_SIGN_SIG, align 4
  %90 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %91 = call i32 @ECerr(i32 %89, i32 %90)
  br label %245

92:                                               ; preds = %84
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %94 = call i32* @EC_GROUP_get0_order(%struct.TYPE_8__* %93)
  store i32* %94, i32** %17, align 8
  %95 = load i32*, i32** %17, align 8
  %96 = call i32 @BN_num_bits(i32* %95)
  store i32 %96, i32* %13, align 4
  %97 = load i32, i32* %8, align 4
  %98 = mul nsw i32 8, %97
  %99 = load i32, i32* %13, align 4
  %100 = icmp sgt i32 %98, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %92
  %102 = load i32, i32* %13, align 4
  %103 = add nsw i32 %102, 7
  %104 = sdiv i32 %103, 8
  store i32 %104, i32* %8, align 4
  br label %105

105:                                              ; preds = %101, %92
  %106 = load i8*, i8** %7, align 8
  %107 = load i32, i32* %8, align 4
  %108 = load i32*, i32** %16, align 8
  %109 = call i32 @BN_bin2bn(i8* %106, i32 %107, i32* %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %105
  %112 = load i32, i32* @EC_F_OSSL_ECDSA_SIGN_SIG, align 4
  %113 = load i32, i32* @ERR_R_BN_LIB, align 4
  %114 = call i32 @ECerr(i32 %112, i32 %113)
  br label %245

115:                                              ; preds = %105
  %116 = load i32, i32* %8, align 4
  %117 = mul nsw i32 8, %116
  %118 = load i32, i32* %13, align 4
  %119 = icmp sgt i32 %117, %118
  br i1 %119, label %120, label %132

120:                                              ; preds = %115
  %121 = load i32*, i32** %16, align 8
  %122 = load i32*, i32** %16, align 8
  %123 = load i32, i32* %13, align 4
  %124 = and i32 %123, 7
  %125 = sub nsw i32 8, %124
  %126 = call i32 @BN_rshift(i32* %121, i32* %122, i32 %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %132, label %128

128:                                              ; preds = %120
  %129 = load i32, i32* @EC_F_OSSL_ECDSA_SIGN_SIG, align 4
  %130 = load i32, i32* @ERR_R_BN_LIB, align 4
  %131 = call i32 @ECerr(i32 %129, i32 %130)
  br label %245

132:                                              ; preds = %120, %115
  br label %133

133:                                              ; preds = %243, %132
  %134 = load i32*, i32** %9, align 8
  %135 = icmp eq i32* %134, null
  br i1 %135, label %139, label %136

136:                                              ; preds = %133
  %137 = load i32*, i32** %10, align 8
  %138 = icmp eq i32* %137, null
  br i1 %138, label %139, label %154

139:                                              ; preds = %136, %133
  %140 = load i32*, i32** %11, align 8
  %141 = load i32*, i32** %19, align 8
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 0
  %144 = load i8*, i8** %7, align 8
  %145 = load i32, i32* %8, align 4
  %146 = call i32 @ecdsa_sign_setup(i32* %140, i32* %141, i32** %14, i32** %143, i8* %144, i32 %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %152, label %148

148:                                              ; preds = %139
  %149 = load i32, i32* @EC_F_OSSL_ECDSA_SIGN_SIG, align 4
  %150 = load i32, i32* @ERR_R_ECDSA_LIB, align 4
  %151 = call i32 @ECerr(i32 %149, i32 %150)
  br label %245

152:                                              ; preds = %139
  %153 = load i32*, i32** %14, align 8
  store i32* %153, i32** %18, align 8
  br label %167

154:                                              ; preds = %136
  %155 = load i32*, i32** %9, align 8
  store i32* %155, i32** %18, align 8
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 0
  %158 = load i32*, i32** %157, align 8
  %159 = load i32*, i32** %10, align 8
  %160 = call i32* @BN_copy(i32* %158, i32* %159)
  %161 = icmp eq i32* %160, null
  br i1 %161, label %162, label %166

162:                                              ; preds = %154
  %163 = load i32, i32* @EC_F_OSSL_ECDSA_SIGN_SIG, align 4
  %164 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %165 = call i32 @ECerr(i32 %163, i32 %164)
  br label %245

166:                                              ; preds = %154
  br label %167

167:                                              ; preds = %166, %152
  %168 = load i32*, i32** %15, align 8
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load i32*, i32** %19, align 8
  %176 = call i32 @bn_to_mont_fixed_top(i32* %168, i32* %171, i32 %174, i32* %175)
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %188

178:                                              ; preds = %167
  %179 = load i32*, i32** %15, align 8
  %180 = load i32*, i32** %15, align 8
  %181 = load i32*, i32** %22, align 8
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load i32*, i32** %19, align 8
  %186 = call i32 @bn_mul_mont_fixed_top(i32* %179, i32* %180, i32* %181, i32 %184, i32* %185)
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %192, label %188

188:                                              ; preds = %178, %167
  %189 = load i32, i32* @EC_F_OSSL_ECDSA_SIGN_SIG, align 4
  %190 = load i32, i32* @ERR_R_BN_LIB, align 4
  %191 = call i32 @ECerr(i32 %189, i32 %190)
  br label %245

192:                                              ; preds = %178
  %193 = load i32*, i32** %15, align 8
  %194 = load i32*, i32** %15, align 8
  %195 = load i32*, i32** %16, align 8
  %196 = load i32*, i32** %17, align 8
  %197 = call i32 @bn_mod_add_fixed_top(i32* %193, i32* %194, i32* %195, i32* %196)
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %203, label %199

199:                                              ; preds = %192
  %200 = load i32, i32* @EC_F_OSSL_ECDSA_SIGN_SIG, align 4
  %201 = load i32, i32* @ERR_R_BN_LIB, align 4
  %202 = call i32 @ECerr(i32 %200, i32 %201)
  br label %245

203:                                              ; preds = %192
  %204 = load i32*, i32** %15, align 8
  %205 = load i32*, i32** %15, align 8
  %206 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = load i32*, i32** %19, align 8
  %210 = call i32 @bn_to_mont_fixed_top(i32* %204, i32* %205, i32 %208, i32* %209)
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %222

212:                                              ; preds = %203
  %213 = load i32*, i32** %15, align 8
  %214 = load i32*, i32** %15, align 8
  %215 = load i32*, i32** %18, align 8
  %216 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = load i32*, i32** %19, align 8
  %220 = call i32 @BN_mod_mul_montgomery(i32* %213, i32* %214, i32* %215, i32 %218, i32* %219)
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %226, label %222

222:                                              ; preds = %212, %203
  %223 = load i32, i32* @EC_F_OSSL_ECDSA_SIGN_SIG, align 4
  %224 = load i32, i32* @ERR_R_BN_LIB, align 4
  %225 = call i32 @ECerr(i32 %223, i32 %224)
  br label %245

226:                                              ; preds = %212
  %227 = load i32*, i32** %15, align 8
  %228 = call i64 @BN_is_zero(i32* %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %241

230:                                              ; preds = %226
  %231 = load i32*, i32** %9, align 8
  %232 = icmp ne i32* %231, null
  br i1 %232, label %233, label %240

233:                                              ; preds = %230
  %234 = load i32*, i32** %10, align 8
  %235 = icmp ne i32* %234, null
  br i1 %235, label %236, label %240

236:                                              ; preds = %233
  %237 = load i32, i32* @EC_F_OSSL_ECDSA_SIGN_SIG, align 4
  %238 = load i32, i32* @EC_R_NEED_NEW_SETUP_VALUES, align 4
  %239 = call i32 @ECerr(i32 %237, i32 %238)
  br label %245

240:                                              ; preds = %233, %230
  br label %242

241:                                              ; preds = %226
  br label %244

242:                                              ; preds = %240
  br label %243

243:                                              ; preds = %242
  br i1 true, label %133, label %244

244:                                              ; preds = %243, %241
  store i32 1, i32* %12, align 4
  br label %245

245:                                              ; preds = %244, %236, %222, %199, %188, %162, %148, %128, %111, %88, %74
  %246 = load i32, i32* %12, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %251, label %248

248:                                              ; preds = %245
  %249 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %250 = call i32 @ECDSA_SIG_free(%struct.TYPE_9__* %249)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %21, align 8
  br label %251

251:                                              ; preds = %248, %245
  %252 = load i32*, i32** %19, align 8
  %253 = call i32 @BN_CTX_free(i32* %252)
  %254 = load i32*, i32** %16, align 8
  %255 = call i32 @BN_clear_free(i32* %254)
  %256 = load i32*, i32** %14, align 8
  %257 = call i32 @BN_clear_free(i32* %256)
  %258 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  store %struct.TYPE_9__* %258, %struct.TYPE_9__** %6, align 8
  br label %259

259:                                              ; preds = %251, %52, %44, %36, %29
  %260 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  ret %struct.TYPE_9__* %260
}

declare dso_local %struct.TYPE_8__* @EC_KEY_get0_group(i32*) #1

declare dso_local i32* @EC_KEY_get0_private_key(i32*) #1

declare dso_local i32 @ECerr(i32, i32) #1

declare dso_local i32 @EC_KEY_can_sign(i32*) #1

declare dso_local %struct.TYPE_9__* @ECDSA_SIG_new(...) #1

declare dso_local i8* @BN_new(...) #1

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32* @EC_GROUP_get0_order(%struct.TYPE_8__*) #1

declare dso_local i32 @BN_num_bits(i32*) #1

declare dso_local i32 @BN_bin2bn(i8*, i32, i32*) #1

declare dso_local i32 @BN_rshift(i32*, i32*, i32) #1

declare dso_local i32 @ecdsa_sign_setup(i32*, i32*, i32**, i32**, i8*, i32) #1

declare dso_local i32* @BN_copy(i32*, i32*) #1

declare dso_local i32 @bn_to_mont_fixed_top(i32*, i32*, i32, i32*) #1

declare dso_local i32 @bn_mul_mont_fixed_top(i32*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @bn_mod_add_fixed_top(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_mod_mul_montgomery(i32*, i32*, i32*, i32, i32*) #1

declare dso_local i64 @BN_is_zero(i32*) #1

declare dso_local i32 @ECDSA_SIG_free(%struct.TYPE_9__*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

declare dso_local i32 @BN_clear_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
