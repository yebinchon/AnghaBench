; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_openssl.c_openssl_debug_dump_certificate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_openssl.c_openssl_debug_dump_certificate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"%d: %s (%s) %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*)* @openssl_debug_dump_certificate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @openssl_debug_dump_certificate(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca [256 x i8], align 16
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [128 x i8], align 16
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @X509_get_subject_name(i32* %9)
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %12 = call i32 @X509_NAME_oneline(i32 %10, i8* %11, i32 256)
  %13 = load i32*, i32** %4, align 8
  %14 = call i32* @X509_get_serialNumber(i32* %13)
  store i32* %14, i32** %7, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @ASN1_STRING_get0_data(i32* %19)
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @ASN1_STRING_length(i32* %21)
  %23 = call i32 @wpa_snprintf_hex_uppercase(i8* %18, i32 128, i32 %20, i32 %22)
  br label %26

24:                                               ; preds = %2
  %25 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  store i8 0, i8* %25, align 16
  br label %26

26:                                               ; preds = %24, %17
  %27 = load i32*, i32** %4, align 8
  %28 = call i32* @X509_get_pubkey(i32* %27)
  store i32* %28, i32** %6, align 8
  %29 = load i32, i32* @MSG_DEBUG, align 4
  %30 = load i32, i32* %3, align 4
  %31 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @openssl_pkey_type_str(i32* %32)
  %34 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %35 = call i32 @wpa_printf(i32 %29, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %30, i8* %31, i32 %33, i8* %34)
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @EVP_PKEY_free(i32* %36)
  ret void
}

declare dso_local i32 @X509_NAME_oneline(i32, i8*, i32) #1

declare dso_local i32 @X509_get_subject_name(i32*) #1

declare dso_local i32* @X509_get_serialNumber(i32*) #1

declare dso_local i32 @wpa_snprintf_hex_uppercase(i8*, i32, i32, i32) #1

declare dso_local i32 @ASN1_STRING_get0_data(i32*) #1

declare dso_local i32 @ASN1_STRING_length(i32*) #1

declare dso_local i32* @X509_get_pubkey(i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32, i8*, i32, i8*) #1

declare dso_local i32 @openssl_pkey_type_str(i32*) #1

declare dso_local i32 @EVP_PKEY_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
