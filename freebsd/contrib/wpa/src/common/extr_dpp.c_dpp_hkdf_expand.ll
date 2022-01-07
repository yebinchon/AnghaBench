; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_hkdf_expand.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_hkdf_expand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32*, i64, i8*, i32*, i64)* @dpp_hkdf_expand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpp_hkdf_expand(i64 %0, i32* %1, i64 %2, i8* %3, i32* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  store i64 %0, i64* %8, align 8
  store i32* %1, i32** %9, align 8
  store i64 %2, i64* %10, align 8
  store i8* %3, i8** %11, align 8
  store i32* %4, i32** %12, align 8
  store i64 %5, i64* %13, align 8
  %14 = load i64, i64* %8, align 8
  %15 = icmp eq i64 %14, 32
  br i1 %15, label %16, label %26

16:                                               ; preds = %6
  %17 = load i32*, i32** %9, align 8
  %18 = load i64, i64* %10, align 8
  %19 = load i8*, i8** %11, align 8
  %20 = bitcast i8* %19 to i32*
  %21 = load i8*, i8** %11, align 8
  %22 = call i32 @os_strlen(i8* %21)
  %23 = load i32*, i32** %12, align 8
  %24 = load i64, i64* %13, align 8
  %25 = call i32 @hmac_sha256_kdf(i32* %17, i64 %18, i32* null, i32* %20, i32 %22, i32* %23, i64 %24)
  store i32 %25, i32* %7, align 4
  br label %53

26:                                               ; preds = %6
  %27 = load i64, i64* %8, align 8
  %28 = icmp eq i64 %27, 48
  br i1 %28, label %29, label %39

29:                                               ; preds = %26
  %30 = load i32*, i32** %9, align 8
  %31 = load i64, i64* %10, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = bitcast i8* %32 to i32*
  %34 = load i8*, i8** %11, align 8
  %35 = call i32 @os_strlen(i8* %34)
  %36 = load i32*, i32** %12, align 8
  %37 = load i64, i64* %13, align 8
  %38 = call i32 @hmac_sha384_kdf(i32* %30, i64 %31, i32* null, i32* %33, i32 %35, i32* %36, i64 %37)
  store i32 %38, i32* %7, align 4
  br label %53

39:                                               ; preds = %26
  %40 = load i64, i64* %8, align 8
  %41 = icmp eq i64 %40, 64
  br i1 %41, label %42, label %52

42:                                               ; preds = %39
  %43 = load i32*, i32** %9, align 8
  %44 = load i64, i64* %10, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = bitcast i8* %45 to i32*
  %47 = load i8*, i8** %11, align 8
  %48 = call i32 @os_strlen(i8* %47)
  %49 = load i32*, i32** %12, align 8
  %50 = load i64, i64* %13, align 8
  %51 = call i32 @hmac_sha512_kdf(i32* %43, i64 %44, i32* null, i32* %46, i32 %48, i32* %49, i64 %50)
  store i32 %51, i32* %7, align 4
  br label %53

52:                                               ; preds = %39
  store i32 -1, i32* %7, align 4
  br label %53

53:                                               ; preds = %52, %42, %29, %16
  %54 = load i32, i32* %7, align 4
  ret i32 %54
}

declare dso_local i32 @hmac_sha256_kdf(i32*, i64, i32*, i32*, i32, i32*, i64) #1

declare dso_local i32 @os_strlen(i8*) #1

declare dso_local i32 @hmac_sha384_kdf(i32*, i64, i32*, i32*, i32, i32*, i64) #1

declare dso_local i32 @hmac_sha512_kdf(i32*, i64, i32*, i32*, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
