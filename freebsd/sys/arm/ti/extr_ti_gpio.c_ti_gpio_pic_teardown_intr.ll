; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_gpio.c_ti_gpio_pic_teardown_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_gpio.c_ti_gpio_pic_teardown_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_irqsrc = type { i64 }
%struct.resource = type { i32 }
%struct.intr_map_data = type { i32 }
%struct.ti_gpio_softc = type { i32 }
%struct.ti_gpio_irqsrc = type { i32 }

@GPIO_INTR_CONFORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.intr_irqsrc*, %struct.resource*, %struct.intr_map_data*)* @ti_gpio_pic_teardown_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_gpio_pic_teardown_intr(i32 %0, %struct.intr_irqsrc* %1, %struct.resource* %2, %struct.intr_map_data* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.intr_irqsrc*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca %struct.intr_map_data*, align 8
  %9 = alloca %struct.ti_gpio_softc*, align 8
  %10 = alloca %struct.ti_gpio_irqsrc*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.intr_irqsrc* %1, %struct.intr_irqsrc** %6, align 8
  store %struct.resource* %2, %struct.resource** %7, align 8
  store %struct.intr_map_data* %3, %struct.intr_map_data** %8, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.ti_gpio_softc* @device_get_softc(i32 %11)
  store %struct.ti_gpio_softc* %12, %struct.ti_gpio_softc** %9, align 8
  %13 = load %struct.intr_irqsrc*, %struct.intr_irqsrc** %6, align 8
  %14 = bitcast %struct.intr_irqsrc* %13 to %struct.ti_gpio_irqsrc*
  store %struct.ti_gpio_irqsrc* %14, %struct.ti_gpio_irqsrc** %10, align 8
  %15 = load %struct.intr_irqsrc*, %struct.intr_irqsrc** %6, align 8
  %16 = getelementptr inbounds %struct.intr_irqsrc, %struct.intr_irqsrc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %4
  %20 = load %struct.ti_gpio_softc*, %struct.ti_gpio_softc** %9, align 8
  %21 = load %struct.ti_gpio_irqsrc*, %struct.ti_gpio_irqsrc** %10, align 8
  %22 = load i32, i32* @GPIO_INTR_CONFORM, align 4
  %23 = call i32 @ti_gpio_pic_config_intr(%struct.ti_gpio_softc* %20, %struct.ti_gpio_irqsrc* %21, i32 %22)
  br label %24

24:                                               ; preds = %19, %4
  ret i32 0
}

declare dso_local %struct.ti_gpio_softc* @device_get_softc(i32) #1

declare dso_local i32 @ti_gpio_pic_config_intr(%struct.ti_gpio_softc*, %struct.ti_gpio_irqsrc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
