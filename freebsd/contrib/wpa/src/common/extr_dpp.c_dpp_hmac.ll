; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_hmac.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_hmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32*, i64, i32*, i64, i32*)* @dpp_hmac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpp_hmac(i64 %0, i32* %1, i64 %2, i32* %3, i64 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  store i64 %0, i64* %8, align 8
  store i32* %1, i32** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32* %3, i32** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32* %5, i32** %13, align 8
  %14 = load i64, i64* %8, align 8
  %15 = icmp eq i64 %14, 32
  br i1 %15, label %16, label %23

16:                                               ; preds = %6
  %17 = load i32*, i32** %9, align 8
  %18 = load i64, i64* %10, align 8
  %19 = load i32*, i32** %11, align 8
  %20 = load i64, i64* %12, align 8
  %21 = load i32*, i32** %13, align 8
  %22 = call i32 @hmac_sha256(i32* %17, i64 %18, i32* %19, i64 %20, i32* %21)
  store i32 %22, i32* %7, align 4
  br label %44

23:                                               ; preds = %6
  %24 = load i64, i64* %8, align 8
  %25 = icmp eq i64 %24, 48
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = load i32*, i32** %9, align 8
  %28 = load i64, i64* %10, align 8
  %29 = load i32*, i32** %11, align 8
  %30 = load i64, i64* %12, align 8
  %31 = load i32*, i32** %13, align 8
  %32 = call i32 @hmac_sha384(i32* %27, i64 %28, i32* %29, i64 %30, i32* %31)
  store i32 %32, i32* %7, align 4
  br label %44

33:                                               ; preds = %23
  %34 = load i64, i64* %8, align 8
  %35 = icmp eq i64 %34, 64
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = load i32*, i32** %9, align 8
  %38 = load i64, i64* %10, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = load i64, i64* %12, align 8
  %41 = load i32*, i32** %13, align 8
  %42 = call i32 @hmac_sha512(i32* %37, i64 %38, i32* %39, i64 %40, i32* %41)
  store i32 %42, i32* %7, align 4
  br label %44

43:                                               ; preds = %33
  store i32 -1, i32* %7, align 4
  br label %44

44:                                               ; preds = %43, %36, %26, %16
  %45 = load i32, i32* %7, align 4
  ret i32 %45
}

declare dso_local i32 @hmac_sha256(i32*, i64, i32*, i64, i32*) #1

declare dso_local i32 @hmac_sha384(i32*, i64, i32*, i64, i32*) #1

declare dso_local i32 @hmac_sha512(i32*, i64, i32*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
