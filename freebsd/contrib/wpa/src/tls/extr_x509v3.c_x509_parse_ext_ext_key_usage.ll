; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_x509v3.c_x509_parse_ext_ext_key_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_x509v3.c_x509_parse_ext_ext_key_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x509_certificate = type { i32, i32 }
%struct.asn1_hdr = type { i64, i64, i32, i32* }
%struct.asn1_oid = type { i32 }

@ASN1_CLASS_UNIVERSAL = common dso_local global i64 0, align 8
@ASN1_TAG_SEQUENCE = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"X509: Expected SEQUENCE (ExtKeyUsageSyntax) - found class %d tag 0x%x\00", align 1
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"X509: ExtKeyUsageSyntax\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"anyExtendedKeyUsage\00", align 1
@X509_EXT_KEY_USAGE_ANY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"id-kp-serverAuth\00", align 1
@X509_EXT_KEY_USAGE_SERVER_AUTH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"id-kp-clientAuth\00", align 1
@X509_EXT_KEY_USAGE_CLIENT_AUTH = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"id-kp-OCSPSigning\00", align 1
@X509_EXT_KEY_USAGE_OCSP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"ExtKeyUsage KeyPurposeId: %s\00", align 1
@X509_EXT_EXT_KEY_USAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.x509_certificate*, i32*, i64)* @x509_parse_ext_ext_key_usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_parse_ext_ext_key_usage(%struct.x509_certificate* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.x509_certificate*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.asn1_hdr, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.asn1_oid, align 4
  %11 = alloca [80 x i8], align 16
  store %struct.x509_certificate* %0, %struct.x509_certificate** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load i64, i64* %7, align 8
  %14 = call i64 @asn1_get_next(i32* %12, i64 %13, %struct.asn1_hdr* %8)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ASN1_CLASS_UNIVERSAL, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @ASN1_TAG_SEQUENCE, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %21, %16, %3
  %27 = load i32, i32* @MSG_DEBUG, align 4
  %28 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i8*
  %31 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i32 (i32, i8*, i8*, ...) @wpa_printf(i32 %27, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i8* %30, i64 %32)
  store i32 -1, i32* %4, align 4
  br label %143

34:                                               ; preds = %21
  %35 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = load i32*, i32** %6, align 8
  %39 = load i64, i64* %7, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  %43 = ptrtoint i32* %40 to i64
  %44 = ptrtoint i32* %42 to i64
  %45 = sub i64 %43, %44
  %46 = sdiv exact i64 %45, 4
  %47 = icmp sgt i64 %37, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %34
  store i32 -1, i32* %4, align 4
  br label %143

49:                                               ; preds = %34
  %50 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  store i32* %51, i32** %6, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  store i32* %56, i32** %9, align 8
  %57 = load i32, i32* @MSG_MSGDUMP, align 4
  %58 = load i32*, i32** %6, align 8
  %59 = load i32*, i32** %9, align 8
  %60 = load i32*, i32** %6, align 8
  %61 = ptrtoint i32* %59 to i64
  %62 = ptrtoint i32* %60 to i64
  %63 = sub i64 %61, %62
  %64 = sdiv exact i64 %63, 4
  %65 = trunc i64 %64 to i32
  %66 = call i32 @wpa_hexdump(i32 %57, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32* %58, i32 %65)
  br label %67

67:                                               ; preds = %133, %49
  %68 = load i32*, i32** %6, align 8
  %69 = load i32*, i32** %9, align 8
  %70 = icmp ult i32* %68, %69
  br i1 %70, label %71, label %137

71:                                               ; preds = %67
  %72 = load i32*, i32** %6, align 8
  %73 = load i32*, i32** %9, align 8
  %74 = load i32*, i32** %6, align 8
  %75 = ptrtoint i32* %73 to i64
  %76 = ptrtoint i32* %74 to i64
  %77 = sub i64 %75, %76
  %78 = sdiv exact i64 %77, 4
  %79 = trunc i64 %78 to i32
  %80 = call i64 @asn1_get_oid(i32* %72, i32 %79, %struct.asn1_oid* %10, i32** %6)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %71
  store i32 -1, i32* %4, align 4
  br label %143

83:                                               ; preds = %71
  %84 = call i64 @x509_any_ext_key_usage_oid(%struct.asn1_oid* %10)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %83
  %87 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i64 0, i64 0
  %88 = call i32 @os_strlcpy(i8* %87, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 80)
  %89 = load i32, i32* @X509_EXT_KEY_USAGE_ANY, align 4
  %90 = load %struct.x509_certificate*, %struct.x509_certificate** %5, align 8
  %91 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 4
  br label %133

94:                                               ; preds = %83
  %95 = call i64 @x509_id_kp_server_auth_oid(%struct.asn1_oid* %10)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %94
  %98 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i64 0, i64 0
  %99 = call i32 @os_strlcpy(i8* %98, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 80)
  %100 = load i32, i32* @X509_EXT_KEY_USAGE_SERVER_AUTH, align 4
  %101 = load %struct.x509_certificate*, %struct.x509_certificate** %5, align 8
  %102 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 4
  br label %132

105:                                              ; preds = %94
  %106 = call i64 @x509_id_kp_client_auth_oid(%struct.asn1_oid* %10)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %105
  %109 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i64 0, i64 0
  %110 = call i32 @os_strlcpy(i8* %109, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 80)
  %111 = load i32, i32* @X509_EXT_KEY_USAGE_CLIENT_AUTH, align 4
  %112 = load %struct.x509_certificate*, %struct.x509_certificate** %5, align 8
  %113 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %114, %111
  store i32 %115, i32* %113, align 4
  br label %131

116:                                              ; preds = %105
  %117 = call i64 @x509_id_kp_ocsp_oid(%struct.asn1_oid* %10)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %116
  %120 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i64 0, i64 0
  %121 = call i32 @os_strlcpy(i8* %120, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 80)
  %122 = load i32, i32* @X509_EXT_KEY_USAGE_OCSP, align 4
  %123 = load %struct.x509_certificate*, %struct.x509_certificate** %5, align 8
  %124 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 4
  br label %130

127:                                              ; preds = %116
  %128 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i64 0, i64 0
  %129 = call i32 @asn1_oid_to_str(%struct.asn1_oid* %10, i8* %128, i32 80)
  br label %130

130:                                              ; preds = %127, %119
  br label %131

131:                                              ; preds = %130, %108
  br label %132

132:                                              ; preds = %131, %97
  br label %133

133:                                              ; preds = %132, %86
  %134 = load i32, i32* @MSG_DEBUG, align 4
  %135 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i64 0, i64 0
  %136 = call i32 (i32, i8*, i8*, ...) @wpa_printf(i32 %134, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i8* %135)
  br label %67

137:                                              ; preds = %67
  %138 = load i32, i32* @X509_EXT_EXT_KEY_USAGE, align 4
  %139 = load %struct.x509_certificate*, %struct.x509_certificate** %5, align 8
  %140 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = or i32 %141, %138
  store i32 %142, i32* %140, align 4
  store i32 0, i32* %4, align 4
  br label %143

143:                                              ; preds = %137, %82, %48, %26
  %144 = load i32, i32* %4, align 4
  ret i32 %144
}

declare dso_local i64 @asn1_get_next(i32*, i64, %struct.asn1_hdr*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i8*, ...) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #1

declare dso_local i64 @asn1_get_oid(i32*, i32, %struct.asn1_oid*, i32**) #1

declare dso_local i64 @x509_any_ext_key_usage_oid(%struct.asn1_oid*) #1

declare dso_local i32 @os_strlcpy(i8*, i8*, i32) #1

declare dso_local i64 @x509_id_kp_server_auth_oid(%struct.asn1_oid*) #1

declare dso_local i64 @x509_id_kp_client_auth_oid(%struct.asn1_oid*) #1

declare dso_local i64 @x509_id_kp_ocsp_oid(%struct.asn1_oid*) #1

declare dso_local i32 @asn1_oid_to_str(%struct.asn1_oid*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
