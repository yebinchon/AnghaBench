; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_packet.c_ldns_pkt_get_section_clone.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_packet.c_ldns_pkt_get_section_clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ldns_pkt_get_section_clone(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %29 [
    i32 128, label %7
    i32 132, label %11
    i32 129, label %15
    i32 133, label %19
    i32 131, label %23
    i32 130, label %26
  ]

7:                                                ; preds = %2
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 @ldns_pkt_question(i32* %8)
  %10 = call i32* @ldns_rr_list_clone(i32 %9)
  store i32* %10, i32** %3, align 8
  br label %30

11:                                               ; preds = %2
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @ldns_pkt_answer(i32* %12)
  %14 = call i32* @ldns_rr_list_clone(i32 %13)
  store i32* %14, i32** %3, align 8
  br label %30

15:                                               ; preds = %2
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @ldns_pkt_authority(i32* %16)
  %18 = call i32* @ldns_rr_list_clone(i32 %17)
  store i32* %18, i32** %3, align 8
  br label %30

19:                                               ; preds = %2
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @ldns_pkt_additional(i32* %20)
  %22 = call i32* @ldns_rr_list_clone(i32 %21)
  store i32* %22, i32** %3, align 8
  br label %30

23:                                               ; preds = %2
  %24 = load i32*, i32** %4, align 8
  %25 = call i32* @ldns_pkt_all(i32* %24)
  store i32* %25, i32** %3, align 8
  br label %30

26:                                               ; preds = %2
  %27 = load i32*, i32** %4, align 8
  %28 = call i32* @ldns_pkt_all_noquestion(i32* %27)
  store i32* %28, i32** %3, align 8
  br label %30

29:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %30

30:                                               ; preds = %29, %26, %23, %19, %15, %11, %7
  %31 = load i32*, i32** %3, align 8
  ret i32* %31
}

declare dso_local i32* @ldns_rr_list_clone(i32) #1

declare dso_local i32 @ldns_pkt_question(i32*) #1

declare dso_local i32 @ldns_pkt_answer(i32*) #1

declare dso_local i32 @ldns_pkt_authority(i32*) #1

declare dso_local i32 @ldns_pkt_additional(i32*) #1

declare dso_local i32* @ldns_pkt_all(i32*) #1

declare dso_local i32* @ldns_pkt_all_noquestion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
