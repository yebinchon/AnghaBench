; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-ether.c_netanalyzer_if_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-ether.c_netanalyzer_if_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcap_pkthdr = type { i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"[|netanalyzer]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netanalyzer_if_print(i32* %0, %struct.pcap_pkthdr* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.pcap_pkthdr*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.pcap_pkthdr* %1, %struct.pcap_pkthdr** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %6, align 8
  %9 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp slt i32 %10, 4
  br i1 %11, label %17, label %12

12:                                               ; preds = %3
  %13 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %6, align 8
  %14 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %15, 4
  br i1 %16, label %17, label %23

17:                                               ; preds = %12, %3
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @ND_PRINT(i32* bitcast ([15 x i8]* @.str to i32*))
  %20 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %6, align 8
  %21 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %4, align 4
  br label %37

23:                                               ; preds = %12
  %24 = load i32*, i32** %5, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 4
  %27 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %6, align 8
  %28 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sub nsw i32 %29, 4
  %31 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %6, align 8
  %32 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = sub nsw i32 %33, 4
  %35 = call i32 @ether_print(i32* %24, i32* %26, i32 %30, i32 %34, i32* null, i32* null)
  %36 = add nsw i32 4, %35
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %23, %17
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @ether_print(i32*, i32*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
