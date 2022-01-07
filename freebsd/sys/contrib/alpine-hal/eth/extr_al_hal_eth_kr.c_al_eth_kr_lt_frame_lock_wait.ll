; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_kr.c_al_eth_kr_lt_frame_lock_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_kr.c_al_eth_kr_lt_frame_lock_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_hal_eth_adapter = type { i32 }

@AL_ETH_KR_PMD_STATUS = common dso_local global i32 0, align 4
@AL_ETH_LT_REGS = common dso_local global i32 0, align 4
@AL_ETH_KR_PMD_STATUS_FAILURE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"[%s]: Failed on Training Failure. loops %d PMD STATUS 0x%04x\0A\00", align 1
@AL_FALSE = common dso_local global i32 0, align 4
@AL_ETH_KR_PMD_STATUS_RECEIVER_FRAME_LOCK_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"[%s]: Frame lock received. loops %d PMD STATUS 0x%04x\0A\00", align 1
@AL_TRUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"[%s]: Failed on timeout. PMD STATUS 0x%04x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @al_eth_kr_lt_frame_lock_wait(%struct.al_hal_eth_adapter* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.al_hal_eth_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.al_hal_eth_adapter* %0, %struct.al_hal_eth_adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %8, align 8
  br label %10

10:                                               ; preds = %47, %3
  %11 = load i64, i64* %8, align 8
  %12 = load i64, i64* %7, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %14, label %50

14:                                               ; preds = %10
  %15 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %5, align 8
  %16 = load i32, i32* @AL_ETH_KR_PMD_STATUS, align 4
  %17 = load i32, i32* @AL_ETH_LT_REGS, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i64 @al_eth_an_lt_reg_read(%struct.al_hal_eth_adapter* %15, i32 %16, i32 %17, i32 %18)
  store i64 %19, i64* %9, align 8
  %20 = load i64, i64* %9, align 8
  %21 = load i32, i32* @AL_ETH_KR_PMD_STATUS_FAILURE_SHIFT, align 4
  %22 = call i64 @AL_REG_BIT_GET(i64 %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %14
  %25 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %5, align 8
  %26 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* %9, align 8
  %30 = call i32 (i8*, i32, i64, ...) @al_info(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %27, i64 %28, i64 %29)
  %31 = load i32, i32* @AL_FALSE, align 4
  store i32 %31, i32* %4, align 4
  br label %57

32:                                               ; preds = %14
  %33 = load i64, i64* %9, align 8
  %34 = load i32, i32* @AL_ETH_KR_PMD_STATUS_RECEIVER_FRAME_LOCK_SHIFT, align 4
  %35 = call i64 @AL_REG_BIT_GET(i64 %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %5, align 8
  %39 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* %9, align 8
  %43 = call i32 @al_dbg(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %40, i64 %41, i64 %42)
  %44 = load i32, i32* @AL_TRUE, align 4
  store i32 %44, i32* %4, align 4
  br label %57

45:                                               ; preds = %32
  %46 = call i32 @al_udelay(i32 1)
  br label %47

47:                                               ; preds = %45
  %48 = load i64, i64* %8, align 8
  %49 = add nsw i64 %48, 1
  store i64 %49, i64* %8, align 8
  br label %10

50:                                               ; preds = %10
  %51 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %5, align 8
  %52 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i64, i64* %9, align 8
  %55 = call i32 (i8*, i32, i64, ...) @al_info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %53, i64 %54)
  %56 = load i32, i32* @AL_FALSE, align 4
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %50, %37, %24
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i64 @al_eth_an_lt_reg_read(%struct.al_hal_eth_adapter*, i32, i32, i32) #1

declare dso_local i64 @AL_REG_BIT_GET(i64, i32) #1

declare dso_local i32 @al_info(i8*, i32, i64, ...) #1

declare dso_local i32 @al_dbg(i8*, i32, i64, i64) #1

declare dso_local i32 @al_udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
