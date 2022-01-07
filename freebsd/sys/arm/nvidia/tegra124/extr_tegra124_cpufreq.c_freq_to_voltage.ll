; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_cpufreq.c_freq_to_voltage.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_cpufreq.c_freq_to_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra124_cpufreq_softc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, %struct.speedo_entry* }
%struct.speedo_entry = type { i64, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra124_cpufreq_softc*, i64)* @freq_to_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @freq_to_voltage(%struct.tegra124_cpufreq_softc* %0, i64 %1) #0 {
  %3 = alloca %struct.tegra124_cpufreq_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.speedo_entry*, align 8
  %11 = alloca i32, align 4
  store %struct.tegra124_cpufreq_softc* %0, %struct.tegra124_cpufreq_softc** %3, align 8
  store i64 %1, i64* %4, align 8
  store %struct.speedo_entry* null, %struct.speedo_entry** %10, align 8
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %43, %2
  %13 = load i32, i32* %11, align 4
  %14 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %3, align 8
  %15 = getelementptr inbounds %struct.tegra124_cpufreq_softc, %struct.tegra124_cpufreq_softc* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %13, %18
  br i1 %19, label %20, label %46

20:                                               ; preds = %12
  %21 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %3, align 8
  %22 = getelementptr inbounds %struct.tegra124_cpufreq_softc, %struct.tegra124_cpufreq_softc* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 5
  %25 = load %struct.speedo_entry*, %struct.speedo_entry** %24, align 8
  %26 = load i32, i32* %11, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.speedo_entry, %struct.speedo_entry* %25, i64 %27
  %29 = getelementptr inbounds %struct.speedo_entry, %struct.speedo_entry* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %4, align 8
  %32 = icmp sge i64 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %20
  %34 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %3, align 8
  %35 = getelementptr inbounds %struct.tegra124_cpufreq_softc, %struct.tegra124_cpufreq_softc* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 5
  %38 = load %struct.speedo_entry*, %struct.speedo_entry** %37, align 8
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.speedo_entry, %struct.speedo_entry* %38, i64 %40
  store %struct.speedo_entry* %41, %struct.speedo_entry** %10, align 8
  br label %46

42:                                               ; preds = %20
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %11, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %11, align 4
  br label %12

46:                                               ; preds = %33, %12
  %47 = load %struct.speedo_entry*, %struct.speedo_entry** %10, align 8
  %48 = icmp eq %struct.speedo_entry* %47, null
  br i1 %48, label %49, label %63

49:                                               ; preds = %46
  %50 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %3, align 8
  %51 = getelementptr inbounds %struct.tegra124_cpufreq_softc, %struct.tegra124_cpufreq_softc* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 5
  %54 = load %struct.speedo_entry*, %struct.speedo_entry** %53, align 8
  %55 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %3, align 8
  %56 = getelementptr inbounds %struct.tegra124_cpufreq_softc, %struct.tegra124_cpufreq_softc* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sub nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.speedo_entry, %struct.speedo_entry* %54, i64 %61
  store %struct.speedo_entry* %62, %struct.speedo_entry** %10, align 8
  br label %63

63:                                               ; preds = %49, %46
  %64 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %3, align 8
  %65 = getelementptr inbounds %struct.tegra124_cpufreq_softc, %struct.tegra124_cpufreq_softc* %64, i32 0, i32 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %6, align 4
  %69 = load %struct.speedo_entry*, %struct.speedo_entry** %10, align 8
  %70 = getelementptr inbounds %struct.speedo_entry, %struct.speedo_entry* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %3, align 8
  %73 = getelementptr inbounds %struct.tegra124_cpufreq_softc, %struct.tegra124_cpufreq_softc* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = mul nsw i32 %71, %74
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @DIV_ROUND_CLOSEST(i32 %75, i32 %76)
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* %5, align 4
  %79 = load %struct.speedo_entry*, %struct.speedo_entry** %10, align 8
  %80 = getelementptr inbounds %struct.speedo_entry, %struct.speedo_entry* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %78, %81
  %83 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %3, align 8
  %84 = getelementptr inbounds %struct.tegra124_cpufreq_softc, %struct.tegra124_cpufreq_softc* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = mul nsw i32 %82, %85
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @DIV_ROUND_CLOSEST(i32 %86, i32 %87)
  %89 = load %struct.speedo_entry*, %struct.speedo_entry** %10, align 8
  %90 = getelementptr inbounds %struct.speedo_entry, %struct.speedo_entry* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = add nsw i32 %88, %91
  store i32 %92, i32* %5, align 4
  %93 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %3, align 8
  %94 = getelementptr inbounds %struct.tegra124_cpufreq_softc, %struct.tegra124_cpufreq_softc* %93, i32 0, i32 1
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @ROUND_UP(i32 %98, i32 %99)
  store i32 %100, i32* %5, align 4
  %101 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %3, align 8
  %102 = getelementptr inbounds %struct.tegra124_cpufreq_softc, %struct.tegra124_cpufreq_softc* %101, i32 0, i32 1
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %9, align 4
  %107 = call i32 @ROUND_UP(i32 %105, i32 %106)
  store i32 %107, i32* %7, align 4
  %108 = load %struct.tegra124_cpufreq_softc*, %struct.tegra124_cpufreq_softc** %3, align 8
  %109 = getelementptr inbounds %struct.tegra124_cpufreq_softc, %struct.tegra124_cpufreq_softc* %108, i32 0, i32 1
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* %9, align 4
  %114 = call i32 @ROUND_DOWN(i32 %112, i32 %113)
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* %7, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %63
  %119 = load i32, i32* %7, align 4
  store i32 %119, i32* %5, align 4
  br label %120

120:                                              ; preds = %118, %63
  %121 = load i32, i32* %5, align 4
  %122 = load i32, i32* %8, align 4
  %123 = icmp sgt i32 %121, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %120
  %125 = load i32, i32* %8, align 4
  store i32 %125, i32* %5, align 4
  br label %126

126:                                              ; preds = %124, %120
  %127 = load i32, i32* %5, align 4
  ret i32 %127
}

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @ROUND_UP(i32, i32) #1

declare dso_local i32 @ROUND_DOWN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
