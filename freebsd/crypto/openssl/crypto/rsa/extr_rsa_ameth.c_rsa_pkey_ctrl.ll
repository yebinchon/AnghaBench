; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rsa/extr_rsa_ameth.c_rsa_pkey_ctrl.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rsa/extr_rsa_ameth.c_rsa_pkey_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32* }

@CMS_RECIPINFO_TRANS = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@NID_sha256 = common dso_local global i32 0, align 4
@NID_rsaEncryption = common dso_local global i32 0, align 4
@V_ASN1_NULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32, i64, i8*)* @rsa_pkey_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsa_pkey_ctrl(%struct.TYPE_8__* %0, i32 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i32* null, i32** %10, align 8
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %105 [
    i32 128, label %15
    i32 129, label %22
    i32 131, label %34
    i32 133, label %48
    i32 132, label %67
    i32 130, label %76
  ]

15:                                               ; preds = %4
  %16 = load i64, i64* %8, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i8*, i8** %9, align 8
  %20 = call i32 @PKCS7_SIGNER_INFO_get0_algs(i8* %19, i32* null, i32* null, i32** %10)
  br label %21

21:                                               ; preds = %18, %15
  br label %106

22:                                               ; preds = %4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %24 = call i32 @pkey_is_pss(%struct.TYPE_8__* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 -2, i32* %5, align 4
  br label %116

27:                                               ; preds = %22
  %28 = load i64, i64* %8, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i8*, i8** %9, align 8
  %32 = call i32 @PKCS7_RECIP_INFO_get0_alg(i8* %31, i32** %10)
  br label %33

33:                                               ; preds = %30, %27
  br label %106

34:                                               ; preds = %4
  %35 = load i64, i64* %8, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i8*, i8** %9, align 8
  %39 = call i32 @rsa_cms_sign(i8* %38)
  store i32 %39, i32* %5, align 4
  br label %116

40:                                               ; preds = %34
  %41 = load i64, i64* %8, align 8
  %42 = icmp eq i64 %41, 1
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i8*, i8** %9, align 8
  %45 = call i32 @rsa_cms_verify(i8* %44)
  store i32 %45, i32* %5, align 4
  br label %116

46:                                               ; preds = %40
  br label %47

47:                                               ; preds = %46
  br label %106

48:                                               ; preds = %4
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %50 = call i32 @pkey_is_pss(%struct.TYPE_8__* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i32 -2, i32* %5, align 4
  br label %116

53:                                               ; preds = %48
  %54 = load i64, i64* %8, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i8*, i8** %9, align 8
  %58 = call i32 @rsa_cms_encrypt(i8* %57)
  store i32 %58, i32* %5, align 4
  br label %116

59:                                               ; preds = %53
  %60 = load i64, i64* %8, align 8
  %61 = icmp eq i64 %60, 1
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i8*, i8** %9, align 8
  %64 = call i32 @rsa_cms_decrypt(i8* %63)
  store i32 %64, i32* %5, align 4
  br label %116

65:                                               ; preds = %59
  br label %66

66:                                               ; preds = %65
  br label %106

67:                                               ; preds = %4
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %69 = call i32 @pkey_is_pss(%struct.TYPE_8__* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  store i32 -2, i32* %5, align 4
  br label %116

72:                                               ; preds = %67
  %73 = load i32, i32* @CMS_RECIPINFO_TRANS, align 4
  %74 = load i8*, i8** %9, align 8
  %75 = bitcast i8* %74 to i32*
  store i32 %73, i32* %75, align 4
  store i32 1, i32* %5, align 4
  br label %116

76:                                               ; preds = %4
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %101

84:                                               ; preds = %76
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @rsa_pss_get_param(i32* %90, i32** %11, i32** %12, i32* %13)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %84
  %94 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %95 = call i32 @RSAerr(i32 0, i32 %94)
  store i32 0, i32* %5, align 4
  br label %116

96:                                               ; preds = %84
  %97 = load i32*, i32** %11, align 8
  %98 = call i32 @EVP_MD_type(i32* %97)
  %99 = load i8*, i8** %9, align 8
  %100 = bitcast i8* %99 to i32*
  store i32 %98, i32* %100, align 4
  store i32 2, i32* %5, align 4
  br label %116

101:                                              ; preds = %76
  %102 = load i32, i32* @NID_sha256, align 4
  %103 = load i8*, i8** %9, align 8
  %104 = bitcast i8* %103 to i32*
  store i32 %102, i32* %104, align 4
  store i32 1, i32* %5, align 4
  br label %116

105:                                              ; preds = %4
  store i32 -2, i32* %5, align 4
  br label %116

106:                                              ; preds = %66, %47, %33, %21
  %107 = load i32*, i32** %10, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %109, label %115

109:                                              ; preds = %106
  %110 = load i32*, i32** %10, align 8
  %111 = load i32, i32* @NID_rsaEncryption, align 4
  %112 = call i32 @OBJ_nid2obj(i32 %111)
  %113 = load i32, i32* @V_ASN1_NULL, align 4
  %114 = call i32 @X509_ALGOR_set0(i32* %110, i32 %112, i32 %113, i32 0)
  br label %115

115:                                              ; preds = %109, %106
  store i32 1, i32* %5, align 4
  br label %116

116:                                              ; preds = %115, %105, %101, %96, %93, %72, %71, %62, %56, %52, %43, %37, %26
  %117 = load i32, i32* %5, align 4
  ret i32 %117
}

declare dso_local i32 @PKCS7_SIGNER_INFO_get0_algs(i8*, i32*, i32*, i32**) #1

declare dso_local i32 @pkey_is_pss(%struct.TYPE_8__*) #1

declare dso_local i32 @PKCS7_RECIP_INFO_get0_alg(i8*, i32**) #1

declare dso_local i32 @rsa_cms_sign(i8*) #1

declare dso_local i32 @rsa_cms_verify(i8*) #1

declare dso_local i32 @rsa_cms_encrypt(i8*) #1

declare dso_local i32 @rsa_cms_decrypt(i8*) #1

declare dso_local i32 @rsa_pss_get_param(i32*, i32**, i32**, i32*) #1

declare dso_local i32 @RSAerr(i32, i32) #1

declare dso_local i32 @EVP_MD_type(i32*) #1

declare dso_local i32 @X509_ALGOR_set0(i32*, i32, i32, i32) #1

declare dso_local i32 @OBJ_nid2obj(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
