; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/omap4/extr_omap4_prcm_clks.c_omap4_clk_hsusbhost_deactivate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/omap4/extr_omap4_prcm_clks.c_omap4_clk_hsusbhost_deactivate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_clock_dev = type { i32 }
%struct.omap4_prcm_softc = type { %struct.resource* }
%struct.resource = type { i32 }

@CM2_INSTANCE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@L3INIT_CM2_OFFSET = common dso_local global i32 0, align 4
@CLKCTRL_MODULEMODE_MASK = common dso_local global i32 0, align 4
@CLKCTRL_MODULEMODE_DISABLE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_clock_dev*)* @omap4_clk_hsusbhost_deactivate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap4_clk_hsusbhost_deactivate(%struct.ti_clock_dev* %0) #0 {
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
  br label %101

14:                                               ; preds = %1
  %15 = load %struct.ti_clock_dev*, %struct.ti_clock_dev** %3, align 8
  %16 = getelementptr inbounds %struct.ti_clock_dev, %struct.ti_clock_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %94 [
    i32 128, label %18
    i32 135, label %34
    i32 133, label %34
    i32 130, label %34
    i32 132, label %34
    i32 129, label %34
    i32 134, label %34
    i32 131, label %34
  ]

18:                                               ; preds = %14
  %19 = load %struct.omap4_prcm_softc*, %struct.omap4_prcm_softc** %4, align 8
  %20 = getelementptr inbounds %struct.omap4_prcm_softc, %struct.omap4_prcm_softc* %19, i32 0, i32 0
  %21 = load %struct.resource*, %struct.resource** %20, align 8
  store %struct.resource* %21, %struct.resource** %5, align 8
  %22 = load i32, i32* @L3INIT_CM2_OFFSET, align 4
  %23 = add nsw i32 %22, 104
  store i32 %23, i32* %6, align 4
  %24 = load %struct.resource*, %struct.resource** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @bus_read_4(%struct.resource* %24, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* @CLKCTRL_MODULEMODE_MASK, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %7, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* @CLKCTRL_MODULEMODE_DISABLE, align 4
  %32 = load i32, i32* %7, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %7, align 4
  br label %96

34:                                               ; preds = %14, %14, %14, %14, %14, %14, %14
  %35 = load %struct.omap4_prcm_softc*, %struct.omap4_prcm_softc** %4, align 8
  %36 = getelementptr inbounds %struct.omap4_prcm_softc, %struct.omap4_prcm_softc* %35, i32 0, i32 0
  %37 = load %struct.resource*, %struct.resource** %36, align 8
  store %struct.resource* %37, %struct.resource** %5, align 8
  %38 = load i32, i32* @L3INIT_CM2_OFFSET, align 4
  %39 = add nsw i32 %38, 88
  store i32 %39, i32* %6, align 4
  %40 = load %struct.resource*, %struct.resource** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @bus_read_4(%struct.resource* %40, i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load %struct.ti_clock_dev*, %struct.ti_clock_dev** %3, align 8
  %44 = getelementptr inbounds %struct.ti_clock_dev, %struct.ti_clock_dev* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 135
  br i1 %46, label %47, label %57

47:                                               ; preds = %34
  %48 = load i32, i32* @CLKCTRL_MODULEMODE_MASK, align 4
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %7, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* @CLKCTRL_MODULEMODE_DISABLE, align 4
  %53 = load i32, i32* %7, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = and i32 %55, -32769
  store i32 %56, i32* %7, align 4
  br label %93

57:                                               ; preds = %34
  %58 = load %struct.ti_clock_dev*, %struct.ti_clock_dev** %3, align 8
  %59 = getelementptr inbounds %struct.ti_clock_dev, %struct.ti_clock_dev* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 132
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load i32, i32* %7, align 4
  %64 = and i32 %63, -257
  store i32 %64, i32* %7, align 4
  br label %92

65:                                               ; preds = %57
  %66 = load %struct.ti_clock_dev*, %struct.ti_clock_dev** %3, align 8
  %67 = getelementptr inbounds %struct.ti_clock_dev, %struct.ti_clock_dev* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 129
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load i32, i32* %7, align 4
  %72 = and i32 %71, -513
  store i32 %72, i32* %7, align 4
  br label %91

73:                                               ; preds = %65
  %74 = load %struct.ti_clock_dev*, %struct.ti_clock_dev** %3, align 8
  %75 = getelementptr inbounds %struct.ti_clock_dev, %struct.ti_clock_dev* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %76, 134
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load i32, i32* %7, align 4
  %80 = and i32 %79, -10241
  store i32 %80, i32* %7, align 4
  br label %90

81:                                               ; preds = %73
  %82 = load %struct.ti_clock_dev*, %struct.ti_clock_dev** %3, align 8
  %83 = getelementptr inbounds %struct.ti_clock_dev, %struct.ti_clock_dev* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, 131
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load i32, i32* %7, align 4
  %88 = and i32 %87, -20481
  store i32 %88, i32* %7, align 4
  br label %89

89:                                               ; preds = %86, %81
  br label %90

90:                                               ; preds = %89, %78
  br label %91

91:                                               ; preds = %90, %70
  br label %92

92:                                               ; preds = %91, %62
  br label %93

93:                                               ; preds = %92, %47
  br label %96

94:                                               ; preds = %14
  %95 = load i32, i32* @EINVAL, align 4
  store i32 %95, i32* %2, align 4
  br label %101

96:                                               ; preds = %93, %18
  %97 = load %struct.resource*, %struct.resource** %5, align 8
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @bus_write_4(%struct.resource* %97, i32 %98, i32 %99)
  store i32 0, i32* %2, align 4
  br label %101

101:                                              ; preds = %96, %94, %12
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local %struct.omap4_prcm_softc* @omap4_prcm_get_instance_softc(i32) #1

declare dso_local i32 @bus_read_4(%struct.resource*, i32) #1

declare dso_local i32 @bus_write_4(%struct.resource*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
