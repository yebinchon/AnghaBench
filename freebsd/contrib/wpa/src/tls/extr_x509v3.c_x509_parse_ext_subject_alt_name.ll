; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_x509v3.c_x509_parse_ext_subject_alt_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_x509v3.c_x509_parse_ext_subject_alt_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x509_certificate = type { i32, i32 }
%struct.asn1_hdr = type { i64, i64, i64, i32 }

@ASN1_CLASS_UNIVERSAL = common dso_local global i64 0, align 8
@ASN1_TAG_SEQUENCE = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"X509: Expected SEQUENCE in SubjectAltName; found %d tag 0x%x\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"X509: SubjectAltName\00", align 1
@X509_EXT_SUBJECT_ALT_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.x509_certificate*, i32*, i64)* @x509_parse_ext_subject_alt_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_parse_ext_subject_alt_name(%struct.x509_certificate* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.x509_certificate*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.asn1_hdr, align 8
  store %struct.x509_certificate* %0, %struct.x509_certificate** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = load i64, i64* %7, align 8
  %11 = call i64 @asn1_get_next(i32* %9, i64 %10, %struct.asn1_hdr* %8)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %23, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @ASN1_CLASS_UNIVERSAL, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @ASN1_TAG_SEQUENCE, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %18, %13, %3
  %24 = load i32, i32* @MSG_DEBUG, align 4
  %25 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = call i32 (i32, i8*, ...) @wpa_printf(i32 %24, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i64 %26, i64 %28)
  store i32 -1, i32* %4, align 4
  br label %50

30:                                               ; preds = %18
  %31 = load i32, i32* @MSG_DEBUG, align 4
  %32 = call i32 (i32, i8*, ...) @wpa_printf(i32 %31, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @X509_EXT_SUBJECT_ALT_NAME, align 4
  %34 = load %struct.x509_certificate*, %struct.x509_certificate** %5, align 8
  %35 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %50

42:                                               ; preds = %30
  %43 = load %struct.x509_certificate*, %struct.x509_certificate** %5, align 8
  %44 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @x509_parse_ext_alt_name(i32* %44, i32 %46, i64 %48)
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %42, %41, %23
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i64 @asn1_get_next(i32*, i64, %struct.asn1_hdr*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @x509_parse_ext_alt_name(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
