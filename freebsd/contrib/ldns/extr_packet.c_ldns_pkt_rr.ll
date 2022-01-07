; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_packet.c_ldns_pkt_rr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_packet.c_ldns_pkt_rr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ldns_pkt_rr(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %6, align 4
  switch i32 %9, label %59 [
    i32 128, label %10
    i32 132, label %15
    i32 129, label %20
    i32 133, label %25
    i32 131, label %30
    i32 130, label %35
  ]

10:                                               ; preds = %3
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @ldns_pkt_question(i32* %11)
  %13 = load i32*, i32** %7, align 8
  %14 = call i32 @ldns_rr_list_contains_rr(i32 %12, i32* %13)
  store i32 %14, i32* %4, align 4
  br label %61

15:                                               ; preds = %3
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @ldns_pkt_answer(i32* %16)
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 @ldns_rr_list_contains_rr(i32 %17, i32* %18)
  store i32 %19, i32* %4, align 4
  br label %61

20:                                               ; preds = %3
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @ldns_pkt_authority(i32* %21)
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 @ldns_rr_list_contains_rr(i32 %22, i32* %23)
  store i32 %24, i32* %4, align 4
  br label %61

25:                                               ; preds = %3
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @ldns_pkt_additional(i32* %26)
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @ldns_rr_list_contains_rr(i32 %27, i32* %28)
  store i32 %29, i32* %4, align 4
  br label %61

30:                                               ; preds = %3
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @ldns_pkt_question(i32* %31)
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @ldns_rr_list_contains_rr(i32 %32, i32* %33)
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %3, %30
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %56, label %38

38:                                               ; preds = %35
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @ldns_pkt_answer(i32* %39)
  %41 = load i32*, i32** %7, align 8
  %42 = call i32 @ldns_rr_list_contains_rr(i32 %40, i32* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %56, label %44

44:                                               ; preds = %38
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @ldns_pkt_authority(i32* %45)
  %47 = load i32*, i32** %7, align 8
  %48 = call i32 @ldns_rr_list_contains_rr(i32 %46, i32* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %44
  %51 = load i32*, i32** %5, align 8
  %52 = call i32 @ldns_pkt_additional(i32* %51)
  %53 = load i32*, i32** %7, align 8
  %54 = call i32 @ldns_rr_list_contains_rr(i32 %52, i32* %53)
  %55 = icmp ne i32 %54, 0
  br label %56

56:                                               ; preds = %50, %44, %38, %35
  %57 = phi i1 [ true, %44 ], [ true, %38 ], [ true, %35 ], [ %55, %50 ]
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %56, %3
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %59, %25, %20, %15, %10
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @ldns_rr_list_contains_rr(i32, i32*) #1

declare dso_local i32 @ldns_pkt_question(i32*) #1

declare dso_local i32 @ldns_pkt_answer(i32*) #1

declare dso_local i32 @ldns_pkt_authority(i32*) #1

declare dso_local i32 @ldns_pkt_additional(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
