; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/kdf/extr_tls1_prf.c_tls1_prf_alg.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/kdf/extr_tls1_prf.c_tls1_prf_alg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NID_md5_sha1 = common dso_local global i64 0, align 8
@KDF_F_TLS1_PRF_ALG = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i64, i8*, i64, i8*, i64)* @tls1_prf_alg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls1_prf_alg(i32* %0, i8* %1, i64 %2, i8* %3, i64 %4, i8* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  store i32* %0, i32** %9, align 8
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store i8* %3, i8** %12, align 8
  store i64 %4, i64* %13, align 8
  store i8* %5, i8** %14, align 8
  store i64 %6, i64* %15, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = call i64 @EVP_MD_type(i32* %18)
  %20 = load i64, i64* @NID_md5_sha1, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %91

22:                                               ; preds = %7
  %23 = call i32* (...) @EVP_md5()
  %24 = load i8*, i8** %10, align 8
  %25 = load i64, i64* %11, align 8
  %26 = udiv i64 %25, 2
  %27 = load i64, i64* %11, align 8
  %28 = and i64 %27, 1
  %29 = add i64 %26, %28
  %30 = load i8*, i8** %12, align 8
  %31 = load i64, i64* %13, align 8
  %32 = load i8*, i8** %14, align 8
  %33 = load i64, i64* %15, align 8
  %34 = call i32 @tls1_prf_P_hash(i32* %23, i8* %24, i64 %29, i8* %30, i64 %31, i8* %32, i64 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %22
  store i32 0, i32* %8, align 4
  br label %103

37:                                               ; preds = %22
  %38 = load i64, i64* %15, align 8
  %39 = call i8* @OPENSSL_malloc(i64 %38)
  store i8* %39, i8** %17, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i32, i32* @KDF_F_TLS1_PRF_ALG, align 4
  %43 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %44 = call i32 @KDFerr(i32 %42, i32 %43)
  store i32 0, i32* %8, align 4
  br label %103

45:                                               ; preds = %37
  %46 = call i32* (...) @EVP_sha1()
  %47 = load i8*, i8** %10, align 8
  %48 = load i64, i64* %11, align 8
  %49 = udiv i64 %48, 2
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i64, i64* %11, align 8
  %52 = udiv i64 %51, 2
  %53 = load i64, i64* %11, align 8
  %54 = and i64 %53, 1
  %55 = add i64 %52, %54
  %56 = load i8*, i8** %12, align 8
  %57 = load i64, i64* %13, align 8
  %58 = load i8*, i8** %17, align 8
  %59 = load i64, i64* %15, align 8
  %60 = call i32 @tls1_prf_P_hash(i32* %46, i8* %50, i64 %55, i8* %56, i64 %57, i8* %58, i64 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %45
  %63 = load i8*, i8** %17, align 8
  %64 = load i64, i64* %15, align 8
  %65 = call i32 @OPENSSL_clear_free(i8* %63, i64 %64)
  store i32 0, i32* %8, align 4
  br label %103

66:                                               ; preds = %45
  store i64 0, i64* %16, align 8
  br label %67

67:                                               ; preds = %84, %66
  %68 = load i64, i64* %16, align 8
  %69 = load i64, i64* %15, align 8
  %70 = icmp ult i64 %68, %69
  br i1 %70, label %71, label %87

71:                                               ; preds = %67
  %72 = load i8*, i8** %17, align 8
  %73 = load i64, i64* %16, align 8
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = load i8*, i8** %14, align 8
  %78 = load i64, i64* %16, align 8
  %79 = getelementptr inbounds i8, i8* %77, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = xor i32 %81, %76
  %83 = trunc i32 %82 to i8
  store i8 %83, i8* %79, align 1
  br label %84

84:                                               ; preds = %71
  %85 = load i64, i64* %16, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %16, align 8
  br label %67

87:                                               ; preds = %67
  %88 = load i8*, i8** %17, align 8
  %89 = load i64, i64* %15, align 8
  %90 = call i32 @OPENSSL_clear_free(i8* %88, i64 %89)
  store i32 1, i32* %8, align 4
  br label %103

91:                                               ; preds = %7
  %92 = load i32*, i32** %9, align 8
  %93 = load i8*, i8** %10, align 8
  %94 = load i64, i64* %11, align 8
  %95 = load i8*, i8** %12, align 8
  %96 = load i64, i64* %13, align 8
  %97 = load i8*, i8** %14, align 8
  %98 = load i64, i64* %15, align 8
  %99 = call i32 @tls1_prf_P_hash(i32* %92, i8* %93, i64 %94, i8* %95, i64 %96, i8* %97, i64 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %91
  store i32 0, i32* %8, align 4
  br label %103

102:                                              ; preds = %91
  store i32 1, i32* %8, align 4
  br label %103

103:                                              ; preds = %102, %101, %87, %62, %41, %36
  %104 = load i32, i32* %8, align 4
  ret i32 %104
}

declare dso_local i64 @EVP_MD_type(i32*) #1

declare dso_local i32 @tls1_prf_P_hash(i32*, i8*, i64, i8*, i64, i8*, i64) #1

declare dso_local i32* @EVP_md5(...) #1

declare dso_local i8* @OPENSSL_malloc(i64) #1

declare dso_local i32 @KDFerr(i32, i32) #1

declare dso_local i32* @EVP_sha1(...) #1

declare dso_local i32 @OPENSSL_clear_free(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
