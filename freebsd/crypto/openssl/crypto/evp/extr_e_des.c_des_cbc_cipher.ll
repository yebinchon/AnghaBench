; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_e_des.c_des_cbc_cipher.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_e_des.c_des_cbc_cipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 (i8*, i8*, i64, i32*, i64)* }

@EVP_MAXCHUNK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, i64)* @des_cbc_cipher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @des_cbc_cipher(i32* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = call i64 @EVP_CIPHER_CTX_get_cipher_data(i32* %11)
  %13 = inttoptr i64 %12 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** %10, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32 (i8*, i8*, i64, i32*, i64)*, i32 (i8*, i8*, i64, i32*, i64)** %16, align 8
  %18 = icmp ne i32 (i8*, i8*, i64, i32*, i64)* %17, null
  br i1 %18, label %19, label %33

19:                                               ; preds = %4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32 (i8*, i8*, i64, i32*, i64)*, i32 (i8*, i8*, i64, i32*, i64)** %22, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load i64, i64* %9, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32*, i32** %6, align 8
  %31 = call i64 @EVP_CIPHER_CTX_iv_noconst(i32* %30)
  %32 = call i32 %23(i8* %24, i8* %25, i64 %26, i32* %29, i64 %31)
  store i32 1, i32* %5, align 4
  br label %75

33:                                               ; preds = %4
  br label %34

34:                                               ; preds = %38, %33
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* @EVP_MAXCHUNK, align 8
  %37 = icmp uge i64 %35, %36
  br i1 %37, label %38, label %59

38:                                               ; preds = %34
  %39 = load i8*, i8** %8, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = load i64, i64* @EVP_MAXCHUNK, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = call i64 @EVP_CIPHER_CTX_get_cipher_data(i32* %42)
  %44 = load i32*, i32** %6, align 8
  %45 = call i64 @EVP_CIPHER_CTX_iv_noconst(i32* %44)
  %46 = inttoptr i64 %45 to i32*
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @EVP_CIPHER_CTX_encrypting(i32* %47)
  %49 = call i32 @DES_ncbc_encrypt(i8* %39, i8* %40, i64 %41, i64 %43, i32* %46, i32 %48)
  %50 = load i64, i64* @EVP_MAXCHUNK, align 8
  %51 = load i64, i64* %9, align 8
  %52 = sub i64 %51, %50
  store i64 %52, i64* %9, align 8
  %53 = load i64, i64* @EVP_MAXCHUNK, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 %53
  store i8* %55, i8** %8, align 8
  %56 = load i64, i64* @EVP_MAXCHUNK, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 %56
  store i8* %58, i8** %7, align 8
  br label %34

59:                                               ; preds = %34
  %60 = load i64, i64* %9, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %59
  %63 = load i8*, i8** %8, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = load i64, i64* %9, align 8
  %66 = load i32*, i32** %6, align 8
  %67 = call i64 @EVP_CIPHER_CTX_get_cipher_data(i32* %66)
  %68 = load i32*, i32** %6, align 8
  %69 = call i64 @EVP_CIPHER_CTX_iv_noconst(i32* %68)
  %70 = inttoptr i64 %69 to i32*
  %71 = load i32*, i32** %6, align 8
  %72 = call i32 @EVP_CIPHER_CTX_encrypting(i32* %71)
  %73 = call i32 @DES_ncbc_encrypt(i8* %63, i8* %64, i64 %65, i64 %67, i32* %70, i32 %72)
  br label %74

74:                                               ; preds = %62, %59
  store i32 1, i32* %5, align 4
  br label %75

75:                                               ; preds = %74, %19
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i64 @EVP_CIPHER_CTX_get_cipher_data(i32*) #1

declare dso_local i64 @EVP_CIPHER_CTX_iv_noconst(i32*) #1

declare dso_local i32 @DES_ncbc_encrypt(i8*, i8*, i64, i64, i32*, i32) #1

declare dso_local i32 @EVP_CIPHER_CTX_encrypting(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
