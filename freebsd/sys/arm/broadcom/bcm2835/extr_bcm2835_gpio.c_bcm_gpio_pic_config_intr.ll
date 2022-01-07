; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_gpio.c_bcm_gpio_pic_config_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_gpio.c_bcm_gpio_pic_config_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_gpio_softc = type { i32 }
%struct.bcm_gpio_irqsrc = type { i64, i32, i32 }

@GPIO_INTR_EDGE_RISING = common dso_local global i64 0, align 8
@GPIO_INTR_EDGE_BOTH = common dso_local global i64 0, align 8
@GPIO_INTR_EDGE_FALLING = common dso_local global i64 0, align 8
@GPIO_INTR_LEVEL_HIGH = common dso_local global i64 0, align 8
@GPIO_INTR_LEVEL_LOW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm_gpio_softc*, %struct.bcm_gpio_irqsrc*, i64)* @bcm_gpio_pic_config_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_gpio_pic_config_intr(%struct.bcm_gpio_softc* %0, %struct.bcm_gpio_irqsrc* %1, i64 %2) #0 {
  %4 = alloca %struct.bcm_gpio_softc*, align 8
  %5 = alloca %struct.bcm_gpio_irqsrc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.bcm_gpio_softc* %0, %struct.bcm_gpio_softc** %4, align 8
  store %struct.bcm_gpio_irqsrc* %1, %struct.bcm_gpio_irqsrc** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.bcm_gpio_irqsrc*, %struct.bcm_gpio_irqsrc** %5, align 8
  %9 = getelementptr inbounds %struct.bcm_gpio_irqsrc, %struct.bcm_gpio_irqsrc* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @BCM_GPIO_BANK(i32 %10)
  store i64 %11, i64* %7, align 8
  %12 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %4, align 8
  %13 = call i32 @BCM_GPIO_LOCK(%struct.bcm_gpio_softc* %12)
  %14 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %4, align 8
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @BCM_GPIO_GPREN(i64 %15)
  %17 = load %struct.bcm_gpio_irqsrc*, %struct.bcm_gpio_irqsrc** %5, align 8
  %18 = getelementptr inbounds %struct.bcm_gpio_irqsrc, %struct.bcm_gpio_irqsrc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @GPIO_INTR_EDGE_RISING, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %3
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* @GPIO_INTR_EDGE_BOTH, align 8
  %26 = icmp eq i64 %24, %25
  br label %27

27:                                               ; preds = %23, %3
  %28 = phi i1 [ true, %3 ], [ %26, %23 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @bcm_gpio_modify(%struct.bcm_gpio_softc* %14, i32 %16, i32 %19, i32 %29)
  %31 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %4, align 8
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @BCM_GPIO_GPFEN(i64 %32)
  %34 = load %struct.bcm_gpio_irqsrc*, %struct.bcm_gpio_irqsrc** %5, align 8
  %35 = getelementptr inbounds %struct.bcm_gpio_irqsrc, %struct.bcm_gpio_irqsrc* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* @GPIO_INTR_EDGE_FALLING, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %27
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* @GPIO_INTR_EDGE_BOTH, align 8
  %43 = icmp eq i64 %41, %42
  br label %44

44:                                               ; preds = %40, %27
  %45 = phi i1 [ true, %27 ], [ %43, %40 ]
  %46 = zext i1 %45 to i32
  %47 = call i32 @bcm_gpio_modify(%struct.bcm_gpio_softc* %31, i32 %33, i32 %36, i32 %46)
  %48 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %4, align 8
  %49 = load i64, i64* %7, align 8
  %50 = call i32 @BCM_GPIO_GPHEN(i64 %49)
  %51 = load %struct.bcm_gpio_irqsrc*, %struct.bcm_gpio_irqsrc** %5, align 8
  %52 = getelementptr inbounds %struct.bcm_gpio_irqsrc, %struct.bcm_gpio_irqsrc* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* @GPIO_INTR_LEVEL_HIGH, align 8
  %56 = icmp eq i64 %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @bcm_gpio_modify(%struct.bcm_gpio_softc* %48, i32 %50, i32 %53, i32 %57)
  %59 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %4, align 8
  %60 = load i64, i64* %7, align 8
  %61 = call i32 @BCM_GPIO_GPLEN(i64 %60)
  %62 = load %struct.bcm_gpio_irqsrc*, %struct.bcm_gpio_irqsrc** %5, align 8
  %63 = getelementptr inbounds %struct.bcm_gpio_irqsrc, %struct.bcm_gpio_irqsrc* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i64, i64* %6, align 8
  %66 = load i64, i64* @GPIO_INTR_LEVEL_LOW, align 8
  %67 = icmp eq i64 %65, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @bcm_gpio_modify(%struct.bcm_gpio_softc* %59, i32 %61, i32 %64, i32 %68)
  %70 = load i64, i64* %6, align 8
  %71 = load %struct.bcm_gpio_irqsrc*, %struct.bcm_gpio_irqsrc** %5, align 8
  %72 = getelementptr inbounds %struct.bcm_gpio_irqsrc, %struct.bcm_gpio_irqsrc* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  %73 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %4, align 8
  %74 = call i32 @BCM_GPIO_UNLOCK(%struct.bcm_gpio_softc* %73)
  ret void
}

declare dso_local i64 @BCM_GPIO_BANK(i32) #1

declare dso_local i32 @BCM_GPIO_LOCK(%struct.bcm_gpio_softc*) #1

declare dso_local i32 @bcm_gpio_modify(%struct.bcm_gpio_softc*, i32, i32, i32) #1

declare dso_local i32 @BCM_GPIO_GPREN(i64) #1

declare dso_local i32 @BCM_GPIO_GPFEN(i64) #1

declare dso_local i32 @BCM_GPIO_GPHEN(i64) #1

declare dso_local i32 @BCM_GPIO_GPLEN(i64) #1

declare dso_local i32 @BCM_GPIO_UNLOCK(%struct.bcm_gpio_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
