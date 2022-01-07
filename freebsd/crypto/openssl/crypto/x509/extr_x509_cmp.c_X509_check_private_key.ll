; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509/extr_x509_cmp.c_X509_check_private_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509/extr_x509_cmp.c_X509_check_private_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@X509_F_X509_CHECK_PRIVATE_KEY = common dso_local global i32 0, align 4
@X509_R_KEY_VALUES_MISMATCH = common dso_local global i32 0, align 4
@X509_R_KEY_TYPE_MISMATCH = common dso_local global i32 0, align 4
@X509_R_UNKNOWN_KEY_TYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @X509_check_private_key(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i32* @X509_get0_pubkey(i32* %8)
  store i32* %9, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32*, i32** %6, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @EVP_PKEY_cmp(i32* %13, i32* %14)
  store i32 %15, i32* %7, align 4
  br label %17

16:                                               ; preds = %2
  store i32 -2, i32* %7, align 4
  br label %17

17:                                               ; preds = %16, %12
  %18 = load i32, i32* %7, align 4
  switch i32 %18, label %32 [
    i32 1, label %19
    i32 0, label %20
    i32 -1, label %24
    i32 -2, label %28
  ]

19:                                               ; preds = %17
  br label %32

20:                                               ; preds = %17
  %21 = load i32, i32* @X509_F_X509_CHECK_PRIVATE_KEY, align 4
  %22 = load i32, i32* @X509_R_KEY_VALUES_MISMATCH, align 4
  %23 = call i32 @X509err(i32 %21, i32 %22)
  br label %32

24:                                               ; preds = %17
  %25 = load i32, i32* @X509_F_X509_CHECK_PRIVATE_KEY, align 4
  %26 = load i32, i32* @X509_R_KEY_TYPE_MISMATCH, align 4
  %27 = call i32 @X509err(i32 %25, i32 %26)
  br label %32

28:                                               ; preds = %17
  %29 = load i32, i32* @X509_F_X509_CHECK_PRIVATE_KEY, align 4
  %30 = load i32, i32* @X509_R_UNKNOWN_KEY_TYPE, align 4
  %31 = call i32 @X509err(i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %28, %17, %24, %20, %19
  %33 = load i32, i32* %7, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 1, i32* %3, align 4
  br label %37

36:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %35
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32* @X509_get0_pubkey(i32*) #1

declare dso_local i32 @EVP_PKEY_cmp(i32*, i32*) #1

declare dso_local i32 @X509err(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
