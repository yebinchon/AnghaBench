; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_openssl.c_openssl_digest_vector.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_openssl.c_openssl_digest_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"OpenSSL: EVP_DigestInit_ex failed: %s\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"OpenSSL: EVP_DigestUpdate failed: %s\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"OpenSSL: EVP_DigestFinal failed: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i32**, i64*, i32*)* @openssl_digest_vector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @openssl_digest_vector(i32* %0, i64 %1, i32** %2, i64* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32** %2, i32*** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = call i64 (...) @TEST_FAIL()
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %78

18:                                               ; preds = %5
  %19 = call i32* (...) @EVP_MD_CTX_new()
  store i32* %19, i32** %12, align 8
  %20 = load i32*, i32** %12, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  store i32 -1, i32* %6, align 4
  br label %78

23:                                               ; preds = %18
  %24 = load i32*, i32** %12, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @EVP_DigestInit_ex(i32* %24, i32* %25, i32* null)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @MSG_ERROR, align 4
  %30 = call i32 (...) @ERR_get_error()
  %31 = call i32 @ERR_error_string(i32 %30, i32* null)
  %32 = call i32 @wpa_printf(i32 %29, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32*, i32** %12, align 8
  %34 = call i32 @EVP_MD_CTX_free(i32* %33)
  store i32 -1, i32* %6, align 4
  br label %78

35:                                               ; preds = %23
  store i64 0, i64* %13, align 8
  br label %36

36:                                               ; preds = %60, %35
  %37 = load i64, i64* %13, align 8
  %38 = load i64, i64* %8, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %63

40:                                               ; preds = %36
  %41 = load i32*, i32** %12, align 8
  %42 = load i32**, i32*** %9, align 8
  %43 = load i64, i64* %13, align 8
  %44 = getelementptr inbounds i32*, i32** %42, i64 %43
  %45 = load i32*, i32** %44, align 8
  %46 = load i64*, i64** %10, align 8
  %47 = load i64, i64* %13, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @EVP_DigestUpdate(i32* %41, i32* %45, i64 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %40
  %53 = load i32, i32* @MSG_ERROR, align 4
  %54 = call i32 (...) @ERR_get_error()
  %55 = call i32 @ERR_error_string(i32 %54, i32* null)
  %56 = call i32 @wpa_printf(i32 %53, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = load i32*, i32** %12, align 8
  %58 = call i32 @EVP_MD_CTX_free(i32* %57)
  store i32 -1, i32* %6, align 4
  br label %78

59:                                               ; preds = %40
  br label %60

60:                                               ; preds = %59
  %61 = load i64, i64* %13, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %13, align 8
  br label %36

63:                                               ; preds = %36
  %64 = load i32*, i32** %12, align 8
  %65 = load i32*, i32** %11, align 8
  %66 = call i32 @EVP_DigestFinal(i32* %64, i32* %65, i32* %14)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %63
  %69 = load i32, i32* @MSG_ERROR, align 4
  %70 = call i32 (...) @ERR_get_error()
  %71 = call i32 @ERR_error_string(i32 %70, i32* null)
  %72 = call i32 @wpa_printf(i32 %69, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %71)
  %73 = load i32*, i32** %12, align 8
  %74 = call i32 @EVP_MD_CTX_free(i32* %73)
  store i32 -1, i32* %6, align 4
  br label %78

75:                                               ; preds = %63
  %76 = load i32*, i32** %12, align 8
  %77 = call i32 @EVP_MD_CTX_free(i32* %76)
  store i32 0, i32* %6, align 4
  br label %78

78:                                               ; preds = %75, %68, %52, %28, %22, %17
  %79 = load i32, i32* %6, align 4
  ret i32 %79
}

declare dso_local i64 @TEST_FAIL(...) #1

declare dso_local i32* @EVP_MD_CTX_new(...) #1

declare dso_local i32 @EVP_DigestInit_ex(i32*, i32*, i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i32 @ERR_error_string(i32, i32*) #1

declare dso_local i32 @ERR_get_error(...) #1

declare dso_local i32 @EVP_MD_CTX_free(i32*) #1

declare dso_local i32 @EVP_DigestUpdate(i32*, i32*, i64) #1

declare dso_local i32 @EVP_DigestFinal(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
