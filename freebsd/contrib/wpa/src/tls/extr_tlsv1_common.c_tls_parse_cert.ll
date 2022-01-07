; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_common.c_tls_parse_cert.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_common.c_tls_parse_cert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_public_key = type { i32 }
%struct.x509_certificate = type { i32, i32 }

@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"TLSv1: Parse ASN.1 DER certificate\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"TLSv1: Failed to parse X.509 certificate\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"TLSv1: Failed to import server public key\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_parse_cert(i32* %0, i64 %1, %struct.crypto_public_key** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.crypto_public_key**, align 8
  %8 = alloca %struct.x509_certificate*, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.crypto_public_key** %2, %struct.crypto_public_key*** %7, align 8
  %9 = load i32, i32* @MSG_MSGDUMP, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @wpa_hexdump(i32 %9, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32* %10, i64 %11)
  %13 = load i32*, i32** %5, align 8
  %14 = load i64, i64* %6, align 8
  %15 = call %struct.crypto_public_key* @crypto_public_key_from_cert(i32* %13, i64 %14)
  %16 = load %struct.crypto_public_key**, %struct.crypto_public_key*** %7, align 8
  store %struct.crypto_public_key* %15, %struct.crypto_public_key** %16, align 8
  %17 = load %struct.crypto_public_key**, %struct.crypto_public_key*** %7, align 8
  %18 = load %struct.crypto_public_key*, %struct.crypto_public_key** %17, align 8
  %19 = icmp ne %struct.crypto_public_key* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %48

21:                                               ; preds = %3
  %22 = load i32*, i32** %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = call %struct.x509_certificate* @x509_certificate_parse(i32* %22, i64 %23)
  store %struct.x509_certificate* %24, %struct.x509_certificate** %8, align 8
  %25 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %26 = icmp eq %struct.x509_certificate* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* @MSG_DEBUG, align 4
  %29 = call i32 @wpa_printf(i32 %28, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %48

30:                                               ; preds = %21
  %31 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %32 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %35 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.crypto_public_key* @crypto_public_key_import(i32 %33, i32 %36)
  %38 = load %struct.crypto_public_key**, %struct.crypto_public_key*** %7, align 8
  store %struct.crypto_public_key* %37, %struct.crypto_public_key** %38, align 8
  %39 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %40 = call i32 @x509_certificate_free(%struct.x509_certificate* %39)
  %41 = load %struct.crypto_public_key**, %struct.crypto_public_key*** %7, align 8
  %42 = load %struct.crypto_public_key*, %struct.crypto_public_key** %41, align 8
  %43 = icmp eq %struct.crypto_public_key* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %30
  %45 = load i32, i32* @MSG_ERROR, align 4
  %46 = call i32 @wpa_printf(i32 %45, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %48

47:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %47, %44, %27, %20
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i64) #1

declare dso_local %struct.crypto_public_key* @crypto_public_key_from_cert(i32*, i64) #1

declare dso_local %struct.x509_certificate* @x509_certificate_parse(i32*, i64) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local %struct.crypto_public_key* @crypto_public_key_import(i32, i32) #1

declare dso_local i32 @x509_certificate_free(%struct.x509_certificate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
