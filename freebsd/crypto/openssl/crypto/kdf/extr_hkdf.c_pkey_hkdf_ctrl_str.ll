; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/kdf/extr_hkdf.c_pkey_hkdf_ctrl_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/kdf/extr_hkdf.c_pkey_hkdf_ctrl_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"EXTRACT_AND_EXPAND\00", align 1
@EVP_PKEY_HKDEF_MODE_EXTRACT_AND_EXPAND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"EXTRACT_ONLY\00", align 1
@EVP_PKEY_HKDEF_MODE_EXTRACT_ONLY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"EXPAND_ONLY\00", align 1
@EVP_PKEY_HKDEF_MODE_EXPAND_ONLY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"md\00", align 1
@EVP_PKEY_OP_DERIVE = common dso_local global i32 0, align 4
@EVP_PKEY_CTRL_HKDF_MD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"salt\00", align 1
@EVP_PKEY_CTRL_HKDF_SALT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"hexsalt\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@EVP_PKEY_CTRL_HKDF_KEY = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"hexkey\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@EVP_PKEY_CTRL_HKDF_INFO = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [8 x i8] c"hexinfo\00", align 1
@KDF_F_PKEY_HKDF_CTRL_STR = common dso_local global i32 0, align 4
@KDF_R_UNKNOWN_PARAMETER_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*)* @pkey_hkdf_ctrl_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkey_hkdf_ctrl_str(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = call i64 @strcmp(i8* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %37

12:                                               ; preds = %3
  %13 = load i8*, i8** %7, align 8
  %14 = call i64 @strcmp(i8* %13, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load i32, i32* @EVP_PKEY_HKDEF_MODE_EXTRACT_AND_EXPAND, align 4
  store i32 %17, i32* %8, align 4
  br label %33

18:                                               ; preds = %12
  %19 = load i8*, i8** %7, align 8
  %20 = call i64 @strcmp(i8* %19, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* @EVP_PKEY_HKDEF_MODE_EXTRACT_ONLY, align 4
  store i32 %23, i32* %8, align 4
  br label %32

24:                                               ; preds = %18
  %25 = load i8*, i8** %7, align 8
  %26 = call i64 @strcmp(i8* %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* @EVP_PKEY_HKDEF_MODE_EXPAND_ONLY, align 4
  store i32 %29, i32* %8, align 4
  br label %31

30:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %105

31:                                               ; preds = %28
  br label %32

32:                                               ; preds = %31, %22
  br label %33

33:                                               ; preds = %32, %16
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @EVP_PKEY_CTX_hkdf_mode(i32* %34, i32 %35)
  store i32 %36, i32* %4, align 4
  br label %105

37:                                               ; preds = %3
  %38 = load i8*, i8** %6, align 8
  %39 = call i64 @strcmp(i8* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* @EVP_PKEY_OP_DERIVE, align 4
  %44 = load i32, i32* @EVP_PKEY_CTRL_HKDF_MD, align 4
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 @EVP_PKEY_CTX_md(i32* %42, i32 %43, i32 %44, i8* %45)
  store i32 %46, i32* %4, align 4
  br label %105

47:                                               ; preds = %37
  %48 = load i8*, i8** %6, align 8
  %49 = call i64 @strcmp(i8* %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* @EVP_PKEY_CTRL_HKDF_SALT, align 4
  %54 = load i8*, i8** %7, align 8
  %55 = call i32 @EVP_PKEY_CTX_str2ctrl(i32* %52, i32 %53, i8* %54)
  store i32 %55, i32* %4, align 4
  br label %105

56:                                               ; preds = %47
  %57 = load i8*, i8** %6, align 8
  %58 = call i64 @strcmp(i8* %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %56
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* @EVP_PKEY_CTRL_HKDF_SALT, align 4
  %63 = load i8*, i8** %7, align 8
  %64 = call i32 @EVP_PKEY_CTX_hex2ctrl(i32* %61, i32 %62, i8* %63)
  store i32 %64, i32* %4, align 4
  br label %105

65:                                               ; preds = %56
  %66 = load i8*, i8** %6, align 8
  %67 = call i64 @strcmp(i8* %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %65
  %70 = load i32*, i32** %5, align 8
  %71 = load i32, i32* @EVP_PKEY_CTRL_HKDF_KEY, align 4
  %72 = load i8*, i8** %7, align 8
  %73 = call i32 @EVP_PKEY_CTX_str2ctrl(i32* %70, i32 %71, i8* %72)
  store i32 %73, i32* %4, align 4
  br label %105

74:                                               ; preds = %65
  %75 = load i8*, i8** %6, align 8
  %76 = call i64 @strcmp(i8* %75, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %74
  %79 = load i32*, i32** %5, align 8
  %80 = load i32, i32* @EVP_PKEY_CTRL_HKDF_KEY, align 4
  %81 = load i8*, i8** %7, align 8
  %82 = call i32 @EVP_PKEY_CTX_hex2ctrl(i32* %79, i32 %80, i8* %81)
  store i32 %82, i32* %4, align 4
  br label %105

83:                                               ; preds = %74
  %84 = load i8*, i8** %6, align 8
  %85 = call i64 @strcmp(i8* %84, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %83
  %88 = load i32*, i32** %5, align 8
  %89 = load i32, i32* @EVP_PKEY_CTRL_HKDF_INFO, align 4
  %90 = load i8*, i8** %7, align 8
  %91 = call i32 @EVP_PKEY_CTX_str2ctrl(i32* %88, i32 %89, i8* %90)
  store i32 %91, i32* %4, align 4
  br label %105

92:                                               ; preds = %83
  %93 = load i8*, i8** %6, align 8
  %94 = call i64 @strcmp(i8* %93, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %92
  %97 = load i32*, i32** %5, align 8
  %98 = load i32, i32* @EVP_PKEY_CTRL_HKDF_INFO, align 4
  %99 = load i8*, i8** %7, align 8
  %100 = call i32 @EVP_PKEY_CTX_hex2ctrl(i32* %97, i32 %98, i8* %99)
  store i32 %100, i32* %4, align 4
  br label %105

101:                                              ; preds = %92
  %102 = load i32, i32* @KDF_F_PKEY_HKDF_CTRL_STR, align 4
  %103 = load i32, i32* @KDF_R_UNKNOWN_PARAMETER_TYPE, align 4
  %104 = call i32 @KDFerr(i32 %102, i32 %103)
  store i32 -2, i32* %4, align 4
  br label %105

105:                                              ; preds = %101, %96, %87, %78, %69, %60, %51, %41, %33, %30
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @EVP_PKEY_CTX_hkdf_mode(i32*, i32) #1

declare dso_local i32 @EVP_PKEY_CTX_md(i32*, i32, i32, i8*) #1

declare dso_local i32 @EVP_PKEY_CTX_str2ctrl(i32*, i32, i8*) #1

declare dso_local i32 @EVP_PKEY_CTX_hex2ctrl(i32*, i32, i8*) #1

declare dso_local i32 @KDFerr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
