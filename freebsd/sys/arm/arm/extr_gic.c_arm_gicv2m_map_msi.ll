; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_gic.c_arm_gicv2m_map_msi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_gic.c_arm_gicv2m_map_msi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_irqsrc = type { i32 }
%struct.arm_gicv2m_softc = type { i32 }
%struct.gic_irqsrc = type { i32 }

@GICv2M_MSI_SETSPI_NS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.intr_irqsrc*, i64*, i32*)* @arm_gicv2m_map_msi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_gicv2m_map_msi(i32 %0, i32 %1, %struct.intr_irqsrc* %2, i64* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.intr_irqsrc*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.arm_gicv2m_softc*, align 8
  %12 = alloca %struct.gic_irqsrc*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.intr_irqsrc* %2, %struct.intr_irqsrc** %8, align 8
  store i64* %3, i64** %9, align 8
  store i32* %4, i32** %10, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.arm_gicv2m_softc* @device_get_softc(i32 %13)
  store %struct.arm_gicv2m_softc* %14, %struct.arm_gicv2m_softc** %11, align 8
  %15 = load %struct.intr_irqsrc*, %struct.intr_irqsrc** %8, align 8
  %16 = bitcast %struct.intr_irqsrc* %15 to %struct.gic_irqsrc*
  store %struct.gic_irqsrc* %16, %struct.gic_irqsrc** %12, align 8
  %17 = load %struct.arm_gicv2m_softc*, %struct.arm_gicv2m_softc** %11, align 8
  %18 = getelementptr inbounds %struct.arm_gicv2m_softc, %struct.arm_gicv2m_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @rman_get_virtual(i32 %19)
  %21 = call i64 @vtophys(i32 %20)
  %22 = load i64, i64* @GICv2M_MSI_SETSPI_NS, align 8
  %23 = add nsw i64 %21, %22
  %24 = load i64*, i64** %9, align 8
  store i64 %23, i64* %24, align 8
  %25 = load %struct.gic_irqsrc*, %struct.gic_irqsrc** %12, align 8
  %26 = getelementptr inbounds %struct.gic_irqsrc, %struct.gic_irqsrc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %10, align 8
  store i32 %27, i32* %28, align 4
  ret i32 0
}

declare dso_local %struct.arm_gicv2m_softc* @device_get_softc(i32) #1

declare dso_local i64 @vtophys(i32) #1

declare dso_local i32 @rman_get_virtual(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
