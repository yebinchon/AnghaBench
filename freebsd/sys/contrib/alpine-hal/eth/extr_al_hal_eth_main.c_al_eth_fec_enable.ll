; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_fec_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_fec_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_hal_eth_adapter = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@AL_ETH_REV_ID_2 = common dso_local global i64 0, align 8
@ETH_MAC_GEN_V3_PCS_10G_LL_CFG_FEC_EN_RX = common dso_local global i32 0, align 4
@ETH_MAC_GEN_V3_PCS_10G_LL_CFG_FEC_EN_TX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @al_eth_fec_enable(%struct.al_hal_eth_adapter* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.al_hal_eth_adapter*, align 8
  %5 = alloca i64, align 8
  store %struct.al_hal_eth_adapter* %0, %struct.al_hal_eth_adapter** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %7 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @AL_ETH_REV_ID_2, align 8
  %10 = icmp sle i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %39

12:                                               ; preds = %2
  %13 = load i64, i64* %5, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %12
  %16 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %17 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* @ETH_MAC_GEN_V3_PCS_10G_LL_CFG_FEC_EN_RX, align 4
  %22 = load i32, i32* @ETH_MAC_GEN_V3_PCS_10G_LL_CFG_FEC_EN_TX, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @ETH_MAC_GEN_V3_PCS_10G_LL_CFG_FEC_EN_RX, align 4
  %25 = load i32, i32* @ETH_MAC_GEN_V3_PCS_10G_LL_CFG_FEC_EN_TX, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @al_reg_write32_masked(i32* %20, i32 %23, i32 %26)
  br label %38

28:                                               ; preds = %12
  %29 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %30 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* @ETH_MAC_GEN_V3_PCS_10G_LL_CFG_FEC_EN_RX, align 4
  %35 = load i32, i32* @ETH_MAC_GEN_V3_PCS_10G_LL_CFG_FEC_EN_TX, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @al_reg_write32_masked(i32* %33, i32 %36, i32 0)
  br label %38

38:                                               ; preds = %28, %15
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %11
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @al_reg_write32_masked(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
