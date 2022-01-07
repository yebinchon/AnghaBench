; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_gpio.c_ti_gpio_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_gpio.c_ti_gpio_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_gpio_softc = type { i32*, i32, i32*, i32, i64, i32*, i32*, i32 }

@.str = private unnamed_addr constant [27 x i8] c"gpio mutex not initialized\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ti_gpio_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_gpio_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ti_gpio_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.ti_gpio_softc* @device_get_softc(i32 %4)
  store %struct.ti_gpio_softc* %5, %struct.ti_gpio_softc** %3, align 8
  %6 = load %struct.ti_gpio_softc*, %struct.ti_gpio_softc** %3, align 8
  %7 = getelementptr inbounds %struct.ti_gpio_softc, %struct.ti_gpio_softc* %6, i32 0, i32 7
  %8 = call i32 @mtx_initialized(i32* %7)
  %9 = call i32 @KASSERT(i32 %8, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.ti_gpio_softc*, %struct.ti_gpio_softc** %3, align 8
  %11 = getelementptr inbounds %struct.ti_gpio_softc, %struct.ti_gpio_softc* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.ti_gpio_softc*, %struct.ti_gpio_softc** %3, align 8
  %16 = call i32 @ti_gpio_intr_clr(%struct.ti_gpio_softc* %15, i32 -1)
  br label %17

17:                                               ; preds = %14, %1
  %18 = load %struct.ti_gpio_softc*, %struct.ti_gpio_softc** %3, align 8
  %19 = getelementptr inbounds %struct.ti_gpio_softc, %struct.ti_gpio_softc* %18, i32 0, i32 6
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @gpiobus_detach_bus(i32 %23)
  br label %25

25:                                               ; preds = %22, %17
  %26 = load %struct.ti_gpio_softc*, %struct.ti_gpio_softc** %3, align 8
  %27 = getelementptr inbounds %struct.ti_gpio_softc, %struct.ti_gpio_softc* %26, i32 0, i32 5
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load %struct.ti_gpio_softc*, %struct.ti_gpio_softc** %3, align 8
  %32 = call i32 @ti_gpio_pic_detach(%struct.ti_gpio_softc* %31)
  br label %33

33:                                               ; preds = %30, %25
  %34 = load %struct.ti_gpio_softc*, %struct.ti_gpio_softc** %3, align 8
  %35 = getelementptr inbounds %struct.ti_gpio_softc, %struct.ti_gpio_softc* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %33
  %39 = load i32, i32* %2, align 4
  %40 = load %struct.ti_gpio_softc*, %struct.ti_gpio_softc** %3, align 8
  %41 = getelementptr inbounds %struct.ti_gpio_softc, %struct.ti_gpio_softc* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.ti_gpio_softc*, %struct.ti_gpio_softc** %3, align 8
  %44 = getelementptr inbounds %struct.ti_gpio_softc, %struct.ti_gpio_softc* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @bus_teardown_intr(i32 %39, i32* %42, i64 %45)
  br label %47

47:                                               ; preds = %38, %33
  %48 = load %struct.ti_gpio_softc*, %struct.ti_gpio_softc** %3, align 8
  %49 = getelementptr inbounds %struct.ti_gpio_softc, %struct.ti_gpio_softc* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %62

52:                                               ; preds = %47
  %53 = load i32, i32* %2, align 4
  %54 = load i32, i32* @SYS_RES_IRQ, align 4
  %55 = load %struct.ti_gpio_softc*, %struct.ti_gpio_softc** %3, align 8
  %56 = getelementptr inbounds %struct.ti_gpio_softc, %struct.ti_gpio_softc* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.ti_gpio_softc*, %struct.ti_gpio_softc** %3, align 8
  %59 = getelementptr inbounds %struct.ti_gpio_softc, %struct.ti_gpio_softc* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @bus_release_resource(i32 %53, i32 %54, i32 %57, i32* %60)
  br label %62

62:                                               ; preds = %52, %47
  %63 = load %struct.ti_gpio_softc*, %struct.ti_gpio_softc** %3, align 8
  %64 = getelementptr inbounds %struct.ti_gpio_softc, %struct.ti_gpio_softc* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %77

67:                                               ; preds = %62
  %68 = load i32, i32* %2, align 4
  %69 = load i32, i32* @SYS_RES_MEMORY, align 4
  %70 = load %struct.ti_gpio_softc*, %struct.ti_gpio_softc** %3, align 8
  %71 = getelementptr inbounds %struct.ti_gpio_softc, %struct.ti_gpio_softc* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.ti_gpio_softc*, %struct.ti_gpio_softc** %3, align 8
  %74 = getelementptr inbounds %struct.ti_gpio_softc, %struct.ti_gpio_softc* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = call i32 @bus_release_resource(i32 %68, i32 %69, i32 %72, i32* %75)
  br label %77

77:                                               ; preds = %67, %62
  %78 = load %struct.ti_gpio_softc*, %struct.ti_gpio_softc** %3, align 8
  %79 = call i32 @TI_GPIO_LOCK_DESTROY(%struct.ti_gpio_softc* %78)
  ret i32 0
}

declare dso_local %struct.ti_gpio_softc* @device_get_softc(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mtx_initialized(i32*) #1

declare dso_local i32 @ti_gpio_intr_clr(%struct.ti_gpio_softc*, i32) #1

declare dso_local i32 @gpiobus_detach_bus(i32) #1

declare dso_local i32 @ti_gpio_pic_detach(%struct.ti_gpio_softc*) #1

declare dso_local i32 @bus_teardown_intr(i32, i32*, i64) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @TI_GPIO_LOCK_DESTROY(%struct.ti_gpio_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
