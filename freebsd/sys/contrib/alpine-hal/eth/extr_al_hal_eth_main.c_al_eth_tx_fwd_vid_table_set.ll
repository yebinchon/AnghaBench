; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_tx_fwd_vid_table_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_tx_fwd_vid_table_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_hal_eth_adapter = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@AL_ETH_FWD_VID_TABLE_NUM = common dso_local global i64 0, align 8
@AL_ETH_TX_VLAN_TABLE_UDMA_MASK = common dso_local global i32 0, align 4
@AL_ETH_TX_VLAN_TABLE_FWD_TO_MAC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @al_eth_tx_fwd_vid_table_set(%struct.al_hal_eth_adapter* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.al_hal_eth_adapter*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.al_hal_eth_adapter* %0, %struct.al_hal_eth_adapter** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i64 0, i64* %9, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* @AL_ETH_FWD_VID_TABLE_NUM, align 8
  %12 = icmp slt i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @al_assert(i32 %13)
  %15 = load i64, i64* %9, align 8
  %16 = load i32, i32* @AL_ETH_TX_VLAN_TABLE_UDMA_MASK, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @AL_REG_FIELD_SET(i64 %15, i32 %16, i32 0, i32 %17)
  %19 = load i64, i64* %9, align 8
  %20 = load i32, i32* @AL_ETH_TX_VLAN_TABLE_FWD_TO_MAC, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @AL_REG_FIELD_SET(i64 %19, i32 %20, i32 4, i32 %21)
  %23 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %5, align 8
  %24 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @al_reg_write32(i32* %27, i64 %28)
  %30 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %5, align 8
  %31 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %9, align 8
  %36 = call i32 @al_reg_write32(i32* %34, i64 %35)
  ret i32 0
}

declare dso_local i32 @al_assert(i32) #1

declare dso_local i32 @AL_REG_FIELD_SET(i64, i32, i32, i32) #1

declare dso_local i32 @al_reg_write32(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
