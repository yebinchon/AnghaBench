; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_gpio.c_bcm_gpio_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_gpio.c_bcm_gpio_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_gpio_softc = type { i32, i32, i32*, i32*, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@bcm_gpio_sc = common dso_local global %struct.bcm_gpio_softc* null, align 8
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"bcm gpio\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"gpio\00", align 1
@MTX_SPIN = common dso_local global i32 0, align 4
@bcm_gpio_res_spec = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"cannot allocate resources\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"unable to setup the gpio irq handler\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"gpio-controller\00", align 1
@BCM_GPIO_PINS = common dso_local global i32 0, align 4
@GPIOMAXNAME = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"pin %d\00", align 1
@BCM_GPIO_DEFAULT_CAPS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"brcm,pins\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @bcm_gpio_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_gpio_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.bcm_gpio_softc*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** @bcm_gpio_sc, align 8
  %10 = icmp ne %struct.bcm_gpio_softc* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @ENXIO, align 4
  store i32 %12, i32* %2, align 4
  br label %153

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = call %struct.bcm_gpio_softc* @device_get_softc(i32 %14)
  store %struct.bcm_gpio_softc* %15, %struct.bcm_gpio_softc** %7, align 8
  store %struct.bcm_gpio_softc* %15, %struct.bcm_gpio_softc** @bcm_gpio_sc, align 8
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %7, align 8
  %18 = getelementptr inbounds %struct.bcm_gpio_softc, %struct.bcm_gpio_softc* %17, i32 0, i32 5
  store i32 %16, i32* %18, align 8
  %19 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %7, align 8
  %20 = getelementptr inbounds %struct.bcm_gpio_softc, %struct.bcm_gpio_softc* %19, i32 0, i32 1
  %21 = load i32, i32* @MTX_SPIN, align 4
  %22 = call i32 @mtx_init(i32* %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @bcm_gpio_res_spec, align 4
  %25 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %7, align 8
  %26 = getelementptr inbounds %struct.bcm_gpio_softc, %struct.bcm_gpio_softc* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = call i64 @bus_alloc_resources(i32 %23, i32 %24, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %13
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @device_printf(i32 %31, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %140

33:                                               ; preds = %13
  %34 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %7, align 8
  %35 = getelementptr inbounds %struct.bcm_gpio_softc, %struct.bcm_gpio_softc* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @rman_get_bustag(i32 %38)
  %40 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %7, align 8
  %41 = getelementptr inbounds %struct.bcm_gpio_softc, %struct.bcm_gpio_softc* %40, i32 0, i32 7
  store i32 %39, i32* %41, align 8
  %42 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %7, align 8
  %43 = getelementptr inbounds %struct.bcm_gpio_softc, %struct.bcm_gpio_softc* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @rman_get_bushandle(i32 %46)
  %48 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %7, align 8
  %49 = getelementptr inbounds %struct.bcm_gpio_softc, %struct.bcm_gpio_softc* %48, i32 0, i32 6
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %3, align 4
  %51 = call i64 @bcm_gpio_intr_attach(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %33
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @device_printf(i32 %54, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %140

56:                                               ; preds = %33
  %57 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %7, align 8
  %58 = getelementptr inbounds %struct.bcm_gpio_softc, %struct.bcm_gpio_softc* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @ofw_bus_get_node(i32 %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @OF_hasprop(i32 %61, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %56
  br label %140

65:                                               ; preds = %56
  %66 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %7, align 8
  %67 = call i32 @bcm_gpio_get_reserved_pins(%struct.bcm_gpio_softc* %66)
  %68 = icmp eq i32 %67, -1
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  br label %140

70:                                               ; preds = %65
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %71

71:                                               ; preds = %117, %70
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @BCM_GPIO_PINS, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %120

75:                                               ; preds = %71
  %76 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %7, align 8
  %77 = getelementptr inbounds %struct.bcm_gpio_softc, %struct.bcm_gpio_softc* %76, i32 0, i32 4
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = load i32, i32* %4, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @GPIOMAXNAME, align 4
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @snprintf(i32 %83, i32 %84, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %85)
  %87 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %7, align 8
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @bcm_gpio_get_function(%struct.bcm_gpio_softc* %87, i32 %88)
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %5, align 4
  %91 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %7, align 8
  %92 = getelementptr inbounds %struct.bcm_gpio_softc, %struct.bcm_gpio_softc* %91, i32 0, i32 4
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = load i32, i32* %4, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  store i32 %90, i32* %97, align 4
  %98 = load i32, i32* @BCM_GPIO_DEFAULT_CAPS, align 4
  %99 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %7, align 8
  %100 = getelementptr inbounds %struct.bcm_gpio_softc, %struct.bcm_gpio_softc* %99, i32 0, i32 4
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = load i32, i32* %4, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 2
  store i32 %98, i32* %105, align 4
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @bcm_gpio_func_flag(i32 %106)
  %108 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %7, align 8
  %109 = getelementptr inbounds %struct.bcm_gpio_softc, %struct.bcm_gpio_softc* %108, i32 0, i32 4
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = load i32, i32* %4, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 1
  store i32 %107, i32* %114, align 4
  %115 = load i32, i32* %4, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %4, align 4
  br label %117

117:                                              ; preds = %75
  %118 = load i32, i32* %5, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %5, align 4
  br label %71

120:                                              ; preds = %71
  %121 = load i32, i32* %4, align 4
  %122 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %7, align 8
  %123 = getelementptr inbounds %struct.bcm_gpio_softc, %struct.bcm_gpio_softc* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 8
  %124 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %7, align 8
  %125 = call i32 @bcm_gpio_sysctl_init(%struct.bcm_gpio_softc* %124)
  %126 = load i32, i32* %3, align 4
  %127 = call i32* @gpiobus_attach_bus(i32 %126)
  %128 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %7, align 8
  %129 = getelementptr inbounds %struct.bcm_gpio_softc, %struct.bcm_gpio_softc* %128, i32 0, i32 3
  store i32* %127, i32** %129, align 8
  %130 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %7, align 8
  %131 = getelementptr inbounds %struct.bcm_gpio_softc, %struct.bcm_gpio_softc* %130, i32 0, i32 3
  %132 = load i32*, i32** %131, align 8
  %133 = icmp eq i32* %132, null
  br i1 %133, label %134, label %135

134:                                              ; preds = %120
  br label %140

135:                                              ; preds = %120
  %136 = load i32, i32* %3, align 4
  %137 = call i32 @fdt_pinctrl_register(i32 %136, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %138 = load i32, i32* %3, align 4
  %139 = call i32 @fdt_pinctrl_configure_tree(i32 %138)
  store i32 0, i32* %2, align 4
  br label %153

140:                                              ; preds = %134, %69, %64, %53, %30
  %141 = load i32, i32* %3, align 4
  %142 = call i32 @bcm_gpio_intr_detach(i32 %141)
  %143 = load i32, i32* %3, align 4
  %144 = load i32, i32* @bcm_gpio_res_spec, align 4
  %145 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %7, align 8
  %146 = getelementptr inbounds %struct.bcm_gpio_softc, %struct.bcm_gpio_softc* %145, i32 0, i32 2
  %147 = load i32*, i32** %146, align 8
  %148 = call i32 @bus_release_resources(i32 %143, i32 %144, i32* %147)
  %149 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %7, align 8
  %150 = getelementptr inbounds %struct.bcm_gpio_softc, %struct.bcm_gpio_softc* %149, i32 0, i32 1
  %151 = call i32 @mtx_destroy(i32* %150)
  %152 = load i32, i32* @ENXIO, align 4
  store i32 %152, i32* %2, align 4
  br label %153

153:                                              ; preds = %140, %135, %11
  %154 = load i32, i32* %2, align 4
  ret i32 %154
}

declare dso_local %struct.bcm_gpio_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i8*, i32) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @rman_get_bustag(i32) #1

declare dso_local i32 @rman_get_bushandle(i32) #1

declare dso_local i64 @bcm_gpio_intr_attach(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @OF_hasprop(i32, i8*) #1

declare dso_local i32 @bcm_gpio_get_reserved_pins(%struct.bcm_gpio_softc*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @bcm_gpio_get_function(%struct.bcm_gpio_softc*, i32) #1

declare dso_local i32 @bcm_gpio_func_flag(i32) #1

declare dso_local i32 @bcm_gpio_sysctl_init(%struct.bcm_gpio_softc*) #1

declare dso_local i32* @gpiobus_attach_bus(i32) #1

declare dso_local i32 @fdt_pinctrl_register(i32, i8*) #1

declare dso_local i32 @fdt_pinctrl_configure_tree(i32) #1

declare dso_local i32 @bcm_gpio_intr_detach(i32) #1

declare dso_local i32 @bus_release_resources(i32, i32, i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
