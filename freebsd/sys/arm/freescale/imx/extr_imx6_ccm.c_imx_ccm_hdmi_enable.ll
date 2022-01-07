; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_ccm.c_imx_ccm_hdmi_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_ccm.c_imx_ccm_hdmi_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccm_softc = type { i32 }

@ccm_sc = common dso_local global %struct.ccm_softc* null, align 8
@CCM_CCGR2 = common dso_local global i32 0, align 4
@CCGR2_HDMI_TX = common dso_local global i32 0, align 4
@CCGR2_HDMI_TX_ISFR = common dso_local global i32 0, align 4
@CCM_CHSCCDR = common dso_local global i32 0, align 4
@CHSCCDR_IPU1_DI0_PRE_CLK_SEL_MASK = common dso_local global i32 0, align 4
@CHSCCDR_IPU1_DI0_PODF_MASK = common dso_local global i32 0, align 4
@CHSCCDR_IPU1_DI0_CLK_SEL_MASK = common dso_local global i32 0, align 4
@CHSCCDR_PODF_DIVIDE_BY_3 = common dso_local global i32 0, align 4
@CHSCCDR_IPU1_DI0_PODF_SHIFT = common dso_local global i32 0, align 4
@CHSCCDR_IPU_PRE_CLK_540M_PFD = common dso_local global i32 0, align 4
@CHSCCDR_IPU1_DI0_PRE_CLK_SEL_SHIFT = common dso_local global i32 0, align 4
@CHSCCDR_CLK_SEL_LDB_DI0 = common dso_local global i32 0, align 4
@CHSCCDR_IPU1_DI0_CLK_SEL_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @imx_ccm_hdmi_enable() #0 {
  %1 = alloca %struct.ccm_softc*, align 8
  %2 = alloca i32, align 4
  %3 = load %struct.ccm_softc*, %struct.ccm_softc** @ccm_sc, align 8
  store %struct.ccm_softc* %3, %struct.ccm_softc** %1, align 8
  %4 = load %struct.ccm_softc*, %struct.ccm_softc** %1, align 8
  %5 = load i32, i32* @CCM_CCGR2, align 4
  %6 = call i32 @RD4(%struct.ccm_softc* %4, i32 %5)
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* @CCGR2_HDMI_TX, align 4
  %8 = load i32, i32* @CCGR2_HDMI_TX_ISFR, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* %2, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* %2, align 4
  %12 = load %struct.ccm_softc*, %struct.ccm_softc** %1, align 8
  %13 = load i32, i32* @CCM_CCGR2, align 4
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @WR4(%struct.ccm_softc* %12, i32 %13, i32 %14)
  %16 = load %struct.ccm_softc*, %struct.ccm_softc** %1, align 8
  %17 = load i32, i32* @CCM_CHSCCDR, align 4
  %18 = call i32 @RD4(%struct.ccm_softc* %16, i32 %17)
  store i32 %18, i32* %2, align 4
  %19 = load i32, i32* @CHSCCDR_IPU1_DI0_PRE_CLK_SEL_MASK, align 4
  %20 = load i32, i32* @CHSCCDR_IPU1_DI0_PODF_MASK, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @CHSCCDR_IPU1_DI0_CLK_SEL_MASK, align 4
  %23 = or i32 %21, %22
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %2, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %2, align 4
  %27 = load i32, i32* @CHSCCDR_PODF_DIVIDE_BY_3, align 4
  %28 = load i32, i32* @CHSCCDR_IPU1_DI0_PODF_SHIFT, align 4
  %29 = shl i32 %27, %28
  %30 = load i32, i32* %2, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %2, align 4
  %32 = load i32, i32* @CHSCCDR_IPU_PRE_CLK_540M_PFD, align 4
  %33 = load i32, i32* @CHSCCDR_IPU1_DI0_PRE_CLK_SEL_SHIFT, align 4
  %34 = shl i32 %32, %33
  %35 = load i32, i32* %2, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %2, align 4
  %37 = load %struct.ccm_softc*, %struct.ccm_softc** %1, align 8
  %38 = load i32, i32* @CCM_CHSCCDR, align 4
  %39 = load i32, i32* %2, align 4
  %40 = call i32 @WR4(%struct.ccm_softc* %37, i32 %38, i32 %39)
  %41 = load i32, i32* @CHSCCDR_CLK_SEL_LDB_DI0, align 4
  %42 = load i32, i32* @CHSCCDR_IPU1_DI0_CLK_SEL_SHIFT, align 4
  %43 = shl i32 %41, %42
  %44 = load i32, i32* %2, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %2, align 4
  %46 = load %struct.ccm_softc*, %struct.ccm_softc** %1, align 8
  %47 = load i32, i32* @CCM_CHSCCDR, align 4
  %48 = load i32, i32* %2, align 4
  %49 = call i32 @WR4(%struct.ccm_softc* %46, i32 %47, i32 %48)
  ret void
}

declare dso_local i32 @RD4(%struct.ccm_softc*, i32) #1

declare dso_local i32 @WR4(%struct.ccm_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
