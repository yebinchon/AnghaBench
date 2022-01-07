; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-bpf.c_pcap_cleanup_bpf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-bpf.c_pcap_cleanup_bpf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, %struct.pcap_bpf* }
%struct.pcap_bpf = type { i32, i32*, i32, i32*, i32*, i64 }

@AF_INET = common dso_local global i32 0, align 4
@AF_LOCAL = common dso_local global i32 0, align 4
@IFM_IEEE80211_MONITOR = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i32* null, align 8
@MUST_CLEAR_RFMON = common dso_local global i32 0, align 4
@MUST_DESTROY_USBUS = common dso_local global i32 0, align 4
@SIOCGIFMEDIA = common dso_local global i32 0, align 4
@SIOCIFDESTROY = common dso_local global i32 0, align 4
@SIOCSIFMEDIA = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @pcap_cleanup_bpf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcap_cleanup_bpf(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.pcap_bpf*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  %6 = load %struct.pcap_bpf*, %struct.pcap_bpf** %5, align 8
  store %struct.pcap_bpf* %6, %struct.pcap_bpf** %3, align 8
  %7 = load %struct.pcap_bpf*, %struct.pcap_bpf** %3, align 8
  %8 = getelementptr inbounds %struct.pcap_bpf, %struct.pcap_bpf* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %13 = call i32 @pcap_remove_from_pcaps_to_close(%struct.TYPE_5__* %12)
  %14 = load %struct.pcap_bpf*, %struct.pcap_bpf** %3, align 8
  %15 = getelementptr inbounds %struct.pcap_bpf, %struct.pcap_bpf* %14, i32 0, i32 0
  store i32 0, i32* %15, align 8
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.pcap_bpf*, %struct.pcap_bpf** %3, align 8
  %18 = getelementptr inbounds %struct.pcap_bpf, %struct.pcap_bpf* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load %struct.pcap_bpf*, %struct.pcap_bpf** %3, align 8
  %23 = getelementptr inbounds %struct.pcap_bpf, %struct.pcap_bpf* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @free(i32* %24)
  %26 = load %struct.pcap_bpf*, %struct.pcap_bpf** %3, align 8
  %27 = getelementptr inbounds %struct.pcap_bpf, %struct.pcap_bpf* %26, i32 0, i32 1
  store i32* null, i32** %27, align 8
  br label %28

28:                                               ; preds = %21, %16
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %30 = call i32 @pcap_cleanup_live_common(%struct.TYPE_5__* %29)
  ret void
}

declare dso_local i32 @pcap_remove_from_pcaps_to_close(%struct.TYPE_5__*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @pcap_cleanup_live_common(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
