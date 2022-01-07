; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_pwhash/scryptsalsa208sha256/extr_pwhash_scryptsalsa208sha256.c_crypto_pwhash_scryptsalsa208sha256_str_verify.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_pwhash/scryptsalsa208sha256/extr_pwhash_scryptsalsa208sha256.c_crypto_pwhash_scryptsalsa208sha256_str_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crypto_pwhash_scryptsalsa208sha256_STRBYTES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_pwhash_scryptsalsa208sha256_str_verify(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i32, i32* @crypto_pwhash_scryptsalsa208sha256_STRBYTES, align 4
  %14 = zext i32 %13 to i64
  %15 = load i32, i32* @crypto_pwhash_scryptsalsa208sha256_STRBYTES, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  store i32 -1, i32* %11, align 4
  %19 = load i8*, i8** %5, align 8
  %20 = load i32, i32* @crypto_pwhash_scryptsalsa208sha256_STRBYTES, align 4
  %21 = call i32 @sodium_strnlen(i8* %19, i32 %20)
  %22 = load i32, i32* @crypto_pwhash_scryptsalsa208sha256_STRBYTES, align 4
  %23 = sub i32 %22, 1
  %24 = icmp ne i32 %21, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %52

26:                                               ; preds = %3
  %27 = call i64 @escrypt_init_local(i32* %10)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %52

30:                                               ; preds = %26
  %31 = trunc i64 %16 to i32
  %32 = call i32 @memset(i8* %18, i32 0, i32 %31)
  %33 = load i8*, i8** %6, align 8
  %34 = bitcast i8* %33 to i32*
  %35 = load i64, i64* %7, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = bitcast i8* %36 to i32*
  %38 = bitcast i8* %18 to i32*
  %39 = trunc i64 %16 to i32
  %40 = call i32* @escrypt_r(i32* %10, i32* %34, i64 %35, i32* %37, i32* %38, i32 %39)
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %30
  %43 = call i32 @escrypt_free_local(i32* %10)
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %52

44:                                               ; preds = %30
  %45 = call i32 @escrypt_free_local(i32* %10)
  %46 = load i8*, i8** %5, align 8
  %47 = trunc i64 %16 to i32
  %48 = call i32 @sodium_memcmp(i8* %18, i8* %46, i32 %47)
  store i32 %48, i32* %11, align 4
  %49 = trunc i64 %16 to i32
  %50 = call i32 @sodium_memzero(i8* %18, i32 %49)
  %51 = load i32, i32* %11, align 4
  store i32 %51, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %52

52:                                               ; preds = %44, %42, %29, %25
  %53 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %53)
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sodium_strnlen(i8*, i32) #2

declare dso_local i64 @escrypt_init_local(i32*) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32* @escrypt_r(i32*, i32*, i64, i32*, i32*, i32) #2

declare dso_local i32 @escrypt_free_local(i32*) #2

declare dso_local i32 @sodium_memcmp(i8*, i8*, i32) #2

declare dso_local i32 @sodium_memzero(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
