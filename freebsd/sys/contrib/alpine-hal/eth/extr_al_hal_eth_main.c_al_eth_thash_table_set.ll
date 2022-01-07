; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_thash_table_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_thash_table_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_hal_eth_adapter = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@AL_ETH_RX_THASH_TABLE_SIZE = common dso_local global i64 0, align 8
@AL_ETH_THASH_UDMA_SHIFT = common dso_local global i64 0, align 8
@AL_ETH_THASH_UDMA_MASK = common dso_local global i64 0, align 8
@AL_ETH_THASH_Q_SHIFT = common dso_local global i64 0, align 8
@AL_ETH_THASH_Q_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @al_eth_thash_table_set(%struct.al_hal_eth_adapter* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.al_hal_eth_adapter*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.al_hal_eth_adapter* %0, %struct.al_hal_eth_adapter** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* @AL_ETH_RX_THASH_TABLE_SIZE, align 8
  %12 = icmp slt i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @al_assert(i32 %13)
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* @AL_ETH_THASH_UDMA_SHIFT, align 8
  %17 = shl i64 %15, %16
  %18 = load i64, i64* @AL_ETH_THASH_UDMA_MASK, align 8
  %19 = and i64 %17, %18
  store i64 %19, i64* %9, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* @AL_ETH_THASH_Q_SHIFT, align 8
  %22 = shl i64 %20, %21
  %23 = load i64, i64* @AL_ETH_THASH_Q_MASK, align 8
  %24 = and i64 %22, %23
  %25 = load i64, i64* %9, align 8
  %26 = or i64 %25, %24
  store i64 %26, i64* %9, align 8
  %27 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %5, align 8
  %28 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @al_reg_write32(i32* %31, i64 %32)
  %34 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %5, align 8
  %35 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %9, align 8
  %40 = call i32 @al_reg_write32(i32* %38, i64 %39)
  ret i32 0
}

declare dso_local i32 @al_assert(i32) #1

declare dso_local i32 @al_reg_write32(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
