; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_t1_enc.c_tls1_PRF.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_t1_enc.c_tls1_PRF.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS1_PRF = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@EVP_PKEY_TLS1_PRF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i64, i8*, i64, i8*, i64, i8*, i64, i8*, i64, i8*, i64, i8*, i64, i32)* @tls1_PRF to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls1_PRF(i32* %0, i8* %1, i64 %2, i8* %3, i64 %4, i8* %5, i64 %6, i8* %7, i64 %8, i8* %9, i64 %10, i8* %11, i64 %12, i8* %13, i64 %14, i32 %15) #0 {
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i64, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i64, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i64, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32*, align 8
  %35 = alloca i32*, align 8
  %36 = alloca i32, align 4
  store i32* %0, i32** %18, align 8
  store i8* %1, i8** %19, align 8
  store i64 %2, i64* %20, align 8
  store i8* %3, i8** %21, align 8
  store i64 %4, i64* %22, align 8
  store i8* %5, i8** %23, align 8
  store i64 %6, i64* %24, align 8
  store i8* %7, i8** %25, align 8
  store i64 %8, i64* %26, align 8
  store i8* %9, i8** %27, align 8
  store i64 %10, i64* %28, align 8
  store i8* %11, i8** %29, align 8
  store i64 %12, i64* %30, align 8
  store i8* %13, i8** %31, align 8
  store i64 %14, i64* %32, align 8
  store i32 %15, i32* %33, align 4
  %37 = load i32*, i32** %18, align 8
  %38 = call i32* @ssl_prf_md(i32* %37)
  store i32* %38, i32** %34, align 8
  store i32* null, i32** %35, align 8
  store i32 0, i32* %36, align 4
  %39 = load i32*, i32** %34, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %55

41:                                               ; preds = %16
  %42 = load i32, i32* %33, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load i32*, i32** %18, align 8
  %46 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %47 = load i32, i32* @SSL_F_TLS1_PRF, align 4
  %48 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %49 = call i32 @SSLfatal(i32* %45, i32 %46, i32 %47, i32 %48)
  br label %54

