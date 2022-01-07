; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_gpio.c_ar9300_gpio_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_gpio.c_ar9300_gpio_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@AR9382_GPIO_PIN_8_RESERVED = common dso_local global i32 0, align 4
@AR9382_GPIO_9_INPUT_ONLY = common dso_local global i32 0, align 4
@AH_FALSE = common dso_local global i32 0, align 4
@AR_GPIO_OUT = common dso_local global i32 0, align 4
@AH_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar9300_gpio_set(%struct.ath_hal* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_hal*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %10 = call %struct.TYPE_4__* @AH_PRIVATE(%struct.ath_hal* %9)
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %8, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @HALASSERT(i32 %15)
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @AR9382_GPIO_PIN_8_RESERVED, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @AR9382_GPIO_9_INPUT_ONLY, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20, %3
  %25 = load i32, i32* @AH_FALSE, align 4
  store i32 %25, i32* %4, align 4
  br label %39

26:                                               ; preds = %20
  %27 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %28 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %29 = load i32, i32* @AR_GPIO_OUT, align 4
  %30 = call i32 @AR_HOSTIF_REG(%struct.ath_hal* %28, i32 %29)
  %31 = load i32, i32* %7, align 4
  %32 = and i32 %31, 1
  %33 = load i32, i32* %6, align 4
  %34 = shl i32 %32, %33
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @AR_GPIO_BIT(i32 %35)
  %37 = call i32 @OS_REG_RMW(%struct.ath_hal* %27, i32 %30, i32 %34, i32 %36)
  %38 = load i32, i32* @AH_TRUE, align 4
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %26, %24
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @HALASSERT(i32) #1

declare dso_local %struct.TYPE_4__* @AH_PRIVATE(%struct.ath_hal*) #1

declare dso_local i32 @OS_REG_RMW(%struct.ath_hal*, i32, i32, i32) #1

declare dso_local i32 @AR_HOSTIF_REG(%struct.ath_hal*, i32) #1

declare dso_local i32 @AR_GPIO_BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
