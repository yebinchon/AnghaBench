; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/pkcs7/extr_pk7_doit.c_PKCS7_SIGNER_INFO_sign.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/pkcs7/extr_pk7_doit.c_PKCS7_SIGNER_INFO_sign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@PKCS7_F_PKCS7_SIGNER_INFO_SIGN = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@EVP_PKEY_OP_SIGN = common dso_local global i32 0, align 4
@EVP_PKEY_CTRL_PKCS7_SIGN = common dso_local global i32 0, align 4
@PKCS7_R_CTRL_ERROR = common dso_local global i32 0, align 4
@PKCS7_ATTR_SIGN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PKCS7_SIGNER_INFO_sign(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32* null, i32** %5, align 8
  store i8* null, i8** %6, align 8
  store i32* null, i32** %9, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 3
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32* @EVP_get_digestbyobj(i32 %14)
  store i32* %15, i32** %9, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %109

19:                                               ; preds = %1
  %20 = call i32* (...) @EVP_MD_CTX_new()
  store i32* %20, i32** %4, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i32, i32* @PKCS7_F_PKCS7_SIGNER_INFO_SIGN, align 4
  %25 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %26 = call i32 @PKCS7err(i32 %24, i32 %25)
  br label %104

27:                                               ; preds = %19
  %28 = load i32*, i32** %4, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @EVP_DigestSignInit(i32* %28, i32** %5, i32* %29, i32* null, i32 %32)
  %34 = icmp sle i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %104

36:                                               ; preds = %27
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* @EVP_PKEY_OP_SIGN, align 4
  %39 = load i32, i32* @EVP_PKEY_CTRL_PKCS7_SIGN, align 4
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %41 = call i64 @EVP_PKEY_CTX_ctrl(i32* %37, i32 -1, i32 %38, i32 %39, i32 0, %struct.TYPE_6__* %40)
  %42 = icmp sle i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  %44 = load i32, i32* @PKCS7_F_PKCS7_SIGNER_INFO_SIGN, align 4
  %45 = load i32, i32* @PKCS7_R_CTRL_ERROR, align 4
  %46 = call i32 @PKCS7err(i32 %44, i32 %45)
  br label %104

47:                                               ; preds = %36
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to i32*
  %52 = load i32, i32* @PKCS7_ATTR_SIGN, align 4
  %53 = call i32 @ASN1_ITEM_rptr(i32 %52)
  %54 = call i32 @ASN1_item_i2d(i32* %51, i8** %6, i32 %53)
  store i32 %54, i32* %7, align 4
  %55 = load i8*, i8** %6, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %47
  br label %104

58:                                               ; preds = %47
  %59 = load i32*, i32** %4, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i64 @EVP_DigestSignUpdate(i32* %59, i8* %60, i32 %61)
  %63 = icmp sle i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %104

65:                                               ; preds = %58
  %66 = load i8*, i8** %6, align 8
  %67 = call i32 @OPENSSL_free(i8* %66)
  store i8* null, i8** %6, align 8
  %68 = load i32*, i32** %4, align 8
  %69 = call i64 @EVP_DigestSignFinal(i32* %68, i8* null, i64* %8)
  %70 = icmp sle i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %104

72:                                               ; preds = %65
  %73 = load i64, i64* %8, align 8
  %74 = call i8* @OPENSSL_malloc(i64 %73)
  store i8* %74, i8** %6, align 8
  %75 = load i8*, i8** %6, align 8
  %76 = icmp eq i8* %75, null
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %104

78:                                               ; preds = %72
  %79 = load i32*, i32** %4, align 8
  %80 = load i8*, i8** %6, align 8
  %81 = call i64 @EVP_DigestSignFinal(i32* %79, i8* %80, i64* %8)
  %82 = icmp sle i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %104

84:                                               ; preds = %78
  %85 = load i32*, i32** %5, align 8
  %86 = load i32, i32* @EVP_PKEY_OP_SIGN, align 4
  %87 = load i32, i32* @EVP_PKEY_CTRL_PKCS7_SIGN, align 4
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %89 = call i64 @EVP_PKEY_CTX_ctrl(i32* %85, i32 -1, i32 %86, i32 %87, i32 1, %struct.TYPE_6__* %88)
  %90 = icmp sle i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %84
  %92 = load i32, i32* @PKCS7_F_PKCS7_SIGNER_INFO_SIGN, align 4
  %93 = load i32, i32* @PKCS7_R_CTRL_ERROR, align 4
  %94 = call i32 @PKCS7err(i32 %92, i32 %93)
  br label %104

95:                                               ; preds = %84
  %96 = load i32*, i32** %4, align 8
  %97 = call i32 @EVP_MD_CTX_free(i32* %96)
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i8*, i8** %6, align 8
  %102 = load i64, i64* %8, align 8
  %103 = call i32 @ASN1_STRING_set0(i32 %100, i8* %101, i64 %102)
  store i32 1, i32* %2, align 4
  br label %109

104:                                              ; preds = %91, %83, %77, %71, %64, %57, %43, %35, %23
  %105 = load i8*, i8** %6, align 8
  %106 = call i32 @OPENSSL_free(i8* %105)
  %107 = load i32*, i32** %4, align 8
  %108 = call i32 @EVP_MD_CTX_free(i32* %107)
  store i32 0, i32* %2, align 4
  br label %109

109:                                              ; preds = %104, %95, %18
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i32* @EVP_get_digestbyobj(i32) #1

declare dso_local i32* @EVP_MD_CTX_new(...) #1

declare dso_local i32 @PKCS7err(i32, i32) #1

declare dso_local i64 @EVP_DigestSignInit(i32*, i32**, i32*, i32*, i32) #1

declare dso_local i64 @EVP_PKEY_CTX_ctrl(i32*, i32, i32, i32, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @ASN1_item_i2d(i32*, i8**, i32) #1

declare dso_local i32 @ASN1_ITEM_rptr(i32) #1

declare dso_local i64 @EVP_DigestSignUpdate(i32*, i8*, i32) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i64 @EVP_DigestSignFinal(i32*, i8*, i64*) #1

declare dso_local i8* @OPENSSL_malloc(i64) #1

declare dso_local i32 @EVP_MD_CTX_free(i32*) #1

declare dso_local i32 @ASN1_STRING_set0(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
