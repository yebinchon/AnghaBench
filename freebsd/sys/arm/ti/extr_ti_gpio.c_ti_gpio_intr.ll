; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_gpio.c_ti_gpio_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_gpio.c_ti_gpio_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.trapframe* }
%struct.trapframe = type { i32 }
%struct.ti_gpio_softc = type { i64, i32, %struct.ti_gpio_irqsrc* }
%struct.ti_gpio_irqsrc = type { i32, i32 }

@curthread = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"Stray irq %u disabled\0A\00", align 1
@FILTER_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @ti_gpio_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_gpio_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ti_gpio_softc*, align 8
  %6 = alloca %struct.trapframe*, align 8
  %7 = alloca %struct.ti_gpio_irqsrc*, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.ti_gpio_softc*
  store %struct.ti_gpio_softc* %9, %struct.ti_gpio_softc** %5, align 8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curthread, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.trapframe*, %struct.trapframe** %11, align 8
  store %struct.trapframe* %12, %struct.trapframe** %6, align 8
  %13 = load %struct.ti_gpio_softc*, %struct.ti_gpio_softc** %5, align 8
  %14 = call i32 @ti_gpio_intr_status(%struct.ti_gpio_softc* %13)
  store i32 %14, i32* %4, align 4
  store i64 0, i64* %3, align 8
  br label %15

15:                                               ; preds = %66, %1
  %16 = load i64, i64* %3, align 8
  %17 = load %struct.ti_gpio_softc*, %struct.ti_gpio_softc** %5, align 8
  %18 = getelementptr inbounds %struct.ti_gpio_softc, %struct.ti_gpio_softc* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ult i64 %16, %19
  br i1 %20, label %21, label %69

21:                                               ; preds = %15
  %22 = load %struct.ti_gpio_softc*, %struct.ti_gpio_softc** %5, align 8
  %23 = getelementptr inbounds %struct.ti_gpio_softc, %struct.ti_gpio_softc* %22, i32 0, i32 2
  %24 = load %struct.ti_gpio_irqsrc*, %struct.ti_gpio_irqsrc** %23, align 8
  %25 = load i64, i64* %3, align 8
  %26 = getelementptr inbounds %struct.ti_gpio_irqsrc, %struct.ti_gpio_irqsrc* %24, i64 %25
  store %struct.ti_gpio_irqsrc* %26, %struct.ti_gpio_irqsrc** %7, align 8
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.ti_gpio_irqsrc*, %struct.ti_gpio_irqsrc** %7, align 8
  %29 = getelementptr inbounds %struct.ti_gpio_irqsrc, %struct.ti_gpio_irqsrc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %27, %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %21
  br label %66

34:                                               ; preds = %21
  %35 = load %struct.ti_gpio_irqsrc*, %struct.ti_gpio_irqsrc** %7, align 8
  %36 = call i64 @ti_gpio_isrc_is_level(%struct.ti_gpio_irqsrc* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load %struct.ti_gpio_softc*, %struct.ti_gpio_softc** %5, align 8
  %40 = load %struct.ti_gpio_irqsrc*, %struct.ti_gpio_irqsrc** %7, align 8
  %41 = call i32 @ti_gpio_isrc_eoi(%struct.ti_gpio_softc* %39, %struct.ti_gpio_irqsrc* %40)
  br label %42

42:                                               ; preds = %38, %34
  %43 = load %struct.ti_gpio_irqsrc*, %struct.ti_gpio_irqsrc** %7, align 8
  %44 = getelementptr inbounds %struct.ti_gpio_irqsrc, %struct.ti_gpio_irqsrc* %43, i32 0, i32 1
  %45 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %46 = call i64 @intr_isrc_dispatch(i32* %44, %struct.trapframe* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %65

48:                                               ; preds = %42
  %49 = load %struct.ti_gpio_softc*, %struct.ti_gpio_softc** %5, align 8
  %50 = load %struct.ti_gpio_irqsrc*, %struct.ti_gpio_irqsrc** %7, align 8
  %51 = call i32 @ti_gpio_isrc_mask(%struct.ti_gpio_softc* %49, %struct.ti_gpio_irqsrc* %50)
  %52 = load %struct.ti_gpio_irqsrc*, %struct.ti_gpio_irqsrc** %7, align 8
  %53 = call i64 @ti_gpio_isrc_is_level(%struct.ti_gpio_irqsrc* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %48
  %56 = load %struct.ti_gpio_softc*, %struct.ti_gpio_softc** %5, align 8
  %57 = load %struct.ti_gpio_irqsrc*, %struct.ti_gpio_irqsrc** %7, align 8
  %58 = call i32 @ti_gpio_isrc_eoi(%struct.ti_gpio_softc* %56, %struct.ti_gpio_irqsrc* %57)
  br label %59

59:                                               ; preds = %55, %48
  %60 = load %struct.ti_gpio_softc*, %struct.ti_gpio_softc** %5, align 8
  %61 = getelementptr inbounds %struct.ti_gpio_softc, %struct.ti_gpio_softc* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i64, i64* %3, align 8
  %64 = call i32 @device_printf(i32 %62, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %63)
  br label %65

65:                                               ; preds = %59, %42
  br label %66

66:                                               ; preds = %65, %33
  %67 = load i64, i64* %3, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %3, align 8
  br label %15

69:                                               ; preds = %15
  %70 = load i32, i32* @FILTER_HANDLED, align 4
  ret i32 %70
}

declare dso_local i32 @ti_gpio_intr_status(%struct.ti_gpio_softc*) #1

declare dso_local i64 @ti_gpio_isrc_is_level(%struct.ti_gpio_irqsrc*) #1

declare dso_local i32 @ti_gpio_isrc_eoi(%struct.ti_gpio_softc*, %struct.ti_gpio_irqsrc*) #1

declare dso_local i64 @intr_isrc_dispatch(i32*, %struct.trapframe*) #1

declare dso_local i32 @ti_gpio_isrc_mask(%struct.ti_gpio_softc*, %struct.ti_gpio_irqsrc*) #1

declare dso_local i32 @device_printf(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
