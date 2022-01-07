; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/lhash/extr_lhash.c_openssl_lh_strcasehash.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/lhash/extr_lhash.c_openssl_lh_strcasehash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @openssl_lh_strcasehash(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 0, i64* %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10, %1
  %16 = load i64, i64* %4, align 8
  store i64 %16, i64* %2, align 8
  br label %62

17:                                               ; preds = %10
  store i64 256, i64* %5, align 8
  br label %18

18:                                               ; preds = %54, %17
  %19 = load i8*, i8** %3, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %57

23:                                               ; preds = %18
  %24 = load i64, i64* %5, align 8
  %25 = load i8*, i8** %3, align 8
  %26 = load i8, i8* %25, align 1
  %27 = call i64 @ossl_tolower(i8 signext %26)
  %28 = or i64 %24, %27
  store i64 %28, i64* %6, align 8
  %29 = load i64, i64* %6, align 8
  %30 = lshr i64 %29, 2
  %31 = load i64, i64* %6, align 8
  %32 = xor i64 %30, %31
  %33 = trunc i64 %32 to i32
  %34 = and i32 %33, 15
  store i32 %34, i32* %7, align 4
  %35 = load i64, i64* %4, align 8
  %36 = load i32, i32* %7, align 4
  %37 = zext i32 %36 to i64
  %38 = shl i64 %35, %37
  %39 = load i64, i64* %4, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sub nsw i32 32, %40
  %42 = zext i32 %41 to i64
  %43 = lshr i64 %39, %42
  %44 = or i64 %38, %43
  store i64 %44, i64* %4, align 8
  %45 = load i64, i64* %4, align 8
  %46 = and i64 %45, 4294967295
  store i64 %46, i64* %4, align 8
  %47 = load i64, i64* %6, align 8
  %48 = load i64, i64* %6, align 8
  %49 = mul i64 %47, %48
  %50 = load i64, i64* %4, align 8
  %51 = xor i64 %50, %49
  store i64 %51, i64* %4, align 8
  %52 = load i8*, i8** %3, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %3, align 8
  br label %54

54:                                               ; preds = %23
  %55 = load i64, i64* %5, align 8
  %56 = add nsw i64 %55, 256
  store i64 %56, i64* %5, align 8
  br label %18

57:                                               ; preds = %18
  %58 = load i64, i64* %4, align 8
  %59 = lshr i64 %58, 16
  %60 = load i64, i64* %4, align 8
  %61 = xor i64 %59, %60
  store i64 %61, i64* %2, align 8
  br label %62

62:                                               ; preds = %57, %15
  %63 = load i64, i64* %2, align 8
  ret i64 %63
}

declare dso_local i64 @ossl_tolower(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
