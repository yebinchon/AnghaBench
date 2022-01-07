; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx51_ccm.c_imx_ccm_usbphy_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx51_ccm.c_imx_ccm_usbphy_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IMXSOC_53 = common dso_local global i64 0, align 8
@ccm_softc = common dso_local global i32 0, align 4
@CCMC_CSCMR1 = common dso_local global i32 0, align 4
@CSCMR1_USBPHY_CLK_SEL_SHIFT = common dso_local global i32 0, align 4
@IMXSOC_51 = common dso_local global i64 0, align 8
@CCGR_USB_PHY_CLK = common dso_local global i32 0, align 4
@CCGR_CLK_MODE_ALWAYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @imx_ccm_usbphy_enable(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = call i64 (...) @imx_soc_type()
  %5 = load i64, i64* @IMXSOC_53, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %19

7:                                                ; preds = %1
  %8 = load i32, i32* @ccm_softc, align 4
  %9 = load i32, i32* @CCMC_CSCMR1, align 4
  %10 = call i32 @ccm_read_4(i32 %8, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @CSCMR1_USBPHY_CLK_SEL_SHIFT, align 4
  %12 = shl i32 1, %11
  %13 = load i32, i32* %3, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* @ccm_softc, align 4
  %16 = load i32, i32* @CCMC_CSCMR1, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @ccm_write_4(i32 %15, i32 %16, i32 %17)
  br label %19

19:                                               ; preds = %7, %1
  %20 = call i64 (...) @imx_soc_type()
  %21 = load i64, i64* @IMXSOC_51, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i32, i32* @CCGR_USB_PHY_CLK, align 4
  %25 = load i32, i32* @CCGR_CLK_MODE_ALWAYS, align 4
  %26 = call i32 @imx51_clk_gating(i32 %24, i32 %25)
  br label %38

27:                                               ; preds = %19
  %28 = call i64 (...) @imx_soc_type()
  %29 = load i64, i64* @IMXSOC_53, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = call i32 @__CCGR_NUM(i32 4, i32 5)
  %33 = load i32, i32* @CCGR_CLK_MODE_ALWAYS, align 4
  %34 = call i32 @imx51_clk_gating(i32 %32, i32 %33)
  %35 = call i32 @__CCGR_NUM(i32 4, i32 6)
  %36 = load i32, i32* @CCGR_CLK_MODE_ALWAYS, align 4
  %37 = call i32 @imx51_clk_gating(i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %23, %31, %27
  ret void
}

declare dso_local i64 @imx_soc_type(...) #1

declare dso_local i32 @ccm_read_4(i32, i32) #1

declare dso_local i32 @ccm_write_4(i32, i32, i32) #1

declare dso_local i32 @imx51_clk_gating(i32, i32) #1

declare dso_local i32 @__CCGR_NUM(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
