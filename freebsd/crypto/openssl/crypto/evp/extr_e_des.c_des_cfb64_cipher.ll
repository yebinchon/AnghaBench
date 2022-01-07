; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_e_des.c_des_cfb64_cipher.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_e_des.c_des_cfb64_cipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EVP_MAXCHUNK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, i64)* @des_cfb64_cipher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @des_cfb64_cipher(i32* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  br label %11

11:                                               ; preds = %15, %4
  %12 = load i64, i64* %8, align 8
  %13 = load i64, i64* @EVP_MAXCHUNK, align 8
  %14 = icmp uge i64 %12, %13
  br i1 %14, label %15, label %41

15:                                               ; preds = %11
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @EVP_CIPHER_CTX_num(i32* %16)
  store i32 %17, i32* %9, align 4
  %18 = load i8*, i8** %7, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = load i64, i64* @EVP_MAXCHUNK, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @EVP_CIPHER_CTX_get_cipher_data(i32* %21)
  %23 = load i32*, i32** %5, align 8
  %24 = call i64 @EVP_CIPHER_CTX_iv_noconst(i32* %23)
  %25 = inttoptr i64 %24 to i32*
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @EVP_CIPHER_CTX_encrypting(i32* %26)
  %28 = call i32 @DES_cfb64_encrypt(i8* %18, i8* %19, i64 %20, i32 %22, i32* %25, i32* %9, i32 %27)
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @EVP_CIPHER_CTX_set_num(i32* %29, i32 %30)
  %32 = load i64, i64* @EVP_MAXCHUNK, align 8
  %33 = load i64, i64* %8, align 8
  %34 = sub i64 %33, %32
  store i64 %34, i64* %8, align 8
  %35 = load i64, i64* @EVP_MAXCHUNK, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 %35
  store i8* %37, i8** %7, align 8
  %38 = load i64, i64* @EVP_MAXCHUNK, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 %38
  store i8* %40, i8** %6, align 8
  br label %11

41:                                               ; preds = %11
  %42 = load i64, i64* %8, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %61

44:                                               ; preds = %41
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @EVP_CIPHER_CTX_num(i32* %45)
  store i32 %46, i32* %10, align 4
  %47 = load i8*, i8** %7, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = load i64, i64* %8, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @EVP_CIPHER_CTX_get_cipher_data(i32* %50)
  %52 = load i32*, i32** %5, align 8
  %53 = call i64 @EVP_CIPHER_CTX_iv_noconst(i32* %52)
  %54 = inttoptr i64 %53 to i32*
  %55 = load i32*, i32** %5, align 8
  %56 = call i32 @EVP_CIPHER_CTX_encrypting(i32* %55)
  %57 = call i32 @DES_cfb64_encrypt(i8* %47, i8* %48, i64 %49, i32 %51, i32* %54, i32* %10, i32 %56)
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @EVP_CIPHER_CTX_set_num(i32* %58, i32 %59)
  br label %61

61:                                               ; preds = %44, %41
  ret i32 1
}

declare dso_local i32 @EVP_CIPHER_CTX_num(i32*) #1

declare dso_local i32 @DES_cfb64_encrypt(i8*, i8*, i64, i32, i32*, i32*, i32) #1

declare dso_local i32 @EVP_CIPHER_CTX_get_cipher_data(i32*) #1

declare dso_local i64 @EVP_CIPHER_CTX_iv_noconst(i32*) #1

declare dso_local i32 @EVP_CIPHER_CTX_encrypting(i32*) #1

declare dso_local i32 @EVP_CIPHER_CTX_set_num(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
