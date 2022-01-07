; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_parse_uri_pk.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_parse_uri_pk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpp_bootstrap_info = type { i8*, i32*, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"DPP: Invalid base64 encoding on URI public-key\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"DPP: Base64 decoded URI public-key\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"DPP: Failed to hash public key\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"DPP: Public key hash\00", align 1
@SHA256_MAC_LEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [57 x i8] c"DPP: Could not parse URI public-key SubjectPublicKeyInfo\00", align 1
@EVP_PKEY_EC = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [54 x i8] c"DPP: SubjectPublicKeyInfo does not describe an EC key\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"DPP: Could not set pubkey\00", align 1
@.str.7 = private unnamed_addr constant [55 x i8] c"DPP: Could not extract SubjectPublicKeyInfo parameters\00", align 1
@.str.8 = private unnamed_addr constant [54 x i8] c"DPP: Could not extract SubjectPublicKeyInfo algorithm\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"DPP: URI subjectPublicKey algorithm: %s\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"id-ecPublicKey\00", align 1
@.str.11 = private unnamed_addr constant [48 x i8] c"DPP: Unsupported SubjectPublicKeyInfo algorithm\00", align 1
@V_ASN1_OBJECT = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [60 x i8] c"DPP: SubjectPublicKeyInfo parameters did not contain an OID\00", align 1
@.str.13 = private unnamed_addr constant [59 x i8] c"DPP: Could not extract SubjectPublicKeyInfo parameters OID\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"DPP: URI subjectPublicKey parameters: %s\00", align 1
@.str.15 = private unnamed_addr constant [48 x i8] c"DPP: Unsupported SubjectPublicKeyInfo curve: %s\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"DPP: URI subjectPublicKey\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpp_bootstrap_info*, i8*)* @dpp_parse_uri_pk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpp_parse_uri_pk(%struct.dpp_bootstrap_info* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dpp_bootstrap_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca [100 x i8], align 16
  store %struct.dpp_bootstrap_info* %0, %struct.dpp_bootstrap_info** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* null, i32** %12, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = call i8* @os_strchr(i8* %22, i8 signext 59)
  store i8* %23, i8** %6, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %180

27:                                               ; preds = %2
  %28 = load i8*, i8** %5, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = ptrtoint i8* %29 to i64
  %32 = ptrtoint i8* %30 to i64
  %33 = sub i64 %31, %32
  %34 = trunc i64 %33 to i32
  %35 = call i8* @base64_decode(i8* %28, i32 %34, i64* %8)
  store i8* %35, i8** %7, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %27
  %39 = load i32, i32* @MSG_DEBUG, align 4
  %40 = call i32 (i32, i8*, ...) @wpa_printf(i32 %39, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %180

41:                                               ; preds = %27
  %42 = load i32, i32* @MSG_DEBUG, align 4
  %43 = load i8*, i8** %7, align 8
  %44 = load i64, i64* %8, align 8
  %45 = trunc i64 %44 to i32
  %46 = call i32 @wpa_hexdump(i32 %42, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %43, i32 %45)
  %47 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %4, align 8
  %48 = getelementptr inbounds %struct.dpp_bootstrap_info, %struct.dpp_bootstrap_info* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i64 @sha256_vector(i32 1, i8** %7, i64* %8, i8* %49)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %41
  %53 = load i32, i32* @MSG_DEBUG, align 4
  %54 = call i32 (i32, i8*, ...) @wpa_printf(i32 %53, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %55 = load i8*, i8** %7, align 8
  %56 = call i32 @os_free(i8* %55)
  store i32 -1, i32* %3, align 4
  br label %180

57:                                               ; preds = %41
  %58 = load i32, i32* @MSG_DEBUG, align 4
  %59 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %4, align 8
  %60 = getelementptr inbounds %struct.dpp_bootstrap_info, %struct.dpp_bootstrap_info* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = load i32, i32* @SHA256_MAC_LEN, align 4
  %63 = call i32 @wpa_hexdump(i32 %58, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %61, i32 %62)
  %64 = load i8*, i8** %7, align 8
  store i8* %64, i8** %10, align 8
  %65 = load i64, i64* %8, align 8
  %66 = call i32* @d2i_PUBKEY(i32* null, i8** %10, i64 %65)
  store i32* %66, i32** %9, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = call i32 @os_free(i8* %67)
  %69 = load i32*, i32** %9, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %57
  %72 = load i32, i32* @MSG_DEBUG, align 4
  %73 = call i32 (i32, i8*, ...) @wpa_printf(i32 %72, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %180

74:                                               ; preds = %57
  %75 = load i32*, i32** %9, align 8
  %76 = call i32 @EVP_PKEY_id(i32* %75)
  %77 = call i64 @EVP_PKEY_type(i32 %76)
  %78 = load i64, i64* @EVP_PKEY_EC, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %74
  %81 = load i32, i32* @MSG_DEBUG, align 4
  %82 = call i32 (i32, i8*, ...) @wpa_printf(i32 %81, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0))
  %83 = load i32*, i32** %9, align 8
  %84 = call i32 @EVP_PKEY_free(i32* %83)
  store i32 -1, i32* %3, align 4
  br label %180

85:                                               ; preds = %74
  %86 = load i32*, i32** %9, align 8
  %87 = call i32 @X509_PUBKEY_set(i32** %12, i32* %86)
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %11, align 4
  %89 = icmp ne i32 %88, 1
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load i32, i32* @MSG_DEBUG, align 4
  %92 = call i32 (i32, i8*, ...) @wpa_printf(i32 %91, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  br label %175

93:                                               ; preds = %85
  %94 = load i32*, i32** %12, align 8
  %95 = call i32 @X509_PUBKEY_get0_param(i32** %13, i8** %14, i32* %15, i32** %16, i32* %94)
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* %11, align 4
  %97 = icmp ne i32 %96, 1
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = load i32, i32* @MSG_DEBUG, align 4
  %100 = call i32 (i32, i8*, ...) @wpa_printf(i32 %99, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i64 0, i64 0))
  br label %175

101:                                              ; preds = %93
  %102 = getelementptr inbounds [100 x i8], [100 x i8]* %21, i64 0, i64 0
  %103 = load i32*, i32** %13, align 8
  %104 = call i32 @OBJ_obj2txt(i8* %102, i32 100, i32* %103, i32 0)
  store i32 %104, i32* %11, align 4
  %105 = load i32, i32* %11, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %101
  %108 = load i32, i32* %11, align 4
  %109 = sext i32 %108 to i64
  %110 = icmp uge i64 %109, 100
  br i1 %110, label %111, label %114

111:                                              ; preds = %107, %101
  %112 = load i32, i32* @MSG_DEBUG, align 4
  %113 = call i32 (i32, i8*, ...) @wpa_printf(i32 %112, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i64 0, i64 0))
  br label %175

114:                                              ; preds = %107
  %115 = load i32, i32* @MSG_DEBUG, align 4
  %116 = getelementptr inbounds [100 x i8], [100 x i8]* %21, i64 0, i64 0
  %117 = call i32 (i32, i8*, ...) @wpa_printf(i32 %115, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0), i8* %116)
  %118 = getelementptr inbounds [100 x i8], [100 x i8]* %21, i64 0, i64 0
  %119 = call i64 @os_strcmp(i8* %118, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %114
  %122 = load i32, i32* @MSG_DEBUG, align 4
  %123 = call i32 (i32, i8*, ...) @wpa_printf(i32 %122, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11, i64 0, i64 0))
  br label %175

124:                                              ; preds = %114
  %125 = bitcast i8** %18 to i8*
  %126 = load i32*, i32** %16, align 8
  %127 = call i32 @X509_ALGOR_get0(i32** %17, i32* %19, i8* %125, i32* %126)
  %128 = load i32, i32* %19, align 4
  %129 = load i32, i32* @V_ASN1_OBJECT, align 4
  %130 = icmp ne i32 %128, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %124
  %132 = load i32, i32* @MSG_DEBUG, align 4
  %133 = call i32 (i32, i8*, ...) @wpa_printf(i32 %132, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.12, i64 0, i64 0))
  br label %175

