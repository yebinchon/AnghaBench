; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec.c_ldns_dnssec_pkt_has_rrsigs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec.c_ldns_dnssec_pkt_has_rrsigs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_RR_TYPE_RRSIG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ldns_dnssec_pkt_has_rrsigs(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 0, i64* %4, align 8
  br label %5

5:                                                ; preds = %20, %1
  %6 = load i64, i64* %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i64 @ldns_pkt_ancount(i32* %7)
  %9 = icmp ult i64 %6, %8
  br i1 %9, label %10, label %23

10:                                               ; preds = %5
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @ldns_pkt_answer(i32* %11)
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @ldns_rr_list_rr(i32 %12, i64 %13)
  %15 = call i64 @ldns_rr_get_type(i32 %14)
  %16 = load i64, i64* @LDNS_RR_TYPE_RRSIG, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  store i32 1, i32* %2, align 4
  br label %43

19:                                               ; preds = %10
  br label %20

20:                                               ; preds = %19
  %21 = load i64, i64* %4, align 8
  %22 = add i64 %21, 1
  store i64 %22, i64* %4, align 8
  br label %5

23:                                               ; preds = %5
  store i64 0, i64* %4, align 8
  br label %24

24:                                               ; preds = %39, %23
  %25 = load i64, i64* %4, align 8
  %26 = load i32*, i32** %3, align 8
  %27 = call i64 @ldns_pkt_nscount(i32* %26)
  %28 = icmp ult i64 %25, %27
  br i1 %28, label %29, label %42

29:                                               ; preds = %24
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @ldns_pkt_authority(i32* %30)
  %32 = load i64, i64* %4, align 8
  %33 = call i32 @ldns_rr_list_rr(i32 %31, i64 %32)
  %34 = call i64 @ldns_rr_get_type(i32 %33)
  %35 = load i64, i64* @LDNS_RR_TYPE_RRSIG, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  store i32 1, i32* %2, align 4
  br label %43

38:                                               ; preds = %29
  br label %39

39:                                               ; preds = %38
  %40 = load i64, i64* %4, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %4, align 8
  br label %24

42:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %37, %18
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i64 @ldns_pkt_ancount(i32*) #1

declare dso_local i64 @ldns_rr_get_type(i32) #1

declare dso_local i32 @ldns_rr_list_rr(i32, i64) #1

declare dso_local i32 @ldns_pkt_answer(i32*) #1

declare dso_local i64 @ldns_pkt_nscount(i32*) #1

declare dso_local i32 @ldns_pkt_authority(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
