; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/pkcs7/extr_pk7_lib.c_PKCS7_add_signature.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/pkcs7/extr_pk7_lib.c_PKCS7_add_signature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PKCS7_F_PKCS7_ADD_SIGNATURE = common dso_local global i32 0, align 4
@PKCS7_R_NO_DEFAULT_DIGEST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @PKCS7_add_signature(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* null, i32** %10, align 8
  %12 = load i32*, i32** %9, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %29

14:                                               ; preds = %4
  %15 = load i32*, i32** %8, align 8
  %16 = call i64 @EVP_PKEY_get_default_digest_nid(i32* %15, i32* %11)
  %17 = icmp sle i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %49

19:                                               ; preds = %14
  %20 = load i32, i32* %11, align 4
  %21 = call i32* @EVP_get_digestbynid(i32 %20)
  store i32* %21, i32** %9, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load i32, i32* @PKCS7_F_PKCS7_ADD_SIGNATURE, align 4
  %26 = load i32, i32* @PKCS7_R_NO_DEFAULT_DIGEST, align 4
  %27 = call i32 @PKCS7err(i32 %25, i32 %26)
  br label %49

28:                                               ; preds = %19
  br label %29

29:                                               ; preds = %28, %4
  %30 = call i32* (...) @PKCS7_SIGNER_INFO_new()
  store i32* %30, i32** %10, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  br label %49

33:                                               ; preds = %29
  %34 = load i32*, i32** %10, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = call i32 @PKCS7_SIGNER_INFO_set(i32* %34, i32* %35, i32* %36, i32* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %33
  br label %49

41:                                               ; preds = %33
  %42 = load i32*, i32** %6, align 8
  %43 = load i32*, i32** %10, align 8
  %44 = call i32 @PKCS7_add_signer(i32* %42, i32* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  br label %49

47:                                               ; preds = %41
  %48 = load i32*, i32** %10, align 8
  store i32* %48, i32** %5, align 8
  br label %52

49:                                               ; preds = %46, %40, %32, %24, %18
  %50 = load i32*, i32** %10, align 8
  %51 = call i32 @PKCS7_SIGNER_INFO_free(i32* %50)
  store i32* null, i32** %5, align 8
  br label %52

52:                                               ; preds = %49, %47
  %53 = load i32*, i32** %5, align 8
  ret i32* %53
}

declare dso_local i64 @EVP_PKEY_get_default_digest_nid(i32*, i32*) #1

declare dso_local i32* @EVP_get_digestbynid(i32) #1

declare dso_local i32 @PKCS7err(i32, i32) #1

declare dso_local i32* @PKCS7_SIGNER_INFO_new(...) #1

declare dso_local i32 @PKCS7_SIGNER_INFO_set(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @PKCS7_add_signer(i32*, i32*) #1

declare dso_local i32 @PKCS7_SIGNER_INFO_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
