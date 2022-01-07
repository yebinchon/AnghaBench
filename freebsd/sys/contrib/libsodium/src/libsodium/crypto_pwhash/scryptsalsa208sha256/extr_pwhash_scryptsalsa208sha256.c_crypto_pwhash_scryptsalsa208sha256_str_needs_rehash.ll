; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_pwhash/scryptsalsa208sha256/extr_pwhash_scryptsalsa208sha256.c_crypto_pwhash_scryptsalsa208sha256_str_needs_rehash.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_pwhash/scryptsalsa208sha256/extr_pwhash_scryptsalsa208sha256.c_crypto_pwhash_scryptsalsa208sha256_str_needs_rehash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crypto_pwhash_scryptsalsa208sha256_STRBYTES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_pwhash_scryptsalsa208sha256_str_needs_rehash(i8* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load i32, i32* @crypto_pwhash_scryptsalsa208sha256_STRBYTES, align 4
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* %7, align 8
  %18 = call i64 @pickparams(i64 %16, i64 %17, i64* %8, i64* %10, i64* %12)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %52

22:                                               ; preds = %3
  %23 = load i8*, i8** %5, align 8
  %24 = load i32, i32* @crypto_pwhash_scryptsalsa208sha256_STRBYTES, align 4
  %25 = call i32 @sodium_strnlen(i8* %23, i32 %24)
  %26 = load i32, i32* @crypto_pwhash_scryptsalsa208sha256_STRBYTES, align 4
  %27 = sub i32 %26, 1
  %28 = icmp ne i32 %25, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* @EINVAL, align 4
  store i32 %30, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %52

31:                                               ; preds = %22
  %32 = load i8*, i8** %5, align 8
  %33 = bitcast i8* %32 to i32*
  %34 = call i32* @escrypt_parse_setting(i32* %33, i64* %9, i64* %13, i64* %11)
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @EINVAL, align 4
  store i32 %37, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %52

38:                                               ; preds = %31
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* %9, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %50, label %42

42:                                               ; preds = %38
  %43 = load i64, i64* %12, align 8
  %44 = load i64, i64* %13, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = load i64, i64* %10, align 8
  %48 = load i64, i64* %11, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46, %42, %38
  store i32 1, i32* %4, align 4
  br label %52

51:                                               ; preds = %46
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %51, %50, %36, %29, %20
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i64 @pickparams(i64, i64, i64*, i64*, i64*) #1

declare dso_local i32 @sodium_strnlen(i8*, i32) #1

declare dso_local i32* @escrypt_parse_setting(i32*, i64*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
