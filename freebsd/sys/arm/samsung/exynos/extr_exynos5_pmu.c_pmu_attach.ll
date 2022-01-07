; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_exynos5_pmu.c_pmu_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_exynos5_pmu.c_pmu_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmu_softc = type { i32*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@compat_data = common dso_local global i32 0, align 4
@pmu_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"could not allocate resources\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@pmu_sc = common dso_local global %struct.pmu_softc* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @pmu_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmu_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.pmu_softc*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.pmu_softc* @device_get_softc(i32 %5)
  store %struct.pmu_softc* %6, %struct.pmu_softc** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.pmu_softc*, %struct.pmu_softc** %4, align 8
  %9 = getelementptr inbounds %struct.pmu_softc, %struct.pmu_softc* %8, i32 0, i32 4
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @compat_data, align 4
  %12 = call %struct.TYPE_2__* @ofw_bus_search_compatible(i32 %10, i32 %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.pmu_softc*, %struct.pmu_softc** %4, align 8
  %16 = getelementptr inbounds %struct.pmu_softc, %struct.pmu_softc* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @pmu_spec, align 4
  %19 = load %struct.pmu_softc*, %struct.pmu_softc** %4, align 8
  %20 = getelementptr inbounds %struct.pmu_softc, %struct.pmu_softc* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = call i64 @bus_alloc_resources(i32 %17, i32 %18, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @device_printf(i32 %25, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @ENXIO, align 4
  store i32 %27, i32* %2, align 4
  br label %46

28:                                               ; preds = %1
  %29 = load %struct.pmu_softc*, %struct.pmu_softc** %4, align 8
  %30 = getelementptr inbounds %struct.pmu_softc, %struct.pmu_softc* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @rman_get_bustag(i32 %33)
  %35 = load %struct.pmu_softc*, %struct.pmu_softc** %4, align 8
  %36 = getelementptr inbounds %struct.pmu_softc, %struct.pmu_softc* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load %struct.pmu_softc*, %struct.pmu_softc** %4, align 8
  %38 = getelementptr inbounds %struct.pmu_softc, %struct.pmu_softc* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @rman_get_bushandle(i32 %41)
  %43 = load %struct.pmu_softc*, %struct.pmu_softc** %4, align 8
  %44 = getelementptr inbounds %struct.pmu_softc, %struct.pmu_softc* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load %struct.pmu_softc*, %struct.pmu_softc** %4, align 8
  store %struct.pmu_softc* %45, %struct.pmu_softc** @pmu_sc, align 8
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %28, %24
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.pmu_softc* @device_get_softc(i32) #1

declare dso_local %struct.TYPE_2__* @ofw_bus_search_compatible(i32, i32) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @rman_get_bustag(i32) #1

declare dso_local i32 @rman_get_bushandle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
