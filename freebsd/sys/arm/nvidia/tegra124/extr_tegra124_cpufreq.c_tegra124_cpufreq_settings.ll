; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_cpufreq.c_tegra124_cpufreq_settings.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_cpufreq.c_tegra124_cpufreq_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_setting = type { i32, i32, i32, i32 }
%struct.tegra124_cpufreq_softc = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@CPUFREQ_VAL_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.cf_setting*, i32*)* @tegra124_cpufreq_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra124_cpufreq_settings(i32 %0, %struct.cf_setting* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.cf_setting*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.tegra124_cpufreq_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.cf_setting* %1, %struct.cf_setting** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.cf_setting*, %struct.cf_setting** %6, align 8
  %13 = icmp eq %struct.cf_setting* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32*, i32** %7, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %14, %3
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %4, align 4
  br label %108

19:                                               ; preds = %14
  %20 = load i32, i32* %5, align 4
  %21 = call %struct.tegra124_cpufreq_softc* @device_get_softc(i32 %20)
  store %struct.tegra124_cpufreq_softc* %21, %struct.tegra124_cpufreq_softc** %8, align 8
  %22 = load %struct.cf_setting*, %struct.cf_setting** %6, align 8
  %23 = load i32, i32* @CPUFREQ_VAL_UNKNOWN, align 4
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 16, %26
  %28 = trunc i64 %27 to i32
  %29 = call i32 @memset(%struct.cf_setting* %22, i32 %23, i32 %28)
  %30 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %8, align 8
  %31 = getelementptr inbounds %struct.tegra124_cpufreq_softc, %struct.tegra124_cpufreq_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @min(i32 %32, i32 %34)
  store i32 %35, i32* %11, align 4
  store i32 0, i32* %9, align 4
  %36 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %8, align 8
  %37 = getelementptr inbounds %struct.tegra124_cpufreq_softc, %struct.tegra124_cpufreq_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sub nsw i32 %38, 1
  store i32 %39, i32* %10, align 4
  br label %40

40:                                               ; preds = %102, %19
  %41 = load i32, i32* %10, align 4
  %42 = icmp sge i32 %41, 0
  br i1 %42, label %43, label %105

43:                                               ; preds = %40
  %44 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %8, align 8
  %45 = getelementptr inbounds %struct.tegra124_cpufreq_softc, %struct.tegra124_cpufreq_softc* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %8, align 8
  %48 = getelementptr inbounds %struct.tegra124_cpufreq_softc, %struct.tegra124_cpufreq_softc* %47, i32 0, i32 3
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %46, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %43
  br label %102

57:                                               ; preds = %43
  %58 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %8, align 8
  %59 = getelementptr inbounds %struct.tegra124_cpufreq_softc, %struct.tegra124_cpufreq_softc* %58, i32 0, i32 3
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = sdiv i32 %65, 1000000
  %67 = load %struct.cf_setting*, %struct.cf_setting** %6, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %67, i64 %69
  %71 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %70, i32 0, i32 0
  store i32 %66, i32* %71, align 4
  %72 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %8, align 8
  %73 = getelementptr inbounds %struct.tegra124_cpufreq_softc, %struct.tegra124_cpufreq_softc* %72, i32 0, i32 3
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = sdiv i32 %79, 1000
  %81 = load %struct.cf_setting*, %struct.cf_setting** %6, align 8
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %81, i64 %83
  %85 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %84, i32 0, i32 1
  store i32 %80, i32* %85, align 4
  %86 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %8, align 8
  %87 = getelementptr inbounds %struct.tegra124_cpufreq_softc, %struct.tegra124_cpufreq_softc* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.cf_setting*, %struct.cf_setting** %6, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %89, i64 %91
  %93 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %92, i32 0, i32 3
  store i32 %88, i32* %93, align 4
  %94 = load i32, i32* %5, align 4
  %95 = load %struct.cf_setting*, %struct.cf_setting** %6, align 8
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %95, i64 %97
  %99 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %98, i32 0, i32 2
  store i32 %94, i32* %99, align 4
  %100 = load i32, i32* %9, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %9, align 4
  br label %102

102:                                              ; preds = %57, %56
  %103 = load i32, i32* %10, align 4
  %104 = add nsw i32 %103, -1
  store i32 %104, i32* %10, align 4
  br label %40

105:                                              ; preds = %40
  %106 = load i32, i32* %9, align 4
  %107 = load i32*, i32** %7, align 8
  store i32 %106, i32* %107, align 4
  store i32 0, i32* %4, align 4
  br label %108

108:                                              ; preds = %105, %17
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local %struct.tegra124_cpufreq_softc* @device_get_softc(i32) #1

declare dso_local i32 @memset(%struct.cf_setting*, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
