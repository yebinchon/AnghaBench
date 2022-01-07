; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_eth_com.c_ena_com_get_next_rx_cdesc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_eth_com.c_ena_com_get_next_rx_cdesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_eth_io_rx_cdesc_base = type { i32 }
%struct.ena_com_io_cq = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@ENA_ETH_IO_RX_CDESC_BASE_PHASE_MASK = common dso_local global i32 0, align 4
@ENA_ETH_IO_RX_CDESC_BASE_PHASE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ena_eth_io_rx_cdesc_base* (%struct.ena_com_io_cq*)* @ena_com_get_next_rx_cdesc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ena_eth_io_rx_cdesc_base* @ena_com_get_next_rx_cdesc(%struct.ena_com_io_cq* %0) #0 {
  %2 = alloca %struct.ena_eth_io_rx_cdesc_base*, align 8
  %3 = alloca %struct.ena_com_io_cq*, align 8
  %4 = alloca %struct.ena_eth_io_rx_cdesc_base*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ena_com_io_cq* %0, %struct.ena_com_io_cq** %3, align 8
  %8 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %3, align 8
  %9 = getelementptr inbounds %struct.ena_com_io_cq, %struct.ena_com_io_cq* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %3, align 8
  %12 = getelementptr inbounds %struct.ena_com_io_cq, %struct.ena_com_io_cq* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = sub nsw i32 %13, 1
  %15 = and i32 %10, %14
  store i32 %15, i32* %6, align 4
  %16 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %3, align 8
  %17 = getelementptr inbounds %struct.ena_com_io_cq, %struct.ena_com_io_cq* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %5, align 4
  %19 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %3, align 8
  %20 = getelementptr inbounds %struct.ena_com_io_cq, %struct.ena_com_io_cq* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %3, align 8
  %25 = getelementptr inbounds %struct.ena_com_io_cq, %struct.ena_com_io_cq* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %23, %26
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %22, %28
  %30 = inttoptr i64 %29 to %struct.ena_eth_io_rx_cdesc_base*
  store %struct.ena_eth_io_rx_cdesc_base* %30, %struct.ena_eth_io_rx_cdesc_base** %4, align 8
  %31 = load %struct.ena_eth_io_rx_cdesc_base*, %struct.ena_eth_io_rx_cdesc_base** %4, align 8
  %32 = getelementptr inbounds %struct.ena_eth_io_rx_cdesc_base, %struct.ena_eth_io_rx_cdesc_base* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @READ_ONCE32(i32 %33)
  %35 = load i32, i32* @ENA_ETH_IO_RX_CDESC_BASE_PHASE_MASK, align 4
  %36 = and i32 %34, %35
  %37 = load i32, i32* @ENA_ETH_IO_RX_CDESC_BASE_PHASE_SHIFT, align 4
  %38 = ashr i32 %36, %37
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %1
  store %struct.ena_eth_io_rx_cdesc_base* null, %struct.ena_eth_io_rx_cdesc_base** %2, align 8
  br label %46

43:                                               ; preds = %1
  %44 = call i32 (...) @dma_rmb()
  %45 = load %struct.ena_eth_io_rx_cdesc_base*, %struct.ena_eth_io_rx_cdesc_base** %4, align 8
  store %struct.ena_eth_io_rx_cdesc_base* %45, %struct.ena_eth_io_rx_cdesc_base** %2, align 8
  br label %46

46:                                               ; preds = %43, %42
  %47 = load %struct.ena_eth_io_rx_cdesc_base*, %struct.ena_eth_io_rx_cdesc_base** %2, align 8
  ret %struct.ena_eth_io_rx_cdesc_base* %47
}

declare dso_local i32 @READ_ONCE32(i32) #1

declare dso_local i32 @dma_rmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
