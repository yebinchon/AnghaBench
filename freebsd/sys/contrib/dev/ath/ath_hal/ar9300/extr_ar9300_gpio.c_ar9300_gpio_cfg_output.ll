; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_gpio.c_ar9300_gpio_cfg_output.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_gpio.c_ar9300_gpio_cfg_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ar9300_gpio_cfg_output.mux_signal_conversion_table = internal constant [21 x i32] [i32 140, i32 139, i32 138, i32 146, i32 145, i32 135, i32 130, i32 141, i32 142, i32 143, i32 144, i32 128, i32 129, i32 147, i32 148, i32 136, i32 137, i32 134, i32 133, i32 132, i32 131], align 16
@AR9382_GPIO_PIN_8_RESERVED = common dso_local global i32 0, align 4
@AR9382_GPIO_9_INPUT_ONLY = common dso_local global i32 0, align 4
@AH_FALSE = common dso_local global i32 0, align 4
@AR9382_MAX_JTAG_GPIO_PIN_NUM = common dso_local global i32 0, align 4
@AR_GPIO_INPUT_EN_VAL = common dso_local global i32 0, align 4
@AR_GPIO_JTAG_DISABLE = common dso_local global i32 0, align 4
@AH_TRUE = common dso_local global i32 0, align 4
@AR_GPIO_OE_OUT = common dso_local global i32 0, align 4
@AR_GPIO_OE_OUT_DRV_ALL = common dso_local global i32 0, align 4
@AR_GPIO_OE_OUT_DRV = common dso_local global i32 0, align 4
@ATH_GPIOFUNC_ANTCHAIN0 = common dso_local global i32 0, align 4
@ATH_GPIOFUNC_ANTCHAIN1 = common dso_local global i32 0, align 4
@ATH_GPIOFUNC_ANTCHAIN2 = common dso_local global i32 0, align 4
@ATH_GPIOFUNC_ROUTE_SWCOM3 = common dso_local global i32 0, align 4
@ATH_GPIOPIN_ANTCHAIN0 = common dso_local global i32 0, align 4
@ATH_GPIOPIN_ANTCHAIN1 = common dso_local global i32 0, align 4
@ATH_GPIOPIN_ANTCHAIN2 = common dso_local global i32 0, align 4
@ATH_GPIOPIN_ROUTE_SWCOM3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar9300_gpio_cfg_output(%struct.ath_hal* %0, i32 %1, i64 %2) #0 {
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
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @AR9382_GPIO_PIN_8_RESERVED, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @AR9382_GPIO_9_INPUT_ONLY, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23, %3
  %28 = load i32, i32* @AH_FALSE, align 4
  store i32 %28, i32* %4, align 4
  br label %84

29:                                               ; preds = %23
  %30 = load i64, i64* %7, align 8
  %31 = trunc i64 %30 to i32
  %32 = call i32 @ARRAY_LENGTH(i32* getelementptr inbounds ([21 x i32], [21 x i32]* @ar9300_gpio_cfg_output.mux_signal_conversion_table, i64 0, i64 0))
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i64, i64* %7, align 8
  %36 = getelementptr inbounds [21 x i32], [21 x i32]* @ar9300_gpio_cfg_output.mux_signal_conversion_table, i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %8, align 4
  br label %40

38:                                               ; preds = %29
  %39 = load i32, i32* @AH_FALSE, align 4
  store i32 %39, i32* %4, align 4
  br label %84

40:                                               ; preds = %34
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @AR9382_MAX_JTAG_GPIO_PIN_NUM, align 4
  %43 = icmp sle i32 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %40
  %45 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %46 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %47 = load i32, i32* @AR_GPIO_INPUT_EN_VAL, align 4
  %48 = call i32 @AR_HOSTIF_REG(%struct.ath_hal* %46, i32 %47)
  %49 = load i32, i32* @AR_GPIO_JTAG_DISABLE, align 4
  %50 = call i32 @OS_REG_SET_BIT(%struct.ath_hal* %45, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %44, %40
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %51
  %55 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %56 = call i64 @AR_SREV_WASP(%struct.ath_hal* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %60 = call i64 @AR_SREV_SCORPION(%struct.ath_hal* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %58, %54
  %63 = load i32, i32* @AH_TRUE, align 4
  store i32 %63, i32* %4, align 4
  br label %84

64:                                               ; preds = %58, %51
  %65 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @ar9300_gpio_cfg_output_mux(%struct.ath_hal* %65, i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %64
  %70 = load i32, i32* %6, align 4
  %71 = mul nsw i32 2, %70
  store i32 %71, i32* %9, align 4
  %72 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %73 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %74 = load i32, i32* @AR_GPIO_OE_OUT, align 4
  %75 = call i32 @AR_HOSTIF_REG(%struct.ath_hal* %73, i32 %74)
  %76 = load i32, i32* @AR_GPIO_OE_OUT_DRV_ALL, align 4
  %77 = load i32, i32* %9, align 4
  %78 = shl i32 %76, %77
  %79 = load i32, i32* @AR_GPIO_OE_OUT_DRV, align 4
  %80 = load i32, i32* %9, align 4
  %81 = shl i32 %79, %80
  %82 = call i32 @OS_REG_RMW(%struct.ath_hal* %72, i32 %75, i32 %78, i32 %81)
  %83 = load i32, i32* @AH_TRUE, align 4
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %69, %62, %38, %27
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @HALASSERT(i32) #1

declare dso_local %struct.TYPE_4__* @AH_PRIVATE(%struct.ath_hal*) #1

declare dso_local i32 @ARRAY_LENGTH(i32*) #1

declare dso_local i32 @OS_REG_SET_BIT(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @AR_HOSTIF_REG(%struct.ath_hal*, i32) #1

declare dso_local i64 @AR_SREV_WASP(%struct.ath_hal*) #1

declare dso_local i64 @AR_SREV_SCORPION(%struct.ath_hal*) #1

declare dso_local i32 @ar9300_gpio_cfg_output_mux(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @OS_REG_RMW(%struct.ath_hal*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
