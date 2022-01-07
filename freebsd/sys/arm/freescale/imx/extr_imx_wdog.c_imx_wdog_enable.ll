; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx_wdog.c_imx_wdog_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx_wdog.c_imx_wdog_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_wdog_softc = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@WDOG_CR_REG = common dso_local global i32 0, align 4
@WDOG_CR_WT_MASK = common dso_local global i32 0, align 4
@WDOG_CR_WT_SHIFT = common dso_local global i32 0, align 4
@WDOG_CR_WDE = common dso_local global i32 0, align 4
@WDOG_SR_REG = common dso_local global i32 0, align 4
@WDOG_SR_STEP1 = common dso_local global i32 0, align 4
@WDOG_SR_STEP2 = common dso_local global i32 0, align 4
@WDOG_MCR_REG = common dso_local global i32 0, align 4
@WDOG_MCR_PDE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imx_wdog_softc*, i32)* @imx_wdog_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_wdog_enable(%struct.imx_wdog_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.imx_wdog_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.imx_wdog_softc* %0, %struct.imx_wdog_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 1
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = icmp sgt i32 %10, 128
  br i1 %11, label %12, label %14

12:                                               ; preds = %9, %2
  %13 = load i32, i32* @EINVAL, align 4
  store i32 %13, i32* %3, align 4
  br label %77

14:                                               ; preds = %9
  %15 = load %struct.imx_wdog_softc*, %struct.imx_wdog_softc** %4, align 8
  %16 = getelementptr inbounds %struct.imx_wdog_softc, %struct.imx_wdog_softc* %15, i32 0, i32 2
  %17 = call i32 @mtx_lock(i32* %16)
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.imx_wdog_softc*, %struct.imx_wdog_softc** %4, align 8
  %20 = getelementptr inbounds %struct.imx_wdog_softc, %struct.imx_wdog_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %18, %21
  br i1 %22, label %23, label %47

23:                                               ; preds = %14
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.imx_wdog_softc*, %struct.imx_wdog_softc** %4, align 8
  %26 = getelementptr inbounds %struct.imx_wdog_softc, %struct.imx_wdog_softc* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.imx_wdog_softc*, %struct.imx_wdog_softc** %4, align 8
  %28 = load i32, i32* @WDOG_CR_REG, align 4
  %29 = call i32 @RD2(%struct.imx_wdog_softc* %27, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* @WDOG_CR_WT_MASK, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %5, align 4
  %35 = mul nsw i32 2, %34
  %36 = sub nsw i32 %35, 1
  %37 = load i32, i32* @WDOG_CR_WT_SHIFT, align 4
  %38 = shl i32 %36, %37
  %39 = load i32, i32* %6, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %6, align 4
  %41 = load %struct.imx_wdog_softc*, %struct.imx_wdog_softc** %4, align 8
  %42 = load i32, i32* @WDOG_CR_REG, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @WDOG_CR_WDE, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @WR2(%struct.imx_wdog_softc* %41, i32 %42, i32 %45)
  br label %47

47:                                               ; preds = %23, %14
  %48 = load %struct.imx_wdog_softc*, %struct.imx_wdog_softc** %4, align 8
  %49 = load i32, i32* @WDOG_SR_REG, align 4
  %50 = load i32, i32* @WDOG_SR_STEP1, align 4
  %51 = call i32 @WR2(%struct.imx_wdog_softc* %48, i32 %49, i32 %50)
  %52 = load %struct.imx_wdog_softc*, %struct.imx_wdog_softc** %4, align 8
  %53 = load i32, i32* @WDOG_SR_REG, align 4
  %54 = load i32, i32* @WDOG_SR_STEP2, align 4
  %55 = call i32 @WR2(%struct.imx_wdog_softc* %52, i32 %53, i32 %54)
  %56 = load %struct.imx_wdog_softc*, %struct.imx_wdog_softc** %4, align 8
  %57 = getelementptr inbounds %struct.imx_wdog_softc, %struct.imx_wdog_softc* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %47
  %61 = load %struct.imx_wdog_softc*, %struct.imx_wdog_softc** %4, align 8
  %62 = getelementptr inbounds %struct.imx_wdog_softc, %struct.imx_wdog_softc* %61, i32 0, i32 1
  store i32 0, i32* %62, align 4
  %63 = load %struct.imx_wdog_softc*, %struct.imx_wdog_softc** %4, align 8
  %64 = load i32, i32* @WDOG_MCR_REG, align 4
  %65 = call i32 @RD2(%struct.imx_wdog_softc* %63, i32 %64)
  store i32 %65, i32* %6, align 4
  %66 = load %struct.imx_wdog_softc*, %struct.imx_wdog_softc** %4, align 8
  %67 = load i32, i32* @WDOG_MCR_REG, align 4
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @WDOG_MCR_PDE, align 4
  %70 = xor i32 %69, -1
  %71 = and i32 %68, %70
  %72 = call i32 @WR2(%struct.imx_wdog_softc* %66, i32 %67, i32 %71)
  br label %73

73:                                               ; preds = %60, %47
  %74 = load %struct.imx_wdog_softc*, %struct.imx_wdog_softc** %4, align 8
  %75 = getelementptr inbounds %struct.imx_wdog_softc, %struct.imx_wdog_softc* %74, i32 0, i32 2
  %76 = call i32 @mtx_unlock(i32* %75)
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %73, %12
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @RD2(%struct.imx_wdog_softc*, i32) #1

declare dso_local i32 @WR2(%struct.imx_wdog_softc*, i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
