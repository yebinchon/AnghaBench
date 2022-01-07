; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_filter_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_filter_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_hal_eth_adapter = type { %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.al_eth_filter_params = type { i32, i64, i64* }

@.str = private unnamed_addr constant [43 x i8] c"[%s]: unsupported filter options (0x%08x)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AL_TRUE = common dso_local global i64 0, align 8
@EC_RFW_OUT_CFG_DROP_EN = common dso_local global i32 0, align 4
@AL_ETH_RFW_FILTER_PROT_INDEX = common dso_local global i32 0, align 4
@AL_ETH_PROTOCOLS_NUM = common dso_local global i32 0, align 4
@EC_EPE_A_PROT_ACT_DROP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @al_eth_filter_config(%struct.al_hal_eth_adapter* %0, %struct.al_eth_filter_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.al_hal_eth_adapter*, align 8
  %5 = alloca %struct.al_eth_filter_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.al_hal_eth_adapter* %0, %struct.al_hal_eth_adapter** %4, align 8
  store %struct.al_eth_filter_params* %1, %struct.al_eth_filter_params** %5, align 8
  %8 = load %struct.al_eth_filter_params*, %struct.al_eth_filter_params** %5, align 8
  %9 = call i32 @al_assert(%struct.al_eth_filter_params* %8)
  %10 = load %struct.al_eth_filter_params*, %struct.al_eth_filter_params** %5, align 8
  %11 = getelementptr inbounds %struct.al_eth_filter_params, %struct.al_eth_filter_params* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %14 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @AL_ETH_RFW_FILTER_SUPPORTED(i32 %15)
  %17 = xor i32 %16, -1
  %18 = and i32 %12, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %2
  %21 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %22 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.al_eth_filter_params*, %struct.al_eth_filter_params** %5, align 8
  %25 = getelementptr inbounds %struct.al_eth_filter_params, %struct.al_eth_filter_params* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @al_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %26)
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %127

30:                                               ; preds = %2
  %31 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %32 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = call i32 @al_reg_read32(i32* %35)
  store i32 %36, i32* %6, align 4
  %37 = load %struct.al_eth_filter_params*, %struct.al_eth_filter_params** %5, align 8
  %38 = getelementptr inbounds %struct.al_eth_filter_params, %struct.al_eth_filter_params* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @AL_TRUE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %30
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @EC_RFW_OUT_CFG_DROP_EN, align 4
  %45 = call i32 @AL_REG_MASK_SET(i32 %43, i32 %44)
  br label %50

46:                                               ; preds = %30
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @EC_RFW_OUT_CFG_DROP_EN, align 4
  %49 = call i32 @AL_REG_MASK_CLEAR(i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %46, %42
  %51 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %52 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %51, i32 0, i32 0
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @al_reg_write32(i32* %55, i32 %56)
  %58 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %59 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %58, i32 0, i32 0
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %64 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @AL_ETH_RFW_FILTER_SUPPORTED(i32 %65)
  %67 = load %struct.al_eth_filter_params*, %struct.al_eth_filter_params** %5, align 8
  %68 = getelementptr inbounds %struct.al_eth_filter_params, %struct.al_eth_filter_params* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @al_reg_write32_masked(i32* %62, i32 %66, i32 %69)
  %71 = load %struct.al_eth_filter_params*, %struct.al_eth_filter_params** %5, align 8
  %72 = getelementptr inbounds %struct.al_eth_filter_params, %struct.al_eth_filter_params* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @AL_ETH_RFW_FILTER_PROT_INDEX, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %126

77:                                               ; preds = %50
  store i32 0, i32* %7, align 4
  br label %78

78:                                               ; preds = %122, %77
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @AL_ETH_PROTOCOLS_NUM, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %125

82:                                               ; preds = %78
  %83 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %84 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %83, i32 0, i32 0
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = call i32 @al_reg_read32(i32* %91)
  store i32 %92, i32* %6, align 4
  %93 = load %struct.al_eth_filter_params*, %struct.al_eth_filter_params** %5, align 8
  %94 = getelementptr inbounds %struct.al_eth_filter_params, %struct.al_eth_filter_params* %93, i32 0, i32 2
  %95 = load i64*, i64** %94, align 8
  %96 = load i32, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %95, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @AL_TRUE, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %82
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* @EC_EPE_A_PROT_ACT_DROP, align 4
  %105 = call i32 @AL_REG_MASK_SET(i32 %103, i32 %104)
  br label %110

106:                                              ; preds = %82
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* @EC_EPE_A_PROT_ACT_DROP, align 4
  %109 = call i32 @AL_REG_MASK_CLEAR(i32 %107, i32 %108)
  br label %110

110:                                              ; preds = %106, %102
  %111 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %112 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %111, i32 0, i32 0
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %114, align 8
  %116 = load i32, i32* %7, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i32, i32* %6, align 4
  %121 = call i32 @al_reg_write32(i32* %119, i32 %120)
  br label %122

122:                                              ; preds = %110
  %123 = load i32, i32* %7, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %7, align 4
  br label %78

125:                                              ; preds = %78
  br label %126

126:                                              ; preds = %125, %50
  store i32 0, i32* %3, align 4
  br label %127

127:                                              ; preds = %126, %20
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local i32 @al_assert(%struct.al_eth_filter_params*) #1

declare dso_local i32 @AL_ETH_RFW_FILTER_SUPPORTED(i32) #1

declare dso_local i32 @al_err(i8*, i32, i32) #1

declare dso_local i32 @al_reg_read32(i32*) #1

declare dso_local i32 @AL_REG_MASK_SET(i32, i32) #1

declare dso_local i32 @AL_REG_MASK_CLEAR(i32, i32) #1

declare dso_local i32 @al_reg_write32(i32*, i32) #1

declare dso_local i32 @al_reg_write32_masked(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
