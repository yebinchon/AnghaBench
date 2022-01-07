; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_gpio.c_bcm_gpio_pic_map_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_gpio.c_bcm_gpio_pic_map_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_map_data = type { i32 }
%struct.intr_irqsrc = type { i32 }
%struct.bcm_gpio_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.intr_irqsrc }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.intr_map_data*, %struct.intr_irqsrc**)* @bcm_gpio_pic_map_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_gpio_pic_map_intr(i32 %0, %struct.intr_map_data* %1, %struct.intr_irqsrc** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intr_map_data*, align 8
  %6 = alloca %struct.intr_irqsrc**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.bcm_gpio_softc*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.intr_map_data* %1, %struct.intr_map_data** %5, align 8
  store %struct.intr_irqsrc** %2, %struct.intr_irqsrc*** %6, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.bcm_gpio_softc* @device_get_softc(i32 %10)
  store %struct.bcm_gpio_softc* %11, %struct.bcm_gpio_softc** %9, align 8
  %12 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %9, align 8
  %13 = load %struct.intr_map_data*, %struct.intr_map_data** %5, align 8
  %14 = call i32 @bcm_gpio_pic_map(%struct.bcm_gpio_softc* %12, %struct.intr_map_data* %13, i64* %8, i32* null)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %3
  %18 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %9, align 8
  %19 = getelementptr inbounds %struct.bcm_gpio_softc, %struct.bcm_gpio_softc* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i64, i64* %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.intr_irqsrc**, %struct.intr_irqsrc*** %6, align 8
  store %struct.intr_irqsrc* %23, %struct.intr_irqsrc** %24, align 8
  br label %25

25:                                               ; preds = %17, %3
  %26 = load i32, i32* %7, align 4
  ret i32 %26
}

declare dso_local %struct.bcm_gpio_softc* @device_get_softc(i32) #1

declare dso_local i32 @bcm_gpio_pic_map(%struct.bcm_gpio_softc*, %struct.intr_map_data*, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
