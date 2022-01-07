; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec.c_ldns_dnssec_get_rrsig_for_name_and_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec.c_ldns_dnssec_get_rrsig_for_name_and_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_RR_TYPE_RRSIG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ldns_dnssec_get_rrsig_for_name_and_type(i32* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32*, i32** %7, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %12, %3
  store i32* null, i32** %4, align 8
  br label %50

16:                                               ; preds = %12
  store i64 0, i64* %8, align 8
  br label %17

17:                                               ; preds = %46, %16
  %18 = load i64, i64* %8, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = call i64 @ldns_rr_list_rr_count(i32* %19)
  %21 = icmp ult i64 %18, %20
  br i1 %21, label %22, label %49

22:                                               ; preds = %17
  %23 = load i32*, i32** %7, align 8
  %24 = load i64, i64* %8, align 8
  %25 = call i32* @ldns_rr_list_rr(i32* %23, i64 %24)
  store i32* %25, i32** %9, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = call i64 @ldns_rr_get_type(i32* %26)
  %28 = load i64, i64* @LDNS_RR_TYPE_RRSIG, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %22
  %31 = load i32*, i32** %9, align 8
  %32 = call i32 @ldns_rr_owner(i32* %31)
  %33 = load i32*, i32** %5, align 8
  %34 = call i64 @ldns_dname_compare(i32 %32, i32* %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %30
  %37 = load i32*, i32** %9, align 8
  %38 = call i32 @ldns_rr_rrsig_typecovered(i32* %37)
  %39 = call i64 @ldns_rdf2rr_type(i32 %38)
  %40 = load i64, i64* %6, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32*, i32** %9, align 8
  store i32* %43, i32** %4, align 8
  br label %50

44:                                               ; preds = %36, %30
  br label %45

45:                                               ; preds = %44, %22
  br label %46

46:                                               ; preds = %45
  %47 = load i64, i64* %8, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %8, align 8
  br label %17

49:                                               ; preds = %17
  store i32* null, i32** %4, align 8
  br label %50

50:                                               ; preds = %49, %42, %15
  %51 = load i32*, i32** %4, align 8
  ret i32* %51
}

declare dso_local i64 @ldns_rr_list_rr_count(i32*) #1

declare dso_local i32* @ldns_rr_list_rr(i32*, i64) #1

declare dso_local i64 @ldns_rr_get_type(i32*) #1

declare dso_local i64 @ldns_dname_compare(i32, i32*) #1

declare dso_local i32 @ldns_rr_owner(i32*) #1

declare dso_local i64 @ldns_rdf2rr_type(i32) #1

declare dso_local i32 @ldns_rr_rrsig_typecovered(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
