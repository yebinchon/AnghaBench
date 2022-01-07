; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_cpufreq.c_tegra124_cpufreq_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_cpufreq.c_tegra124_cpufreq_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_setting = type { i64 }
%struct.tegra124_cpufreq_softc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@cpufreq_lowest_freq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.cf_setting*)* @tegra124_cpufreq_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra124_cpufreq_set(i32 %0, %struct.cf_setting* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.cf_setting*, align 8
  %6 = alloca %struct.tegra124_cpufreq_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.cf_setting* %1, %struct.cf_setting** %5, align 8
  %9 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %10 = icmp eq %struct.cf_setting* %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %13 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11, %2
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %3, align 4
  br label %47

18:                                               ; preds = %11
  %19 = load i32, i32* %4, align 4
  %20 = call %struct.tegra124_cpufreq_softc* @device_get_softc(i32 %19)
  store %struct.tegra124_cpufreq_softc* %20, %struct.tegra124_cpufreq_softc** %6, align 8
  %21 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %22 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @cpufreq_lowest_freq, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %18
  %29 = load i32, i32* @cpufreq_lowest_freq, align 4
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %28, %18
  %31 = load i32, i32* %7, align 4
  %32 = mul nsw i32 %31, 1000000
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %6, align 8
  %35 = getelementptr inbounds %struct.tegra124_cpufreq_softc, %struct.tegra124_cpufreq_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp sge i32 %33, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %6, align 8
  %40 = getelementptr inbounds %struct.tegra124_cpufreq_softc, %struct.tegra124_cpufreq_softc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %38, %30
  %43 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @set_cpu_freq(%struct.tegra124_cpufreq_softc* %43, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %42, %16
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.tegra124_cpufreq_softc* @device_get_softc(i32) #1

declare dso_local i32 @set_cpu_freq(%struct.tegra124_cpufreq_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
