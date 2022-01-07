; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/omap4/extr_omap4_prcm_clks.c_omap4_clk_generic_deactivate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/omap4/extr_omap4_prcm_clks.c_omap4_clk_generic_deactivate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_clock_dev = type { i32 }
%struct.omap4_prcm_softc = type { %struct.resource* }
%struct.resource = type { i32 }
%struct.omap4_clk_details = type { i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CLKCTRL_MODULEMODE_MASK = common dso_local global i32 0, align 4
@CLKCTRL_MODULEMODE_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_clock_dev*)* @omap4_clk_generic_deactivate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap4_clk_generic_deactivate(%struct.ti_clock_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ti_clock_dev*, align 8
  %4 = alloca %struct.omap4_prcm_softc*, align 8
  %5 = alloca %struct.omap4_clk_details*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  store %struct.ti_clock_dev* %0, %struct.ti_clock_dev** %3, align 8
  %8 = load %struct.ti_clock_dev*, %struct.ti_clock_dev** %3, align 8
  %9 = getelementptr inbounds %struct.ti_clock_dev, %struct.ti_clock_dev* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.omap4_clk_details* @omap4_clk_details(i32 %10)
  store %struct.omap4_clk_details* %11, %struct.omap4_clk_details** %5, align 8
  %12 = load %struct.omap4_clk_details*, %struct.omap4_clk_details** %5, align 8
  %13 = icmp eq %struct.omap4_clk_details* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @ENXIO, align 4
  store i32 %15, i32* %2, align 4
  br label %52

16:                                               ; preds = %1
  %17 = load %struct.omap4_clk_details*, %struct.omap4_clk_details** %5, align 8
  %18 = getelementptr inbounds %struct.omap4_clk_details, %struct.omap4_clk_details* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.omap4_prcm_softc* @omap4_prcm_get_instance_softc(i32 %19)
  store %struct.omap4_prcm_softc* %20, %struct.omap4_prcm_softc** %4, align 8
  %21 = load %struct.omap4_prcm_softc*, %struct.omap4_prcm_softc** %4, align 8
  %22 = icmp eq %struct.omap4_prcm_softc* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i32, i32* @ENXIO, align 4
  store i32 %24, i32* %2, align 4
  br label %52

25:                                               ; preds = %16
  %26 = load %struct.omap4_prcm_softc*, %struct.omap4_prcm_softc** %4, align 8
  %27 = getelementptr inbounds %struct.omap4_prcm_softc, %struct.omap4_prcm_softc* %26, i32 0, i32 0
  %28 = load %struct.resource*, %struct.resource** %27, align 8
  store %struct.resource* %28, %struct.resource** %6, align 8
  %29 = load %struct.resource*, %struct.resource** %6, align 8
  %30 = icmp eq %struct.resource* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* @EINVAL, align 4
  store i32 %32, i32* %2, align 4
  br label %52

33:                                               ; preds = %25
  %34 = load %struct.resource*, %struct.resource** %6, align 8
  %35 = load %struct.omap4_clk_details*, %struct.omap4_clk_details** %5, align 8
  %36 = getelementptr inbounds %struct.omap4_clk_details, %struct.omap4_clk_details* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @bus_read_4(%struct.resource* %34, i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* @CLKCTRL_MODULEMODE_MASK, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %7, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* @CLKCTRL_MODULEMODE_DISABLE, align 4
  %44 = load i32, i32* %7, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %7, align 4
  %46 = load %struct.resource*, %struct.resource** %6, align 8
  %47 = load %struct.omap4_clk_details*, %struct.omap4_clk_details** %5, align 8
  %48 = getelementptr inbounds %struct.omap4_clk_details, %struct.omap4_clk_details* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @bus_write_4(%struct.resource* %46, i32 %49, i32 %50)
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %33, %31, %23, %14
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.omap4_clk_details* @omap4_clk_details(i32) #1

declare dso_local %struct.omap4_prcm_softc* @omap4_prcm_get_instance_softc(i32) #1

declare dso_local i32 @bus_read_4(%struct.resource*, i32) #1

declare dso_local i32 @bus_write_4(%struct.resource*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
