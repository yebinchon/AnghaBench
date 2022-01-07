; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_freebsd.c_ar9300_beacon_set_beacon_timers.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_freebsd.c_ar9300_beacon_set_beacon_timers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i64, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@AR_NEXT_TBTT_TIMER = common dso_local global i32 0, align 4
@AR_NEXT_DMA_BEACON_ALERT = common dso_local global i32 0, align 4
@AR_NEXT_SWBA = common dso_local global i32 0, align 4
@AR_NEXT_NDP_TIMER = common dso_local global i32 0, align 4
@HAL_BEACON_PERIOD = common dso_local global i32 0, align 4
@AR_BEACON_PERIOD = common dso_local global i32 0, align 4
@AR_DMA_BEACON_PERIOD = common dso_local global i32 0, align 4
@AR_SWBA_PERIOD = common dso_local global i32 0, align 4
@AR_NDP_PERIOD = common dso_local global i32 0, align 4
@HAL_BEACON_RESET_TSF = common dso_local global i32 0, align 4
@AR_TIMER_MODE = common dso_local global i32 0, align 4
@AR_TBTT_TIMER_EN = common dso_local global i32 0, align 4
@AR_DBA_TIMER_EN = common dso_local global i32 0, align 4
@AR_SWBA_TIMER_EN = common dso_local global i32 0, align 4
@AR_TXCFG = common dso_local global i32 0, align 4
@AR_TXCFG_ADHOC_BEACON_ATIM_TX_POLICY = common dso_local global i32 0, align 4
@HAL_M_HOSTAP = common dso_local global i64 0, align 8
@HAL_M_IBSS = common dso_local global i64 0, align 8
@opmode = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hal*, %struct.TYPE_4__*)* @ar9300_beacon_set_beacon_timers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9300_beacon_set_beacon_timers(%struct.ath_hal* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %6 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %7 = load i32, i32* @AR_NEXT_TBTT_TIMER, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @TU_TO_USEC(i32 %10)
  %12 = call i32 @OS_REG_WRITE(%struct.ath_hal* %6, i32 %7, i32 %11)
  %13 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %14 = load i32, i32* @AR_NEXT_DMA_BEACON_ALERT, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ONE_EIGHTH_TU_TO_USEC(i32 %17)
  %19 = call i32 @OS_REG_WRITE(%struct.ath_hal* %13, i32 %14, i32 %18)
  %20 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %21 = load i32, i32* @AR_NEXT_SWBA, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @ONE_EIGHTH_TU_TO_USEC(i32 %24)
  %26 = call i32 @OS_REG_WRITE(%struct.ath_hal* %20, i32 %21, i32 %25)
  %27 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %28 = load i32, i32* @AR_NEXT_NDP_TIMER, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @TU_TO_USEC(i32 %31)
  %33 = call i32 @OS_REG_WRITE(%struct.ath_hal* %27, i32 %28, i32 %32)
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @HAL_BEACON_PERIOD, align 4
  %38 = and i32 %36, %37
  %39 = call i32 @TU_TO_USEC(i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @HAL_BEACON_PERIOD, align 4
  %44 = and i32 %42, %43
  %45 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %46 = call %struct.TYPE_5__* @AH9300(%struct.ath_hal* %45)
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 4
  %48 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %49 = load i32, i32* @AR_BEACON_PERIOD, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @OS_REG_WRITE(%struct.ath_hal* %48, i32 %49, i32 %50)
  %52 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %53 = load i32, i32* @AR_DMA_BEACON_PERIOD, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @OS_REG_WRITE(%struct.ath_hal* %52, i32 %53, i32 %54)
  %56 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %57 = load i32, i32* @AR_SWBA_PERIOD, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @OS_REG_WRITE(%struct.ath_hal* %56, i32 %57, i32 %58)
  %60 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %61 = load i32, i32* @AR_NDP_PERIOD, align 4
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @OS_REG_WRITE(%struct.ath_hal* %60, i32 %61, i32 %62)
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @HAL_BEACON_RESET_TSF, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %2
  %71 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %72 = call i32 @ar9300_reset_tsf(%struct.ath_hal* %71)
  br label %73

73:                                               ; preds = %70, %2
  %74 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %75 = load i32, i32* @AR_TIMER_MODE, align 4
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %73
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  br label %91

84:                                               ; preds = %73
  %85 = load i32, i32* @AR_TBTT_TIMER_EN, align 4
  %86 = load i32, i32* @AR_DBA_TIMER_EN, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @AR_SWBA_TIMER_EN, align 4
  %89 = or i32 %87, %88
  %90 = sext i32 %89 to i64
  br label %91

91:                                               ; preds = %84, %80
  %92 = phi i64 [ %83, %80 ], [ %90, %84 ]
  %93 = trunc i64 %92 to i32
  %94 = call i32 @OS_REG_SET_BIT(%struct.ath_hal* %74, i32 %75, i32 %93)
  ret void
}

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @TU_TO_USEC(i32) #1

declare dso_local i32 @ONE_EIGHTH_TU_TO_USEC(i32) #1

declare dso_local %struct.TYPE_5__* @AH9300(%struct.ath_hal*) #1

declare dso_local i32 @ar9300_reset_tsf(%struct.ath_hal*) #1

declare dso_local i32 @OS_REG_SET_BIT(%struct.ath_hal*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
