; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_mac_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_mac_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_hal_eth_adapter = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@ETH_1G_MAC_CMD_CFG_TX_ENA = common dso_local global i32 0, align 4
@ETH_1G_MAC_CMD_CFG_RX_ENA = common dso_local global i32 0, align 4
@ETH_10G_MAC_CMD_CFG_TX_ENA = common dso_local global i32 0, align 4
@ETH_10G_MAC_CMD_CFG_RX_ENA = common dso_local global i32 0, align 4
@ETH_MAC_GEN_V3_MAC_40G_COMMAND_CONFIG_ADDR = common dso_local global i32 0, align 4
@ETH_MAC_GEN_V3_MAC_40G_COMMAND_CONFIG_TX_ENA = common dso_local global i32 0, align 4
@ETH_MAC_GEN_V3_MAC_40G_COMMAND_CONFIG_RX_ENA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @al_eth_mac_stop(%struct.al_hal_eth_adapter* %0) #0 {
  %2 = alloca %struct.al_hal_eth_adapter*, align 8
  %3 = alloca i32, align 4
  store %struct.al_hal_eth_adapter* %0, %struct.al_hal_eth_adapter** %2, align 8
  %4 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = call i64 @AL_ETH_IS_1G_MAC(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %1
  %10 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* @ETH_1G_MAC_CMD_CFG_TX_ENA, align 4
  %16 = load i32, i32* @ETH_1G_MAC_CMD_CFG_RX_ENA, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @al_reg_write32_masked(i32* %14, i32 %17, i32 0)
  br label %56

19:                                               ; preds = %1
  %20 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %2, align 8
  %21 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @AL_ETH_IS_10G_MAC(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %2, align 8
  %27 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @AL_ETH_IS_25G_MAC(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %25, %19
  %32 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %2, align 8
  %33 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* @ETH_10G_MAC_CMD_CFG_TX_ENA, align 4
  %38 = load i32, i32* @ETH_10G_MAC_CMD_CFG_RX_ENA, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @al_reg_write32_masked(i32* %36, i32 %39, i32 0)
  br label %55

41:                                               ; preds = %25
  %42 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %2, align 8
  %43 = load i32, i32* @ETH_MAC_GEN_V3_MAC_40G_COMMAND_CONFIG_ADDR, align 4
  %44 = call i32 @al_eth_40g_mac_reg_read(%struct.al_hal_eth_adapter* %42, i32 %43)
  store i32 %44, i32* %3, align 4
  %45 = load i32, i32* @ETH_MAC_GEN_V3_MAC_40G_COMMAND_CONFIG_TX_ENA, align 4
  %46 = load i32, i32* @ETH_MAC_GEN_V3_MAC_40G_COMMAND_CONFIG_RX_ENA, align 4
  %47 = or i32 %45, %46
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %3, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %3, align 4
  %51 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %2, align 8
  %52 = load i32, i32* @ETH_MAC_GEN_V3_MAC_40G_COMMAND_CONFIG_ADDR, align 4
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @al_eth_40g_mac_reg_write(%struct.al_hal_eth_adapter* %51, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %41, %31
  br label %56

56:                                               ; preds = %55, %9
  ret i32 0
}

declare dso_local i64 @AL_ETH_IS_1G_MAC(i32) #1

declare dso_local i32 @al_reg_write32_masked(i32*, i32, i32) #1

declare dso_local i64 @AL_ETH_IS_10G_MAC(i32) #1

declare dso_local i64 @AL_ETH_IS_25G_MAC(i32) #1

declare dso_local i32 @al_eth_40g_mac_reg_read(%struct.al_hal_eth_adapter*, i32) #1

declare dso_local i32 @al_eth_40g_mac_reg_write(%struct.al_hal_eth_adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
