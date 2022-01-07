; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_x509v3.c_x509_parse_extension.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_x509v3.c_x509_parse_extension.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x509_certificate = type { i32 }
%struct.asn1_hdr = type { i64, i64, i32*, i32 }
%struct.asn1_oid = type { i32 }

@ASN1_CLASS_UNIVERSAL = common dso_local global i64 0, align 8
@ASN1_TAG_SEQUENCE = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [82 x i8] c"X509: Unexpected ASN.1 header in Extensions: class %d tag 0x%x; expected SEQUENCE\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"X509: Unexpected ASN.1 data for Extension (expected OID)\00", align 1
@ASN1_TAG_BOOLEAN = common dso_local global i64 0, align 8
@ASN1_TAG_OCTETSTRING = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [97 x i8] c"X509: Unexpected ASN.1 header in Extensions: class %d tag 0x%x; expected BOOLEAN or OCTET STRING\00", align 1
@ASN1_CLASS_PRIVATE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [86 x i8] c"X509: Unexpected ASN.1 header in Extensions: class %d tag 0x%x; expected OCTET STRING\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"X509: Extension: extnID=%s critical=%d\00", align 1
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"X509: extnValue\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"X509: Unknown critical extension %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.x509_certificate*, i32*, i64, i32**)* @x509_parse_extension to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_parse_extension(%struct.x509_certificate* %0, i32* %1, i64 %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.x509_certificate*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.asn1_hdr, align 8
  %12 = alloca %struct.asn1_oid, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [80 x i8], align 16
  store %struct.x509_certificate* %0, %struct.x509_certificate** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32** %3, i32*** %9, align 8
  store i32 0, i32* %13, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = load i64, i64* %8, align 8
  %18 = trunc i64 %17 to i32
  %19 = call i64 @asn1_get_next(i32* %16, i32 %18, %struct.asn1_hdr* %11)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %4
  %22 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %11, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @ASN1_CLASS_UNIVERSAL, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %11, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ASN1_TAG_SEQUENCE, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %26, %21, %4
  %32 = load i32, i32* @MSG_DEBUG, align 4
  %33 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %11, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %11, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call i32 (i32, i8*, ...) @wpa_printf(i32 %32, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i64 0, i64 0), i64 %34, i64 %36)
  store i32 -1, i32* %5, align 4
  br label %172

38:                                               ; preds = %26
  %39 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %11, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  store i32* %40, i32** %7, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %11, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  store i32* %45, i32** %10, align 8
  %46 = load i32**, i32*** %9, align 8
  store i32* %45, i32** %46, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = ptrtoint i32* %48 to i64
  %51 = ptrtoint i32* %49 to i64
  %52 = sub i64 %50, %51
  %53 = sdiv exact i64 %52, 4
  %54 = trunc i64 %53 to i32
  %55 = call i64 @asn1_get_oid(i32* %47, i32 %54, %struct.asn1_oid* %12, i32** %7)
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %38
  %58 = load i32, i32* @MSG_DEBUG, align 4
  %59 = call i32 (i32, i8*, ...) @wpa_printf(i32 %58, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %172

60:                                               ; preds = %38
  %61 = load i32*, i32** %7, align 8
  %62 = load i32*, i32** %10, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = ptrtoint i32* %62 to i64
  %65 = ptrtoint i32* %63 to i64
  %66 = sub i64 %64, %65
  %67 = sdiv exact i64 %66, 4
  %68 = trunc i64 %67 to i32
  %69 = call i64 @asn1_get_next(i32* %61, i32 %68, %struct.asn1_hdr* %11)
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %86, label %71

71:                                               ; preds = %60
  %72 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %11, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @ASN1_CLASS_UNIVERSAL, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %86, label %76

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %11, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @ASN1_TAG_BOOLEAN, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %93

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %11, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @ASN1_TAG_OCTETSTRING, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %81, %71, %60
  %87 = load i32, i32* @MSG_DEBUG, align 4
  %88 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %11, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %11, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = call i32 (i32, i8*, ...) @wpa_printf(i32 %87, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.2, i64 0, i64 0), i64 %89, i64 %91)
  store i32 -1, i32* %5, align 4
  br label %172

