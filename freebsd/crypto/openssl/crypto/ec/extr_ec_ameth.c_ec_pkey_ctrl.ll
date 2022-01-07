; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ec_ameth.c_ec_pkey_ctrl.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ec_ameth.c_ec_pkey_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32* }

@NID_undef = common dso_local global i32 0, align 4
@V_ASN1_UNDEF = common dso_local global i32 0, align 4
@CMS_RECIPINFO_AGREE = common dso_local global i32 0, align 4
@EVP_PKEY_SM2 = common dso_local global i32 0, align 4
@NID_sm3 = common dso_local global i32 0, align 4
@NID_sha256 = common dso_local global i32 0, align 4
@POINT_CONVERSION_UNCOMPRESSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i64, i8*)* @ec_pkey_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ec_pkey_ctrl(i32* %0, i32 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_7__*, align 8
  %17 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %18 = load i32, i32* %7, align 4
  switch i32 %18, label %137 [
    i32 129, label %19
    i32 132, label %56
    i32 134, label %93
    i32 133, label %107
    i32 131, label %111
    i32 128, label %125
    i32 130, label %131
  ]

19:                                               ; preds = %4
  %20 = load i64, i64* %8, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %55

22:                                               ; preds = %19
  %23 = load i8*, i8** %9, align 8
  %24 = call i32 @PKCS7_SIGNER_INFO_get0_algs(i8* %23, i32* null, %struct.TYPE_7__** %12, %struct.TYPE_7__** %13)
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %26 = icmp eq %struct.TYPE_7__* %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %27, %22
  store i32 -1, i32* %5, align 4
  br label %138

33:                                               ; preds = %27
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @OBJ_obj2nid(i32* %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* @NID_undef, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  store i32 -1, i32* %5, align 4
  br label %138

42:                                               ; preds = %33
  %43 = load i32, i32* %11, align 4
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @EVP_PKEY_id(i32* %44)
  %46 = call i32 @OBJ_find_sigid_by_algs(i32* %10, i32 %43, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %42
  store i32 -1, i32* %5, align 4
  br label %138

49:                                               ; preds = %42
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @OBJ_nid2obj(i32 %51)
  %53 = load i32, i32* @V_ASN1_UNDEF, align 4
  %54 = call i32 @X509_ALGOR_set0(%struct.TYPE_7__* %50, i32 %52, i32 %53, i32 0)
  br label %55

55:                                               ; preds = %49, %19
  store i32 1, i32* %5, align 4
  br label %138

56:                                               ; preds = %4
  %57 = load i64, i64* %8, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %92

59:                                               ; preds = %56
  %60 = load i8*, i8** %9, align 8
  %61 = call i32 @CMS_SignerInfo_get0_algs(i8* %60, i32* null, i32* null, %struct.TYPE_7__** %16, %struct.TYPE_7__** %17)
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %63 = icmp eq %struct.TYPE_7__* %62, null
  br i1 %63, label %69, label %64

64:                                               ; preds = %59
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = icmp eq i32* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %64, %59
  store i32 -1, i32* %5, align 4
  br label %138

70:                                               ; preds = %64
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @OBJ_obj2nid(i32* %73)
  store i32 %74, i32* %15, align 4
  %75 = load i32, i32* %15, align 4
  %76 = load i32, i32* @NID_undef, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  store i32 -1, i32* %5, align 4
  br label %138

79:                                               ; preds = %70
  %80 = load i32, i32* %15, align 4
  %81 = load i32*, i32** %6, align 8
  %82 = call i32 @EVP_PKEY_id(i32* %81)
  %83 = call i32 @OBJ_find_sigid_by_algs(i32* %14, i32 %80, i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %79
  store i32 -1, i32* %5, align 4
  br label %138

86:                                               ; preds = %79
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %88 = load i32, i32* %14, align 4
  %89 = call i32 @OBJ_nid2obj(i32 %88)
  %90 = load i32, i32* @V_ASN1_UNDEF, align 4
  %91 = call i32 @X509_ALGOR_set0(%struct.TYPE_7__* %87, i32 %89, i32 %90, i32 0)
  br label %92

92:                                               ; preds = %86, %56
  store i32 1, i32* %5, align 4
  br label %138

93:                                               ; preds = %4
  %94 = load i64, i64* %8, align 8
  %95 = icmp eq i64 %94, 1
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load i8*, i8** %9, align 8
  %98 = call i32 @ecdh_cms_decrypt(i8* %97)
  store i32 %98, i32* %5, align 4
  br label %138

99:                                               ; preds = %93
  %100 = load i64, i64* %8, align 8
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load i8*, i8** %9, align 8
  %104 = call i32 @ecdh_cms_encrypt(i8* %103)
  store i32 %104, i32* %5, align 4
  br label %138

105:                                              ; preds = %99
  br label %106

106:                                              ; preds = %105
  store i32 -2, i32* %5, align 4
  br label %138

107:                                              ; preds = %4
  %108 = load i32, i32* @CMS_RECIPINFO_AGREE, align 4
  %109 = load i8*, i8** %9, align 8
  %110 = bitcast i8* %109 to i32*
  store i32 %108, i32* %110, align 4
  store i32 1, i32* %5, align 4
  br label %138

111:                                              ; preds = %4
  %112 = load i32*, i32** %6, align 8
  %113 = call i32 @EVP_PKEY_id(i32* %112)
  %114 = load i32, i32* @EVP_PKEY_SM2, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %111
  %117 = load i32, i32* @NID_sm3, align 4
  %118 = load i8*, i8** %9, align 8
  %119 = bitcast i8* %118 to i32*
  store i32 %117, i32* %119, align 4
  br label %124

120:                                              ; preds = %111
  %121 = load i32, i32* @NID_sha256, align 4
  %122 = load i8*, i8** %9, align 8
  %123 = bitcast i8* %122 to i32*
  store i32 %121, i32* %123, align 4
  br label %124

124:                                              ; preds = %120, %116
  store i32 1, i32* %5, align 4
  br label %138

125:                                              ; preds = %4
  %126 = load i32*, i32** %6, align 8
  %127 = call i32 @EVP_PKEY_get0_EC_KEY(i32* %126)
  %128 = load i8*, i8** %9, align 8
  %129 = load i64, i64* %8, align 8
  %130 = call i32 @EC_KEY_oct2key(i32 %127, i8* %128, i64 %129, i32* null)
  store i32 %130, i32* %5, align 4
  br label %138

131:                                              ; preds = %4
  %132 = load i32*, i32** %6, align 8
  %133 = call i32 @EVP_PKEY_get0_EC_KEY(i32* %132)
  %134 = load i32, i32* @POINT_CONVERSION_UNCOMPRESSED, align 4
  %135 = load i8*, i8** %9, align 8
  %136 = call i32 @EC_KEY_key2buf(i32 %133, i32 %134, i8* %135, i32* null)
  store i32 %136, i32* %5, align 4
  br label %138

137:                                              ; preds = %4
  store i32 -2, i32* %5, align 4
  br label %138

138:                                              ; preds = %137, %131, %125, %124, %107, %106, %102, %96, %92, %85, %78, %69, %55, %48, %41, %32
  %139 = load i32, i32* %5, align 4
  ret i32 %139
}

declare dso_local i32 @PKCS7_SIGNER_INFO_get0_algs(i8*, i32*, %struct.TYPE_7__**, %struct.TYPE_7__**) #1

declare dso_local i32 @OBJ_obj2nid(i32*) #1

declare dso_local i32 @OBJ_find_sigid_by_algs(i32*, i32, i32) #1

declare dso_local i32 @EVP_PKEY_id(i32*) #1

declare dso_local i32 @X509_ALGOR_set0(%struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local i32 @OBJ_nid2obj(i32) #1

declare dso_local i32 @CMS_SignerInfo_get0_algs(i8*, i32*, i32*, %struct.TYPE_7__**, %struct.TYPE_7__**) #1

declare dso_local i32 @ecdh_cms_decrypt(i8*) #1

declare dso_local i32 @ecdh_cms_encrypt(i8*) #1

declare dso_local i32 @EC_KEY_oct2key(i32, i8*, i64, i32*) #1

declare dso_local i32 @EVP_PKEY_get0_EC_KEY(i32*) #1

declare dso_local i32 @EC_KEY_key2buf(i32, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
