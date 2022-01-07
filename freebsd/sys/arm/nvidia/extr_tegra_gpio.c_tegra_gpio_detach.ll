; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_gpio.c_tegra_gpio_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_gpio.c_tegra_gpio_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_gpio_softc = type { i32*, i32**, i32*, i32**, i32 }

@.str = private unnamed_addr constant [27 x i8] c"gpio mutex not initialized\00", align 1
@GPIO_NUM_BANKS = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @tegra_gpio_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_gpio_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_gpio_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.tegra_gpio_softc* @device_get_softc(i32 %5)
  store %struct.tegra_gpio_softc* %6, %struct.tegra_gpio_softc** %3, align 8
  %7 = load %struct.tegra_gpio_softc*, %struct.tegra_gpio_softc** %3, align 8
  %8 = getelementptr inbounds %struct.tegra_gpio_softc, %struct.tegra_gpio_softc* %7, i32 0, i32 4
  %9 = call i32 @mtx_initialized(i32* %8)
  %10 = call i32 @KASSERT(i32 %9, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %42, %1
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @GPIO_NUM_BANKS, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %45

15:                                               ; preds = %11
  %16 = load %struct.tegra_gpio_softc*, %struct.tegra_gpio_softc** %3, align 8
  %17 = getelementptr inbounds %struct.tegra_gpio_softc, %struct.tegra_gpio_softc* %16, i32 0, i32 3
  %18 = load i32**, i32*** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32*, i32** %18, i64 %20
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %41

24:                                               ; preds = %15
  %25 = load i32, i32* %2, align 4
  %26 = load %struct.tegra_gpio_softc*, %struct.tegra_gpio_softc** %3, align 8
  %27 = getelementptr inbounds %struct.tegra_gpio_softc, %struct.tegra_gpio_softc* %26, i32 0, i32 1
  %28 = load i32**, i32*** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32*, i32** %28, i64 %30
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.tegra_gpio_softc*, %struct.tegra_gpio_softc** %3, align 8
  %34 = getelementptr inbounds %struct.tegra_gpio_softc, %struct.tegra_gpio_softc* %33, i32 0, i32 3
  %35 = load i32**, i32*** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32*, i32** %35, i64 %37
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @bus_teardown_intr(i32 %25, i32* %32, i32* %39)
  br label %41

41:                                               ; preds = %24, %15
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %4, align 4
  br label %11

45:                                               ; preds = %11
  %46 = load %struct.tegra_gpio_softc*, %struct.tegra_gpio_softc** %3, align 8
  %47 = getelementptr inbounds %struct.tegra_gpio_softc, %struct.tegra_gpio_softc* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load %struct.tegra_gpio_softc*, %struct.tegra_gpio_softc** %3, align 8
  %52 = call i32 @tegra_gpio_pic_detach(%struct.tegra_gpio_softc* %51)
  br label %53

53:                                               ; preds = %50, %45
  %54 = load i32, i32* %2, align 4
  %55 = call i32 @gpiobus_detach_bus(i32 %54)
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %81, %53
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @GPIO_NUM_BANKS, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %84

60:                                               ; preds = %56
  %61 = load %struct.tegra_gpio_softc*, %struct.tegra_gpio_softc** %3, align 8
  %62 = getelementptr inbounds %struct.tegra_gpio_softc, %struct.tegra_gpio_softc* %61, i32 0, i32 1
  %63 = load i32**, i32*** %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32*, i32** %63, i64 %65
  %67 = load i32*, i32** %66, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %80

69:                                               ; preds = %60
  %70 = load i32, i32* %2, align 4
  %71 = load i32, i32* @SYS_RES_IRQ, align 4
  %72 = load %struct.tegra_gpio_softc*, %struct.tegra_gpio_softc** %3, align 8
  %73 = getelementptr inbounds %struct.tegra_gpio_softc, %struct.tegra_gpio_softc* %72, i32 0, i32 1
  %74 = load i32**, i32*** %73, align 8
  %75 = load i32, i32* %4, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32*, i32** %74, i64 %76
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @bus_release_resource(i32 %70, i32 %71, i32 0, i32* %78)
  br label %80

80:                                               ; preds = %69, %60
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %4, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %4, align 4
  br label %56

84:                                               ; preds = %56
  %85 = load %struct.tegra_gpio_softc*, %struct.tegra_gpio_softc** %3, align 8
  %86 = getelementptr inbounds %struct.tegra_gpio_softc, %struct.tegra_gpio_softc* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %96

89:                                               ; preds = %84
  %90 = load i32, i32* %2, align 4
  %91 = load i32, i32* @SYS_RES_MEMORY, align 4
  %92 = load %struct.tegra_gpio_softc*, %struct.tegra_gpio_softc** %3, align 8
  %93 = getelementptr inbounds %struct.tegra_gpio_softc, %struct.tegra_gpio_softc* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = call i32 @bus_release_resource(i32 %90, i32 %91, i32 0, i32* %94)
  br label %96

96:                                               ; preds = %89, %84
  %97 = load %struct.tegra_gpio_softc*, %struct.tegra_gpio_softc** %3, align 8
  %98 = call i32 @GPIO_LOCK_DESTROY(%struct.tegra_gpio_softc* %97)
  ret i32 0
}

declare dso_local %struct.tegra_gpio_softc* @device_get_softc(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mtx_initialized(i32*) #1

declare dso_local i32 @bus_teardown_intr(i32, i32*, i32*) #1

declare dso_local i32 @tegra_gpio_pic_detach(%struct.tegra_gpio_softc*) #1

declare dso_local i32 @gpiobus_detach_bus(i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @GPIO_LOCK_DESTROY(%struct.tegra_gpio_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
