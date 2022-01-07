; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_timer.c_a10_timer_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_timer.c_a10_timer_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.a10_timer_softc* }
%struct.a10_timer_softc = type { i32, i32, i32*, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@compat_data = common dso_local global i32 0, align 4
@a10_timer_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"could not allocate resources\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@A10_TIMER_IRQRES = common dso_local global i64 0, align 8
@INTR_TYPE_CLK = common dso_local global i32 0, align 4
@a10_timer_irq = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Unable to setup the clock irq handler, err = %d\0A\00", align 1
@SYS_TIMER_CLKSRC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Cannot get clock source frequency\0A\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"clock: hz=%d stathz = %d\0A\00", align 1
@hz = common dso_local global i32 0, align 4
@stathz = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"event timer clock frequency %ju\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"timecounter clock frequency %jd\0A\00", align 1
@a10_timer_timecounter = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@a10_timer_delay = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @a10_timer_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a10_timer_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.a10_timer_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.a10_timer_softc* @device_get_softc(i32 %7)
  store %struct.a10_timer_softc* %8, %struct.a10_timer_softc** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @compat_data, align 4
  %11 = call %struct.TYPE_5__* @ofw_bus_search_compatible(i32 %9, i32 %10)
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.a10_timer_softc*, %struct.a10_timer_softc** %4, align 8
  %15 = getelementptr inbounds %struct.a10_timer_softc, %struct.a10_timer_softc* %14, i32 0, i32 4
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @a10_timer_spec, align 4
  %18 = load %struct.a10_timer_softc*, %struct.a10_timer_softc** %4, align 8
  %19 = getelementptr inbounds %struct.a10_timer_softc, %struct.a10_timer_softc* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = call i64 @bus_alloc_resources(i32 %16, i32 %17, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = load i32, i32* %3, align 4
  %25 = call i32 (i32, i8*, ...) @device_printf(i32 %24, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @ENXIO, align 4
  store i32 %26, i32* %2, align 4
  br label %99

27:                                               ; preds = %1
  %28 = load i32, i32* %3, align 4
  %29 = load %struct.a10_timer_softc*, %struct.a10_timer_softc** %4, align 8
  %30 = getelementptr inbounds %struct.a10_timer_softc, %struct.a10_timer_softc* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %3, align 4
  %32 = load %struct.a10_timer_softc*, %struct.a10_timer_softc** %4, align 8
  %33 = getelementptr inbounds %struct.a10_timer_softc, %struct.a10_timer_softc* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* @A10_TIMER_IRQRES, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @INTR_TYPE_CLK, align 4
  %39 = load i32, i32* @a10_timer_irq, align 4
  %40 = load %struct.a10_timer_softc*, %struct.a10_timer_softc** %4, align 8
  %41 = load %struct.a10_timer_softc*, %struct.a10_timer_softc** %4, align 8
  %42 = getelementptr inbounds %struct.a10_timer_softc, %struct.a10_timer_softc* %41, i32 0, i32 3
  %43 = call i32 @bus_setup_intr(i32 %31, i32 %37, i32 %38, i32 %39, i32* null, %struct.a10_timer_softc* %40, i32* %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %27
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @a10_timer_spec, align 4
  %49 = load %struct.a10_timer_softc*, %struct.a10_timer_softc** %4, align 8
  %50 = getelementptr inbounds %struct.a10_timer_softc, %struct.a10_timer_softc* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @bus_release_resources(i32 %47, i32 %48, i32* %51)
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i32 (i32, i8*, ...) @device_printf(i32 %53, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* @ENXIO, align 4
  store i32 %56, i32* %2, align 4
  br label %99

57:                                               ; preds = %27
  %58 = load i32, i32* %3, align 4
  %59 = call i64 @clk_get_by_ofw_index(i32 %58, i32 0, i32 0, i32* %5)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = load i32, i32* @SYS_TIMER_CLKSRC, align 4
  %63 = load %struct.a10_timer_softc*, %struct.a10_timer_softc** %4, align 8
  %64 = getelementptr inbounds %struct.a10_timer_softc, %struct.a10_timer_softc* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  br label %76

65:                                               ; preds = %57
  %66 = load i32, i32* %5, align 4
  %67 = load %struct.a10_timer_softc*, %struct.a10_timer_softc** %4, align 8
  %68 = getelementptr inbounds %struct.a10_timer_softc, %struct.a10_timer_softc* %67, i32 0, i32 0
  %69 = call i64 @clk_get_freq(i32 %66, i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %65
  %72 = load i32, i32* %3, align 4
  %73 = call i32 (i32, i8*, ...) @device_printf(i32 %72, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %74 = load i32, i32* @ENXIO, align 4
  store i32 %74, i32* %2, align 4
  br label %99

75:                                               ; preds = %65
  br label %76

76:                                               ; preds = %75, %61
  %77 = load i64, i64* @bootverbose, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %98

79:                                               ; preds = %76
  %80 = load %struct.a10_timer_softc*, %struct.a10_timer_softc** %4, align 8
  %81 = getelementptr inbounds %struct.a10_timer_softc, %struct.a10_timer_softc* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @hz, align 4
  %84 = load i32, i32* @stathz, align 4
  %85 = call i32 (i32, i8*, ...) @device_printf(i32 %82, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %83, i32 %84)
  %86 = load %struct.a10_timer_softc*, %struct.a10_timer_softc** %4, align 8
  %87 = getelementptr inbounds %struct.a10_timer_softc, %struct.a10_timer_softc* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.a10_timer_softc*, %struct.a10_timer_softc** %4, align 8
  %90 = getelementptr inbounds %struct.a10_timer_softc, %struct.a10_timer_softc* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 (i32, i8*, ...) @device_printf(i32 %88, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %91)
  %93 = load %struct.a10_timer_softc*, %struct.a10_timer_softc** %4, align 8
  %94 = getelementptr inbounds %struct.a10_timer_softc, %struct.a10_timer_softc* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @a10_timer_timecounter, i32 0, i32 0), align 8
  %97 = call i32 (i32, i8*, ...) @device_printf(i32 %95, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %96)
  br label %98

98:                                               ; preds = %79, %76
  store i32 0, i32* %2, align 4
  br label %99

99:                                               ; preds = %98, %71, %46, %23
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local %struct.a10_timer_softc* @device_get_softc(i32) #1

declare dso_local %struct.TYPE_5__* @ofw_bus_search_compatible(i32, i32) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @bus_setup_intr(i32, i32, i32, i32, i32*, %struct.a10_timer_softc*, i32*) #1

declare dso_local i32 @bus_release_resources(i32, i32, i32*) #1

declare dso_local i64 @clk_get_by_ofw_index(i32, i32, i32, i32*) #1

declare dso_local i64 @clk_get_freq(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
