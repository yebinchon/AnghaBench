; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_e_des3.c_des_ede_cbc_cipher.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_e_des3.c_des_ede_cbc_cipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 (i8*, i8*, i64, i32, i64)* }

@EVP_MAXCHUNK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, i64)* @des_ede_cbc_cipher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @des_ede_cbc_cipher(i32* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = call %struct.TYPE_7__* @data(i32* %11)
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %10, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32 (i8*, i8*, i64, i32, i64)*, i32 (i8*, i8*, i64, i32, i64)** %15, align 8
  %17 = icmp ne i32 (i8*, i8*, i64, i32, i64)* %16, null
  br i1 %17, label %18, label %33

18:                                               ; preds = %4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32 (i8*, i8*, i64, i32, i64)*, i32 (i8*, i8*, i64, i32, i64)** %21, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = load i64, i64* %9, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = call i64 @EVP_CIPHER_CTX_iv_noconst(i32* %30)
  %32 = call i32 %22(i8* %23, i8* %24, i64 %25, i32 %29, i64 %31)
  store i32 1, i32* %5, align 4
  br label %83

33:                                               ; preds = %4
  br label %34

34:                                               ; preds = %38, %33
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* @EVP_MAXCHUNK, align 8
  %37 = icmp uge i64 %35, %36
  br i1 %37, label %38, label %63

38:                                               ; preds = %34
  %39 = load i8*, i8** %8, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = load i64, i64* @EVP_MAXCHUNK, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32*, i32** %6, align 8
  %49 = call i64 @EVP_CIPHER_CTX_iv_noconst(i32* %48)
  %50 = inttoptr i64 %49 to i32*
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @EVP_CIPHER_CTX_encrypting(i32* %51)
  %53 = call i32 @DES_ede3_cbc_encrypt(i8* %39, i8* %40, i64 %41, i32* %43, i32* %45, i32* %47, i32* %50, i32 %52)
  %54 = load i64, i64* @EVP_MAXCHUNK, align 8
  %55 = load i64, i64* %9, align 8
  %56 = sub i64 %55, %54
  store i64 %56, i64* %9, align 8
  %57 = load i64, i64* @EVP_MAXCHUNK, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 %57
  store i8* %59, i8** %8, align 8
  %60 = load i64, i64* @EVP_MAXCHUNK, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 %60
  store i8* %62, i8** %7, align 8
  br label %34

63:                                               ; preds = %34
  %64 = load i64, i64* %9, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %82

66:                                               ; preds = %63
  %67 = load i8*, i8** %8, align 8
  %68 = load i8*, i8** %7, align 8
  %69 = load i64, i64* %9, align 8
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 2
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i32*, i32** %6, align 8
  %77 = call i64 @EVP_CIPHER_CTX_iv_noconst(i32* %76)
  %78 = inttoptr i64 %77 to i32*
  %79 = load i32*, i32** %6, align 8
  %80 = call i32 @EVP_CIPHER_CTX_encrypting(i32* %79)
  %81 = call i32 @DES_ede3_cbc_encrypt(i8* %67, i8* %68, i64 %69, i32* %71, i32* %73, i32* %75, i32* %78, i32 %80)
  br label %82

82:                                               ; preds = %66, %63
  store i32 1, i32* %5, align 4
  br label %83

83:                                               ; preds = %82, %18
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local %struct.TYPE_7__* @data(i32*) #1

declare dso_local i64 @EVP_CIPHER_CTX_iv_noconst(i32*) #1

declare dso_local i32 @DES_ede3_cbc_encrypt(i8*, i8*, i64, i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @EVP_CIPHER_CTX_encrypting(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
