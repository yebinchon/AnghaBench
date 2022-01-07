; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_kr.c_al_eth_ld_status_report_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_kr.c_al_eth_ld_status_report_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_hal_eth_adapter = type { i32 }
%struct.al_eth_kr_status_report_data = type { i64, i32, i32, i32 }

@AL_ETH_KR_PMD_LD_STATUS_REPORT_MINUS_MASK = common dso_local global i32 0, align 4
@AL_ETH_KR_PMD_LD_STATUS_REPORT_MINUS_SHIFT = common dso_local global i32 0, align 4
@AL_ETH_KR_PMD_LD_STATUS_REPORT_ZERO_MASK = common dso_local global i32 0, align 4
@AL_ETH_KR_PMD_LD_STATUS_REPORT_ZERO_SHIFT = common dso_local global i32 0, align 4
@AL_ETH_KR_PMD_LD_STATUS_REPORT_PLUS_MASK = common dso_local global i32 0, align 4
@AL_ETH_KR_PMD_LD_STATUS_REPORT_PLUS_SHIFT = common dso_local global i32 0, align 4
@AL_ETH_KR_PMD_LD_STATUS_REPORT_RECEIVER_READY_SHIFT = common dso_local global i32 0, align 4
@AL_ETH_KR_PMD_LD_STATUS_REPORT = common dso_local global i32 0, align 4
@AL_ETH_LT_REGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @al_eth_ld_status_report_set(%struct.al_hal_eth_adapter* %0, i32 %1, %struct.al_eth_kr_status_report_data* %2) #0 {
  %4 = alloca %struct.al_hal_eth_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.al_eth_kr_status_report_data*, align 8
  %7 = alloca i32, align 4
  store %struct.al_hal_eth_adapter* %0, %struct.al_hal_eth_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.al_eth_kr_status_report_data* %2, %struct.al_eth_kr_status_report_data** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @AL_ETH_KR_PMD_LD_STATUS_REPORT_MINUS_MASK, align 4
  %10 = load i32, i32* @AL_ETH_KR_PMD_LD_STATUS_REPORT_MINUS_SHIFT, align 4
  %11 = load %struct.al_eth_kr_status_report_data*, %struct.al_eth_kr_status_report_data** %6, align 8
  %12 = getelementptr inbounds %struct.al_eth_kr_status_report_data, %struct.al_eth_kr_status_report_data* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @AL_REG_FIELD_SET(i32 %8, i32 %9, i32 %10, i32 %13)
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @AL_ETH_KR_PMD_LD_STATUS_REPORT_ZERO_MASK, align 4
  %17 = load i32, i32* @AL_ETH_KR_PMD_LD_STATUS_REPORT_ZERO_SHIFT, align 4
  %18 = load %struct.al_eth_kr_status_report_data*, %struct.al_eth_kr_status_report_data** %6, align 8
  %19 = getelementptr inbounds %struct.al_eth_kr_status_report_data, %struct.al_eth_kr_status_report_data* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @AL_REG_FIELD_SET(i32 %15, i32 %16, i32 %17, i32 %20)
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @AL_ETH_KR_PMD_LD_STATUS_REPORT_PLUS_MASK, align 4
  %24 = load i32, i32* @AL_ETH_KR_PMD_LD_STATUS_REPORT_PLUS_SHIFT, align 4
  %25 = load %struct.al_eth_kr_status_report_data*, %struct.al_eth_kr_status_report_data** %6, align 8
  %26 = getelementptr inbounds %struct.al_eth_kr_status_report_data, %struct.al_eth_kr_status_report_data* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @AL_REG_FIELD_SET(i32 %22, i32 %23, i32 %24, i32 %27)
  %29 = load %struct.al_eth_kr_status_report_data*, %struct.al_eth_kr_status_report_data** %6, align 8
  %30 = getelementptr inbounds %struct.al_eth_kr_status_report_data, %struct.al_eth_kr_status_report_data* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %3
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @AL_ETH_KR_PMD_LD_STATUS_REPORT_RECEIVER_READY_SHIFT, align 4
  %36 = call i32 @AL_REG_BIT_SET(i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %33, %3
  %38 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %39 = load i32, i32* @AL_ETH_KR_PMD_LD_STATUS_REPORT, align 4
  %40 = load i32, i32* @AL_ETH_LT_REGS, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @al_eth_an_lt_reg_write(%struct.al_hal_eth_adapter* %38, i32 %39, i32 %40, i32 %41, i32 %42)
  ret void
}

declare dso_local i32 @AL_REG_FIELD_SET(i32, i32, i32, i32) #1

declare dso_local i32 @AL_REG_BIT_SET(i32, i32) #1

declare dso_local i32 @al_eth_an_lt_reg_write(%struct.al_hal_eth_adapter*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
