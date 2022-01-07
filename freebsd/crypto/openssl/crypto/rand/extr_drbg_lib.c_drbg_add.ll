; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rand/extr_drbg_lib.c_drbg_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rand/extr_drbg_lib.c_drbg_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, double)* @drbg_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drbg_add(i8* %0, i32 %1, double %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store double %2, double* %7, align 8
  store i32 0, i32* %8, align 4
  %12 = call i32* (...) @RAND_DRBG_get0_master()
  store i32* %12, i32** %9, align 8
  %13 = load i32*, i32** %9, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %58

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load double, double* %7, align 8
  %21 = fcmp olt double %20, 0.000000e+00
  br i1 %21, label %22, label %23

22:                                               ; preds = %19, %16
  store i32 0, i32* %4, align 4
  br label %58

23:                                               ; preds = %19
  %24 = load i32*, i32** %9, align 8
  %25 = call i32 @rand_drbg_lock(i32* %24)
  %26 = load i32*, i32** %9, align 8
  %27 = call i64 @rand_drbg_seedlen(i32* %26)
  store i64 %27, i64* %11, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %10, align 8
  %30 = load i64, i64* %10, align 8
  %31 = load i64, i64* %11, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %38, label %33

33:                                               ; preds = %23
  %34 = load double, double* %7, align 8
  %35 = load i64, i64* %11, align 8
  %36 = uitofp i64 %35 to double
  %37 = fcmp olt double %34, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %33, %23
  store double 0.000000e+00, double* %7, align 8
  br label %39

39:                                               ; preds = %38, %33
  %40 = load double, double* %7, align 8
  %41 = load i64, i64* %11, align 8
  %42 = uitofp i64 %41 to double
  %43 = fcmp ogt double %40, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i64, i64* %11, align 8
  %46 = uitofp i64 %45 to double
  store double %46, double* %7, align 8
  br label %47

47:                                               ; preds = %44, %39
  %48 = load i32*, i32** %9, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = load i64, i64* %10, align 8
  %51 = load double, double* %7, align 8
  %52 = fmul double 8.000000e+00, %51
  %53 = fptoui double %52 to i64
  %54 = call i32 @rand_drbg_restart(i32* %48, i8* %49, i64 %50, i64 %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32*, i32** %9, align 8
  %56 = call i32 @rand_drbg_unlock(i32* %55)
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %47, %22, %15
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32* @RAND_DRBG_get0_master(...) #1

declare dso_local i32 @rand_drbg_lock(i32*) #1

declare dso_local i64 @rand_drbg_seedlen(i32*) #1

declare dso_local i32 @rand_drbg_restart(i32*, i8*, i64, i64) #1

declare dso_local i32 @rand_drbg_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
