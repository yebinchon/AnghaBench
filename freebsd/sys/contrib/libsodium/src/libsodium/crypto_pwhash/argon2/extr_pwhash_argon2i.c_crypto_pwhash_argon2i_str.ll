; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_pwhash/argon2/extr_pwhash_argon2i.c_crypto_pwhash_argon2i_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_pwhash/argon2/extr_pwhash_argon2i.c_crypto_pwhash_argon2i_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crypto_pwhash_argon2i_STRBYTES = common dso_local global i32 0, align 4
@crypto_pwhash_argon2i_SALTBYTES = common dso_local global i32 0, align 4
@crypto_pwhash_argon2i_PASSWD_MAX = common dso_local global i64 0, align 8
@crypto_pwhash_argon2i_OPSLIMIT_MAX = common dso_local global i64 0, align 8
@crypto_pwhash_argon2i_MEMLIMIT_MAX = common dso_local global i64 0, align 8
@EFBIG = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@crypto_pwhash_argon2i_PASSWD_MIN = common dso_local global i64 0, align 8
@crypto_pwhash_argon2i_OPSLIMIT_MIN = common dso_local global i64 0, align 8
@crypto_pwhash_argon2i_MEMLIMIT_MIN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@STR_HASHBYTES = common dso_local global i32 0, align 4
@ARGON2_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_pwhash_argon2i_str(i8* %0, i8* %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load i32, i32* @crypto_pwhash_argon2i_STRBYTES, align 4
  %16 = zext i32 %15 to i64
  %17 = load i32, i32* @crypto_pwhash_argon2i_SALTBYTES, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %12, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %13, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = load i32, i32* @crypto_pwhash_argon2i_STRBYTES, align 4
  %23 = call i32 @memset(i8* %21, i32 0, i32 %22)
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* @crypto_pwhash_argon2i_PASSWD_MAX, align 8
  %26 = icmp ugt i64 %24, %25
  br i1 %26, label %35, label %27

27:                                               ; preds = %5
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* @crypto_pwhash_argon2i_OPSLIMIT_MAX, align 8
  %30 = icmp ugt i64 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load i64, i64* %11, align 8
  %33 = load i64, i64* @crypto_pwhash_argon2i_MEMLIMIT_MAX, align 8
  %34 = icmp ugt i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31, %27, %5
  %36 = load i32, i32* @EFBIG, align 4
  store i32 %36, i32* @errno, align 4
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %14, align 4
  br label %70

37:                                               ; preds = %31
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* @crypto_pwhash_argon2i_PASSWD_MIN, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %49, label %41

41:                                               ; preds = %37
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* @crypto_pwhash_argon2i_OPSLIMIT_MIN, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = load i64, i64* %11, align 8
  %47 = load i64, i64* @crypto_pwhash_argon2i_MEMLIMIT_MIN, align 8
  %48 = icmp ult i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %45, %41, %37
  %50 = load i32, i32* @EINVAL, align 4
  store i32 %50, i32* @errno, align 4
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %14, align 4
  br label %70

51:                                               ; preds = %45
  %52 = trunc i64 %18 to i32
  %53 = call i32 @randombytes_buf(i8* %20, i32 %52)
  %54 = load i64, i64* %10, align 8
  %55 = trunc i64 %54 to i32
  %56 = load i64, i64* %11, align 8
  %57 = udiv i64 %56, 1024
  %58 = trunc i64 %57 to i32
  %59 = load i8*, i8** %8, align 8
  %60 = load i64, i64* %9, align 8
  %61 = trunc i64 %18 to i32
  %62 = load i32, i32* @STR_HASHBYTES, align 4
  %63 = load i8*, i8** %7, align 8
  %64 = load i32, i32* @crypto_pwhash_argon2i_STRBYTES, align 4
  %65 = call i64 @argon2i_hash_encoded(i32 %55, i32 %58, i32 1, i8* %59, i64 %60, i8* %20, i32 %61, i32 %62, i8* %63, i32 %64)
  %66 = load i64, i64* @ARGON2_OK, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %51
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %14, align 4
  br label %70

69:                                               ; preds = %51
  store i32 0, i32* %6, align 4
  store i32 1, i32* %14, align 4
  br label %70

70:                                               ; preds = %69, %68, %49, %35
  %71 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %71)
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @randombytes_buf(i8*, i32) #2

declare dso_local i64 @argon2i_hash_encoded(i32, i32, i32, i8*, i64, i8*, i32, i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
