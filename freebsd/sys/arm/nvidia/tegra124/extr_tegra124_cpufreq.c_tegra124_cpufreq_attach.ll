; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_cpufreq.c_tegra124_cpufreq_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_cpufreq.c_tegra124_cpufreq_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32 }
%struct.tegra124_cpufreq_softc = type { i64, i32, i8*, i32, i32, i32*, i32, i32, i32 }

@tegra_sku_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@tegra124_cpu_volt_pllx_def = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Can't get CPU clock frequency\0A\00", align 1
@cpu_max_freq = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"Can't set initial CPU clock frequency\0A\00", align 1
@tegra124_cpu_volt_dpll_def = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @tegra124_cpufreq_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra124_cpufreq_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.tegra124_cpufreq_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.tegra124_cpufreq_softc* @device_get_softc(i32 %7)
  store %struct.tegra124_cpufreq_softc* %8, %struct.tegra124_cpufreq_softc** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %4, align 8
  %11 = getelementptr inbounds %struct.tegra124_cpufreq_softc, %struct.tegra124_cpufreq_softc* %10, i32 0, i32 8
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @device_get_parent(i32 %12)
  %14 = call i32 @ofw_bus_get_node(i32 %13)
  %15 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %4, align 8
  %16 = getelementptr inbounds %struct.tegra124_cpufreq_softc, %struct.tegra124_cpufreq_softc* %15, i32 0, i32 4
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tegra_sku_info, i32 0, i32 2), align 4
  %18 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %4, align 8
  %19 = getelementptr inbounds %struct.tegra124_cpufreq_softc, %struct.tegra124_cpufreq_softc* %18, i32 0, i32 7
  store i32 %17, i32* %19, align 4
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tegra_sku_info, i32 0, i32 0), align 8
  %21 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %4, align 8
  %22 = getelementptr inbounds %struct.tegra124_cpufreq_softc, %struct.tegra124_cpufreq_softc* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tegra_sku_info, i32 0, i32 1), align 8
  %24 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %4, align 8
  %25 = getelementptr inbounds %struct.tegra124_cpufreq_softc, %struct.tegra124_cpufreq_softc* %24, i32 0, i32 6
  store i32 %23, i32* %25, align 8
  %26 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %4, align 8
  %27 = getelementptr inbounds %struct.tegra124_cpufreq_softc, %struct.tegra124_cpufreq_softc* %26, i32 0, i32 5
  store i32* @tegra124_cpu_volt_pllx_def, i32** %27, align 8
  %28 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %4, align 8
  %29 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %4, align 8
  %30 = getelementptr inbounds %struct.tegra124_cpufreq_softc, %struct.tegra124_cpufreq_softc* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @get_fdt_resources(%struct.tegra124_cpufreq_softc* %28, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %1
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %2, align 4
  br label %89

37:                                               ; preds = %1
  %38 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %4, align 8
  %39 = call i32 @build_speed_points(%struct.tegra124_cpufreq_softc* %38)
  %40 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %4, align 8
  %41 = getelementptr inbounds %struct.tegra124_cpufreq_softc, %struct.tegra124_cpufreq_softc* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @clk_get_freq(i32 %42, i32* %5)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %37
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @device_printf(i32 %47, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %2, align 4
  br label %89

50:                                               ; preds = %37
  %51 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %4, align 8
  %52 = getelementptr inbounds %struct.tegra124_cpufreq_softc, %struct.tegra124_cpufreq_softc* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i8**, i8*** @cpu_max_freq, align 8
  %55 = call i64 @nitems(i8** %54)
  %56 = icmp ult i64 %53, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %50
  %58 = load i8**, i8*** @cpu_max_freq, align 8
  %59 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %4, align 8
  %60 = getelementptr inbounds %struct.tegra124_cpufreq_softc, %struct.tegra124_cpufreq_softc* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds i8*, i8** %58, i64 %61
  %63 = load i8*, i8** %62, align 8
  %64 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %4, align 8
  %65 = getelementptr inbounds %struct.tegra124_cpufreq_softc, %struct.tegra124_cpufreq_softc* %64, i32 0, i32 2
  store i8* %63, i8** %65, align 8
  br label %72

66:                                               ; preds = %50
  %67 = load i8**, i8*** @cpu_max_freq, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 0
  %69 = load i8*, i8** %68, align 8
  %70 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %4, align 8
  %71 = getelementptr inbounds %struct.tegra124_cpufreq_softc, %struct.tegra124_cpufreq_softc* %70, i32 0, i32 2
  store i8* %69, i8** %71, align 8
  br label %72

72:                                               ; preds = %66, %57
  %73 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %4, align 8
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @get_speed_point(%struct.tegra124_cpufreq_softc* %73, i32 %74)
  %76 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %4, align 8
  %77 = getelementptr inbounds %struct.tegra124_cpufreq_softc, %struct.tegra124_cpufreq_softc* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 8
  %78 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %4, align 8
  %79 = call i32 @set_cpu_freq(%struct.tegra124_cpufreq_softc* %78, i32 1632000000)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %72
  %83 = load i32, i32* %3, align 4
  %84 = call i32 @device_printf(i32 %83, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %85 = load i32, i32* %6, align 4
  store i32 %85, i32* %2, align 4
  br label %89

86:                                               ; preds = %72
  %87 = load i32, i32* %3, align 4
  %88 = call i32 @cpufreq_register(i32 %87)
  store i32 0, i32* %2, align 4
  br label %89

89:                                               ; preds = %86, %82, %46, %35
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local %struct.tegra124_cpufreq_softc* @device_get_softc(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @get_fdt_resources(%struct.tegra124_cpufreq_softc*, i32) #1

declare dso_local i32 @build_speed_points(%struct.tegra124_cpufreq_softc*) #1

declare dso_local i32 @clk_get_freq(i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @nitems(i8**) #1

declare dso_local i32 @get_speed_point(%struct.tegra124_cpufreq_softc*, i32) #1

declare dso_local i32 @set_cpu_freq(%struct.tegra124_cpufreq_softc*, i32) #1

declare dso_local i32 @cpufreq_register(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