50:                                               ; preds = %41
  %51 = load i32, i32* @SSL_F_TLS1_PRF, align 4
  %52 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %53 = call i32 @SSLerr(i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %50, %44
  store i32 0, i32* %17, align 4
  br label %135

55:                                               ; preds = %16
  %56 = load i32, i32* @EVP_PKEY_TLS1_PRF, align 4
  %57 = call i32* @EVP_PKEY_CTX_new_id(i32 %56, i32* null)
  store i32* %57, i32** %35, align 8
  %58 = load i32*, i32** %35, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %116, label %60

60:                                               ; preds = %55
  %61 = load i32*, i32** %35, align 8
  %62 = call i64 @EVP_PKEY_derive_init(i32* %61)
  %63 = icmp sle i64 %62, 0
  br i1 %63, label %116, label %64

64:                                               ; preds = %60
  %65 = load i32*, i32** %35, align 8
  %66 = load i32*, i32** %34, align 8
  %67 = call i64 @EVP_PKEY_CTX_set_tls1_prf_md(i32* %65, i32* %66)
  %68 = icmp sle i64 %67, 0
  br i1 %68, label %116, label %69

69:                                               ; preds = %64
  %70 = load i32*, i32** %35, align 8
  %71 = load i8*, i8** %29, align 8
  %72 = load i64, i64* %30, align 8
  %73 = trunc i64 %72 to i32
  %74 = call i64 @EVP_PKEY_CTX_set1_tls1_prf_secret(i32* %70, i8* %71, i32 %73)
  %75 = icmp sle i64 %74, 0
  br i1 %75, label %116, label %76

76:                                               ; preds = %69
  %77 = load i32*, i32** %35, align 8
  %78 = load i8*, i8** %19, align 8
  %79 = load i64, i64* %20, align 8
  %80 = trunc i64 %79 to i32
  %81 = call i64 @EVP_PKEY_CTX_add1_tls1_prf_seed(i32* %77, i8* %78, i32 %80)
  %82 = icmp sle i64 %81, 0
  br i1 %82, label %116, label %83

83:                                               ; preds = %76
  %84 = load i32*, i32** %35, align 8
  %85 = load i8*, i8** %21, align 8
  %86 = load i64, i64* %22, align 8
  %87 = trunc i64 %86 to i32
  %88 = call i64 @EVP_PKEY_CTX_add1_tls1_prf_seed(i32* %84, i8* %85, i32 %87)
  %89 = icmp sle i64 %88, 0
  br i1 %89, label %116, label %90

90:                                               ; preds = %83
  %91 = load i32*, i32** %35, align 8
  %92 = load i8*, i8** %23, align 8
  %93 = load i64, i64* %24, align 8
  %94 = trunc i64 %93 to i32
  %95 = call i64 @EVP_PKEY_CTX_add1_tls1_prf_seed(i32* %91, i8* %92, i32 %94)
  %96 = icmp sle i64 %95, 0
  br i1 %96, label %116, label %97

97:                                               ; preds = %90
  %98 = load i32*, i32** %35, align 8
  %99 = load i8*, i8** %25, align 8
  %100 = load i64, i64* %26, align 8
  %101 = trunc i64 %100 to i32
  %102 = call i64 @EVP_PKEY_CTX_add1_tls1_prf_seed(i32* %98, i8* %99, i32 %101)
  %103 = icmp sle i64 %102, 0
  br i1 %103, label %116, label %104

104:                                              ; preds = %97
  %105 = load i32*, i32** %35, align 8
  %106 = load i8*, i8** %27, align 8
  %107 = load i64, i64* %28, align 8
  %108 = trunc i64 %107 to i32
  %109 = call i64 @EVP_PKEY_CTX_add1_tls1_prf_seed(i32* %105, i8* %106, i32 %108)
  %110 = icmp sle i64 %109, 0
  br i1 %110, label %116, label %111

111:                                              ; preds = %104
  %112 = load i32*, i32** %35, align 8
  %113 = load i8*, i8** %31, align 8
  %114 = call i64 @EVP_PKEY_derive(i32* %112, i8* %113, i64* %32)
  %115 = icmp sle i64 %114, 0
  br i1 %115, label %116, label %130

116:                                              ; preds = %111, %104, %97, %90, %83, %76, %69, %64, %60, %55
  %117 = load i32, i32* %33, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %116
  %120 = load i32*, i32** %18, align 8
  %121 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %122 = load i32, i32* @SSL_F_TLS1_PRF, align 4
  %123 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %124 = call i32 @SSLfatal(i32* %120, i32 %121, i32 %122, i32 %123)
  br label %129

125:                                              ; preds = %116
  %126 = load i32, i32* @SSL_F_TLS1_PRF, align 4
  %127 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %128 = call i32 @SSLerr(i32 %126, i32 %127)
  br label %129

129:                                              ; preds = %125, %119
  br label %131

130:                                              ; preds = %111
  store i32 1, i32* %36, align 4
  br label %131

131:                                              ; preds = %130, %129
  %132 = load i32*, i32** %35, align 8
  %133 = call i32 @EVP_PKEY_CTX_free(i32* %132)
  %134 = load i32, i32* %36, align 4
  store i32 %134, i32* %17, align 4
  br label %135

135:                                              ; preds = %131, %54
  %136 = load i32, i32* %17, align 4
  ret i32 %136
}

declare dso_local i32* @ssl_prf_md(i32*) #1

declare dso_local i32 @SSLfatal(i32*, i32, i32, i32) #1

declare dso_local i32 @SSLerr(i32, i32) #1

declare dso_local i32* @EVP_PKEY_CTX_new_id(i32, i32*) #1

declare dso_local i64 @EVP_PKEY_derive_init(i32*) #1

declare dso_local i64 @EVP_PKEY_CTX_set_tls1_prf_md(i32*, i32*) #1

declare dso_local i64 @EVP_PKEY_CTX_set1_tls1_prf_secret(i32*, i8*, i32) #1

declare dso_local i64 @EVP_PKEY_CTX_add1_tls1_prf_seed(i32*, i8*, i32) #1

declare dso_local i64 @EVP_PKEY_derive(i32*, i8*, i64*) #1

declare dso_local i32 @EVP_PKEY_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
