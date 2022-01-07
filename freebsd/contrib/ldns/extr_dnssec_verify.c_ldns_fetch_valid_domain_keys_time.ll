; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_verify.c_ldns_fetch_valid_domain_keys_time.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_verify.c_ldns_fetch_valid_domain_keys_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_STATUS_OK = common dso_local global i32 0, align 4
@LDNS_STATUS_CRYPTO_NO_TRUSTED_DNSKEY = common dso_local global i32 0, align 4
@LDNS_STATUS_CRYPTO_NO_TRUSTED_DS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ldns_fetch_valid_domain_keys_time(i32* %0, i32* %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %15, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %92

18:                                               ; preds = %5
  %19 = load i32*, i32** %7, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %92

21:                                               ; preds = %18
  %22 = load i32*, i32** %8, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %92

24:                                               ; preds = %21
  %25 = load i32*, i32** %6, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32* @ldns_validate_domain_dnskey_time(i32* %25, i32* %26, i32* %27, i32 %28)
  store i32* %29, i32** %11, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i32, i32* @LDNS_STATUS_OK, align 4
  %33 = load i32*, i32** %10, align 8
  store i32 %32, i32* %33, align 4
  br label %91

34:                                               ; preds = %24
  %35 = load i32, i32* @LDNS_STATUS_CRYPTO_NO_TRUSTED_DNSKEY, align 4
  %36 = load i32*, i32** %10, align 8
  store i32 %35, i32* %36, align 4
  %37 = load i32*, i32** %7, align 8
  %38 = call i32* @ldns_dname_left_chop(i32* %37)
  store i32* %38, i32** %14, align 8
  br label %39

39:                                               ; preds = %83, %34
  %40 = load i32*, i32** %14, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load i32*, i32** %14, align 8
  %44 = call i64 @ldns_rdf_size(i32* %43)
  %45 = icmp sgt i64 %44, 0
  br label %46

46:                                               ; preds = %42, %39
  %47 = phi i1 [ false, %39 ], [ %45, %42 ]
  br i1 %47, label %48, label %84

48:                                               ; preds = %46
  %49 = load i32*, i32** %6, align 8
  %50 = load i32*, i32** %14, align 8
  %51 = load i32*, i32** %8, align 8
  %52 = load i32, i32* %9, align 4
  %53 = load i32*, i32** %10, align 8
  %54 = call i32* @ldns_fetch_valid_domain_keys_time(i32* %49, i32* %50, i32* %51, i32 %52, i32* %53)
  store i32* %54, i32** %15, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %78

56:                                               ; preds = %48
  %57 = load i32*, i32** %6, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = load i32*, i32** %15, align 8
  %60 = load i32, i32* %9, align 4
  %61 = call i32* @ldns_validate_domain_ds_time(i32* %57, i32* %58, i32* %59, i32 %60)
  store i32* %61, i32** %12, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %72

63:                                               ; preds = %56
  %64 = load i32*, i32** %6, align 8
  %65 = load i32*, i32** %7, align 8
  %66 = load i32*, i32** %12, align 8
  %67 = load i32, i32* %9, align 4
  %68 = load i32*, i32** %10, align 8
  %69 = call i32* @ldns_fetch_valid_domain_keys_time(i32* %64, i32* %65, i32* %66, i32 %67, i32* %68)
  store i32* %69, i32** %11, align 8
  %70 = load i32*, i32** %12, align 8
  %71 = call i32 @ldns_rr_list_deep_free(i32* %70)
  br label %75

72:                                               ; preds = %56
  %73 = load i32, i32* @LDNS_STATUS_CRYPTO_NO_TRUSTED_DS, align 4
  %74 = load i32*, i32** %10, align 8
  store i32 %73, i32* %74, align 4
  br label %75

75:                                               ; preds = %72, %63
  %76 = load i32*, i32** %15, align 8
  %77 = call i32 @ldns_rr_list_deep_free(i32* %76)
  br label %84

78:                                               ; preds = %48
  %79 = load i32*, i32** %14, align 8
  store i32* %79, i32** %13, align 8
  %80 = call i32* @ldns_dname_left_chop(i32* %79)
  store i32* %80, i32** %14, align 8
  %81 = load i32*, i32** %13, align 8
  %82 = call i32 @ldns_rdf_deep_free(i32* %81)
  br label %83

83:                                               ; preds = %78
  br label %39

84:                                               ; preds = %75, %46
  %85 = load i32*, i32** %14, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i32*, i32** %14, align 8
  %89 = call i32 @ldns_rdf_deep_free(i32* %88)
  br label %90

90:                                               ; preds = %87, %84
  br label %91

91:                                               ; preds = %90, %31
  br label %92

92:                                               ; preds = %91, %21, %18, %5
  %93 = load i32*, i32** %11, align 8
  ret i32* %93
}

declare dso_local i32* @ldns_validate_domain_dnskey_time(i32*, i32*, i32*, i32) #1

declare dso_local i32* @ldns_dname_left_chop(i32*) #1

declare dso_local i64 @ldns_rdf_size(i32*) #1

declare dso_local i32* @ldns_validate_domain_ds_time(i32*, i32*, i32*, i32) #1

declare dso_local i32 @ldns_rr_list_deep_free(i32*) #1

declare dso_local i32 @ldns_rdf_deep_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
