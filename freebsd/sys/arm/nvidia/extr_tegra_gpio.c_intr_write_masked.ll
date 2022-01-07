; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_gpio.c_intr_write_masked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_gpio.c_intr_write_masked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_gpio_softc = type { i32 }
%struct.tegra_gpio_irqsrc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_gpio_softc*, i64, %struct.tegra_gpio_irqsrc*, i32)* @intr_write_masked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intr_write_masked(%struct.tegra_gpio_softc* %0, i64 %1, %struct.tegra_gpio_irqsrc* %2, i32 %3) #0 {
  %5 = alloca %struct.tegra_gpio_softc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.tegra_gpio_irqsrc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.tegra_gpio_softc* %0, %struct.tegra_gpio_softc** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.tegra_gpio_irqsrc* %2, %struct.tegra_gpio_irqsrc** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.tegra_gpio_irqsrc*, %struct.tegra_gpio_irqsrc** %7, align 8
  %12 = getelementptr inbounds %struct.tegra_gpio_irqsrc, %struct.tegra_gpio_irqsrc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @GPIO_BIT(i32 %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = shl i32 256, %15
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %8, align 4
  %18 = and i32 %17, 1
  %19 = load i32, i32* %10, align 4
  %20 = shl i32 %18, %19
  %21 = load i32, i32* %9, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %9, align 4
  %23 = load %struct.tegra_gpio_softc*, %struct.tegra_gpio_softc** %5, align 8
  %24 = getelementptr inbounds %struct.tegra_gpio_softc, %struct.tegra_gpio_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i64, i64* %6, align 8
  %27 = load %struct.tegra_gpio_irqsrc*, %struct.tegra_gpio_irqsrc** %7, align 8
  %28 = getelementptr inbounds %struct.tegra_gpio_irqsrc, %struct.tegra_gpio_irqsrc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @GPIO_REGNUM(i32 %29)
  %31 = add nsw i64 %26, %30
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @bus_write_4(i32 %25, i64 %31, i32 %32)
  ret void
}

declare dso_local i32 @GPIO_BIT(i32) #1

declare dso_local i32 @bus_write_4(i32, i64, i32) #1

declare dso_local i64 @GPIO_REGNUM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
