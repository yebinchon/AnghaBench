; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_kr.c_al_eth_kr_an_write_adv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_kr.c_al_eth_kr_an_write_adv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_hal_eth_adapter = type { i32 }
%struct.al_eth_an_adv = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@AL_ETH_KR_AN_ADV1_SEL_FIELD_MASK = common dso_local global i32 0, align 4
@AL_ETH_KR_AN_ADV1_SEL_FIELD_SHIFT = common dso_local global i32 0, align 4
@AL_ETH_KR_AN_ADV1_ECHOED_NONCE_MASK = common dso_local global i32 0, align 4
@AL_ETH_KR_AN_ADV1_ECHOED_NONCE_SHIFT = common dso_local global i32 0, align 4
@AL_ETH_KR_AN_ADV1_CAPABILITY_MASK = common dso_local global i32 0, align 4
@AL_ETH_KR_AN_ADV1_CAPABILITY_SHIFT = common dso_local global i32 0, align 4
@AL_ETH_KR_AN_ADV1_REM_FAULT_SHIFT = common dso_local global i32 0, align 4
@AL_ETH_KR_AN_ADV1_ACK_SHIFT = common dso_local global i32 0, align 4
@AL_ETH_KR_AN_ADV1_NEXT_PAGE_SHIFT = common dso_local global i32 0, align 4
@AL_ETH_KR_AN_ADV0 = common dso_local global i32 0, align 4
@AL_ETH_AN_REGS = common dso_local global i32 0, align 4
@AL_ETH_AN__LT_LANE_0 = common dso_local global i32 0, align 4
@AL_ETH_KR_AN_ADV2_TX_NONCE_MASK = common dso_local global i32 0, align 4
@AL_ETH_KR_AN_ADV2_TX_NONCE_SHIFT = common dso_local global i32 0, align 4
@AL_ETH_KR_AN_ADV2_TECH_MASK = common dso_local global i32 0, align 4
@AL_ETH_KR_AN_ADV2_TECH_SHIFT = common dso_local global i32 0, align 4
@AL_ETH_KR_AN_ADV1 = common dso_local global i32 0, align 4
@AL_ETH_KR_AN_ADV3_TECH_MASK = common dso_local global i32 0, align 4
@AL_ETH_KR_AN_ADV3_TECH_SHIFT = common dso_local global i32 0, align 4
@AL_ETH_KR_AN_ADV3_FEC_MASK = common dso_local global i32 0, align 4
@AL_ETH_KR_AN_ADV3_FEC_SHIFT = common dso_local global i32 0, align 4
@AL_ETH_KR_AN_ADV2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.al_hal_eth_adapter*, %struct.al_eth_an_adv*)* @al_eth_kr_an_write_adv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @al_eth_kr_an_write_adv(%struct.al_hal_eth_adapter* %0, %struct.al_eth_an_adv* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.al_hal_eth_adapter*, align 8
  %5 = alloca %struct.al_eth_an_adv*, align 8
  %6 = alloca i64, align 8
  store %struct.al_hal_eth_adapter* %0, %struct.al_hal_eth_adapter** %4, align 8
  store %struct.al_eth_an_adv* %1, %struct.al_eth_an_adv** %5, align 8
  %7 = load %struct.al_eth_an_adv*, %struct.al_eth_an_adv** %5, align 8
  %8 = icmp eq %struct.al_eth_an_adv* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %97

10:                                               ; preds = %2
  store i64 0, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i32, i32* @AL_ETH_KR_AN_ADV1_SEL_FIELD_MASK, align 4
  %13 = load i32, i32* @AL_ETH_KR_AN_ADV1_SEL_FIELD_SHIFT, align 4
  %14 = load %struct.al_eth_an_adv*, %struct.al_eth_an_adv** %5, align 8
  %15 = getelementptr inbounds %struct.al_eth_an_adv, %struct.al_eth_an_adv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @AL_REG_FIELD_SET(i64 %11, i32 %12, i32 %13, i32 %16)
  %18 = load i64, i64* %6, align 8
  %19 = load i32, i32* @AL_ETH_KR_AN_ADV1_ECHOED_NONCE_MASK, align 4
  %20 = load i32, i32* @AL_ETH_KR_AN_ADV1_ECHOED_NONCE_SHIFT, align 4
  %21 = load %struct.al_eth_an_adv*, %struct.al_eth_an_adv** %5, align 8
  %22 = getelementptr inbounds %struct.al_eth_an_adv, %struct.al_eth_an_adv* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @AL_REG_FIELD_SET(i64 %18, i32 %19, i32 %20, i32 %23)
  %25 = load i64, i64* %6, align 8
  %26 = load i32, i32* @AL_ETH_KR_AN_ADV1_CAPABILITY_MASK, align 4
  %27 = load i32, i32* @AL_ETH_KR_AN_ADV1_CAPABILITY_SHIFT, align 4
  %28 = load %struct.al_eth_an_adv*, %struct.al_eth_an_adv** %5, align 8
  %29 = getelementptr inbounds %struct.al_eth_an_adv, %struct.al_eth_an_adv* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @AL_REG_FIELD_SET(i64 %25, i32 %26, i32 %27, i32 %30)
  %32 = load i64, i64* %6, align 8
  %33 = load i32, i32* @AL_ETH_KR_AN_ADV1_REM_FAULT_SHIFT, align 4
  %34 = load %struct.al_eth_an_adv*, %struct.al_eth_an_adv** %5, align 8
  %35 = getelementptr inbounds %struct.al_eth_an_adv, %struct.al_eth_an_adv* %34, i32 0, i32 8
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @AL_REG_BIT_VAL_SET(i64 %32, i32 %33, i32 %36)
  %38 = load i64, i64* %6, align 8
  %39 = load i32, i32* @AL_ETH_KR_AN_ADV1_ACK_SHIFT, align 4
  %40 = load %struct.al_eth_an_adv*, %struct.al_eth_an_adv** %5, align 8
  %41 = getelementptr inbounds %struct.al_eth_an_adv, %struct.al_eth_an_adv* %40, i32 0, i32 7
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @AL_REG_BIT_VAL_SET(i64 %38, i32 %39, i32 %42)
  %44 = load i64, i64* %6, align 8
  %45 = load i32, i32* @AL_ETH_KR_AN_ADV1_NEXT_PAGE_SHIFT, align 4
  %46 = load %struct.al_eth_an_adv*, %struct.al_eth_an_adv** %5, align 8
  %47 = getelementptr inbounds %struct.al_eth_an_adv, %struct.al_eth_an_adv* %46, i32 0, i32 6
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @AL_REG_BIT_VAL_SET(i64 %44, i32 %45, i32 %48)
  %50 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %51 = load i32, i32* @AL_ETH_KR_AN_ADV0, align 4
  %52 = load i32, i32* @AL_ETH_AN_REGS, align 4
  %53 = load i32, i32* @AL_ETH_AN__LT_LANE_0, align 4
  %54 = load i64, i64* %6, align 8
  %55 = call i32 @al_eth_an_lt_reg_write(%struct.al_hal_eth_adapter* %50, i32 %51, i32 %52, i32 %53, i64 %54)
  store i64 0, i64* %6, align 8
  %56 = load i64, i64* %6, align 8
  %57 = load i32, i32* @AL_ETH_KR_AN_ADV2_TX_NONCE_MASK, align 4
  %58 = load i32, i32* @AL_ETH_KR_AN_ADV2_TX_NONCE_SHIFT, align 4
  %59 = load %struct.al_eth_an_adv*, %struct.al_eth_an_adv** %5, align 8
  %60 = getelementptr inbounds %struct.al_eth_an_adv, %struct.al_eth_an_adv* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @AL_REG_FIELD_SET(i64 %56, i32 %57, i32 %58, i32 %61)
  %63 = load i64, i64* %6, align 8
  %64 = load i32, i32* @AL_ETH_KR_AN_ADV2_TECH_MASK, align 4
  %65 = load i32, i32* @AL_ETH_KR_AN_ADV2_TECH_SHIFT, align 4
  %66 = load %struct.al_eth_an_adv*, %struct.al_eth_an_adv** %5, align 8
  %67 = getelementptr inbounds %struct.al_eth_an_adv, %struct.al_eth_an_adv* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @AL_REG_FIELD_SET(i64 %63, i32 %64, i32 %65, i32 %68)
  %70 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %71 = load i32, i32* @AL_ETH_KR_AN_ADV1, align 4
  %72 = load i32, i32* @AL_ETH_AN_REGS, align 4
  %73 = load i32, i32* @AL_ETH_AN__LT_LANE_0, align 4
  %74 = load i64, i64* %6, align 8
  %75 = call i32 @al_eth_an_lt_reg_write(%struct.al_hal_eth_adapter* %70, i32 %71, i32 %72, i32 %73, i64 %74)
  store i64 0, i64* %6, align 8
  %76 = load i64, i64* %6, align 8
  %77 = load i32, i32* @AL_ETH_KR_AN_ADV3_TECH_MASK, align 4
  %78 = load i32, i32* @AL_ETH_KR_AN_ADV3_TECH_SHIFT, align 4
  %79 = load %struct.al_eth_an_adv*, %struct.al_eth_an_adv** %5, align 8
  %80 = getelementptr inbounds %struct.al_eth_an_adv, %struct.al_eth_an_adv* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = ashr i32 %81, 11
  %83 = call i32 @AL_REG_FIELD_SET(i64 %76, i32 %77, i32 %78, i32 %82)
  %84 = load i64, i64* %6, align 8
  %85 = load i32, i32* @AL_ETH_KR_AN_ADV3_FEC_MASK, align 4
  %86 = load i32, i32* @AL_ETH_KR_AN_ADV3_FEC_SHIFT, align 4
  %87 = load %struct.al_eth_an_adv*, %struct.al_eth_an_adv** %5, align 8
  %88 = getelementptr inbounds %struct.al_eth_an_adv, %struct.al_eth_an_adv* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @AL_REG_FIELD_SET(i64 %84, i32 %85, i32 %86, i32 %89)
  %91 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %92 = load i32, i32* @AL_ETH_KR_AN_ADV2, align 4
  %93 = load i32, i32* @AL_ETH_AN_REGS, align 4
  %94 = load i32, i32* @AL_ETH_AN__LT_LANE_0, align 4
  %95 = load i64, i64* %6, align 8
  %96 = call i32 @al_eth_an_lt_reg_write(%struct.al_hal_eth_adapter* %91, i32 %92, i32 %93, i32 %94, i64 %95)
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %10, %9
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @AL_REG_FIELD_SET(i64, i32, i32, i32) #1

declare dso_local i32 @AL_REG_BIT_VAL_SET(i64, i32, i32) #1

declare dso_local i32 @al_eth_an_lt_reg_write(%struct.al_hal_eth_adapter*, i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
