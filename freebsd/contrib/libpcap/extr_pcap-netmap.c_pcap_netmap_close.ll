; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-netmap.c_pcap_netmap_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-netmap.c_pcap_netmap_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.pcap_netmap* }
%struct.pcap_netmap = type { i64, %struct.nm_desc* }
%struct.nm_desc = type { i32 }

@SIOCGIFFLAGS = common dso_local global i32 0, align 4
@IFF_PPROMISC = common dso_local global i32 0, align 4
@SIOCSIFFLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @pcap_netmap_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcap_netmap_close(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.pcap_netmap*, align 8
  %4 = alloca %struct.nm_desc*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load %struct.pcap_netmap*, %struct.pcap_netmap** %7, align 8
  store %struct.pcap_netmap* %8, %struct.pcap_netmap** %3, align 8
  %9 = load %struct.pcap_netmap*, %struct.pcap_netmap** %3, align 8
  %10 = getelementptr inbounds %struct.pcap_netmap, %struct.pcap_netmap* %9, i32 0, i32 1
  %11 = load %struct.nm_desc*, %struct.nm_desc** %10, align 8
  store %struct.nm_desc* %11, %struct.nm_desc** %4, align 8
  store i32 0, i32* %5, align 4
  %12 = load %struct.pcap_netmap*, %struct.pcap_netmap** %3, align 8
  %13 = getelementptr inbounds %struct.pcap_netmap, %struct.pcap_netmap* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %33

16:                                               ; preds = %1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %18 = load i32, i32* @SIOCGIFFLAGS, align 4
  %19 = call i32 @pcap_netmap_ioctl(%struct.TYPE_5__* %17, i32 %18, i32* %5)
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @IFF_PPROMISC, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %16
  %25 = load i32, i32* @IFF_PPROMISC, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %5, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %30 = load i32, i32* @SIOCSIFFLAGS, align 4
  %31 = call i32 @pcap_netmap_ioctl(%struct.TYPE_5__* %29, i32 %30, i32* %5)
  br label %32

32:                                               ; preds = %24, %16
  br label %33

33:                                               ; preds = %32, %1
  %34 = load %struct.nm_desc*, %struct.nm_desc** %4, align 8
  %35 = call i32 @nm_close(%struct.nm_desc* %34)
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %37 = call i32 @pcap_cleanup_live_common(%struct.TYPE_5__* %36)
  ret void
}

declare dso_local i32 @pcap_netmap_ioctl(%struct.TYPE_5__*, i32, i32*) #1

declare dso_local i32 @nm_close(%struct.nm_desc*) #1

declare dso_local i32 @pcap_cleanup_live_common(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
