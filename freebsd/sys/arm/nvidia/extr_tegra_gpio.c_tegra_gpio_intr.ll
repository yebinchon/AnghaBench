; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_gpio.c_tegra_gpio_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_gpio.c_tegra_gpio_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.trapframe* }
%struct.trapframe = type { i32 }
%struct.tegra_gpio_softc = type { i32, %struct.tegra_gpio_irqsrc*, i32 }
%struct.tegra_gpio_irqsrc = type { i32 }
%struct.tegra_gpio_irq_cookie = type { i32, %struct.tegra_gpio_softc* }

@curthread = common dso_local global %struct.TYPE_2__* null, align 8
@GPIO_REGS_IN_BANK = common dso_local global i32 0, align 4
@GPIO_PINS_IN_REG = common dso_local global i32 0, align 4
@GPIO_INT_STA = common dso_local global i64 0, align 8
@GPIO_INT_ENB = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"Stray irq %u disabled\0A\00", align 1
@FILTER_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @tegra_gpio_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_gpio_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tegra_gpio_softc*, align 8
  %9 = alloca %struct.trapframe*, align 8
  %10 = alloca %struct.tegra_gpio_irqsrc*, align 8
  %11 = alloca %struct.tegra_gpio_irq_cookie*, align 8
  store i8* %0, i8** %2, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = bitcast i8* %12 to %struct.tegra_gpio_irq_cookie*
  store %struct.tegra_gpio_irq_cookie* %13, %struct.tegra_gpio_irq_cookie** %11, align 8
  %14 = load %struct.tegra_gpio_irq_cookie*, %struct.tegra_gpio_irq_cookie** %11, align 8
  %15 = getelementptr inbounds %struct.tegra_gpio_irq_cookie, %struct.tegra_gpio_irq_cookie* %14, i32 0, i32 1
  %16 = load %struct.tegra_gpio_softc*, %struct.tegra_gpio_softc** %15, align 8
  store %struct.tegra_gpio_softc* %16, %struct.tegra_gpio_softc** %8, align 8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curthread, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.trapframe*, %struct.trapframe** %18, align 8
  store %struct.trapframe* %19, %struct.trapframe** %9, align 8
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %110, %1
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @GPIO_REGS_IN_BANK, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %113

24:                                               ; preds = %20
  %25 = load %struct.tegra_gpio_irq_cookie*, %struct.tegra_gpio_irq_cookie** %11, align 8
  %26 = getelementptr inbounds %struct.tegra_gpio_irq_cookie, %struct.tegra_gpio_irq_cookie* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @GPIO_REGS_IN_BANK, align 4
  %29 = mul nsw i32 %27, %28
  %30 = load i32, i32* @GPIO_PINS_IN_REG, align 4
  %31 = mul nsw i32 %29, %30
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @GPIO_PINS_IN_REG, align 4
  %34 = mul nsw i32 %32, %33
  %35 = add nsw i32 %31, %34
  store i32 %35, i32* %7, align 4
  %36 = load %struct.tegra_gpio_softc*, %struct.tegra_gpio_softc** %8, align 8
  %37 = getelementptr inbounds %struct.tegra_gpio_softc, %struct.tegra_gpio_softc* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i64, i64* @GPIO_INT_STA, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i64 @GPIO_REGNUM(i32 %40)
  %42 = add nsw i64 %39, %41
  %43 = call i32 @bus_read_4(i32 %38, i64 %42)
  store i32 %43, i32* %6, align 4
  %44 = load %struct.tegra_gpio_softc*, %struct.tegra_gpio_softc** %8, align 8
  %45 = getelementptr inbounds %struct.tegra_gpio_softc, %struct.tegra_gpio_softc* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i64, i64* @GPIO_INT_ENB, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i64 @GPIO_REGNUM(i32 %48)
  %50 = add nsw i64 %47, %49
  %51 = call i32 @bus_read_4(i32 %46, i64 %50)
  %52 = load i32, i32* %6, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %54

54:                                               ; preds = %106, %24
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @GPIO_PINS_IN_REG, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %109

58:                                               ; preds = %54
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %5, align 4
  %61 = shl i32 1, %60
  %62 = and i32 %59, %61
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %106

