; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_cpufreq.c_get_fdt_resources.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_cpufreq.c_get_fdt_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra124_cpufreq_softc = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"vdd-cpu-supply\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Cannot get 'vdd-cpu' regulator\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"cpu_g\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Cannot get 'cpu_g' clock: %d\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"cpu_lp\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Cannot get 'cpu_lp' clock\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"pll_x\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Cannot get 'pll_x' clock\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"pll_p\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"Cannot get 'pll_p' clock\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"dfll\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra124_cpufreq_softc*, i32)* @get_fdt_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_fdt_resources(%struct.tegra124_cpufreq_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tegra124_cpufreq_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tegra124_cpufreq_softc* %0, %struct.tegra124_cpufreq_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %4, align 8
  %9 = getelementptr inbounds %struct.tegra124_cpufreq_softc, %struct.tegra124_cpufreq_softc* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @device_get_parent(i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %4, align 8
  %14 = getelementptr inbounds %struct.tegra124_cpufreq_softc, %struct.tegra124_cpufreq_softc* %13, i32 0, i32 6
  %15 = call i32 @regulator_get_by_ofw_property(i32 %12, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %4, align 8
  %20 = getelementptr inbounds %struct.tegra124_cpufreq_softc, %struct.tegra124_cpufreq_softc* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (i32, i8*, ...) @device_printf(i32 %21, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %3, align 4
  br label %84

24:                                               ; preds = %2
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %4, align 8
  %27 = getelementptr inbounds %struct.tegra124_cpufreq_softc, %struct.tegra124_cpufreq_softc* %26, i32 0, i32 5
  %28 = call i32 @clk_get_by_ofw_name(i32 %25, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %24
  %32 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %4, align 8
  %33 = getelementptr inbounds %struct.tegra124_cpufreq_softc, %struct.tegra124_cpufreq_softc* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 (i32, i8*, ...) @device_printf(i32 %34, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @ENXIO, align 4
  store i32 %37, i32* %3, align 4
  br label %84

38:                                               ; preds = %24
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %4, align 8
  %41 = getelementptr inbounds %struct.tegra124_cpufreq_softc, %struct.tegra124_cpufreq_softc* %40, i32 0, i32 4
  %42 = call i32 @clk_get_by_ofw_name(i32 %39, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32* %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %38
  %46 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %4, align 8
  %47 = getelementptr inbounds %struct.tegra124_cpufreq_softc, %struct.tegra124_cpufreq_softc* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i32, i8*, ...) @device_printf(i32 %48, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %50 = load i32, i32* @ENXIO, align 4
  store i32 %50, i32* %3, align 4
  br label %84

51:                                               ; preds = %38
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %4, align 8
  %54 = getelementptr inbounds %struct.tegra124_cpufreq_softc, %struct.tegra124_cpufreq_softc* %53, i32 0, i32 3
  %55 = call i32 @clk_get_by_ofw_name(i32 %52, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32* %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %51
  %59 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %4, align 8
  %60 = getelementptr inbounds %struct.tegra124_cpufreq_softc, %struct.tegra124_cpufreq_softc* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (i32, i8*, ...) @device_printf(i32 %61, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %63 = load i32, i32* @ENXIO, align 4
  store i32 %63, i32* %3, align 4
  br label %84

64:                                               ; preds = %51
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %4, align 8
  %67 = getelementptr inbounds %struct.tegra124_cpufreq_softc, %struct.tegra124_cpufreq_softc* %66, i32 0, i32 1
  %68 = call i32 @clk_get_by_ofw_name(i32 %65, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32* %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %64
  %72 = load i32, i32* %7, align 4
  %73 = call i32 (i32, i8*, ...) @device_printf(i32 %72, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  %74 = load i32, i32* @ENXIO, align 4
  store i32 %74, i32* %3, align 4
  br label %84

75:                                               ; preds = %64
  %76 = load i32, i32* %7, align 4
  %77 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %4, align 8
  %78 = getelementptr inbounds %struct.tegra124_cpufreq_softc, %struct.tegra124_cpufreq_softc* %77, i32 0, i32 0
  %79 = call i32 @clk_get_by_ofw_name(i32 %76, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  br label %83

83:                                               ; preds = %82, %75
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %83, %71, %58, %45, %31, %18
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @regulator_get_by_ofw_property(i32, i32, i8*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @clk_get_by_ofw_name(i32, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
