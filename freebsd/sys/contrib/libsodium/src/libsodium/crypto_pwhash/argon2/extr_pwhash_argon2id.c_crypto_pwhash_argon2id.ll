; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_pwhash/argon2/extr_pwhash_argon2id.c_crypto_pwhash_argon2id.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_pwhash/argon2/extr_pwhash_argon2id.c_crypto_pwhash_argon2id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crypto_pwhash_argon2id_BYTES_MAX = common dso_local global i64 0, align 8
@EFBIG = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@crypto_pwhash_argon2id_BYTES_MIN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@crypto_pwhash_argon2id_PASSWD_MAX = common dso_local global i64 0, align 8
@crypto_pwhash_argon2id_OPSLIMIT_MAX = common dso_local global i64 0, align 8
@crypto_pwhash_argon2id_MEMLIMIT_MAX = common dso_local global i64 0, align 8
@crypto_pwhash_argon2id_PASSWD_MIN = common dso_local global i64 0, align 8
@crypto_pwhash_argon2id_OPSLIMIT_MIN = common dso_local global i64 0, align 8
@crypto_pwhash_argon2id_MEMLIMIT_MIN = common dso_local global i64 0, align 8
@crypto_pwhash_argon2id_SALTBYTES = common dso_local global i32 0, align 4
@ARGON2_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_pwhash_argon2id(i8* %0, i64 %1, i8* %2, i64 %3, i8* %4, i64 %5, i64 %6, i32 %7) #0 {
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
  %18 = load i8*, i8** %10, align 8
  %19 = load i64, i64* %11, align 8
  %20 = call i32 @memset(i8* %18, i32 0, i64 %19)
  %21 = load i64, i64* %11, align 8
  %22 = load i64, i64* @crypto_pwhash_argon2id_BYTES_MAX, align 8
  %23 = icmp ugt i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %8
  %25 = load i32, i32* @EFBIG, align 4
  store i32 %25, i32* @errno, align 4
  store i32 -1, i32* %9, align 4
  br label %82

26:                                               ; preds = %8
  %27 = load i64, i64* %11, align 8
  %28 = load i64, i64* @crypto_pwhash_argon2id_BYTES_MIN, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* @EINVAL, align 4
  store i32 %31, i32* @errno, align 4
  store i32 -1, i32* %9, align 4
  br label %82

32:                                               ; preds = %26
  %33 = load i64, i64* %13, align 8
  %34 = load i64, i64* @crypto_pwhash_argon2id_PASSWD_MAX, align 8
  %35 = icmp ugt i64 %33, %34
  br i1 %35, label %44, label %36

36:                                               ; preds = %32
  %37 = load i64, i64* %15, align 8
  %38 = load i64, i64* @crypto_pwhash_argon2id_OPSLIMIT_MAX, align 8
  %39 = icmp ugt i64 %37, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load i64, i64* %16, align 8
  %42 = load i64, i64* @crypto_pwhash_argon2id_MEMLIMIT_MAX, align 8
  %43 = icmp ugt i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40, %36, %32
  %45 = load i32, i32* @EFBIG, align 4
  store i32 %45, i32* @errno, align 4
  store i32 -1, i32* %9, align 4
  br label %82

46:                                               ; preds = %40
  %47 = load i64, i64* %13, align 8
  %48 = load i64, i64* @crypto_pwhash_argon2id_PASSWD_MIN, align 8
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %58, label %50

50:                                               ; preds = %46
  %51 = load i64, i64* %15, align 8
  %52 = load i64, i64* @crypto_pwhash_argon2id_OPSLIMIT_MIN, align 8
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = load i64, i64* %16, align 8
  %56 = load i64, i64* @crypto_pwhash_argon2id_MEMLIMIT_MIN, align 8
  %57 = icmp ult i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54, %50, %46
  %59 = load i32, i32* @EINVAL, align 4
  store i32 %59, i32* @errno, align 4
  store i32 -1, i32* %9, align 4
  br label %82

60:                                               ; preds = %54
  %61 = load i32, i32* %17, align 4
  switch i32 %61, label %80 [
    i32 128, label %62
  ]

62:                                               ; preds = %60
  %63 = load i64, i64* %15, align 8
  %64 = trunc i64 %63 to i32
  %65 = load i64, i64* %16, align 8
  %66 = udiv i64 %65, 1024
  %67 = trunc i64 %66 to i32
  %68 = load i8*, i8** %12, align 8
  %69 = load i64, i64* %13, align 8
  %70 = load i8*, i8** %14, align 8
  %71 = load i32, i32* @crypto_pwhash_argon2id_SALTBYTES, align 4
  %72 = sext i32 %71 to i64
  %73 = load i8*, i8** %10, align 8
  %74 = load i64, i64* %11, align 8
  %75 = call i32 @argon2id_hash_raw(i32 %64, i32 %67, i32 1, i8* %68, i64 %69, i8* %70, i64 %72, i8* %73, i64 %74)
  %76 = load i32, i32* @ARGON2_OK, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %62
  store i32 -1, i32* %9, align 4
  br label %82

79:                                               ; preds = %62
  store i32 0, i32* %9, align 4
  br label %82

80:                                               ; preds = %60
  %81 = load i32, i32* @EINVAL, align 4
  store i32 %81, i32* @errno, align 4
  store i32 -1, i32* %9, align 4
  br label %82

82:                                               ; preds = %80, %79, %78, %58, %44, %30, %24
  %83 = load i32, i32* %9, align 4
  ret i32 %83
}

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @argon2id_hash_raw(i32, i32, i32, i8*, i64, i8*, i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
