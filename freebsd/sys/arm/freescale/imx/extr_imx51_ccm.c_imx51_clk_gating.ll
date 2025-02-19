; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx51_ccm.c_imx51_clk_gating.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx51_ccm.c_imx51_clk_gating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CCMR_CCGR_NSOURCE = common dso_local global i32 0, align 4
@ccm_softc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @imx51_clk_gating(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @CCMR_CCGR_MODULE(i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @CCMR_CCGR_NSOURCE, align 4
  %12 = srem i32 %10, %11
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* @ccm_softc, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @CCMC_CCGR(i32 %14)
  %16 = call i32 @ccm_read_4(i32 %13, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %5, align 4
  %18 = mul nsw i32 %17, 2
  %19 = shl i32 3, %18
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %7, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %5, align 4
  %25 = mul nsw i32 %24, 2
  %26 = shl i32 %23, %25
  %27 = load i32, i32* %7, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* @ccm_softc, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @CCMC_CCGR(i32 %30)
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @ccm_write_4(i32 %29, i32 %31, i32 %32)
  ret void
}

declare dso_local i32 @CCMR_CCGR_MODULE(i32) #1

declare dso_local i32 @ccm_read_4(i32, i32) #1

declare dso_local i32 @CCMC_CCGR(i32) #1

declare dso_local i32 @ccm_write_4(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
