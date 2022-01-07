; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_verify.c_ldns_verify_rrsig_ecdsa_raw.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_verify.c_ldns_verify_rrsig_ecdsa_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_STATUS_CRYPTO_BOGUS = common dso_local global i32 0, align 4
@LDNS_ECDSAP256SHA256 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i32*, i8*, i64, i64)* @ldns_verify_rrsig_ecdsa_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ldns_verify_rrsig_ecdsa_raw(i8* %0, i64 %1, i32* %2, i8* %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32* %2, i32** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %17 = load i8*, i8** %11, align 8
  %18 = load i64, i64* %12, align 8
  %19 = load i64, i64* %13, align 8
  %20 = call i32* @ldns_ecdsa2pkey_raw(i8* %17, i64 %18, i64 %19)
  store i32* %20, i32** %14, align 8
  %21 = load i32*, i32** %14, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %6
  %24 = load i32, i32* @LDNS_STATUS_CRYPTO_BOGUS, align 4
  store i32 %24, i32* %7, align 4
  br label %43

25:                                               ; preds = %6
  %26 = load i64, i64* %13, align 8
  %27 = load i64, i64* @LDNS_ECDSAP256SHA256, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = call i32* (...) @EVP_sha256()
  store i32* %30, i32** %16, align 8
  br label %33

31:                                               ; preds = %25
  %32 = call i32* (...) @EVP_sha384()
  store i32* %32, i32** %16, align 8
  br label %33

33:                                               ; preds = %31, %29
  %34 = load i8*, i8** %8, align 8
  %35 = load i64, i64* %9, align 8
  %36 = load i32*, i32** %10, align 8
  %37 = load i32*, i32** %14, align 8
  %38 = load i32*, i32** %16, align 8
  %39 = call i32 @ldns_verify_rrsig_evp_raw(i8* %34, i64 %35, i32* %36, i32* %37, i32* %38)
  store i32 %39, i32* %15, align 4
  %40 = load i32*, i32** %14, align 8
  %41 = call i32 @EVP_PKEY_free(i32* %40)
  %42 = load i32, i32* %15, align 4
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %33, %23
  %44 = load i32, i32* %7, align 4
  ret i32 %44
}

declare dso_local i32* @ldns_ecdsa2pkey_raw(i8*, i64, i64) #1

declare dso_local i32* @EVP_sha256(...) #1

declare dso_local i32* @EVP_sha384(...) #1

declare dso_local i32 @ldns_verify_rrsig_evp_raw(i8*, i64, i32*, i32*, i32*) #1

declare dso_local i32 @EVP_PKEY_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
