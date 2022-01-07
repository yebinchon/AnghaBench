; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_sf-pcap.c_pcap_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_sf-pcap.c_pcap_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcap_pkthdr = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.pcap_sf_pkthdr = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pcap_dump(%struct.pcap_sf_pkthdr* %0, %struct.pcap_pkthdr* %1, %struct.pcap_sf_pkthdr* %2) #0 {
  %4 = alloca %struct.pcap_sf_pkthdr*, align 8
  %5 = alloca %struct.pcap_pkthdr*, align 8
  %6 = alloca %struct.pcap_sf_pkthdr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.pcap_sf_pkthdr, align 4
  store %struct.pcap_sf_pkthdr* %0, %struct.pcap_sf_pkthdr** %4, align 8
  store %struct.pcap_pkthdr* %1, %struct.pcap_pkthdr** %5, align 8
  store %struct.pcap_sf_pkthdr* %2, %struct.pcap_sf_pkthdr** %6, align 8
  %9 = load %struct.pcap_sf_pkthdr*, %struct.pcap_sf_pkthdr** %4, align 8
  %10 = bitcast %struct.pcap_sf_pkthdr* %9 to i32*
  store i32* %10, i32** %7, align 8
  %11 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %5, align 8
  %12 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.pcap_sf_pkthdr, %struct.pcap_sf_pkthdr* %8, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %5, align 8
  %18 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.pcap_sf_pkthdr, %struct.pcap_sf_pkthdr* %8, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %5, align 8
  %24 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.pcap_sf_pkthdr, %struct.pcap_sf_pkthdr* %8, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %5, align 8
  %28 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.pcap_sf_pkthdr, %struct.pcap_sf_pkthdr* %8, i32 0, i32 1
  store i32 %29, i32* %30, align 4
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @fwrite(%struct.pcap_sf_pkthdr* %8, i32 16, i32 1, i32* %31)
  %33 = load %struct.pcap_sf_pkthdr*, %struct.pcap_sf_pkthdr** %6, align 8
  %34 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %5, align 8
  %35 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @fwrite(%struct.pcap_sf_pkthdr* %33, i32 %36, i32 1, i32* %37)
  ret void
}

declare dso_local i32 @fwrite(%struct.pcap_sf_pkthdr*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
