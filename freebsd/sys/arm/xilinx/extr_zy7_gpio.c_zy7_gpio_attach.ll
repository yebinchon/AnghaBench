; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/xilinx/extr_zy7_gpio.c_zy7_gpio_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/xilinx/extr_zy7_gpio.c_zy7_gpio_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zy7_gpio_softc = type { i32*, i32*, i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Can't allocate memory for device\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @zy7_gpio_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zy7_gpio_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.zy7_gpio_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.zy7_gpio_softc* @device_get_softc(i32 %6)
  store %struct.zy7_gpio_softc* %7, %struct.zy7_gpio_softc** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.zy7_gpio_softc*, %struct.zy7_gpio_softc** %4, align 8
  %10 = getelementptr inbounds %struct.zy7_gpio_softc, %struct.zy7_gpio_softc* %9, i32 0, i32 2
  store i32 %8, i32* %10, align 8
  %11 = load %struct.zy7_gpio_softc*, %struct.zy7_gpio_softc** %4, align 8
  %12 = call i32 @ZGPIO_LOCK_INIT(%struct.zy7_gpio_softc* %11)
  store i32 0, i32* %5, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @SYS_RES_MEMORY, align 4
  %15 = load i32, i32* @RF_ACTIVE, align 4
  %16 = call i32* @bus_alloc_resource_any(i32 %13, i32 %14, i32* %5, i32 %15)
  %17 = load %struct.zy7_gpio_softc*, %struct.zy7_gpio_softc** %4, align 8
  %18 = getelementptr inbounds %struct.zy7_gpio_softc, %struct.zy7_gpio_softc* %17, i32 0, i32 1
  store i32* %16, i32** %18, align 8
  %19 = load %struct.zy7_gpio_softc*, %struct.zy7_gpio_softc** %4, align 8
  %20 = getelementptr inbounds %struct.zy7_gpio_softc, %struct.zy7_gpio_softc* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @device_printf(i32 %24, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @zy7_gpio_detach(i32 %26)
  %28 = load i32, i32* @ENOMEM, align 4
  store i32 %28, i32* %2, align 4
  br label %43

29:                                               ; preds = %1
  %30 = load i32, i32* %3, align 4
  %31 = call i32* @gpiobus_attach_bus(i32 %30)
  %32 = load %struct.zy7_gpio_softc*, %struct.zy7_gpio_softc** %4, align 8
  %33 = getelementptr inbounds %struct.zy7_gpio_softc, %struct.zy7_gpio_softc* %32, i32 0, i32 0
  store i32* %31, i32** %33, align 8
  %34 = load %struct.zy7_gpio_softc*, %struct.zy7_gpio_softc** %4, align 8
  %35 = getelementptr inbounds %struct.zy7_gpio_softc, %struct.zy7_gpio_softc* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %29
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @zy7_gpio_detach(i32 %39)
  %41 = load i32, i32* @ENOMEM, align 4
  store i32 %41, i32* %2, align 4
  br label %43

42:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %38, %23
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local %struct.zy7_gpio_softc* @device_get_softc(i32) #1

declare dso_local i32 @ZGPIO_LOCK_INIT(%struct.zy7_gpio_softc*) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @zy7_gpio_detach(i32) #1

declare dso_local i32* @gpiobus_attach_bus(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
