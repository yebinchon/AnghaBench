; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_openssl.c_rc4_skip.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_openssl.c_rc4_skip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rc4_skip(i8* %0, i64 %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [16 x i8], align 16
  %15 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  store i32 -1, i32* %13, align 4
  %16 = call i32* (...) @EVP_CIPHER_CTX_new()
  store i32* %16, i32** %11, align 8
  %17 = load i32*, i32** %11, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %38

19:                                               ; preds = %5
  %20 = load i32*, i32** %11, align 8
  %21 = call i32 @EVP_CIPHER_CTX_set_padding(i32* %20, i32 0)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %19
  %24 = load i32*, i32** %11, align 8
  %25 = call i32* (...) @EVP_rc4()
  %26 = call i32 @EVP_CipherInit_ex(i32* %24, i32* %25, i32* null, i8* null, i32* null, i32 1)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %23
  %29 = load i32*, i32** %11, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @EVP_CIPHER_CTX_set_key_length(i32* %29, i64 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load i32*, i32** %11, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @EVP_CipherInit_ex(i32* %34, i32* null, i32* null, i8* %35, i32* null, i32 1)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %33, %28, %23, %19, %5
  br label %69

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %56, %39
  %41 = load i64, i64* %8, align 8
  %42 = icmp uge i64 %41, 16
  br i1 %42, label %43, label %60

43:                                               ; preds = %40
  %44 = load i64, i64* %8, align 8
  store i64 %44, i64* %15, align 8
  %45 = load i64, i64* %15, align 8
  %46 = icmp ugt i64 %45, 16
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i64 16, i64* %15, align 8
  br label %48

48:                                               ; preds = %47, %43
  %49 = load i32*, i32** %11, align 8
  %50 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %51 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %52 = load i64, i64* %15, align 8
  %53 = call i64 @EVP_CipherUpdate(i32* %49, i8* %50, i32* %12, i8* %51, i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %48
  br label %69

56:                                               ; preds = %48
  %57 = load i64, i64* %15, align 8
  %58 = load i64, i64* %8, align 8
  %59 = sub i64 %58, %57
  store i64 %59, i64* %8, align 8
  br label %40

60:                                               ; preds = %40
  %61 = load i32*, i32** %11, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = load i8*, i8** %9, align 8
  %64 = load i64, i64* %10, align 8
  %65 = call i64 @EVP_CipherUpdate(i32* %61, i8* %62, i32* %12, i8* %63, i64 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  store i32 0, i32* %13, align 4
  br label %68

68:                                               ; preds = %67, %60
  br label %69

69:                                               ; preds = %68, %55, %38
  %70 = load i32*, i32** %11, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i32*, i32** %11, align 8
  %74 = call i32 @EVP_CIPHER_CTX_free(i32* %73)
  br label %75

75:                                               ; preds = %72, %69
  %76 = load i32, i32* %13, align 4
  ret i32 %76
}

declare dso_local i32* @EVP_CIPHER_CTX_new(...) #1

declare dso_local i32 @EVP_CIPHER_CTX_set_padding(i32*, i32) #1

declare dso_local i32 @EVP_CipherInit_ex(i32*, i32*, i32*, i8*, i32*, i32) #1

declare dso_local i32* @EVP_rc4(...) #1

declare dso_local i32 @EVP_CIPHER_CTX_set_key_length(i32*, i64) #1

declare dso_local i64 @EVP_CipherUpdate(i32*, i8*, i32*, i8*, i64) #1

declare dso_local i32 @EVP_CIPHER_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
