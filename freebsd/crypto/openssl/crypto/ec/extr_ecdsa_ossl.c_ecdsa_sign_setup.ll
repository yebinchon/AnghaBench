; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ecdsa_ossl.c_ecdsa_sign_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ecdsa_ossl.c_ecdsa_sign_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EC_F_ECDSA_SIGN_SETUP = common dso_local global i32 0, align 4
@ERR_R_PASSED_NULL_PARAMETER = common dso_local global i32 0, align 4
@EC_R_MISSING_PRIVATE_KEY = common dso_local global i32 0, align 4
@EC_R_CURVE_DOES_NOT_SUPPORT_SIGNING = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@ERR_R_EC_LIB = common dso_local global i32 0, align 4
@EC_R_RANDOM_NUMBER_GENERATION_FAILED = common dso_local global i32 0, align 4
@ERR_R_BN_LIB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32**, i32**, i8*, i32)* @ecdsa_sign_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecdsa_sign_setup(i32* %0, i32* %1, i32** %2, i32** %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32** %2, i32*** %10, align 8
  store i32** %3, i32*** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32* null, i32** %14, align 8
  store i32* null, i32** %15, align 8
  store i32* null, i32** %16, align 8
  store i32* null, i32** %17, align 8
  store i32* null, i32** %19, align 8
  store i32 0, i32* %21, align 4
  %24 = load i32*, i32** %8, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %6
  %27 = load i32*, i32** %8, align 8
  %28 = call i32* @EC_KEY_get0_group(i32* %27)
  store i32* %28, i32** %20, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %26, %6
  %31 = load i32, i32* @EC_F_ECDSA_SIGN_SETUP, align 4
  %32 = load i32, i32* @ERR_R_PASSED_NULL_PARAMETER, align 4
  %33 = call i32 @ECerr(i32 %31, i32 %32)
  store i32 0, i32* %7, align 4
  br label %220

34:                                               ; preds = %26
  %35 = load i32*, i32** %8, align 8
  %36 = call i32* @EC_KEY_get0_private_key(i32* %35)
  store i32* %36, i32** %23, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i32, i32* @EC_F_ECDSA_SIGN_SETUP, align 4
  %40 = load i32, i32* @EC_R_MISSING_PRIVATE_KEY, align 4
  %41 = call i32 @ECerr(i32 %39, i32 %40)
  store i32 0, i32* %7, align 4
  br label %220

42:                                               ; preds = %34
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @EC_KEY_can_sign(i32* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* @EC_F_ECDSA_SIGN_SETUP, align 4
  %48 = load i32, i32* @EC_R_CURVE_DOES_NOT_SUPPORT_SIGNING, align 4
  %49 = call i32 @ECerr(i32 %47, i32 %48)
  store i32 0, i32* %7, align 4
  br label %220

50:                                               ; preds = %42
  %51 = load i32*, i32** %9, align 8
  store i32* %51, i32** %14, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %61

53:                                               ; preds = %50
  %54 = call i32* (...) @BN_CTX_new()
  store i32* %54, i32** %14, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load i32, i32* @EC_F_ECDSA_SIGN_SETUP, align 4
  %58 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %59 = call i32 @ECerr(i32 %57, i32 %58)
  store i32 0, i32* %7, align 4
  br label %220

60:                                               ; preds = %53
  br label %61

61:                                               ; preds = %60, %50
  %62 = call i32* (...) @BN_new()
  store i32* %62, i32** %15, align 8
  %63 = call i32* (...) @BN_new()
  store i32* %63, i32** %16, align 8
  %64 = call i32* (...) @BN_new()
  store i32* %64, i32** %17, align 8
  %65 = load i32*, i32** %15, align 8
  %66 = icmp eq i32* %65, null
  br i1 %66, label %73, label %67

67:                                               ; preds = %61
  %68 = load i32*, i32** %16, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %67
  %71 = load i32*, i32** %17, align 8
  %72 = icmp eq i32* %71, null
  br i1 %72, label %73, label %77

73:                                               ; preds = %70, %67, %61
  %74 = load i32, i32* @EC_F_ECDSA_SIGN_SETUP, align 4
  %75 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %76 = call i32 @ECerr(i32 %74, i32 %75)
  br label %199

77:                                               ; preds = %70
  %78 = load i32*, i32** %20, align 8
  %79 = call i32* @EC_POINT_new(i32* %78)
  store i32* %79, i32** %19, align 8
  %80 = icmp eq i32* %79, null
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load i32, i32* @EC_F_ECDSA_SIGN_SETUP, align 4
  %83 = load i32, i32* @ERR_R_EC_LIB, align 4
  %84 = call i32 @ECerr(i32 %82, i32 %83)
  br label %199

85:                                               ; preds = %77
  %86 = load i32*, i32** %20, align 8
  %87 = call i32* @EC_GROUP_get0_order(i32* %86)
  store i32* %87, i32** %18, align 8
  %88 = load i32*, i32** %18, align 8
  %89 = call i32 @BN_num_bits(i32* %88)
  store i32 %89, i32* %22, align 4
  %90 = load i32*, i32** %15, align 8
  %91 = load i32, i32* %22, align 4
  %92 = call i32 @BN_set_bit(i32* %90, i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %104

94:                                               ; preds = %85
  %95 = load i32*, i32** %16, align 8
  %96 = load i32, i32* %22, align 4
  %97 = call i32 @BN_set_bit(i32* %95, i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %94
  %100 = load i32*, i32** %17, align 8
  %101 = load i32, i32* %22, align 4
  %102 = call i32 @BN_set_bit(i32* %100, i32 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %99, %94, %85
  br label %199

105:                                              ; preds = %99
  br label %106

106:                                              ; preds = %173, %105
  br label %107

107:                                              ; preds = %135, %106
  %108 = load i8*, i8** %12, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %110, label %124

110:                                              ; preds = %107
  %111 = load i32*, i32** %15, align 8
  %112 = load i32*, i32** %18, align 8
  %113 = load i32*, i32** %23, align 8
  %114 = load i8*, i8** %12, align 8
  %115 = load i32, i32* %13, align 4
  %116 = load i32*, i32** %14, align 8
  %117 = call i32 @BN_generate_dsa_nonce(i32* %111, i32* %112, i32* %113, i8* %114, i32 %115, i32* %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %110
  %120 = load i32, i32* @EC_F_ECDSA_SIGN_SETUP, align 4
  %121 = load i32, i32* @EC_R_RANDOM_NUMBER_GENERATION_FAILED, align 4
  %122 = call i32 @ECerr(i32 %120, i32 %121)
  br label %199

123:                                              ; preds = %110
  br label %134

124:                                              ; preds = %107
  %125 = load i32*, i32** %15, align 8
  %126 = load i32*, i32** %18, align 8
  %127 = call i32 @BN_priv_rand_range(i32* %125, i32* %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %133, label %129

129:                                              ; preds = %124
  %130 = load i32, i32* @EC_F_ECDSA_SIGN_SETUP, align 4
  %131 = load i32, i32* @EC_R_RANDOM_NUMBER_GENERATION_FAILED, align 4
  %132 = call i32 @ECerr(i32 %130, i32 %131)
  br label %199

133:                                              ; preds = %124
  br label %134

134:                                              ; preds = %133, %123
  br label %135

135:                                              ; preds = %134
  %136 = load i32*, i32** %15, align 8
  %137 = call i64 @BN_is_zero(i32* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %107, label %139

139:                                              ; preds = %135
  %140 = load i32*, i32** %20, align 8
  %141 = load i32*, i32** %19, align 8
  %142 = load i32*, i32** %15, align 8
  %143 = load i32*, i32** %14, align 8
  %144 = call i32 @EC_POINT_mul(i32* %140, i32* %141, i32* %142, i32* null, i32* null, i32* %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %150, label %146

146:                                              ; preds = %139
  %147 = load i32, i32* @EC_F_ECDSA_SIGN_SETUP, align 4
  %148 = load i32, i32* @ERR_R_EC_LIB, align 4
  %149 = call i32 @ECerr(i32 %147, i32 %148)
  br label %199

150:                                              ; preds = %139
  %151 = load i32*, i32** %20, align 8
  %152 = load i32*, i32** %19, align 8
  %153 = load i32*, i32** %17, align 8
  %154 = load i32*, i32** %14, align 8
  %155 = call i32 @EC_POINT_get_affine_coordinates(i32* %151, i32* %152, i32* %153, i32* null, i32* %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %161, label %157

157:                                              ; preds = %150
  %158 = load i32, i32* @EC_F_ECDSA_SIGN_SETUP, align 4
  %159 = load i32, i32* @ERR_R_EC_LIB, align 4
  %160 = call i32 @ECerr(i32 %158, i32 %159)
  br label %199

161:                                              ; preds = %150
  %162 = load i32*, i32** %16, align 8
  %163 = load i32*, i32** %17, align 8
  %164 = load i32*, i32** %18, align 8
  %165 = load i32*, i32** %14, align 8
  %166 = call i32 @BN_nnmod(i32* %162, i32* %163, i32* %164, i32* %165)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %172, label %168

168:                                              ; preds = %161
  %169 = load i32, i32* @EC_F_ECDSA_SIGN_SETUP, align 4
  %170 = load i32, i32* @ERR_R_BN_LIB, align 4
  %171 = call i32 @ECerr(i32 %169, i32 %170)
  br label %199

172:                                              ; preds = %161
  br label %173

173:                                              ; preds = %172
  %174 = load i32*, i32** %16, align 8
  %175 = call i64 @BN_is_zero(i32* %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %106, label %177

177:                                              ; preds = %173
  %178 = load i32*, i32** %20, align 8
  %179 = load i32*, i32** %15, align 8
  %180 = load i32*, i32** %15, align 8
  %181 = load i32*, i32** %14, align 8
  %182 = call i32 @ec_group_do_inverse_ord(i32* %178, i32* %179, i32* %180, i32* %181)
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %188, label %184

184:                                              ; preds = %177
  %185 = load i32, i32* @EC_F_ECDSA_SIGN_SETUP, align 4
  %186 = load i32, i32* @ERR_R_BN_LIB, align 4
  %187 = call i32 @ECerr(i32 %185, i32 %186)
  br label %199

188:                                              ; preds = %177
  %189 = load i32**, i32*** %11, align 8
  %190 = load i32*, i32** %189, align 8
  %191 = call i32 @BN_clear_free(i32* %190)
  %192 = load i32**, i32*** %10, align 8
  %193 = load i32*, i32** %192, align 8
  %194 = call i32 @BN_clear_free(i32* %193)
  %195 = load i32*, i32** %16, align 8
  %196 = load i32**, i32*** %11, align 8
  store i32* %195, i32** %196, align 8
  %197 = load i32*, i32** %15, align 8
  %198 = load i32**, i32*** %10, align 8
  store i32* %197, i32** %198, align 8
  store i32 1, i32* %21, align 4
  br label %199

199:                                              ; preds = %188, %184, %168, %157, %146, %129, %119, %104, %81, %73
  %200 = load i32, i32* %21, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %207, label %202

202:                                              ; preds = %199
  %203 = load i32*, i32** %15, align 8
  %204 = call i32 @BN_clear_free(i32* %203)
  %205 = load i32*, i32** %16, align 8
  %206 = call i32 @BN_clear_free(i32* %205)
  br label %207

207:                                              ; preds = %202, %199
  %208 = load i32*, i32** %14, align 8
  %209 = load i32*, i32** %9, align 8
  %210 = icmp ne i32* %208, %209
  br i1 %210, label %211, label %214

211:                                              ; preds = %207
  %212 = load i32*, i32** %14, align 8
  %213 = call i32 @BN_CTX_free(i32* %212)
  br label %214

214:                                              ; preds = %211, %207
  %215 = load i32*, i32** %19, align 8
  %216 = call i32 @EC_POINT_free(i32* %215)
  %217 = load i32*, i32** %17, align 8
  %218 = call i32 @BN_clear_free(i32* %217)
  %219 = load i32, i32* %21, align 4
  store i32 %219, i32* %7, align 4
  br label %220

220:                                              ; preds = %214, %56, %46, %38, %30
  %221 = load i32, i32* %7, align 4
  ret i32 %221
}

declare dso_local i32* @EC_KEY_get0_group(i32*) #1

declare dso_local i32 @ECerr(i32, i32) #1

declare dso_local i32* @EC_KEY_get0_private_key(i32*) #1

declare dso_local i32 @EC_KEY_can_sign(i32*) #1

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32* @EC_POINT_new(i32*) #1

declare dso_local i32* @EC_GROUP_get0_order(i32*) #1

declare dso_local i32 @BN_num_bits(i32*) #1

declare dso_local i32 @BN_set_bit(i32*, i32) #1

declare dso_local i32 @BN_generate_dsa_nonce(i32*, i32*, i32*, i8*, i32, i32*) #1

declare dso_local i32 @BN_priv_rand_range(i32*, i32*) #1

declare dso_local i64 @BN_is_zero(i32*) #1

declare dso_local i32 @EC_POINT_mul(i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @EC_POINT_get_affine_coordinates(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_nnmod(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @ec_group_do_inverse_ord(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_clear_free(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

declare dso_local i32 @EC_POINT_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
