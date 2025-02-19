; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-rdmasniff.c_rdmasniff_post_recv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-rdmasniff.c_rdmasniff_post_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.pcap_rdmasniff* }
%struct.pcap_rdmasniff = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.ibv_sge = type { i64, i64, i32 }
%struct.ibv_recv_wr = type { i64, i32, i32*, %struct.ibv_sge* }

@RDMASNIFF_RECEIVE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i64)* @rdmasniff_post_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rdmasniff_post_recv(%struct.TYPE_5__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.pcap_rdmasniff*, align 8
  %6 = alloca %struct.ibv_sge, align 8
  %7 = alloca %struct.ibv_recv_wr, align 8
  %8 = alloca %struct.ibv_recv_wr*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %11 = load %struct.pcap_rdmasniff*, %struct.pcap_rdmasniff** %10, align 8
  store %struct.pcap_rdmasniff* %11, %struct.pcap_rdmasniff** %5, align 8
  %12 = load i64, i64* @RDMASNIFF_RECEIVE_SIZE, align 8
  %13 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %6, i32 0, i32 0
  store i64 %12, i64* %13, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @RDMASNIFF_RECEIVE_SIZE, align 8
  %18 = load i64, i64* %4, align 8
  %19 = mul i64 %17, %18
  %20 = add i64 %16, %19
  %21 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %6, i32 0, i32 1
  store i64 %20, i64* %21, align 8
  %22 = load %struct.pcap_rdmasniff*, %struct.pcap_rdmasniff** %5, align 8
  %23 = getelementptr inbounds %struct.pcap_rdmasniff, %struct.pcap_rdmasniff* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %6, i32 0, i32 2
  store i32 %26, i32* %27, align 8
  %28 = load i64, i64* %4, align 8
  %29 = getelementptr inbounds %struct.ibv_recv_wr, %struct.ibv_recv_wr* %7, i32 0, i32 0
  store i64 %28, i64* %29, align 8
  %30 = getelementptr inbounds %struct.ibv_recv_wr, %struct.ibv_recv_wr* %7, i32 0, i32 1
  store i32 1, i32* %30, align 8
  %31 = getelementptr inbounds %struct.ibv_recv_wr, %struct.ibv_recv_wr* %7, i32 0, i32 3
  store %struct.ibv_sge* %6, %struct.ibv_sge** %31, align 8
  %32 = getelementptr inbounds %struct.ibv_recv_wr, %struct.ibv_recv_wr* %7, i32 0, i32 2
  store i32* null, i32** %32, align 8
  %33 = load %struct.pcap_rdmasniff*, %struct.pcap_rdmasniff** %5, align 8
  %34 = getelementptr inbounds %struct.pcap_rdmasniff, %struct.pcap_rdmasniff* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @ibv_post_recv(i32 %35, %struct.ibv_recv_wr* %7, %struct.ibv_recv_wr** %8)
  ret void
}

declare dso_local i32 @ibv_post_recv(i32, %struct.ibv_recv_wr*, %struct.ibv_recv_wr**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
