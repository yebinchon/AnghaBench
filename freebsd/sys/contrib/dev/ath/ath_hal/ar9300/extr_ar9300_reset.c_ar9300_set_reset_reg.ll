; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_reset.c_ar9300_set_reset_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_reset.c_ar9300_set_reset_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.TYPE_6__ = type { i32 }

@AH_FALSE = common dso_local global i32 0, align 4
@AR_WA = common dso_local global i32 0, align 4
@AR_RTC_FORCE_WAKE = common dso_local global i32 0, align 4
@AR_RTC_FORCE_WAKE_EN = common dso_local global i32 0, align 4
@AR_RTC_FORCE_WAKE_ON_INT = common dso_local global i32 0, align 4
@AR_RTC_KEEP_AWAKE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar9300_set_reset_reg(%struct.ath_hal* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @AH_FALSE, align 4
  store i32 %6, i32* %5, align 4
  %7 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %8 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %9 = load i32, i32* @AR_WA, align 4
  %10 = call i32 @AR_HOSTIF_REG(%struct.ath_hal* %8, i32 %9)
  %11 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %12 = call %struct.TYPE_6__* @AH9300(%struct.ath_hal* %11)
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @OS_REG_WRITE(%struct.ath_hal* %7, i32 %10, i32 %14)
  %16 = call i32 @OS_DELAY(i32 10)
  %17 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %18 = load i32, i32* @AR_RTC_FORCE_WAKE, align 4
  %19 = load i32, i32* @AR_RTC_FORCE_WAKE_EN, align 4
  %20 = load i32, i32* @AR_RTC_FORCE_WAKE_ON_INT, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @OS_REG_WRITE(%struct.ath_hal* %17, i32 %18, i32 %21)
  %23 = load i32, i32* %4, align 4
  switch i32 %23, label %31 [
    i32 129, label %24
    i32 128, label %27
    i32 130, label %27
  ]

24:                                               ; preds = %2
  %25 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %26 = call i32 @ar9300_set_reset_power_on(%struct.ath_hal* %25)
  store i32 %26, i32* %5, align 4
  br label %32

27:                                               ; preds = %2, %2
  %28 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @ar9300_set_reset(%struct.ath_hal* %28, i32 %29)
  store i32 %30, i32* %5, align 4
  br label %32

31:                                               ; preds = %2
  br label %32

32:                                               ; preds = %31, %27, %24
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @AR_HOSTIF_REG(%struct.ath_hal*, i32) #1

declare dso_local %struct.TYPE_6__* @AH9300(%struct.ath_hal*) #1

declare dso_local i32 @OS_DELAY(i32) #1

declare dso_local i32 @ar9300_set_reset_power_on(%struct.ath_hal*) #1

declare dso_local i32 @ar9300_set_reset(%struct.ath_hal*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
