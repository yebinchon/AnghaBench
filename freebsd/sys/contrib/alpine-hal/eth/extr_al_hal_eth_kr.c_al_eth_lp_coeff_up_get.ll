; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_kr.c_al_eth_lp_coeff_up_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_kr.c_al_eth_lp_coeff_up_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_hal_eth_adapter = type { i32 }
%struct.al_eth_kr_coef_up_data = type { i32, i32, i8*, i8*, i8* }

@AL_ETH_KR_PMD_LP_COEF_UP = common dso_local global i32 0, align 4
@AL_ETH_LT_REGS = common dso_local global i32 0, align 4
@AL_ETH_KR_PMD_LP_COEF_UP_PRESET_SHIFT = common dso_local global i32 0, align 4
@AL_ETH_KR_PMD_LP_COEF_UP_INITIALIZE_SHIFT = common dso_local global i32 0, align 4
@AL_ETH_KR_PMD_LP_COEF_UP_MINUS_MASK = common dso_local global i32 0, align 4
@AL_ETH_KR_PMD_LP_COEF_UP_MINUS_SHIFT = common dso_local global i32 0, align 4
@AL_ETH_KR_PMD_LP_COEF_UP_ZERO_MASK = common dso_local global i32 0, align 4
@AL_ETH_KR_PMD_LP_COEF_UP_ZERO_SHIFT = common dso_local global i32 0, align 4
@AL_ETH_KR_PMD_LP_COEF_UP_PLUS_MASK = common dso_local global i32 0, align 4
@AL_ETH_KR_PMD_LP_COEF_UP_PLUS_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @al_eth_lp_coeff_up_get(%struct.al_hal_eth_adapter* %0, i32 %1, %struct.al_eth_kr_coef_up_data* %2) #0 {
  %4 = alloca %struct.al_hal_eth_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.al_eth_kr_coef_up_data*, align 8
  %7 = alloca i32, align 4
  store %struct.al_hal_eth_adapter* %0, %struct.al_hal_eth_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.al_eth_kr_coef_up_data* %2, %struct.al_eth_kr_coef_up_data** %6, align 8
  %8 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %9 = load i32, i32* @AL_ETH_KR_PMD_LP_COEF_UP, align 4
  %10 = load i32, i32* @AL_ETH_LT_REGS, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @al_eth_an_lt_reg_read(%struct.al_hal_eth_adapter* %8, i32 %9, i32 %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @AL_ETH_KR_PMD_LP_COEF_UP_PRESET_SHIFT, align 4
  %15 = call i64 @AL_REG_BIT_GET(i32 %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = load %struct.al_eth_kr_coef_up_data*, %struct.al_eth_kr_coef_up_data** %6, align 8
  %19 = getelementptr inbounds %struct.al_eth_kr_coef_up_data, %struct.al_eth_kr_coef_up_data* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @AL_ETH_KR_PMD_LP_COEF_UP_INITIALIZE_SHIFT, align 4
  %22 = call i64 @AL_REG_BIT_GET(i32 %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  %24 = zext i1 %23 to i32
  %25 = load %struct.al_eth_kr_coef_up_data*, %struct.al_eth_kr_coef_up_data** %6, align 8
  %26 = getelementptr inbounds %struct.al_eth_kr_coef_up_data, %struct.al_eth_kr_coef_up_data* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @AL_ETH_KR_PMD_LP_COEF_UP_MINUS_MASK, align 4
  %29 = load i32, i32* @AL_ETH_KR_PMD_LP_COEF_UP_MINUS_SHIFT, align 4
  %30 = call i8* @AL_REG_FIELD_GET(i32 %27, i32 %28, i32 %29)
  %31 = load %struct.al_eth_kr_coef_up_data*, %struct.al_eth_kr_coef_up_data** %6, align 8
  %32 = getelementptr inbounds %struct.al_eth_kr_coef_up_data, %struct.al_eth_kr_coef_up_data* %31, i32 0, i32 4
  store i8* %30, i8** %32, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @AL_ETH_KR_PMD_LP_COEF_UP_ZERO_MASK, align 4
  %35 = load i32, i32* @AL_ETH_KR_PMD_LP_COEF_UP_ZERO_SHIFT, align 4
  %36 = call i8* @AL_REG_FIELD_GET(i32 %33, i32 %34, i32 %35)
  %37 = load %struct.al_eth_kr_coef_up_data*, %struct.al_eth_kr_coef_up_data** %6, align 8
  %38 = getelementptr inbounds %struct.al_eth_kr_coef_up_data, %struct.al_eth_kr_coef_up_data* %37, i32 0, i32 3
  store i8* %36, i8** %38, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @AL_ETH_KR_PMD_LP_COEF_UP_PLUS_MASK, align 4
  %41 = load i32, i32* @AL_ETH_KR_PMD_LP_COEF_UP_PLUS_SHIFT, align 4
  %42 = call i8* @AL_REG_FIELD_GET(i32 %39, i32 %40, i32 %41)
  %43 = load %struct.al_eth_kr_coef_up_data*, %struct.al_eth_kr_coef_up_data** %6, align 8
  %44 = getelementptr inbounds %struct.al_eth_kr_coef_up_data, %struct.al_eth_kr_coef_up_data* %43, i32 0, i32 2
  store i8* %42, i8** %44, align 8
  ret void
}

declare dso_local i32 @al_eth_an_lt_reg_read(%struct.al_hal_eth_adapter*, i32, i32, i32) #1

declare dso_local i64 @AL_REG_BIT_GET(i32, i32) #1

declare dso_local i8* @AL_REG_FIELD_GET(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
