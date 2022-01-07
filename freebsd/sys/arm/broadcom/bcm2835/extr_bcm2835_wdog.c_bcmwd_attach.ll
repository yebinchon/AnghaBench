; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_wdog.c_bcmwd_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_wdog.c_bcmwd_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcmwd_softc = type { i32, i32, i32, i32*, i32, i32, i32, i64, i32 }
%struct.TYPE_2__ = type { i64 }

@bcmwd_lsc = common dso_local global %struct.bcmwd_softc* null, align 8
@ENXIO = common dso_local global i32 0, align 4
@BCM2835_PASSWORD = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"could not allocate memory resource\0A\00", align 1
@compat_data = common dso_local global i32 0, align 4
@UPSTREAM_DTB = common dso_local global i64 0, align 8
@UPSTREAM_DTB_REGS_OFFSET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"BCM2835 Watchdog\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"bcmwd\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@watchdog_list = common dso_local global i32 0, align 4
@bcmwd_watchdog_fn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @bcmwd_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcmwd_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.bcmwd_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load %struct.bcmwd_softc*, %struct.bcmwd_softc** @bcmwd_lsc, align 8
  %7 = icmp ne %struct.bcmwd_softc* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @ENXIO, align 4
  store i32 %9, i32* %2, align 4
  br label %71

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.bcmwd_softc* @device_get_softc(i32 %11)
  store %struct.bcmwd_softc* %12, %struct.bcmwd_softc** %4, align 8
  %13 = load %struct.bcmwd_softc*, %struct.bcmwd_softc** %4, align 8
  %14 = getelementptr inbounds %struct.bcmwd_softc, %struct.bcmwd_softc* %13, i32 0, i32 0
  store i32 7, i32* %14, align 8
  %15 = load i32, i32* @BCM2835_PASSWORD, align 4
  %16 = load %struct.bcmwd_softc*, %struct.bcmwd_softc** %4, align 8
  %17 = getelementptr inbounds %struct.bcmwd_softc, %struct.bcmwd_softc* %16, i32 0, i32 8
  store i32 %15, i32* %17, align 8
  %18 = load %struct.bcmwd_softc*, %struct.bcmwd_softc** %4, align 8
  %19 = getelementptr inbounds %struct.bcmwd_softc, %struct.bcmwd_softc* %18, i32 0, i32 7
  store i64 0, i64* %19, align 8
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.bcmwd_softc*, %struct.bcmwd_softc** %4, align 8
  %22 = getelementptr inbounds %struct.bcmwd_softc, %struct.bcmwd_softc* %21, i32 0, i32 6
  store i32 %20, i32* %22, align 8
  store i32 0, i32* %5, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @SYS_RES_MEMORY, align 4
  %25 = load i32, i32* @RF_ACTIVE, align 4
  %26 = call i32* @bus_alloc_resource_any(i32 %23, i32 %24, i32* %5, i32 %25)
  %27 = load %struct.bcmwd_softc*, %struct.bcmwd_softc** %4, align 8
  %28 = getelementptr inbounds %struct.bcmwd_softc, %struct.bcmwd_softc* %27, i32 0, i32 3
  store i32* %26, i32** %28, align 8
  %29 = load %struct.bcmwd_softc*, %struct.bcmwd_softc** %4, align 8
  %30 = getelementptr inbounds %struct.bcmwd_softc, %struct.bcmwd_softc* %29, i32 0, i32 3
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %10
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @device_printf(i32 %34, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @ENXIO, align 4
  store i32 %36, i32* %2, align 4
  br label %71

37:                                               ; preds = %10
  %38 = load %struct.bcmwd_softc*, %struct.bcmwd_softc** %4, align 8
  %39 = getelementptr inbounds %struct.bcmwd_softc, %struct.bcmwd_softc* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @rman_get_bustag(i32* %40)
  %42 = load %struct.bcmwd_softc*, %struct.bcmwd_softc** %4, align 8
  %43 = getelementptr inbounds %struct.bcmwd_softc, %struct.bcmwd_softc* %42, i32 0, i32 5
  store i32 %41, i32* %43, align 4
  %44 = load %struct.bcmwd_softc*, %struct.bcmwd_softc** %4, align 8
  %45 = getelementptr inbounds %struct.bcmwd_softc, %struct.bcmwd_softc* %44, i32 0, i32 3
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @rman_get_bushandle(i32* %46)
  %48 = load %struct.bcmwd_softc*, %struct.bcmwd_softc** %4, align 8
  %49 = getelementptr inbounds %struct.bcmwd_softc, %struct.bcmwd_softc* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* @compat_data, align 4
  %52 = call %struct.TYPE_2__* @ofw_bus_search_compatible(i32 %50, i32 %51)
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @UPSTREAM_DTB, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %37
  %58 = load i32, i32* @UPSTREAM_DTB_REGS_OFFSET, align 4
  %59 = load %struct.bcmwd_softc*, %struct.bcmwd_softc** %4, align 8
  %60 = getelementptr inbounds %struct.bcmwd_softc, %struct.bcmwd_softc* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  br label %61

61:                                               ; preds = %57, %37
  %62 = load %struct.bcmwd_softc*, %struct.bcmwd_softc** %4, align 8
  store %struct.bcmwd_softc* %62, %struct.bcmwd_softc** @bcmwd_lsc, align 8
  %63 = load %struct.bcmwd_softc*, %struct.bcmwd_softc** %4, align 8
  %64 = getelementptr inbounds %struct.bcmwd_softc, %struct.bcmwd_softc* %63, i32 0, i32 1
  %65 = load i32, i32* @MTX_DEF, align 4
  %66 = call i32 @mtx_init(i32* %64, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* @watchdog_list, align 4
  %68 = load i32, i32* @bcmwd_watchdog_fn, align 4
  %69 = load %struct.bcmwd_softc*, %struct.bcmwd_softc** %4, align 8
  %70 = call i32 @EVENTHANDLER_REGISTER(i32 %67, i32 %68, %struct.bcmwd_softc* %69, i32 0)
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %61, %33, %8
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local %struct.bcmwd_softc* @device_get_softc(i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @rman_get_bustag(i32*) #1

declare dso_local i32 @rman_get_bushandle(i32*) #1

declare dso_local %struct.TYPE_2__* @ofw_bus_search_compatible(i32, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i8*, i32) #1

declare dso_local i32 @EVENTHANDLER_REGISTER(i32, i32, %struct.bcmwd_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
