; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx_gpio.c_imx51_gpio_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx_gpio.c_imx51_gpio_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx51_gpio_softc = type { i32, i32*, %struct.TYPE_2__*, i32*, i32*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@NGPIO = common dso_local global i32 0, align 4
@MTX_SPIN = common dso_local global i32 0, align 4
@imx_gpio_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"could not allocate resources\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@IMX_GPIO_IMR_REG = common dso_local global i32 0, align 4
@DEFAULT_CAPS = common dso_local global i32 0, align 4
@IMX_GPIO_OE_REG = common dso_local global i32 0, align 4
@GPIO_PIN_OUTPUT = common dso_local global i32 0, align 4
@GPIO_PIN_INPUT = common dso_local global i32 0, align 4
@GPIOMAXNAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"GPIO%d_IO%02d\00", align 1
@INTR_TYPE_CLK = common dso_local global i32 0, align 4
@gpio_pic_filter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @imx51_gpio_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx51_gpio_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.imx51_gpio_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.imx51_gpio_softc* @device_get_softc(i32 %8)
  store %struct.imx51_gpio_softc* %9, %struct.imx51_gpio_softc** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.imx51_gpio_softc*, %struct.imx51_gpio_softc** %4, align 8
  %12 = getelementptr inbounds %struct.imx51_gpio_softc, %struct.imx51_gpio_softc* %11, i32 0, i32 8
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @NGPIO, align 4
  %14 = load %struct.imx51_gpio_softc*, %struct.imx51_gpio_softc** %4, align 8
  %15 = getelementptr inbounds %struct.imx51_gpio_softc, %struct.imx51_gpio_softc* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.imx51_gpio_softc*, %struct.imx51_gpio_softc** %4, align 8
  %17 = getelementptr inbounds %struct.imx51_gpio_softc, %struct.imx51_gpio_softc* %16, i32 0, i32 7
  %18 = load %struct.imx51_gpio_softc*, %struct.imx51_gpio_softc** %4, align 8
  %19 = getelementptr inbounds %struct.imx51_gpio_softc, %struct.imx51_gpio_softc* %18, i32 0, i32 8
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @device_get_nameunit(i32 %20)
  %22 = load i32, i32* @MTX_SPIN, align 4
  %23 = call i32 @mtx_init(i32* %17, i32 %21, i32* null, i32 %22)
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @imx_gpio_spec, align 4
  %26 = load %struct.imx51_gpio_softc*, %struct.imx51_gpio_softc** %4, align 8
  %27 = getelementptr inbounds %struct.imx51_gpio_softc, %struct.imx51_gpio_softc* %26, i32 0, i32 4
  %28 = load i32*, i32** %27, align 8
  %29 = call i64 @bus_alloc_resources(i32 %24, i32 %25, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %1
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @device_printf(i32 %32, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @imx_gpio_spec, align 4
  %36 = load %struct.imx51_gpio_softc*, %struct.imx51_gpio_softc** %4, align 8
  %37 = getelementptr inbounds %struct.imx51_gpio_softc, %struct.imx51_gpio_softc* %36, i32 0, i32 4
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @bus_release_resources(i32 %34, i32 %35, i32* %38)
  %40 = load %struct.imx51_gpio_softc*, %struct.imx51_gpio_softc** %4, align 8
  %41 = getelementptr inbounds %struct.imx51_gpio_softc, %struct.imx51_gpio_softc* %40, i32 0, i32 7
  %42 = call i32 @mtx_destroy(i32* %41)
  %43 = load i32, i32* @ENXIO, align 4
  store i32 %43, i32* %2, align 4
  br label %147

44:                                               ; preds = %1
  %45 = load %struct.imx51_gpio_softc*, %struct.imx51_gpio_softc** %4, align 8
  %46 = getelementptr inbounds %struct.imx51_gpio_softc, %struct.imx51_gpio_softc* %45, i32 0, i32 4
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @rman_get_bustag(i32 %49)
  %51 = load %struct.imx51_gpio_softc*, %struct.imx51_gpio_softc** %4, align 8
  %52 = getelementptr inbounds %struct.imx51_gpio_softc, %struct.imx51_gpio_softc* %51, i32 0, i32 6
  store i32 %50, i32* %52, align 4
  %53 = load %struct.imx51_gpio_softc*, %struct.imx51_gpio_softc** %4, align 8
  %54 = getelementptr inbounds %struct.imx51_gpio_softc, %struct.imx51_gpio_softc* %53, i32 0, i32 4
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @rman_get_bushandle(i32 %57)
  %59 = load %struct.imx51_gpio_softc*, %struct.imx51_gpio_softc** %4, align 8
  %60 = getelementptr inbounds %struct.imx51_gpio_softc, %struct.imx51_gpio_softc* %59, i32 0, i32 5
  store i32 %58, i32* %60, align 8
  %61 = load %struct.imx51_gpio_softc*, %struct.imx51_gpio_softc** %4, align 8
  %62 = load i32, i32* @IMX_GPIO_IMR_REG, align 4
  %63 = call i32 @WRITE4(%struct.imx51_gpio_softc* %61, i32 %62, i32 0)
  store i32 0, i32* %6, align 4
  br label %64

64:                                               ; preds = %68, %44
  %65 = load i32, i32* %6, align 4
  %66 = icmp slt i32 %65, 2
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %6, align 4
  br label %64

71:                                               ; preds = %64
  %72 = load i32, i32* %3, align 4
  %73 = call i32 @device_get_unit(i32 %72)
  store i32 %73, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %74

74:                                               ; preds = %130, %71
  %75 = load i32, i32* %5, align 4
  %76 = load %struct.imx51_gpio_softc*, %struct.imx51_gpio_softc** %4, align 8
  %77 = getelementptr inbounds %struct.imx51_gpio_softc, %struct.imx51_gpio_softc* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp slt i32 %75, %78
  br i1 %79, label %80, label %133

80:                                               ; preds = %74
  %81 = load i32, i32* %5, align 4
  %82 = load %struct.imx51_gpio_softc*, %struct.imx51_gpio_softc** %4, align 8
  %83 = getelementptr inbounds %struct.imx51_gpio_softc, %struct.imx51_gpio_softc* %82, i32 0, i32 2
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  store i32 %81, i32* %88, align 4
  %89 = load i32, i32* @DEFAULT_CAPS, align 4
  %90 = load %struct.imx51_gpio_softc*, %struct.imx51_gpio_softc** %4, align 8
  %91 = getelementptr inbounds %struct.imx51_gpio_softc, %struct.imx51_gpio_softc* %90, i32 0, i32 2
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = load i32, i32* %5, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 3
  store i32 %89, i32* %96, align 4
  %97 = load %struct.imx51_gpio_softc*, %struct.imx51_gpio_softc** %4, align 8
  %98 = load i32, i32* @IMX_GPIO_OE_REG, align 4
  %99 = call i32 @READ4(%struct.imx51_gpio_softc* %97, i32 %98)
  %100 = load i32, i32* %5, align 4
  %101 = shl i32 1, %100
  %102 = and i32 %99, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %80
  %105 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  br label %108

106:                                              ; preds = %80
  %107 = load i32, i32* @GPIO_PIN_INPUT, align 4
  br label %108

108:                                              ; preds = %106, %104
  %109 = phi i32 [ %105, %104 ], [ %107, %106 ]
  %110 = load %struct.imx51_gpio_softc*, %struct.imx51_gpio_softc** %4, align 8
  %111 = getelementptr inbounds %struct.imx51_gpio_softc, %struct.imx51_gpio_softc* %110, i32 0, i32 2
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = load i32, i32* %5, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 2
  store i32 %109, i32* %116, align 4
  %117 = load %struct.imx51_gpio_softc*, %struct.imx51_gpio_softc** %4, align 8
  %118 = getelementptr inbounds %struct.imx51_gpio_softc, %struct.imx51_gpio_softc* %117, i32 0, i32 2
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = load i32, i32* %5, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @GPIOMAXNAME, align 4
  %126 = load i32, i32* %7, align 4
  %127 = add nsw i32 %126, 1
  %128 = load i32, i32* %5, align 4
  %129 = call i32 @snprintf(i32 %124, i32 %125, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %127, i32 %128)
  br label %130

130:                                              ; preds = %108
  %131 = load i32, i32* %5, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %5, align 4
  br label %74

133:                                              ; preds = %74
  %134 = load i32, i32* %3, align 4
  %135 = call i32* @gpiobus_attach_bus(i32 %134)
  %136 = load %struct.imx51_gpio_softc*, %struct.imx51_gpio_softc** %4, align 8
  %137 = getelementptr inbounds %struct.imx51_gpio_softc, %struct.imx51_gpio_softc* %136, i32 0, i32 1
  store i32* %135, i32** %137, align 8
  %138 = load %struct.imx51_gpio_softc*, %struct.imx51_gpio_softc** %4, align 8
  %139 = getelementptr inbounds %struct.imx51_gpio_softc, %struct.imx51_gpio_softc* %138, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = icmp eq i32* %140, null
  br i1 %141, label %142, label %146

142:                                              ; preds = %133
  %143 = load i32, i32* %3, align 4
  %144 = call i32 @imx51_gpio_detach(i32 %143)
  %145 = load i32, i32* @ENXIO, align 4
  store i32 %145, i32* %2, align 4
  br label %147

146:                                              ; preds = %133
  store i32 0, i32* %2, align 4
  br label %147

147:                                              ; preds = %146, %142, %31
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local %struct.imx51_gpio_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_init(i32*, i32, i32*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bus_release_resources(i32, i32, i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @rman_get_bustag(i32) #1

declare dso_local i32 @rman_get_bushandle(i32) #1

declare dso_local i32 @WRITE4(%struct.imx51_gpio_softc*, i32, i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @READ4(%struct.imx51_gpio_softc*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32) #1

declare dso_local i32* @gpiobus_attach_bus(i32) #1

declare dso_local i32 @imx51_gpio_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
