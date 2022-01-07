; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_x509v3.c_x509_parse_public_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_x509v3.c_x509_parse_public_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x509_certificate = type { i32, i32*, i32 }
%struct.asn1_hdr = type { i64, i64, i32, i64* }

@ASN1_CLASS_UNIVERSAL = common dso_local global i64 0, align 8
@ASN1_TAG_SEQUENCE = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"X509: Expected SEQUENCE (SubjectPublicKeyInfo) - found class %d tag 0x%x\00", align 1
@ASN1_TAG_BITSTRING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [70 x i8] c"X509: Expected BITSTRING (subjectPublicKey) - found class %d tag 0x%x\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"X509: BITSTRING - %d unused bits\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"X509: Failed to allocate memory for public key\00", align 1
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"X509: subjectPublicKey\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64, %struct.x509_certificate*, i64**)* @x509_parse_public_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_parse_public_key(i64* %0, i64 %1, %struct.x509_certificate* %2, i64** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.x509_certificate*, align 8
  %9 = alloca i64**, align 8
  %10 = alloca %struct.asn1_hdr, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  store i64* %0, i64** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.x509_certificate* %2, %struct.x509_certificate** %8, align 8
  store i64** %3, i64*** %9, align 8
  %13 = load i64*, i64** %6, align 8
  store i64* %13, i64** %11, align 8
  %14 = load i64*, i64** %6, align 8
  %15 = load i64, i64* %7, align 8
  %16 = getelementptr inbounds i64, i64* %14, i64 %15
  store i64* %16, i64** %12, align 8
  %17 = load i64*, i64** %11, align 8
  %18 = load i64*, i64** %12, align 8
  %19 = load i64*, i64** %11, align 8
  %20 = ptrtoint i64* %18 to i64
  %21 = ptrtoint i64* %19 to i64
  %22 = sub i64 %20, %21
  %23 = sdiv exact i64 %22, 8
  %24 = trunc i64 %23 to i32
  %25 = call i64 @asn1_get_next(i64* %17, i32 %24, %struct.asn1_hdr* %10)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %4
  %28 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @ASN1_CLASS_UNIVERSAL, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @ASN1_TAG_SEQUENCE, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %32, %27, %4
  %38 = load i32, i32* @MSG_DEBUG, align 4
  %39 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = call i32 (i32, i8*, ...) @wpa_printf(i32 %38, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i64 %40, i64 %42)
  store i32 -1, i32* %5, align 4
  br label %157

44:                                               ; preds = %32
  %45 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 3
  %46 = load i64*, i64** %45, align 8
  store i64* %46, i64** %11, align 8
  %47 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = load i64*, i64** %12, align 8
  %51 = load i64*, i64** %11, align 8
  %52 = ptrtoint i64* %50 to i64
  %53 = ptrtoint i64* %51 to i64
  %54 = sub i64 %52, %53
  %55 = sdiv exact i64 %54, 8
  %56 = icmp sgt i64 %49, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %44
  store i32 -1, i32* %5, align 4
  br label %157

58:                                               ; preds = %44
  %59 = load i64*, i64** %11, align 8
  %60 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %59, i64 %62
  store i64* %63, i64** %12, align 8
  %64 = load i64*, i64** %12, align 8
  %65 = load i64**, i64*** %9, align 8
  store i64* %64, i64** %65, align 8
  %66 = load i64*, i64** %11, align 8
  %67 = load i64*, i64** %12, align 8
  %68 = load i64*, i64** %11, align 8
  %69 = ptrtoint i64* %67 to i64
  %70 = ptrtoint i64* %68 to i64
  %71 = sub i64 %69, %70
  %72 = sdiv exact i64 %71, 8
  %73 = trunc i64 %72 to i32
  %74 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %75 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %74, i32 0, i32 2
  %76 = call i64 @x509_parse_algorithm_identifier(i64* %66, i32 %73, i32* %75, i64** %11)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %58
  store i32 -1, i32* %5, align 4
  br label %157

79:                                               ; preds = %58
  %80 = load i64*, i64** %11, align 8
  %81 = load i64*, i64** %12, align 8
  %82 = load i64*, i64** %11, align 8
  %83 = ptrtoint i64* %81 to i64
  %84 = ptrtoint i64* %82 to i64
  %85 = sub i64 %83, %84
  %86 = sdiv exact i64 %85, 8
  %87 = trunc i64 %86 to i32
  %88 = call i64 @asn1_get_next(i64* %80, i32 %87, %struct.asn1_hdr* %10)
  %89 = icmp slt i64 %88, 0
  br i1 %89, label %100, label %90

90:                                               ; preds = %79
  %91 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @ASN1_CLASS_UNIVERSAL, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %100, label %95

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @ASN1_TAG_BITSTRING, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %107

100:                                              ; preds = %95, %90, %79
  %101 = load i32, i32* @MSG_DEBUG, align 4
  %102 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = call i32 (i32, i8*, ...) @wpa_printf(i32 %101, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i64 %103, i64 %105)
  store i32 -1, i32* %5, align 4
  br label %157

107:                                              ; preds = %95
  %108 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = icmp slt i32 %109, 1
  br i1 %110, label %111, label %112

111:                                              ; preds = %107
  store i32 -1, i32* %5, align 4
  br label %157

112:                                              ; preds = %107
  %113 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 3
  %114 = load i64*, i64** %113, align 8
  store i64* %114, i64** %11, align 8
  %115 = load i64*, i64** %11, align 8
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %112
  %119 = load i32, i32* @MSG_DEBUG, align 4
  %120 = load i64*, i64** %11, align 8
  %121 = load i64, i64* %120, align 8
  %122 = call i32 (i32, i8*, ...) @wpa_printf(i32 %119, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i64 %121)
  br label %123

123:                                              ; preds = %118, %112
  %124 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %125 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = call i32 @os_free(i32* %126)
  %128 = load i64*, i64** %11, align 8
  %129 = getelementptr inbounds i64, i64* %128, i64 1
  %130 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = sub nsw i32 %131, 1
  %133 = call i32* @os_memdup(i64* %129, i32 %132)
  %134 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %135 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %134, i32 0, i32 1
  store i32* %133, i32** %135, align 8
  %136 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %137 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %136, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  %139 = icmp eq i32* %138, null
  br i1 %139, label %140, label %143

140:                                              ; preds = %123
  %141 = load i32, i32* @MSG_DEBUG, align 4
  %142 = call i32 (i32, i8*, ...) @wpa_printf(i32 %141, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %157

143:                                              ; preds = %123
  %144 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = sub nsw i32 %145, 1
  %147 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %148 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 8
  %149 = load i32, i32* @MSG_MSGDUMP, align 4
  %150 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %151 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %154 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @wpa_hexdump(i32 %149, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32* %152, i32 %155)
  store i32 0, i32* %5, align 4
  br label %157

157:                                              ; preds = %143, %140, %111, %100, %78, %57, %37
  %158 = load i32, i32* %5, align 4
  ret i32 %158
}

declare dso_local i64 @asn1_get_next(i64*, i32, %struct.asn1_hdr*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @x509_parse_algorithm_identifier(i64*, i32, i32*, i64**) #1

declare dso_local i32 @os_free(i32*) #1

declare dso_local i32* @os_memdup(i64*, i32) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
