; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_gpio.c_ar9300_gpio_cfg_input.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_gpio.c_ar9300_gpio_cfg_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@AR9382_GPIO_PIN_8_RESERVED = common dso_local global i32 0, align 4
@AR9382_MAX_GPIO_INPUT_PIN_NUM = common dso_local global i32 0, align 4
@AH_FALSE = common dso_local global i32 0, align 4
@AR9382_MAX_JTAG_GPIO_PIN_NUM = common dso_local global i32 0, align 4
@AR_GPIO_INPUT_EN_VAL = common dso_local global i32 0, align 4
@AR_GPIO_JTAG_DISABLE = common dso_local global i32 0, align 4
@AR_GPIO_OE_OUT = common dso_local global i32 0, align 4
@AR_GPIO_OE_OUT_DRV_NO = common dso_local global i32 0, align 4
@AR_GPIO_OE_OUT_DRV = common dso_local global i32 0, align 4
@AH_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar9300_gpio_cfg_input(%struct.ath_hal* %0, i32 %1) #0 {
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
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @AR9382_MAX_GPIO_INPUT_PIN_NUM, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19, %2
  %24 = load i32, i32* @AH_FALSE, align 4
  store i32 %24, i32* %3, align 4
  br label %51

25:                                               ; preds = %19
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @AR9382_MAX_JTAG_GPIO_PIN_NUM, align 4
  %28 = icmp sle i32 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %25
  %30 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %31 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %32 = load i32, i32* @AR_GPIO_INPUT_EN_VAL, align 4
  %33 = call i32 @AR_HOSTIF_REG(%struct.ath_hal* %31, i32 %32)
  %34 = load i32, i32* @AR_GPIO_JTAG_DISABLE, align 4
  %35 = call i32 @OS_REG_SET_BIT(%struct.ath_hal* %30, i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %29, %25
  %37 = load i32, i32* %5, align 4
  %38 = mul nsw i32 2, %37
  store i32 %38, i32* %6, align 4
  %39 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %40 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %41 = load i32, i32* @AR_GPIO_OE_OUT, align 4
  %42 = call i32 @AR_HOSTIF_REG(%struct.ath_hal* %40, i32 %41)
  %43 = load i32, i32* @AR_GPIO_OE_OUT_DRV_NO, align 4
  %44 = load i32, i32* %6, align 4
  %45 = shl i32 %43, %44
  %46 = load i32, i32* @AR_GPIO_OE_OUT_DRV, align 4
  %47 = load i32, i32* %6, align 4
  %48 = shl i32 %46, %47
  %49 = call i32 @OS_REG_RMW(%struct.ath_hal* %39, i32 %42, i32 %45, i32 %48)
  %50 = load i32, i32* @AH_TRUE, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %36, %23
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @HALASSERT(i32) #1

declare dso_local %struct.TYPE_4__* @AH_PRIVATE(%struct.ath_hal*) #1

declare dso_local i32 @OS_REG_SET_BIT(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @AR_HOSTIF_REG(%struct.ath_hal*, i32) #1

declare dso_local i32 @OS_REG_RMW(%struct.ath_hal*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
