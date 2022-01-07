; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_verify.c_ldns_prepare_for_verify.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_verify.c_ldns_prepare_for_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_STATUS_CRYPTO_TYPE_COVERED_ERR = common dso_local global i64 0, align 8
@LDNS_STATUS_OK = common dso_local global i64 0, align 8
@LDNS_STATUS_MEM_ERR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, i32*, i32*)* @ldns_prepare_for_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ldns_prepare_for_verify(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load i32*, i32** %9, align 8
  %12 = call i32 @ldns_rr_owner(i32* %11)
  %13 = call i32 @ldns_dname2canonical(i32 %12)
  %14 = load i32*, i32** %9, align 8
  %15 = call i32 @ldns_rr_rrsig_typecovered(i32* %14)
  %16 = call i64 @ldns_rdf2rr_type(i32 %15)
  %17 = load i32*, i32** %8, align 8
  %18 = call i32 @ldns_rr_list_rr(i32* %17, i32 0)
  %19 = call i64 @ldns_rr_get_type(i32 %18)
  %20 = icmp ne i64 %16, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i64, i64* @LDNS_STATUS_CRYPTO_TYPE_COVERED_ERR, align 8
  store i64 %22, i64* %5, align 8
  br label %55

23:                                               ; preds = %4
  %24 = load i32*, i32** %6, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = call i64 @ldns_rrsig2rawsig_buffer(i32* %24, i32* %25)
  store i64 %26, i64* %10, align 8
  %27 = load i64, i64* %10, align 8
  %28 = load i64, i64* @LDNS_STATUS_OK, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i64, i64* %10, align 8
  store i64 %31, i64* %5, align 8
  br label %55

32:                                               ; preds = %23
  %33 = load i32*, i32** %8, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = call i32 @ldns_rrset_use_signature_ttl(i32* %33, i32* %34)
  %36 = load i32*, i32** %8, align 8
  %37 = call i32 @ldns_rr_list_sort(i32* %36)
  %38 = load i32*, i32** %7, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = call i64 @ldns_rrsig2buffer_wire(i32* %38, i32* %39)
  %41 = load i64, i64* @LDNS_STATUS_OK, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %32
  %44 = load i64, i64* @LDNS_STATUS_MEM_ERR, align 8
  store i64 %44, i64* %5, align 8
  br label %55

45:                                               ; preds = %32
  %46 = load i32*, i32** %7, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = call i64 @ldns_rr_list2buffer_wire(i32* %46, i32* %47)
  %49 = load i64, i64* @LDNS_STATUS_OK, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i64, i64* @LDNS_STATUS_MEM_ERR, align 8
  store i64 %52, i64* %5, align 8
  br label %55

53:                                               ; preds = %45
  %54 = load i64, i64* @LDNS_STATUS_OK, align 8
  store i64 %54, i64* %5, align 8
  br label %55

55:                                               ; preds = %53, %51, %43, %30, %21
  %56 = load i64, i64* %5, align 8
  ret i64 %56
}

declare dso_local i32 @ldns_dname2canonical(i32) #1

declare dso_local i32 @ldns_rr_owner(i32*) #1

declare dso_local i64 @ldns_rdf2rr_type(i32) #1

declare dso_local i32 @ldns_rr_rrsig_typecovered(i32*) #1

declare dso_local i64 @ldns_rr_get_type(i32) #1

declare dso_local i32 @ldns_rr_list_rr(i32*, i32) #1

declare dso_local i64 @ldns_rrsig2rawsig_buffer(i32*, i32*) #1

declare dso_local i32 @ldns_rrset_use_signature_ttl(i32*, i32*) #1

declare dso_local i32 @ldns_rr_list_sort(i32*) #1

declare dso_local i64 @ldns_rrsig2buffer_wire(i32*, i32*) #1

declare dso_local i64 @ldns_rr_list2buffer_wire(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
