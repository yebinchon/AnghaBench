; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/cms/extr_cms_sd.c_CMS_SignerInfo_sign.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/cms/extr_cms_sd.c_CMS_SignerInfo_sign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64, i32*, i32, %struct.TYPE_8__*, i32* }
%struct.TYPE_8__ = type { i32 }

@NID_pkcs9_signingTime = common dso_local global i32 0, align 4
@EVP_PKEY_OP_SIGN = common dso_local global i32 0, align 4
@EVP_PKEY_CTRL_CMS_SIGN = common dso_local global i32 0, align 4
@CMS_F_CMS_SIGNERINFO_SIGN = common dso_local global i32 0, align 4
@CMS_R_CTRL_ERROR = common dso_local global i32 0, align 4
@CMS_Attributes_Sign = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CMS_SignerInfo_sign(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 5
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i8* null, i8** %6, align 8
  store i32* null, i32** %9, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 4
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32* @EVP_get_digestbyobj(i32 %17)
  store i32* %18, i32** %9, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %135

22:                                               ; preds = %1
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %24 = load i32, i32* @NID_pkcs9_signingTime, align 4
  %25 = call i64 @CMS_signed_get_attr_by_NID(%struct.TYPE_9__* %23, i32 %24, i32 -1)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %29 = call i32 @cms_add1_signingTime(%struct.TYPE_9__* %28, i32* null)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  br label %130

32:                                               ; preds = %27
  br label %33

33:                                               ; preds = %32, %22
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %35 = call i32 @CMS_si_check_attributes(%struct.TYPE_9__* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  br label %130

38:                                               ; preds = %33
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  store i32* %46, i32** %5, align 8
  br label %62

47:                                               ; preds = %38
  %48 = load i32*, i32** %4, align 8
  %49 = call i32 @EVP_MD_CTX_reset(i32* %48)
  %50 = load i32*, i32** %4, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @EVP_DigestSignInit(i32* %50, i32** %5, i32* %51, i32* null, i32 %54)
  %56 = icmp sle i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %47
  br label %130

58:                                               ; preds = %47
  %59 = load i32*, i32** %5, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 2
  store i32* %59, i32** %61, align 8
  br label %62

62:                                               ; preds = %58, %43
  %63 = load i32*, i32** %5, align 8
  %64 = load i32, i32* @EVP_PKEY_OP_SIGN, align 4
  %65 = load i32, i32* @EVP_PKEY_CTRL_CMS_SIGN, align 4
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %67 = call i64 @EVP_PKEY_CTX_ctrl(i32* %63, i32 -1, i32 %64, i32 %65, i32 0, %struct.TYPE_9__* %66)
  %68 = icmp sle i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %62
  %70 = load i32, i32* @CMS_F_CMS_SIGNERINFO_SIGN, align 4
  %71 = load i32, i32* @CMS_R_CTRL_ERROR, align 4
  %72 = call i32 @CMSerr(i32 %70, i32 %71)
  br label %130

73:                                               ; preds = %62
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = inttoptr i64 %76 to i32*
  %78 = load i32, i32* @CMS_Attributes_Sign, align 4
  %79 = call i32 @ASN1_ITEM_rptr(i32 %78)
  %80 = call i32 @ASN1_item_i2d(i32* %77, i8** %6, i32 %79)
  store i32 %80, i32* %7, align 4
  %81 = load i8*, i8** %6, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %73
  br label %130

84:                                               ; preds = %73
  %85 = load i32*, i32** %4, align 8
  %86 = load i8*, i8** %6, align 8
  %87 = load i32, i32* %7, align 4
  %88 = call i64 @EVP_DigestSignUpdate(i32* %85, i8* %86, i32 %87)
  %89 = icmp sle i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  br label %130

91:                                               ; preds = %84
  %92 = load i32*, i32** %4, align 8
  %93 = call i64 @EVP_DigestSignFinal(i32* %92, i8* null, i64* %8)
  %94 = icmp sle i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  br label %130

96:                                               ; preds = %91
  %97 = load i8*, i8** %6, align 8
  %98 = call i32 @OPENSSL_free(i8* %97)
  %99 = load i64, i64* %8, align 8
  %100 = call i8* @OPENSSL_malloc(i64 %99)
  store i8* %100, i8** %6, align 8
  %101 = load i8*, i8** %6, align 8
  %102 = icmp eq i8* %101, null
  br i1 %102, label %103, label %104

103:                                              ; preds = %96
  br label %130

104:                                              ; preds = %96
  %105 = load i32*, i32** %4, align 8
  %106 = load i8*, i8** %6, align 8
  %107 = call i64 @EVP_DigestSignFinal(i32* %105, i8* %106, i64* %8)
  %108 = icmp sle i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %104
  br label %130

110:                                              ; preds = %104
  %111 = load i32*, i32** %5, align 8
  %112 = load i32, i32* @EVP_PKEY_OP_SIGN, align 4
  %113 = load i32, i32* @EVP_PKEY_CTRL_CMS_SIGN, align 4
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %115 = call i64 @EVP_PKEY_CTX_ctrl(i32* %111, i32 -1, i32 %112, i32 %113, i32 1, %struct.TYPE_9__* %114)
  %116 = icmp sle i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %110
  %118 = load i32, i32* @CMS_F_CMS_SIGNERINFO_SIGN, align 4
  %119 = load i32, i32* @CMS_R_CTRL_ERROR, align 4
  %120 = call i32 @CMSerr(i32 %118, i32 %119)
  br label %130

121:                                              ; preds = %110
  %122 = load i32*, i32** %4, align 8
  %123 = call i32 @EVP_MD_CTX_reset(i32* %122)
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i8*, i8** %6, align 8
  %128 = load i64, i64* %8, align 8
  %129 = call i32 @ASN1_STRING_set0(i32 %126, i8* %127, i64 %128)
  store i32 1, i32* %2, align 4
  br label %135

130:                                              ; preds = %117, %109, %103, %95, %90, %83, %69, %57, %37, %31
  %131 = load i8*, i8** %6, align 8
  %132 = call i32 @OPENSSL_free(i8* %131)
  %133 = load i32*, i32** %4, align 8
  %134 = call i32 @EVP_MD_CTX_reset(i32* %133)
  store i32 0, i32* %2, align 4
  br label %135

135:                                              ; preds = %130, %121, %21
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local i32* @EVP_get_digestbyobj(i32) #1

declare dso_local i64 @CMS_signed_get_attr_by_NID(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @cms_add1_signingTime(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @CMS_si_check_attributes(%struct.TYPE_9__*) #1

declare dso_local i32 @EVP_MD_CTX_reset(i32*) #1

declare dso_local i64 @EVP_DigestSignInit(i32*, i32**, i32*, i32*, i32) #1

declare dso_local i64 @EVP_PKEY_CTX_ctrl(i32*, i32, i32, i32, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @CMSerr(i32, i32) #1

declare dso_local i32 @ASN1_item_i2d(i32*, i8**, i32) #1

declare dso_local i32 @ASN1_ITEM_rptr(i32) #1

declare dso_local i64 @EVP_DigestSignUpdate(i32*, i8*, i32) #1

declare dso_local i64 @EVP_DigestSignFinal(i32*, i8*, i64*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i8* @OPENSSL_malloc(i64) #1

declare dso_local i32 @ASN1_STRING_set0(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
