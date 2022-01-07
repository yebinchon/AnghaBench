; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_gpio.c_vf_gpio_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_gpio.c_vf_gpio_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vf_gpio_softc = type { i32, i32, i32*, i32*, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@MTX_DEF = common dso_local global i32 0, align 4
@vf_gpio_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"could not allocate resources\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@gpio_sc = common dso_local global %struct.vf_gpio_softc* null, align 8
@NGPIO = common dso_local global i32 0, align 4
@DEFAULT_CAPS = common dso_local global i32 0, align 4
@GPIO_PIN_OUTPUT = common dso_local global i32 0, align 4
@GPIO_PIN_INPUT = common dso_local global i32 0, align 4
@GPIOMAXNAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"vf_gpio%d.%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @vf_gpio_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vf_gpio_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.vf_gpio_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.vf_gpio_softc* @device_get_softc(i32 %6)
  store %struct.vf_gpio_softc* %7, %struct.vf_gpio_softc** %4, align 8
  %8 = load %struct.vf_gpio_softc*, %struct.vf_gpio_softc** %4, align 8
  %9 = getelementptr inbounds %struct.vf_gpio_softc, %struct.vf_gpio_softc* %8, i32 0, i32 1
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @device_get_nameunit(i32 %10)
  %12 = load i32, i32* @MTX_DEF, align 4
  %13 = call i32 @mtx_init(i32* %9, i32 %11, i32* null, i32 %12)
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @vf_gpio_spec, align 4
  %16 = load %struct.vf_gpio_softc*, %struct.vf_gpio_softc** %4, align 8
  %17 = getelementptr inbounds %struct.vf_gpio_softc, %struct.vf_gpio_softc* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = call i64 @bus_alloc_resources(i32 %14, i32 %15, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %1
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @device_printf(i32 %22, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.vf_gpio_softc*, %struct.vf_gpio_softc** %4, align 8
  %25 = getelementptr inbounds %struct.vf_gpio_softc, %struct.vf_gpio_softc* %24, i32 0, i32 1
  %26 = call i32 @mtx_destroy(i32* %25)
  %27 = load i32, i32* @ENXIO, align 4
  store i32 %27, i32* %2, align 4
  br label %131

28:                                               ; preds = %1
  %29 = load %struct.vf_gpio_softc*, %struct.vf_gpio_softc** %4, align 8
  %30 = getelementptr inbounds %struct.vf_gpio_softc, %struct.vf_gpio_softc* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @rman_get_bustag(i32 %33)
  %35 = load %struct.vf_gpio_softc*, %struct.vf_gpio_softc** %4, align 8
  %36 = getelementptr inbounds %struct.vf_gpio_softc, %struct.vf_gpio_softc* %35, i32 0, i32 6
  store i32 %34, i32* %36, align 4
  %37 = load %struct.vf_gpio_softc*, %struct.vf_gpio_softc** %4, align 8
  %38 = getelementptr inbounds %struct.vf_gpio_softc, %struct.vf_gpio_softc* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @rman_get_bushandle(i32 %41)
  %43 = load %struct.vf_gpio_softc*, %struct.vf_gpio_softc** %4, align 8
  %44 = getelementptr inbounds %struct.vf_gpio_softc, %struct.vf_gpio_softc* %43, i32 0, i32 5
  store i32 %42, i32* %44, align 8
  %45 = load %struct.vf_gpio_softc*, %struct.vf_gpio_softc** %4, align 8
  store %struct.vf_gpio_softc* %45, %struct.vf_gpio_softc** @gpio_sc, align 8
  %46 = load i32, i32* @NGPIO, align 4
  %47 = load %struct.vf_gpio_softc*, %struct.vf_gpio_softc** %4, align 8
  %48 = getelementptr inbounds %struct.vf_gpio_softc, %struct.vf_gpio_softc* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %107, %28
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.vf_gpio_softc*, %struct.vf_gpio_softc** %4, align 8
  %52 = getelementptr inbounds %struct.vf_gpio_softc, %struct.vf_gpio_softc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %110

55:                                               ; preds = %49
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.vf_gpio_softc*, %struct.vf_gpio_softc** %4, align 8
  %58 = getelementptr inbounds %struct.vf_gpio_softc, %struct.vf_gpio_softc* %57, i32 0, i32 4
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i32 %56, i32* %63, align 4
  %64 = load i32, i32* @DEFAULT_CAPS, align 4
  %65 = load %struct.vf_gpio_softc*, %struct.vf_gpio_softc** %4, align 8
  %66 = getelementptr inbounds %struct.vf_gpio_softc, %struct.vf_gpio_softc* %65, i32 0, i32 4
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 3
  store i32 %64, i32* %71, align 4
  %72 = load %struct.vf_gpio_softc*, %struct.vf_gpio_softc** %4, align 8
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @GPIO_PDOR(i32 %73)
  %75 = call i32 @READ4(%struct.vf_gpio_softc* %72, i32 %74)
  %76 = load i32, i32* %5, align 4
  %77 = srem i32 %76, 32
  %78 = shl i32 1, %77
  %79 = and i32 %75, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %55
  %82 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  br label %85

83:                                               ; preds = %55
  %84 = load i32, i32* @GPIO_PIN_INPUT, align 4
  br label %85

85:                                               ; preds = %83, %81
  %86 = phi i32 [ %82, %81 ], [ %84, %83 ]
  %87 = load %struct.vf_gpio_softc*, %struct.vf_gpio_softc** %4, align 8
  %88 = getelementptr inbounds %struct.vf_gpio_softc, %struct.vf_gpio_softc* %87, i32 0, i32 4
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = load i32, i32* %5, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 2
  store i32 %86, i32* %93, align 4
  %94 = load %struct.vf_gpio_softc*, %struct.vf_gpio_softc** %4, align 8
  %95 = getelementptr inbounds %struct.vf_gpio_softc, %struct.vf_gpio_softc* %94, i32 0, i32 4
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = load i32, i32* %5, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @GPIOMAXNAME, align 4
  %103 = load i32, i32* %3, align 4
  %104 = call i32 @device_get_unit(i32 %103)
  %105 = load i32, i32* %5, align 4
  %106 = call i32 @snprintf(i32 %101, i32 %102, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %104, i32 %105)
  br label %107

107:                                              ; preds = %85
  %108 = load i32, i32* %5, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %5, align 4
  br label %49

110:                                              ; preds = %49
  %111 = load i32, i32* %3, align 4
  %112 = call i32* @gpiobus_attach_bus(i32 %111)
  %113 = load %struct.vf_gpio_softc*, %struct.vf_gpio_softc** %4, align 8
  %114 = getelementptr inbounds %struct.vf_gpio_softc, %struct.vf_gpio_softc* %113, i32 0, i32 3
  store i32* %112, i32** %114, align 8
  %115 = load %struct.vf_gpio_softc*, %struct.vf_gpio_softc** %4, align 8
  %116 = getelementptr inbounds %struct.vf_gpio_softc, %struct.vf_gpio_softc* %115, i32 0, i32 3
  %117 = load i32*, i32** %116, align 8
  %118 = icmp eq i32* %117, null
  br i1 %118, label %119, label %130

119:                                              ; preds = %110
  %120 = load i32, i32* %3, align 4
  %121 = load i32, i32* @vf_gpio_spec, align 4
  %122 = load %struct.vf_gpio_softc*, %struct.vf_gpio_softc** %4, align 8
  %123 = getelementptr inbounds %struct.vf_gpio_softc, %struct.vf_gpio_softc* %122, i32 0, i32 2
  %124 = load i32*, i32** %123, align 8
  %125 = call i32 @bus_release_resources(i32 %120, i32 %121, i32* %124)
  %126 = load %struct.vf_gpio_softc*, %struct.vf_gpio_softc** %4, align 8
  %127 = getelementptr inbounds %struct.vf_gpio_softc, %struct.vf_gpio_softc* %126, i32 0, i32 1
  %128 = call i32 @mtx_destroy(i32* %127)
  %129 = load i32, i32* @ENXIO, align 4
  store i32 %129, i32* %2, align 4
  br label %131

130:                                              ; preds = %110
  store i32 0, i32* %2, align 4
  br label %131

131:                                              ; preds = %130, %119, %21
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

declare dso_local %struct.vf_gpio_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_init(i32*, i32, i32*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @rman_get_bustag(i32) #1

declare dso_local i32 @rman_get_bushandle(i32) #1

declare dso_local i32 @READ4(%struct.vf_gpio_softc*, i32) #1

declare dso_local i32 @GPIO_PDOR(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32* @gpiobus_attach_bus(i32) #1

declare dso_local i32 @bus_release_resources(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
