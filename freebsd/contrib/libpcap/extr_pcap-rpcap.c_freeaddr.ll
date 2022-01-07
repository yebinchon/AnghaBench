; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-rpcap.c_freeaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-rpcap.c_freeaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcap_addr = type { %struct.pcap_addr*, %struct.pcap_addr*, %struct.pcap_addr*, %struct.pcap_addr* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcap_addr*)* @freeaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @freeaddr(%struct.pcap_addr* %0) #0 {
  %2 = alloca %struct.pcap_addr*, align 8
  store %struct.pcap_addr* %0, %struct.pcap_addr** %2, align 8
  %3 = load %struct.pcap_addr*, %struct.pcap_addr** %2, align 8
  %4 = getelementptr inbounds %struct.pcap_addr, %struct.pcap_addr* %3, i32 0, i32 3
  %5 = load %struct.pcap_addr*, %struct.pcap_addr** %4, align 8
  %6 = call i32 @free(%struct.pcap_addr* %5)
  %7 = load %struct.pcap_addr*, %struct.pcap_addr** %2, align 8
  %8 = getelementptr inbounds %struct.pcap_addr, %struct.pcap_addr* %7, i32 0, i32 2
  %9 = load %struct.pcap_addr*, %struct.pcap_addr** %8, align 8
  %10 = call i32 @free(%struct.pcap_addr* %9)
  %11 = load %struct.pcap_addr*, %struct.pcap_addr** %2, align 8
  %12 = getelementptr inbounds %struct.pcap_addr, %struct.pcap_addr* %11, i32 0, i32 1
  %13 = load %struct.pcap_addr*, %struct.pcap_addr** %12, align 8
  %14 = call i32 @free(%struct.pcap_addr* %13)
  %15 = load %struct.pcap_addr*, %struct.pcap_addr** %2, align 8
  %16 = getelementptr inbounds %struct.pcap_addr, %struct.pcap_addr* %15, i32 0, i32 0
  %17 = load %struct.pcap_addr*, %struct.pcap_addr** %16, align 8
  %18 = call i32 @free(%struct.pcap_addr* %17)
  %19 = load %struct.pcap_addr*, %struct.pcap_addr** %2, align 8
  %20 = call i32 @free(%struct.pcap_addr* %19)
  ret void
}

declare dso_local i32 @free(%struct.pcap_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
