; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_cpufreq.c_tegra124_cpufreq_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_cpufreq.c_tegra124_cpufreq_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra124_cpufreq_softc = type { i32*, i32*, i32*, i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @tegra124_cpufreq_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra124_cpufreq_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra124_cpufreq_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.tegra124_cpufreq_softc* @device_get_softc(i32 %4)
  store %struct.tegra124_cpufreq_softc* %5, %struct.tegra124_cpufreq_softc** %3, align 8
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @cpufreq_unregister(i32 %6)
  %8 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %3, align 8
  %9 = getelementptr inbounds %struct.tegra124_cpufreq_softc, %struct.tegra124_cpufreq_softc* %8, i32 0, i32 5
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %3, align 8
  %14 = getelementptr inbounds %struct.tegra124_cpufreq_softc, %struct.tegra124_cpufreq_softc* %13, i32 0, i32 5
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @regulator_release(i32* %15)
  br label %17

17:                                               ; preds = %12, %1
  %18 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %3, align 8
  %19 = getelementptr inbounds %struct.tegra124_cpufreq_softc, %struct.tegra124_cpufreq_softc* %18, i32 0, i32 4
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %3, align 8
  %24 = getelementptr inbounds %struct.tegra124_cpufreq_softc, %struct.tegra124_cpufreq_softc* %23, i32 0, i32 4
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @clk_release(i32* %25)
  br label %27

27:                                               ; preds = %22, %17
  %28 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %3, align 8
  %29 = getelementptr inbounds %struct.tegra124_cpufreq_softc, %struct.tegra124_cpufreq_softc* %28, i32 0, i32 3
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %3, align 8
  %34 = getelementptr inbounds %struct.tegra124_cpufreq_softc, %struct.tegra124_cpufreq_softc* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @clk_release(i32* %35)
  br label %37

37:                                               ; preds = %32, %27
  %38 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %3, align 8
  %39 = getelementptr inbounds %struct.tegra124_cpufreq_softc, %struct.tegra124_cpufreq_softc* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %3, align 8
  %44 = getelementptr inbounds %struct.tegra124_cpufreq_softc, %struct.tegra124_cpufreq_softc* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @clk_release(i32* %45)
  br label %47

47:                                               ; preds = %42, %37
  %48 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %3, align 8
  %49 = getelementptr inbounds %struct.tegra124_cpufreq_softc, %struct.tegra124_cpufreq_softc* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %3, align 8
  %54 = getelementptr inbounds %struct.tegra124_cpufreq_softc, %struct.tegra124_cpufreq_softc* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @clk_release(i32* %55)
  br label %57

57:                                               ; preds = %52, %47
  %58 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %3, align 8
  %59 = getelementptr inbounds %struct.tegra124_cpufreq_softc, %struct.tegra124_cpufreq_softc* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %3, align 8
  %64 = getelementptr inbounds %struct.tegra124_cpufreq_softc, %struct.tegra124_cpufreq_softc* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @clk_release(i32* %65)
  br label %67

67:                                               ; preds = %62, %57
  ret i32 0
}

declare dso_local %struct.tegra124_cpufreq_softc* @device_get_softc(i32) #1

declare dso_local i32 @cpufreq_unregister(i32) #1

declare dso_local i32 @regulator_release(i32*) #1

declare dso_local i32 @clk_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
