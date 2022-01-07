; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/rockchip/extr_rk30xx_pmu.c_rk30_pmu_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/rockchip/extr_rk30xx_pmu.c_rk30_pmu_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk30_pmu_softc = type { i32, i32, i32 }

@rk30_pmu_sc = common dso_local global %struct.rk30_pmu_softc* null, align 8
@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"could not allocate resource\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @rk30_pmu_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk30_pmu_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.rk30_pmu_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.rk30_pmu_softc* @device_get_softc(i32 %6)
  store %struct.rk30_pmu_softc* %7, %struct.rk30_pmu_softc** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.rk30_pmu_softc*, %struct.rk30_pmu_softc** @rk30_pmu_sc, align 8
  %9 = icmp ne %struct.rk30_pmu_softc* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @ENXIO, align 4
  store i32 %11, i32* %2, align 4
  br label %41

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @SYS_RES_MEMORY, align 4
  %15 = load i32, i32* @RF_ACTIVE, align 4
  %16 = call i32 @bus_alloc_resource_any(i32 %13, i32 %14, i32* %5, i32 %15)
  %17 = load %struct.rk30_pmu_softc*, %struct.rk30_pmu_softc** %4, align 8
  %18 = getelementptr inbounds %struct.rk30_pmu_softc, %struct.rk30_pmu_softc* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.rk30_pmu_softc*, %struct.rk30_pmu_softc** %4, align 8
  %20 = getelementptr inbounds %struct.rk30_pmu_softc, %struct.rk30_pmu_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %12
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @device_printf(i32 %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @ENXIO, align 4
  store i32 %26, i32* %2, align 4
  br label %41

27:                                               ; preds = %12
  %28 = load %struct.rk30_pmu_softc*, %struct.rk30_pmu_softc** %4, align 8
  %29 = getelementptr inbounds %struct.rk30_pmu_softc, %struct.rk30_pmu_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @rman_get_bustag(i32 %30)
  %32 = load %struct.rk30_pmu_softc*, %struct.rk30_pmu_softc** %4, align 8
  %33 = getelementptr inbounds %struct.rk30_pmu_softc, %struct.rk30_pmu_softc* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load %struct.rk30_pmu_softc*, %struct.rk30_pmu_softc** %4, align 8
  %35 = getelementptr inbounds %struct.rk30_pmu_softc, %struct.rk30_pmu_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @rman_get_bushandle(i32 %36)
  %38 = load %struct.rk30_pmu_softc*, %struct.rk30_pmu_softc** %4, align 8
  %39 = getelementptr inbounds %struct.rk30_pmu_softc, %struct.rk30_pmu_softc* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.rk30_pmu_softc*, %struct.rk30_pmu_softc** %4, align 8
  store %struct.rk30_pmu_softc* %40, %struct.rk30_pmu_softc** @rk30_pmu_sc, align 8
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %27, %23, %10
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local %struct.rk30_pmu_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @rman_get_bustag(i32) #1

declare dso_local i32 @rman_get_bushandle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
