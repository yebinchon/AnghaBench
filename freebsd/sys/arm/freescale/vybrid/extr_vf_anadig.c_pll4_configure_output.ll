; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_anadig.c_pll4_configure_output.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_anadig.c_pll4_configure_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anadig_softc = type { i32 }

@anadig_sc = common dso_local global %struct.anadig_softc* null, align 8
@ANADIG_PLL4_CTRL = common dso_local global i32 0, align 4
@PLL4_CTRL_DIV_SEL_M = common dso_local global i32 0, align 4
@PLL4_CTRL_DIV_SEL_S = common dso_local global i32 0, align 4
@ANADIG_PLL4_NUM = common dso_local global i32 0, align 4
@ANADIG_PLL4_DENOM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pll4_configure_output(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.anadig_softc*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.anadig_softc*, %struct.anadig_softc** @anadig_sc, align 8
  store %struct.anadig_softc* %9, %struct.anadig_softc** %7, align 8
  %10 = load %struct.anadig_softc*, %struct.anadig_softc** %7, align 8
  %11 = load i32, i32* @ANADIG_PLL4_CTRL, align 4
  %12 = call i32 @READ4(%struct.anadig_softc* %10, i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* @PLL4_CTRL_DIV_SEL_M, align 4
  %14 = load i32, i32* @PLL4_CTRL_DIV_SEL_S, align 4
  %15 = shl i32 %13, %14
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %8, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @PLL4_CTRL_DIV_SEL_S, align 4
  %21 = shl i32 %19, %20
  %22 = load i32, i32* %8, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %8, align 4
  %24 = load %struct.anadig_softc*, %struct.anadig_softc** %7, align 8
  %25 = load i32, i32* @ANADIG_PLL4_CTRL, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @WRITE4(%struct.anadig_softc* %24, i32 %25, i32 %26)
  %28 = load %struct.anadig_softc*, %struct.anadig_softc** %7, align 8
  %29 = load i32, i32* @ANADIG_PLL4_NUM, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @WRITE4(%struct.anadig_softc* %28, i32 %29, i32 %30)
  %32 = load %struct.anadig_softc*, %struct.anadig_softc** %7, align 8
  %33 = load i32, i32* @ANADIG_PLL4_DENOM, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @WRITE4(%struct.anadig_softc* %32, i32 %33, i32 %34)
  ret i32 0
}

declare dso_local i32 @READ4(%struct.anadig_softc*, i32) #1

declare dso_local i32 @WRITE4(%struct.anadig_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
