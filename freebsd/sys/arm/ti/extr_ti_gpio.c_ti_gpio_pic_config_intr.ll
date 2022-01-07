; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_gpio.c_ti_gpio_pic_config_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_gpio.c_ti_gpio_pic_config_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_gpio_softc = type { i32 }
%struct.ti_gpio_irqsrc = type { i64, i32 }

@TI_GPIO_RISINGDETECT = common dso_local global i32 0, align 4
@GPIO_INTR_EDGE_RISING = common dso_local global i64 0, align 8
@GPIO_INTR_EDGE_BOTH = common dso_local global i64 0, align 8
@TI_GPIO_FALLINGDETECT = common dso_local global i32 0, align 4
@GPIO_INTR_EDGE_FALLING = common dso_local global i64 0, align 8
@TI_GPIO_LEVELDETECT1 = common dso_local global i32 0, align 4
@GPIO_INTR_LEVEL_HIGH = common dso_local global i64 0, align 8
@TI_GPIO_LEVELDETECT0 = common dso_local global i32 0, align 4
@GPIO_INTR_LEVEL_LOW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ti_gpio_softc*, %struct.ti_gpio_irqsrc*, i64)* @ti_gpio_pic_config_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ti_gpio_pic_config_intr(%struct.ti_gpio_softc* %0, %struct.ti_gpio_irqsrc* %1, i64 %2) #0 {
  %4 = alloca %struct.ti_gpio_softc*, align 8
  %5 = alloca %struct.ti_gpio_irqsrc*, align 8
  %6 = alloca i64, align 8
  store %struct.ti_gpio_softc* %0, %struct.ti_gpio_softc** %4, align 8
  store %struct.ti_gpio_irqsrc* %1, %struct.ti_gpio_irqsrc** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.ti_gpio_softc*, %struct.ti_gpio_softc** %4, align 8
  %8 = call i32 @TI_GPIO_LOCK(%struct.ti_gpio_softc* %7)
  %9 = load %struct.ti_gpio_softc*, %struct.ti_gpio_softc** %4, align 8
  %10 = load i32, i32* @TI_GPIO_RISINGDETECT, align 4
  %11 = load %struct.ti_gpio_irqsrc*, %struct.ti_gpio_irqsrc** %5, align 8
  %12 = getelementptr inbounds %struct.ti_gpio_irqsrc, %struct.ti_gpio_irqsrc* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @GPIO_INTR_EDGE_RISING, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %3
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* @GPIO_INTR_EDGE_BOTH, align 8
  %20 = icmp eq i64 %18, %19
  br label %21

21:                                               ; preds = %17, %3
  %22 = phi i1 [ true, %3 ], [ %20, %17 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @ti_gpio_rwreg_modify(%struct.ti_gpio_softc* %9, i32 %10, i32 %13, i32 %23)
  %25 = load %struct.ti_gpio_softc*, %struct.ti_gpio_softc** %4, align 8
  %26 = load i32, i32* @TI_GPIO_FALLINGDETECT, align 4
  %27 = load %struct.ti_gpio_irqsrc*, %struct.ti_gpio_irqsrc** %5, align 8
  %28 = getelementptr inbounds %struct.ti_gpio_irqsrc, %struct.ti_gpio_irqsrc* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* @GPIO_INTR_EDGE_FALLING, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %21
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* @GPIO_INTR_EDGE_BOTH, align 8
  %36 = icmp eq i64 %34, %35
  br label %37

37:                                               ; preds = %33, %21
  %38 = phi i1 [ true, %21 ], [ %36, %33 ]
  %39 = zext i1 %38 to i32
  %40 = call i32 @ti_gpio_rwreg_modify(%struct.ti_gpio_softc* %25, i32 %26, i32 %29, i32 %39)
  %41 = load %struct.ti_gpio_softc*, %struct.ti_gpio_softc** %4, align 8
  %42 = load i32, i32* @TI_GPIO_LEVELDETECT1, align 4
  %43 = load %struct.ti_gpio_irqsrc*, %struct.ti_gpio_irqsrc** %5, align 8
  %44 = getelementptr inbounds %struct.ti_gpio_irqsrc, %struct.ti_gpio_irqsrc* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i64, i64* %6, align 8
  %47 = load i64, i64* @GPIO_INTR_LEVEL_HIGH, align 8
  %48 = icmp eq i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @ti_gpio_rwreg_modify(%struct.ti_gpio_softc* %41, i32 %42, i32 %45, i32 %49)
  %51 = load %struct.ti_gpio_softc*, %struct.ti_gpio_softc** %4, align 8
  %52 = load i32, i32* @TI_GPIO_LEVELDETECT0, align 4
  %53 = load %struct.ti_gpio_irqsrc*, %struct.ti_gpio_irqsrc** %5, align 8
  %54 = getelementptr inbounds %struct.ti_gpio_irqsrc, %struct.ti_gpio_irqsrc* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i64, i64* %6, align 8
  %57 = load i64, i64* @GPIO_INTR_LEVEL_LOW, align 8
  %58 = icmp eq i64 %56, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @ti_gpio_rwreg_modify(%struct.ti_gpio_softc* %51, i32 %52, i32 %55, i32 %59)
  %61 = load i64, i64* %6, align 8
  %62 = load %struct.ti_gpio_irqsrc*, %struct.ti_gpio_irqsrc** %5, align 8
  %63 = getelementptr inbounds %struct.ti_gpio_irqsrc, %struct.ti_gpio_irqsrc* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = load %struct.ti_gpio_softc*, %struct.ti_gpio_softc** %4, align 8
  %65 = call i32 @TI_GPIO_UNLOCK(%struct.ti_gpio_softc* %64)
  ret void
}

declare dso_local i32 @TI_GPIO_LOCK(%struct.ti_gpio_softc*) #1

declare dso_local i32 @ti_gpio_rwreg_modify(%struct.ti_gpio_softc*, i32, i32, i32) #1

declare dso_local i32 @TI_GPIO_UNLOCK(%struct.ti_gpio_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
