; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_power.c_ar9300_set_power_mode_sleep.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_power.c_ar9300_set_power_mode_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ath_hal_9300 = type { i32 }

@AR_STA_ID1 = common dso_local global i32 0, align 4
@AR_STA_ID1_PWR_SAV = common dso_local global i32 0, align 4
@AR_TIMER_MODE = common dso_local global i32 0, align 4
@AR_GEN_TIMERS2_MODE = common dso_local global i32 0, align 4
@AR_SLP32_INC = common dso_local global i32 0, align 4
@AR_MCI_INTERRUPT_RX_MSG_EN = common dso_local global i32 0, align 4
@AR_RTC_FORCE_WAKE = common dso_local global i32 0, align 4
@AR_RTC_FORCE_WAKE_EN = common dso_local global i32 0, align 4
@AR_RTC_RESET = common dso_local global i32 0, align 4
@AR_RTC_RESET_EN = common dso_local global i32 0, align 4
@AR_WA = common dso_local global i32 0, align 4
@AR_WA_D3_TO_L1_DISABLE = common dso_local global i32 0, align 4
@HAL_WOW_OFFLOAD_SET_4004_BIT14 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hal*, i32)* @ar9300_set_power_mode_sleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9300_set_power_mode_sleep(%struct.ath_hal* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_hal_9300*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %7 = call %struct.ath_hal_9300* @AH9300(%struct.ath_hal* %6)
  store %struct.ath_hal_9300* %7, %struct.ath_hal_9300** %5, align 8
  %8 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %9 = load i32, i32* @AR_STA_ID1, align 4
  %10 = load i32, i32* @AR_STA_ID1_PWR_SAV, align 4
  %11 = call i32 @OS_REG_SET_BIT(%struct.ath_hal* %8, i32 %9, i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %73

14:                                               ; preds = %2
  %15 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %16 = call i64 @AR_SREV_JUPITER(%struct.ath_hal* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %20 = call i64 @AR_SREV_APHRODITE(%struct.ath_hal* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %48

22:                                               ; preds = %18, %14
  %23 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %24 = load i32, i32* @AR_TIMER_MODE, align 4
  %25 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %26 = load i32, i32* @AR_TIMER_MODE, align 4
  %27 = call i32 @OS_REG_READ(%struct.ath_hal* %25, i32 %26)
  %28 = and i32 %27, -256
  %29 = call i32 @OS_REG_WRITE(%struct.ath_hal* %23, i32 %24, i32 %28)
  %30 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %31 = load i32, i32* @AR_GEN_TIMERS2_MODE, align 4
  %32 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %33 = load i32, i32* @AR_GEN_TIMERS2_MODE, align 4
  %34 = call i32 @OS_REG_READ(%struct.ath_hal* %32, i32 %33)
  %35 = and i32 %34, -256
  %36 = call i32 @OS_REG_WRITE(%struct.ath_hal* %30, i32 %31, i32 %35)
  %37 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %38 = load i32, i32* @AR_SLP32_INC, align 4
  %39 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %40 = load i32, i32* @AR_SLP32_INC, align 4
  %41 = call i32 @OS_REG_READ(%struct.ath_hal* %39, i32 %40)
  %42 = and i32 %41, -1048576
  %43 = call i32 @OS_REG_WRITE(%struct.ath_hal* %37, i32 %38, i32 %42)
  %44 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %45 = load i32, i32* @AR_MCI_INTERRUPT_RX_MSG_EN, align 4
  %46 = call i32 @OS_REG_WRITE(%struct.ath_hal* %44, i32 %45, i32 0)
  %47 = call i32 @OS_DELAY(i32 100)
  br label %48

48:                                               ; preds = %22, %18
  %49 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %50 = load i32, i32* @AR_RTC_FORCE_WAKE, align 4
  %51 = load i32, i32* @AR_RTC_FORCE_WAKE_EN, align 4
  %52 = call i32 @OS_REG_CLR_BIT(%struct.ath_hal* %49, i32 %50, i32 %51)
  %53 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %54 = call i64 @AR_SREV_JUPITER(%struct.ath_hal* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %48
  %57 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %58 = call i64 @AR_SREV_APHRODITE(%struct.ath_hal* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %56, %48
  %61 = call i32 @OS_DELAY(i32 100)
  br label %62

62:                                               ; preds = %60, %56
  %63 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %64 = call i32 @AR_SREV_JUPITER_10(%struct.ath_hal* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %62
  %67 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %68 = load i32, i32* @AR_RTC_RESET, align 4
  %69 = load i32, i32* @AR_RTC_RESET_EN, align 4
  %70 = call i32 @OS_REG_CLR_BIT(%struct.ath_hal* %67, i32 %68, i32 %69)
  %71 = call i32 @OS_DELAY(i32 2)
  br label %72

72:                                               ; preds = %66, %62
  br label %73

73:                                               ; preds = %72, %2
  %74 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %75 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %76 = load i32, i32* @AR_WA, align 4
  %77 = call i32 @AR_HOSTIF_REG(%struct.ath_hal* %75, i32 %76)
  %78 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %5, align 8
  %79 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @AR_WA_D3_TO_L1_DISABLE, align 4
  %82 = xor i32 %81, -1
  %83 = and i32 %80, %82
  %84 = call i32 @OS_REG_WRITE(%struct.ath_hal* %74, i32 %77, i32 %83)
  ret void
}

declare dso_local %struct.ath_hal_9300* @AH9300(%struct.ath_hal*) #1

declare dso_local i32 @OS_REG_SET_BIT(%struct.ath_hal*, i32, i32) #1

declare dso_local i64 @AR_SREV_JUPITER(%struct.ath_hal*) #1

declare dso_local i64 @AR_SREV_APHRODITE(%struct.ath_hal*) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i32) #1

declare dso_local i32 @OS_DELAY(i32) #1

declare dso_local i32 @OS_REG_CLR_BIT(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @AR_SREV_JUPITER_10(%struct.ath_hal*) #1

declare dso_local i32 @AR_HOSTIF_REG(%struct.ath_hal*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
