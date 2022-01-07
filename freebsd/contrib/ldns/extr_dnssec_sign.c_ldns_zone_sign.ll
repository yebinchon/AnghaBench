; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_sign.c_ldns_zone_sign.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_sign.c_ldns_zone_sign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ldns_dnssec_default_replace_signatures = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ldns_zone_sign(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = call i32* (...) @ldns_zone_new()
  store i32* %9, i32** %6, align 8
  %10 = call i32* (...) @ldns_dnssec_zone_new()
  store i32* %10, i32** %5, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @ldns_zone_soa(i32* %12)
  %14 = call i32 @ldns_dnssec_zone_add_rr(i32* %11, i32 %13)
  %15 = load i32*, i32** %6, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @ldns_zone_soa(i32* %16)
  %18 = call i32 @ldns_rr_clone(i32 %17)
  %19 = call i32 @ldns_zone_set_soa(i32* %15, i32 %18)
  store i64 0, i64* %8, align 8
  br label %20

20:                                               ; preds = %40, %2
  %21 = load i64, i64* %8, align 8
  %22 = load i32*, i32** %3, align 8
  %23 = call i32* @ldns_zone_rrs(i32* %22)
  %24 = call i64 @ldns_rr_list_rr_count(i32* %23)
  %25 = icmp ult i64 %21, %24
  br i1 %25, label %26, label %43

26:                                               ; preds = %20
  %27 = load i32*, i32** %5, align 8
  %28 = load i32*, i32** %3, align 8
  %29 = call i32* @ldns_zone_rrs(i32* %28)
  %30 = load i64, i64* %8, align 8
  %31 = call i32 @ldns_rr_list_rr(i32* %29, i64 %30)
  %32 = call i32 @ldns_dnssec_zone_add_rr(i32* %27, i32 %31)
  %33 = load i32*, i32** %6, align 8
  %34 = load i32*, i32** %3, align 8
  %35 = call i32* @ldns_zone_rrs(i32* %34)
  %36 = load i64, i64* %8, align 8
  %37 = call i32 @ldns_rr_list_rr(i32* %35, i64 %36)
  %38 = call i32 @ldns_rr_clone(i32 %37)
  %39 = call i32 @ldns_zone_push_rr(i32* %33, i32 %38)
  br label %40

40:                                               ; preds = %26
  %41 = load i64, i64* %8, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %8, align 8
  br label %20

43:                                               ; preds = %20
  %44 = call i32* (...) @ldns_rr_list_new()
  store i32* %44, i32** %7, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = load i32*, i32** %4, align 8
  %48 = load i32, i32* @ldns_dnssec_default_replace_signatures, align 4
  %49 = call i32 @ldns_dnssec_zone_sign(i32* %45, i32* %46, i32* %47, i32 %48, i32* null)
  store i64 0, i64* %8, align 8
  br label %50

50:                                               ; preds = %63, %43
  %51 = load i64, i64* %8, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = call i64 @ldns_rr_list_rr_count(i32* %52)
  %54 = icmp ult i64 %51, %53
  br i1 %54, label %55, label %66

55:                                               ; preds = %50
  %56 = load i32*, i32** %6, align 8
  %57 = call i32* @ldns_zone_rrs(i32* %56)
  %58 = load i32*, i32** %7, align 8
  %59 = load i64, i64* %8, align 8
  %60 = call i32 @ldns_rr_list_rr(i32* %58, i64 %59)
  %61 = call i32 @ldns_rr_clone(i32 %60)
  %62 = call i32 @ldns_rr_list_push_rr(i32* %57, i32 %61)
  br label %63

63:                                               ; preds = %55
  %64 = load i64, i64* %8, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %8, align 8
  br label %50

66:                                               ; preds = %50
  %67 = load i32*, i32** %7, align 8
  %68 = call i32 @ldns_rr_list_deep_free(i32* %67)
  %69 = load i32*, i32** %5, align 8
  %70 = call i32 @ldns_dnssec_zone_free(i32* %69)
  %71 = load i32*, i32** %6, align 8
  ret i32* %71
}

declare dso_local i32* @ldns_zone_new(...) #1

declare dso_local i32* @ldns_dnssec_zone_new(...) #1

declare dso_local i32 @ldns_dnssec_zone_add_rr(i32*, i32) #1

declare dso_local i32 @ldns_zone_soa(i32*) #1

declare dso_local i32 @ldns_zone_set_soa(i32*, i32) #1

declare dso_local i32 @ldns_rr_clone(i32) #1

declare dso_local i64 @ldns_rr_list_rr_count(i32*) #1

declare dso_local i32* @ldns_zone_rrs(i32*) #1

declare dso_local i32 @ldns_rr_list_rr(i32*, i64) #1

declare dso_local i32 @ldns_zone_push_rr(i32*, i32) #1

declare dso_local i32* @ldns_rr_list_new(...) #1

declare dso_local i32 @ldns_dnssec_zone_sign(i32*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @ldns_rr_list_push_rr(i32*, i32) #1

declare dso_local i32 @ldns_rr_list_deep_free(i32*) #1

declare dso_local i32 @ldns_dnssec_zone_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
