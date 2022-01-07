; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/omap4/extr_omap4_prcm_clks.c_omap4_clk_hsusbhost_activate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/omap4/extr_omap4_prcm_clks.c_omap4_clk_hsusbhost_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_clock_dev = type { i32 }
%struct.omap4_prcm_softc = type { %struct.resource* }
%struct.resource = type { i32 }

@CM2_INSTANCE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@L3INIT_CM2_OFFSET = common dso_local global i32 0, align 4
@CLKCTRL_MODULEMODE_MASK = common dso_local global i32 0, align 4
@CLKCTRL_MODULEMODE_ENABLE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MAX_MODULE_ENABLE_WAIT = common dso_local global i32 0, align 4
@CLKCTRL_IDLEST_MASK = common dso_local global i32 0, align 4
@CLKCTRL_IDLEST_ENABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Error: HERE failed to enable module with clock %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Error: 0x%08x => 0x%08x\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_clock_dev*)* @omap4_clk_hsusbhost_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap4_clk_hsusbhost_activate(%struct.ti_clock_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ti_clock_dev*, align 8
  %4 = alloca %struct.omap4_prcm_softc*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ti_clock_dev* %0, %struct.ti_clock_dev** %3, align 8
  %9 = load i32, i32* @CM2_INSTANCE, align 4
  %10 = call %struct.omap4_prcm_softc* @omap4_prcm_get_instance_softc(i32 %9)
  store %struct.omap4_prcm_softc* %10, %struct.omap4_prcm_softc** %4, align 8
  %11 = load %struct.omap4_prcm_softc*, %struct.omap4_prcm_softc** %4, align 8
  %12 = icmp eq %struct.omap4_prcm_softc* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @ENXIO, align 4
  store i32 %14, i32* %2, align 4
  br label %139

15:                                               ; preds = %1
  %16 = load %struct.ti_clock_dev*, %struct.ti_clock_dev** %3, align 8
  %17 = getelementptr inbounds %struct.ti_clock_dev, %struct.ti_clock_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %98 [
    i32 128, label %19
    i32 135, label %39
    i32 133, label %39
    i32 130, label %39
    i32 132, label %39
    i32 129, label %39
    i32 134, label %39
    i32 131, label %39
  ]

19:                                               ; preds = %15
  %20 = load %struct.omap4_prcm_softc*, %struct.omap4_prcm_softc** %4, align 8
  %21 = getelementptr inbounds %struct.omap4_prcm_softc, %struct.omap4_prcm_softc* %20, i32 0, i32 0
  %22 = load %struct.resource*, %struct.resource** %21, align 8
  store %struct.resource* %22, %struct.resource** %5, align 8
  %23 = load i32, i32* @L3INIT_CM2_OFFSET, align 4
  %24 = add nsw i32 %23, 104
  store i32 %24, i32* %6, align 4
  %25 = load %struct.resource*, %struct.resource** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @bus_read_4(%struct.resource* %25, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* @CLKCTRL_MODULEMODE_MASK, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %7, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* @CLKCTRL_MODULEMODE_ENABLE, align 4
  %33 = load i32, i32* %7, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = or i32 %35, 256
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = or i32 %37, 512
  store i32 %38, i32* %7, align 4
  br label %100

39:                                               ; preds = %15, %15, %15, %15, %15, %15, %15
  %40 = load %struct.omap4_prcm_softc*, %struct.omap4_prcm_softc** %4, align 8
  %41 = getelementptr inbounds %struct.omap4_prcm_softc, %struct.omap4_prcm_softc* %40, i32 0, i32 0
  %42 = load %struct.resource*, %struct.resource** %41, align 8
  store %struct.resource* %42, %struct.resource** %5, align 8
  %43 = load i32, i32* @L3INIT_CM2_OFFSET, align 4
  %44 = add nsw i32 %43, 88
  store i32 %44, i32* %6, align 4
  %45 = load %struct.resource*, %struct.resource** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @bus_read_4(%struct.resource* %45, i32 %46)
  store i32 %47, i32* %7, align 4
  %48 = load %struct.ti_clock_dev*, %struct.ti_clock_dev** %3, align 8
  %49 = getelementptr inbounds %struct.ti_clock_dev, %struct.ti_clock_dev* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 135
  br i1 %51, label %52, label %61

52:                                               ; preds = %39
  %53 = load i32, i32* @CLKCTRL_MODULEMODE_MASK, align 4
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %7, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = or i32 %57, 2
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = or i32 %59, 32768
  store i32 %60, i32* %7, align 4
  br label %97

61:                                               ; preds = %39
  %62 = load %struct.ti_clock_dev*, %struct.ti_clock_dev** %3, align 8
  %63 = getelementptr inbounds %struct.ti_clock_dev, %struct.ti_clock_dev* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, 132
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load i32, i32* %7, align 4
  %68 = or i32 %67, 256
  store i32 %68, i32* %7, align 4
  br label %96

69:                                               ; preds = %61
  %70 = load %struct.ti_clock_dev*, %struct.ti_clock_dev** %3, align 8
  %71 = getelementptr inbounds %struct.ti_clock_dev, %struct.ti_clock_dev* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, 129
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i32, i32* %7, align 4
  %76 = or i32 %75, 512
  store i32 %76, i32* %7, align 4
  br label %95

77:                                               ; preds = %69
  %78 = load %struct.ti_clock_dev*, %struct.ti_clock_dev** %3, align 8
  %79 = getelementptr inbounds %struct.ti_clock_dev, %struct.ti_clock_dev* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %80, 134
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load i32, i32* %7, align 4
  %84 = or i32 %83, 10240
  store i32 %84, i32* %7, align 4
  br label %94

85:                                               ; preds = %77
  %86 = load %struct.ti_clock_dev*, %struct.ti_clock_dev** %3, align 8
  %87 = getelementptr inbounds %struct.ti_clock_dev, %struct.ti_clock_dev* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %88, 131
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load i32, i32* %7, align 4
  %92 = or i32 %91, 20480
  store i32 %92, i32* %7, align 4
  br label %93

93:                                               ; preds = %90, %85
  br label %94

94:                                               ; preds = %93, %82
  br label %95

95:                                               ; preds = %94, %74
  br label %96

96:                                               ; preds = %95, %66
  br label %97

97:                                               ; preds = %96, %52
  br label %100

98:                                               ; preds = %15
  %99 = load i32, i32* @EINVAL, align 4
  store i32 %99, i32* %2, align 4
  br label %139

100:                                              ; preds = %97, %19
  %101 = load %struct.resource*, %struct.resource** %5, align 8
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @bus_write_4(%struct.resource* %101, i32 %102, i32 %103)
  store i32 0, i32* %8, align 4
  br label %105

105:                                              ; preds = %120, %100
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* @MAX_MODULE_ENABLE_WAIT, align 4
  %108 = icmp ult i32 %106, %107
  br i1 %108, label %109, label %123

109:                                              ; preds = %105
  %110 = load %struct.resource*, %struct.resource** %5, align 8
  %111 = load i32, i32* %6, align 4
  %112 = call i32 @bus_read_4(%struct.resource* %110, i32 %111)
  store i32 %112, i32* %7, align 4
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* @CLKCTRL_IDLEST_MASK, align 4
  %115 = and i32 %113, %114
  %116 = load i32, i32* @CLKCTRL_IDLEST_ENABLED, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %109
  br label %123

119:                                              ; preds = %109
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %8, align 4
  %122 = add i32 %121, 1
  store i32 %122, i32* %8, align 4
  br label %105

123:                                              ; preds = %118, %105
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* @CLKCTRL_IDLEST_MASK, align 4
  %126 = and i32 %124, %125
  %127 = load i32, i32* @CLKCTRL_IDLEST_ENABLED, align 4
  %128 = icmp ne i32 %126, %127
  br i1 %128, label %129, label %138

129:                                              ; preds = %123
  %130 = load %struct.ti_clock_dev*, %struct.ti_clock_dev** %3, align 8
  %131 = getelementptr inbounds %struct.ti_clock_dev, %struct.ti_clock_dev* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %132)
  %134 = load i32, i32* %6, align 4
  %135 = load i32, i32* %7, align 4
  %136 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %134, i32 %135)
  %137 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %137, i32* %2, align 4
  br label %139

138:                                              ; preds = %123
  store i32 0, i32* %2, align 4
  br label %139

139:                                              ; preds = %138, %129, %98, %13
  %140 = load i32, i32* %2, align 4
  ret i32 %140
}

declare dso_local %struct.omap4_prcm_softc* @omap4_prcm_get_instance_softc(i32) #1

declare dso_local i32 @bus_read_4(%struct.resource*, i32) #1

declare dso_local i32 @bus_write_4(%struct.resource*, i32, i32) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
