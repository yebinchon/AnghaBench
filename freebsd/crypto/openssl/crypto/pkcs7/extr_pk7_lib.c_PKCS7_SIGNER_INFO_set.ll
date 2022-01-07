; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/pkcs7/extr_pk7_lib.c_PKCS7_SIGNER_INFO_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/pkcs7/extr_pk7_lib.c_PKCS7_SIGNER_INFO_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_13__*, %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_13__*, i32, i32, %struct.TYPE_12__*)* }

@V_ASN1_NULL = common dso_local global i32 0, align 4
@ASN1_PKEY_CTRL_PKCS7_SIGN = common dso_local global i32 0, align 4
@PKCS7_F_PKCS7_SIGNER_INFO_SET = common dso_local global i32 0, align 4
@PKCS7_R_SIGNING_CTRL_FAILURE = common dso_local global i32 0, align 4
@PKCS7_R_SIGNING_NOT_SUPPORTED_FOR_THIS_KEY_TYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PKCS7_SIGNER_INFO_set(%struct.TYPE_12__* %0, i32* %1, %struct.TYPE_13__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @ASN1_INTEGER_set(i32 %13, i32 1)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  br label %93

17:                                               ; preds = %4
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 1
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @X509_get_issuer_name(i32* %22)
  %24 = call i32 @X509_NAME_set(i32* %21, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %17
  br label %93

27:                                               ; preds = %17
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ASN1_INTEGER_free(i32 %32)
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @X509_get_serialNumber(i32* %34)
  %36 = call i32 @ASN1_INTEGER_dup(i32 %35)
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  store i32 %36, i32* %40, align 4
  %41 = icmp ne i32 %36, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %27
  br label %93

43:                                               ; preds = %27
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %45 = call i32 @EVP_PKEY_up_ref(%struct.TYPE_13__* %44)
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 1
  store %struct.TYPE_13__* %46, %struct.TYPE_13__** %48, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = call i32 @EVP_MD_type(i32* %52)
  %54 = call i32 @OBJ_nid2obj(i32 %53)
  %55 = load i32, i32* @V_ASN1_NULL, align 4
  %56 = call i32 @X509_ALGOR_set0(i32 %51, i32 %54, i32 %55, i32* null)
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %58, align 8
  %60 = icmp ne %struct.TYPE_11__* %59, null
  br i1 %60, label %61, label %89

61:                                               ; preds = %43
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load i32 (%struct.TYPE_13__*, i32, i32, %struct.TYPE_12__*)*, i32 (%struct.TYPE_13__*, i32, i32, %struct.TYPE_12__*)** %65, align 8
  %67 = icmp ne i32 (%struct.TYPE_13__*, i32, i32, %struct.TYPE_12__*)* %66, null
  br i1 %67, label %68, label %89

68:                                               ; preds = %61
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load i32 (%struct.TYPE_13__*, i32, i32, %struct.TYPE_12__*)*, i32 (%struct.TYPE_13__*, i32, i32, %struct.TYPE_12__*)** %72, align 8
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %75 = load i32, i32* @ASN1_PKEY_CTRL_PKCS7_SIGN, align 4
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %77 = call i32 %73(%struct.TYPE_13__* %74, i32 %75, i32 0, %struct.TYPE_12__* %76)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %68
  store i32 1, i32* %5, align 4
  br label %94

81:                                               ; preds = %68
  %82 = load i32, i32* %10, align 4
  %83 = icmp ne i32 %82, -2
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = load i32, i32* @PKCS7_F_PKCS7_SIGNER_INFO_SET, align 4
  %86 = load i32, i32* @PKCS7_R_SIGNING_CTRL_FAILURE, align 4
  %87 = call i32 @PKCS7err(i32 %85, i32 %86)
  store i32 0, i32* %5, align 4
  br label %94

88:                                               ; preds = %81
  br label %89

89:                                               ; preds = %88, %61, %43
  %90 = load i32, i32* @PKCS7_F_PKCS7_SIGNER_INFO_SET, align 4
  %91 = load i32, i32* @PKCS7_R_SIGNING_NOT_SUPPORTED_FOR_THIS_KEY_TYPE, align 4
  %92 = call i32 @PKCS7err(i32 %90, i32 %91)
  br label %93

93:                                               ; preds = %89, %42, %26, %16
  store i32 0, i32* %5, align 4
  br label %94

94:                                               ; preds = %93, %84, %80
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local i32 @ASN1_INTEGER_set(i32, i32) #1

declare dso_local i32 @X509_NAME_set(i32*, i32) #1

declare dso_local i32 @X509_get_issuer_name(i32*) #1

declare dso_local i32 @ASN1_INTEGER_free(i32) #1

declare dso_local i32 @ASN1_INTEGER_dup(i32) #1

declare dso_local i32 @X509_get_serialNumber(i32*) #1

declare dso_local i32 @EVP_PKEY_up_ref(%struct.TYPE_13__*) #1

declare dso_local i32 @X509_ALGOR_set0(i32, i32, i32, i32*) #1

declare dso_local i32 @OBJ_nid2obj(i32) #1

declare dso_local i32 @EVP_MD_type(i32*) #1

declare dso_local i32 @PKCS7err(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
