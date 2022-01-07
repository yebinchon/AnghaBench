; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_verify.c_ldns_verify_time.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_verify.c_ldns_verify_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_STATUS_ERR = common dso_local global i64 0, align 8
@LDNS_STATUS_CRYPTO_NO_RRSIG = common dso_local global i64 0, align 8
@LDNS_STATUS_CRYPTO_NO_TRUSTED_DNSKEY = common dso_local global i64 0, align 8
@LDNS_STATUS_OK = common dso_local global i64 0, align 8
@LDNS_STATUS_CRYPTO_NO_MATCHING_KEYTAG_DNSKEY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ldns_verify_time(i32* %0, i32* %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %15 = load i64, i64* @LDNS_STATUS_ERR, align 8
  store i64 %15, i64* %13, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %5
  %19 = load i32*, i32** %8, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32*, i32** %9, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %21, %18, %5
  %25 = load i64, i64* @LDNS_STATUS_ERR, align 8
  store i64 %25, i64* %6, align 8
  br label %89

26:                                               ; preds = %21
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @ldns_rr_list_rr_count(i32* %27)
  %29 = icmp slt i32 %28, 1
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i64, i64* @LDNS_STATUS_ERR, align 8
  store i64 %31, i64* %6, align 8
  br label %89

32:                                               ; preds = %26
  %33 = load i32*, i32** %8, align 8
  %34 = call i32 @ldns_rr_list_rr_count(i32* %33)
  %35 = icmp slt i32 %34, 1
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i64, i64* @LDNS_STATUS_CRYPTO_NO_RRSIG, align 8
  store i64 %37, i64* %6, align 8
  br label %89

38:                                               ; preds = %32
  %39 = load i32*, i32** %9, align 8
  %40 = call i32 @ldns_rr_list_rr_count(i32* %39)
  %41 = icmp slt i32 %40, 1
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i64, i64* @LDNS_STATUS_CRYPTO_NO_TRUSTED_DNSKEY, align 8
  store i64 %43, i64* %13, align 8
  br label %87

44:                                               ; preds = %38
  store i32 0, i32* %12, align 4
  br label %45

45:                                               ; preds = %83, %44
  %46 = load i32, i32* %12, align 4
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @ldns_rr_list_rr_count(i32* %47)
  %49 = icmp slt i32 %46, %48
  br i1 %49, label %50, label %86

50:                                               ; preds = %45
  %51 = load i32*, i32** %7, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @ldns_rr_list_rr(i32* %52, i32 %53)
  %55 = load i32*, i32** %9, align 8
  %56 = load i32, i32* %10, align 4
  %57 = load i32*, i32** %11, align 8
  %58 = call i64 @ldns_verify_rrsig_keylist_time(i32* %51, i32 %54, i32* %55, i32 %56, i32* %57)
  store i64 %58, i64* %14, align 8
  %59 = load i64, i64* %14, align 8
  %60 = load i64, i64* @LDNS_STATUS_OK, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %50
  %63 = load i64, i64* @LDNS_STATUS_OK, align 8
  store i64 %63, i64* %13, align 8
  br label %82

64:                                               ; preds = %50
  %65 = load i64, i64* %13, align 8
  %66 = load i64, i64* @LDNS_STATUS_ERR, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load i64, i64* %14, align 8
  store i64 %69, i64* %13, align 8
  br label %81

70:                                               ; preds = %64
  %71 = load i64, i64* %14, align 8
  %72 = load i64, i64* @LDNS_STATUS_ERR, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %70
  %75 = load i64, i64* %13, align 8
  %76 = load i64, i64* @LDNS_STATUS_CRYPTO_NO_MATCHING_KEYTAG_DNSKEY, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = load i64, i64* %14, align 8
  store i64 %79, i64* %13, align 8
  br label %80

80:                                               ; preds = %78, %74, %70
  br label %81

81:                                               ; preds = %80, %68
  br label %82

82:                                               ; preds = %81, %62
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %12, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %12, align 4
  br label %45

86:                                               ; preds = %45
  br label %87

87:                                               ; preds = %86, %42
  %88 = load i64, i64* %13, align 8
  store i64 %88, i64* %6, align 8
  br label %89

89:                                               ; preds = %87, %36, %30, %24
  %90 = load i64, i64* %6, align 8
  ret i64 %90
}

declare dso_local i32 @ldns_rr_list_rr_count(i32*) #1

declare dso_local i64 @ldns_verify_rrsig_keylist_time(i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @ldns_rr_list_rr(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
