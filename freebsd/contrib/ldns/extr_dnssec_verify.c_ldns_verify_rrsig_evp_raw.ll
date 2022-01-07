; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_verify.c_ldns_verify_rrsig_evp_raw.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_verify.c_ldns_verify_rrsig_evp_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_STATUS_MEM_ERR = common dso_local global i32 0, align 4
@LDNS_STATUS_OK = common dso_local global i32 0, align 4
@LDNS_STATUS_CRYPTO_BOGUS = common dso_local global i32 0, align 4
@LDNS_STATUS_SSL_ERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ldns_verify_rrsig_evp_raw(i8* %0, i64 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = call i64 @malloc(i32 4)
  %15 = inttoptr i64 %14 to i32*
  store i32* %15, i32** %12, align 8
  %16 = load i32*, i32** %12, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %5
  %19 = load i32*, i32** %12, align 8
  %20 = call i32 @EVP_MD_CTX_init(i32* %19)
  br label %21

21:                                               ; preds = %18, %5
  %22 = load i32*, i32** %12, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* @LDNS_STATUS_MEM_ERR, align 4
  store i32 %25, i32* %6, align 4
  br label %56

26:                                               ; preds = %21
  %27 = load i32*, i32** %12, align 8
  %28 = load i32*, i32** %11, align 8
  %29 = call i32 @EVP_VerifyInit(i32* %27, i32* %28)
  %30 = load i32*, i32** %12, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = call i32 @ldns_buffer_begin(i32* %31)
  %33 = load i32*, i32** %9, align 8
  %34 = call i32 @ldns_buffer_position(i32* %33)
  %35 = call i32 @EVP_VerifyUpdate(i32* %30, i32 %32, i32 %34)
  %36 = load i32*, i32** %12, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = load i64, i64* %8, align 8
  %39 = trunc i64 %38 to i32
  %40 = load i32*, i32** %10, align 8
  %41 = call i32 @EVP_VerifyFinal(i32* %36, i8* %37, i32 %39, i32* %40)
  store i32 %41, i32* %13, align 4
  %42 = load i32*, i32** %12, align 8
  %43 = call i32 @EVP_MD_CTX_destroy(i32* %42)
  %44 = load i32, i32* %13, align 4
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %48

46:                                               ; preds = %26
  %47 = load i32, i32* @LDNS_STATUS_OK, align 4
  store i32 %47, i32* %6, align 4
  br label %56

48:                                               ; preds = %26
  %49 = load i32, i32* %13, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load i32, i32* @LDNS_STATUS_CRYPTO_BOGUS, align 4
  store i32 %52, i32* %6, align 4
  br label %56

53:                                               ; preds = %48
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* @LDNS_STATUS_SSL_ERR, align 4
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %54, %51, %46, %24
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @EVP_MD_CTX_init(i32*) #1

declare dso_local i32 @EVP_VerifyInit(i32*, i32*) #1

declare dso_local i32 @EVP_VerifyUpdate(i32*, i32, i32) #1

declare dso_local i32 @ldns_buffer_begin(i32*) #1

declare dso_local i32 @ldns_buffer_position(i32*) #1

declare dso_local i32 @EVP_VerifyFinal(i32*, i8*, i32, i32*) #1

declare dso_local i32 @EVP_MD_CTX_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
