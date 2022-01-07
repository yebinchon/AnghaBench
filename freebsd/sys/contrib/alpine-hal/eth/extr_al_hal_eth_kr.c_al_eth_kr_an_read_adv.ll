; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_kr.c_al_eth_kr_an_read_adv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_kr.c_al_eth_kr_an_read_adv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_hal_eth_adapter = type { i32 }
%struct.al_eth_an_adv = type { i32, i32, i32, i32, i32, i32, i8*, i8*, i8* }

@AL_ETH_KR_AN_REM_ADV0 = common dso_local global i32 0, align 4
@AL_ETH_AN_REGS = common dso_local global i32 0, align 4
@AL_ETH_AN__LT_LANE_0 = common dso_local global i32 0, align 4
@AL_ETH_KR_AN_ADV1_SEL_FIELD_MASK = common dso_local global i32 0, align 4
@AL_ETH_KR_AN_ADV1_SEL_FIELD_SHIFT = common dso_local global i32 0, align 4
@AL_ETH_KR_AN_ADV1_ECHOED_NONCE_MASK = common dso_local global i32 0, align 4
@AL_ETH_KR_AN_ADV1_ECHOED_NONCE_SHIFT = common dso_local global i32 0, align 4
@AL_ETH_KR_AN_ADV1_CAPABILITY_MASK = common dso_local global i32 0, align 4
@AL_ETH_KR_AN_ADV1_CAPABILITY_SHIFT = common dso_local global i32 0, align 4
@AL_ETH_KR_AN_ADV1_REM_FAULT_SHIFT = common dso_local global i32 0, align 4
@AL_ETH_KR_AN_ADV1_ACK_SHIFT = common dso_local global i32 0, align 4
@AL_ETH_KR_AN_ADV1_NEXT_PAGE_SHIFT = common dso_local global i32 0, align 4
@AL_ETH_KR_AN_REM_ADV1 = common dso_local global i32 0, align 4
@AL_ETH_KR_AN_ADV2_TX_NONCE_MASK = common dso_local global i32 0, align 4
@AL_ETH_KR_AN_ADV2_TX_NONCE_SHIFT = common dso_local global i32 0, align 4
@AL_ETH_KR_AN_ADV2_TECH_MASK = common dso_local global i32 0, align 4
@AL_ETH_KR_AN_ADV2_TECH_SHIFT = common dso_local global i32 0, align 4
@AL_ETH_KR_AN_REM_ADV2 = common dso_local global i32 0, align 4
@AL_ETH_KR_AN_ADV3_TECH_MASK = common dso_local global i32 0, align 4
@AL_ETH_KR_AN_ADV3_TECH_SHIFT = common dso_local global i32 0, align 4
@AL_ETH_KR_AN_ADV3_FEC_MASK = common dso_local global i32 0, align 4
@AL_ETH_KR_AN_ADV3_FEC_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @al_eth_kr_an_read_adv(%struct.al_hal_eth_adapter* %0, %struct.al_eth_an_adv* %1) #0 {
  %3 = alloca %struct.al_hal_eth_adapter*, align 8
  %4 = alloca %struct.al_eth_an_adv*, align 8
  %5 = alloca i32, align 4
  store %struct.al_hal_eth_adapter* %0, %struct.al_hal_eth_adapter** %3, align 8
  store %struct.al_eth_an_adv* %1, %struct.al_eth_an_adv** %4, align 8
  %6 = load %struct.al_eth_an_adv*, %struct.al_eth_an_adv** %4, align 8
  %7 = icmp ne %struct.al_eth_an_adv* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @al_assert(i32 %8)
  %10 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %11 = load i32, i32* @AL_ETH_KR_AN_REM_ADV0, align 4
  %12 = load i32, i32* @AL_ETH_AN_REGS, align 4
  %13 = load i32, i32* @AL_ETH_AN__LT_LANE_0, align 4
  %14 = call i32 @al_eth_an_lt_reg_read(%struct.al_hal_eth_adapter* %10, i32 %11, i32 %12, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @AL_ETH_KR_AN_ADV1_SEL_FIELD_MASK, align 4
  %17 = load i32, i32* @AL_ETH_KR_AN_ADV1_SEL_FIELD_SHIFT, align 4
  %18 = call i32 @AL_REG_FIELD_GET(i32 %15, i32 %16, i32 %17)
  %19 = load %struct.al_eth_an_adv*, %struct.al_eth_an_adv** %4, align 8
  %20 = getelementptr inbounds %struct.al_eth_an_adv, %struct.al_eth_an_adv* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @AL_ETH_KR_AN_ADV1_ECHOED_NONCE_MASK, align 4
  %23 = load i32, i32* @AL_ETH_KR_AN_ADV1_ECHOED_NONCE_SHIFT, align 4
  %24 = call i32 @AL_REG_FIELD_GET(i32 %21, i32 %22, i32 %23)
  %25 = load %struct.al_eth_an_adv*, %struct.al_eth_an_adv** %4, align 8
  %26 = getelementptr inbounds %struct.al_eth_an_adv, %struct.al_eth_an_adv* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @AL_ETH_KR_AN_ADV1_CAPABILITY_MASK, align 4
  %29 = load i32, i32* @AL_ETH_KR_AN_ADV1_CAPABILITY_SHIFT, align 4
  %30 = call i32 @AL_REG_FIELD_GET(i32 %27, i32 %28, i32 %29)
  %31 = load %struct.al_eth_an_adv*, %struct.al_eth_an_adv** %4, align 8
  %32 = getelementptr inbounds %struct.al_eth_an_adv, %struct.al_eth_an_adv* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @AL_ETH_KR_AN_ADV1_REM_FAULT_SHIFT, align 4
  %35 = call i8* @AL_REG_BIT_GET(i32 %33, i32 %34)
  %36 = load %struct.al_eth_an_adv*, %struct.al_eth_an_adv** %4, align 8
  %37 = getelementptr inbounds %struct.al_eth_an_adv, %struct.al_eth_an_adv* %36, i32 0, i32 8
  store i8* %35, i8** %37, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @AL_ETH_KR_AN_ADV1_ACK_SHIFT, align 4
  %40 = call i8* @AL_REG_BIT_GET(i32 %38, i32 %39)
  %41 = load %struct.al_eth_an_adv*, %struct.al_eth_an_adv** %4, align 8
  %42 = getelementptr inbounds %struct.al_eth_an_adv, %struct.al_eth_an_adv* %41, i32 0, i32 7
  store i8* %40, i8** %42, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @AL_ETH_KR_AN_ADV1_NEXT_PAGE_SHIFT, align 4
  %45 = call i8* @AL_REG_BIT_GET(i32 %43, i32 %44)
  %46 = load %struct.al_eth_an_adv*, %struct.al_eth_an_adv** %4, align 8
  %47 = getelementptr inbounds %struct.al_eth_an_adv, %struct.al_eth_an_adv* %46, i32 0, i32 6
  store i8* %45, i8** %47, align 8
  %48 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %49 = load i32, i32* @AL_ETH_KR_AN_REM_ADV1, align 4
  %50 = load i32, i32* @AL_ETH_AN_REGS, align 4
  %51 = load i32, i32* @AL_ETH_AN__LT_LANE_0, align 4
  %52 = call i32 @al_eth_an_lt_reg_read(%struct.al_hal_eth_adapter* %48, i32 %49, i32 %50, i32 %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @AL_ETH_KR_AN_ADV2_TX_NONCE_MASK, align 4
  %55 = load i32, i32* @AL_ETH_KR_AN_ADV2_TX_NONCE_SHIFT, align 4
  %56 = call i32 @AL_REG_FIELD_GET(i32 %53, i32 %54, i32 %55)
  %57 = load %struct.al_eth_an_adv*, %struct.al_eth_an_adv** %4, align 8
  %58 = getelementptr inbounds %struct.al_eth_an_adv, %struct.al_eth_an_adv* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @AL_ETH_KR_AN_ADV2_TECH_MASK, align 4
  %61 = load i32, i32* @AL_ETH_KR_AN_ADV2_TECH_SHIFT, align 4
  %62 = call i32 @AL_REG_FIELD_GET(i32 %59, i32 %60, i32 %61)
  %63 = load %struct.al_eth_an_adv*, %struct.al_eth_an_adv** %4, align 8
  %64 = getelementptr inbounds %struct.al_eth_an_adv, %struct.al_eth_an_adv* %63, i32 0, i32 4
  store i32 %62, i32* %64, align 8
  %65 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %66 = load i32, i32* @AL_ETH_KR_AN_REM_ADV2, align 4
  %67 = load i32, i32* @AL_ETH_AN_REGS, align 4
  %68 = load i32, i32* @AL_ETH_AN__LT_LANE_0, align 4
  %69 = call i32 @al_eth_an_lt_reg_read(%struct.al_hal_eth_adapter* %65, i32 %66, i32 %67, i32 %68)
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @AL_ETH_KR_AN_ADV3_TECH_MASK, align 4
  %72 = load i32, i32* @AL_ETH_KR_AN_ADV3_TECH_SHIFT, align 4
  %73 = call i32 @AL_REG_FIELD_GET(i32 %70, i32 %71, i32 %72)
  %74 = shl i32 %73, 11
  %75 = load %struct.al_eth_an_adv*, %struct.al_eth_an_adv** %4, align 8
  %76 = getelementptr inbounds %struct.al_eth_an_adv, %struct.al_eth_an_adv* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 8
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* @AL_ETH_KR_AN_ADV3_FEC_MASK, align 4
  %81 = load i32, i32* @AL_ETH_KR_AN_ADV3_FEC_SHIFT, align 4
  %82 = call i32 @AL_REG_FIELD_GET(i32 %79, i32 %80, i32 %81)
  %83 = load %struct.al_eth_an_adv*, %struct.al_eth_an_adv** %4, align 8
  %84 = getelementptr inbounds %struct.al_eth_an_adv, %struct.al_eth_an_adv* %83, i32 0, i32 5
  store i32 %82, i32* %84, align 4
  ret void
}

declare dso_local i32 @al_assert(i32) #1

declare dso_local i32 @al_eth_an_lt_reg_read(%struct.al_hal_eth_adapter*, i32, i32, i32) #1

declare dso_local i32 @AL_REG_FIELD_GET(i32, i32, i32) #1

declare dso_local i8* @AL_REG_BIT_GET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
