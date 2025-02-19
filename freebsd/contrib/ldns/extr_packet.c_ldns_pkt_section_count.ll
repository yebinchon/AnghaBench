; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_packet.c_ldns_pkt_section_count.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_packet.c_ldns_pkt_section_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ldns_pkt_section_count(i32* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %40 [
    i32 128, label %7
    i32 132, label %10
    i32 129, label %13
    i32 133, label %16
    i32 131, label %19
    i32 130, label %31
  ]

7:                                                ; preds = %2
  %8 = load i32*, i32** %4, align 8
  %9 = call i64 @ldns_pkt_qdcount(i32* %8)
  store i64 %9, i64* %3, align 8
  br label %41

10:                                               ; preds = %2
  %11 = load i32*, i32** %4, align 8
  %12 = call i64 @ldns_pkt_ancount(i32* %11)
  store i64 %12, i64* %3, align 8
  br label %41

13:                                               ; preds = %2
  %14 = load i32*, i32** %4, align 8
  %15 = call i64 @ldns_pkt_nscount(i32* %14)
  store i64 %15, i64* %3, align 8
  br label %41

16:                                               ; preds = %2
  %17 = load i32*, i32** %4, align 8
  %18 = call i64 @ldns_pkt_arcount(i32* %17)
  store i64 %18, i64* %3, align 8
  br label %41

19:                                               ; preds = %2
  %20 = load i32*, i32** %4, align 8
  %21 = call i64 @ldns_pkt_qdcount(i32* %20)
  %22 = load i32*, i32** %4, align 8
  %23 = call i64 @ldns_pkt_ancount(i32* %22)
  %24 = add nsw i64 %21, %23
  %25 = load i32*, i32** %4, align 8
  %26 = call i64 @ldns_pkt_nscount(i32* %25)
  %27 = add nsw i64 %24, %26
  %28 = load i32*, i32** %4, align 8
  %29 = call i64 @ldns_pkt_arcount(i32* %28)
  %30 = add nsw i64 %27, %29
  store i64 %30, i64* %3, align 8
  br label %41

31:                                               ; preds = %2
  %32 = load i32*, i32** %4, align 8
  %33 = call i64 @ldns_pkt_ancount(i32* %32)
  %34 = load i32*, i32** %4, align 8
  %35 = call i64 @ldns_pkt_nscount(i32* %34)
  %36 = add nsw i64 %33, %35
  %37 = load i32*, i32** %4, align 8
  %38 = call i64 @ldns_pkt_arcount(i32* %37)
  %39 = add nsw i64 %36, %38
  store i64 %39, i64* %3, align 8
  br label %41

40:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %41

41:                                               ; preds = %40, %31, %19, %16, %13, %10, %7
  %42 = load i64, i64* %3, align 8
  ret i64 %42
}

declare dso_local i64 @ldns_pkt_qdcount(i32*) #1

declare dso_local i64 @ldns_pkt_ancount(i32*) #1

declare dso_local i64 @ldns_pkt_nscount(i32*) #1

declare dso_local i64 @ldns_pkt_arcount(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
