; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_cpufreq.c_set_cpu_freq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_cpufreq.c_set_cpu_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra124_cpufreq_softc = type { %struct.cpu_speed_point*, i32, i32, i32, i32, i32 }
%struct.cpu_speed_point = type { i64, i32 }

@.str = private unnamed_addr constant [26 x i8] c"Can't set parent to PLLP\0A\00", align 1
@CLK_SET_ROUND_DOWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Can't set CPU clock frequency\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Can't set parent to PLLX\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra124_cpufreq_softc*, i32)* @set_cpu_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_cpu_freq(%struct.tegra124_cpufreq_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tegra124_cpufreq_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cpu_speed_point*, align 8
  %7 = alloca i32, align 4
  store %struct.tegra124_cpufreq_softc* %0, %struct.tegra124_cpufreq_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.cpu_speed_point* @get_speed_point(%struct.tegra124_cpufreq_softc* %8, i32 %9)
  store %struct.cpu_speed_point* %10, %struct.cpu_speed_point** %6, align 8
  %11 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %4, align 8
  %12 = getelementptr inbounds %struct.tegra124_cpufreq_softc, %struct.tegra124_cpufreq_softc* %11, i32 0, i32 0
  %13 = load %struct.cpu_speed_point*, %struct.cpu_speed_point** %12, align 8
  %14 = getelementptr inbounds %struct.cpu_speed_point, %struct.cpu_speed_point* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.cpu_speed_point*, %struct.cpu_speed_point** %6, align 8
  %17 = getelementptr inbounds %struct.cpu_speed_point, %struct.cpu_speed_point* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp slt i64 %15, %18
  br i1 %19, label %20, label %37

20:                                               ; preds = %2
  %21 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %4, align 8
  %22 = getelementptr inbounds %struct.tegra124_cpufreq_softc, %struct.tegra124_cpufreq_softc* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.cpu_speed_point*, %struct.cpu_speed_point** %6, align 8
  %25 = getelementptr inbounds %struct.cpu_speed_point, %struct.cpu_speed_point* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.cpu_speed_point*, %struct.cpu_speed_point** %6, align 8
  %28 = getelementptr inbounds %struct.cpu_speed_point, %struct.cpu_speed_point* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @regulator_set_voltage(i32 %23, i64 %26, i64 %29)
  store i32 %30, i32* %7, align 4
  %31 = call i32 @DELAY(i32 10000)
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %20
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %3, align 4
  br label %116

36:                                               ; preds = %20
  br label %37

37:                                               ; preds = %36, %2
  %38 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %4, align 8
  %39 = getelementptr inbounds %struct.tegra124_cpufreq_softc, %struct.tegra124_cpufreq_softc* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %4, align 8
  %42 = getelementptr inbounds %struct.tegra124_cpufreq_softc, %struct.tegra124_cpufreq_softc* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @clk_set_parent_by_clk(i32 %40, i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %37
  %48 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %4, align 8
  %49 = getelementptr inbounds %struct.tegra124_cpufreq_softc, %struct.tegra124_cpufreq_softc* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @device_printf(i32 %50, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %3, align 4
  br label %116

53:                                               ; preds = %37
  %54 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %4, align 8
  %55 = getelementptr inbounds %struct.tegra124_cpufreq_softc, %struct.tegra124_cpufreq_softc* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.cpu_speed_point*, %struct.cpu_speed_point** %6, align 8
  %58 = getelementptr inbounds %struct.cpu_speed_point, %struct.cpu_speed_point* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @CLK_SET_ROUND_DOWN, align 4
  %61 = call i32 @clk_set_freq(i32 %56, i32 %59, i32 %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %53
  %65 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %4, align 8
  %66 = getelementptr inbounds %struct.tegra124_cpufreq_softc, %struct.tegra124_cpufreq_softc* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @device_printf(i32 %67, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %69 = load i32, i32* %7, align 4
  store i32 %69, i32* %3, align 4
  br label %116

70:                                               ; preds = %53
  %71 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %4, align 8
  %72 = getelementptr inbounds %struct.tegra124_cpufreq_softc, %struct.tegra124_cpufreq_softc* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %4, align 8
  %75 = getelementptr inbounds %struct.tegra124_cpufreq_softc, %struct.tegra124_cpufreq_softc* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @clk_set_parent_by_clk(i32 %73, i32 %76)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %70
  %81 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %4, align 8
  %82 = getelementptr inbounds %struct.tegra124_cpufreq_softc, %struct.tegra124_cpufreq_softc* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @device_printf(i32 %83, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %85 = load i32, i32* %7, align 4
  store i32 %85, i32* %3, align 4
  br label %116

86:                                               ; preds = %70
  %87 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %4, align 8
  %88 = getelementptr inbounds %struct.tegra124_cpufreq_softc, %struct.tegra124_cpufreq_softc* %87, i32 0, i32 0
  %89 = load %struct.cpu_speed_point*, %struct.cpu_speed_point** %88, align 8
  %90 = getelementptr inbounds %struct.cpu_speed_point, %struct.cpu_speed_point* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.cpu_speed_point*, %struct.cpu_speed_point** %6, align 8
  %93 = getelementptr inbounds %struct.cpu_speed_point, %struct.cpu_speed_point* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp sgt i64 %91, %94
  br i1 %95, label %96, label %112

96:                                               ; preds = %86
  %97 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %4, align 8
  %98 = getelementptr inbounds %struct.tegra124_cpufreq_softc, %struct.tegra124_cpufreq_softc* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.cpu_speed_point*, %struct.cpu_speed_point** %6, align 8
  %101 = getelementptr inbounds %struct.cpu_speed_point, %struct.cpu_speed_point* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.cpu_speed_point*, %struct.cpu_speed_point** %6, align 8
  %104 = getelementptr inbounds %struct.cpu_speed_point, %struct.cpu_speed_point* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @regulator_set_voltage(i32 %99, i64 %102, i64 %105)
  store i32 %106, i32* %7, align 4
  %107 = load i32, i32* %7, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %96
  %110 = load i32, i32* %7, align 4
  store i32 %110, i32* %3, align 4
  br label %116

111:                                              ; preds = %96
  br label %112

112:                                              ; preds = %111, %86
  %113 = load %struct.cpu_speed_point*, %struct.cpu_speed_point** %6, align 8
  %114 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %4, align 8
  %115 = getelementptr inbounds %struct.tegra124_cpufreq_softc, %struct.tegra124_cpufreq_softc* %114, i32 0, i32 0
  store %struct.cpu_speed_point* %113, %struct.cpu_speed_point** %115, align 8
  store i32 0, i32* %3, align 4
  br label %116

116:                                              ; preds = %112, %109, %80, %64, %47, %34
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local %struct.cpu_speed_point* @get_speed_point(%struct.tegra124_cpufreq_softc*, i32) #1

declare dso_local i32 @regulator_set_voltage(i32, i64, i64) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @clk_set_parent_by_clk(i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @clk_set_freq(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
