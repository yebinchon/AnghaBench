; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_eee_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_eee_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_hal_eth_adapter = type { i64, %struct.TYPE_10__*, %struct.TYPE_8__*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.al_eth_eee_params = type { i64, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [19 x i8] c"[%s]: config eee.\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"[%s]: disable eee.\0A\00", align 1
@ETH_MAC_KR_PCS_CFG_EEE_TIMER_VAL_MASK = common dso_local global i32 0, align 4
@ETH_MAC_KR_10_PCS_CFG_EEE_TIMER_VAL = common dso_local global i32 0, align 4
@ETH_MAC_KR_25_PCS_CFG_EEE_TIMER_VAL = common dso_local global i32 0, align 4
@ETH_MAC_KR_PCS_CFG_EEE_TIMER_VAL_SHIFT = common dso_local global i32 0, align 4
@AL_ETH_MAC_MODE_XLG_LL_40G = common dso_local global i64 0, align 8
@AL_ETH_MAC_MODE_XLG_LL_50G = common dso_local global i64 0, align 8
@ETH_MAC_GEN_V3_PCS_40G_LL_EEE_CFG_TIMER_VAL_MASK = common dso_local global i32 0, align 4
@ETH_MAC_XLG_40_PCS_CFG_EEE_TIMER_VAL = common dso_local global i32 0, align 4
@ETH_MAC_XLG_50_PCS_CFG_EEE_TIMER_VAL = common dso_local global i32 0, align 4
@ETH_MAC_GEN_V3_PCS_40G_LL_EEE_CFG_TIMER_VAL_SHIFT = common dso_local global i32 0, align 4
@ETH_MAC_GEN_V3_PCS_40G_EEE_CONTROL_ADDR = common dso_local global i32 0, align 4
@EC_EEE_CFG_E_MASK_EC_TMI_STOP = common dso_local global i32 0, align 4
@EC_EEE_CFG_E_MASK_MAC_EEE = common dso_local global i32 0, align 4
@EC_EEE_CFG_E_ENABLE = common dso_local global i32 0, align 4
@EC_EEE_CFG_E_USE_EC_TX_FIFO = common dso_local global i32 0, align 4
@EC_EEE_CFG_E_USE_EC_RX_FIFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @al_eth_eee_config(%struct.al_hal_eth_adapter* %0, %struct.al_eth_eee_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.al_hal_eth_adapter*, align 8
  %5 = alloca %struct.al_eth_eee_params*, align 8
  %6 = alloca i32, align 4
  store %struct.al_hal_eth_adapter* %0, %struct.al_hal_eth_adapter** %4, align 8
  store %struct.al_eth_eee_params* %1, %struct.al_eth_eee_params** %5, align 8
  %7 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %8 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @al_dbg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.al_eth_eee_params*, %struct.al_eth_eee_params** %5, align 8
  %12 = getelementptr inbounds %struct.al_eth_eee_params, %struct.al_eth_eee_params* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %2
  %16 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %17 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @al_dbg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %21 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %20, i32 0, i32 1
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = call i32 @al_reg_write32(i32* %24, i32 0)
  store i32 0, i32* %3, align 4
  br label %145

26:                                               ; preds = %2
  %27 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %28 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i64 @AL_ETH_IS_10G_MAC(i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %34 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i64 @AL_ETH_IS_25G_MAC(i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %59

38:                                               ; preds = %32, %26
  %39 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %40 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %39, i32 0, i32 2
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* @ETH_MAC_KR_PCS_CFG_EEE_TIMER_VAL_MASK, align 4
  %45 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %46 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i64 @AL_ETH_IS_10G_MAC(i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %38
  %51 = load i32, i32* @ETH_MAC_KR_10_PCS_CFG_EEE_TIMER_VAL, align 4
  br label %54

52:                                               ; preds = %38
  %53 = load i32, i32* @ETH_MAC_KR_25_PCS_CFG_EEE_TIMER_VAL, align 4
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i32 [ %51, %50 ], [ %53, %52 ]
  %56 = load i32, i32* @ETH_MAC_KR_PCS_CFG_EEE_TIMER_VAL_SHIFT, align 4
  %57 = shl i32 %55, %56
  %58 = call i32 @al_reg_write32_masked(i32* %43, i32 %44, i32 %57)
  br label %59

59:                                               ; preds = %54, %32
  %60 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %61 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @AL_ETH_MAC_MODE_XLG_LL_40G, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %71, label %65

65:                                               ; preds = %59
  %66 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %67 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @AL_ETH_MAC_MODE_XLG_LL_50G, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %101

71:                                               ; preds = %65, %59
  %72 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %73 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %72, i32 0, i32 2
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i32, i32* @ETH_MAC_GEN_V3_PCS_40G_LL_EEE_CFG_TIMER_VAL_MASK, align 4
  %78 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %79 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @AL_ETH_MAC_MODE_XLG_LL_40G, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %71
  %84 = load i32, i32* @ETH_MAC_XLG_40_PCS_CFG_EEE_TIMER_VAL, align 4
  br label %87

85:                                               ; preds = %71
  %86 = load i32, i32* @ETH_MAC_XLG_50_PCS_CFG_EEE_TIMER_VAL, align 4
  br label %87

87:                                               ; preds = %85, %83
  %88 = phi i32 [ %84, %83 ], [ %86, %85 ]
  %89 = load i32, i32* @ETH_MAC_GEN_V3_PCS_40G_LL_EEE_CFG_TIMER_VAL_SHIFT, align 4
  %90 = shl i32 %88, %89
  %91 = call i32 @al_reg_write32_masked(i32* %76, i32 %77, i32 %90)
  %92 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %93 = load i32, i32* @ETH_MAC_GEN_V3_PCS_40G_EEE_CONTROL_ADDR, align 4
  %94 = load %struct.al_eth_eee_params*, %struct.al_eth_eee_params** %5, align 8
  %95 = getelementptr inbounds %struct.al_eth_eee_params, %struct.al_eth_eee_params* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i32 1, i32 0
  %100 = call i32 @al_eth_40g_pcs_reg_write(%struct.al_hal_eth_adapter* %92, i32 %93, i32 %99)
  br label %101

101:                                              ; preds = %87, %65
  %102 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %103 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %102, i32 0, i32 1
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 3
  %107 = load %struct.al_eth_eee_params*, %struct.al_eth_eee_params** %5, align 8
  %108 = getelementptr inbounds %struct.al_eth_eee_params, %struct.al_eth_eee_params* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @al_reg_write32(i32* %106, i32 %109)
  %111 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %112 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %111, i32 0, i32 1
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 2
  %116 = load %struct.al_eth_eee_params*, %struct.al_eth_eee_params** %5, align 8
  %117 = getelementptr inbounds %struct.al_eth_eee_params, %struct.al_eth_eee_params* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @al_reg_write32(i32* %115, i32 %118)
  %120 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %121 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %120, i32 0, i32 1
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 1
  %125 = load %struct.al_eth_eee_params*, %struct.al_eth_eee_params** %5, align 8
  %126 = getelementptr inbounds %struct.al_eth_eee_params, %struct.al_eth_eee_params* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @al_reg_write32(i32* %124, i32 %127)
  %129 = load i32, i32* @EC_EEE_CFG_E_MASK_EC_TMI_STOP, align 4
  %130 = load i32, i32* @EC_EEE_CFG_E_MASK_MAC_EEE, align 4
  %131 = or i32 %129, %130
  %132 = load i32, i32* @EC_EEE_CFG_E_ENABLE, align 4
  %133 = or i32 %131, %132
  %134 = load i32, i32* @EC_EEE_CFG_E_USE_EC_TX_FIFO, align 4
  %135 = or i32 %133, %134
  %136 = load i32, i32* @EC_EEE_CFG_E_USE_EC_RX_FIFO, align 4
  %137 = or i32 %135, %136
  store i32 %137, i32* %6, align 4
  %138 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %139 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %138, i32 0, i32 1
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 0
  %143 = load i32, i32* %6, align 4
  %144 = call i32 @al_reg_write32(i32* %142, i32 %143)
  store i32 0, i32* %3, align 4
  br label %145

145:                                              ; preds = %101, %15
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local i32 @al_dbg(i8*, i32) #1

declare dso_local i32 @al_reg_write32(i32*, i32) #1

declare dso_local i64 @AL_ETH_IS_10G_MAC(i64) #1

declare dso_local i64 @AL_ETH_IS_25G_MAC(i64) #1

declare dso_local i32 @al_reg_write32_masked(i32*, i32, i32) #1

declare dso_local i32 @al_eth_40g_pcs_reg_write(%struct.al_hal_eth_adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