65:                                               ; preds = %58
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %66, %67
  store i32 %68, i32* %3, align 4
  %69 = load %struct.tegra_gpio_softc*, %struct.tegra_gpio_softc** %8, align 8
  %70 = getelementptr inbounds %struct.tegra_gpio_softc, %struct.tegra_gpio_softc* %69, i32 0, i32 1
  %71 = load %struct.tegra_gpio_irqsrc*, %struct.tegra_gpio_irqsrc** %70, align 8
  %72 = load i32, i32* %3, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.tegra_gpio_irqsrc, %struct.tegra_gpio_irqsrc* %71, i64 %73
  store %struct.tegra_gpio_irqsrc* %74, %struct.tegra_gpio_irqsrc** %10, align 8
  %75 = load %struct.tegra_gpio_irqsrc*, %struct.tegra_gpio_irqsrc** %10, align 8
  %76 = call i64 @tegra_gpio_isrc_is_level(%struct.tegra_gpio_irqsrc* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %65
  %79 = load %struct.tegra_gpio_softc*, %struct.tegra_gpio_softc** %8, align 8
  %80 = load %struct.tegra_gpio_irqsrc*, %struct.tegra_gpio_irqsrc** %10, align 8
  %81 = call i32 @tegra_gpio_isrc_eoi(%struct.tegra_gpio_softc* %79, %struct.tegra_gpio_irqsrc* %80)
  br label %82

82:                                               ; preds = %78, %65
  %83 = load %struct.tegra_gpio_irqsrc*, %struct.tegra_gpio_irqsrc** %10, align 8
  %84 = getelementptr inbounds %struct.tegra_gpio_irqsrc, %struct.tegra_gpio_irqsrc* %83, i32 0, i32 0
  %85 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %86 = call i64 @intr_isrc_dispatch(i32* %84, %struct.trapframe* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %105

88:                                               ; preds = %82
  %89 = load %struct.tegra_gpio_softc*, %struct.tegra_gpio_softc** %8, align 8
  %90 = load %struct.tegra_gpio_irqsrc*, %struct.tegra_gpio_irqsrc** %10, align 8
  %91 = call i32 @tegra_gpio_isrc_mask(%struct.tegra_gpio_softc* %89, %struct.tegra_gpio_irqsrc* %90, i32 0)
  %92 = load %struct.tegra_gpio_irqsrc*, %struct.tegra_gpio_irqsrc** %10, align 8
  %93 = call i64 @tegra_gpio_isrc_is_level(%struct.tegra_gpio_irqsrc* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %88
  %96 = load %struct.tegra_gpio_softc*, %struct.tegra_gpio_softc** %8, align 8
  %97 = load %struct.tegra_gpio_irqsrc*, %struct.tegra_gpio_irqsrc** %10, align 8
  %98 = call i32 @tegra_gpio_isrc_eoi(%struct.tegra_gpio_softc* %96, %struct.tegra_gpio_irqsrc* %97)
  br label %99

99:                                               ; preds = %95, %88
  %100 = load %struct.tegra_gpio_softc*, %struct.tegra_gpio_softc** %8, align 8
  %101 = getelementptr inbounds %struct.tegra_gpio_softc, %struct.tegra_gpio_softc* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %3, align 4
  %104 = call i32 @device_printf(i32 %102, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %103)
  br label %105

105:                                              ; preds = %99, %82
  br label %106

106:                                              ; preds = %105, %64
  %107 = load i32, i32* %5, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %5, align 4
  br label %54

109:                                              ; preds = %54
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %4, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %4, align 4
  br label %20

113:                                              ; preds = %20
  %114 = load i32, i32* @FILTER_HANDLED, align 4
  ret i32 %114
}

declare dso_local i32 @bus_read_4(i32, i64) #1

declare dso_local i64 @GPIO_REGNUM(i32) #1

declare dso_local i64 @tegra_gpio_isrc_is_level(%struct.tegra_gpio_irqsrc*) #1

declare dso_local i32 @tegra_gpio_isrc_eoi(%struct.tegra_gpio_softc*, %struct.tegra_gpio_irqsrc*) #1

declare dso_local i64 @intr_isrc_dispatch(i32*, %struct.trapframe*) #1

declare dso_local i32 @tegra_gpio_isrc_mask(%struct.tegra_gpio_softc*, %struct.tegra_gpio_irqsrc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
