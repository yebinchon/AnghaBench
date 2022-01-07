; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_client_ocsp.c_tls_process_ocsp_responses.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_client_ocsp.c_tls_process_ocsp_responses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_client = type { i32 }
%struct.x509_certificate = type { i32 }
%struct.asn1_hdr = type { i64, i64, i32, i32* }

@ASN1_CLASS_UNIVERSAL = common dso_local global i64 0, align 8
@ASN1_TAG_SEQUENCE = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"OCSP: Expected SEQUENCE (SingleResponse) - found class %d tag 0x%x\00", align 1
@TLS_OCSP_INVALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"OCSP: Did not find a response matching the server certificate\00", align 1
@TLS_OCSP_NO_RESPONSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tlsv1_client*, %struct.x509_certificate*, %struct.x509_certificate*, i32*, i64)* @tls_process_ocsp_responses to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_process_ocsp_responses(%struct.tlsv1_client* %0, %struct.x509_certificate* %1, %struct.x509_certificate* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.tlsv1_client*, align 8
  %8 = alloca %struct.x509_certificate*, align 8
  %9 = alloca %struct.x509_certificate*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.asn1_hdr, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.tlsv1_client* %0, %struct.tlsv1_client** %7, align 8
  store %struct.x509_certificate* %1, %struct.x509_certificate** %8, align 8
  store %struct.x509_certificate* %2, %struct.x509_certificate** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load i32*, i32** %10, align 8
  store i32* %16, i32** %13, align 8
  %17 = load i32*, i32** %10, align 8
  %18 = load i64, i64* %11, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  store i32* %19, i32** %14, align 8
  br label %20

20:                                               ; preds = %65, %5
  %21 = load i32*, i32** %13, align 8
  %22 = load i32*, i32** %14, align 8
  %23 = icmp ult i32* %21, %22
  br i1 %23, label %24, label %72

24:                                               ; preds = %20
  %25 = load i32*, i32** %13, align 8
  %26 = load i32*, i32** %14, align 8
  %27 = load i32*, i32** %13, align 8
  %28 = ptrtoint i32* %26 to i64
  %29 = ptrtoint i32* %27 to i64
  %30 = sub i64 %28, %29
  %31 = sdiv exact i64 %30, 4
  %32 = trunc i64 %31 to i32
  %33 = call i64 @asn1_get_next(i32* %25, i32 %32, %struct.asn1_hdr* %12)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %24
  %36 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %12, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @ASN1_CLASS_UNIVERSAL, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %12, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @ASN1_TAG_SEQUENCE, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %40, %35, %24
  %46 = load i32, i32* @MSG_DEBUG, align 4
  %47 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %12, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %12, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i32 (i32, i8*, ...) @wpa_printf(i32 %46, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i64 %48, i64 %50)
  %52 = load i32, i32* @TLS_OCSP_INVALID, align 4
  store i32 %52, i32* %6, align 4
  br label %76

53:                                               ; preds = %40
  %54 = load %struct.tlsv1_client*, %struct.tlsv1_client** %7, align 8
  %55 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %56 = load %struct.x509_certificate*, %struct.x509_certificate** %9, align 8
  %57 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %12, i32 0, i32 3
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %12, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @tls_process_ocsp_single_response(%struct.tlsv1_client* %54, %struct.x509_certificate* %55, %struct.x509_certificate* %56, i32* %58, i32 %60, i32* %15)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %53
  %64 = load i32, i32* %15, align 4
  store i32 %64, i32* %6, align 4
  br label %76

65:                                               ; preds = %53
  %66 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %12, i32 0, i32 3
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %12, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %67, i64 %70
  store i32* %71, i32** %13, align 8
  br label %20

72:                                               ; preds = %20
  %73 = load i32, i32* @MSG_DEBUG, align 4
  %74 = call i32 (i32, i8*, ...) @wpa_printf(i32 %73, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0))
  %75 = load i32, i32* @TLS_OCSP_NO_RESPONSE, align 4
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %72, %63, %45
  %77 = load i32, i32* %6, align 4
  ret i32 %77
}

declare dso_local i64 @asn1_get_next(i32*, i32, %struct.asn1_hdr*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @tls_process_ocsp_single_response(%struct.tlsv1_client*, %struct.x509_certificate*, %struct.x509_certificate*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
