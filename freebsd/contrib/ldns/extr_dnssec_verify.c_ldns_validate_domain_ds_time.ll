; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_verify.c_ldns_validate_domain_ds_time.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_verify.c_ldns_validate_domain_ds_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_RR_TYPE_DS = common dso_local global i32 0, align 4
@LDNS_RR_CLASS_IN = common dso_local global i32 0, align 4
@LDNS_RD = common dso_local global i32 0, align 4
@LDNS_SECTION_ANSWER = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_RRSIG = common dso_local global i32 0, align 4
@LDNS_STATUS_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ldns_validate_domain_ds_time(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* @LDNS_RR_TYPE_DS, align 4
  %17 = load i32, i32* @LDNS_RR_CLASS_IN, align 4
  %18 = load i32, i32* @LDNS_RD, align 4
  %19 = call i32* @ldns_resolver_query(i32* %14, i32* %15, i32 %16, i32 %17, i32 %18)
  store i32* %19, i32** %9, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %63

22:                                               ; preds = %4
  %23 = load i32*, i32** %9, align 8
  %24 = load i32, i32* @LDNS_RR_TYPE_DS, align 4
  %25 = load i32, i32* @LDNS_SECTION_ANSWER, align 4
  %26 = call i32* @ldns_pkt_rr_list_by_type(i32* %23, i32 %24, i32 %25)
  store i32* %26, i32** %11, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = load i32, i32* @LDNS_RR_TYPE_RRSIG, align 4
  %29 = load i32, i32* @LDNS_SECTION_ANSWER, align 4
  %30 = call i32* @ldns_pkt_rr_list_by_type(i32* %27, i32 %28, i32 %29)
  store i32* %30, i32** %12, align 8
  %31 = load i32*, i32** %11, align 8
  %32 = load i32*, i32** %12, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i64 @ldns_verify_time(i32* %31, i32* %32, i32* %33, i32 %34, i32* null)
  %36 = load i64, i64* @LDNS_STATUS_OK, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %56

38:                                               ; preds = %22
  %39 = call i32* (...) @ldns_rr_list_new()
  store i32* %39, i32** %13, align 8
  store i64 0, i64* %10, align 8
  br label %40

40:                                               ; preds = %52, %38
  %41 = load i64, i64* %10, align 8
  %42 = load i32*, i32** %11, align 8
  %43 = call i64 @ldns_rr_list_rr_count(i32* %42)
  %44 = icmp slt i64 %41, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %40
  %46 = load i32*, i32** %13, align 8
  %47 = load i32*, i32** %11, align 8
  %48 = load i64, i64* %10, align 8
  %49 = call i32 @ldns_rr_list_rr(i32* %47, i64 %48)
  %50 = call i32 @ldns_rr_clone(i32 %49)
  %51 = call i32 @ldns_rr_list_push_rr(i32* %46, i32 %50)
  br label %52

52:                                               ; preds = %45
  %53 = load i64, i64* %10, align 8
  %54 = add nsw i64 %53, 1
  store i64 %54, i64* %10, align 8
  br label %40

55:                                               ; preds = %40
  br label %56

56:                                               ; preds = %55, %22
  %57 = load i32*, i32** %11, align 8
  %58 = call i32 @ldns_rr_list_deep_free(i32* %57)
  %59 = load i32*, i32** %12, align 8
  %60 = call i32 @ldns_rr_list_deep_free(i32* %59)
  %61 = load i32*, i32** %9, align 8
  %62 = call i32 @ldns_pkt_free(i32* %61)
  br label %64

63:                                               ; preds = %4
  br label %64

64:                                               ; preds = %63, %56
  %65 = load i32*, i32** %13, align 8
  ret i32* %65
}

declare dso_local i32* @ldns_resolver_query(i32*, i32*, i32, i32, i32) #1

declare dso_local i32* @ldns_pkt_rr_list_by_type(i32*, i32, i32) #1

declare dso_local i64 @ldns_verify_time(i32*, i32*, i32*, i32, i32*) #1

declare dso_local i32* @ldns_rr_list_new(...) #1

declare dso_local i64 @ldns_rr_list_rr_count(i32*) #1

declare dso_local i32 @ldns_rr_list_push_rr(i32*, i32) #1

declare dso_local i32 @ldns_rr_clone(i32) #1

declare dso_local i32 @ldns_rr_list_rr(i32*, i64) #1

declare dso_local i32 @ldns_rr_list_deep_free(i32*) #1

declare dso_local i32 @ldns_pkt_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
