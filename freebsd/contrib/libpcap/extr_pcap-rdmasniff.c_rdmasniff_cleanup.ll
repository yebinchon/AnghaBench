; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-rdmasniff.c_rdmasniff_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-rdmasniff.c_rdmasniff_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.pcap_rdmasniff* }
%struct.pcap_rdmasniff = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @rdmasniff_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rdmasniff_cleanup(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca %struct.pcap_rdmasniff*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load %struct.pcap_rdmasniff*, %struct.pcap_rdmasniff** %5, align 8
  store %struct.pcap_rdmasniff* %6, %struct.pcap_rdmasniff** %3, align 8
  %7 = load %struct.pcap_rdmasniff*, %struct.pcap_rdmasniff** %3, align 8
  %8 = getelementptr inbounds %struct.pcap_rdmasniff, %struct.pcap_rdmasniff* %7, i32 0, i32 7
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @ibv_dereg_mr(i32 %9)
  %11 = load %struct.pcap_rdmasniff*, %struct.pcap_rdmasniff** %3, align 8
  %12 = getelementptr inbounds %struct.pcap_rdmasniff, %struct.pcap_rdmasniff* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @ibv_destroy_flow(i32 %13)
  %15 = load %struct.pcap_rdmasniff*, %struct.pcap_rdmasniff** %3, align 8
  %16 = getelementptr inbounds %struct.pcap_rdmasniff, %struct.pcap_rdmasniff* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ibv_destroy_qp(i32 %17)
  %19 = load %struct.pcap_rdmasniff*, %struct.pcap_rdmasniff** %3, align 8
  %20 = getelementptr inbounds %struct.pcap_rdmasniff, %struct.pcap_rdmasniff* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ibv_destroy_cq(i32 %21)
  %23 = load %struct.pcap_rdmasniff*, %struct.pcap_rdmasniff** %3, align 8
  %24 = getelementptr inbounds %struct.pcap_rdmasniff, %struct.pcap_rdmasniff* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ibv_dealloc_pd(i32 %25)
  %27 = load %struct.pcap_rdmasniff*, %struct.pcap_rdmasniff** %3, align 8
  %28 = getelementptr inbounds %struct.pcap_rdmasniff, %struct.pcap_rdmasniff* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ibv_destroy_comp_channel(i32 %29)
  %31 = load %struct.pcap_rdmasniff*, %struct.pcap_rdmasniff** %3, align 8
  %32 = getelementptr inbounds %struct.pcap_rdmasniff, %struct.pcap_rdmasniff* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ibv_close_device(i32 %33)
  %35 = load %struct.pcap_rdmasniff*, %struct.pcap_rdmasniff** %3, align 8
  %36 = getelementptr inbounds %struct.pcap_rdmasniff, %struct.pcap_rdmasniff* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @free(i32 %37)
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %40 = call i32 @pcap_cleanup_live_common(%struct.TYPE_4__* %39)
  ret void
}

declare dso_local i32 @ibv_dereg_mr(i32) #1

declare dso_local i32 @ibv_destroy_flow(i32) #1

declare dso_local i32 @ibv_destroy_qp(i32) #1

declare dso_local i32 @ibv_destroy_cq(i32) #1

declare dso_local i32 @ibv_dealloc_pd(i32) #1

declare dso_local i32 @ibv_destroy_comp_channel(i32) #1

declare dso_local i32 @ibv_close_device(i32) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @pcap_cleanup_live_common(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
