; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_power.c_ar9300_set_power_mode_network_sleep.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_power.c_ar9300_set_power_mode_network_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ath_hal_9300 = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }

@AR_STA_ID1 = common dso_local global i32 0, align 4
@AR_STA_ID1_PWR_SAV = common dso_local global i32 0, align 4
@AR_RTC_FORCE_WAKE = common dso_local global i32 0, align 4
@AR_RTC_FORCE_WAKE_ON_INT = common dso_local global i32 0, align 4
@AR_MCI_INTERRUPT_RX_MSG_EN = common dso_local global i32 0, align 4
@AR_MCI_INTERRUPT_RX_HW_MSG_MASK = common dso_local global i32 0, align 4
@AR_RTC_FORCE_WAKE_EN = common dso_local global i32 0, align 4
@AR_WA = common dso_local global i32 0, align 4
@AR_WA_D3_TO_L1_DISABLE = common dso_local global i32 0, align 4
@HAL_WOW_OFFLOAD_SET_4004_BIT14 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hal*, i32)* @ar9300_set_power_mode_network_sleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9300_set_power_mode_network_sleep(%struct.ath_hal* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_hal_9300*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %8 = call %struct.ath_hal_9300* @AH9300(%struct.ath_hal* %7)
  store %struct.ath_hal_9300* %8, %struct.ath_hal_9300** %5, align 8
  %9 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %10 = load i32, i32* @AR_STA_ID1, align 4
  %11 = load i32, i32* @AR_STA_ID1_PWR_SAV, align 4
  %12 = call i32 @OS_REG_SET_BIT(%struct.ath_hal* %9, i32 %10, i32 %11)
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %62

15:                                               ; preds = %2
  %16 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %17 = call %struct.TYPE_4__* @AH_PRIVATE(%struct.ath_hal* %16)
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store %struct.TYPE_3__* %18, %struct.TYPE_3__** %6, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %15
  %24 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %25 = load i32, i32* @AR_RTC_FORCE_WAKE, align 4
  %26 = load i32, i32* @AR_RTC_FORCE_WAKE_ON_INT, align 4
  %27 = call i32 @OS_REG_WRITE(%struct.ath_hal* %24, i32 %25, i32 %26)
  br label %61

28:                                               ; preds = %15
  %29 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %30 = call i64 @AR_SREV_JUPITER(%struct.ath_hal* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %34 = call i64 @AR_SREV_APHRODITE(%struct.ath_hal* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %32, %28
  %37 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %38 = load i32, i32* @AR_MCI_INTERRUPT_RX_MSG_EN, align 4
  %39 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %40 = load i32, i32* @AR_MCI_INTERRUPT_RX_MSG_EN, align 4
  %41 = call i32 @OS_REG_READ(%struct.ath_hal* %39, i32 %40)
  %42 = load i32, i32* @AR_MCI_INTERRUPT_RX_HW_MSG_MASK, align 4
  %43 = xor i32 %42, -1
  %44 = and i32 %41, %43
  %45 = call i32 @OS_REG_WRITE(%struct.ath_hal* %37, i32 %38, i32 %44)
  br label %46

46:                                               ; preds = %36, %32
  %47 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %48 = load i32, i32* @AR_RTC_FORCE_WAKE, align 4
  %49 = load i32, i32* @AR_RTC_FORCE_WAKE_EN, align 4
  %50 = call i32 @OS_REG_CLR_BIT(%struct.ath_hal* %47, i32 %48, i32 %49)
  %51 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %52 = call i64 @AR_SREV_JUPITER(%struct.ath_hal* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %46
  %55 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %56 = call i64 @AR_SREV_APHRODITE(%struct.ath_hal* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %54, %46
  %59 = call i32 @OS_DELAY(i32 30)
  br label %60

60:                                               ; preds = %58, %54
  br label %61

61:                                               ; preds = %60, %23
  br label %62

62:                                               ; preds = %61, %2
  %63 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %64 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %65 = load i32, i32* @AR_WA, align 4
  %66 = call i32 @AR_HOSTIF_REG(%struct.ath_hal* %64, i32 %65)
  %67 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %5, align 8
  %68 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @AR_WA_D3_TO_L1_DISABLE, align 4
  %71 = xor i32 %70, -1
  %72 = and i32 %69, %71
  %73 = call i32 @OS_REG_WRITE(%struct.ath_hal* %63, i32 %66, i32 %72)
  ret void
}

declare dso_local %struct.ath_hal_9300* @AH9300(%struct.ath_hal*) #1

declare dso_local i32 @OS_REG_SET_BIT(%struct.ath_hal*, i32, i32) #1

declare dso_local %struct.TYPE_4__* @AH_PRIVATE(%struct.ath_hal*) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

declare dso_local i64 @AR_SREV_JUPITER(%struct.ath_hal*) #1

declare dso_local i64 @AR_SREV_APHRODITE(%struct.ath_hal*) #1

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i32) #1

declare dso_local i32 @OS_REG_CLR_BIT(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @OS_DELAY(i32) #1

declare dso_local i32 @AR_HOSTIF_REG(%struct.ath_hal*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
