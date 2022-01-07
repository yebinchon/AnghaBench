; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rsa/extr_rsa_ameth.c_rsa_cms_decrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rsa/extr_rsa_ameth.c_rsa_cms_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i8*, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__*, i32, i32 }

@NID_rsaEncryption = common dso_local global i32 0, align 4
@NID_rsaesOaep = common dso_local global i32 0, align 4
@RSA_F_RSA_CMS_DECRYPT = common dso_local global i32 0, align 4
@RSA_R_UNSUPPORTED_ENCRYPTION_TYPE = common dso_local global i32 0, align 4
@RSA_R_INVALID_OAEP_PARAMETERS = common dso_local global i32 0, align 4
@NID_pSpecified = common dso_local global i64 0, align 8
@RSA_R_UNSUPPORTED_LABEL_SOURCE = common dso_local global i32 0, align 4
@V_ASN1_OCTET_STRING = common dso_local global i64 0, align 8
@RSA_R_INVALID_LABEL = common dso_local global i32 0, align 4
@RSA_PKCS1_OAEP_PADDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @rsa_cms_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsa_cms_decrypt(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca %struct.TYPE_13__*, align 8
  store i32* %0, i32** %3, align 8
  store i32 -1, i32* %7, align 4
  store i8* null, i8** %8, align 8
  store i32 0, i32* %9, align 4
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = call i32* @CMS_RecipientInfo_get0_pkey_ctx(i32* %14)
  store i32* %15, i32** %4, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %152

19:                                               ; preds = %1
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @CMS_RecipientInfo_ktri_get0_algs(i32* %20, i32* null, i32* null, %struct.TYPE_13__** %5)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  store i32 -1, i32* %2, align 4
  br label %152

24:                                               ; preds = %19
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @OBJ_obj2nid(i32 %27)
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @NID_rsaEncryption, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  store i32 1, i32* %2, align 4
  br label %152

34:                                               ; preds = %24
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @NID_rsaesOaep, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i32, i32* @RSA_F_RSA_CMS_DECRYPT, align 4
  %40 = load i32, i32* @RSA_R_UNSUPPORTED_ENCRYPTION_TYPE, align 4
  %41 = call i32 @RSAerr(i32 %39, i32 %40)
  store i32 -1, i32* %2, align 4
  br label %152

42:                                               ; preds = %34
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %44 = call %struct.TYPE_14__* @rsa_oaep_decode(%struct.TYPE_13__* %43)
  store %struct.TYPE_14__* %44, %struct.TYPE_14__** %12, align 8
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %46 = icmp eq %struct.TYPE_14__* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load i32, i32* @RSA_F_RSA_CMS_DECRYPT, align 4
  %49 = load i32, i32* @RSA_R_INVALID_OAEP_PARAMETERS, align 4
  %50 = call i32 @RSAerr(i32 %48, i32 %49)
  br label %148

51:                                               ; preds = %42
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32* @rsa_algor_to_md(i32 %54)
  store i32* %55, i32** %10, align 8
  %56 = load i32*, i32** %10, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  br label %148

59:                                               ; preds = %51
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32* @rsa_algor_to_md(i32 %62)
  store i32* %63, i32** %11, align 8
  %64 = load i32*, i32** %11, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  br label %148

67:                                               ; preds = %59
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %69, align 8
  %71 = icmp ne %struct.TYPE_13__* %70, null
  br i1 %71, label %72, label %122

72:                                               ; preds = %67
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %74, align 8
  store %struct.TYPE_13__* %75, %struct.TYPE_13__** %13, align 8
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i64 @OBJ_obj2nid(i32 %78)
  %80 = load i64, i64* @NID_pSpecified, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %72
  %83 = load i32, i32* @RSA_F_RSA_CMS_DECRYPT, align 4
  %84 = load i32, i32* @RSA_R_UNSUPPORTED_LABEL_SOURCE, align 4
  %85 = call i32 @RSAerr(i32 %83, i32 %84)
  br label %148

86:                                               ; preds = %72
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @V_ASN1_OCTET_STRING, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %86
  %95 = load i32, i32* @RSA_F_RSA_CMS_DECRYPT, align 4
  %96 = load i32, i32* @RSA_R_INVALID_LABEL, align 4
  %97 = call i32 @RSAerr(i32 %95, i32 %96)
  br label %148

98:                                               ; preds = %86
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  store i8* %106, i8** %8, align 8
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  store i8* null, i8** %113, align 8
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  store i32 %121, i32* %9, align 4
  br label %122

122:                                              ; preds = %98, %67
  %123 = load i32*, i32** %4, align 8
  %124 = load i32, i32* @RSA_PKCS1_OAEP_PADDING, align 4
  %125 = call i64 @EVP_PKEY_CTX_set_rsa_padding(i32* %123, i32 %124)
  %126 = icmp sle i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %122
  br label %148

128:                                              ; preds = %122
  %129 = load i32*, i32** %4, align 8
  %130 = load i32*, i32** %11, align 8
  %131 = call i64 @EVP_PKEY_CTX_set_rsa_oaep_md(i32* %129, i32* %130)
  %132 = icmp sle i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %128
  br label %148

134:                                              ; preds = %128
  %135 = load i32*, i32** %4, align 8
  %136 = load i32*, i32** %10, align 8
  %137 = call i64 @EVP_PKEY_CTX_set_rsa_mgf1_md(i32* %135, i32* %136)
  %138 = icmp sle i64 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %134
  br label %148

140:                                              ; preds = %134
  %141 = load i32*, i32** %4, align 8
  %142 = load i8*, i8** %8, align 8
  %143 = load i32, i32* %9, align 4
  %144 = call i64 @EVP_PKEY_CTX_set0_rsa_oaep_label(i32* %141, i8* %142, i32 %143)
  %145 = icmp sle i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %140
  br label %148

147:                                              ; preds = %140
  store i32 1, i32* %7, align 4
  br label %148

148:                                              ; preds = %147, %146, %139, %133, %127, %94, %82, %66, %58, %47
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %150 = call i32 @RSA_OAEP_PARAMS_free(%struct.TYPE_14__* %149)
  %151 = load i32, i32* %7, align 4
  store i32 %151, i32* %2, align 4
  br label %152

152:                                              ; preds = %148, %38, %33, %23, %18
  %153 = load i32, i32* %2, align 4
  ret i32 %153
}

declare dso_local i32* @CMS_RecipientInfo_get0_pkey_ctx(i32*) #1

declare dso_local i32 @CMS_RecipientInfo_ktri_get0_algs(i32*, i32*, i32*, %struct.TYPE_13__**) #1

declare dso_local i64 @OBJ_obj2nid(i32) #1

declare dso_local i32 @RSAerr(i32, i32) #1

declare dso_local %struct.TYPE_14__* @rsa_oaep_decode(%struct.TYPE_13__*) #1

declare dso_local i32* @rsa_algor_to_md(i32) #1

declare dso_local i64 @EVP_PKEY_CTX_set_rsa_padding(i32*, i32) #1

declare dso_local i64 @EVP_PKEY_CTX_set_rsa_oaep_md(i32*, i32*) #1

declare dso_local i64 @EVP_PKEY_CTX_set_rsa_mgf1_md(i32*, i32*) #1

declare dso_local i64 @EVP_PKEY_CTX_set0_rsa_oaep_label(i32*, i8*, i32) #1

declare dso_local i32 @RSA_OAEP_PARAMS_free(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
