; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_p_verify.c_EVP_VerifyFinal.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_p_verify.c_EVP_VerifyFinal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EVP_MAX_MD_SIZE = common dso_local global i32 0, align 4
@EVP_MD_CTX_FLAG_FINALISE = common dso_local global i32 0, align 4
@EVP_F_EVP_VERIFYFINAL = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EVP_VerifyFinal(i32* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %18 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %10, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32* null, i32** %14, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* @EVP_MD_CTX_FLAG_FINALISE, align 4
  %24 = call i64 @EVP_MD_CTX_test_flags(i32* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %4
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @EVP_DigestFinal_ex(i32* %27, i8* %21, i32* %12)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  br label %80

31:                                               ; preds = %26
  br label %56

32:                                               ; preds = %4
  store i32 0, i32* %15, align 4
  %33 = call i32* (...) @EVP_MD_CTX_new()
  store i32* %33, i32** %16, align 8
  %34 = load i32*, i32** %16, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i32, i32* @EVP_F_EVP_VERIFYFINAL, align 4
  %38 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %39 = call i32 @EVPerr(i32 %37, i32 %38)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %84

40:                                               ; preds = %32
  %41 = load i32*, i32** %16, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @EVP_MD_CTX_copy_ex(i32* %41, i32* %42)
  store i32 %43, i32* %15, align 4
  %44 = load i32, i32* %15, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32*, i32** %16, align 8
  %48 = call i32 @EVP_DigestFinal_ex(i32* %47, i8* %21, i32* %12)
  store i32 %48, i32* %15, align 4
  br label %49

49:                                               ; preds = %46, %40
  %50 = load i32*, i32** %16, align 8
  %51 = call i32 @EVP_MD_CTX_free(i32* %50)
  %52 = load i32, i32* %15, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %49
  store i32 0, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %84

55:                                               ; preds = %49
  br label %56

56:                                               ; preds = %55, %31
  store i32 -1, i32* %13, align 4
  %57 = load i32*, i32** %9, align 8
  %58 = call i32* @EVP_PKEY_CTX_new(i32* %57, i32* null)
  store i32* %58, i32** %14, align 8
  %59 = load i32*, i32** %14, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %80

62:                                               ; preds = %56
  %63 = load i32*, i32** %14, align 8
  %64 = call i64 @EVP_PKEY_verify_init(i32* %63)
  %65 = icmp sle i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  br label %80

67:                                               ; preds = %62
  %68 = load i32*, i32** %14, align 8
  %69 = load i32*, i32** %6, align 8
  %70 = call i32 @EVP_MD_CTX_md(i32* %69)
  %71 = call i64 @EVP_PKEY_CTX_set_signature_md(i32* %68, i32 %70)
  %72 = icmp sle i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  br label %80

74:                                               ; preds = %67
  %75 = load i32*, i32** %14, align 8
  %76 = load i8*, i8** %7, align 8
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %12, align 4
  %79 = call i32 @EVP_PKEY_verify(i32* %75, i8* %76, i32 %77, i8* %21, i32 %78)
  store i32 %79, i32* %13, align 4
  br label %80

80:                                               ; preds = %74, %73, %66, %61, %30
  %81 = load i32*, i32** %14, align 8
  %82 = call i32 @EVP_PKEY_CTX_free(i32* %81)
  %83 = load i32, i32* %13, align 4
  store i32 %83, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %84

84:                                               ; preds = %80, %54, %36
  %85 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %85)
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @EVP_MD_CTX_test_flags(i32*, i32) #2

declare dso_local i32 @EVP_DigestFinal_ex(i32*, i8*, i32*) #2

declare dso_local i32* @EVP_MD_CTX_new(...) #2

declare dso_local i32 @EVPerr(i32, i32) #2

declare dso_local i32 @EVP_MD_CTX_copy_ex(i32*, i32*) #2

declare dso_local i32 @EVP_MD_CTX_free(i32*) #2

declare dso_local i32* @EVP_PKEY_CTX_new(i32*, i32*) #2

declare dso_local i64 @EVP_PKEY_verify_init(i32*) #2

declare dso_local i64 @EVP_PKEY_CTX_set_signature_md(i32*, i32) #2

declare dso_local i32 @EVP_MD_CTX_md(i32*) #2

declare dso_local i32 @EVP_PKEY_verify(i32*, i8*, i32, i8*, i32) #2

declare dso_local i32 @EVP_PKEY_CTX_free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
