; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/kdf/extr_tls1_prf.c_pkey_tls1_prf_ctrl_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/kdf/extr_tls1_prf.c_pkey_tls1_prf_ctrl_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32* }

@KDF_F_PKEY_TLS1_PRF_CTRL_STR = common dso_local global i32 0, align 4
@KDF_R_VALUE_MISSING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"md\00", align 1
@KDF_R_INVALID_DIGEST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"secret\00", align 1
@EVP_PKEY_CTRL_TLS_SECRET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"hexsecret\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"seed\00", align 1
@EVP_PKEY_CTRL_TLS_SEED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"hexseed\00", align 1
@KDF_R_UNKNOWN_PARAMETER_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i8*, i8*)* @pkey_tls1_prf_ctrl_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkey_tls1_prf_ctrl_str(%struct.TYPE_7__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load i32, i32* @KDF_F_PKEY_TLS1_PRF_CTRL_STR, align 4
  %14 = load i32, i32* @KDF_R_VALUE_MISSING, align 4
  %15 = call i32 @KDFerr(i32 %13, i32 %14)
  store i32 0, i32* %4, align 4
  br label %76

16:                                               ; preds = %3
  %17 = load i8*, i8** %6, align 8
  %18 = call i64 @strcmp(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %16
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %8, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i32* @EVP_get_digestbyname(i8* %24)
  store i32* %25, i32** %9, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %20
  %29 = load i32, i32* @KDF_F_PKEY_TLS1_PRF_CTRL_STR, align 4
  %30 = load i32, i32* @KDF_R_INVALID_DIGEST, align 4
  %31 = call i32 @KDFerr(i32 %29, i32 %30)
  store i32 0, i32* %4, align 4
  br label %76

32:                                               ; preds = %20
  %33 = load i32*, i32** %9, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  store i32* %33, i32** %35, align 8
  store i32 1, i32* %4, align 4
  br label %76

36:                                               ; preds = %16
  %37 = load i8*, i8** %6, align 8
  %38 = call i64 @strcmp(i8* %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %42 = load i32, i32* @EVP_PKEY_CTRL_TLS_SECRET, align 4
  %43 = load i8*, i8** %7, align 8
  %44 = call i32 @EVP_PKEY_CTX_str2ctrl(%struct.TYPE_7__* %41, i32 %42, i8* %43)
  store i32 %44, i32* %4, align 4
  br label %76

45:                                               ; preds = %36
  %46 = load i8*, i8** %6, align 8
  %47 = call i64 @strcmp(i8* %46, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %51 = load i32, i32* @EVP_PKEY_CTRL_TLS_SECRET, align 4
  %52 = load i8*, i8** %7, align 8
  %53 = call i32 @EVP_PKEY_CTX_hex2ctrl(%struct.TYPE_7__* %50, i32 %51, i8* %52)
  store i32 %53, i32* %4, align 4
  br label %76

54:                                               ; preds = %45
  %55 = load i8*, i8** %6, align 8
  %56 = call i64 @strcmp(i8* %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %60 = load i32, i32* @EVP_PKEY_CTRL_TLS_SEED, align 4
  %61 = load i8*, i8** %7, align 8
  %62 = call i32 @EVP_PKEY_CTX_str2ctrl(%struct.TYPE_7__* %59, i32 %60, i8* %61)
  store i32 %62, i32* %4, align 4
  br label %76

63:                                               ; preds = %54
  %64 = load i8*, i8** %6, align 8
  %65 = call i64 @strcmp(i8* %64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %63
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %69 = load i32, i32* @EVP_PKEY_CTRL_TLS_SEED, align 4
  %70 = load i8*, i8** %7, align 8
  %71 = call i32 @EVP_PKEY_CTX_hex2ctrl(%struct.TYPE_7__* %68, i32 %69, i8* %70)
  store i32 %71, i32* %4, align 4
  br label %76

72:                                               ; preds = %63
  %73 = load i32, i32* @KDF_F_PKEY_TLS1_PRF_CTRL_STR, align 4
  %74 = load i32, i32* @KDF_R_UNKNOWN_PARAMETER_TYPE, align 4
  %75 = call i32 @KDFerr(i32 %73, i32 %74)
  store i32 -2, i32* %4, align 4
  br label %76

76:                                               ; preds = %72, %67, %58, %49, %40, %32, %28, %12
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @KDFerr(i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @EVP_get_digestbyname(i8*) #1

declare dso_local i32 @EVP_PKEY_CTX_str2ctrl(%struct.TYPE_7__*, i32, i8*) #1

declare dso_local i32 @EVP_PKEY_CTX_hex2ctrl(%struct.TYPE_7__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
