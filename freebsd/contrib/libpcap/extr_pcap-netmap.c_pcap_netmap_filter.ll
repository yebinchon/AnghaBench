; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-netmap.c_pcap_netmap_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-netmap.c_pcap_netmap_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcap_pkthdr = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, %struct.pcap_netmap* }
%struct.TYPE_3__ = type { %struct.bpf_insn* }
%struct.bpf_insn = type { i32 }
%struct.pcap_netmap = type { i32, i32 (i32, %struct.pcap_pkthdr*, i32*)*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.pcap_pkthdr*, i32*)* @pcap_netmap_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcap_netmap_filter(i32* %0, %struct.pcap_pkthdr* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.pcap_pkthdr*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca %struct.pcap_netmap*, align 8
  %9 = alloca %struct.bpf_insn*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.pcap_pkthdr* %1, %struct.pcap_pkthdr** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = bitcast i32* %10 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %7, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load %struct.pcap_netmap*, %struct.pcap_netmap** %13, align 8
  store %struct.pcap_netmap* %14, %struct.pcap_netmap** %8, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.bpf_insn*, %struct.bpf_insn** %17, align 8
  store %struct.bpf_insn* %18, %struct.bpf_insn** %9, align 8
  %19 = load %struct.pcap_netmap*, %struct.pcap_netmap** %8, align 8
  %20 = getelementptr inbounds %struct.pcap_netmap, %struct.pcap_netmap* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 8
  %23 = load %struct.bpf_insn*, %struct.bpf_insn** %9, align 8
  %24 = icmp eq %struct.bpf_insn* %23, null
  br i1 %24, label %36, label %25

25:                                               ; preds = %3
  %26 = load %struct.bpf_insn*, %struct.bpf_insn** %9, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %5, align 8
  %29 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %5, align 8
  %32 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @bpf_filter(%struct.bpf_insn* %26, i32* %27, i32 %30, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %25, %3
  %37 = load %struct.pcap_netmap*, %struct.pcap_netmap** %8, align 8
  %38 = getelementptr inbounds %struct.pcap_netmap, %struct.pcap_netmap* %37, i32 0, i32 1
  %39 = load i32 (i32, %struct.pcap_pkthdr*, i32*)*, i32 (i32, %struct.pcap_pkthdr*, i32*)** %38, align 8
  %40 = load %struct.pcap_netmap*, %struct.pcap_netmap** %8, align 8
  %41 = getelementptr inbounds %struct.pcap_netmap, %struct.pcap_netmap* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %5, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 %39(i32 %42, %struct.pcap_pkthdr* %43, i32* %44)
  br label %46

46:                                               ; preds = %36, %25
  ret void
}

declare dso_local i64 @bpf_filter(%struct.bpf_insn*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
