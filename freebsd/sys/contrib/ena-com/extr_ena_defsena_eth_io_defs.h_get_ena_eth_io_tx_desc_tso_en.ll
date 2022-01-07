; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_defsena_eth_io_defs.h_get_ena_eth_io_tx_desc_tso_en.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_defsena_eth_io_defs.h_get_ena_eth_io_tx_desc_tso_en.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_eth_io_tx_desc = type { i32 }

@ENA_ETH_IO_TX_DESC_TSO_EN_MASK = common dso_local global i32 0, align 4
@ENA_ETH_IO_TX_DESC_TSO_EN_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ena_eth_io_tx_desc*)* @get_ena_eth_io_tx_desc_tso_en to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_ena_eth_io_tx_desc_tso_en(%struct.ena_eth_io_tx_desc* %0) #0 {
  %2 = alloca %struct.ena_eth_io_tx_desc*, align 8
  store %struct.ena_eth_io_tx_desc* %0, %struct.ena_eth_io_tx_desc** %2, align 8
  %3 = load %struct.ena_eth_io_tx_desc*, %struct.ena_eth_io_tx_desc** %2, align 8
  %4 = getelementptr inbounds %struct.ena_eth_io_tx_desc, %struct.ena_eth_io_tx_desc* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @ENA_ETH_IO_TX_DESC_TSO_EN_MASK, align 4
  %7 = and i32 %5, %6
  %8 = load i32, i32* @ENA_ETH_IO_TX_DESC_TSO_EN_SHIFT, align 4
  %9 = ashr i32 %7, %8
  ret i32 %9
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
