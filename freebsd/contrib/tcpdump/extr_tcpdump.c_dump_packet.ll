; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_tcpdump.c_dump_packet.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_tcpdump.c_dump_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcap_pkthdr = type { i32 }

@packets_captured = common dso_local global i32 0, align 4
@infodelay = common dso_local global i32 0, align 4
@infoprint = common dso_local global i64 0, align 8
@Uflag = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.pcap_pkthdr*, i32*)* @dump_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_packet(i32* %0, %struct.pcap_pkthdr* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.pcap_pkthdr*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.pcap_pkthdr* %1, %struct.pcap_pkthdr** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32, i32* @packets_captured, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* @packets_captured, align 4
  %9 = load i32, i32* @infodelay, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* @infodelay, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %5, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @pcap_dump(i32* %11, %struct.pcap_pkthdr* %12, i32* %13)
  %15 = load i32, i32* @infodelay, align 4
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* @infodelay, align 4
  %17 = load i64, i64* @infoprint, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = call i32 @info(i32 0)
  br label %21

21:                                               ; preds = %19, %3
  ret void
}

declare dso_local i32 @pcap_dump(i32*, %struct.pcap_pkthdr*, i32*) #1

declare dso_local i32 @info(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
