; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_packet.c_ldns_pkt_set_section_count.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_packet.c_ldns_pkt_set_section_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ldns_pkt_set_section_count(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %25 [
    i32 128, label %8
    i32 132, label %12
    i32 129, label %16
    i32 133, label %20
    i32 131, label %24
    i32 130, label %24
  ]

8:                                                ; preds = %3
  %9 = load i32*, i32** %4, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @ldns_pkt_set_qdcount(i32* %9, i32 %10)
  br label %25

12:                                               ; preds = %3
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @ldns_pkt_set_ancount(i32* %13, i32 %14)
  br label %25

16:                                               ; preds = %3
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @ldns_pkt_set_nscount(i32* %17, i32 %18)
  br label %25

20:                                               ; preds = %3
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @ldns_pkt_set_arcount(i32* %21, i32 %22)
  br label %25

24:                                               ; preds = %3, %3
  br label %25

25:                                               ; preds = %3, %24, %20, %16, %12, %8
  ret void
}

declare dso_local i32 @ldns_pkt_set_qdcount(i32*, i32) #1

declare dso_local i32 @ldns_pkt_set_ancount(i32*, i32) #1

declare dso_local i32 @ldns_pkt_set_nscount(i32*, i32) #1

declare dso_local i32 @ldns_pkt_set_arcount(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
