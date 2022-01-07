; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dane.c_ldns_dane_filter_unusable_records.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dane.c_ldns_dane_filter_unusable_records.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_RR_TYPE_TLSA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @ldns_dane_filter_unusable_records to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ldns_dane_filter_unusable_records(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %7 = call i32* (...) @ldns_rr_list_new()
  store i32* %7, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %59

11:                                               ; preds = %1
  store i64 0, i64* %4, align 8
  br label %12

12:                                               ; preds = %54, %11
  %13 = load i64, i64* %4, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = call i64 @ldns_rr_list_rr_count(i32* %14)
  %16 = icmp ult i64 %13, %15
  br i1 %16, label %17, label %57

17:                                               ; preds = %12
  %18 = load i32*, i32** %3, align 8
  %19 = load i64, i64* %4, align 8
  %20 = call i32* @ldns_rr_list_rr(i32* %18, i64 %19)
  store i32* %20, i32** %6, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = call i64 @ldns_rr_get_type(i32* %21)
  %23 = load i64, i64* @LDNS_RR_TYPE_TLSA, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %53

25:                                               ; preds = %17
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @ldns_rr_rd_count(i32* %26)
  %28 = icmp eq i32 %27, 4
  br i1 %28, label %29, label %53

29:                                               ; preds = %25
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @ldns_rr_rdf(i32* %30, i32 0)
  %32 = call i32 @ldns_rdf2native_int8(i32 %31)
  %33 = icmp sle i32 %32, 3
  br i1 %33, label %34, label %53

34:                                               ; preds = %29
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @ldns_rr_rdf(i32* %35, i32 1)
  %37 = call i32 @ldns_rdf2native_int8(i32 %36)
  %38 = icmp sle i32 %37, 1
  br i1 %38, label %39, label %53

39:                                               ; preds = %34
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @ldns_rr_rdf(i32* %40, i32 2)
  %42 = call i32 @ldns_rdf2native_int8(i32 %41)
  %43 = icmp sle i32 %42, 2
  br i1 %43, label %44, label %53

44:                                               ; preds = %39
  %45 = load i32*, i32** %5, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @ldns_rr_list_push_rr(i32* %45, i32* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %44
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @ldns_rr_list_free(i32* %50)
  store i32* null, i32** %2, align 8
  br label %59

52:                                               ; preds = %44
  br label %53

53:                                               ; preds = %52, %39, %34, %29, %25, %17
  br label %54

54:                                               ; preds = %53
  %55 = load i64, i64* %4, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %4, align 8
  br label %12

57:                                               ; preds = %12
  %58 = load i32*, i32** %5, align 8
  store i32* %58, i32** %2, align 8
  br label %59

59:                                               ; preds = %57, %49, %10
  %60 = load i32*, i32** %2, align 8
  ret i32* %60
}

declare dso_local i32* @ldns_rr_list_new(...) #1

declare dso_local i64 @ldns_rr_list_rr_count(i32*) #1

declare dso_local i32* @ldns_rr_list_rr(i32*, i64) #1

declare dso_local i64 @ldns_rr_get_type(i32*) #1

declare dso_local i32 @ldns_rr_rd_count(i32*) #1

declare dso_local i32 @ldns_rdf2native_int8(i32) #1

declare dso_local i32 @ldns_rr_rdf(i32*, i32) #1

declare dso_local i32 @ldns_rr_list_push_rr(i32*, i32*) #1

declare dso_local i32 @ldns_rr_list_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
