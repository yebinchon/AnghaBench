; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_tegra_hdmi.c_enable_fdt_resources.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_tegra_hdmi.c_enable_fdt_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_softc = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"Cannot set parent for 'hdmi' clock\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Cannot set frequency for 'hdmi' parent clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Cannot enable  'hdmi' regulator\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Cannot enable  'pll' regulator\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Cannot enable  'vdd' regulator\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Cannot enable 'hdmi' clock\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Cannot unreset  'hdmi' reset\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdmi_softc*)* @enable_fdt_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enable_fdt_resources(%struct.hdmi_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hdmi_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.hdmi_softc* %0, %struct.hdmi_softc** %3, align 8
  %5 = load %struct.hdmi_softc*, %struct.hdmi_softc** %3, align 8
  %6 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.hdmi_softc*, %struct.hdmi_softc** %3, align 8
  %9 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %8, i32 0, i32 6
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @clk_set_parent_by_clk(i32 %7, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.hdmi_softc*, %struct.hdmi_softc** %3, align 8
  %16 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @device_printf(i32 %17, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %112

20:                                               ; preds = %1
  %21 = load %struct.hdmi_softc*, %struct.hdmi_softc** %3, align 8
  %22 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @clk_set_freq(i32 %23, i32 594000000, i32 0)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %20
  %28 = load %struct.hdmi_softc*, %struct.hdmi_softc** %3, align 8
  %29 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @device_printf(i32 %30, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %112

33:                                               ; preds = %20
  %34 = load %struct.hdmi_softc*, %struct.hdmi_softc** %3, align 8
  %35 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @clk_set_freq(i32 %36, i32 148500000, i32 0)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %33
  %41 = load %struct.hdmi_softc*, %struct.hdmi_softc** %3, align 8
  %42 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @device_printf(i32 %43, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* %4, align 4
  store i32 %45, i32* %2, align 4
  br label %112

46:                                               ; preds = %33
  %47 = load %struct.hdmi_softc*, %struct.hdmi_softc** %3, align 8
  %48 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @regulator_enable(i32 %49)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %46
  %54 = load %struct.hdmi_softc*, %struct.hdmi_softc** %3, align 8
  %55 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @device_printf(i32 %56, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %58 = load i32, i32* %4, align 4
  store i32 %58, i32* %2, align 4
  br label %112

59:                                               ; preds = %46
  %60 = load %struct.hdmi_softc*, %struct.hdmi_softc** %3, align 8
  %61 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @regulator_enable(i32 %62)
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %59
  %67 = load %struct.hdmi_softc*, %struct.hdmi_softc** %3, align 8
  %68 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @device_printf(i32 %69, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %71 = load i32, i32* %4, align 4
  store i32 %71, i32* %2, align 4
  br label %112

72:                                               ; preds = %59
  %73 = load %struct.hdmi_softc*, %struct.hdmi_softc** %3, align 8
  %74 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @regulator_enable(i32 %75)
  store i32 %76, i32* %4, align 4
  %77 = load i32, i32* %4, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %72
  %80 = load %struct.hdmi_softc*, %struct.hdmi_softc** %3, align 8
  %81 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @device_printf(i32 %82, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %84 = load i32, i32* %4, align 4
  store i32 %84, i32* %2, align 4
  br label %112

85:                                               ; preds = %72
  %86 = load %struct.hdmi_softc*, %struct.hdmi_softc** %3, align 8
  %87 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @clk_enable(i32 %88)
  store i32 %89, i32* %4, align 4
  %90 = load i32, i32* %4, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %85
  %93 = load %struct.hdmi_softc*, %struct.hdmi_softc** %3, align 8
  %94 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @device_printf(i32 %95, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %97 = load i32, i32* %4, align 4
  store i32 %97, i32* %2, align 4
  br label %112

98:                                               ; preds = %85
  %99 = load %struct.hdmi_softc*, %struct.hdmi_softc** %3, align 8
  %100 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @hwreset_deassert(i32 %101)
  store i32 %102, i32* %4, align 4
  %103 = load i32, i32* %4, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %98
  %106 = load %struct.hdmi_softc*, %struct.hdmi_softc** %3, align 8
  %107 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @device_printf(i32 %108, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %110 = load i32, i32* %4, align 4
  store i32 %110, i32* %2, align 4
  br label %112

111:                                              ; preds = %98
  store i32 0, i32* %2, align 4
  br label %112

112:                                              ; preds = %111, %105, %92, %79, %66, %53, %40, %27, %14
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local i32 @clk_set_parent_by_clk(i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @clk_set_freq(i32, i32, i32) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @hwreset_deassert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
