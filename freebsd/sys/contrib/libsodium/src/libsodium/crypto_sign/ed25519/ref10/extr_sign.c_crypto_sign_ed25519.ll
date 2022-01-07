; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_sign/ed25519/ref10/extr_sign.c_crypto_sign_ed25519.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_sign/ed25519/ref10/extr_sign.c_crypto_sign_ed25519.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crypto_sign_ed25519_BYTES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_sign_ed25519(i8* %0, i64* %1, i8* %2, i64 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i64* %1, i64** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = load i32, i32* @crypto_sign_ed25519_BYTES, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %13, i64 %15
  %17 = load i8*, i8** %9, align 8
  %18 = load i64, i64* %10, align 8
  %19 = call i32 @memmove(i8* %16, i8* %17, i64 %18)
  %20 = load i8*, i8** %7, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = load i32, i32* @crypto_sign_ed25519_BYTES, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = load i64, i64* %10, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = call i64 @crypto_sign_ed25519_detached(i8* %20, i64* %12, i8* %24, i64 %25, i8* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %5
  %30 = load i64, i64* %12, align 8
  %31 = load i32, i32* @crypto_sign_ed25519_BYTES, align 4
  %32 = sext i32 %31 to i64
  %33 = icmp ne i64 %30, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %29, %5
  %35 = load i64*, i64** %8, align 8
  %36 = icmp ne i64* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i64*, i64** %8, align 8
  store i64 0, i64* %38, align 8
  br label %39

39:                                               ; preds = %37, %34
  %40 = load i8*, i8** %7, align 8
  %41 = load i64, i64* %10, align 8
  %42 = load i32, i32* @crypto_sign_ed25519_BYTES, align 4
  %43 = sext i32 %42 to i64
  %44 = add i64 %41, %43
  %45 = call i32 @memset(i8* %40, i32 0, i64 %44)
  store i32 -1, i32* %6, align 4
  br label %55

46:                                               ; preds = %29
  %47 = load i64*, i64** %8, align 8
  %48 = icmp ne i64* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load i64, i64* %10, align 8
  %51 = load i64, i64* %12, align 8
  %52 = add i64 %50, %51
  %53 = load i64*, i64** %8, align 8
  store i64 %52, i64* %53, align 8
  br label %54

54:                                               ; preds = %49, %46
  store i32 0, i32* %6, align 4
  br label %55

55:                                               ; preds = %54, %39
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i64 @crypto_sign_ed25519_detached(i8*, i64*, i8*, i64, i8*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
