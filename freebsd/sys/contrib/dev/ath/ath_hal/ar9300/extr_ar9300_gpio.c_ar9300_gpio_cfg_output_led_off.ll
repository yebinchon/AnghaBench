; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_gpio.c_ar9300_gpio_cfg_output_led_off.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_gpio.c_ar9300_gpio_cfg_output_led_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ar9300_gpio_cfg_output_led_off.mux_signal_conversion_table = internal constant [20 x i32] [i32 139, i32 138, i32 137, i32 145, i32 144, i32 134, i32 130, i32 140, i32 141, i32 142, i32 143, i32 128, i32 129, i32 146, i32 147, i32 135, i32 136, i32 133, i32 132, i32 131], align 16
@AH_FALSE = common dso_local global i32 0, align 4
@AR_GPIO_OE_OUT = common dso_local global i32 0, align 4
@AR_GPIO_OE_OUT_DRV_NO = common dso_local global i32 0, align 4
@AR_GPIO_OE_OUT_DRV = common dso_local global i32 0, align 4
@AH_TRUE = common dso_local global i32 0, align 4
@ATH_GPIOFUNC_ANTCHAIN0 = common dso_local global i32 0, align 4
@ATH_GPIOFUNC_ANTCHAIN1 = common dso_local global i32 0, align 4
@ATH_GPIOFUNC_ANTCHAIN2 = common dso_local global i32 0, align 4
@ATH_GPIOPIN_ANTCHAIN0 = common dso_local global i32 0, align 4
@ATH_GPIOPIN_ANTCHAIN1 = common dso_local global i32 0, align 4
@ATH_GPIOPIN_ANTCHAIN2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar9300_gpio_cfg_output_led_off(%struct.ath_hal* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_hal*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %13 = call %struct.TYPE_4__* @AH_PRIVATE(%struct.ath_hal* %12)
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %11, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @HALASSERT(i32 %18)
  %20 = load i64, i64* %7, align 8
  %21 = trunc i64 %20 to i32
  %22 = call i32 @ARRAY_LENGTH(i32* getelementptr inbounds ([20 x i32], [20 x i32]* @ar9300_gpio_cfg_output_led_off.mux_signal_conversion_table, i64 0, i64 0))
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr inbounds [20 x i32], [20 x i32]* @ar9300_gpio_cfg_output_led_off.mux_signal_conversion_table, i64 0, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %8, align 4
  br label %30

28:                                               ; preds = %3
  %29 = load i32, i32* @AH_FALSE, align 4
  store i32 %29, i32* %4, align 4
  br label %58

30:                                               ; preds = %24
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %35 = call i64 @AR_SREV_WASP(%struct.ath_hal* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* @AH_FALSE, align 4
  store i32 %38, i32* %4, align 4
  br label %58

39:                                               ; preds = %33, %30
  %40 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @ar9300_gpio_cfg_output_mux(%struct.ath_hal* %40, i32 %41, i32 %42)
  %44 = load i32, i32* %6, align 4
  %45 = mul nsw i32 2, %44
  store i32 %45, i32* %9, align 4
  %46 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %47 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %48 = load i32, i32* @AR_GPIO_OE_OUT, align 4
  %49 = call i32 @AR_HOSTIF_REG(%struct.ath_hal* %47, i32 %48)
  %50 = load i32, i32* @AR_GPIO_OE_OUT_DRV_NO, align 4
  %51 = load i32, i32* %9, align 4
  %52 = shl i32 %50, %51
  %53 = load i32, i32* @AR_GPIO_OE_OUT_DRV, align 4
  %54 = load i32, i32* %9, align 4
  %55 = shl i32 %53, %54
  %56 = call i32 @OS_REG_RMW(%struct.ath_hal* %46, i32 %49, i32 %52, i32 %55)
  %57 = load i32, i32* @AH_TRUE, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %39, %37, %28
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @HALASSERT(i32) #1

declare dso_local %struct.TYPE_4__* @AH_PRIVATE(%struct.ath_hal*) #1

declare dso_local i32 @ARRAY_LENGTH(i32*) #1

declare dso_local i64 @AR_SREV_WASP(%struct.ath_hal*) #1

declare dso_local i32 @ar9300_gpio_cfg_output_mux(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @OS_REG_RMW(%struct.ath_hal*, i32, i32, i32) #1

declare dso_local i32 @AR_HOSTIF_REG(%struct.ath_hal*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
