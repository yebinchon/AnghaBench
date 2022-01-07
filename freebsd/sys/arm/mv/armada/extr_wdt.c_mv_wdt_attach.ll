; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/armada/extr_wdt.c_mv_wdt_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/armada/extr_wdt.c_mv_wdt_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_wdt_softc = type { %struct.mv_wdt_config*, i32, i32 }
%struct.mv_wdt_config = type { i64, i32 (...)* }
%struct.TYPE_2__ = type { i64 }

@wdt_softc = common dso_local global %struct.mv_wdt_softc* null, align 8
@ENXIO = common dso_local global i32 0, align 4
@mv_wdt_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"could not allocate resources\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"watchdog\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@mv_wdt_compat = common dso_local global i32 0, align 4
@watchdog_list = common dso_local global i32 0, align 4
@mv_watchdog_event = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mv_wdt_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_wdt_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.mv_wdt_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load %struct.mv_wdt_softc*, %struct.mv_wdt_softc** @wdt_softc, align 8
  %7 = icmp ne %struct.mv_wdt_softc* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @ENXIO, align 4
  store i32 %9, i32* %2, align 4
  br label %69

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.mv_wdt_softc* @device_get_softc(i32 %11)
  store %struct.mv_wdt_softc* %12, %struct.mv_wdt_softc** %4, align 8
  %13 = load %struct.mv_wdt_softc*, %struct.mv_wdt_softc** %4, align 8
  store %struct.mv_wdt_softc* %13, %struct.mv_wdt_softc** @wdt_softc, align 8
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @mv_wdt_spec, align 4
  %16 = load %struct.mv_wdt_softc*, %struct.mv_wdt_softc** %4, align 8
  %17 = getelementptr inbounds %struct.mv_wdt_softc, %struct.mv_wdt_softc* %16, i32 0, i32 2
  %18 = call i32 @bus_alloc_resources(i32 %14, i32 %15, i32* %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %10
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @device_printf(i32 %22, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @ENXIO, align 4
  store i32 %24, i32* %2, align 4
  br label %69

25:                                               ; preds = %10
  %26 = load %struct.mv_wdt_softc*, %struct.mv_wdt_softc** %4, align 8
  %27 = getelementptr inbounds %struct.mv_wdt_softc, %struct.mv_wdt_softc* %26, i32 0, i32 1
  %28 = load i32, i32* @MTX_DEF, align 4
  %29 = call i32 @mtx_init(i32* %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %28)
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @mv_wdt_compat, align 4
  %32 = call %struct.TYPE_2__* @ofw_bus_search_compatible(i32 %30, i32 %31)
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.mv_wdt_config*
  %36 = load %struct.mv_wdt_softc*, %struct.mv_wdt_softc** %4, align 8
  %37 = getelementptr inbounds %struct.mv_wdt_softc, %struct.mv_wdt_softc* %36, i32 0, i32 0
  store %struct.mv_wdt_config* %35, %struct.mv_wdt_config** %37, align 8
  %38 = load %struct.mv_wdt_softc*, %struct.mv_wdt_softc** %4, align 8
  %39 = getelementptr inbounds %struct.mv_wdt_softc, %struct.mv_wdt_softc* %38, i32 0, i32 0
  %40 = load %struct.mv_wdt_config*, %struct.mv_wdt_config** %39, align 8
  %41 = getelementptr inbounds %struct.mv_wdt_config, %struct.mv_wdt_config* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %25
  %45 = call i64 (...) @get_tclk()
  %46 = load %struct.mv_wdt_softc*, %struct.mv_wdt_softc** %4, align 8
  %47 = getelementptr inbounds %struct.mv_wdt_softc, %struct.mv_wdt_softc* %46, i32 0, i32 0
  %48 = load %struct.mv_wdt_config*, %struct.mv_wdt_config** %47, align 8
  %49 = getelementptr inbounds %struct.mv_wdt_config, %struct.mv_wdt_config* %48, i32 0, i32 0
  store i64 %45, i64* %49, align 8
  br label %50

50:                                               ; preds = %44, %25
  %51 = load %struct.mv_wdt_softc*, %struct.mv_wdt_softc** @wdt_softc, align 8
  %52 = getelementptr inbounds %struct.mv_wdt_softc, %struct.mv_wdt_softc* %51, i32 0, i32 0
  %53 = load %struct.mv_wdt_config*, %struct.mv_wdt_config** %52, align 8
  %54 = getelementptr inbounds %struct.mv_wdt_config, %struct.mv_wdt_config* %53, i32 0, i32 1
  %55 = load i32 (...)*, i32 (...)** %54, align 8
  %56 = icmp ne i32 (...)* %55, null
  br i1 %56, label %57, label %64

57:                                               ; preds = %50
  %58 = load %struct.mv_wdt_softc*, %struct.mv_wdt_softc** @wdt_softc, align 8
  %59 = getelementptr inbounds %struct.mv_wdt_softc, %struct.mv_wdt_softc* %58, i32 0, i32 0
  %60 = load %struct.mv_wdt_config*, %struct.mv_wdt_config** %59, align 8
  %61 = getelementptr inbounds %struct.mv_wdt_config, %struct.mv_wdt_config* %60, i32 0, i32 1
  %62 = load i32 (...)*, i32 (...)** %61, align 8
  %63 = call i32 (...) %62()
  br label %64

64:                                               ; preds = %57, %50
  %65 = load i32, i32* @watchdog_list, align 4
  %66 = load i32, i32* @mv_watchdog_event, align 4
  %67 = load %struct.mv_wdt_softc*, %struct.mv_wdt_softc** %4, align 8
  %68 = call i32 @EVENTHANDLER_REGISTER(i32 %65, i32 %66, %struct.mv_wdt_softc* %67, i32 0)
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %64, %21, %8
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local %struct.mv_wdt_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_alloc_resources(i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local %struct.TYPE_2__* @ofw_bus_search_compatible(i32, i32) #1

declare dso_local i64 @get_tclk(...) #1

declare dso_local i32 @EVENTHANDLER_REGISTER(i32, i32, %struct.mv_wdt_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
