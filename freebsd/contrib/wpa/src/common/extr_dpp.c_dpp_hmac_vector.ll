; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_hmac_vector.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_hmac_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32*, i64, i64, i32**, i64*, i32*)* @dpp_hmac_vector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpp_hmac_vector(i64 %0, i32* %1, i64 %2, i64 %3, i32** %4, i64* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32*, align 8
  store i64 %0, i64* %9, align 8
  store i32* %1, i32** %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i32** %4, i32*** %13, align 8
  store i64* %5, i64** %14, align 8
  store i32* %6, i32** %15, align 8
  %16 = load i64, i64* %9, align 8
  %17 = icmp eq i64 %16, 32
  br i1 %17, label %18, label %26

18:                                               ; preds = %7
  %19 = load i32*, i32** %10, align 8
  %20 = load i64, i64* %11, align 8
  %21 = load i64, i64* %12, align 8
  %22 = load i32**, i32*** %13, align 8
  %23 = load i64*, i64** %14, align 8
  %24 = load i32*, i32** %15, align 8
  %25 = call i32 @hmac_sha256_vector(i32* %19, i64 %20, i64 %21, i32** %22, i64* %23, i32* %24)
  store i32 %25, i32* %8, align 4
  br label %49

26:                                               ; preds = %7
  %27 = load i64, i64* %9, align 8
  %28 = icmp eq i64 %27, 48
  br i1 %28, label %29, label %37

29:                                               ; preds = %26
  %30 = load i32*, i32** %10, align 8
  %31 = load i64, i64* %11, align 8
  %32 = load i64, i64* %12, align 8
  %33 = load i32**, i32*** %13, align 8
  %34 = load i64*, i64** %14, align 8
  %35 = load i32*, i32** %15, align 8
  %36 = call i32 @hmac_sha384_vector(i32* %30, i64 %31, i64 %32, i32** %33, i64* %34, i32* %35)
  store i32 %36, i32* %8, align 4
  br label %49

37:                                               ; preds = %26
  %38 = load i64, i64* %9, align 8
  %39 = icmp eq i64 %38, 64
  br i1 %39, label %40, label %48

40:                                               ; preds = %37
  %41 = load i32*, i32** %10, align 8
  %42 = load i64, i64* %11, align 8
  %43 = load i64, i64* %12, align 8
  %44 = load i32**, i32*** %13, align 8
  %45 = load i64*, i64** %14, align 8
  %46 = load i32*, i32** %15, align 8
  %47 = call i32 @hmac_sha512_vector(i32* %41, i64 %42, i64 %43, i32** %44, i64* %45, i32* %46)
  store i32 %47, i32* %8, align 4
  br label %49

48:                                               ; preds = %37
  store i32 -1, i32* %8, align 4
  br label %49

49:                                               ; preds = %48, %40, %29, %18
  %50 = load i32, i32* %8, align 4
  ret i32 %50
}

declare dso_local i32 @hmac_sha256_vector(i32*, i64, i64, i32**, i64*, i32*) #1

declare dso_local i32 @hmac_sha384_vector(i32*, i64, i64, i32**, i64*, i32*) #1

declare dso_local i32 @hmac_sha512_vector(i32*, i64, i64, i32**, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
