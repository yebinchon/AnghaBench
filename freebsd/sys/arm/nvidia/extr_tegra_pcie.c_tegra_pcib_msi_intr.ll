; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_pcie.c_tegra_pcib_msi_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_pcie.c_tegra_pcib_msi_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.trapframe* }
%struct.trapframe = type { i32 }
%struct.tegra_pcib_softc = type { i32, %struct.tegra_pcib_irqsrc* }
%struct.tegra_pcib_irqsrc = type { i32 }

@curthread = common dso_local global %struct.TYPE_2__* null, align 8
@AFI_MSI_REGS = common dso_local global i64 0, align 8
@AFI_MSI_INTR_IN_REG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"Stray irq %u disabled\0A\00", align 1
@FILTER_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @tegra_pcib_msi_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_pcib_msi_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.tegra_pcib_softc*, align 8
  %8 = alloca %struct.trapframe*, align 8
  %9 = alloca %struct.tegra_pcib_irqsrc*, align 8
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.tegra_pcib_softc*
  store %struct.tegra_pcib_softc* %11, %struct.tegra_pcib_softc** %7, align 8
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curthread, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.trapframe*, %struct.trapframe** %13, align 8
  store %struct.trapframe* %14, %struct.trapframe** %8, align 8
  store i64 0, i64* %4, align 8
  br label %15

15:                                               ; preds = %68, %1
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* @AFI_MSI_REGS, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %71

19:                                               ; preds = %15
  %20 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %7, align 8
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @AFI_MSI_VEC(i64 %21)
  %23 = call i64 @AFI_RD4(%struct.tegra_pcib_softc* %20, i32 %22)
  store i64 %23, i64* %6, align 8
  br label %24

24:                                               ; preds = %62, %19
  %25 = load i64, i64* %6, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %67

27:                                               ; preds = %24
  %28 = load i64, i64* %6, align 8
  %29 = call i64 @ffs(i64 %28)
  %30 = sub nsw i64 %29, 1
  store i64 %30, i64* %5, align 8
  %31 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %7, align 8
  %32 = load i64, i64* %4, align 8
  %33 = call i32 @AFI_MSI_VEC(i64 %32)
  %34 = load i64, i64* %5, align 8
  %35 = trunc i64 %34 to i32
  %36 = shl i32 1, %35
  %37 = call i32 @AFI_WR4(%struct.tegra_pcib_softc* %31, i32 %33, i32 %36)
  %38 = load i64, i64* %4, align 8
  %39 = load i64, i64* @AFI_MSI_INTR_IN_REG, align 8
  %40 = mul nsw i64 %38, %39
  %41 = load i64, i64* %5, align 8
  %42 = add nsw i64 %40, %41
  store i64 %42, i64* %3, align 8
  %43 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %7, align 8
  %44 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %43, i32 0, i32 1
  %45 = load %struct.tegra_pcib_irqsrc*, %struct.tegra_pcib_irqsrc** %44, align 8
  %46 = load i64, i64* %3, align 8
  %47 = getelementptr inbounds %struct.tegra_pcib_irqsrc, %struct.tegra_pcib_irqsrc* %45, i64 %46
  store %struct.tegra_pcib_irqsrc* %47, %struct.tegra_pcib_irqsrc** %9, align 8
  %48 = load %struct.tegra_pcib_irqsrc*, %struct.tegra_pcib_irqsrc** %9, align 8
  %49 = getelementptr inbounds %struct.tegra_pcib_irqsrc, %struct.tegra_pcib_irqsrc* %48, i32 0, i32 0
  %50 = load %struct.trapframe*, %struct.trapframe** %8, align 8
  %51 = call i64 @intr_isrc_dispatch(i32* %49, %struct.trapframe* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %27
  %54 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %7, align 8
  %55 = load %struct.tegra_pcib_irqsrc*, %struct.tegra_pcib_irqsrc** %9, align 8
  %56 = call i32 @tegra_pcib_isrc_mask(%struct.tegra_pcib_softc* %54, %struct.tegra_pcib_irqsrc* %55, i32 0)
  %57 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %7, align 8
  %58 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i64, i64* %3, align 8
  %61 = call i32 @device_printf(i32 %59, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %60)
  br label %62

62:                                               ; preds = %53, %27
  %63 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %7, align 8
  %64 = load i64, i64* %4, align 8
  %65 = call i32 @AFI_MSI_VEC(i64 %64)
  %66 = call i64 @AFI_RD4(%struct.tegra_pcib_softc* %63, i32 %65)
  store i64 %66, i64* %6, align 8
  br label %24

67:                                               ; preds = %24
  br label %68

68:                                               ; preds = %67
  %69 = load i64, i64* %4, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %4, align 8
  br label %15

71:                                               ; preds = %15
  %72 = load i32, i32* @FILTER_HANDLED, align 4
  ret i32 %72
}

declare dso_local i64 @AFI_RD4(%struct.tegra_pcib_softc*, i32) #1

declare dso_local i32 @AFI_MSI_VEC(i64) #1

declare dso_local i64 @ffs(i64) #1

declare dso_local i32 @AFI_WR4(%struct.tegra_pcib_softc*, i32, i32) #1

declare dso_local i64 @intr_isrc_dispatch(i32*, %struct.trapframe*) #1

declare dso_local i32 @tegra_pcib_isrc_mask(%struct.tegra_pcib_softc*, %struct.tegra_pcib_irqsrc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
