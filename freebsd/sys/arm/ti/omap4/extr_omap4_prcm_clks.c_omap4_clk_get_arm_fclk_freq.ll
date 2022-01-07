; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/omap4/extr_omap4_prcm_clks.c_omap4_clk_get_arm_fclk_freq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/omap4/extr_omap4_prcm_clks.c_omap4_clk_get_arm_fclk_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_clock_dev = type { i32 }
%struct.omap4_prcm_softc = type { i32 }

@CM1_INSTANCE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@CM_CLKSEL_DPLL_MPU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_clock_dev*, i32*)* @omap4_clk_get_arm_fclk_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap4_clk_get_arm_fclk_freq(%struct.ti_clock_dev* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ti_clock_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.omap4_prcm_softc*, align 8
  store %struct.ti_clock_dev* %0, %struct.ti_clock_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load i32, i32* @CM1_INSTANCE, align 4
  %13 = call %struct.omap4_prcm_softc* @omap4_prcm_get_instance_softc(i32 %12)
  store %struct.omap4_prcm_softc* %13, %struct.omap4_prcm_softc** %11, align 8
  %14 = load %struct.omap4_prcm_softc*, %struct.omap4_prcm_softc** %11, align 8
  %15 = icmp eq %struct.omap4_prcm_softc* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @ENXIO, align 4
  store i32 %17, i32* %3, align 4
  br label %42

18:                                               ; preds = %2
  %19 = load %struct.omap4_prcm_softc*, %struct.omap4_prcm_softc** %11, align 8
  %20 = getelementptr inbounds %struct.omap4_prcm_softc, %struct.omap4_prcm_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @CM_CLKSEL_DPLL_MPU, align 4
  %23 = call i32 @bus_read_4(i32 %21, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = ashr i32 %24, 8
  %26 = and i32 %25, 2047
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %6, align 4
  %28 = and i32 %27, 127
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %8, align 4
  %30 = call i32 @omap4_clk_get_sysclk_freq(i32* null, i32* %10)
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %7, align 4
  %33 = mul nsw i32 %31, %32
  %34 = load i32, i32* %8, align 4
  %35 = sdiv i32 %33, %34
  store i32 %35, i32* %9, align 4
  %36 = load i32*, i32** %5, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %18
  %39 = load i32, i32* %9, align 4
  %40 = load i32*, i32** %5, align 8
  store i32 %39, i32* %40, align 4
  br label %41

41:                                               ; preds = %38, %18
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %16
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local %struct.omap4_prcm_softc* @omap4_prcm_get_instance_softc(i32) #1

declare dso_local i32 @bus_read_4(i32, i32) #1

declare dso_local i32 @omap4_clk_get_sysclk_freq(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
