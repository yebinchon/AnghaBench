; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_gpio.c_aml8726_gpio_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_gpio.c_aml8726_gpio_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aml8726_gpio_softc = type { i32, i32*, i32*, i32 }

@.str = private unnamed_addr constant [10 x i8] c"pin-count\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"missing pin-count attribute in FDT\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@aml8726_gpio_spec = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"can not allocate resources for device\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"too many pins for overlapping OEN and OUT\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @aml8726_gpio_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aml8726_gpio_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.aml8726_gpio_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.aml8726_gpio_softc* @device_get_softc(i32 %7)
  store %struct.aml8726_gpio_softc* %8, %struct.aml8726_gpio_softc** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.aml8726_gpio_softc*, %struct.aml8726_gpio_softc** %4, align 8
  %11 = getelementptr inbounds %struct.aml8726_gpio_softc, %struct.aml8726_gpio_softc* %10, i32 0, i32 3
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @ofw_bus_get_node(i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i64 @OF_getencprop(i32 %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %6, i32 4)
  %16 = icmp sle i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @device_printf(i32 %18, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32, i32* @ENXIO, align 4
  store i32 %20, i32* %2, align 4
  br label %95

21:                                               ; preds = %1
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.aml8726_gpio_softc*, %struct.aml8726_gpio_softc** %4, align 8
  %24 = getelementptr inbounds %struct.aml8726_gpio_softc, %struct.aml8726_gpio_softc* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.aml8726_gpio_softc*, %struct.aml8726_gpio_softc** %4, align 8
  %26 = getelementptr inbounds %struct.aml8726_gpio_softc, %struct.aml8726_gpio_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp sgt i32 %27, 32
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* @ENXIO, align 4
  store i32 %30, i32* %2, align 4
  br label %95

31:                                               ; preds = %21
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @aml8726_gpio_spec, align 4
  %34 = load %struct.aml8726_gpio_softc*, %struct.aml8726_gpio_softc** %4, align 8
  %35 = getelementptr inbounds %struct.aml8726_gpio_softc, %struct.aml8726_gpio_softc* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = call i64 @bus_alloc_resources(i32 %32, i32 %33, i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %31
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @device_printf(i32 %40, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i32, i32* @ENXIO, align 4
  store i32 %42, i32* %2, align 4
  br label %95

43:                                               ; preds = %31
  %44 = load %struct.aml8726_gpio_softc*, %struct.aml8726_gpio_softc** %4, align 8
  %45 = getelementptr inbounds %struct.aml8726_gpio_softc, %struct.aml8726_gpio_softc* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @rman_get_start(i32 %48)
  %50 = load %struct.aml8726_gpio_softc*, %struct.aml8726_gpio_softc** %4, align 8
  %51 = getelementptr inbounds %struct.aml8726_gpio_softc, %struct.aml8726_gpio_softc* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @rman_get_start(i32 %54)
  %56 = icmp eq i64 %49, %55
  br i1 %56, label %57, label %73

57:                                               ; preds = %43
  %58 = load %struct.aml8726_gpio_softc*, %struct.aml8726_gpio_softc** %4, align 8
  %59 = getelementptr inbounds %struct.aml8726_gpio_softc, %struct.aml8726_gpio_softc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp sgt i32 %60, 16
  br i1 %61, label %62, label %72

62:                                               ; preds = %57
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @device_printf(i32 %63, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* @aml8726_gpio_spec, align 4
  %67 = load %struct.aml8726_gpio_softc*, %struct.aml8726_gpio_softc** %4, align 8
  %68 = getelementptr inbounds %struct.aml8726_gpio_softc, %struct.aml8726_gpio_softc* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @bus_release_resources(i32 %65, i32 %66, i32* %69)
  %71 = load i32, i32* @ENXIO, align 4
  store i32 %71, i32* %2, align 4
  br label %95

72:                                               ; preds = %57
  br label %73

73:                                               ; preds = %72, %43
  %74 = load %struct.aml8726_gpio_softc*, %struct.aml8726_gpio_softc** %4, align 8
  %75 = call i32 @AML_GPIO_LOCK_INIT(%struct.aml8726_gpio_softc* %74)
  %76 = load i32, i32* %3, align 4
  %77 = call i32* @gpiobus_attach_bus(i32 %76)
  %78 = load %struct.aml8726_gpio_softc*, %struct.aml8726_gpio_softc** %4, align 8
  %79 = getelementptr inbounds %struct.aml8726_gpio_softc, %struct.aml8726_gpio_softc* %78, i32 0, i32 2
  store i32* %77, i32** %79, align 8
  %80 = load %struct.aml8726_gpio_softc*, %struct.aml8726_gpio_softc** %4, align 8
  %81 = getelementptr inbounds %struct.aml8726_gpio_softc, %struct.aml8726_gpio_softc* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = icmp eq i32* %82, null
  br i1 %83, label %84, label %94

84:                                               ; preds = %73
  %85 = load %struct.aml8726_gpio_softc*, %struct.aml8726_gpio_softc** %4, align 8
  %86 = call i32 @AML_GPIO_LOCK_DESTROY(%struct.aml8726_gpio_softc* %85)
  %87 = load i32, i32* %3, align 4
  %88 = load i32, i32* @aml8726_gpio_spec, align 4
  %89 = load %struct.aml8726_gpio_softc*, %struct.aml8726_gpio_softc** %4, align 8
  %90 = getelementptr inbounds %struct.aml8726_gpio_softc, %struct.aml8726_gpio_softc* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 @bus_release_resources(i32 %87, i32 %88, i32* %91)
  %93 = load i32, i32* @ENXIO, align 4
  store i32 %93, i32* %2, align 4
  br label %95

94:                                               ; preds = %73
  store i32 0, i32* %2, align 4
  br label %95

95:                                               ; preds = %94, %84, %62, %39, %29, %17
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local %struct.aml8726_gpio_softc* @device_get_softc(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i64 @OF_getencprop(i32, i8*, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32*) #1

declare dso_local i64 @rman_get_start(i32) #1

declare dso_local i32 @bus_release_resources(i32, i32, i32*) #1

declare dso_local i32 @AML_GPIO_LOCK_INIT(%struct.aml8726_gpio_softc*) #1

declare dso_local i32* @gpiobus_attach_bus(i32) #1

declare dso_local i32 @AML_GPIO_LOCK_DESTROY(%struct.aml8726_gpio_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
