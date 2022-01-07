; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-rpcap.c_pcap_setfilter_rpcap.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-rpcap.c_pcap_setfilter_rpcap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.pcap_rpcap* }
%struct.pcap_rpcap = type { i32 }
%struct.bpf_program = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, %struct.bpf_program*)* @pcap_setfilter_rpcap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcap_setfilter_rpcap(%struct.TYPE_5__* %0, %struct.bpf_program* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.bpf_program*, align 8
  %6 = alloca %struct.pcap_rpcap*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store %struct.bpf_program* %1, %struct.bpf_program** %5, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load %struct.pcap_rpcap*, %struct.pcap_rpcap** %8, align 8
  store %struct.pcap_rpcap* %9, %struct.pcap_rpcap** %6, align 8
  %10 = load %struct.pcap_rpcap*, %struct.pcap_rpcap** %6, align 8
  %11 = getelementptr inbounds %struct.pcap_rpcap, %struct.pcap_rpcap* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %2
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = load %struct.bpf_program*, %struct.bpf_program** %5, align 8
  %17 = call i32 @install_bpf_program(%struct.TYPE_5__* %15, %struct.bpf_program* %16)
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i32 -1, i32* %3, align 4
  br label %28

20:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %28

21:                                               ; preds = %2
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = load %struct.bpf_program*, %struct.bpf_program** %5, align 8
  %24 = call i64 @pcap_updatefilter_remote(%struct.TYPE_5__* %22, %struct.bpf_program* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 -1, i32* %3, align 4
  br label %28

27:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %27, %26, %20, %19
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @install_bpf_program(%struct.TYPE_5__*, %struct.bpf_program*) #1

declare dso_local i64 @pcap_updatefilter_remote(%struct.TYPE_5__*, %struct.bpf_program*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
