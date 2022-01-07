; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/extr_rk_gpio.c_rk_gpio_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/extr_rk_gpio.c_rk_gpio_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk_gpio_softc = type { i32*, i32, i32*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"gpio-controller\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"rk gpio\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"gpio\00", align 1
@MTX_SPIN = common dso_local global i32 0, align 4
@rk_gpio_spec = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"could not allocate resources\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"Cannot get clock\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Could not enable clock %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @rk_gpio_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk_gpio_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.rk_gpio_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.rk_gpio_softc* @device_get_softc(i32 %7)
  store %struct.rk_gpio_softc* %8, %struct.rk_gpio_softc** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.rk_gpio_softc*, %struct.rk_gpio_softc** %4, align 8
  %11 = getelementptr inbounds %struct.rk_gpio_softc, %struct.rk_gpio_softc* %10, i32 0, i32 6
  store i32 %9, i32* %11, align 4
  %12 = load %struct.rk_gpio_softc*, %struct.rk_gpio_softc** %4, align 8
  %13 = getelementptr inbounds %struct.rk_gpio_softc, %struct.rk_gpio_softc* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ofw_bus_get_node(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @OF_hasprop(i32 %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENXIO, align 4
  store i32 %20, i32* %2, align 4
  br label %105

21:                                               ; preds = %1
  %22 = load %struct.rk_gpio_softc*, %struct.rk_gpio_softc** %4, align 8
  %23 = getelementptr inbounds %struct.rk_gpio_softc, %struct.rk_gpio_softc* %22, i32 0, i32 5
  %24 = load i32, i32* @MTX_SPIN, align 4
  %25 = call i32 @mtx_init(i32* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @rk_gpio_spec, align 4
  %28 = load %struct.rk_gpio_softc*, %struct.rk_gpio_softc** %4, align 8
  %29 = getelementptr inbounds %struct.rk_gpio_softc, %struct.rk_gpio_softc* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = call i64 @bus_alloc_resources(i32 %26, i32 %27, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %21
  %34 = load i32, i32* %3, align 4
  %35 = call i32 (i32, i8*, ...) @device_printf(i32 %34, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @rk_gpio_spec, align 4
  %38 = load %struct.rk_gpio_softc*, %struct.rk_gpio_softc** %4, align 8
  %39 = getelementptr inbounds %struct.rk_gpio_softc, %struct.rk_gpio_softc* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @bus_release_resources(i32 %36, i32 %37, i32* %40)
  %42 = load %struct.rk_gpio_softc*, %struct.rk_gpio_softc** %4, align 8
  %43 = getelementptr inbounds %struct.rk_gpio_softc, %struct.rk_gpio_softc* %42, i32 0, i32 5
  %44 = call i32 @mtx_destroy(i32* %43)
  %45 = load i32, i32* @ENXIO, align 4
  store i32 %45, i32* %2, align 4
  br label %105

46:                                               ; preds = %21
  %47 = load %struct.rk_gpio_softc*, %struct.rk_gpio_softc** %4, align 8
  %48 = getelementptr inbounds %struct.rk_gpio_softc, %struct.rk_gpio_softc* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @rman_get_bustag(i32 %51)
  %53 = load %struct.rk_gpio_softc*, %struct.rk_gpio_softc** %4, align 8
  %54 = getelementptr inbounds %struct.rk_gpio_softc, %struct.rk_gpio_softc* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 4
  %55 = load %struct.rk_gpio_softc*, %struct.rk_gpio_softc** %4, align 8
  %56 = getelementptr inbounds %struct.rk_gpio_softc, %struct.rk_gpio_softc* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @rman_get_bushandle(i32 %59)
  %61 = load %struct.rk_gpio_softc*, %struct.rk_gpio_softc** %4, align 8
  %62 = getelementptr inbounds %struct.rk_gpio_softc, %struct.rk_gpio_softc* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* %3, align 4
  %64 = load %struct.rk_gpio_softc*, %struct.rk_gpio_softc** %4, align 8
  %65 = getelementptr inbounds %struct.rk_gpio_softc, %struct.rk_gpio_softc* %64, i32 0, i32 1
  %66 = call i64 @clk_get_by_ofw_index(i32 %63, i32 0, i32 0, i32* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %46
  %69 = load i32, i32* %3, align 4
  %70 = call i32 (i32, i8*, ...) @device_printf(i32 %69, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %71 = load i32, i32* %3, align 4
  %72 = call i32 @rk_gpio_detach(i32 %71)
  %73 = load i32, i32* @ENXIO, align 4
  store i32 %73, i32* %2, align 4
  br label %105

74:                                               ; preds = %46
  %75 = load %struct.rk_gpio_softc*, %struct.rk_gpio_softc** %4, align 8
  %76 = getelementptr inbounds %struct.rk_gpio_softc, %struct.rk_gpio_softc* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @clk_enable(i32 %77)
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %74
  %82 = load i32, i32* %3, align 4
  %83 = load %struct.rk_gpio_softc*, %struct.rk_gpio_softc** %4, align 8
  %84 = getelementptr inbounds %struct.rk_gpio_softc, %struct.rk_gpio_softc* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @clk_get_name(i32 %85)
  %87 = call i32 (i32, i8*, ...) @device_printf(i32 %82, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* %3, align 4
  %89 = call i32 @rk_gpio_detach(i32 %88)
  %90 = load i32, i32* @ENXIO, align 4
  store i32 %90, i32* %2, align 4
  br label %105

91:                                               ; preds = %74
  %92 = load i32, i32* %3, align 4
  %93 = call i32* @gpiobus_attach_bus(i32 %92)
  %94 = load %struct.rk_gpio_softc*, %struct.rk_gpio_softc** %4, align 8
  %95 = getelementptr inbounds %struct.rk_gpio_softc, %struct.rk_gpio_softc* %94, i32 0, i32 0
  store i32* %93, i32** %95, align 8
  %96 = load %struct.rk_gpio_softc*, %struct.rk_gpio_softc** %4, align 8
  %97 = getelementptr inbounds %struct.rk_gpio_softc, %struct.rk_gpio_softc* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = icmp eq i32* %98, null
  br i1 %99, label %100, label %104

100:                                              ; preds = %91
  %101 = load i32, i32* %3, align 4
  %102 = call i32 @rk_gpio_detach(i32 %101)
  %103 = load i32, i32* @ENXIO, align 4
  store i32 %103, i32* %2, align 4
  br label %105

104:                                              ; preds = %91
  store i32 0, i32* %2, align 4
  br label %105

105:                                              ; preds = %104, %100, %81, %68, %33, %19
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local %struct.rk_gpio_softc* @device_get_softc(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @OF_hasprop(i32, i8*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i8*, i32) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @bus_release_resources(i32, i32, i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @rman_get_bustag(i32) #1

declare dso_local i32 @rman_get_bushandle(i32) #1

declare dso_local i64 @clk_get_by_ofw_index(i32, i32, i32, i32*) #1

declare dso_local i32 @rk_gpio_detach(i32) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @clk_get_name(i32) #1

declare dso_local i32* @gpiobus_attach_bus(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
