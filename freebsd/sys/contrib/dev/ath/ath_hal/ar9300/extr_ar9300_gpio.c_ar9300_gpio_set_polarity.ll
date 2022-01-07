; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_gpio.c_ar9300_gpio_set_polarity.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_gpio.c_ar9300_gpio_set_polarity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@AR_GPIO_INTR_POL = common dso_local global i32 0, align 4
@AR_INTR_SYNC_CAUSE_CLR = common dso_local global i32 0, align 4
@AR_INTR_SYNC_ENABLE_GPIO_S = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar9300_gpio_set_polarity(%struct.ath_hal* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ath_hal*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %9 = call %struct.TYPE_4__* @AH_PRIVATE(%struct.ath_hal* %8)
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = shl i32 1, %12
  %14 = sub nsw i32 %13, 1
  store i32 %14, i32* %7, align 4
  %15 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %16 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %17 = load i32, i32* @AR_GPIO_INTR_POL, align 4
  %18 = call i32 @AR_HOSTIF_REG(%struct.ath_hal* %16, i32 %17)
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %19, %20
  %22 = call i32 @OS_REG_WRITE(%struct.ath_hal* %15, i32 %18, i32 %21)
  %23 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %24 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %25 = load i32, i32* @AR_INTR_SYNC_CAUSE_CLR, align 4
  %26 = call i32 @AR_HOSTIF_REG(%struct.ath_hal* %24, i32 %25)
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @AR_INTR_SYNC_ENABLE_GPIO_S, align 4
  %29 = shl i32 %27, %28
  %30 = call i32 @OS_REG_WRITE(%struct.ath_hal* %23, i32 %26, i32 %29)
  %31 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %32 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %33 = load i32, i32* @AR_INTR_SYNC_CAUSE_CLR, align 4
  %34 = call i32 @AR_HOSTIF_REG(%struct.ath_hal* %32, i32 %33)
  %35 = call i32 @OS_REG_READ(%struct.ath_hal* %31, i32 %34)
  ret void
}

declare dso_local %struct.TYPE_4__* @AH_PRIVATE(%struct.ath_hal*) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @AR_HOSTIF_REG(%struct.ath_hal*, i32) #1

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