134:                                              ; preds = %124
  %135 = load i8*, i8** %18, align 8
  %136 = bitcast i8* %135 to i32*
  store i32* %136, i32** %20, align 8
  %137 = getelementptr inbounds [100 x i8], [100 x i8]* %21, i64 0, i64 0
  %138 = load i32*, i32** %20, align 8
  %139 = call i32 @OBJ_obj2txt(i8* %137, i32 100, i32* %138, i32 0)
  store i32 %139, i32* %11, align 4
  %140 = load i32, i32* %11, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %146, label %142

142:                                              ; preds = %134
  %143 = load i32, i32* %11, align 4
  %144 = sext i32 %143 to i64
  %145 = icmp uge i64 %144, 100
  br i1 %145, label %146, label %149

146:                                              ; preds = %142, %134
  %147 = load i32, i32* @MSG_DEBUG, align 4
  %148 = call i32 (i32, i8*, ...) @wpa_printf(i32 %147, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.13, i64 0, i64 0))
  br label %175

149:                                              ; preds = %142
  %150 = load i32, i32* @MSG_DEBUG, align 4
  %151 = getelementptr inbounds [100 x i8], [100 x i8]* %21, i64 0, i64 0
  %152 = call i32 (i32, i8*, ...) @wpa_printf(i32 %150, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i64 0, i64 0), i8* %151)
  %153 = load i32*, i32** %20, align 8
  %154 = call i32 @dpp_get_curve_oid(i32* %153)
  %155 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %4, align 8
  %156 = getelementptr inbounds %struct.dpp_bootstrap_info, %struct.dpp_bootstrap_info* %155, i32 0, i32 2
  store i32 %154, i32* %156, align 8
  %157 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %4, align 8
  %158 = getelementptr inbounds %struct.dpp_bootstrap_info, %struct.dpp_bootstrap_info* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %165, label %161

