; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_x509v3.c_x509_parse_validity.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_x509v3.c_x509_parse_validity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x509_certificate = type { i64, i64 }
%struct.asn1_hdr = type { i64, i64, i64, i32* }

@ASN1_CLASS_UNIVERSAL = common dso_local global i64 0, align 8
@ASN1_TAG_SEQUENCE = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"X509: Expected SEQUENCE (Validity) - found class %d tag 0x%x\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"X509: Failed to parse notBefore Time\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"X509: Failed to parse notAfter Time\00", align 1
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"X509: Validity: notBefore: %lu notAfter: %lu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, %struct.x509_certificate*, i32**)* @x509_parse_validity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_parse_validity(i32* %0, i64 %1, %struct.x509_certificate* %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.x509_certificate*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca %struct.asn1_hdr, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.x509_certificate* %2, %struct.x509_certificate** %8, align 8
  store i32** %3, i32*** %9, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load i64, i64* %7, align 8
  %15 = call i64 @asn1_get_next(i32* %13, i64 %14, %struct.asn1_hdr* %10)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %27, label %17

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ASN1_CLASS_UNIVERSAL, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ASN1_TAG_SEQUENCE, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %22, %17, %4
  %28 = load i32, i32* @MSG_DEBUG, align 4
  %29 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @wpa_printf(i32 %28, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i64 %30, i64 %32)
  store i32 -1, i32* %5, align 4
  br label %131

34:                                               ; preds = %22
  %35 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 3
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %11, align 8
  %37 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %12, align 8
  %39 = load i64, i64* %12, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = load i64, i64* %7, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32*, i32** %11, align 8
  %44 = ptrtoint i32* %42 to i64
  %45 = ptrtoint i32* %43 to i64
  %46 = sub i64 %44, %45
  %47 = sdiv exact i64 %46, 4
  %48 = icmp ugt i64 %39, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %34
  store i32 -1, i32* %5, align 4
  br label %131

50:                                               ; preds = %34
  %51 = load i32*, i32** %11, align 8
  %52 = load i64, i64* %12, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32**, i32*** %9, align 8
  store i32* %53, i32** %54, align 8
  %55 = load i32*, i32** %11, align 8
  %56 = load i64, i64* %12, align 8
  %57 = call i64 @asn1_get_next(i32* %55, i64 %56, %struct.asn1_hdr* %10)
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %75, label %59

59:                                               ; preds = %50
  %60 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @ASN1_CLASS_UNIVERSAL, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %75, label %64

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 3
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %72 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %71, i32 0, i32 1
  %73 = call i64 @x509_parse_time(i32* %66, i64 %68, i64 %70, i64* %72)
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %64, %59, %50
  %76 = load i32, i32* @MSG_DEBUG, align 4
  %77 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 3
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @wpa_hexdump_ascii(i32 %76, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32* %78, i64 %80)
  store i32 -1, i32* %5, align 4
  br label %131

82:                                               ; preds = %64
  %83 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 3
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  store i32* %87, i32** %11, align 8
  %88 = load i32**, i32*** %9, align 8
  %89 = load i32*, i32** %88, align 8
  %90 = load i32*, i32** %11, align 8
  %91 = ptrtoint i32* %89 to i64
  %92 = ptrtoint i32* %90 to i64
  %93 = sub i64 %91, %92
  %94 = sdiv exact i64 %93, 4
  store i64 %94, i64* %12, align 8
  %95 = load i32*, i32** %11, align 8
  %96 = load i64, i64* %12, align 8
  %97 = call i64 @asn1_get_next(i32* %95, i64 %96, %struct.asn1_hdr* %10)
  %98 = icmp slt i64 %97, 0
  br i1 %98, label %115, label %99

99:                                               ; preds = %82
  %100 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @ASN1_CLASS_UNIVERSAL, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %115, label %104

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 3
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %112 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %111, i32 0, i32 0
  %113 = call i64 @x509_parse_time(i32* %106, i64 %108, i64 %110, i64* %112)
  %114 = icmp slt i64 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %104, %99, %82
  %116 = load i32, i32* @MSG_DEBUG, align 4
  %117 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 3
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @wpa_hexdump_ascii(i32 %116, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32* %118, i64 %120)
  store i32 -1, i32* %5, align 4
  br label %131

122:                                              ; preds = %104
  %123 = load i32, i32* @MSG_MSGDUMP, align 4
  %124 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %125 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %128 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = call i32 @wpa_printf(i32 %123, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i64 %126, i64 %129)
  store i32 0, i32* %5, align 4
  br label %131

131:                                              ; preds = %122, %115, %75, %49, %27
  %132 = load i32, i32* %5, align 4
  ret i32 %132
}

declare dso_local i64 @asn1_get_next(i32*, i64, %struct.asn1_hdr*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i64, i64) #1

declare dso_local i64 @x509_parse_time(i32*, i64, i64, i64*) #1

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
