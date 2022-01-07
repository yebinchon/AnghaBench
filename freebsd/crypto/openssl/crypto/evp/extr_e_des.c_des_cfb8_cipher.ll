; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_e_des.c_des_cfb8_cipher.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_e_des.c_des_cfb8_cipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EVP_MAXCHUNK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, i64)* @des_cfb8_cipher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @des_cfb8_cipher(i32* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  br label %9

9:                                                ; preds = %13, %4
  %10 = load i64, i64* %8, align 8
  %11 = load i64, i64* @EVP_MAXCHUNK, align 8
  %12 = icmp uge i64 %10, %11
  br i1 %12, label %13, label %34

13:                                               ; preds = %9
  %14 = load i8*, i8** %7, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load i64, i64* @EVP_MAXCHUNK, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @EVP_CIPHER_CTX_get_cipher_data(i32* %17)
  %19 = load i32*, i32** %5, align 8
  %20 = call i64 @EVP_CIPHER_CTX_iv_noconst(i32* %19)
  %21 = inttoptr i64 %20 to i32*
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @EVP_CIPHER_CTX_encrypting(i32* %22)
  %24 = call i32 @DES_cfb_encrypt(i8* %14, i8* %15, i32 8, i64 %16, i32 %18, i32* %21, i32 %23)
  %25 = load i64, i64* @EVP_MAXCHUNK, align 8
  %26 = load i64, i64* %8, align 8
  %27 = sub i64 %26, %25
  store i64 %27, i64* %8, align 8
  %28 = load i64, i64* @EVP_MAXCHUNK, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 %28
  store i8* %30, i8** %7, align 8
  %31 = load i64, i64* @EVP_MAXCHUNK, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 %31
  store i8* %33, i8** %6, align 8
  br label %9

34:                                               ; preds = %9
  %35 = load i64, i64* %8, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %34
  %38 = load i8*, i8** %7, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = load i64, i64* %8, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @EVP_CIPHER_CTX_get_cipher_data(i32* %41)
  %43 = load i32*, i32** %5, align 8
  %44 = call i64 @EVP_CIPHER_CTX_iv_noconst(i32* %43)
  %45 = inttoptr i64 %44 to i32*
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 @EVP_CIPHER_CTX_encrypting(i32* %46)
  %48 = call i32 @DES_cfb_encrypt(i8* %38, i8* %39, i32 8, i64 %40, i32 %42, i32* %45, i32 %47)
  br label %49

49:                                               ; preds = %37, %34
  ret i32 1
}

declare dso_local i32 @DES_cfb_encrypt(i8*, i8*, i32, i64, i32, i32*, i32) #1

declare dso_local i32 @EVP_CIPHER_CTX_get_cipher_data(i32*) #1

declare dso_local i64 @EVP_CIPHER_CTX_iv_noconst(i32*) #1

declare dso_local i32 @EVP_CIPHER_CTX_encrypting(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
