; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509/extr_x509_req.c_X509_REQ_check_private_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509/extr_x509_req.c_X509_REQ_check_private_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@X509_F_X509_REQ_CHECK_PRIVATE_KEY = common dso_local global i32 0, align 4
@X509_R_KEY_VALUES_MISMATCH = common dso_local global i32 0, align 4
@X509_R_KEY_TYPE_MISMATCH = common dso_local global i32 0, align 4
@EVP_PKEY_EC = common dso_local global i32 0, align 4
@ERR_R_EC_LIB = common dso_local global i32 0, align 4
@EVP_PKEY_DH = common dso_local global i32 0, align 4
@X509_R_CANT_CHECK_DH_KEY = common dso_local global i32 0, align 4
@X509_R_UNKNOWN_KEY_TYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @X509_REQ_check_private_key(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load i32*, i32** %3, align 8
  %8 = call i32* @X509_REQ_get_pubkey(i32* %7)
  store i32* %8, i32** %5, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @EVP_PKEY_cmp(i32* %9, i32* %10)
  switch i32 %11, label %43 [
    i32 1, label %12
    i32 0, label %13
    i32 -1, label %17
    i32 -2, label %21
  ]

12:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  br label %43

13:                                               ; preds = %2
  %14 = load i32, i32* @X509_F_X509_REQ_CHECK_PRIVATE_KEY, align 4
  %15 = load i32, i32* @X509_R_KEY_VALUES_MISMATCH, align 4
  %16 = call i32 @X509err(i32 %14, i32 %15)
  br label %43

17:                                               ; preds = %2
  %18 = load i32, i32* @X509_F_X509_REQ_CHECK_PRIVATE_KEY, align 4
  %19 = load i32, i32* @X509_R_KEY_TYPE_MISMATCH, align 4
  %20 = call i32 @X509err(i32 %18, i32 %19)
  br label %43

21:                                               ; preds = %2
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @EVP_PKEY_id(i32* %22)
  %24 = load i32, i32* @EVP_PKEY_EC, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load i32, i32* @X509_F_X509_REQ_CHECK_PRIVATE_KEY, align 4
  %28 = load i32, i32* @ERR_R_EC_LIB, align 4
  %29 = call i32 @X509err(i32 %27, i32 %28)
  br label %43

30:                                               ; preds = %21
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @EVP_PKEY_id(i32* %31)
  %33 = load i32, i32* @EVP_PKEY_DH, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i32, i32* @X509_F_X509_REQ_CHECK_PRIVATE_KEY, align 4
  %37 = load i32, i32* @X509_R_CANT_CHECK_DH_KEY, align 4
  %38 = call i32 @X509err(i32 %36, i32 %37)
  br label %43

39:                                               ; preds = %30
  %40 = load i32, i32* @X509_F_X509_REQ_CHECK_PRIVATE_KEY, align 4
  %41 = load i32, i32* @X509_R_UNKNOWN_KEY_TYPE, align 4
  %42 = call i32 @X509err(i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %39, %2, %35, %26, %17, %13, %12
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @EVP_PKEY_free(i32* %44)
  %46 = load i32, i32* %6, align 4
  ret i32 %46
}

declare dso_local i32* @X509_REQ_get_pubkey(i32*) #1

declare dso_local i32 @EVP_PKEY_cmp(i32*, i32*) #1

declare dso_local i32 @X509err(i32, i32) #1

declare dso_local i32 @EVP_PKEY_id(i32*) #1

declare dso_local i32 @EVP_PKEY_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
