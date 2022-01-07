; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_wolfssl.c_wolfssl_hmac_vector.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_wolfssl.c_wolfssl_hmac_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i64, i64, i32**, i64*, i32*, i32)* @wolfssl_hmac_vector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wolfssl_hmac_vector(i32 %0, i32* %1, i64 %2, i64 %3, i32** %4, i64* %5, i32* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32**, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store i32 %0, i32* %10, align 4
  store i32* %1, i32** %11, align 8
  store i64 %2, i64* %12, align 8
  store i64 %3, i64* %13, align 8
  store i32** %4, i32*** %14, align 8
  store i64* %5, i64** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32 %7, i32* %17, align 4
  %20 = load i32, i32* %17, align 4
  %21 = call i64 (...) @TEST_FAIL()
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %8
  store i32 -1, i32* %9, align 4
  br label %59

24:                                               ; preds = %8
  %25 = load i32, i32* %10, align 4
  %26 = load i32*, i32** %11, align 8
  %27 = load i64, i64* %12, align 8
  %28 = trunc i64 %27 to i32
  %29 = call i64 @wc_HmacSetKey(i32* %18, i32 %25, i32* %26, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i32 -1, i32* %9, align 4
  br label %59

32:                                               ; preds = %24
  store i64 0, i64* %19, align 8
  br label %33

33:                                               ; preds = %50, %32
  %34 = load i64, i64* %19, align 8
  %35 = load i64, i64* %13, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %53

37:                                               ; preds = %33
  %38 = load i32**, i32*** %14, align 8
  %39 = load i64, i64* %19, align 8
  %40 = getelementptr inbounds i32*, i32** %38, i64 %39
  %41 = load i32*, i32** %40, align 8
  %42 = load i64*, i64** %15, align 8
  %43 = load i64, i64* %19, align 8
  %44 = getelementptr inbounds i64, i64* %42, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = call i64 @wc_HmacUpdate(i32* %18, i32* %41, i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %37
  store i32 -1, i32* %9, align 4
  br label %59

49:                                               ; preds = %37
  br label %50

50:                                               ; preds = %49
  %51 = load i64, i64* %19, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %19, align 8
  br label %33

53:                                               ; preds = %33
  %54 = load i32*, i32** %16, align 8
  %55 = call i64 @wc_HmacFinal(i32* %18, i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i32 -1, i32* %9, align 4
  br label %59

58:                                               ; preds = %53
  store i32 0, i32* %9, align 4
  br label %59

59:                                               ; preds = %58, %57, %48, %31, %23
  %60 = load i32, i32* %9, align 4
  ret i32 %60
}

declare dso_local i64 @TEST_FAIL(...) #1

declare dso_local i64 @wc_HmacSetKey(i32*, i32, i32*, i32) #1

declare dso_local i64 @wc_HmacUpdate(i32*, i32*, i64) #1

declare dso_local i64 @wc_HmacFinal(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
