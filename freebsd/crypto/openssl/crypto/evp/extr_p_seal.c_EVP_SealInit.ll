; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_p_seal.c_EVP_SealInit.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_p_seal.c_EVP_SealInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EVP_MAX_KEY_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EVP_SealInit(i32* %0, i32* %1, i8** %2, i32* %3, i8* %4, i32** %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i8** %2, i8*** %11, align 8
  store i32* %3, i32** %12, align 8
  store i8* %4, i8** %13, align 8
  store i32** %5, i32*** %14, align 8
  store i32 %6, i32* %15, align 4
  %21 = load i32, i32* @EVP_MAX_KEY_LENGTH, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %16, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %17, align 8
  store i32 0, i32* %19, align 4
  %25 = load i32*, i32** %10, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %7
  %28 = load i32*, i32** %9, align 8
  %29 = call i32 @EVP_CIPHER_CTX_reset(i32* %28)
  %30 = load i32*, i32** %9, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = call i32 @EVP_EncryptInit_ex(i32* %30, i32* %31, i32* null, i8* null, i8* null)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  store i32 0, i32* %8, align 4
  store i32 1, i32* %20, align 4
  br label %105

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35, %7
  %37 = load i32, i32* %15, align 4
  %38 = icmp sle i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = load i32**, i32*** %14, align 8
  %41 = icmp ne i32** %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %39, %36
  store i32 1, i32* %8, align 4
  store i32 1, i32* %20, align 4
  br label %105

43:                                               ; preds = %39
  %44 = load i32*, i32** %9, align 8
  %45 = call i64 @EVP_CIPHER_CTX_rand_key(i32* %44, i8* %24)
  %46 = icmp sle i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i32 0, i32* %8, align 4
  store i32 1, i32* %20, align 4
  br label %105

48:                                               ; preds = %43
  %49 = load i32*, i32** %9, align 8
  %50 = call i64 @EVP_CIPHER_CTX_iv_length(i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %48
  %53 = load i8*, i8** %13, align 8
  %54 = load i32*, i32** %9, align 8
  %55 = call i64 @EVP_CIPHER_CTX_iv_length(i32* %54)
  %56 = call i64 @RAND_bytes(i8* %53, i64 %55)
  %57 = icmp sle i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %101

59:                                               ; preds = %52, %48
  %60 = load i32*, i32** %9, align 8
  %61 = load i8*, i8** %13, align 8
  %62 = call i32 @EVP_EncryptInit_ex(i32* %60, i32* null, i32* null, i8* %24, i8* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %59
  br label %101

65:                                               ; preds = %59
  store i32 0, i32* %18, align 4
  br label %66

66:                                               ; preds = %96, %65
  %67 = load i32, i32* %18, align 4
  %68 = load i32, i32* %15, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %99

70:                                               ; preds = %66
  %71 = load i8**, i8*** %11, align 8
  %72 = load i32, i32* %18, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8*, i8** %71, i64 %73
  %75 = load i8*, i8** %74, align 8
  %76 = load i32*, i32** %9, align 8
  %77 = call i32 @EVP_CIPHER_CTX_key_length(i32* %76)
  %78 = load i32**, i32*** %14, align 8
  %79 = load i32, i32* %18, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32*, i32** %78, i64 %80
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @EVP_PKEY_encrypt_old(i8* %75, i8* %24, i32 %77, i32* %82)
  %84 = load i32*, i32** %12, align 8
  %85 = load i32, i32* %18, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  store i32 %83, i32* %87, align 4
  %88 = load i32*, i32** %12, align 8
  %89 = load i32, i32* %18, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = icmp sle i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %70
  store i32 -1, i32* %19, align 4
  br label %101

95:                                               ; preds = %70
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %18, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %18, align 4
  br label %66

99:                                               ; preds = %66
  %100 = load i32, i32* %15, align 4
  store i32 %100, i32* %19, align 4
  br label %101

101:                                              ; preds = %99, %94, %64, %58
  %102 = trunc i64 %22 to i32
  %103 = call i32 @OPENSSL_cleanse(i8* %24, i32 %102)
  %104 = load i32, i32* %19, align 4
  store i32 %104, i32* %8, align 4
  store i32 1, i32* %20, align 4
  br label %105

105:                                              ; preds = %101, %47, %42, %34
  %106 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %106)
  %107 = load i32, i32* %8, align 4
  ret i32 %107
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @EVP_CIPHER_CTX_reset(i32*) #2

declare dso_local i32 @EVP_EncryptInit_ex(i32*, i32*, i32*, i8*, i8*) #2

declare dso_local i64 @EVP_CIPHER_CTX_rand_key(i32*, i8*) #2

declare dso_local i64 @EVP_CIPHER_CTX_iv_length(i32*) #2

declare dso_local i64 @RAND_bytes(i8*, i64) #2

declare dso_local i32 @EVP_PKEY_encrypt_old(i8*, i8*, i32, i32*) #2

declare dso_local i32 @EVP_CIPHER_CTX_key_length(i32*) #2

declare dso_local i32 @OPENSSL_cleanse(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
