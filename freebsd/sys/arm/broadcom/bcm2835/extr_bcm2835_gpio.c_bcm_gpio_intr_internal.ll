; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_gpio.c_bcm_gpio_intr_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_gpio.c_bcm_gpio_intr_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.bcm_gpio_softc = type { i32, %struct.bcm_gpio_irqsrc* }
%struct.bcm_gpio_irqsrc = type { i32, i32 }

@BCM_GPIO_PINS_PER_BANK = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"Stray irq %u disabled\0A\00", align 1
@FILTER_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm_gpio_softc*, i32)* @bcm_gpio_intr_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_gpio_intr_internal(%struct.bcm_gpio_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.bcm_gpio_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.bcm_gpio_irqsrc*, align 8
  %7 = alloca i32, align 4
  store %struct.bcm_gpio_softc* %0, %struct.bcm_gpio_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @BCM_GPIO_GPEDS(i32 %9)
  %11 = call i32 @BCM_GPIO_READ(%struct.bcm_gpio_softc* %8, i32 %10)
  store i32 %11, i32* %7, align 4
  br label %12

12:                                               ; preds = %61, %2
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %68

15:                                               ; preds = %12
  %16 = load i32, i32* @BCM_GPIO_PINS_PER_BANK, align 4
  %17 = load i32, i32* %4, align 4
  %18 = mul nsw i32 %16, %17
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @ffs(i32 %19)
  %21 = add nsw i32 %18, %20
  %22 = sub nsw i32 %21, 1
  store i32 %22, i32* %5, align 4
  %23 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %3, align 8
  %24 = getelementptr inbounds %struct.bcm_gpio_softc, %struct.bcm_gpio_softc* %23, i32 0, i32 1
  %25 = load %struct.bcm_gpio_irqsrc*, %struct.bcm_gpio_irqsrc** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.bcm_gpio_irqsrc, %struct.bcm_gpio_irqsrc* %25, i64 %27
  store %struct.bcm_gpio_irqsrc* %28, %struct.bcm_gpio_irqsrc** %6, align 8
  %29 = load %struct.bcm_gpio_irqsrc*, %struct.bcm_gpio_irqsrc** %6, align 8
  %30 = call i64 @bcm_gpio_isrc_is_level(%struct.bcm_gpio_irqsrc* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %15
  %33 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %3, align 8
  %34 = load %struct.bcm_gpio_irqsrc*, %struct.bcm_gpio_irqsrc** %6, align 8
  %35 = call i32 @bcm_gpio_isrc_eoi(%struct.bcm_gpio_softc* %33, %struct.bcm_gpio_irqsrc* %34)
  br label %36

36:                                               ; preds = %32, %15
  %37 = load %struct.bcm_gpio_irqsrc*, %struct.bcm_gpio_irqsrc** %6, align 8
  %38 = getelementptr inbounds %struct.bcm_gpio_irqsrc, %struct.bcm_gpio_irqsrc* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curthread, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @intr_isrc_dispatch(i32* %38, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %61

44:                                               ; preds = %36
  %45 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %3, align 8
  %46 = load %struct.bcm_gpio_irqsrc*, %struct.bcm_gpio_irqsrc** %6, align 8
  %47 = call i32 @bcm_gpio_isrc_mask(%struct.bcm_gpio_softc* %45, %struct.bcm_gpio_irqsrc* %46)
  %48 = load %struct.bcm_gpio_irqsrc*, %struct.bcm_gpio_irqsrc** %6, align 8
  %49 = call i64 @bcm_gpio_isrc_is_level(%struct.bcm_gpio_irqsrc* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %3, align 8
  %53 = load %struct.bcm_gpio_irqsrc*, %struct.bcm_gpio_irqsrc** %6, align 8
  %54 = call i32 @bcm_gpio_isrc_eoi(%struct.bcm_gpio_softc* %52, %struct.bcm_gpio_irqsrc* %53)
  br label %55

55:                                               ; preds = %51, %44
  %56 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %3, align 8
  %57 = getelementptr inbounds %struct.bcm_gpio_softc, %struct.bcm_gpio_softc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @device_printf(i32 %58, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %55, %36
  %62 = load %struct.bcm_gpio_irqsrc*, %struct.bcm_gpio_irqsrc** %6, align 8
  %63 = getelementptr inbounds %struct.bcm_gpio_irqsrc, %struct.bcm_gpio_irqsrc* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %7, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %7, align 4
  br label %12

68:                                               ; preds = %12
  %69 = load i32, i32* @FILTER_HANDLED, align 4
  ret i32 %69
}

declare dso_local i32 @BCM_GPIO_READ(%struct.bcm_gpio_softc*, i32) #1

declare dso_local i32 @BCM_GPIO_GPEDS(i32) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i64 @bcm_gpio_isrc_is_level(%struct.bcm_gpio_irqsrc*) #1

declare dso_local i32 @bcm_gpio_isrc_eoi(%struct.bcm_gpio_softc*, %struct.bcm_gpio_irqsrc*) #1

declare dso_local i64 @intr_isrc_dispatch(i32*, i32) #1

declare dso_local i32 @bcm_gpio_isrc_mask(%struct.bcm_gpio_softc*, %struct.bcm_gpio_irqsrc*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
