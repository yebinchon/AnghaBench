; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_verify.c_ldns_verify_trusted_time.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_verify.c_ldns_verify_trusted_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_STATUS_ERR = common dso_local global i32 0, align 4
@LDNS_STATUS_CRYPTO_NO_RRSIG = common dso_local global i32 0, align 4
@LDNS_STATUS_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ldns_verify_trusted_time(i32* %0, i32* %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32* null, i32** %16, align 8
  %18 = load i32, i32* @LDNS_STATUS_ERR, align 4
  store i32 %18, i32* %17, align 4
  %19 = load i32*, i32** %7, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %5
  %22 = load i32*, i32** %8, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32*, i32** %9, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %24, %21, %5
  %28 = load i32, i32* @LDNS_STATUS_ERR, align 4
  store i32 %28, i32* %6, align 4
  br label %101

29:                                               ; preds = %24
  %30 = load i32*, i32** %8, align 8
  %31 = call i32 @ldns_rr_list_rr_count(i32* %30)
  %32 = icmp slt i32 %31, 1
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* @LDNS_STATUS_ERR, align 4
  store i32 %34, i32* %6, align 4
  br label %101

35:                                               ; preds = %29
  %36 = load i32*, i32** %9, align 8
  %37 = call i32 @ldns_rr_list_rr_count(i32* %36)
  %38 = icmp slt i32 %37, 1
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* @LDNS_STATUS_CRYPTO_NO_RRSIG, align 4
  store i32 %40, i32* %6, align 4
  br label %101

41:                                               ; preds = %35
  store i32 0, i32* %12, align 4
  br label %42

42:                                               ; preds = %94, %41
  %43 = load i32, i32* %12, align 4
  %44 = load i32*, i32** %9, align 8
  %45 = call i32 @ldns_rr_list_rr_count(i32* %44)
  %46 = icmp slt i32 %43, %45
  br i1 %46, label %47, label %97

47:                                               ; preds = %42
  %48 = load i32*, i32** %9, align 8
  %49 = load i32, i32* %12, align 4
  %50 = call i32* @ldns_rr_list_rr(i32* %48, i32 %49)
  store i32* %50, i32** %14, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = load i32*, i32** %14, align 8
  %53 = call i32 @ldns_rr_rrsig_signame(i32* %52)
  %54 = load i32*, i32** %7, align 8
  %55 = call i32 @ldns_resolver_dnssec_anchors(i32* %54)
  %56 = load i32, i32* %10, align 4
  %57 = call i32* @ldns_fetch_valid_domain_keys_time(i32* %51, i32 %53, i32 %55, i32 %56, i32* %17)
  store i32* %57, i32** %16, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %93

59:                                               ; preds = %47
  store i32 0, i32* %13, align 4
  br label %60

60:                                               ; preds = %89, %59
  %61 = load i32, i32* %13, align 4
  %62 = load i32*, i32** %16, align 8
  %63 = call i32 @ldns_rr_list_rr_count(i32* %62)
  %64 = icmp slt i32 %61, %63
  br i1 %64, label %65, label %92

65:                                               ; preds = %60
  %66 = load i32*, i32** %16, align 8
  %67 = load i32, i32* %13, align 4
  %68 = call i32* @ldns_rr_list_rr(i32* %66, i32 %67)
  store i32* %68, i32** %15, align 8
  %69 = load i32*, i32** %8, align 8
  %70 = load i32*, i32** %14, align 8
  %71 = load i32*, i32** %15, align 8
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @ldns_verify_rrsig_time(i32* %69, i32* %70, i32* %71, i32 %72)
  store i32 %73, i32* %17, align 4
  %74 = load i32, i32* @LDNS_STATUS_OK, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %88

76:                                               ; preds = %65
  %77 = load i32*, i32** %11, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = load i32*, i32** %11, align 8
  %81 = load i32*, i32** %15, align 8
  %82 = call i32 @ldns_rr_clone(i32* %81)
  %83 = call i32 @ldns_rr_list_push_rr(i32* %80, i32 %82)
  br label %84

84:                                               ; preds = %79, %76
  %85 = load i32*, i32** %16, align 8
  %86 = call i32 @ldns_rr_list_deep_free(i32* %85)
  %87 = load i32, i32* @LDNS_STATUS_OK, align 4
  store i32 %87, i32* %6, align 4
  br label %101

88:                                               ; preds = %65
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %13, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %13, align 4
  br label %60

92:                                               ; preds = %60
  br label %93

93:                                               ; preds = %92, %47
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %12, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %12, align 4
  br label %42

97:                                               ; preds = %42
  %98 = load i32*, i32** %16, align 8
  %99 = call i32 @ldns_rr_list_deep_free(i32* %98)
  %100 = load i32, i32* %17, align 4
  store i32 %100, i32* %6, align 4
  br label %101

101:                                              ; preds = %97, %84, %39, %33, %27
  %102 = load i32, i32* %6, align 4
  ret i32 %102
}

declare dso_local i32 @ldns_rr_list_rr_count(i32*) #1

declare dso_local i32* @ldns_rr_list_rr(i32*, i32) #1

declare dso_local i32* @ldns_fetch_valid_domain_keys_time(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @ldns_rr_rrsig_signame(i32*) #1

declare dso_local i32 @ldns_resolver_dnssec_anchors(i32*) #1

declare dso_local i32 @ldns_verify_rrsig_time(i32*, i32*, i32*, i32) #1

declare dso_local i32 @ldns_rr_list_push_rr(i32*, i32) #1

declare dso_local i32 @ldns_rr_clone(i32*) #1

declare dso_local i32 @ldns_rr_list_deep_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
