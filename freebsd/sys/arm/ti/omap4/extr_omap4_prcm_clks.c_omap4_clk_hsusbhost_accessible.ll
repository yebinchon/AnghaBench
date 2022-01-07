; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/omap4/extr_omap4_prcm_clks.c_omap4_clk_hsusbhost_accessible.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/omap4/extr_omap4_prcm_clks.c_omap4_clk_hsusbhost_accessible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_clock_dev = type { i64 }
%struct.omap4_prcm_softc = type { %struct.resource* }
%struct.resource = type { i32 }

@CM2_INSTANCE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@USBTLL_CLK = common dso_local global i64 0, align 8
@L3INIT_CM2_OFFSET = common dso_local global i32 0, align 4
@USBHSHOST_CLK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@CLKCTRL_IDLEST_MASK = common dso_local global i32 0, align 4
@CLKCTRL_IDLEST_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_clock_dev*)* @omap4_clk_hsusbhost_accessible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap4_clk_hsusbhost_accessible(%struct.ti_clock_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ti_clock_dev*, align 8
  %4 = alloca %struct.omap4_prcm_softc*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ti_clock_dev* %0, %struct.ti_clock_dev** %3, align 8
  %8 = load i32, i32* @CM2_INSTANCE, align 4
  %9 = call %struct.omap4_prcm_softc* @omap4_prcm_get_instance_softc(i32 %8)
  store %struct.omap4_prcm_softc* %9, %struct.omap4_prcm_softc** %4, align 8
  %10 = load %struct.omap4_prcm_softc*, %struct.omap4_prcm_softc** %4, align 8
  %11 = icmp eq %struct.omap4_prcm_softc* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @ENXIO, align 4
  store i32 %13, i32* %2, align 4
  br label %52

14:                                               ; preds = %1
  %15 = load %struct.ti_clock_dev*, %struct.ti_clock_dev** %3, align 8
  %16 = getelementptr inbounds %struct.ti_clock_dev, %struct.ti_clock_dev* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @USBTLL_CLK, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = load %struct.omap4_prcm_softc*, %struct.omap4_prcm_softc** %4, align 8
  %22 = getelementptr inbounds %struct.omap4_prcm_softc, %struct.omap4_prcm_softc* %21, i32 0, i32 0
  %23 = load %struct.resource*, %struct.resource** %22, align 8
  store %struct.resource* %23, %struct.resource** %5, align 8
  %24 = load i32, i32* @L3INIT_CM2_OFFSET, align 4
  %25 = add nsw i32 %24, 104
  store i32 %25, i32* %6, align 4
  br label %41

26:                                               ; preds = %14
  %27 = load %struct.ti_clock_dev*, %struct.ti_clock_dev** %3, align 8
  %28 = getelementptr inbounds %struct.ti_clock_dev, %struct.ti_clock_dev* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @USBHSHOST_CLK, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load %struct.omap4_prcm_softc*, %struct.omap4_prcm_softc** %4, align 8
  %34 = getelementptr inbounds %struct.omap4_prcm_softc, %struct.omap4_prcm_softc* %33, i32 0, i32 0
  %35 = load %struct.resource*, %struct.resource** %34, align 8
  store %struct.resource* %35, %struct.resource** %5, align 8
  %36 = load i32, i32* @L3INIT_CM2_OFFSET, align 4
  %37 = add nsw i32 %36, 88
  store i32 %37, i32* %6, align 4
  br label %40

38:                                               ; preds = %26
  %39 = load i32, i32* @EINVAL, align 4
  store i32 %39, i32* %2, align 4
  br label %52

40:                                               ; preds = %32
  br label %41

41:                                               ; preds = %40, %20
  %42 = load %struct.resource*, %struct.resource** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @bus_read_4(%struct.resource* %42, i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @CLKCTRL_IDLEST_MASK, align 4
  %47 = and i32 %45, %46
  %48 = load i32, i32* @CLKCTRL_IDLEST_ENABLED, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %52

51:                                               ; preds = %41
  store i32 1, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %50, %38, %12
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.omap4_prcm_softc* @omap4_prcm_get_instance_softc(i32) #1

declare dso_local i32 @bus_read_4(%struct.resource*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
