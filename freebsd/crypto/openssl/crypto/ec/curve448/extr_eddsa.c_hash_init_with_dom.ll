; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/curve448/extr_eddsa.c_hash_init_with_dom.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/curve448/extr_eddsa.c_hash_init_with_dom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"SigEd448\00", align 1
@UINT8_MAX = common dso_local global i64 0, align 8
@C448_FAILURE = common dso_local global i32 0, align 4
@C448_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i64, i64*, i64)* @hash_init_with_dom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hash_init_with_dom(i32* %0, i64 %1, i64 %2, i64* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca [2 x i64], align 16
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i64 %4, i64* %11, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  %14 = load i64, i64* %11, align 8
  %15 = load i64, i64* @UINT8_MAX, align 8
  %16 = icmp ugt i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %5
  %18 = load i32, i32* @C448_FAILURE, align 4
  store i32 %18, i32* %6, align 4
  br label %60

19:                                               ; preds = %5
  %20 = load i64, i64* %8, align 8
  %21 = icmp eq i64 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 1, i32 0
  %24 = sub nsw i32 2, %23
  %25 = load i64, i64* %9, align 8
  %26 = icmp eq i64 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 1, i32 0
  %29 = sub nsw i32 %24, %28
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [2 x i64], [2 x i64]* %13, i64 0, i64 0
  store i64 %30, i64* %31, align 16
  %32 = load i64, i64* %11, align 8
  %33 = getelementptr inbounds [2 x i64], [2 x i64]* %13, i64 0, i64 1
  store i64 %32, i64* %33, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 (...) @EVP_shake256()
  %36 = call i32 @EVP_DigestInit_ex(i32* %34, i32 %35, i32* null)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %56

38:                                               ; preds = %19
  %39 = load i32*, i32** %7, align 8
  %40 = load i8*, i8** %12, align 8
  %41 = load i8*, i8** %12, align 8
  %42 = call i64 @strlen(i8* %41)
  %43 = call i32 (i32*, ...) @EVP_DigestUpdate(i32* %39, i8* %40, i64 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %38
  %46 = load i32*, i32** %7, align 8
  %47 = getelementptr inbounds [2 x i64], [2 x i64]* %13, i64 0, i64 0
  %48 = call i32 (i32*, ...) @EVP_DigestUpdate(i32* %46, i64* %47, i64 16)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = load i32*, i32** %7, align 8
  %52 = load i64*, i64** %10, align 8
  %53 = load i64, i64* %11, align 8
  %54 = call i32 (i32*, ...) @EVP_DigestUpdate(i32* %51, i64* %52, i64 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %50, %45, %38, %19
  %57 = load i32, i32* @C448_FAILURE, align 4
  store i32 %57, i32* %6, align 4
  br label %60

58:                                               ; preds = %50
  %59 = load i32, i32* @C448_SUCCESS, align 4
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %58, %56, %17
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local i32 @EVP_DigestInit_ex(i32*, i32, i32*) #1

declare dso_local i32 @EVP_shake256(...) #1

declare dso_local i32 @EVP_DigestUpdate(i32*, ...) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
