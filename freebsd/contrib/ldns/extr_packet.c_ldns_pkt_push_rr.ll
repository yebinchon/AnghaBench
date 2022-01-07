; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_packet.c_ldns_pkt_push_rr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_packet.c_ldns_pkt_push_rr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ldns_pkt_push_rr(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %62 [
    i32 128, label %9
    i32 132, label %22
    i32 129, label %35
    i32 133, label %48
    i32 131, label %61
    i32 130, label %61
  ]

9:                                                ; preds = %3
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @ldns_pkt_question(i32* %10)
  %12 = load i32*, i32** %7, align 8
  %13 = call i32 @ldns_rr_list_push_rr(i32 %11, i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %9
  store i32 0, i32* %4, align 4
  br label %63

16:                                               ; preds = %9
  %17 = load i32*, i32** %5, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @ldns_pkt_qdcount(i32* %18)
  %20 = add nsw i32 %19, 1
  %21 = call i32 @ldns_pkt_set_qdcount(i32* %17, i32 %20)
  br label %62

22:                                               ; preds = %3
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @ldns_pkt_answer(i32* %23)
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @ldns_rr_list_push_rr(i32 %24, i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %63

29:                                               ; preds = %22
  %30 = load i32*, i32** %5, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @ldns_pkt_ancount(i32* %31)
  %33 = add nsw i32 %32, 1
  %34 = call i32 @ldns_pkt_set_ancount(i32* %30, i32 %33)
  br label %62

35:                                               ; preds = %3
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @ldns_pkt_authority(i32* %36)
  %38 = load i32*, i32** %7, align 8
  %39 = call i32 @ldns_rr_list_push_rr(i32 %37, i32* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %63

42:                                               ; preds = %35
  %43 = load i32*, i32** %5, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @ldns_pkt_nscount(i32* %44)
  %46 = add nsw i32 %45, 1
  %47 = call i32 @ldns_pkt_set_nscount(i32* %43, i32 %46)
  br label %62

48:                                               ; preds = %3
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @ldns_pkt_additional(i32* %49)
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 @ldns_rr_list_push_rr(i32 %50, i32* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %48
  store i32 0, i32* %4, align 4
  br label %63

55:                                               ; preds = %48
  %56 = load i32*, i32** %5, align 8
  %57 = load i32*, i32** %5, align 8
  %58 = call i32 @ldns_pkt_arcount(i32* %57)
  %59 = add nsw i32 %58, 1
  %60 = call i32 @ldns_pkt_set_arcount(i32* %56, i32 %59)
  br label %62

61:                                               ; preds = %3, %3
  br label %62

62:                                               ; preds = %3, %61, %55, %42, %29, %16
  store i32 1, i32* %4, align 4
  br label %63

63:                                               ; preds = %62, %54, %41, %28, %15
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @ldns_rr_list_push_rr(i32, i32*) #1

declare dso_local i32 @ldns_pkt_question(i32*) #1

declare dso_local i32 @ldns_pkt_set_qdcount(i32*, i32) #1

declare dso_local i32 @ldns_pkt_qdcount(i32*) #1

declare dso_local i32 @ldns_pkt_answer(i32*) #1

declare dso_local i32 @ldns_pkt_set_ancount(i32*, i32) #1

declare dso_local i32 @ldns_pkt_ancount(i32*) #1

declare dso_local i32 @ldns_pkt_authority(i32*) #1

declare dso_local i32 @ldns_pkt_set_nscount(i32*, i32) #1

declare dso_local i32 @ldns_pkt_nscount(i32*) #1

declare dso_local i32 @ldns_pkt_additional(i32*) #1

declare dso_local i32 @ldns_pkt_set_arcount(i32*, i32) #1

declare dso_local i32 @ldns_pkt_arcount(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
