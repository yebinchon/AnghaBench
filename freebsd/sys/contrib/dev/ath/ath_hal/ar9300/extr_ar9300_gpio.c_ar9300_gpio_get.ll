; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_gpio.c_ar9300_gpio_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_gpio.c_ar9300_gpio_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@AR9382_GPIO_PIN_8_RESERVED = common dso_local global i32 0, align 4
@AR_GPIO_IN = common dso_local global i32 0, align 4
@AR_GPIO_IN_VAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar9300_gpio_get(%struct.ath_hal* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath_hal*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %9 = call %struct.TYPE_4__* @AH_PRIVATE(%struct.ath_hal* %8)
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp slt i32 %7, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @HALASSERT(i32 %14)
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @AR9382_GPIO_PIN_8_RESERVED, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %43

20:                                               ; preds = %2
  %21 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %22 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %23 = load i32, i32* @AR_GPIO_IN, align 4
  %24 = call i32 @AR_HOSTIF_REG(%struct.ath_hal* %22, i32 %23)
  %25 = call i32 @OS_REG_READ(%struct.ath_hal* %21, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %27 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %28 = load i32, i32* @AR_GPIO_IN, align 4
  %29 = call i32 @AR_HOSTIF_REG(%struct.ath_hal* %27, i32 %28)
  %30 = load i32, i32* %5, align 4
  %31 = shl i32 1, %30
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @AR_GPIO_BIT(i32 %32)
  %34 = call i32 @OS_REG_RMW(%struct.ath_hal* %26, i32 %29, i32 %31, i32 %33)
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @AR_GPIO_IN_VAL, align 4
  %37 = call i32 @MS(i32 %35, i32 %36)
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @AR_GPIO_BIT(i32 %38)
  %40 = and i32 %37, %39
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %20, %19
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @HALASSERT(i32) #1

declare dso_local %struct.TYPE_4__* @AH_PRIVATE(%struct.ath_hal*) #1

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i32) #1

declare dso_local i32 @AR_HOSTIF_REG(%struct.ath_hal*, i32) #1

declare dso_local i32 @OS_REG_RMW(%struct.ath_hal*, i32, i32, i32) #1

declare dso_local i32 @AR_GPIO_BIT(i32) #1

declare dso_local i32 @MS(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
