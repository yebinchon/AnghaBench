; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_wolfssl.c_crypto_dh_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_wolfssl.c_crypto_dh_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_dh_init(i32 %0, i32* %1, i64 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 -1, i32* %12, align 4
  store i32* null, i32** %14, align 8
  %19 = call i64 (...) @TEST_FAIL()
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %91

22:                                               ; preds = %5
  %23 = call i32* @os_malloc(i32 4)
  store i32* %23, i32** %14, align 8
  %24 = load i32*, i32** %14, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  store i32 -1, i32* %6, align 4
  br label %91

27:                                               ; preds = %22
  %28 = load i32*, i32** %14, align 8
  %29 = call i32 @wc_InitDhKey(i32* %28)
  %30 = call i64 @wc_InitRng(i32* %13)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32*, i32** %14, align 8
  %34 = call i32 @os_free(i32* %33)
  store i32 -1, i32* %6, align 4
  br label %91

35:                                               ; preds = %27
  %36 = load i32*, i32** %14, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = load i64, i64* %9, align 8
  %39 = call i64 @wc_DhSetKey(i32* %36, i32* %37, i64 %38, i32* %7, i32 1)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %84

42:                                               ; preds = %35
  %43 = load i32*, i32** %14, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = load i32*, i32** %11, align 8
  %46 = call i64 @wc_DhGenerateKeyPair(i32* %43, i32* %13, i32* %44, i64* %15, i32* %45, i64* %16)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %84

49:                                               ; preds = %42
  %50 = load i64, i64* %15, align 8
  %51 = load i64, i64* %9, align 8
  %52 = icmp ult i64 %50, %51
  br i1 %52, label %53, label %66

53:                                               ; preds = %49
  %54 = load i64, i64* %9, align 8
  %55 = load i64, i64* %15, align 8
  %56 = sub i64 %54, %55
  store i64 %56, i64* %17, align 8
  %57 = load i32*, i32** %10, align 8
  %58 = load i64, i64* %17, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = load i32*, i32** %10, align 8
  %61 = load i64, i64* %15, align 8
  %62 = call i32 @os_memmove(i32* %59, i32* %60, i64 %61)
  %63 = load i32*, i32** %10, align 8
  %64 = load i64, i64* %17, align 8
  %65 = call i32 @os_memset(i32* %63, i32 0, i64 %64)
  br label %66

66:                                               ; preds = %53, %49
  %67 = load i64, i64* %16, align 8
  %68 = load i64, i64* %9, align 8
  %69 = icmp ult i64 %67, %68
  br i1 %69, label %70, label %83

70:                                               ; preds = %66
  %71 = load i64, i64* %9, align 8
  %72 = load i64, i64* %16, align 8
  %73 = sub i64 %71, %72
  store i64 %73, i64* %18, align 8
  %74 = load i32*, i32** %11, align 8
  %75 = load i64, i64* %18, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  %77 = load i32*, i32** %11, align 8
  %78 = load i64, i64* %16, align 8
  %79 = call i32 @os_memmove(i32* %76, i32* %77, i64 %78)
  %80 = load i32*, i32** %11, align 8
  %81 = load i64, i64* %18, align 8
  %82 = call i32 @os_memset(i32* %80, i32 0, i64 %81)
  br label %83

83:                                               ; preds = %70, %66
  store i32 0, i32* %12, align 4
  br label %84

84:                                               ; preds = %83, %48, %41
  %85 = load i32*, i32** %14, align 8
  %86 = call i32 @wc_FreeDhKey(i32* %85)
  %87 = load i32*, i32** %14, align 8
  %88 = call i32 @os_free(i32* %87)
  %89 = call i32 @wc_FreeRng(i32* %13)
  %90 = load i32, i32* %12, align 4
  store i32 %90, i32* %6, align 4
  br label %91

91:                                               ; preds = %84, %32, %26, %21
  %92 = load i32, i32* %6, align 4
  ret i32 %92
}

declare dso_local i64 @TEST_FAIL(...) #1

declare dso_local i32* @os_malloc(i32) #1

declare dso_local i32 @wc_InitDhKey(i32*) #1

declare dso_local i64 @wc_InitRng(i32*) #1

declare dso_local i32 @os_free(i32*) #1

declare dso_local i64 @wc_DhSetKey(i32*, i32*, i64, i32*, i32) #1

declare dso_local i64 @wc_DhGenerateKeyPair(i32*, i32*, i32*, i64*, i32*, i64*) #1

declare dso_local i32 @os_memmove(i32*, i32*, i64) #1

declare dso_local i32 @os_memset(i32*, i32, i64) #1

declare dso_local i32 @wc_FreeDhKey(i32*) #1

declare dso_local i32 @wc_FreeRng(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
