; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_kr.c_al_eth_kr_an_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_kr.c_al_eth_kr_an_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_hal_eth_adapter = type { i32 }

@AL_ETH_KR_AN_CONTROL_ENABLE = common dso_local global i32 0, align 4
@AL_ETH_KR_AN_CONTROL_RESTART = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Eth [%s]: enable autonegotiation. lt_en %s\00", align 1
@AL_TRUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@AL_ETH_KR_PMD_CONTROL = common dso_local global i32 0, align 4
@AL_ETH_LT_REGS = common dso_local global i32 0, align 4
@AL_ETH_KR_PMD_CONTROL_RESTART = common dso_local global i32 0, align 4
@AL_ETH_KR_AN_CONTROL_NP_ENABLE = common dso_local global i32 0, align 4
@AL_ETH_KR_AN_CONTROL = common dso_local global i32 0, align 4
@AL_ETH_AN_REGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @al_eth_kr_an_start(%struct.al_hal_eth_adapter* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.al_hal_eth_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.al_hal_eth_adapter* %0, %struct.al_hal_eth_adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i32, i32* @AL_ETH_KR_AN_CONTROL_ENABLE, align 4
  %11 = load i32, i32* @AL_ETH_KR_AN_CONTROL_RESTART, align 4
  %12 = or i32 %10, %11
  store i32 %12, i32* %9, align 4
  %13 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %5, align 8
  %14 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* @AL_TRUE, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %21 = call i32 @al_dbg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %15, i8* %20)
  %22 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %5, align 8
  %23 = load i32, i32* @AL_ETH_KR_PMD_CONTROL, align 4
  %24 = load i32, i32* @AL_ETH_LT_REGS, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @AL_ETH_KR_PMD_CONTROL_RESTART, align 4
  %27 = call i32 @AL_BIT(i32 %26)
  %28 = call i32 @al_eth_an_lt_reg_write(%struct.al_hal_eth_adapter* %22, i32 %23, i32 %24, i32 %25, i32 %27)
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* @AL_TRUE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %4
  %33 = load i32, i32* @AL_ETH_KR_AN_CONTROL_NP_ENABLE, align 4
  %34 = load i32, i32* %9, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %32, %4
  %37 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %5, align 8
  %38 = load i32, i32* @AL_ETH_KR_AN_CONTROL, align 4
  %39 = load i32, i32* @AL_ETH_AN_REGS, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @al_eth_an_lt_reg_write(%struct.al_hal_eth_adapter* %37, i32 %38, i32 %39, i32 %40, i32 %41)
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* @AL_TRUE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %36
  %47 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @al_eth_kr_lt_initialize(%struct.al_hal_eth_adapter* %47, i32 %48)
  br label %50

50:                                               ; preds = %46, %36
  ret i32 0
}

declare dso_local i32 @al_dbg(i8*, i32, i8*) #1

declare dso_local i32 @al_eth_an_lt_reg_write(%struct.al_hal_eth_adapter*, i32, i32, i32, i32) #1

declare dso_local i32 @AL_BIT(i32) #1

declare dso_local i32 @al_eth_kr_lt_initialize(%struct.al_hal_eth_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
