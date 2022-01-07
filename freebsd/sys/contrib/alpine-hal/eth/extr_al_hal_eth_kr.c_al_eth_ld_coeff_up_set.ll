; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_kr.c_al_eth_ld_coeff_up_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_kr.c_al_eth_ld_coeff_up_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_hal_eth_adapter = type { i32 }
%struct.al_eth_kr_coef_up_data = type { i32, i32, i32, i64, i64 }

@AL_ETH_KR_PMD_LD_COEF_UP_PRESET_SHIFT = common dso_local global i32 0, align 4
@AL_ETH_KR_PMD_LD_COEF_UP_INITIALIZE_SHIFT = common dso_local global i32 0, align 4
@AL_ETH_KR_PMD_LD_COEF_UP_MINUS_MASK = common dso_local global i32 0, align 4
@AL_ETH_KR_PMD_LD_COEF_UP_MINUS_SHIFT = common dso_local global i32 0, align 4
@AL_ETH_KR_PMD_LD_COEF_UP_ZERO_MASK = common dso_local global i32 0, align 4
@AL_ETH_KR_PMD_LD_COEF_UP_ZERO_SHIFT = common dso_local global i32 0, align 4
@AL_ETH_KR_PMD_LD_COEF_UP_PLUS_MASK = common dso_local global i32 0, align 4
@AL_ETH_KR_PMD_LD_COEF_UP_PLUS_SHIFT = common dso_local global i32 0, align 4
@AL_ETH_KR_PMD_LD_COEF_UP = common dso_local global i32 0, align 4
@AL_ETH_LT_REGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @al_eth_ld_coeff_up_set(%struct.al_hal_eth_adapter* %0, i32 %1, %struct.al_eth_kr_coef_up_data* %2) #0 {
  %4 = alloca %struct.al_hal_eth_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.al_eth_kr_coef_up_data*, align 8
  %7 = alloca i32, align 4
  store %struct.al_hal_eth_adapter* %0, %struct.al_hal_eth_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.al_eth_kr_coef_up_data* %2, %struct.al_eth_kr_coef_up_data** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.al_eth_kr_coef_up_data*, %struct.al_eth_kr_coef_up_data** %6, align 8
  %9 = getelementptr inbounds %struct.al_eth_kr_coef_up_data, %struct.al_eth_kr_coef_up_data* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @AL_ETH_KR_PMD_LD_COEF_UP_PRESET_SHIFT, align 4
  %15 = call i32 @AL_REG_BIT_SET(i32 %13, i32 %14)
  br label %16

16:                                               ; preds = %12, %3
  %17 = load %struct.al_eth_kr_coef_up_data*, %struct.al_eth_kr_coef_up_data** %6, align 8
  %18 = getelementptr inbounds %struct.al_eth_kr_coef_up_data, %struct.al_eth_kr_coef_up_data* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @AL_ETH_KR_PMD_LD_COEF_UP_INITIALIZE_SHIFT, align 4
  %24 = call i32 @AL_REG_BIT_SET(i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %21, %16
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @AL_ETH_KR_PMD_LD_COEF_UP_MINUS_MASK, align 4
  %28 = load i32, i32* @AL_ETH_KR_PMD_LD_COEF_UP_MINUS_SHIFT, align 4
  %29 = load %struct.al_eth_kr_coef_up_data*, %struct.al_eth_kr_coef_up_data** %6, align 8
  %30 = getelementptr inbounds %struct.al_eth_kr_coef_up_data, %struct.al_eth_kr_coef_up_data* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @AL_REG_FIELD_SET(i32 %26, i32 %27, i32 %28, i32 %31)
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @AL_ETH_KR_PMD_LD_COEF_UP_ZERO_MASK, align 4
  %35 = load i32, i32* @AL_ETH_KR_PMD_LD_COEF_UP_ZERO_SHIFT, align 4
  %36 = load %struct.al_eth_kr_coef_up_data*, %struct.al_eth_kr_coef_up_data** %6, align 8
  %37 = getelementptr inbounds %struct.al_eth_kr_coef_up_data, %struct.al_eth_kr_coef_up_data* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @AL_REG_FIELD_SET(i32 %33, i32 %34, i32 %35, i32 %38)
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @AL_ETH_KR_PMD_LD_COEF_UP_PLUS_MASK, align 4
  %42 = load i32, i32* @AL_ETH_KR_PMD_LD_COEF_UP_PLUS_SHIFT, align 4
  %43 = load %struct.al_eth_kr_coef_up_data*, %struct.al_eth_kr_coef_up_data** %6, align 8
  %44 = getelementptr inbounds %struct.al_eth_kr_coef_up_data, %struct.al_eth_kr_coef_up_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @AL_REG_FIELD_SET(i32 %40, i32 %41, i32 %42, i32 %45)
  %47 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %48 = load i32, i32* @AL_ETH_KR_PMD_LD_COEF_UP, align 4
  %49 = load i32, i32* @AL_ETH_LT_REGS, align 4
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @al_eth_an_lt_reg_write(%struct.al_hal_eth_adapter* %47, i32 %48, i32 %49, i32 %50, i32 %51)
  ret void
}

declare dso_local i32 @AL_REG_BIT_SET(i32, i32) #1

declare dso_local i32 @AL_REG_FIELD_SET(i32, i32, i32, i32) #1

declare dso_local i32 @al_eth_an_lt_reg_write(%struct.al_hal_eth_adapter*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
