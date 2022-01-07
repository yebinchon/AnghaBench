; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ecdh_ossl.c_ecdh_simple_compute_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ecdh_ossl.c_ecdh_simple_compute_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EC_F_ECDH_SIMPLE_COMPUTE_KEY = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@EC_R_MISSING_PRIVATE_KEY = common dso_local global i32 0, align 4
@EC_FLAG_COFACTOR_ECDH = common dso_local global i32 0, align 4
@EC_R_POINT_ARITHMETIC_FAILURE = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@ERR_R_BN_LIB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecdh_simple_compute_key(i8** %0, i64* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  store i8** %0, i8*** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32 0, i32* %14, align 4
  store i8* null, i8** %17, align 8
  %18 = call i32* (...) @BN_CTX_new()
  store i32* %18, i32** %9, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  br label %146

21:                                               ; preds = %4
  %22 = load i32*, i32** %9, align 8
  %23 = call i32 @BN_CTX_start(i32* %22)
  %24 = load i32*, i32** %9, align 8
  %25 = call i32* @BN_CTX_get(i32* %24)
  store i32* %25, i32** %11, align 8
  %26 = load i32*, i32** %11, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load i32, i32* @EC_F_ECDH_SIMPLE_COMPUTE_KEY, align 4
  %30 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %31 = call i32 @ECerr(i32 %29, i32 %30)
  br label %146

32:                                               ; preds = %21
  %33 = load i32*, i32** %8, align 8
  %34 = call i32* @EC_KEY_get0_private_key(i32* %33)
  store i32* %34, i32** %12, align 8
  %35 = load i32*, i32** %12, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i32, i32* @EC_F_ECDH_SIMPLE_COMPUTE_KEY, align 4
  %39 = load i32, i32* @EC_R_MISSING_PRIVATE_KEY, align 4
  %40 = call i32 @ECerr(i32 %38, i32 %39)
  br label %146

41:                                               ; preds = %32
  %42 = load i32*, i32** %8, align 8
  %43 = call i32* @EC_KEY_get0_group(i32* %42)
  store i32* %43, i32** %13, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = call i32 @EC_KEY_get_flags(i32* %44)
  %46 = load i32, i32* @EC_FLAG_COFACTOR_ECDH, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %67

49:                                               ; preds = %41
  %50 = load i32*, i32** %13, align 8
  %51 = load i32*, i32** %11, align 8
  %52 = call i32 @EC_GROUP_get_cofactor(i32* %50, i32* %51, i32* null)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = load i32*, i32** %11, align 8
  %56 = load i32*, i32** %11, align 8
  %57 = load i32*, i32** %12, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = call i32 @BN_mul(i32* %55, i32* %56, i32* %57, i32* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %54, %49
  %62 = load i32, i32* @EC_F_ECDH_SIMPLE_COMPUTE_KEY, align 4
  %63 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %64 = call i32 @ECerr(i32 %62, i32 %63)
  br label %146

65:                                               ; preds = %54
  %66 = load i32*, i32** %11, align 8
  store i32* %66, i32** %12, align 8
  br label %67

67:                                               ; preds = %65, %41
  %68 = load i32*, i32** %13, align 8
  %69 = call i32* @EC_POINT_new(i32* %68)
  store i32* %69, i32** %10, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load i32, i32* @EC_F_ECDH_SIMPLE_COMPUTE_KEY, align 4
  %73 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %74 = call i32 @ECerr(i32 %72, i32 %73)
  br label %146

75:                                               ; preds = %67
  %76 = load i32*, i32** %13, align 8
  %77 = load i32*, i32** %10, align 8
  %78 = load i32*, i32** %7, align 8
  %79 = load i32*, i32** %12, align 8
  %80 = load i32*, i32** %9, align 8
  %81 = call i32 @EC_POINT_mul(i32* %76, i32* %77, i32* null, i32* %78, i32* %79, i32* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %75
  %84 = load i32, i32* @EC_F_ECDH_SIMPLE_COMPUTE_KEY, align 4
  %85 = load i32, i32* @EC_R_POINT_ARITHMETIC_FAILURE, align 4
  %86 = call i32 @ECerr(i32 %84, i32 %85)
  br label %146

87:                                               ; preds = %75
  %88 = load i32*, i32** %13, align 8
  %89 = load i32*, i32** %10, align 8
  %90 = load i32*, i32** %11, align 8
  %91 = load i32*, i32** %9, align 8
  %92 = call i32 @EC_POINT_get_affine_coordinates(i32* %88, i32* %89, i32* %90, i32* null, i32* %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %87
  %95 = load i32, i32* @EC_F_ECDH_SIMPLE_COMPUTE_KEY, align 4
  %96 = load i32, i32* @EC_R_POINT_ARITHMETIC_FAILURE, align 4
  %97 = call i32 @ECerr(i32 %95, i32 %96)
  br label %146

98:                                               ; preds = %87
  %99 = load i32*, i32** %13, align 8
  %100 = call i32 @EC_GROUP_get_degree(i32* %99)
  %101 = add nsw i32 %100, 7
  %102 = sdiv i32 %101, 8
  %103 = sext i32 %102 to i64
  store i64 %103, i64* %15, align 8
  %104 = load i32*, i32** %11, align 8
  %105 = call i64 @BN_num_bytes(i32* %104)
  store i64 %105, i64* %16, align 8
  %106 = load i64, i64* %16, align 8
  %107 = load i64, i64* %15, align 8
  %108 = icmp ugt i64 %106, %107
  br i1 %108, label %109, label %113

109:                                              ; preds = %98
  %110 = load i32, i32* @EC_F_ECDH_SIMPLE_COMPUTE_KEY, align 4
  %111 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %112 = call i32 @ECerr(i32 %110, i32 %111)
  br label %146

113:                                              ; preds = %98
  %114 = load i64, i64* %15, align 8
  %115 = call i8* @OPENSSL_malloc(i64 %114)
  store i8* %115, i8** %17, align 8
  %116 = icmp eq i8* %115, null
  br i1 %116, label %117, label %121

117:                                              ; preds = %113
  %118 = load i32, i32* @EC_F_ECDH_SIMPLE_COMPUTE_KEY, align 4
  %119 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %120 = call i32 @ECerr(i32 %118, i32 %119)
  br label %146

121:                                              ; preds = %113
  %122 = load i8*, i8** %17, align 8
  %123 = load i64, i64* %15, align 8
  %124 = load i64, i64* %16, align 8
  %125 = sub i64 %123, %124
  %126 = call i32 @memset(i8* %122, i32 0, i64 %125)
  %127 = load i64, i64* %16, align 8
  %128 = load i32*, i32** %11, align 8
  %129 = load i8*, i8** %17, align 8
  %130 = load i64, i64* %15, align 8
  %131 = getelementptr inbounds i8, i8* %129, i64 %130
  %132 = load i64, i64* %16, align 8
  %133 = sub i64 0, %132
  %134 = getelementptr inbounds i8, i8* %131, i64 %133
  %135 = call i64 @BN_bn2bin(i32* %128, i8* %134)
  %136 = icmp ne i64 %127, %135
  br i1 %136, label %137, label %141

137:                                              ; preds = %121
  %138 = load i32, i32* @EC_F_ECDH_SIMPLE_COMPUTE_KEY, align 4
  %139 = load i32, i32* @ERR_R_BN_LIB, align 4
  %140 = call i32 @ECerr(i32 %138, i32 %139)
  br label %146

141:                                              ; preds = %121
  %142 = load i8*, i8** %17, align 8
  %143 = load i8**, i8*** %5, align 8
  store i8* %142, i8** %143, align 8
  %144 = load i64, i64* %15, align 8
  %145 = load i64*, i64** %6, align 8
  store i64 %144, i64* %145, align 8
  store i8* null, i8** %17, align 8
  store i32 1, i32* %14, align 4
  br label %146

146:                                              ; preds = %141, %137, %117, %109, %94, %83, %71, %61, %37, %28, %20
  %147 = load i32*, i32** %10, align 8
  %148 = call i32 @EC_POINT_clear_free(i32* %147)
  %149 = load i32*, i32** %9, align 8
  %150 = call i32 @BN_CTX_end(i32* %149)
  %151 = load i32*, i32** %9, align 8
  %152 = call i32 @BN_CTX_free(i32* %151)
  %153 = load i8*, i8** %17, align 8
  %154 = call i32 @OPENSSL_free(i8* %153)
  %155 = load i32, i32* %14, align 4
  ret i32 %155
}

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i32* @BN_CTX_get(i32*) #1

declare dso_local i32 @ECerr(i32, i32) #1

declare dso_local i32* @EC_KEY_get0_private_key(i32*) #1

declare dso_local i32* @EC_KEY_get0_group(i32*) #1

declare dso_local i32 @EC_KEY_get_flags(i32*) #1

declare dso_local i32 @EC_GROUP_get_cofactor(i32*, i32*, i32*) #1

declare dso_local i32 @BN_mul(i32*, i32*, i32*, i32*) #1

declare dso_local i32* @EC_POINT_new(i32*) #1

declare dso_local i32 @EC_POINT_mul(i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @EC_POINT_get_affine_coordinates(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @EC_GROUP_get_degree(i32*) #1

declare dso_local i64 @BN_num_bytes(i32*) #1

declare dso_local i8* @OPENSSL_malloc(i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i64 @BN_bn2bin(i32*, i8*) #1

declare dso_local i32 @EC_POINT_clear_free(i32*) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
