; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_x509v3.c_x509_parse_extensions.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_x509v3.c_x509_parse_extensions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x509_certificate = type { i32 }
%struct.asn1_hdr = type { i64, i64, i32, i32* }

@ASN1_CLASS_UNIVERSAL = common dso_local global i64 0, align 8
@ASN1_TAG_SEQUENCE = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [81 x i8] c"X509: Unexpected ASN.1 data for Extensions: class %d tag 0x%x; expected SEQUENCE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.x509_certificate*, i32*, i64)* @x509_parse_extensions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_parse_extensions(%struct.x509_certificate* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.x509_certificate*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.asn1_hdr, align 8
  store %struct.x509_certificate* %0, %struct.x509_certificate** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = load i64, i64* %7, align 8
  %12 = call i64 @asn1_get_next(i32* %10, i64 %11, %struct.asn1_hdr* %9)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %9, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @ASN1_CLASS_UNIVERSAL, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %9, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @ASN1_TAG_SEQUENCE, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %19, %14, %3
  %25 = load i32, i32* @MSG_DEBUG, align 4
  %26 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %9, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %9, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @wpa_printf(i32 %25, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0), i64 %27, i64 %29)
  store i32 -1, i32* %4, align 4
  br label %58

31:                                               ; preds = %19
  %32 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %9, i32 0, i32 3
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %6, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %9, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  store i32* %38, i32** %8, align 8
  br label %39

39:                                               ; preds = %56, %31
  %40 = load i32*, i32** %6, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = icmp ult i32* %40, %41
  br i1 %42, label %43, label %57

43:                                               ; preds = %39
  %44 = load %struct.x509_certificate*, %struct.x509_certificate** %5, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = ptrtoint i32* %46 to i64
  %49 = ptrtoint i32* %47 to i64
  %50 = sub i64 %48, %49
  %51 = sdiv exact i64 %50, 4
  %52 = trunc i64 %51 to i32
  %53 = call i64 @x509_parse_extension(%struct.x509_certificate* %44, i32* %45, i32 %52, i32** %6)
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %43
  store i32 -1, i32* %4, align 4
  br label %58

56:                                               ; preds = %43
  br label %39

57:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %57, %55, %24
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i64 @asn1_get_next(i32*, i64, %struct.asn1_hdr*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i64, i64) #1

declare dso_local i64 @x509_parse_extension(%struct.x509_certificate*, i32*, i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
