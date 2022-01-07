; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns-host/extr_ldns-host.c_ldns_pkt_filter_answer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns-host/extr_ldns-host.c_ldns_pkt_filter_answer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_RR_TYPE_ANY = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_AXFR = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_A = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_AAAA = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_NS = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_PTR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64)* @ldns_pkt_filter_answer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ldns_pkt_filter_answer(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i32* @ldns_pkt_answer(i32* %11)
  store i32* %12, i32** %8, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = call i32 @ldns_rr_list_rr_count(i32* %13)
  store i32 %14, i32* %7, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %59, %2
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %62

19:                                               ; preds = %15
  %20 = load i32*, i32** %8, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32* @ldns_rr_list_rr(i32* %20, i32 %21)
  store i32* %22, i32** %9, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = call i64 @ldns_rr_get_type(i32* %23)
  store i64 %24, i64* %10, align 8
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* @LDNS_RR_TYPE_ANY, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %52, label %28

28:                                               ; preds = %19
  %29 = load i64, i64* %4, align 8
  %30 = load i64, i64* %10, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %52, label %32

32:                                               ; preds = %28
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* @LDNS_RR_TYPE_AXFR, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %58

36:                                               ; preds = %32
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* @LDNS_RR_TYPE_A, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %52, label %40

40:                                               ; preds = %36
  %41 = load i64, i64* %10, align 8
  %42 = load i64, i64* @LDNS_RR_TYPE_AAAA, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %52, label %44

44:                                               ; preds = %40
  %45 = load i64, i64* %10, align 8
  %46 = load i64, i64* @LDNS_RR_TYPE_NS, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load i64, i64* %10, align 8
  %50 = load i64, i64* @LDNS_RR_TYPE_PTR, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %48, %44, %40, %36, %28, %19
  %53 = load i32*, i32** %8, align 8
  %54 = load i32*, i32** %9, align 8
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  %57 = call i32 @ldns_rr_list_set_rr(i32* %53, i32* %54, i32 %55)
  br label %58

58:                                               ; preds = %52, %48, %32
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %5, align 4
  br label %15

62:                                               ; preds = %15
  %63 = load i32*, i32** %8, align 8
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @ldns_rr_list_set_rr_count(i32* %63, i32 %64)
  ret void
}

declare dso_local i32* @ldns_pkt_answer(i32*) #1

declare dso_local i32 @ldns_rr_list_rr_count(i32*) #1

declare dso_local i32* @ldns_rr_list_rr(i32*, i32) #1

declare dso_local i64 @ldns_rr_get_type(i32*) #1

declare dso_local i32 @ldns_rr_list_set_rr(i32*, i32*, i32) #1

declare dso_local i32 @ldns_rr_list_set_rr_count(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
