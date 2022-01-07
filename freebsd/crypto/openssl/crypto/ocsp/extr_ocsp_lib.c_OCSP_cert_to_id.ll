; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ocsp/extr_ocsp_lib.c_OCSP_cert_to_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ocsp/extr_ocsp_lib.c_OCSP_cert_to_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @OCSP_cert_to_id(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = call i32* (...) @EVP_sha1()
  store i32* %13, i32** %4, align 8
  br label %14

14:                                               ; preds = %12, %3
  %15 = load i32*, i32** %5, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load i32*, i32** %5, align 8
  %19 = call i32* @X509_get_issuer_name(i32* %18)
  store i32* %19, i32** %7, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = call i32* @X509_get0_serialNumber(i32* %20)
  store i32* %21, i32** %8, align 8
  br label %25

22:                                               ; preds = %14
  %23 = load i32*, i32** %6, align 8
  %24 = call i32* @X509_get_subject_name(i32* %23)
  store i32* %24, i32** %7, align 8
  store i32* null, i32** %8, align 8
  br label %25

25:                                               ; preds = %22, %17
  %26 = load i32*, i32** %6, align 8
  %27 = call i32* @X509_get0_pubkey_bitstr(i32* %26)
  store i32* %27, i32** %9, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = call i32* @OCSP_cert_id_new(i32* %28, i32* %29, i32* %30, i32* %31)
  ret i32* %32
}

declare dso_local i32* @EVP_sha1(...) #1

declare dso_local i32* @X509_get_issuer_name(i32*) #1

declare dso_local i32* @X509_get0_serialNumber(i32*) #1

declare dso_local i32* @X509_get_subject_name(i32*) #1

declare dso_local i32* @X509_get0_pubkey_bitstr(i32*) #1

declare dso_local i32* @OCSP_cert_id_new(i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
