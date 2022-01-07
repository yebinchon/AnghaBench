; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_tegra_hdmi.c_get_fdt_resources.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_tegra_hdmi.c_get_fdt_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_softc = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"hdmi-supply\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Cannot get 'hdmi' regulator\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"pll-supply\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Cannot get 'pll' regulator\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"vdd-supply\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Cannot get 'vdd' regulator\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"hdmi\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"Cannot get 'hdmi' reset\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"parent\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"Cannot get 'parent' clock\0A\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"Cannot get 'hdmi' clock\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdmi_softc*, i32)* @get_fdt_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_fdt_resources(%struct.hdmi_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hdmi_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hdmi_softc* %0, %struct.hdmi_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.hdmi_softc*, %struct.hdmi_softc** %4, align 8
  %8 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.hdmi_softc*, %struct.hdmi_softc** %4, align 8
  %11 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %10, i32 0, i32 6
  %12 = call i32 @regulator_get_by_ofw_property(i32 %9, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.hdmi_softc*, %struct.hdmi_softc** %4, align 8
  %17 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @device_printf(i32 %18, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32, i32* @ENXIO, align 4
  store i32 %20, i32* %3, align 4
  br label %97

21:                                               ; preds = %2
  %22 = load %struct.hdmi_softc*, %struct.hdmi_softc** %4, align 8
  %23 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.hdmi_softc*, %struct.hdmi_softc** %4, align 8
  %26 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %25, i32 0, i32 5
  %27 = call i32 @regulator_get_by_ofw_property(i32 %24, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %21
  %31 = load %struct.hdmi_softc*, %struct.hdmi_softc** %4, align 8
  %32 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @device_printf(i32 %33, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %35 = load i32, i32* @ENXIO, align 4
  store i32 %35, i32* %3, align 4
  br label %97

36:                                               ; preds = %21
  %37 = load %struct.hdmi_softc*, %struct.hdmi_softc** %4, align 8
  %38 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.hdmi_softc*, %struct.hdmi_softc** %4, align 8
  %41 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %40, i32 0, i32 4
  %42 = call i32 @regulator_get_by_ofw_property(i32 %39, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32* %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %36
  %46 = load %struct.hdmi_softc*, %struct.hdmi_softc** %4, align 8
  %47 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @device_printf(i32 %48, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %50 = load i32, i32* @ENXIO, align 4
  store i32 %50, i32* %3, align 4
  br label %97

51:                                               ; preds = %36
  %52 = load %struct.hdmi_softc*, %struct.hdmi_softc** %4, align 8
  %53 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.hdmi_softc*, %struct.hdmi_softc** %4, align 8
  %56 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %55, i32 0, i32 3
  %57 = call i32 @hwreset_get_by_ofw_name(i32 %54, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32* %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %51
  %61 = load %struct.hdmi_softc*, %struct.hdmi_softc** %4, align 8
  %62 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @device_printf(i32 %63, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  %65 = load i32, i32* @ENXIO, align 4
  store i32 %65, i32* %3, align 4
  br label %97

66:                                               ; preds = %51
  %67 = load %struct.hdmi_softc*, %struct.hdmi_softc** %4, align 8
  %68 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.hdmi_softc*, %struct.hdmi_softc** %4, align 8
  %71 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %70, i32 0, i32 2
  %72 = call i32 @clk_get_by_ofw_name(i32 %69, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32* %71)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %66
  %76 = load %struct.hdmi_softc*, %struct.hdmi_softc** %4, align 8
  %77 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @device_printf(i32 %78, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  %80 = load i32, i32* @ENXIO, align 4
  store i32 %80, i32* %3, align 4
  br label %97

81:                                               ; preds = %66
  %82 = load %struct.hdmi_softc*, %struct.hdmi_softc** %4, align 8
  %83 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.hdmi_softc*, %struct.hdmi_softc** %4, align 8
  %86 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %85, i32 0, i32 1
  %87 = call i32 @clk_get_by_ofw_name(i32 %84, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32* %86)
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %6, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %81
  %91 = load %struct.hdmi_softc*, %struct.hdmi_softc** %4, align 8
  %92 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @device_printf(i32 %93, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  %95 = load i32, i32* @ENXIO, align 4
  store i32 %95, i32* %3, align 4
  br label %97

96:                                               ; preds = %81
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %96, %90, %75, %60, %45, %30, %15
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @regulator_get_by_ofw_property(i32, i32, i8*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @hwreset_get_by_ofw_name(i32, i32, i8*, i32*) #1

declare dso_local i32 @clk_get_by_ofw_name(i32, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
