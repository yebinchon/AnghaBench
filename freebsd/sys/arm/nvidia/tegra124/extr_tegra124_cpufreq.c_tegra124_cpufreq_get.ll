; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_cpufreq.c_tegra124_cpufreq_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_cpufreq.c_tegra124_cpufreq_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_setting = type { i32, i32, i32*, i32 }
%struct.tegra124_cpufreq_softc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@CPUFREQ_VAL_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.cf_setting*)* @tegra124_cpufreq_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra124_cpufreq_get(i32* %0, %struct.cf_setting* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.cf_setting*, align 8
  %6 = alloca %struct.tegra124_cpufreq_softc*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.cf_setting* %1, %struct.cf_setting** %5, align 8
  %7 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %8 = icmp eq %struct.cf_setting* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @EINVAL, align 4
  store i32 %10, i32* %3, align 4
  br label %43

11:                                               ; preds = %2
  %12 = load i32*, i32** %4, align 8
  %13 = call %struct.tegra124_cpufreq_softc* @device_get_softc(i32* %12)
  store %struct.tegra124_cpufreq_softc* %13, %struct.tegra124_cpufreq_softc** %6, align 8
  %14 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %15 = load i32, i32* @CPUFREQ_VAL_UNKNOWN, align 4
  %16 = call i32 @memset(%struct.cf_setting* %14, i32 %15, i32 24)
  %17 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %18 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %17, i32 0, i32 2
  store i32* null, i32** %18, align 8
  %19 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %6, align 8
  %20 = getelementptr inbounds %struct.tegra124_cpufreq_softc, %struct.tegra124_cpufreq_softc* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sdiv i32 %23, 1000000
  %25 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %26 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %6, align 8
  %28 = getelementptr inbounds %struct.tegra124_cpufreq_softc, %struct.tegra124_cpufreq_softc* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = sdiv i32 %31, 1000
  %33 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %34 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %6, align 8
  %36 = getelementptr inbounds %struct.tegra124_cpufreq_softc, %struct.tegra124_cpufreq_softc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %39 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 8
  %40 = load i32*, i32** %4, align 8
  %41 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %42 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %41, i32 0, i32 2
  store i32* %40, i32** %42, align 8
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %11, %9
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local %struct.tegra124_cpufreq_softc* @device_get_softc(i32*) #1

declare dso_local i32 @memset(%struct.cf_setting*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
