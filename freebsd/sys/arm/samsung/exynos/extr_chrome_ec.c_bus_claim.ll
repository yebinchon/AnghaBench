; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_chrome_ec.c_bus_claim.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_chrome_ec.c_bus_claim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ec_softc = type { i32, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"i2c arbitrator is not configured\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"gpio\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"cant find gpio_dev\0A\00", align 1
@GPIO_PIN_LOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ec_softc*)* @bus_claim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bus_claim(%struct.ec_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ec_softc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.ec_softc* %0, %struct.ec_softc** %3, align 8
  %6 = load %struct.ec_softc*, %struct.ec_softc** %3, align 8
  %7 = getelementptr inbounds %struct.ec_softc, %struct.ec_softc* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = load %struct.ec_softc*, %struct.ec_softc** %3, align 8
  %12 = getelementptr inbounds %struct.ec_softc, %struct.ec_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %10, %1
  %16 = load %struct.ec_softc*, %struct.ec_softc** %3, align 8
  %17 = getelementptr inbounds %struct.ec_softc, %struct.ec_softc* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @device_printf(i32 %18, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %46

20:                                               ; preds = %10
  %21 = call i32 @devclass_find(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %22 = call i32* @devclass_get_device(i32 %21, i32 0)
  store i32* %22, i32** %4, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.ec_softc*, %struct.ec_softc** %3, align 8
  %27 = getelementptr inbounds %struct.ec_softc, %struct.ec_softc* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @device_printf(i32 %28, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %46

30:                                               ; preds = %20
  %31 = load i32*, i32** %4, align 8
  %32 = load %struct.ec_softc*, %struct.ec_softc** %3, align 8
  %33 = getelementptr inbounds %struct.ec_softc, %struct.ec_softc* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @GPIO_PIN_LOW, align 4
  %36 = call i32 @GPIO_PIN_SET(i32* %31, i32 %34, i32 %35)
  %37 = load i32*, i32** %4, align 8
  %38 = load %struct.ec_softc*, %struct.ec_softc** %3, align 8
  %39 = getelementptr inbounds %struct.ec_softc, %struct.ec_softc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @GPIO_PIN_GET(i32* %37, i32 %40, i32* %5)
  %42 = load i32, i32* %5, align 4
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %45

44:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %46

45:                                               ; preds = %30
  store i32 -1, i32* %2, align 4
  br label %46

46:                                               ; preds = %45, %44, %25, %15
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32* @devclass_get_device(i32, i32) #1

declare dso_local i32 @devclass_find(i8*) #1

declare dso_local i32 @GPIO_PIN_SET(i32*, i32, i32) #1

declare dso_local i32 @GPIO_PIN_GET(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
