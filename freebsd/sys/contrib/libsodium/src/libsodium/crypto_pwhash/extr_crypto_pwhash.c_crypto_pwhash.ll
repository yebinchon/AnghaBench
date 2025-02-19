; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_pwhash/extr_crypto_pwhash.c_crypto_pwhash.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_pwhash/extr_crypto_pwhash.c_crypto_pwhash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_pwhash(i8* %0, i64 %1, i8* %2, i64 %3, i8* %4, i64 %5, i64 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %10, align 8
  store i64 %1, i64* %11, align 8
  store i8* %2, i8** %12, align 8
  store i64 %3, i64* %13, align 8
  store i8* %4, i8** %14, align 8
  store i64 %5, i64* %15, align 8
  store i64 %6, i64* %16, align 8
  store i32 %7, i32* %17, align 4
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %39 [
    i32 129, label %19
    i32 128, label %29
  ]

19:                                               ; preds = %8
  %20 = load i8*, i8** %10, align 8
  %21 = load i64, i64* %11, align 8
  %22 = load i8*, i8** %12, align 8
  %23 = load i64, i64* %13, align 8
  %24 = load i8*, i8** %14, align 8
  %25 = load i64, i64* %15, align 8
  %26 = load i64, i64* %16, align 8
  %27 = load i32, i32* %17, align 4
  %28 = call i32 @crypto_pwhash_argon2i(i8* %20, i64 %21, i8* %22, i64 %23, i8* %24, i64 %25, i64 %26, i32 %27)
  store i32 %28, i32* %9, align 4
  br label %41

29:                                               ; preds = %8
  %30 = load i8*, i8** %10, align 8
  %31 = load i64, i64* %11, align 8
  %32 = load i8*, i8** %12, align 8
  %33 = load i64, i64* %13, align 8
  %34 = load i8*, i8** %14, align 8
  %35 = load i64, i64* %15, align 8
  %36 = load i64, i64* %16, align 8
  %37 = load i32, i32* %17, align 4
  %38 = call i32 @crypto_pwhash_argon2id(i8* %30, i64 %31, i8* %32, i64 %33, i8* %34, i64 %35, i64 %36, i32 %37)
  store i32 %38, i32* %9, align 4
  br label %41

39:                                               ; preds = %8
  %40 = load i32, i32* @EINVAL, align 4
  store i32 %40, i32* @errno, align 4
  store i32 -1, i32* %9, align 4
  br label %41

41:                                               ; preds = %39, %29, %19
  %42 = load i32, i32* %9, align 4
  ret i32 %42
}

declare dso_local i32 @crypto_pwhash_argon2i(i8*, i64, i8*, i64, i8*, i64, i64, i32) #1

declare dso_local i32 @crypto_pwhash_argon2id(i8*, i64, i8*, i64, i8*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
