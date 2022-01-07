; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_verify.c_ldns_verify_test_sig_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_verify.c_ldns_verify_test_sig_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_STATUS_CRYPTO_NO_RRSIG = common dso_local global i32 0, align 4
@LDNS_STATUS_MISSING_RDATA_FIELDS_RRSIG = common dso_local global i32 0, align 4
@LDNS_MAX_PACKETLEN = common dso_local global i32 0, align 4
@LDNS_STATUS_ERR = common dso_local global i32 0, align 4
@LDNS_STATUS_MISSING_RDATA_FIELDS_KEY = common dso_local global i32 0, align 4
@LDNS_STATUS_OK = common dso_local global i64 0, align 8
@LDNS_STATUS_CRYPTO_NO_MATCHING_KEYTAG_DNSKEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32*)* @ldns_verify_test_sig_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ldns_verify_test_sig_key(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load i32, i32* @LDNS_STATUS_CRYPTO_NO_RRSIG, align 4
  store i32 %16, i32* %5, align 4
  br label %82

17:                                               ; preds = %4
  %18 = load i32*, i32** %8, align 8
  %19 = call i32* @ldns_rr_rdf(i32* %18, i32 1)
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* @LDNS_STATUS_MISSING_RDATA_FIELDS_RRSIG, align 4
  store i32 %22, i32* %5, align 4
  br label %82

23:                                               ; preds = %17
  %24 = load i32*, i32** %8, align 8
  %25 = call i32* @ldns_rr_rdf(i32* %24, i32 1)
  %26 = call i64 @ldns_rdf2native_int8(i32* %25)
  store i64 %26, i64* %10, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = call i64 @ldns_calc_keytag(i32* %27)
  %29 = load i32*, i32** %8, align 8
  %30 = call i32 @ldns_rr_rrsig_keytag(i32* %29)
  %31 = call i64 @ldns_rdf2native_int16(i32 %30)
  %32 = icmp eq i64 %28, %31
  br i1 %32, label %33, label %80

33:                                               ; preds = %23
  %34 = load i32, i32* @LDNS_MAX_PACKETLEN, align 4
  %35 = call i32* @ldns_buffer_new(i32 %34)
  store i32* %35, i32** %11, align 8
  %36 = load i32, i32* @LDNS_STATUS_ERR, align 4
  store i32 %36, i32* %12, align 4
  %37 = load i32*, i32** %9, align 8
  %38 = call i32* @ldns_rr_rdf(i32* %37, i32 3)
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = load i32*, i32** %11, align 8
  %42 = call i32 @ldns_buffer_free(i32* %41)
  %43 = load i32, i32* @LDNS_STATUS_MISSING_RDATA_FIELDS_KEY, align 4
  store i32 %43, i32* %5, align 4
  br label %82

44:                                               ; preds = %33
  %45 = load i32*, i32** %11, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = call i32* @ldns_rr_rdf(i32* %46, i32 3)
  %48 = call i64 @ldns_rdf2buffer_wire(i32* %45, i32* %47)
  %49 = load i64, i64* @LDNS_STATUS_OK, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = load i32*, i32** %11, align 8
  %53 = call i32 @ldns_buffer_free(i32* %52)
  %54 = load i32, i32* @LDNS_STATUS_ERR, align 4
  store i32 %54, i32* %5, align 4
  br label %82

55:                                               ; preds = %44
  %56 = load i32*, i32** %9, align 8
  %57 = call i32* @ldns_rr_rdf(i32* %56, i32 2)
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i32, i32* @LDNS_STATUS_MISSING_RDATA_FIELDS_KEY, align 4
  store i32 %60, i32* %12, align 4
  br label %76

61:                                               ; preds = %55
  %62 = load i64, i64* %10, align 8
  %63 = load i32*, i32** %9, align 8
  %64 = call i32* @ldns_rr_rdf(i32* %63, i32 2)
  %65 = call i64 @ldns_rdf2native_int8(i32* %64)
  %66 = icmp eq i64 %62, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %61
  %68 = load i32*, i32** %6, align 8
  %69 = load i32*, i32** %7, align 8
  %70 = load i32*, i32** %11, align 8
  %71 = load i64, i64* %10, align 8
  %72 = call i32 @ldns_verify_rrsig_buffers(i32* %68, i32* %69, i32* %70, i64 %71)
  store i32 %72, i32* %12, align 4
  br label %75

73:                                               ; preds = %61
  %74 = load i32, i32* @LDNS_STATUS_CRYPTO_NO_MATCHING_KEYTAG_DNSKEY, align 4
  store i32 %74, i32* %12, align 4
  br label %75

75:                                               ; preds = %73, %67
  br label %76

76:                                               ; preds = %75, %59
  %77 = load i32*, i32** %11, align 8
  %78 = call i32 @ldns_buffer_free(i32* %77)
  %79 = load i32, i32* %12, align 4
  store i32 %79, i32* %5, align 4
  br label %82

80:                                               ; preds = %23
  %81 = load i32, i32* @LDNS_STATUS_CRYPTO_NO_MATCHING_KEYTAG_DNSKEY, align 4
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %80, %76, %51, %40, %21, %15
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i32* @ldns_rr_rdf(i32*, i32) #1

declare dso_local i64 @ldns_rdf2native_int8(i32*) #1

declare dso_local i64 @ldns_calc_keytag(i32*) #1

declare dso_local i64 @ldns_rdf2native_int16(i32) #1

declare dso_local i32 @ldns_rr_rrsig_keytag(i32*) #1

declare dso_local i32* @ldns_buffer_new(i32) #1

declare dso_local i32 @ldns_buffer_free(i32*) #1

declare dso_local i64 @ldns_rdf2buffer_wire(i32*, i32*) #1

declare dso_local i32 @ldns_verify_rrsig_buffers(i32*, i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
