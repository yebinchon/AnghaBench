; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/poly1305/extr_poly1305_pmeth.c_pkey_poly1305_ctrl_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/poly1305/extr_poly1305_pmeth.c_pkey_poly1305_ctrl_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"key\00", align 1
@EVP_PKEY_CTRL_SET_MAC_KEY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"hexkey\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*)* @pkey_poly1305_ctrl_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkey_poly1305_ctrl_str(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load i8*, i8** %7, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %30

11:                                               ; preds = %3
  %12 = load i8*, i8** %6, align 8
  %13 = call i64 @strcmp(i8* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* @EVP_PKEY_CTRL_SET_MAC_KEY, align 4
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 @EVP_PKEY_CTX_str2ctrl(i32* %16, i32 %17, i8* %18)
  store i32 %19, i32* %4, align 4
  br label %30

20:                                               ; preds = %11
  %21 = load i8*, i8** %6, align 8
  %22 = call i64 @strcmp(i8* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* @EVP_PKEY_CTRL_SET_MAC_KEY, align 4
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @EVP_PKEY_CTX_hex2ctrl(i32* %25, i32 %26, i8* %27)
  store i32 %28, i32* %4, align 4
  br label %30

29:                                               ; preds = %20
  store i32 -2, i32* %4, align 4
  br label %30

30:                                               ; preds = %29, %24, %15, %10
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @EVP_PKEY_CTX_str2ctrl(i32*, i32, i8*) #1

declare dso_local i32 @EVP_PKEY_CTX_hex2ctrl(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
