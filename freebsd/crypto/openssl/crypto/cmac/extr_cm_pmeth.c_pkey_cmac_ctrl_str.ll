; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/cmac/extr_cm_pmeth.c_pkey_cmac_ctrl_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/cmac/extr_cm_pmeth.c_pkey_cmac_ctrl_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"cipher\00", align 1
@EVP_PKEY_CTRL_CIPHER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@EVP_PKEY_CTRL_SET_MAC_KEY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"hexkey\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*)* @pkey_cmac_ctrl_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkey_cmac_ctrl_str(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %47

12:                                               ; preds = %3
  %13 = load i8*, i8** %6, align 8
  %14 = call i64 @strcmp(i8* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %12
  %17 = load i8*, i8** %7, align 8
  %18 = call i32* @EVP_get_cipherbyname(i8* %17)
  store i32* %18, i32** %8, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %47

22:                                               ; preds = %16
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* @EVP_PKEY_CTRL_CIPHER, align 4
  %25 = load i32*, i32** %8, align 8
  %26 = bitcast i32* %25 to i8*
  %27 = call i32 @pkey_cmac_ctrl(i32* %23, i32 %24, i32 -1, i8* %26)
  store i32 %27, i32* %4, align 4
  br label %47

28:                                               ; preds = %12
  %29 = load i8*, i8** %6, align 8
  %30 = call i64 @strcmp(i8* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* @EVP_PKEY_CTRL_SET_MAC_KEY, align 4
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 @EVP_PKEY_CTX_str2ctrl(i32* %33, i32 %34, i8* %35)
  store i32 %36, i32* %4, align 4
  br label %47

37:                                               ; preds = %28
  %38 = load i8*, i8** %6, align 8
  %39 = call i64 @strcmp(i8* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* @EVP_PKEY_CTRL_SET_MAC_KEY, align 4
  %44 = load i8*, i8** %7, align 8
  %45 = call i32 @EVP_PKEY_CTX_hex2ctrl(i32* %42, i32 %43, i8* %44)
  store i32 %45, i32* %4, align 4
  br label %47

46:                                               ; preds = %37
  store i32 -2, i32* %4, align 4
  br label %47

47:                                               ; preds = %46, %41, %32, %22, %21, %11
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @EVP_get_cipherbyname(i8*) #1

declare dso_local i32 @pkey_cmac_ctrl(i32*, i32, i32, i8*) #1

declare dso_local i32 @EVP_PKEY_CTX_str2ctrl(i32*, i32, i8*) #1

declare dso_local i32 @EVP_PKEY_CTX_hex2ctrl(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
