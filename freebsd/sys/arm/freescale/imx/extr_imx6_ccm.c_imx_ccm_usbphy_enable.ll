; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_ccm.c_imx_ccm_usbphy_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_ccm.c_imx_ccm_usbphy_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@IMX6_ANALOG_CCM_PLL_USB1 = common dso_local global i64 0, align 8
@IMX6_ANALOG_CCM_PLL_USB_ENABLE = common dso_local global i32 0, align 4
@IMX6_ANALOG_CCM_PLL_USB_POWER = common dso_local global i32 0, align 4
@IMX6_ANALOG_CCM_PLL_USB_EN_USB_CLKS = common dso_local global i32 0, align 4
@ccm_sc = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @imx_ccm_usbphy_enable(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i64, i64* @IMX6_ANALOG_CCM_PLL_USB1, align 8
  %4 = add nsw i64 %3, 0
  %5 = load i32, i32* @IMX6_ANALOG_CCM_PLL_USB_ENABLE, align 4
  %6 = load i32, i32* @IMX6_ANALOG_CCM_PLL_USB_POWER, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @IMX6_ANALOG_CCM_PLL_USB_EN_USB_CLKS, align 4
  %9 = or i32 %7, %8
  %10 = call i32 @imx6_anatop_write_4(i64 %4, i32 %9)
  %11 = load i64, i64* @IMX6_ANALOG_CCM_PLL_USB1, align 8
  %12 = add nsw i64 %11, 16
  %13 = load i32, i32* @IMX6_ANALOG_CCM_PLL_USB_ENABLE, align 4
  %14 = load i32, i32* @IMX6_ANALOG_CCM_PLL_USB_POWER, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @IMX6_ANALOG_CCM_PLL_USB_EN_USB_CLKS, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @imx6_anatop_write_4(i64 %12, i32 %17)
  ret void
}

declare dso_local i32 @imx6_anatop_write_4(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
