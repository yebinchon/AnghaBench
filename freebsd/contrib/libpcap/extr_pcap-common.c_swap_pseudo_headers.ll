; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-common.c_swap_pseudo_headers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-common.c_swap_pseudo_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcap_pkthdr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @swap_pseudo_headers(i32 %0, %struct.pcap_pkthdr* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pcap_pkthdr*, align 8
  %6 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.pcap_pkthdr* %1, %struct.pcap_pkthdr** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %24 [
    i32 131, label %8
    i32 129, label %12
    i32 128, label %16
    i32 130, label %20
  ]

8:                                                ; preds = %3
  %9 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %5, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = call i32 @swap_linux_sll_header(%struct.pcap_pkthdr* %9, i32* %10)
  br label %24

12:                                               ; preds = %3
  %13 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %5, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @swap_linux_usb_header(%struct.pcap_pkthdr* %13, i32* %14, i32 0)
  br label %24

16:                                               ; preds = %3
  %17 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %5, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @swap_linux_usb_header(%struct.pcap_pkthdr* %17, i32* %18, i32 1)
  br label %24

20:                                               ; preds = %3
  %21 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %5, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @swap_nflog_header(%struct.pcap_pkthdr* %21, i32* %22)
  br label %24

24:                                               ; preds = %3, %20, %16, %12, %8
  ret void
}

declare dso_local i32 @swap_linux_sll_header(%struct.pcap_pkthdr*, i32*) #1

declare dso_local i32 @swap_linux_usb_header(%struct.pcap_pkthdr*, i32*, i32) #1

declare dso_local i32 @swap_nflog_header(%struct.pcap_pkthdr*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
