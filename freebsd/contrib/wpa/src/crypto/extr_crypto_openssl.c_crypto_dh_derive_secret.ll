; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_openssl.c_crypto_dh_derive_secret.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_openssl.c_crypto_dh_derive_secret.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_dh_derive_secret(i32 %0, i32* %1, i64 %2, i32* %3, i64 %4, i32* %5, i64 %6, i32* %7, i64 %8, i32* %9, i64* %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i64*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32, align 4
  store i32 %0, i32* %12, align 4
  store i32* %1, i32** %13, align 8
  store i64 %2, i64* %14, align 8
  store i32* %3, i32** %15, align 8
  store i64 %4, i64* %16, align 8
  store i32* %5, i32** %17, align 8
  store i64 %6, i64* %18, align 8
  store i32* %7, i32** %19, align 8
  store i64 %8, i64* %20, align 8
  store i32* %9, i32** %21, align 8
  store i64* %10, i64** %22, align 8
  store i32 -1, i32* %25, align 4
  %30 = load i32*, i32** %19, align 8
  %31 = load i64, i64* %20, align 8
  %32 = call i32* @BN_bin2bn(i32* %30, i64 %31, i32* null)
  store i32* %32, i32** %23, align 8
  %33 = load i32*, i32** %13, align 8
  %34 = load i64, i64* %14, align 8
  %35 = call i32* @BN_bin2bn(i32* %33, i64 %34, i32* null)
  store i32* %35, i32** %24, align 8
  %36 = load i32*, i32** %23, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %54

38:                                               ; preds = %11
  %39 = load i32*, i32** %24, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %54

41:                                               ; preds = %38
  %42 = load i32*, i32** %23, align 8
  %43 = call i64 @BN_is_zero(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %41
  %46 = load i32*, i32** %23, align 8
  %47 = call i64 @BN_is_one(i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %45
  %50 = load i32*, i32** %23, align 8
  %51 = load i32*, i32** %24, align 8
  %52 = call i64 @BN_cmp(i32* %50, i32* %51)
  %53 = icmp sge i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49, %45, %41, %38, %11
  br label %108

55:                                               ; preds = %49
  %56 = load i32*, i32** %15, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %98

58:                                               ; preds = %55
  %59 = load i32*, i32** %15, align 8
  %60 = load i64, i64* %16, align 8
  %61 = call i32* @BN_bin2bn(i32* %59, i64 %60, i32* null)
  store i32* %61, i32** %27, align 8
  %62 = call i32* (...) @BN_CTX_new()
  store i32* %62, i32** %26, align 8
  %63 = call i32* (...) @BN_new()
  store i32* %63, i32** %28, align 8
  %64 = load i32*, i32** %27, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %85

66:                                               ; preds = %58
  %67 = load i32*, i32** %26, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %85

69:                                               ; preds = %66
  %70 = load i32*, i32** %28, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %85

72:                                               ; preds = %69
  %73 = load i32*, i32** %28, align 8
  %74 = load i32*, i32** %23, align 8
  %75 = load i32*, i32** %27, align 8
  %76 = load i32*, i32** %24, align 8
  %77 = load i32*, i32** %26, align 8
  %78 = call i32 @BN_mod_exp(i32* %73, i32* %74, i32* %75, i32* %76, i32* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %72
  %81 = load i32*, i32** %28, align 8
  %82 = call i64 @BN_is_one(i32* %81)
  %83 = icmp ne i64 %82, 0
  %84 = xor i1 %83, true
  br label %85

85:                                               ; preds = %80, %72, %69, %66, %58
  %86 = phi i1 [ true, %72 ], [ true, %69 ], [ true, %66 ], [ true, %58 ], [ %84, %80 ]
  %87 = zext i1 %86 to i32
  store i32 %87, i32* %29, align 4
  %88 = load i32*, i32** %27, align 8
  %89 = call i32 @BN_clear_free(i32* %88)
  %90 = load i32*, i32** %28, align 8
  %91 = call i32 @BN_clear_free(i32* %90)
  %92 = load i32*, i32** %26, align 8
  %93 = call i32 @BN_CTX_free(i32* %92)
  %94 = load i32, i32* %29, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %85
  br label %108

97:                                               ; preds = %85
  br label %98

98:                                               ; preds = %97, %55
  %99 = load i32*, i32** %19, align 8
  %100 = load i64, i64* %20, align 8
  %101 = load i32*, i32** %17, align 8
  %102 = load i64, i64* %18, align 8
  %103 = load i32*, i32** %13, align 8
  %104 = load i64, i64* %14, align 8
  %105 = load i32*, i32** %21, align 8
  %106 = load i64*, i64** %22, align 8
  %107 = call i32 @crypto_mod_exp(i32* %99, i64 %100, i32* %101, i64 %102, i32* %103, i64 %104, i32* %105, i64* %106)
  store i32 %107, i32* %25, align 4
  br label %108

108:                                              ; preds = %98, %96, %54
  %109 = load i32*, i32** %23, align 8
  %110 = call i32 @BN_clear_free(i32* %109)
  %111 = load i32*, i32** %24, align 8
  %112 = call i32 @BN_clear_free(i32* %111)
  %113 = load i32, i32* %25, align 4
  ret i32 %113
}

declare dso_local i32* @BN_bin2bn(i32*, i64, i32*) #1

declare dso_local i64 @BN_is_zero(i32*) #1

declare dso_local i64 @BN_is_one(i32*) #1

declare dso_local i64 @BN_cmp(i32*, i32*) #1

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32 @BN_mod_exp(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_clear_free(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

declare dso_local i32 @crypto_mod_exp(i32*, i64, i32*, i64, i32*, i64, i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
