; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_e_des3.c_des_ede_cfb64_cipher.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_e_des3.c_des_ede_cfb64_cipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@EVP_MAXCHUNK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, i64)* @des_ede_cfb64_cipher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @des_ede_cfb64_cipher(i32* %0, i8* %1, i8* %2, i64 %3) #0 {
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
  br i1 %14, label %15, label %48

15:                                               ; preds = %11
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @EVP_CIPHER_CTX_num(i32* %16)
  store i32 %17, i32* %9, align 4
  %18 = load i8*, i8** %7, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = load i64, i64* @EVP_MAXCHUNK, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = call %struct.TYPE_2__* @data(i32* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = load i32*, i32** %5, align 8
  %25 = call %struct.TYPE_2__* @data(i32* %24)
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32*, i32** %5, align 8
  %28 = call %struct.TYPE_2__* @data(i32* %27)
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32*, i32** %5, align 8
  %31 = call i64 @EVP_CIPHER_CTX_iv_noconst(i32* %30)
  %32 = inttoptr i64 %31 to i32*
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @EVP_CIPHER_CTX_encrypting(i32* %33)
  %35 = call i32 @DES_ede3_cfb64_encrypt(i8* %18, i8* %19, i64 %20, i32* %23, i32* %26, i32* %29, i32* %32, i32* %9, i32 %34)
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @EVP_CIPHER_CTX_set_num(i32* %36, i32 %37)
  %39 = load i64, i64* @EVP_MAXCHUNK, align 8
  %40 = load i64, i64* %8, align 8
  %41 = sub i64 %40, %39
  store i64 %41, i64* %8, align 8
  %42 = load i64, i64* @EVP_MAXCHUNK, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 %42
  store i8* %44, i8** %7, align 8
  %45 = load i64, i64* @EVP_MAXCHUNK, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 %45
  store i8* %47, i8** %6, align 8
  br label %11

48:                                               ; preds = %11
  %49 = load i64, i64* %8, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %75

51:                                               ; preds = %48
  %52 = load i32*, i32** %5, align 8
  %53 = call i32 @EVP_CIPHER_CTX_num(i32* %52)
  store i32 %53, i32* %10, align 4
  %54 = load i8*, i8** %7, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = load i64, i64* %8, align 8
  %57 = load i32*, i32** %5, align 8
  %58 = call %struct.TYPE_2__* @data(i32* %57)
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  %60 = load i32*, i32** %5, align 8
  %61 = call %struct.TYPE_2__* @data(i32* %60)
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i32*, i32** %5, align 8
  %64 = call %struct.TYPE_2__* @data(i32* %63)
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32*, i32** %5, align 8
  %67 = call i64 @EVP_CIPHER_CTX_iv_noconst(i32* %66)
  %68 = inttoptr i64 %67 to i32*
  %69 = load i32*, i32** %5, align 8
  %70 = call i32 @EVP_CIPHER_CTX_encrypting(i32* %69)
  %71 = call i32 @DES_ede3_cfb64_encrypt(i8* %54, i8* %55, i64 %56, i32* %59, i32* %62, i32* %65, i32* %68, i32* %10, i32 %70)
  %72 = load i32*, i32** %5, align 8
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @EVP_CIPHER_CTX_set_num(i32* %72, i32 %73)
  br label %75

75:                                               ; preds = %51, %48
  ret i32 1
}

declare dso_local i32 @EVP_CIPHER_CTX_num(i32*) #1

declare dso_local i32 @DES_ede3_cfb64_encrypt(i8*, i8*, i64, i32*, i32*, i32*, i32*, i32*, i32) #1

declare dso_local %struct.TYPE_2__* @data(i32*) #1

declare dso_local i64 @EVP_CIPHER_CTX_iv_noconst(i32*) #1

declare dso_local i32 @EVP_CIPHER_CTX_encrypting(i32*) #1

declare dso_local i32 @EVP_CIPHER_CTX_set_num(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
