; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/omap4/extr_omap4_prcm_clks.c_omap4_clk_generic_activate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/omap4/extr_omap4_prcm_clks.c_omap4_clk_generic_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_clock_dev = type { i32 }
%struct.omap4_prcm_softc = type { %struct.resource* }
%struct.resource = type { i32 }
%struct.omap4_clk_details = type { i32, i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CLKCTRL_MODULEMODE_MASK = common dso_local global i32 0, align 4
@MAX_MODULE_ENABLE_WAIT = common dso_local global i32 0, align 4
@CLKCTRL_IDLEST_MASK = common dso_local global i32 0, align 4
@CLKCTRL_IDLEST_ENABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Error: failed to enable module with clock %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Error: 0x%08x => 0x%08x\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_clock_dev*)* @omap4_clk_generic_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap4_clk_generic_activate(%struct.ti_clock_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ti_clock_dev*, align 8
  %4 = alloca %struct.omap4_prcm_softc*, align 8
  %5 = alloca %struct.omap4_clk_details*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ti_clock_dev* %0, %struct.ti_clock_dev** %3, align 8
  %9 = load %struct.ti_clock_dev*, %struct.ti_clock_dev** %3, align 8
  %10 = getelementptr inbounds %struct.ti_clock_dev, %struct.ti_clock_dev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.omap4_clk_details* @omap4_clk_details(i32 %11)
  store %struct.omap4_clk_details* %12, %struct.omap4_clk_details** %5, align 8
  %13 = load %struct.omap4_clk_details*, %struct.omap4_clk_details** %5, align 8
  %14 = icmp eq %struct.omap4_clk_details* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @ENXIO, align 4
  store i32 %16, i32* %2, align 4
  br label %94

17:                                               ; preds = %1
  %18 = load %struct.omap4_clk_details*, %struct.omap4_clk_details** %5, align 8
  %19 = getelementptr inbounds %struct.omap4_clk_details, %struct.omap4_clk_details* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.omap4_prcm_softc* @omap4_prcm_get_instance_softc(i32 %20)
  store %struct.omap4_prcm_softc* %21, %struct.omap4_prcm_softc** %4, align 8
  %22 = load %struct.omap4_prcm_softc*, %struct.omap4_prcm_softc** %4, align 8
  %23 = icmp eq %struct.omap4_prcm_softc* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* @ENXIO, align 4
  store i32 %25, i32* %2, align 4
  br label %94

26:                                               ; preds = %17
  %27 = load %struct.omap4_prcm_softc*, %struct.omap4_prcm_softc** %4, align 8
  %28 = getelementptr inbounds %struct.omap4_prcm_softc, %struct.omap4_prcm_softc* %27, i32 0, i32 0
  %29 = load %struct.resource*, %struct.resource** %28, align 8
  store %struct.resource* %29, %struct.resource** %6, align 8
  %30 = load %struct.resource*, %struct.resource** %6, align 8
  %31 = icmp eq %struct.resource* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @EINVAL, align 4
  store i32 %33, i32* %2, align 4
  br label %94

34:                                               ; preds = %26
  %35 = load %struct.resource*, %struct.resource** %6, align 8
  %36 = load %struct.omap4_clk_details*, %struct.omap4_clk_details** %5, align 8
  %37 = getelementptr inbounds %struct.omap4_clk_details, %struct.omap4_clk_details* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @bus_read_4(%struct.resource* %35, i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* @CLKCTRL_MODULEMODE_MASK, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %7, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %7, align 4
  %44 = load %struct.omap4_clk_details*, %struct.omap4_clk_details** %5, align 8
  %45 = getelementptr inbounds %struct.omap4_clk_details, %struct.omap4_clk_details* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %7, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %7, align 4
  %49 = load %struct.resource*, %struct.resource** %6, align 8
  %50 = load %struct.omap4_clk_details*, %struct.omap4_clk_details** %5, align 8
  %51 = getelementptr inbounds %struct.omap4_clk_details, %struct.omap4_clk_details* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @bus_write_4(%struct.resource* %49, i32 %52, i32 %53)
  store i32 0, i32* %8, align 4
  br label %55

55:                                               ; preds = %73, %34
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @MAX_MODULE_ENABLE_WAIT, align 4
  %58 = icmp ult i32 %56, %57
  br i1 %58, label %59, label %76

59:                                               ; preds = %55
  %60 = load %struct.resource*, %struct.resource** %6, align 8
  %61 = load %struct.omap4_clk_details*, %struct.omap4_clk_details** %5, align 8
  %62 = getelementptr inbounds %struct.omap4_clk_details, %struct.omap4_clk_details* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @bus_read_4(%struct.resource* %60, i32 %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @CLKCTRL_IDLEST_MASK, align 4
  %67 = and i32 %65, %66
  %68 = load i32, i32* @CLKCTRL_IDLEST_ENABLED, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %59
  br label %76

71:                                               ; preds = %59
  %72 = call i32 @DELAY(i32 10)
  br label %73

73:                                               ; preds = %71
  %74 = load i32, i32* %8, align 4
  %75 = add i32 %74, 1
  store i32 %75, i32* %8, align 4
  br label %55

76:                                               ; preds = %70, %55
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @CLKCTRL_IDLEST_MASK, align 4
  %79 = and i32 %77, %78
  %80 = load i32, i32* @CLKCTRL_IDLEST_ENABLED, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %93

82:                                               ; preds = %76
  %83 = load %struct.ti_clock_dev*, %struct.ti_clock_dev** %3, align 8
  %84 = getelementptr inbounds %struct.ti_clock_dev, %struct.ti_clock_dev* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %85)
  %87 = load %struct.omap4_clk_details*, %struct.omap4_clk_details** %5, align 8
  %88 = getelementptr inbounds %struct.omap4_clk_details, %struct.omap4_clk_details* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %7, align 4
  %91 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %89, i32 %90)
  %92 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %92, i32* %2, align 4
  br label %94

93:                                               ; preds = %76
  store i32 0, i32* %2, align 4
  br label %94

94:                                               ; preds = %93, %82, %32, %24, %15
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local %struct.omap4_clk_details* @omap4_clk_details(i32) #1

declare dso_local %struct.omap4_prcm_softc* @omap4_prcm_get_instance_softc(i32) #1

declare dso_local i32 @bus_read_4(%struct.resource*, i32) #1

declare dso_local i32 @bus_write_4(%struct.resource*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