93:                                               ; preds = %81, %76
  %94 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %11, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @ASN1_TAG_BOOLEAN, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %138

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %11, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %13, align 4
  %103 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %11, i32 0, i32 2
  %104 = load i32*, i32** %103, align 8
  store i32* %104, i32** %7, align 8
  %105 = load i32*, i32** %7, align 8
  %106 = load i32*, i32** %10, align 8
  %107 = load i32*, i32** %7, align 8
  %108 = ptrtoint i32* %106 to i64
  %109 = ptrtoint i32* %107 to i64
  %110 = sub i64 %108, %109
  %111 = sdiv exact i64 %110, 4
  %112 = trunc i64 %111 to i32
  %113 = call i64 @asn1_get_next(i32* %105, i32 %112, %struct.asn1_hdr* %11)
  %114 = icmp slt i64 %113, 0
  br i1 %114, label %130, label %115

115:                                              ; preds = %98
  %116 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %11, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @ASN1_CLASS_UNIVERSAL, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %125

120:                                              ; preds = %115
  %121 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %11, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @ASN1_CLASS_PRIVATE, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %130, label %125

125:                                              ; preds = %120, %115
  %126 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %11, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @ASN1_TAG_OCTETSTRING, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %137

130:                                              ; preds = %125, %120, %98
  %131 = load i32, i32* @MSG_DEBUG, align 4
  %132 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %11, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %11, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = call i32 (i32, i8*, ...) @wpa_printf(i32 %131, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.3, i64 0, i64 0), i64 %133, i64 %135)
  store i32 -1, i32* %5, align 4
  br label %172

137:                                              ; preds = %125
  br label %138

138:                                              ; preds = %137, %93
  %139 = getelementptr inbounds [80 x i8], [80 x i8]* %15, i64 0, i64 0
  %140 = call i32 @asn1_oid_to_str(%struct.asn1_oid* %12, i8* %139, i32 80)
  %141 = load i32, i32* @MSG_DEBUG, align 4
  %142 = getelementptr inbounds [80 x i8], [80 x i8]* %15, i64 0, i64 0
  %143 = load i32, i32* %13, align 4
  %144 = call i32 (i32, i8*, ...) @wpa_printf(i32 %141, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i8* %142, i32 %143)
  %145 = load i32, i32* @MSG_MSGDUMP, align 4
  %146 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %11, i32 0, i32 2
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %11, i32 0, i32 3
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @wpa_hexdump(i32 %145, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32* %147, i32 %149)
  %151 = load %struct.x509_certificate*, %struct.x509_certificate** %6, align 8
  %152 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %11, i32 0, i32 2
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %11, i32 0, i32 3
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @x509_parse_extension_data(%struct.x509_certificate* %151, %struct.asn1_oid* %12, i32* %153, i32 %155)
  store i32 %156, i32* %14, align 4
  %157 = load i32, i32* %14, align 4
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %138
  %160 = load i32, i32* %14, align 4
  store i32 %160, i32* %5, align 4
  br label %172

161:                                              ; preds = %138
  %162 = load i32, i32* %14, align 4
  %163 = icmp eq i32 %162, 1
  br i1 %163, label %164, label %171

164:                                              ; preds = %161
  %165 = load i32, i32* %13, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %164
  %168 = load i32, i32* @MSG_INFO, align 4
  %169 = getelementptr inbounds [80 x i8], [80 x i8]* %15, i64 0, i64 0
  %170 = call i32 (i32, i8*, ...) @wpa_printf(i32 %168, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i8* %169)
  store i32 -1, i32* %5, align 4
  br label %172

171:                                              ; preds = %164, %161
  store i32 0, i32* %5, align 4
  br label %172

172:                                              ; preds = %171, %167, %159, %130, %86, %57, %31
  %173 = load i32, i32* %5, align 4
  ret i32 %173
}

declare dso_local i64 @asn1_get_next(i32*, i32, %struct.asn1_hdr*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @asn1_get_oid(i32*, i32, %struct.asn1_oid*, i32**) #1

declare dso_local i32 @asn1_oid_to_str(%struct.asn1_oid*, i8*, i32) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #1

declare dso_local i32 @x509_parse_extension_data(%struct.x509_certificate*, %struct.asn1_oid*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
