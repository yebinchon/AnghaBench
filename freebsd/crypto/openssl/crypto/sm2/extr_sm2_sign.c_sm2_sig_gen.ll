; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/sm2/extr_sm2_sign.c_sm2_sig_gen.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/sm2/extr_sm2_sign.c_sm2_sig_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SM2_F_SM2_SIG_GEN = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@ERR_R_BN_LIB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @sm2_sig_gen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @sm2_sig_gen(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = call i32* @EC_KEY_get0_private_key(i32* %17)
  store i32* %18, i32** %5, align 8
  %19 = load i32*, i32** %3, align 8
  %20 = call i32* @EC_KEY_get0_group(i32* %19)
  store i32* %20, i32** %6, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = call i32* @EC_GROUP_get0_order(i32* %21)
  store i32* %22, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  store i32* null, i32** %15, align 8
  store i32* null, i32** %16, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = call i32* @EC_POINT_new(i32* %23)
  store i32* %24, i32** %9, align 8
  %25 = call i32* (...) @BN_CTX_new()
  store i32* %25, i32** %10, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %2
  %29 = load i32*, i32** %10, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %28, %2
  %32 = load i32, i32* @SM2_F_SM2_SIG_GEN, align 4
  %33 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %34 = call i32 @SM2err(i32 %32, i32 %33)
  br label %174

35:                                               ; preds = %28
  %36 = load i32*, i32** %10, align 8
  %37 = call i32 @BN_CTX_start(i32* %36)
  %38 = load i32*, i32** %10, align 8
  %39 = call i32* @BN_CTX_get(i32* %38)
  store i32* %39, i32** %11, align 8
  %40 = load i32*, i32** %10, align 8
  %41 = call i32* @BN_CTX_get(i32* %40)
  store i32* %41, i32** %12, align 8
  %42 = load i32*, i32** %10, align 8
  %43 = call i32* @BN_CTX_get(i32* %42)
  store i32* %43, i32** %15, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = call i32* @BN_CTX_get(i32* %44)
  store i32* %45, i32** %16, align 8
  %46 = load i32*, i32** %16, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %35
  %49 = load i32, i32* @SM2_F_SM2_SIG_GEN, align 4
  %50 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %51 = call i32 @SM2err(i32 %49, i32 %50)
  br label %174

52:                                               ; preds = %35
  %53 = call i32* (...) @BN_new()
  store i32* %53, i32** %13, align 8
  %54 = call i32* (...) @BN_new()
  store i32* %54, i32** %14, align 8
  %55 = load i32*, i32** %13, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %52
  %58 = load i32*, i32** %14, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %57, %52
  %61 = load i32, i32* @SM2_F_SM2_SIG_GEN, align 4
  %62 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %63 = call i32 @SM2err(i32 %61, i32 %62)
  br label %174

64:                                               ; preds = %57
  br label %65

65:                                               ; preds = %120, %104, %64
  %66 = load i32*, i32** %11, align 8
  %67 = load i32*, i32** %7, align 8
  %68 = call i32 @BN_priv_rand_range(i32* %66, i32* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %65
  %71 = load i32, i32* @SM2_F_SM2_SIG_GEN, align 4
  %72 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %73 = call i32 @SM2err(i32 %71, i32 %72)
  br label %174

74:                                               ; preds = %65
  %75 = load i32*, i32** %6, align 8
  %76 = load i32*, i32** %9, align 8
  %77 = load i32*, i32** %11, align 8
  %78 = load i32*, i32** %10, align 8
  %79 = call i32 @EC_POINT_mul(i32* %75, i32* %76, i32* %77, i32* null, i32* null, i32* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %96

81:                                               ; preds = %74
  %82 = load i32*, i32** %6, align 8
  %83 = load i32*, i32** %9, align 8
  %84 = load i32*, i32** %15, align 8
  %85 = load i32*, i32** %10, align 8
  %86 = call i32 @EC_POINT_get_affine_coordinates(i32* %82, i32* %83, i32* %84, i32* null, i32* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %81
  %89 = load i32*, i32** %13, align 8
  %90 = load i32*, i32** %4, align 8
  %91 = load i32*, i32** %15, align 8
  %92 = load i32*, i32** %7, align 8
  %93 = load i32*, i32** %10, align 8
  %94 = call i32 @BN_mod_add(i32* %89, i32* %90, i32* %91, i32* %92, i32* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %88, %81, %74
  %97 = load i32, i32* @SM2_F_SM2_SIG_GEN, align 4
  %98 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %99 = call i32 @SM2err(i32 %97, i32 %98)
  br label %174

100:                                              ; preds = %88
  %101 = load i32*, i32** %13, align 8
  %102 = call i64 @BN_is_zero(i32* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  br label %65

105:                                              ; preds = %100
  %106 = load i32*, i32** %12, align 8
  %107 = load i32*, i32** %13, align 8
  %108 = load i32*, i32** %11, align 8
  %109 = call i32 @BN_add(i32* %106, i32* %107, i32* %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %105
  %112 = load i32, i32* @SM2_F_SM2_SIG_GEN, align 4
  %113 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %114 = call i32 @SM2err(i32 %112, i32 %113)
  br label %174

115:                                              ; preds = %105
  %116 = load i32*, i32** %12, align 8
  %117 = load i32*, i32** %7, align 8
  %118 = call i64 @BN_cmp(i32* %116, i32* %117)
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %115
  br label %65

121:                                              ; preds = %115
  %122 = load i32*, i32** %14, align 8
  %123 = load i32*, i32** %5, align 8
  %124 = call i32* (...) @BN_value_one()
  %125 = call i32 @BN_add(i32* %122, i32* %123, i32* %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %156

127:                                              ; preds = %121
  %128 = load i32*, i32** %6, align 8
  %129 = load i32*, i32** %14, align 8
  %130 = load i32*, i32** %14, align 8
  %131 = load i32*, i32** %10, align 8
  %132 = call i32 @ec_group_do_inverse_ord(i32* %128, i32* %129, i32* %130, i32* %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %156

134:                                              ; preds = %127
  %135 = load i32*, i32** %16, align 8
  %136 = load i32*, i32** %5, align 8
  %137 = load i32*, i32** %13, align 8
  %138 = load i32*, i32** %7, align 8
  %139 = load i32*, i32** %10, align 8
  %140 = call i32 @BN_mod_mul(i32* %135, i32* %136, i32* %137, i32* %138, i32* %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %156

142:                                              ; preds = %134
  %143 = load i32*, i32** %16, align 8
  %144 = load i32*, i32** %11, align 8
  %145 = load i32*, i32** %16, align 8
  %146 = call i32 @BN_sub(i32* %143, i32* %144, i32* %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %156

148:                                              ; preds = %142
  %149 = load i32*, i32** %14, align 8
  %150 = load i32*, i32** %14, align 8
  %151 = load i32*, i32** %16, align 8
  %152 = load i32*, i32** %7, align 8
  %153 = load i32*, i32** %10, align 8
  %154 = call i32 @BN_mod_mul(i32* %149, i32* %150, i32* %151, i32* %152, i32* %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %160, label %156

156:                                              ; preds = %148, %142, %134, %127, %121
  %157 = load i32, i32* @SM2_F_SM2_SIG_GEN, align 4
  %158 = load i32, i32* @ERR_R_BN_LIB, align 4
  %159 = call i32 @SM2err(i32 %157, i32 %158)
  br label %174

160:                                              ; preds = %148
  %161 = call i32* (...) @ECDSA_SIG_new()
  store i32* %161, i32** %8, align 8
  %162 = load i32*, i32** %8, align 8
  %163 = icmp eq i32* %162, null
  br i1 %163, label %164, label %168

164:                                              ; preds = %160
  %165 = load i32, i32* @SM2_F_SM2_SIG_GEN, align 4
  %166 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %167 = call i32 @SM2err(i32 %165, i32 %166)
  br label %174

168:                                              ; preds = %160
  %169 = load i32*, i32** %8, align 8
  %170 = load i32*, i32** %13, align 8
  %171 = load i32*, i32** %14, align 8
  %172 = call i32 @ECDSA_SIG_set0(i32* %169, i32* %170, i32* %171)
  br label %173

173:                                              ; preds = %168
  br label %174

174:                                              ; preds = %173, %164, %156, %111, %96, %70, %60, %48, %31
  %175 = load i32*, i32** %8, align 8
  %176 = icmp eq i32* %175, null
  br i1 %176, label %177, label %182

177:                                              ; preds = %174
  %178 = load i32*, i32** %13, align 8
  %179 = call i32 @BN_free(i32* %178)
  %180 = load i32*, i32** %14, align 8
  %181 = call i32 @BN_free(i32* %180)
  br label %182

182:                                              ; preds = %177, %174
  %183 = load i32*, i32** %10, align 8
  %184 = call i32 @BN_CTX_free(i32* %183)
  %185 = load i32*, i32** %9, align 8
  %186 = call i32 @EC_POINT_free(i32* %185)
  %187 = load i32*, i32** %8, align 8
  ret i32* %187
}

declare dso_local i32* @EC_KEY_get0_private_key(i32*) #1

declare dso_local i32* @EC_KEY_get0_group(i32*) #1

declare dso_local i32* @EC_GROUP_get0_order(i32*) #1

declare dso_local i32* @EC_POINT_new(i32*) #1

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32 @SM2err(i32, i32) #1

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i32* @BN_CTX_get(i32*) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32 @BN_priv_rand_range(i32*, i32*) #1

declare dso_local i32 @EC_POINT_mul(i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @EC_POINT_get_affine_coordinates(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_mod_add(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @BN_is_zero(i32*) #1

declare dso_local i32 @BN_add(i32*, i32*, i32*) #1

declare dso_local i64 @BN_cmp(i32*, i32*) #1

declare dso_local i32* @BN_value_one(...) #1

declare dso_local i32 @ec_group_do_inverse_ord(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_mod_mul(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_sub(i32*, i32*, i32*) #1

declare dso_local i32* @ECDSA_SIG_new(...) #1

declare dso_local i32 @ECDSA_SIG_set0(i32*, i32*, i32*) #1

declare dso_local i32 @BN_free(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

declare dso_local i32 @EC_POINT_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
