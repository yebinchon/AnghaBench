; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_cpufreq.c_get_speed_point.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_cpufreq.c_get_speed_point.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_speed_point = type { i64 }
%struct.tegra124_cpufreq_softc = type { i32, %struct.cpu_speed_point* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cpu_speed_point* (%struct.tegra124_cpufreq_softc*, i64)* @get_speed_point to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cpu_speed_point* @get_speed_point(%struct.tegra124_cpufreq_softc* %0, i64 %1) #0 {
  %3 = alloca %struct.cpu_speed_point*, align 8
  %4 = alloca %struct.tegra124_cpufreq_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.tegra124_cpufreq_softc* %0, %struct.tegra124_cpufreq_softc** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %4, align 8
  %8 = getelementptr inbounds %struct.tegra124_cpufreq_softc, %struct.tegra124_cpufreq_softc* %7, i32 0, i32 1
  %9 = load %struct.cpu_speed_point*, %struct.cpu_speed_point** %8, align 8
  %10 = getelementptr inbounds %struct.cpu_speed_point, %struct.cpu_speed_point* %9, i64 0
  %11 = getelementptr inbounds %struct.cpu_speed_point, %struct.cpu_speed_point* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* %5, align 8
  %14 = icmp sge i64 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %4, align 8
  %17 = getelementptr inbounds %struct.tegra124_cpufreq_softc, %struct.tegra124_cpufreq_softc* %16, i32 0, i32 1
  %18 = load %struct.cpu_speed_point*, %struct.cpu_speed_point** %17, align 8
  %19 = getelementptr inbounds %struct.cpu_speed_point, %struct.cpu_speed_point* %18, i64 0
  store %struct.cpu_speed_point* %19, %struct.cpu_speed_point** %3, align 8
  br label %61

20:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %48, %20
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %4, align 8
  %24 = getelementptr inbounds %struct.tegra124_cpufreq_softc, %struct.tegra124_cpufreq_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sub nsw i32 %25, 1
  %27 = icmp slt i32 %22, %26
  br i1 %27, label %28, label %51

28:                                               ; preds = %21
  %29 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %4, align 8
  %30 = getelementptr inbounds %struct.tegra124_cpufreq_softc, %struct.tegra124_cpufreq_softc* %29, i32 0, i32 1
  %31 = load %struct.cpu_speed_point*, %struct.cpu_speed_point** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.cpu_speed_point, %struct.cpu_speed_point* %31, i64 %34
  %36 = getelementptr inbounds %struct.cpu_speed_point, %struct.cpu_speed_point* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %5, align 8
  %39 = icmp sgt i64 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %28
  %41 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %4, align 8
  %42 = getelementptr inbounds %struct.tegra124_cpufreq_softc, %struct.tegra124_cpufreq_softc* %41, i32 0, i32 1
  %43 = load %struct.cpu_speed_point*, %struct.cpu_speed_point** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.cpu_speed_point, %struct.cpu_speed_point* %43, i64 %45
  store %struct.cpu_speed_point* %46, %struct.cpu_speed_point** %3, align 8
  br label %61

47:                                               ; preds = %28
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %21

51:                                               ; preds = %21
  %52 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %4, align 8
  %53 = getelementptr inbounds %struct.tegra124_cpufreq_softc, %struct.tegra124_cpufreq_softc* %52, i32 0, i32 1
  %54 = load %struct.cpu_speed_point*, %struct.cpu_speed_point** %53, align 8
  %55 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %4, align 8
  %56 = getelementptr inbounds %struct.tegra124_cpufreq_softc, %struct.tegra124_cpufreq_softc* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.cpu_speed_point, %struct.cpu_speed_point* %54, i64 %58
  %60 = getelementptr inbounds %struct.cpu_speed_point, %struct.cpu_speed_point* %59, i64 -1
  store %struct.cpu_speed_point* %60, %struct.cpu_speed_point** %3, align 8
  br label %61

61:                                               ; preds = %51, %40, %15
  %62 = load %struct.cpu_speed_point*, %struct.cpu_speed_point** %3, align 8
  ret %struct.cpu_speed_point* %62
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
