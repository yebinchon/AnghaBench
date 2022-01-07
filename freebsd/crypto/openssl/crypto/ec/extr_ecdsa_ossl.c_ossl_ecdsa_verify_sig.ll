; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ecdsa_ossl.c_ossl_ecdsa_verify_sig.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ecdsa_ossl.c_ossl_ecdsa_verify_sig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32* }

@EC_F_OSSL_ECDSA_VERIFY_SIG = common dso_local global i32 0, align 4
@EC_R_MISSING_PARAMETERS = common dso_local global i32 0, align 4
@EC_R_CURVE_DOES_NOT_SUPPORT_SIGNING = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@ERR_R_BN_LIB = common dso_local global i32 0, align 4
@ERR_R_EC_LIB = common dso_local global i32 0, align 4
@EC_R_BAD_SIGNATURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ossl_ecdsa_verify_sig(i8* %0, i32 %1, %struct.TYPE_3__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 -1, i32* %10, align 4
  store i32* null, i32** %18, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %34, label %23

23:                                               ; preds = %4
  %24 = load i32*, i32** %9, align 8
  %25 = call i32* @EC_KEY_get0_group(i32* %24)
  store i32* %25, i32** %19, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %23
  %28 = load i32*, i32** %9, align 8
  %29 = call i32* @EC_KEY_get0_public_key(i32* %28)
  store i32* %29, i32** %20, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %33 = icmp eq %struct.TYPE_3__* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %31, %27, %23, %4
  %35 = load i32, i32* @EC_F_OSSL_ECDSA_VERIFY_SIG, align 4
  %36 = load i32, i32* @EC_R_MISSING_PARAMETERS, align 4
  %37 = call i32 @ECerr(i32 %35, i32 %36)
  store i32 -1, i32* %5, align 4
  br label %258

38:                                               ; preds = %31
  %39 = load i32*, i32** %9, align 8
  %40 = call i32 @EC_KEY_can_sign(i32* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* @EC_F_OSSL_ECDSA_VERIFY_SIG, align 4
  %44 = load i32, i32* @EC_R_CURVE_DOES_NOT_SUPPORT_SIGNING, align 4
  %45 = call i32 @ECerr(i32 %43, i32 %44)
  store i32 -1, i32* %5, align 4
  br label %258

46:                                               ; preds = %38
  %47 = call i32* (...) @BN_CTX_new()
  store i32* %47, i32** %12, align 8
  %48 = load i32*, i32** %12, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load i32, i32* @EC_F_OSSL_ECDSA_VERIFY_SIG, align 4
  %52 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %53 = call i32 @ECerr(i32 %51, i32 %52)
  store i32 -1, i32* %5, align 4
  br label %258

54:                                               ; preds = %46
  %55 = load i32*, i32** %12, align 8
  %56 = call i32 @BN_CTX_start(i32* %55)
  %57 = load i32*, i32** %12, align 8
  %58 = call i32* @BN_CTX_get(i32* %57)
  store i32* %58, i32** %14, align 8
  %59 = load i32*, i32** %12, align 8
  %60 = call i32* @BN_CTX_get(i32* %59)
  store i32* %60, i32** %15, align 8
  %61 = load i32*, i32** %12, align 8
  %62 = call i32* @BN_CTX_get(i32* %61)
  store i32* %62, i32** %16, align 8
  %63 = load i32*, i32** %12, align 8
  %64 = call i32* @BN_CTX_get(i32* %63)
  store i32* %64, i32** %17, align 8
  %65 = load i32*, i32** %17, align 8
  %66 = icmp eq i32* %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %54
  %68 = load i32, i32* @EC_F_OSSL_ECDSA_VERIFY_SIG, align 4
  %69 = load i32, i32* @ERR_R_BN_LIB, align 4
  %70 = call i32 @ECerr(i32 %68, i32 %69)
  br label %250

71:                                               ; preds = %54
  %72 = load i32*, i32** %19, align 8
  %73 = call i32* @EC_GROUP_get0_order(i32* %72)
  store i32* %73, i32** %13, align 8
  %74 = load i32*, i32** %13, align 8
  %75 = icmp eq i32* %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load i32, i32* @EC_F_OSSL_ECDSA_VERIFY_SIG, align 4
  %78 = load i32, i32* @ERR_R_EC_LIB, align 4
  %79 = call i32 @ECerr(i32 %77, i32 %78)
  br label %250

80:                                               ; preds = %71
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = call i64 @BN_is_zero(i32* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %118, label %86

86:                                               ; preds = %80
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = call i64 @BN_is_negative(i32* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %118, label %92

92:                                               ; preds = %86
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = load i32*, i32** %13, align 8
  %97 = call i64 @BN_ucmp(i32* %95, i32* %96)
  %98 = icmp sge i64 %97, 0
  br i1 %98, label %118, label %99

99:                                               ; preds = %92
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = call i64 @BN_is_zero(i32* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %118, label %105

105:                                              ; preds = %99
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = call i64 @BN_is_negative(i32* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %118, label %111

111:                                              ; preds = %105
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = load i32*, i32** %13, align 8
  %116 = call i64 @BN_ucmp(i32* %114, i32* %115)
  %117 = icmp sge i64 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %111, %105, %99, %92, %86, %80
  %119 = load i32, i32* @EC_F_OSSL_ECDSA_VERIFY_SIG, align 4
  %120 = load i32, i32* @EC_R_BAD_SIGNATURE, align 4
  %121 = call i32 @ECerr(i32 %119, i32 %120)
  store i32 0, i32* %10, align 4
  br label %250

122:                                              ; preds = %111
  %123 = load i32*, i32** %19, align 8
  %124 = load i32*, i32** %15, align 8
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = load i32*, i32** %12, align 8
  %129 = call i32 @ec_group_do_inverse_ord(i32* %123, i32* %124, i32* %127, i32* %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %135, label %131

131:                                              ; preds = %122
  %132 = load i32, i32* @EC_F_OSSL_ECDSA_VERIFY_SIG, align 4
  %133 = load i32, i32* @ERR_R_BN_LIB, align 4
  %134 = call i32 @ECerr(i32 %132, i32 %133)
  br label %250

135:                                              ; preds = %122
  %136 = load i32*, i32** %13, align 8
  %137 = call i32 @BN_num_bits(i32* %136)
  store i32 %137, i32* %11, align 4
  %138 = load i32, i32* %7, align 4
  %139 = mul nsw i32 8, %138
  %140 = load i32, i32* %11, align 4
  %141 = icmp sgt i32 %139, %140
  br i1 %141, label %142, label %146

142:                                              ; preds = %135
  %143 = load i32, i32* %11, align 4
  %144 = add nsw i32 %143, 7
  %145 = sdiv i32 %144, 8
  store i32 %145, i32* %7, align 4
  br label %146

146:                                              ; preds = %142, %135
  %147 = load i8*, i8** %6, align 8
  %148 = load i32, i32* %7, align 4
  %149 = load i32*, i32** %16, align 8
  %150 = call i32 @BN_bin2bn(i8* %147, i32 %148, i32* %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %156, label %152

152:                                              ; preds = %146
  %153 = load i32, i32* @EC_F_OSSL_ECDSA_VERIFY_SIG, align 4
  %154 = load i32, i32* @ERR_R_BN_LIB, align 4
  %155 = call i32 @ECerr(i32 %153, i32 %154)
  br label %250

156:                                              ; preds = %146
  %157 = load i32, i32* %7, align 4
  %158 = mul nsw i32 8, %157
  %159 = load i32, i32* %11, align 4
  %160 = icmp sgt i32 %158, %159
  br i1 %160, label %161, label %173

161:                                              ; preds = %156
  %162 = load i32*, i32** %16, align 8
  %163 = load i32*, i32** %16, align 8
  %164 = load i32, i32* %11, align 4
  %165 = and i32 %164, 7
  %166 = sub nsw i32 8, %165
  %167 = call i32 @BN_rshift(i32* %162, i32* %163, i32 %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %173, label %169

169:                                              ; preds = %161
  %170 = load i32, i32* @EC_F_OSSL_ECDSA_VERIFY_SIG, align 4
  %171 = load i32, i32* @ERR_R_BN_LIB, align 4
  %172 = call i32 @ECerr(i32 %170, i32 %171)
  br label %250

173:                                              ; preds = %161, %156
  %174 = load i32*, i32** %14, align 8
  %175 = load i32*, i32** %16, align 8
  %176 = load i32*, i32** %15, align 8
  %177 = load i32*, i32** %13, align 8
  %178 = load i32*, i32** %12, align 8
  %179 = call i32 @BN_mod_mul(i32* %174, i32* %175, i32* %176, i32* %177, i32* %178)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %185, label %181

181:                                              ; preds = %173
  %182 = load i32, i32* @EC_F_OSSL_ECDSA_VERIFY_SIG, align 4
  %183 = load i32, i32* @ERR_R_BN_LIB, align 4
  %184 = call i32 @ECerr(i32 %182, i32 %183)
  br label %250

185:                                              ; preds = %173
  %186 = load i32*, i32** %15, align 8
  %187 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 0
  %189 = load i32*, i32** %188, align 8
  %190 = load i32*, i32** %15, align 8
  %191 = load i32*, i32** %13, align 8
  %192 = load i32*, i32** %12, align 8
  %193 = call i32 @BN_mod_mul(i32* %186, i32* %189, i32* %190, i32* %191, i32* %192)
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %199, label %195

195:                                              ; preds = %185
  %196 = load i32, i32* @EC_F_OSSL_ECDSA_VERIFY_SIG, align 4
  %197 = load i32, i32* @ERR_R_BN_LIB, align 4
  %198 = call i32 @ECerr(i32 %196, i32 %197)
  br label %250

199:                                              ; preds = %185
  %200 = load i32*, i32** %19, align 8
  %201 = call i32* @EC_POINT_new(i32* %200)
  store i32* %201, i32** %18, align 8
  %202 = icmp eq i32* %201, null
  br i1 %202, label %203, label %207

203:                                              ; preds = %199
  %204 = load i32, i32* @EC_F_OSSL_ECDSA_VERIFY_SIG, align 4
  %205 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %206 = call i32 @ECerr(i32 %204, i32 %205)
  br label %250

207:                                              ; preds = %199
  %208 = load i32*, i32** %19, align 8
  %209 = load i32*, i32** %18, align 8
  %210 = load i32*, i32** %14, align 8
  %211 = load i32*, i32** %20, align 8
  %212 = load i32*, i32** %15, align 8
  %213 = load i32*, i32** %12, align 8
  %214 = call i32 @EC_POINT_mul(i32* %208, i32* %209, i32* %210, i32* %211, i32* %212, i32* %213)
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %220, label %216

216:                                              ; preds = %207
  %217 = load i32, i32* @EC_F_OSSL_ECDSA_VERIFY_SIG, align 4
  %218 = load i32, i32* @ERR_R_EC_LIB, align 4
  %219 = call i32 @ECerr(i32 %217, i32 %218)
  br label %250

220:                                              ; preds = %207
  %221 = load i32*, i32** %19, align 8
  %222 = load i32*, i32** %18, align 8
  %223 = load i32*, i32** %17, align 8
  %224 = load i32*, i32** %12, align 8
  %225 = call i32 @EC_POINT_get_affine_coordinates(i32* %221, i32* %222, i32* %223, i32* null, i32* %224)
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %231, label %227

227:                                              ; preds = %220
  %228 = load i32, i32* @EC_F_OSSL_ECDSA_VERIFY_SIG, align 4
  %229 = load i32, i32* @ERR_R_EC_LIB, align 4
  %230 = call i32 @ECerr(i32 %228, i32 %229)
  br label %250

231:                                              ; preds = %220
  %232 = load i32*, i32** %14, align 8
  %233 = load i32*, i32** %17, align 8
  %234 = load i32*, i32** %13, align 8
  %235 = load i32*, i32** %12, align 8
  %236 = call i32 @BN_nnmod(i32* %232, i32* %233, i32* %234, i32* %235)
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %242, label %238

238:                                              ; preds = %231
  %239 = load i32, i32* @EC_F_OSSL_ECDSA_VERIFY_SIG, align 4
  %240 = load i32, i32* @ERR_R_BN_LIB, align 4
  %241 = call i32 @ECerr(i32 %239, i32 %240)
  br label %250

242:                                              ; preds = %231
  %243 = load i32*, i32** %14, align 8
  %244 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %245 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %244, i32 0, i32 0
  %246 = load i32*, i32** %245, align 8
  %247 = call i64 @BN_ucmp(i32* %243, i32* %246)
  %248 = icmp eq i64 %247, 0
  %249 = zext i1 %248 to i32
  store i32 %249, i32* %10, align 4
  br label %250

250:                                              ; preds = %242, %238, %227, %216, %203, %195, %181, %169, %152, %131, %118, %76, %67
  %251 = load i32*, i32** %12, align 8
  %252 = call i32 @BN_CTX_end(i32* %251)
  %253 = load i32*, i32** %12, align 8
  %254 = call i32 @BN_CTX_free(i32* %253)
  %255 = load i32*, i32** %18, align 8
  %256 = call i32 @EC_POINT_free(i32* %255)
  %257 = load i32, i32* %10, align 4
  store i32 %257, i32* %5, align 4
  br label %258

258:                                              ; preds = %250, %50, %42, %34
  %259 = load i32, i32* %5, align 4
  ret i32 %259
}

declare dso_local i32* @EC_KEY_get0_group(i32*) #1

declare dso_local i32* @EC_KEY_get0_public_key(i32*) #1

declare dso_local i32 @ECerr(i32, i32) #1

declare dso_local i32 @EC_KEY_can_sign(i32*) #1

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i32* @BN_CTX_get(i32*) #1

declare dso_local i32* @EC_GROUP_get0_order(i32*) #1

declare dso_local i64 @BN_is_zero(i32*) #1

declare dso_local i64 @BN_is_negative(i32*) #1

declare dso_local i64 @BN_ucmp(i32*, i32*) #1

declare dso_local i32 @ec_group_do_inverse_ord(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_num_bits(i32*) #1

declare dso_local i32 @BN_bin2bn(i8*, i32, i32*) #1

declare dso_local i32 @BN_rshift(i32*, i32*, i32) #1

declare dso_local i32 @BN_mod_mul(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32* @EC_POINT_new(i32*) #1

declare dso_local i32 @EC_POINT_mul(i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @EC_POINT_get_affine_coordinates(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_nnmod(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

declare dso_local i32 @EC_POINT_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
