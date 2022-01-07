; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/kdf/extr_scrypt.c_pkey_scrypt_ctrl_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/kdf/extr_scrypt.c_pkey_scrypt_ctrl_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KDF_F_PKEY_SCRYPT_CTRL_STR = common dso_local global i32 0, align 4
@KDF_R_VALUE_MISSING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"pass\00", align 1
@EVP_PKEY_CTRL_PASS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"hexpass\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"salt\00", align 1
@EVP_PKEY_CTRL_SCRYPT_SALT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"hexsalt\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@EVP_PKEY_CTRL_SCRYPT_N = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@EVP_PKEY_CTRL_SCRYPT_R = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@EVP_PKEY_CTRL_SCRYPT_P = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"maxmem_bytes\00", align 1
@EVP_PKEY_CTRL_SCRYPT_MAXMEM_BYTES = common dso_local global i32 0, align 4
@KDF_R_UNKNOWN_PARAMETER_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*)* @pkey_scrypt_ctrl_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkey_scrypt_ctrl_str(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load i8*, i8** %7, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = load i32, i32* @KDF_F_PKEY_SCRYPT_CTRL_STR, align 4
  %12 = load i32, i32* @KDF_R_VALUE_MISSING, align 4
  %13 = call i32 @KDFerr(i32 %11, i32 %12)
  store i32 0, i32* %4, align 4
  br label %90

14:                                               ; preds = %3
  %15 = load i8*, i8** %6, align 8
  %16 = call i64 @strcmp(i8* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* @EVP_PKEY_CTRL_PASS, align 4
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @EVP_PKEY_CTX_str2ctrl(i32* %19, i32 %20, i8* %21)
  store i32 %22, i32* %4, align 4
  br label %90

23:                                               ; preds = %14
  %24 = load i8*, i8** %6, align 8
  %25 = call i64 @strcmp(i8* %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* @EVP_PKEY_CTRL_PASS, align 4
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @EVP_PKEY_CTX_hex2ctrl(i32* %28, i32 %29, i8* %30)
  store i32 %31, i32* %4, align 4
  br label %90

32:                                               ; preds = %23
  %33 = load i8*, i8** %6, align 8
  %34 = call i64 @strcmp(i8* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* @EVP_PKEY_CTRL_SCRYPT_SALT, align 4
  %39 = load i8*, i8** %7, align 8
  %40 = call i32 @EVP_PKEY_CTX_str2ctrl(i32* %37, i32 %38, i8* %39)
  store i32 %40, i32* %4, align 4
  br label %90

41:                                               ; preds = %32
  %42 = load i8*, i8** %6, align 8
  %43 = call i64 @strcmp(i8* %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* @EVP_PKEY_CTRL_SCRYPT_SALT, align 4
  %48 = load i8*, i8** %7, align 8
  %49 = call i32 @EVP_PKEY_CTX_hex2ctrl(i32* %46, i32 %47, i8* %48)
  store i32 %49, i32* %4, align 4
  br label %90

50:                                               ; preds = %41
  %51 = load i8*, i8** %6, align 8
  %52 = call i64 @strcmp(i8* %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* @EVP_PKEY_CTRL_SCRYPT_N, align 4
  %57 = load i8*, i8** %7, align 8
  %58 = call i32 @pkey_scrypt_ctrl_uint64(i32* %55, i32 %56, i8* %57)
  store i32 %58, i32* %4, align 4
  br label %90

59:                                               ; preds = %50
  %60 = load i8*, i8** %6, align 8
  %61 = call i64 @strcmp(i8* %60, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  %64 = load i32*, i32** %5, align 8
  %65 = load i32, i32* @EVP_PKEY_CTRL_SCRYPT_R, align 4
  %66 = load i8*, i8** %7, align 8
  %67 = call i32 @pkey_scrypt_ctrl_uint64(i32* %64, i32 %65, i8* %66)
  store i32 %67, i32* %4, align 4
  br label %90

68:                                               ; preds = %59
  %69 = load i8*, i8** %6, align 8
  %70 = call i64 @strcmp(i8* %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %68
  %73 = load i32*, i32** %5, align 8
  %74 = load i32, i32* @EVP_PKEY_CTRL_SCRYPT_P, align 4
  %75 = load i8*, i8** %7, align 8
  %76 = call i32 @pkey_scrypt_ctrl_uint64(i32* %73, i32 %74, i8* %75)
  store i32 %76, i32* %4, align 4
  br label %90

77:                                               ; preds = %68
  %78 = load i8*, i8** %6, align 8
  %79 = call i64 @strcmp(i8* %78, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %77
  %82 = load i32*, i32** %5, align 8
  %83 = load i32, i32* @EVP_PKEY_CTRL_SCRYPT_MAXMEM_BYTES, align 4
  %84 = load i8*, i8** %7, align 8
  %85 = call i32 @pkey_scrypt_ctrl_uint64(i32* %82, i32 %83, i8* %84)
  store i32 %85, i32* %4, align 4
  br label %90

86:                                               ; preds = %77
  %87 = load i32, i32* @KDF_F_PKEY_SCRYPT_CTRL_STR, align 4
  %88 = load i32, i32* @KDF_R_UNKNOWN_PARAMETER_TYPE, align 4
  %89 = call i32 @KDFerr(i32 %87, i32 %88)
  store i32 -2, i32* %4, align 4
  br label %90

90:                                               ; preds = %86, %81, %72, %63, %54, %45, %36, %27, %18, %10
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32 @KDFerr(i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @EVP_PKEY_CTX_str2ctrl(i32*, i32, i8*) #1

declare dso_local i32 @EVP_PKEY_CTX_hex2ctrl(i32*, i32, i8*) #1

declare dso_local i32 @pkey_scrypt_ctrl_uint64(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
