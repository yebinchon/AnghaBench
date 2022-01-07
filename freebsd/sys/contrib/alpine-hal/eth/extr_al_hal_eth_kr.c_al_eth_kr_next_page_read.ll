; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_kr.c_al_eth_kr_next_page_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_kr.c_al_eth_kr_next_page_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_hal_eth_adapter = type { i32 }
%struct.al_eth_an_np = type { i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@AL_ETH_KR_AN_REM_XNP_ADV0 = common dso_local global i32 0, align 4
@AL_ETH_AN_REGS = common dso_local global i32 0, align 4
@AL_ETH_AN__LT_LANE_0 = common dso_local global i32 0, align 4
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
@AL_ETH_KR_AN_REM_XNP_ADV1 = common dso_local global i32 0, align 4
@AL_ETH_KR_AN_REM_XNP_ADV2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @al_eth_kr_next_page_read(%struct.al_hal_eth_adapter* %0, %struct.al_eth_an_np* %1) #0 {
  %3 = alloca %struct.al_hal_eth_adapter*, align 8
  %4 = alloca %struct.al_eth_an_np*, align 8
  %5 = alloca i8*, align 8
  store %struct.al_hal_eth_adapter* %0, %struct.al_hal_eth_adapter** %3, align 8
  store %struct.al_eth_an_np* %1, %struct.al_eth_an_np** %4, align 8
  %6 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %7 = load i32, i32* @AL_ETH_KR_AN_REM_XNP_ADV0, align 4
  %8 = load i32, i32* @AL_ETH_AN_REGS, align 4
  %9 = load i32, i32* @AL_ETH_AN__LT_LANE_0, align 4
  %10 = call i8* @al_eth_an_lt_reg_read(%struct.al_hal_eth_adapter* %6, i32 %7, i32 %8, i32 %9)
  store i8* %10, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load i32, i32* @AL_ETH_KR_AN_NP_ADV1_DATA1_MASK, align 4
  %13 = load i32, i32* @AL_ETH_KR_AN_NP_ADV1_DATA1_SHIFT, align 4
  %14 = call i8* @AL_REG_FIELD_GET(i8* %11, i32 %12, i32 %13)
  %15 = load %struct.al_eth_an_np*, %struct.al_eth_an_np** %4, align 8
  %16 = getelementptr inbounds %struct.al_eth_an_np, %struct.al_eth_an_np* %15, i32 0, i32 6
  store i8* %14, i8** %16, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load i32, i32* @AL_ETH_KR_AN_NP_ADV1_TOGGLE_MASK, align 4
  %19 = load i32, i32* @AL_ETH_KR_AN_NP_ADV1_TOGGLE_SHIFT, align 4
  %20 = call i8* @AL_REG_FIELD_GET(i8* %17, i32 %18, i32 %19)
  %21 = load %struct.al_eth_an_np*, %struct.al_eth_an_np** %4, align 8
  %22 = getelementptr inbounds %struct.al_eth_an_np, %struct.al_eth_an_np* %21, i32 0, i32 5
  store i8* %20, i8** %22, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = load i32, i32* @AL_ETH_KR_AN_NP_ADV1_ACK2_MASK, align 4
  %25 = load i32, i32* @AL_ETH_KR_AN_NP_ADV1_ACK2_SHIFT, align 4
  %26 = call i8* @AL_REG_FIELD_GET(i8* %23, i32 %24, i32 %25)
  %27 = load %struct.al_eth_an_np*, %struct.al_eth_an_np** %4, align 8
  %28 = getelementptr inbounds %struct.al_eth_an_np, %struct.al_eth_an_np* %27, i32 0, i32 4
  store i8* %26, i8** %28, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = load i32, i32* @AL_ETH_KR_AN_NP_ADV1_MSG_PAGE_MASK, align 4
  %31 = load i32, i32* @AL_ETH_KR_AN_NP_ADV1_MSG_PAGE_SHIFT, align 4
  %32 = call i8* @AL_REG_FIELD_GET(i8* %29, i32 %30, i32 %31)
  %33 = load %struct.al_eth_an_np*, %struct.al_eth_an_np** %4, align 8
  %34 = getelementptr inbounds %struct.al_eth_an_np, %struct.al_eth_an_np* %33, i32 0, i32 3
  store i8* %32, i8** %34, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = load i32, i32* @AL_ETH_KR_AN_NP_ADV1_NP_MASK, align 4
  %37 = load i32, i32* @AL_ETH_KR_AN_NP_ADV1_NP_SHIFT, align 4
  %38 = call i8* @AL_REG_FIELD_GET(i8* %35, i32 %36, i32 %37)
  %39 = load %struct.al_eth_an_np*, %struct.al_eth_an_np** %4, align 8
  %40 = getelementptr inbounds %struct.al_eth_an_np, %struct.al_eth_an_np* %39, i32 0, i32 2
  store i8* %38, i8** %40, align 8
  %41 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %42 = load i32, i32* @AL_ETH_KR_AN_REM_XNP_ADV1, align 4
  %43 = load i32, i32* @AL_ETH_AN_REGS, align 4
  %44 = load i32, i32* @AL_ETH_AN__LT_LANE_0, align 4
  %45 = call i8* @al_eth_an_lt_reg_read(%struct.al_hal_eth_adapter* %41, i32 %42, i32 %43, i32 %44)
  %46 = load %struct.al_eth_an_np*, %struct.al_eth_an_np** %4, align 8
  %47 = getelementptr inbounds %struct.al_eth_an_np, %struct.al_eth_an_np* %46, i32 0, i32 1
  store i8* %45, i8** %47, align 8
  %48 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %49 = load i32, i32* @AL_ETH_KR_AN_REM_XNP_ADV2, align 4
  %50 = load i32, i32* @AL_ETH_AN_REGS, align 4
  %51 = load i32, i32* @AL_ETH_AN__LT_LANE_0, align 4
  %52 = call i8* @al_eth_an_lt_reg_read(%struct.al_hal_eth_adapter* %48, i32 %49, i32 %50, i32 %51)
  %53 = load %struct.al_eth_an_np*, %struct.al_eth_an_np** %4, align 8
  %54 = getelementptr inbounds %struct.al_eth_an_np, %struct.al_eth_an_np* %53, i32 0, i32 0
  store i8* %52, i8** %54, align 8
  ret i32 0
}

declare dso_local i8* @al_eth_an_lt_reg_read(%struct.al_hal_eth_adapter*, i32, i32, i32) #1

declare dso_local i8* @AL_REG_FIELD_GET(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
