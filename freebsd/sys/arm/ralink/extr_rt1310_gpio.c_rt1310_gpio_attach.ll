; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ralink/extr_rt1310_gpio.c_rt1310_gpio_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ralink/extr_rt1310_gpio.c_rt1310_gpio_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt1310_gpio_softc = type { i32, i32*, i32, i32, i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"cannot allocate memory window\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@rt1310_gpio_sc = common dso_local global %struct.rt1310_gpio_softc* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @rt1310_gpio_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt1310_gpio_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.rt1310_gpio_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.rt1310_gpio_softc* @device_get_softc(i32 %6)
  store %struct.rt1310_gpio_softc* %7, %struct.rt1310_gpio_softc** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.rt1310_gpio_softc*, %struct.rt1310_gpio_softc** %4, align 8
  %10 = getelementptr inbounds %struct.rt1310_gpio_softc, %struct.rt1310_gpio_softc* %9, i32 0, i32 4
  store i32 %8, i32* %10, align 8
  store i32 0, i32* %5, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @SYS_RES_MEMORY, align 4
  %13 = load i32, i32* @RF_ACTIVE, align 4
  %14 = call i32 @bus_alloc_resource_any(i32 %11, i32 %12, i32* %5, i32 %13)
  %15 = load %struct.rt1310_gpio_softc*, %struct.rt1310_gpio_softc** %4, align 8
  %16 = getelementptr inbounds %struct.rt1310_gpio_softc, %struct.rt1310_gpio_softc* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.rt1310_gpio_softc*, %struct.rt1310_gpio_softc** %4, align 8
  %18 = getelementptr inbounds %struct.rt1310_gpio_softc, %struct.rt1310_gpio_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @device_printf(i32 %22, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @ENXIO, align 4
  store i32 %24, i32* %2, align 4
  br label %57

25:                                               ; preds = %1
  %26 = load %struct.rt1310_gpio_softc*, %struct.rt1310_gpio_softc** %4, align 8
  %27 = getelementptr inbounds %struct.rt1310_gpio_softc, %struct.rt1310_gpio_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @rman_get_bustag(i32 %28)
  %30 = load %struct.rt1310_gpio_softc*, %struct.rt1310_gpio_softc** %4, align 8
  %31 = getelementptr inbounds %struct.rt1310_gpio_softc, %struct.rt1310_gpio_softc* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load %struct.rt1310_gpio_softc*, %struct.rt1310_gpio_softc** %4, align 8
  %33 = getelementptr inbounds %struct.rt1310_gpio_softc, %struct.rt1310_gpio_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @rman_get_bushandle(i32 %34)
  %36 = load %struct.rt1310_gpio_softc*, %struct.rt1310_gpio_softc** %4, align 8
  %37 = getelementptr inbounds %struct.rt1310_gpio_softc, %struct.rt1310_gpio_softc* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load %struct.rt1310_gpio_softc*, %struct.rt1310_gpio_softc** %4, align 8
  store %struct.rt1310_gpio_softc* %38, %struct.rt1310_gpio_softc** @rt1310_gpio_sc, align 8
  %39 = load i32, i32* %3, align 4
  %40 = call i32* @gpiobus_attach_bus(i32 %39)
  %41 = load %struct.rt1310_gpio_softc*, %struct.rt1310_gpio_softc** %4, align 8
  %42 = getelementptr inbounds %struct.rt1310_gpio_softc, %struct.rt1310_gpio_softc* %41, i32 0, i32 1
  store i32* %40, i32** %42, align 8
  %43 = load %struct.rt1310_gpio_softc*, %struct.rt1310_gpio_softc** %4, align 8
  %44 = getelementptr inbounds %struct.rt1310_gpio_softc, %struct.rt1310_gpio_softc* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %56

47:                                               ; preds = %25
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @SYS_RES_MEMORY, align 4
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.rt1310_gpio_softc*, %struct.rt1310_gpio_softc** %4, align 8
  %52 = getelementptr inbounds %struct.rt1310_gpio_softc, %struct.rt1310_gpio_softc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @bus_release_resource(i32 %48, i32 %49, i32 %50, i32 %53)
  %55 = load i32, i32* @ENXIO, align 4
  store i32 %55, i32* %2, align 4
  br label %57

56:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %56, %47, %21
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local %struct.rt1310_gpio_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @rman_get_bustag(i32) #1

declare dso_local i32 @rman_get_bushandle(i32) #1

declare dso_local i32* @gpiobus_attach_bus(i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
