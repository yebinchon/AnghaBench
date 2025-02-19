; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_radio.c_ar9300_rf_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_radio.c_ar9300_rf_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ath_hal_9300 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@ar9300_set_channel = common dso_local global i32 0, align 4
@ar9300_get_chip_power_limits = common dso_local global i32 0, align 4
@HAL_OK = common dso_local global i32 0, align 4
@AH_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar9300_rf_attach(%struct.ath_hal* %0, i32* %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ath_hal_9300*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %7 = call %struct.ath_hal_9300* @AH9300(%struct.ath_hal* %6)
  store %struct.ath_hal_9300* %7, %struct.ath_hal_9300** %5, align 8
  %8 = load i32, i32* @ar9300_set_channel, align 4
  %9 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %5, align 8
  %10 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  store i32 %8, i32* %11, align 4
  %12 = load i32, i32* @ar9300_get_chip_power_limits, align 4
  %13 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %5, align 8
  %14 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 %12, i32* %15, align 4
  %16 = load i32, i32* @HAL_OK, align 4
  %17 = load i32*, i32** %4, align 8
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @AH_TRUE, align 4
  ret i32 %18
}

declare dso_local %struct.ath_hal_9300* @AH9300(%struct.ath_hal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
