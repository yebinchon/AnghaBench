; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_cpufreq.c_build_speed_points.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_cpufreq.c_build_speed_points.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra124_cpufreq_softc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@cpu_freq_tbl = common dso_local global i32* null, align 8
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra124_cpufreq_softc*)* @build_speed_points to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_speed_points(%struct.tegra124_cpufreq_softc* %0) #0 {
  %2 = alloca %struct.tegra124_cpufreq_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.tegra124_cpufreq_softc* %0, %struct.tegra124_cpufreq_softc** %2, align 8
  %4 = load i32*, i32** @cpu_freq_tbl, align 8
  %5 = call i32 @nitems(i32* %4)
  %6 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %2, align 8
  %7 = getelementptr inbounds %struct.tegra124_cpufreq_softc, %struct.tegra124_cpufreq_softc* %6, i32 0, i32 0
  store i32 %5, i32* %7, align 8
  %8 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %2, align 8
  %9 = getelementptr inbounds %struct.tegra124_cpufreq_softc, %struct.tegra124_cpufreq_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = sext i32 %10 to i64
  %12 = mul i64 4, %11
  %13 = trunc i64 %12 to i32
  %14 = load i32, i32* @M_DEVBUF, align 4
  %15 = load i32, i32* @M_NOWAIT, align 4
  %16 = call %struct.TYPE_2__* @malloc(i32 %13, i32 %14, i32 %15)
  %17 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %2, align 8
  %18 = getelementptr inbounds %struct.tegra124_cpufreq_softc, %struct.tegra124_cpufreq_softc* %17, i32 0, i32 1
  store %struct.TYPE_2__* %16, %struct.TYPE_2__** %18, align 8
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %52, %1
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %2, align 8
  %22 = getelementptr inbounds %struct.tegra124_cpufreq_softc, %struct.tegra124_cpufreq_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %55

25:                                               ; preds = %19
  %26 = load i32*, i32** @cpu_freq_tbl, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %2, align 8
  %32 = getelementptr inbounds %struct.tegra124_cpufreq_softc, %struct.tegra124_cpufreq_softc* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store i32 %30, i32* %37, align 4
  %38 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %2, align 8
  %39 = load i32*, i32** @cpu_freq_tbl, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @freq_to_voltage(%struct.tegra124_cpufreq_softc* %38, i32 %43)
  %45 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %2, align 8
  %46 = getelementptr inbounds %struct.tegra124_cpufreq_softc, %struct.tegra124_cpufreq_softc* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i32 %44, i32* %51, align 4
  br label %52

52:                                               ; preds = %25
  %53 = load i32, i32* %3, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %3, align 4
  br label %19

55:                                               ; preds = %19
  ret void
}

declare dso_local i32 @nitems(i32*) #1

declare dso_local %struct.TYPE_2__* @malloc(i32, i32, i32) #1

declare dso_local i32 @freq_to_voltage(%struct.tegra124_cpufreq_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
