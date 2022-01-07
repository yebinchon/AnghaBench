; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rsa/extr_rsa_ameth.c_rsa_ctx_to_pss.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rsa/extr_rsa_ameth.c_rsa_ctx_to_pss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @rsa_ctx_to_pss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @rsa_ctx_to_pss(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32* @EVP_PKEY_CTX_get0_pkey(i32* %8)
  store i32* %9, i32** %6, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i64 @EVP_PKEY_CTX_get_signature_md(i32* %10, i32** %4)
  %12 = icmp sle i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %61

14:                                               ; preds = %1
  %15 = load i32*, i32** %3, align 8
  %16 = call i64 @EVP_PKEY_CTX_get_rsa_mgf1_md(i32* %15, i32** %5)
  %17 = icmp sle i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32* null, i32** %2, align 8
  br label %61

19:                                               ; preds = %14
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @EVP_PKEY_CTX_get_rsa_pss_saltlen(i32* %20, i32* %7)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  store i32* null, i32** %2, align 8
  br label %61

24:                                               ; preds = %19
  %25 = load i32, i32* %7, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @EVP_MD_size(i32* %28)
  store i32 %29, i32* %7, align 4
  br label %56

30:                                               ; preds = %24
  %31 = load i32, i32* %7, align 4
  %32 = icmp eq i32 %31, -2
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %7, align 4
  %35 = icmp eq i32 %34, -3
  br i1 %35, label %36, label %55

36:                                               ; preds = %33, %30
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @EVP_PKEY_size(i32* %37)
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @EVP_MD_size(i32* %39)
  %41 = sub nsw i32 %38, %40
  %42 = sub nsw i32 %41, 2
  store i32 %42, i32* %7, align 4
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @EVP_PKEY_bits(i32* %43)
  %45 = and i32 %44, 7
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %50

47:                                               ; preds = %36
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %47, %36
  %51 = load i32, i32* %7, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i32* null, i32** %2, align 8
  br label %61

54:                                               ; preds = %50
  br label %55

55:                                               ; preds = %54, %33
  br label %56

56:                                               ; preds = %55, %27
  %57 = load i32*, i32** %4, align 8
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32* @rsa_pss_params_create(i32* %57, i32* %58, i32 %59)
  store i32* %60, i32** %2, align 8
  br label %61

61:                                               ; preds = %56, %53, %23, %18, %13
  %62 = load i32*, i32** %2, align 8
  ret i32* %62
}

declare dso_local i32* @EVP_PKEY_CTX_get0_pkey(i32*) #1

declare dso_local i64 @EVP_PKEY_CTX_get_signature_md(i32*, i32**) #1

declare dso_local i64 @EVP_PKEY_CTX_get_rsa_mgf1_md(i32*, i32**) #1

declare dso_local i32 @EVP_PKEY_CTX_get_rsa_pss_saltlen(i32*, i32*) #1

declare dso_local i32 @EVP_MD_size(i32*) #1

declare dso_local i32 @EVP_PKEY_size(i32*) #1

declare dso_local i32 @EVP_PKEY_bits(i32*) #1

declare dso_local i32* @rsa_pss_params_create(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
