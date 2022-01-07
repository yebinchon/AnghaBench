; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/rockchip/extr_rk30xx_wdog.c_rk30_wd_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/rockchip/extr_rk30xx_wdog.c_rk30_wd_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk30_wd_softc = type { i32, i32, i32*, i32 }

@rk30_wd_sc = common dso_local global %struct.rk30_wd_softc* null, align 8
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"could not allocate memory resource\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"RK30XX Watchdog\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"rk30_wd\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@watchdog_list = common dso_local global i32 0, align 4
@rk30_wd_watchdog_fn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @rk30_wd_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk30_wd_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.rk30_wd_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load %struct.rk30_wd_softc*, %struct.rk30_wd_softc** @rk30_wd_sc, align 8
  %9 = icmp ne %struct.rk30_wd_softc* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @ENXIO, align 4
  store i32 %11, i32* %2, align 4
  br label %57

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = call %struct.rk30_wd_softc* @device_get_softc(i32 %13)
  store %struct.rk30_wd_softc* %14, %struct.rk30_wd_softc** %4, align 8
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.rk30_wd_softc*, %struct.rk30_wd_softc** %4, align 8
  %17 = getelementptr inbounds %struct.rk30_wd_softc, %struct.rk30_wd_softc* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 8
  %18 = load %struct.rk30_wd_softc*, %struct.rk30_wd_softc** %4, align 8
  %19 = getelementptr inbounds %struct.rk30_wd_softc, %struct.rk30_wd_softc* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @ofw_bus_get_node(i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i64 @OF_getencprop(i32 %22, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* %7, i32 4)
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %12
  %26 = load i32, i32* %7, align 4
  %27 = sdiv i32 %26, 1000000
  %28 = load %struct.rk30_wd_softc*, %struct.rk30_wd_softc** %4, align 8
  %29 = getelementptr inbounds %struct.rk30_wd_softc, %struct.rk30_wd_softc* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  br label %32

30:                                               ; preds = %12
  %31 = load i32, i32* @ENXIO, align 4
  store i32 %31, i32* %2, align 4
  br label %57

32:                                               ; preds = %25
  store i32 0, i32* %5, align 4
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @SYS_RES_MEMORY, align 4
  %35 = load i32, i32* @RF_ACTIVE, align 4
  %36 = call i32* @bus_alloc_resource_any(i32 %33, i32 %34, i32* %5, i32 %35)
  %37 = load %struct.rk30_wd_softc*, %struct.rk30_wd_softc** %4, align 8
  %38 = getelementptr inbounds %struct.rk30_wd_softc, %struct.rk30_wd_softc* %37, i32 0, i32 2
  store i32* %36, i32** %38, align 8
  %39 = load %struct.rk30_wd_softc*, %struct.rk30_wd_softc** %4, align 8
  %40 = getelementptr inbounds %struct.rk30_wd_softc, %struct.rk30_wd_softc* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %32
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @device_printf(i32 %44, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @ENXIO, align 4
  store i32 %46, i32* %2, align 4
  br label %57

47:                                               ; preds = %32
  %48 = load %struct.rk30_wd_softc*, %struct.rk30_wd_softc** %4, align 8
  store %struct.rk30_wd_softc* %48, %struct.rk30_wd_softc** @rk30_wd_sc, align 8
  %49 = load %struct.rk30_wd_softc*, %struct.rk30_wd_softc** %4, align 8
  %50 = getelementptr inbounds %struct.rk30_wd_softc, %struct.rk30_wd_softc* %49, i32 0, i32 1
  %51 = load i32, i32* @MTX_DEF, align 4
  %52 = call i32 @mtx_init(i32* %50, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @watchdog_list, align 4
  %54 = load i32, i32* @rk30_wd_watchdog_fn, align 4
  %55 = load %struct.rk30_wd_softc*, %struct.rk30_wd_softc** %4, align 8
  %56 = call i32 @EVENTHANDLER_REGISTER(i32 %53, i32 %54, %struct.rk30_wd_softc* %55, i32 0)
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %47, %43, %30, %10
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local %struct.rk30_wd_softc* @device_get_softc(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i64 @OF_getencprop(i32, i8*, i32*, i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i8*, i32) #1

declare dso_local i32 @EVENTHANDLER_REGISTER(i32, i32, %struct.rk30_wd_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