161:                                              ; preds = %149
  %162 = load i32, i32* @MSG_DEBUG, align 4
  %163 = getelementptr inbounds [100 x i8], [100 x i8]* %21, i64 0, i64 0
  %164 = call i32 (i32, i8*, ...) @wpa_printf(i32 %162, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.15, i64 0, i64 0), i8* %163)
  br label %175

165:                                              ; preds = %149
  %166 = load i32, i32* @MSG_DEBUG, align 4
  %167 = load i8*, i8** %14, align 8
  %168 = load i32, i32* %15, align 4
  %169 = call i32 @wpa_hexdump(i32 %166, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i64 0, i64 0), i8* %167, i32 %168)
  %170 = load i32*, i32** %12, align 8
  %171 = call i32 @X509_PUBKEY_free(i32* %170)
  %172 = load i32*, i32** %9, align 8
  %173 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %4, align 8
  %174 = getelementptr inbounds %struct.dpp_bootstrap_info, %struct.dpp_bootstrap_info* %173, i32 0, i32 1
  store i32* %172, i32** %174, align 8
  store i32 0, i32* %3, align 4
  br label %180

175:                                              ; preds = %161, %146, %131, %121, %111, %98, %90
  %176 = load i32*, i32** %12, align 8
  %177 = call i32 @X509_PUBKEY_free(i32* %176)
  %178 = load i32*, i32** %9, align 8
  %179 = call i32 @EVP_PKEY_free(i32* %178)
  store i32 -1, i32* %3, align 4
  br label %180

180:                                              ; preds = %175, %165, %80, %71, %52, %38, %26
  %181 = load i32, i32* %3, align 4
  ret i32 %181
}

declare dso_local i8* @os_strchr(i8*, i8 signext) #1

declare dso_local i8* @base64_decode(i8*, i32, i64*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i8*, i32) #1

declare dso_local i64 @sha256_vector(i32, i8**, i64*, i8*) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local i32* @d2i_PUBKEY(i32*, i8**, i64) #1

declare dso_local i64 @EVP_PKEY_type(i32) #1

declare dso_local i32 @EVP_PKEY_id(i32*) #1

declare dso_local i32 @EVP_PKEY_free(i32*) #1

declare dso_local i32 @X509_PUBKEY_set(i32**, i32*) #1

declare dso_local i32 @X509_PUBKEY_get0_param(i32**, i8**, i32*, i32**, i32*) #1

declare dso_local i32 @OBJ_obj2txt(i8*, i32, i32*, i32) #1

declare dso_local i64 @os_strcmp(i8*, i8*) #1

declare dso_local i32 @X509_ALGOR_get0(i32**, i32*, i8*, i32*) #1

declare dso_local i32 @dpp_get_curve_oid(i32*) #1

declare dso_local i32 @X509_PUBKEY_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
