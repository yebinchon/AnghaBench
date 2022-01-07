; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_kr.c_al_eth_kr_next_page_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_kr.c_al_eth_kr_next_page_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_hal_eth_adapter = type { i32 }
%struct.al_eth_an_np = type { i32, i32, i32, i32, i32, i32, i32 }

@AL_ETH_KR_AN_NP_ADV1_DATA1_MASK = common dso_local global i32 0, align 4
@AL_ETH_KR_AN_NP_ADV1_DATA1_SHIFT = common dso_local global i32 0, align 4
@AL_ETH_KR_AN_NP_ADV1_TOGGLE_MASK = common dso_local global i32 0, align 4
@AL_ETH_KR_AN_NP_ADV1_TOGGLE_SHIFT = common dso_local global i32 0, align 4
@AL_ETH_KR_AN_NP_ADV1_ACK2_MASK = common dso_local global i32 0, align 4
@AL_ETH_KR_AN_NP_ADV1_ACK2_SHIFT = common dso_local global i32 0, align 4
@AL_ETH_KR_AN_NP_ADV1_MSG_PAGE_MASK = common dso_local global i32 0, align 4
@AL_ETH_KR_AN_NP_ADV1_MSG_PAGE_SHIFT = common dso_local global i32 0, align 4
@AL_ETH_KR_AN_NP_ADV1_NP_MASK = common dso_local global i32 0, align 4
@AL_ETH_KR_AN_NP_ADV1_NP_SHIFT = common dso_local global i32 0, align 4
@AL_ETH_KR_AN_XNP_ADV0 = common dso_local global i32 0, align 4
@AL_ETH_AN_REGS = common dso_local global i32 0, align 4
@AL_ETH_AN__LT_LANE_0 = common dso_local global i32 0, align 4
@AL_ETH_KR_AN_XNP_ADV1 = common dso_local global i32 0, align 4
@AL_ETH_KR_AN_XNP_ADV2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @al_eth_kr_next_page_write(%struct.al_hal_eth_adapter* %0, %struct.al_eth_an_np* %1) #0 {
  %3 = alloca %struct.al_hal_eth_adapter*, align 8
  %4 = alloca %struct.al_eth_an_np*, align 8
  %5 = alloca i32, align 4
  store %struct.al_hal_eth_adapter* %0, %struct.al_hal_eth_adapter** %3, align 8
  store %struct.al_eth_an_np* %1, %struct.al_eth_an_np** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @AL_ETH_KR_AN_NP_ADV1_DATA1_MASK, align 4
  %8 = load i32, i32* @AL_ETH_KR_AN_NP_ADV1_DATA1_SHIFT, align 4
  %9 = load %struct.al_eth_an_np*, %struct.al_eth_an_np** %4, align 8
  %10 = getelementptr inbounds %struct.al_eth_an_np, %struct.al_eth_an_np* %9, i32 0, i32 6
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @AL_REG_FIELD_SET(i32 %6, i32 %7, i32 %8, i32 %11)
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @AL_ETH_KR_AN_NP_ADV1_TOGGLE_MASK, align 4
  %15 = load i32, i32* @AL_ETH_KR_AN_NP_ADV1_TOGGLE_SHIFT, align 4
  %16 = load %struct.al_eth_an_np*, %struct.al_eth_an_np** %4, align 8
  %17 = getelementptr inbounds %struct.al_eth_an_np, %struct.al_eth_an_np* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @AL_REG_FIELD_SET(i32 %13, i32 %14, i32 %15, i32 %18)
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @AL_ETH_KR_AN_NP_ADV1_ACK2_MASK, align 4
  %22 = load i32, i32* @AL_ETH_KR_AN_NP_ADV1_ACK2_SHIFT, align 4
  %23 = load %struct.al_eth_an_np*, %struct.al_eth_an_np** %4, align 8
  %24 = getelementptr inbounds %struct.al_eth_an_np, %struct.al_eth_an_np* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @AL_REG_FIELD_SET(i32 %20, i32 %21, i32 %22, i32 %25)
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @AL_ETH_KR_AN_NP_ADV1_MSG_PAGE_MASK, align 4
  %29 = load i32, i32* @AL_ETH_KR_AN_NP_ADV1_MSG_PAGE_SHIFT, align 4
  %30 = load %struct.al_eth_an_np*, %struct.al_eth_an_np** %4, align 8
  %31 = getelementptr inbounds %struct.al_eth_an_np, %struct.al_eth_an_np* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @AL_REG_FIELD_SET(i32 %27, i32 %28, i32 %29, i32 %32)
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @AL_ETH_KR_AN_NP_ADV1_NP_MASK, align 4
  %36 = load i32, i32* @AL_ETH_KR_AN_NP_ADV1_NP_SHIFT, align 4
  %37 = load %struct.al_eth_an_np*, %struct.al_eth_an_np** %4, align 8
  %38 = getelementptr inbounds %struct.al_eth_an_np, %struct.al_eth_an_np* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @AL_REG_FIELD_SET(i32 %34, i32 %35, i32 %36, i32 %39)
  %41 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %42 = load i32, i32* @AL_ETH_KR_AN_XNP_ADV0, align 4
  %43 = load i32, i32* @AL_ETH_AN_REGS, align 4
  %44 = load i32, i32* @AL_ETH_AN__LT_LANE_0, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @al_eth_an_lt_reg_write(%struct.al_hal_eth_adapter* %41, i32 %42, i32 %43, i32 %44, i32 %45)
  %47 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %48 = load i32, i32* @AL_ETH_KR_AN_XNP_ADV1, align 4
  %49 = load i32, i32* @AL_ETH_AN_REGS, align 4
  %50 = load i32, i32* @AL_ETH_AN__LT_LANE_0, align 4
  %51 = load %struct.al_eth_an_np*, %struct.al_eth_an_np** %4, align 8
  %52 = getelementptr inbounds %struct.al_eth_an_np, %struct.al_eth_an_np* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @al_eth_an_lt_reg_write(%struct.al_hal_eth_adapter* %47, i32 %48, i32 %49, i32 %50, i32 %53)
  %55 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %56 = load i32, i32* @AL_ETH_KR_AN_XNP_ADV2, align 4
  %57 = load i32, i32* @AL_ETH_AN_REGS, align 4
  %58 = load i32, i32* @AL_ETH_AN__LT_LANE_0, align 4
  %59 = load %struct.al_eth_an_np*, %struct.al_eth_an_np** %4, align 8
  %60 = getelementptr inbounds %struct.al_eth_an_np, %struct.al_eth_an_np* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @al_eth_an_lt_reg_write(%struct.al_hal_eth_adapter* %55, i32 %56, i32 %57, i32 %58, i32 %61)
  ret i32 0
}

declare dso_local i32 @AL_REG_FIELD_SET(i32, i32, i32, i32) #1

declare dso_local i32 @al_eth_an_lt_reg_write(%struct.al_hal_eth_adapter*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
