; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_rx_generic_crc_table_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_rx_generic_crc_table_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_hal_eth_adapter = type { i64, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__, %struct.TYPE_6__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@AL_ETH_REV_ID_2 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"eth [%s]: enable rx_generic_crc\0A\00", align 1
@AL_ETH_RX_PROTOCOL_DETECT_ENTRIES_NUM = common dso_local global i32 0, align 4
@al_eth_generic_rx_crc_gcp = common dso_local global i32* null, align 8
@EC_GEN_V3_RX_COMP_DESC_W3_DEC_STAT_15_CRC_RES_SEL = common dso_local global i32 0, align 4
@EC_GEN_V3_RX_COMP_DESC_W3_DEC_STAT_14_L3_CKS_RES_SEL = common dso_local global i32 0, align 4
@EC_GEN_V3_RX_COMP_DESC_W3_DEC_STAT_13_L4_CKS_RES_SEL = common dso_local global i32 0, align 4
@EC_GEN_V3_RX_COMP_DESC_W0_L3_CKS_RES_SEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @al_eth_rx_generic_crc_table_init(%struct.al_hal_eth_adapter* %0) #0 {
  %2 = alloca %struct.al_hal_eth_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.al_hal_eth_adapter* %0, %struct.al_hal_eth_adapter** %2, align 8
  %5 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @AL_ETH_REV_ID_2, align 8
  %9 = icmp sgt i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @al_assert(i32 %10)
  %12 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @al_dbg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %2, align 8
  %17 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %16, i32 0, i32 1
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = call i32 @al_reg_write32(i32* %20, i32 0)
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %34, %1
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @AL_ETH_RX_PROTOCOL_DETECT_ENTRIES_NUM, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %22
  %27 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %2, align 8
  %28 = load i32, i32* %3, align 4
  %29 = load i32*, i32** @al_eth_generic_rx_crc_gcp, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = call i32 @al_eth_rx_generic_crc_table_entry_set(%struct.al_hal_eth_adapter* %27, i32 %28, i32* %32)
  br label %34

34:                                               ; preds = %26
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %22

37:                                               ; preds = %22
  %38 = load i32, i32* @EC_GEN_V3_RX_COMP_DESC_W3_DEC_STAT_15_CRC_RES_SEL, align 4
  %39 = load i32, i32* @EC_GEN_V3_RX_COMP_DESC_W3_DEC_STAT_14_L3_CKS_RES_SEL, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @EC_GEN_V3_RX_COMP_DESC_W3_DEC_STAT_13_L4_CKS_RES_SEL, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @EC_GEN_V3_RX_COMP_DESC_W0_L3_CKS_RES_SEL, align 4
  %44 = or i32 %42, %43
  store i32 %44, i32* %4, align 4
  %45 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %2, align 8
  %46 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %45, i32 0, i32 1
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @al_reg_write32_masked(i32* %49, i32 %50, i32 %51)
  ret i32 0
}

declare dso_local i32 @al_assert(i32) #1

declare dso_local i32 @al_dbg(i8*, i32) #1

declare dso_local i32 @al_reg_write32(i32*, i32) #1

declare dso_local i32 @al_eth_rx_generic_crc_table_entry_set(%struct.al_hal_eth_adapter*, i32, i32*) #1

declare dso_local i32 @al_reg_write32_masked(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
