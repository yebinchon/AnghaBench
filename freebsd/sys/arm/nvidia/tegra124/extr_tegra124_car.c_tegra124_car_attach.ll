; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_car.c_tegra124_car_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_car.c_tegra124_car_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra124_car_softc = type { i64, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@MTX_DEF = common dso_local global i32 0, align 4
@compat_data = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"cannot allocate memory resource\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @tegra124_car_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra124_car_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.tegra124_car_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.tegra124_car_softc* @device_get_softc(i32 %7)
  store %struct.tegra124_car_softc* %8, %struct.tegra124_car_softc** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.tegra124_car_softc*, %struct.tegra124_car_softc** %4, align 8
  %11 = getelementptr inbounds %struct.tegra124_car_softc, %struct.tegra124_car_softc* %10, i32 0, i32 3
  store i32 %9, i32* %11, align 8
  %12 = load %struct.tegra124_car_softc*, %struct.tegra124_car_softc** %4, align 8
  %13 = getelementptr inbounds %struct.tegra124_car_softc, %struct.tegra124_car_softc* %12, i32 0, i32 2
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @device_get_nameunit(i32 %14)
  %16 = load i32, i32* @MTX_DEF, align 4
  %17 = call i32 @mtx_init(i32* %13, i32 %15, i32* null, i32 %16)
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @compat_data, align 4
  %20 = call %struct.TYPE_2__* @ofw_bus_search_compatible(i32 %18, i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.tegra124_car_softc*, %struct.tegra124_car_softc** %4, align 8
  %24 = getelementptr inbounds %struct.tegra124_car_softc, %struct.tegra124_car_softc* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 8
  store i32 0, i32* %5, align 4
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @SYS_RES_MEMORY, align 4
  %27 = load i32, i32* @RF_ACTIVE, align 4
  %28 = call i64 @bus_alloc_resource_any(i32 %25, i32 %26, i32* %5, i32 %27)
  %29 = load %struct.tegra124_car_softc*, %struct.tegra124_car_softc** %4, align 8
  %30 = getelementptr inbounds %struct.tegra124_car_softc, %struct.tegra124_car_softc* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load %struct.tegra124_car_softc*, %struct.tegra124_car_softc** %4, align 8
  %32 = getelementptr inbounds %struct.tegra124_car_softc, %struct.tegra124_car_softc* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %1
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @device_printf(i32 %36, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @ENXIO, align 4
  store i32 %38, i32* %6, align 4
  br label %44

39:                                               ; preds = %1
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @register_clocks(i32 %40)
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @hwreset_register_ofw_provider(i32 %42)
  store i32 0, i32* %2, align 4
  br label %58

44:                                               ; preds = %35
  %45 = load %struct.tegra124_car_softc*, %struct.tegra124_car_softc** %4, align 8
  %46 = getelementptr inbounds %struct.tegra124_car_softc, %struct.tegra124_car_softc* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %44
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* @SYS_RES_MEMORY, align 4
  %52 = load %struct.tegra124_car_softc*, %struct.tegra124_car_softc** %4, align 8
  %53 = getelementptr inbounds %struct.tegra124_car_softc, %struct.tegra124_car_softc* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @bus_release_resource(i32 %50, i32 %51, i32 0, i64 %54)
  br label %56

56:                                               ; preds = %49, %44
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %56, %39
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.tegra124_car_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_init(i32*, i32, i32*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local %struct.TYPE_2__* @ofw_bus_search_compatible(i32, i32) #1

declare dso_local i64 @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @register_clocks(i32) #1

declare dso_local i32 @hwreset_register_ofw_provider(i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
