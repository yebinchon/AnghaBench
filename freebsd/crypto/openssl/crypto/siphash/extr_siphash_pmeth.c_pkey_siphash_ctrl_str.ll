; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/siphash/extr_siphash_pmeth.c_pkey_siphash_ctrl_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/siphash/extr_siphash_pmeth.c_pkey_siphash_ctrl_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"digestsize\00", align 1
@EVP_PKEY_CTRL_SET_DIGEST_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@EVP_PKEY_CTRL_SET_MAC_KEY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"hexkey\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*)* @pkey_siphash_ctrl_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkey_siphash_ctrl_str(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %42

12:                                               ; preds = %3
  %13 = load i8*, i8** %6, align 8
  %14 = call i64 @strcmp(i8* %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %12
  %17 = load i8*, i8** %7, align 8
  %18 = call i64 @atoi(i8* %17)
  store i64 %18, i64* %8, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* @EVP_PKEY_CTRL_SET_DIGEST_SIZE, align 4
  %21 = load i64, i64* %8, align 8
  %22 = call i32 @pkey_siphash_ctrl(i32* %19, i32 %20, i64 %21, i32* null)
  store i32 %22, i32* %4, align 4
  br label %42

23:                                               ; preds = %12
  %24 = load i8*, i8** %6, align 8
  %25 = call i64 @strcmp(i8* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* @EVP_PKEY_CTRL_SET_MAC_KEY, align 4
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @EVP_PKEY_CTX_str2ctrl(i32* %28, i32 %29, i8* %30)
  store i32 %31, i32* %4, align 4
  br label %42

32:                                               ; preds = %23
  %33 = load i8*, i8** %6, align 8
  %34 = call i64 @strcmp(i8* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* @EVP_PKEY_CTRL_SET_MAC_KEY, align 4
  %39 = load i8*, i8** %7, align 8
  %40 = call i32 @EVP_PKEY_CTX_hex2ctrl(i32* %37, i32 %38, i8* %39)
  store i32 %40, i32* %4, align 4
  br label %42

41:                                               ; preds = %32
  store i32 -2, i32* %4, align 4
  br label %42

42:                                               ; preds = %41, %36, %27, %16, %11
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @atoi(i8*) #1

declare dso_local i32 @pkey_siphash_ctrl(i32*, i32, i64, i32*) #1

declare dso_local i32 @EVP_PKEY_CTX_str2ctrl(i32*, i32, i8*) #1

declare dso_local i32 @EVP_PKEY_CTX_hex2ctrl(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
