; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_openssl.c_aes_128_cbc_encrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_openssl.c_aes_128_cbc_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aes_128_cbc_encrypt(i32* %0, i32* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [16 x i32], align 16
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 -1, i32* %14, align 4
  %15 = call i64 (...) @TEST_FAIL()
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %61

18:                                               ; preds = %4
  %19 = call i32* (...) @EVP_CIPHER_CTX_new()
  store i32* %19, i32** %10, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  store i32 -1, i32* %5, align 4
  br label %61

23:                                               ; preds = %18
  %24 = load i64, i64* %9, align 8
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %11, align 4
  store i32 64, i32* %12, align 4
  %26 = load i32*, i32** %10, align 8
  %27 = call i32 (...) @EVP_aes_128_cbc()
  %28 = load i32*, i32** %6, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @EVP_EncryptInit_ex(i32* %26, i32 %27, i32* null, i32* %28, i32* %29)
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %57

32:                                               ; preds = %23
  %33 = load i32*, i32** %10, align 8
  %34 = call i32 @EVP_CIPHER_CTX_set_padding(i32* %33, i32 0)
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %57

36:                                               ; preds = %32
  %37 = load i32*, i32** %10, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = load i64, i64* %9, align 8
  %41 = call i32 @EVP_EncryptUpdate(i32* %37, i32* %38, i32* %11, i32* %39, i64 %40)
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %57

43:                                               ; preds = %36
  %44 = load i32, i32* %11, align 4
  %45 = load i64, i64* %9, align 8
  %46 = trunc i64 %45 to i32
  %47 = icmp eq i32 %44, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %43
  %49 = load i32*, i32** %10, align 8
  %50 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 0
  %51 = call i32 @EVP_EncryptFinal_ex(i32* %49, i32* %50, i32* %12)
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load i32, i32* %12, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i32 0, i32* %14, align 4
  br label %57

57:                                               ; preds = %56, %53, %48, %43, %36, %32, %23
  %58 = load i32*, i32** %10, align 8
  %59 = call i32 @EVP_CIPHER_CTX_free(i32* %58)
  %60 = load i32, i32* %14, align 4
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %57, %22, %17
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i64 @TEST_FAIL(...) #1

declare dso_local i32* @EVP_CIPHER_CTX_new(...) #1

declare dso_local i32 @EVP_EncryptInit_ex(i32*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @EVP_aes_128_cbc(...) #1

declare dso_local i32 @EVP_CIPHER_CTX_set_padding(i32*, i32) #1

declare dso_local i32 @EVP_EncryptUpdate(i32*, i32*, i32*, i32*, i64) #1

declare dso_local i32 @EVP_EncryptFinal_ex(i32*, i32*, i32*) #1

declare dso_local i32 @EVP_CIPHER_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
