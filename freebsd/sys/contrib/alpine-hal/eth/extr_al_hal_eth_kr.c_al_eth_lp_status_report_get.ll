; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_kr.c_al_eth_lp_status_report_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_kr.c_al_eth_lp_status_report_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_hal_eth_adapter = type { i32 }
%struct.al_eth_kr_status_report_data = type { i32, i8*, i8*, i8* }

@AL_ETH_KR_PMD_LP_STATUS_REPORT = common dso_local global i32 0, align 4
@AL_ETH_LT_REGS = common dso_local global i32 0, align 4
@AL_ETH_KR_PMD_LP_STATUS_REPORT_MINUS_MASK = common dso_local global i32 0, align 4
@AL_ETH_KR_PMD_LP_STATUS_REPORT_MINUS_SHIFT = common dso_local global i32 0, align 4
@AL_ETH_KR_PMD_LP_STATUS_REPORT_ZERO_MASK = common dso_local global i32 0, align 4
@AL_ETH_KR_PMD_LP_STATUS_REPORT_ZERO_SHIFT = common dso_local global i32 0, align 4
@AL_ETH_KR_PMD_LP_STATUS_REPORT_PLUS_MASK = common dso_local global i32 0, align 4
@AL_ETH_KR_PMD_LP_STATUS_REPORT_PLUS_SHIFT = common dso_local global i32 0, align 4
@AL_ETH_KR_PMD_LP_STATUS_RECEIVER_READY_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @al_eth_lp_status_report_get(%struct.al_hal_eth_adapter* %0, i32 %1, %struct.al_eth_kr_status_report_data* %2) #0 {
  %4 = alloca %struct.al_hal_eth_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.al_eth_kr_status_report_data*, align 8
  %7 = alloca i32, align 4
  store %struct.al_hal_eth_adapter* %0, %struct.al_hal_eth_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.al_eth_kr_status_report_data* %2, %struct.al_eth_kr_status_report_data** %6, align 8
  %8 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %9 = load i32, i32* @AL_ETH_KR_PMD_LP_STATUS_REPORT, align 4
  %10 = load i32, i32* @AL_ETH_LT_REGS, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @al_eth_an_lt_reg_read(%struct.al_hal_eth_adapter* %8, i32 %9, i32 %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @AL_ETH_KR_PMD_LP_STATUS_REPORT_MINUS_MASK, align 4
  %15 = load i32, i32* @AL_ETH_KR_PMD_LP_STATUS_REPORT_MINUS_SHIFT, align 4
  %16 = call i8* @AL_REG_FIELD_GET(i32 %13, i32 %14, i32 %15)
  %17 = load %struct.al_eth_kr_status_report_data*, %struct.al_eth_kr_status_report_data** %6, align 8
  %18 = getelementptr inbounds %struct.al_eth_kr_status_report_data, %struct.al_eth_kr_status_report_data* %17, i32 0, i32 3
  store i8* %16, i8** %18, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @AL_ETH_KR_PMD_LP_STATUS_REPORT_ZERO_MASK, align 4
  %21 = load i32, i32* @AL_ETH_KR_PMD_LP_STATUS_REPORT_ZERO_SHIFT, align 4
  %22 = call i8* @AL_REG_FIELD_GET(i32 %19, i32 %20, i32 %21)
  %23 = load %struct.al_eth_kr_status_report_data*, %struct.al_eth_kr_status_report_data** %6, align 8
  %24 = getelementptr inbounds %struct.al_eth_kr_status_report_data, %struct.al_eth_kr_status_report_data* %23, i32 0, i32 2
  store i8* %22, i8** %24, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @AL_ETH_KR_PMD_LP_STATUS_REPORT_PLUS_MASK, align 4
  %27 = load i32, i32* @AL_ETH_KR_PMD_LP_STATUS_REPORT_PLUS_SHIFT, align 4
  %28 = call i8* @AL_REG_FIELD_GET(i32 %25, i32 %26, i32 %27)
  %29 = load %struct.al_eth_kr_status_report_data*, %struct.al_eth_kr_status_report_data** %6, align 8
  %30 = getelementptr inbounds %struct.al_eth_kr_status_report_data, %struct.al_eth_kr_status_report_data* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @AL_ETH_KR_PMD_LP_STATUS_RECEIVER_READY_SHIFT, align 4
  %33 = call i64 @AL_REG_BIT_GET(i32 %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  %35 = zext i1 %34 to i32
  %36 = load %struct.al_eth_kr_status_report_data*, %struct.al_eth_kr_status_report_data** %6, align 8
  %37 = getelementptr inbounds %struct.al_eth_kr_status_report_data, %struct.al_eth_kr_status_report_data* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  ret void
}

declare dso_local i32 @al_eth_an_lt_reg_read(%struct.al_hal_eth_adapter*, i32, i32, i32) #1

declare dso_local i8* @AL_REG_FIELD_GET(i32, i32, i32) #1

declare dso_local i64 @AL_REG_BIT_GET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
