; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx51_ccm.c_imx_ccm_usb_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx51_ccm.c_imx_ccm_usb_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ccm_softc = common dso_local global i32 0, align 4
@CCMC_CSCMR1 = common dso_local global i32 0, align 4
@CSCMR1_USBOH3_CLK_SEL_MASK = common dso_local global i32 0, align 4
@CSCMR1_USBOH3_CLK_SEL_SHIFT = common dso_local global i32 0, align 4
@CCMC_CSCDR1 = common dso_local global i32 0, align 4
@CSCDR1_USBOH3_CLK_PODF_MASK = common dso_local global i32 0, align 4
@CSCDR1_USBOH3_CLK_PRED_MASK = common dso_local global i32 0, align 4
@CSCDR1_USBOH3_CLK_PRED_SHIFT = common dso_local global i32 0, align 4
@CSCDR1_USBOH3_CLK_PODF_SHIFT = common dso_local global i32 0, align 4
@CCGR_USBOH3_IPG_AHB_CLK = common dso_local global i32 0, align 4
@CCGR_CLK_MODE_ALWAYS = common dso_local global i32 0, align 4
@CCGR_USBOH3_60M_CLK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @imx_ccm_usb_enable(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @ccm_softc, align 4
  %5 = load i32, i32* @CCMC_CSCMR1, align 4
  %6 = call i32 @ccm_read_4(i32 %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @CSCMR1_USBOH3_CLK_SEL_MASK, align 4
  %8 = xor i32 %7, -1
  %9 = load i32, i32* %3, align 4
  %10 = and i32 %9, %8
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @CSCMR1_USBOH3_CLK_SEL_SHIFT, align 4
  %12 = shl i32 1, %11
  %13 = load i32, i32* %3, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* @ccm_softc, align 4
  %16 = load i32, i32* @CCMC_CSCMR1, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @ccm_write_4(i32 %15, i32 %16, i32 %17)
  %19 = load i32, i32* @ccm_softc, align 4
  %20 = load i32, i32* @CCMC_CSCDR1, align 4
  %21 = call i32 @ccm_read_4(i32 %19, i32 %20)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* @CSCDR1_USBOH3_CLK_PODF_MASK, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %3, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* @CSCDR1_USBOH3_CLK_PRED_MASK, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %3, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* @CSCDR1_USBOH3_CLK_PRED_SHIFT, align 4
  %31 = shl i32 4, %30
  %32 = load i32, i32* %3, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* @CSCDR1_USBOH3_CLK_PODF_SHIFT, align 4
  %35 = shl i32 1, %34
  %36 = load i32, i32* %3, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* @ccm_softc, align 4
  %39 = load i32, i32* @CCMC_CSCDR1, align 4
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @ccm_write_4(i32 %38, i32 %39, i32 %40)
  %42 = load i32, i32* @CCGR_USBOH3_IPG_AHB_CLK, align 4
  %43 = load i32, i32* @CCGR_CLK_MODE_ALWAYS, align 4
  %44 = call i32 @imx51_clk_gating(i32 %42, i32 %43)
  %45 = load i32, i32* @CCGR_USBOH3_60M_CLK, align 4
  %46 = load i32, i32* @CCGR_CLK_MODE_ALWAYS, align 4
  %47 = call i32 @imx51_clk_gating(i32 %45, i32 %46)
  ret void
}

declare dso_local i32 @ccm_read_4(i32, i32) #1

declare dso_local i32 @ccm_write_4(i32, i32, i32) #1

declare dso_local i32 @imx51_clk_gating(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
