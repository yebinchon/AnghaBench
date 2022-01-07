; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_verify.c_ldns_verify_notime.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_verify.c_ldns_verify_notime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_STATUS_ERR = common dso_local global i64 0, align 8
@LDNS_STATUS_CRYPTO_NO_RRSIG = common dso_local global i64 0, align 8
@LDNS_STATUS_CRYPTO_NO_TRUSTED_DNSKEY = common dso_local global i64 0, align 8
@LDNS_STATUS_OK = common dso_local global i64 0, align 8
@LDNS_STATUS_CRYPTO_NO_MATCHING_KEYTAG_DNSKEY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ldns_verify_notime(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i64, i64* @LDNS_STATUS_ERR, align 8
  store i64 %13, i64* %11, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %4
  %17 = load i32*, i32** %7, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32*, i32** %8, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %19, %16, %4
  %23 = load i64, i64* @LDNS_STATUS_ERR, align 8
  store i64 %23, i64* %5, align 8
  br label %86

24:                                               ; preds = %19
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @ldns_rr_list_rr_count(i32* %25)
  %27 = icmp slt i32 %26, 1
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i64, i64* @LDNS_STATUS_ERR, align 8
  store i64 %29, i64* %5, align 8
  br label %86

30:                                               ; preds = %24
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @ldns_rr_list_rr_count(i32* %31)
  %33 = icmp slt i32 %32, 1
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i64, i64* @LDNS_STATUS_CRYPTO_NO_RRSIG, align 8
  store i64 %35, i64* %5, align 8
  br label %86

36:                                               ; preds = %30
  %37 = load i32*, i32** %8, align 8
  %38 = call i32 @ldns_rr_list_rr_count(i32* %37)
  %39 = icmp slt i32 %38, 1
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i64, i64* @LDNS_STATUS_CRYPTO_NO_TRUSTED_DNSKEY, align 8
  store i64 %41, i64* %11, align 8
  br label %84

42:                                               ; preds = %36
  store i32 0, i32* %10, align 4
  br label %43

43:                                               ; preds = %80, %42
  %44 = load i32, i32* %10, align 4
  %45 = load i32*, i32** %7, align 8
  %46 = call i32 @ldns_rr_list_rr_count(i32* %45)
  %47 = icmp slt i32 %44, %46
  br i1 %47, label %48, label %83

48:                                               ; preds = %43
  %49 = load i32*, i32** %6, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @ldns_rr_list_rr(i32* %50, i32 %51)
  %53 = load i32*, i32** %8, align 8
  %54 = load i32*, i32** %9, align 8
  %55 = call i64 @ldns_verify_rrsig_keylist_notime(i32* %49, i32 %52, i32* %53, i32* %54)
  store i64 %55, i64* %12, align 8
  %56 = load i64, i64* %12, align 8
  %57 = load i64, i64* @LDNS_STATUS_OK, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %48
  %60 = load i64, i64* @LDNS_STATUS_OK, align 8
  store i64 %60, i64* %11, align 8
  br label %79

61:                                               ; preds = %48
  %62 = load i64, i64* %11, align 8
  %63 = load i64, i64* @LDNS_STATUS_ERR, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i64, i64* %12, align 8
  store i64 %66, i64* %11, align 8
  br label %78

67:                                               ; preds = %61
  %68 = load i64, i64* %12, align 8
  %69 = load i64, i64* @LDNS_STATUS_ERR, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %67
  %72 = load i64, i64* %11, align 8
  %73 = load i64, i64* @LDNS_STATUS_CRYPTO_NO_MATCHING_KEYTAG_DNSKEY, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = load i64, i64* %12, align 8
  store i64 %76, i64* %11, align 8
  br label %77

77:                                               ; preds = %75, %71, %67
  br label %78

78:                                               ; preds = %77, %65
  br label %79

79:                                               ; preds = %78, %59
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %10, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %10, align 4
  br label %43

83:                                               ; preds = %43
  br label %84

84:                                               ; preds = %83, %40
  %85 = load i64, i64* %11, align 8
  store i64 %85, i64* %5, align 8
  br label %86

86:                                               ; preds = %84, %34, %28, %22
  %87 = load i64, i64* %5, align 8
  ret i64 %87
}

declare dso_local i32 @ldns_rr_list_rr_count(i32*) #1

declare dso_local i64 @ldns_verify_rrsig_keylist_notime(i32*, i32, i32*, i32*) #1

declare dso_local i32 @ldns_rr_list_rr(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
