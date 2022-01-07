; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ec_ameth.c_ecdh_cms_set_kdf_param.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ec_ameth.c_ecdh_cms_set_kdf_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NID_undef = common dso_local global i32 0, align 4
@NID_dh_std_kdf = common dso_local global i32 0, align 4
@NID_dh_cofactor_kdf = common dso_local global i32 0, align 4
@EVP_PKEY_ECDH_KDF_X9_63 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @ecdh_cms_set_kdf_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecdh_cms_set_kdf_param(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @NID_undef, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %56

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @OBJ_find_sigid_algs(i32 %15, i32* %7, i32* %6)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %56

19:                                               ; preds = %14
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @NID_dh_std_kdf, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32 0, i32* %8, align 4
  br label %31

24:                                               ; preds = %19
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @NID_dh_cofactor_kdf, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 1, i32* %8, align 4
  br label %30

29:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %56

30:                                               ; preds = %28
  br label %31

31:                                               ; preds = %30, %23
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i64 @EVP_PKEY_CTX_set_ecdh_cofactor_mode(i32* %32, i32 %33)
  %35 = icmp sle i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %56

37:                                               ; preds = %31
  %38 = load i32*, i32** %4, align 8
  %39 = load i32, i32* @EVP_PKEY_ECDH_KDF_X9_63, align 4
  %40 = call i64 @EVP_PKEY_CTX_set_ecdh_kdf_type(i32* %38, i32 %39)
  %41 = icmp sle i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %56

43:                                               ; preds = %37
  %44 = load i32, i32* %7, align 4
  %45 = call i32* @EVP_get_digestbynid(i32 %44)
  store i32* %45, i32** %9, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %56

49:                                               ; preds = %43
  %50 = load i32*, i32** %4, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = call i64 @EVP_PKEY_CTX_set_ecdh_kdf_md(i32* %50, i32* %51)
  %53 = icmp sle i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %56

55:                                               ; preds = %49
  store i32 1, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %54, %48, %42, %36, %29, %18, %13
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @OBJ_find_sigid_algs(i32, i32*, i32*) #1

declare dso_local i64 @EVP_PKEY_CTX_set_ecdh_cofactor_mode(i32*, i32) #1

declare dso_local i64 @EVP_PKEY_CTX_set_ecdh_kdf_type(i32*, i32) #1

declare dso_local i32* @EVP_get_digestbynid(i32) #1

declare dso_local i64 @EVP_PKEY_CTX_set_ecdh_kdf_md(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
