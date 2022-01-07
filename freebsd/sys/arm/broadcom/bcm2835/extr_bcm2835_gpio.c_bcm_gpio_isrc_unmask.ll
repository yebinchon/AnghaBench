; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_gpio.c_bcm_gpio_isrc_unmask.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_gpio.c_bcm_gpio_isrc_unmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_gpio_softc = type { i32 }
%struct.bcm_gpio_irqsrc = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm_gpio_softc*, %struct.bcm_gpio_irqsrc*)* @bcm_gpio_isrc_unmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_gpio_isrc_unmask(%struct.bcm_gpio_softc* %0, %struct.bcm_gpio_irqsrc* %1) #0 {
  %3 = alloca %struct.bcm_gpio_softc*, align 8
  %4 = alloca %struct.bcm_gpio_irqsrc*, align 8
  %5 = alloca i32, align 4
  store %struct.bcm_gpio_softc* %0, %struct.bcm_gpio_softc** %3, align 8
  store %struct.bcm_gpio_irqsrc* %1, %struct.bcm_gpio_irqsrc** %4, align 8
  %6 = load %struct.bcm_gpio_irqsrc*, %struct.bcm_gpio_irqsrc** %4, align 8
  %7 = getelementptr inbounds %struct.bcm_gpio_irqsrc, %struct.bcm_gpio_irqsrc* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @BCM_GPIO_BANK(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %3, align 8
  %11 = call i32 @BCM_GPIO_LOCK(%struct.bcm_gpio_softc* %10)
  %12 = load %struct.bcm_gpio_irqsrc*, %struct.bcm_gpio_irqsrc** %4, align 8
  %13 = getelementptr inbounds %struct.bcm_gpio_irqsrc, %struct.bcm_gpio_irqsrc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %62 [
    i32 128, label %15
    i32 129, label %23
    i32 130, label %31
    i32 131, label %39
    i32 132, label %47
  ]

15:                                               ; preds = %2
  %16 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %3, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @BCM_GPIO_GPLEN(i32 %17)
  %19 = load %struct.bcm_gpio_irqsrc*, %struct.bcm_gpio_irqsrc** %4, align 8
  %20 = getelementptr inbounds %struct.bcm_gpio_irqsrc, %struct.bcm_gpio_irqsrc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @BCM_GPIO_SET_BITS(%struct.bcm_gpio_softc* %16, i32 %18, i32 %21)
  br label %62

23:                                               ; preds = %2
  %24 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %3, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @BCM_GPIO_GPHEN(i32 %25)
  %27 = load %struct.bcm_gpio_irqsrc*, %struct.bcm_gpio_irqsrc** %4, align 8
  %28 = getelementptr inbounds %struct.bcm_gpio_irqsrc, %struct.bcm_gpio_irqsrc* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @BCM_GPIO_SET_BITS(%struct.bcm_gpio_softc* %24, i32 %26, i32 %29)
  br label %62

31:                                               ; preds = %2
  %32 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %3, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @BCM_GPIO_GPREN(i32 %33)
  %35 = load %struct.bcm_gpio_irqsrc*, %struct.bcm_gpio_irqsrc** %4, align 8
  %36 = getelementptr inbounds %struct.bcm_gpio_irqsrc, %struct.bcm_gpio_irqsrc* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @BCM_GPIO_SET_BITS(%struct.bcm_gpio_softc* %32, i32 %34, i32 %37)
  br label %62

39:                                               ; preds = %2
  %40 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %3, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @BCM_GPIO_GPFEN(i32 %41)
  %43 = load %struct.bcm_gpio_irqsrc*, %struct.bcm_gpio_irqsrc** %4, align 8
  %44 = getelementptr inbounds %struct.bcm_gpio_irqsrc, %struct.bcm_gpio_irqsrc* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @BCM_GPIO_SET_BITS(%struct.bcm_gpio_softc* %40, i32 %42, i32 %45)
  br label %62

47:                                               ; preds = %2
  %48 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %3, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @BCM_GPIO_GPREN(i32 %49)
  %51 = load %struct.bcm_gpio_irqsrc*, %struct.bcm_gpio_irqsrc** %4, align 8
  %52 = getelementptr inbounds %struct.bcm_gpio_irqsrc, %struct.bcm_gpio_irqsrc* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @BCM_GPIO_SET_BITS(%struct.bcm_gpio_softc* %48, i32 %50, i32 %53)
  %55 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %3, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @BCM_GPIO_GPFEN(i32 %56)
  %58 = load %struct.bcm_gpio_irqsrc*, %struct.bcm_gpio_irqsrc** %4, align 8
  %59 = getelementptr inbounds %struct.bcm_gpio_irqsrc, %struct.bcm_gpio_irqsrc* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @BCM_GPIO_SET_BITS(%struct.bcm_gpio_softc* %55, i32 %57, i32 %60)
  br label %62

62:                                               ; preds = %2, %47, %39, %31, %23, %15
  %63 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %3, align 8
  %64 = call i32 @BCM_GPIO_UNLOCK(%struct.bcm_gpio_softc* %63)
  ret void
}

declare dso_local i32 @BCM_GPIO_BANK(i32) #1

declare dso_local i32 @BCM_GPIO_LOCK(%struct.bcm_gpio_softc*) #1

declare dso_local i32 @BCM_GPIO_SET_BITS(%struct.bcm_gpio_softc*, i32, i32) #1

declare dso_local i32 @BCM_GPIO_GPLEN(i32) #1

declare dso_local i32 @BCM_GPIO_GPHEN(i32) #1

declare dso_local i32 @BCM_GPIO_GPREN(i32) #1

declare dso_local i32 @BCM_GPIO_GPFEN(i32) #1

declare dso_local i32 @BCM_GPIO_UNLOCK(%struct.bcm_gpio_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
