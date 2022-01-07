; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_rx_pkt_limit_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_rx_pkt_limit_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_hal_eth_adapter = type { i64, %struct.TYPE_12__*, i32, %struct.TYPE_8__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@AL_ETH_MAX_FRAME_LEN = common dso_local global i64 0, align 8
@AL_ETH_REV_ID_2 = common dso_local global i64 0, align 8
@ETH_MAC_GEN_V3_MAC_40G_FRM_LENGTH_ADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @al_eth_rx_pkt_limit_config(%struct.al_hal_eth_adapter* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.al_hal_eth_adapter*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.al_hal_eth_adapter* %0, %struct.al_hal_eth_adapter** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @AL_ETH_MAX_FRAME_LEN, align 8
  %9 = icmp sle i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @al_assert(i32 %10)
  %12 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %13 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %12, i32 0, i32 3
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @al_reg_write32(i32* %16, i64 %17)
  %19 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %20 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %19, i32 0, i32 3
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @al_reg_write32(i32* %23, i64 %24)
  %26 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %27 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @AL_ETH_REV_ID_2, align 8
  %30 = icmp sgt i64 %28, %29
  br i1 %30, label %31, label %46

31:                                               ; preds = %3
  %32 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %33 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %32, i32 0, i32 1
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @al_reg_write32(i32* %36, i64 %37)
  %39 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %40 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %39, i32 0, i32 1
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @al_reg_write32(i32* %43, i64 %44)
  br label %46

46:                                               ; preds = %31, %3
  %47 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %48 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @AL_ETH_IS_1G_MAC(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %46
  %53 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %54 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %53, i32 0, i32 1
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i64, i64* %6, align 8
  %59 = add nsw i64 %58, 16
  %60 = call i32 @al_reg_write32(i32* %57, i64 %59)
  br label %89

61:                                               ; preds = %46
  %62 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %63 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @AL_ETH_IS_10G_MAC(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %61
  %68 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %69 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i64 @AL_ETH_IS_25G_MAC(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %67, %61
  %74 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %75 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %74, i32 0, i32 1
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = load i64, i64* %6, align 8
  %80 = add nsw i64 %79, 16
  %81 = call i32 @al_reg_write32(i32* %78, i64 %80)
  br label %88

82:                                               ; preds = %67
  %83 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %84 = load i32, i32* @ETH_MAC_GEN_V3_MAC_40G_FRM_LENGTH_ADDR, align 4
  %85 = load i64, i64* %6, align 8
  %86 = add nsw i64 %85, 16
  %87 = call i32 @al_eth_40g_mac_reg_write(%struct.al_hal_eth_adapter* %83, i32 %84, i64 %86)
  br label %88

88:                                               ; preds = %82, %73
  br label %89

89:                                               ; preds = %88, %52
  ret i32 0
}

declare dso_local i32 @al_assert(i32) #1

declare dso_local i32 @al_reg_write32(i32*, i64) #1

declare dso_local i64 @AL_ETH_IS_1G_MAC(i32) #1

declare dso_local i64 @AL_ETH_IS_10G_MAC(i32) #1

declare dso_local i64 @AL_ETH_IS_25G_MAC(i32) #1

declare dso_local i32 @al_eth_40g_mac_reg_write(%struct.al_hal_eth_adapter*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
