; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/curve448/extr_eddsa.c_oneshot_hash.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/curve448/extr_eddsa.c_oneshot_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@C448_FAILURE = common dso_local global i32 0, align 4
@C448_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i32*, i64)* @oneshot_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oneshot_hash(i32* %0, i64 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = call i32* (...) @EVP_MD_CTX_new()
  store i32* %11, i32** %10, align 8
  %12 = load i32*, i32** %10, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = load i32, i32* @C448_FAILURE, align 4
  store i32 %15, i32* %5, align 4
  br label %41

16:                                               ; preds = %4
  %17 = load i32*, i32** %10, align 8
  %18 = call i32 (...) @EVP_shake256()
  %19 = call i32 @EVP_DigestInit_ex(i32* %17, i32 %18, i32* null)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %16
  %22 = load i32*, i32** %10, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = load i64, i64* %9, align 8
  %25 = call i32 @EVP_DigestUpdate(i32* %22, i32* %23, i64 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load i32*, i32** %10, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @EVP_DigestFinalXOF(i32* %28, i32* %29, i64 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %27, %21, %16
  %34 = load i32*, i32** %10, align 8
  %35 = call i32 @EVP_MD_CTX_free(i32* %34)
  %36 = load i32, i32* @C448_FAILURE, align 4
  store i32 %36, i32* %5, align 4
  br label %41

37:                                               ; preds = %27
  %38 = load i32*, i32** %10, align 8
  %39 = call i32 @EVP_MD_CTX_free(i32* %38)
  %40 = load i32, i32* @C448_SUCCESS, align 4
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %37, %33, %14
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i32* @EVP_MD_CTX_new(...) #1

declare dso_local i32 @EVP_DigestInit_ex(i32*, i32, i32*) #1

declare dso_local i32 @EVP_shake256(...) #1

declare dso_local i32 @EVP_DigestUpdate(i32*, i32*, i64) #1

declare dso_local i32 @EVP_DigestFinalXOF(i32*, i32*, i64) #1

declare dso_local i32 @EVP_MD_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
