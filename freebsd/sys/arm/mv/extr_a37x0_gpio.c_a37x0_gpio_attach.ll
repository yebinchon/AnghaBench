; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_a37x0_gpio.c_a37x0_gpio_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_a37x0_gpio.c_a37x0_gpio_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a37x0_gpio_softc = type { i64, i64, i32*, i32 }

@.str = private unnamed_addr constant [38 x i8] c"Cannot get syscon handle from parent\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"gpio-ranges\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @a37x0_gpio_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a37x0_gpio_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca %struct.a37x0_gpio_softc*, align 8
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.a37x0_gpio_softc* @device_get_softc(i32 %8)
  store %struct.a37x0_gpio_softc* %9, %struct.a37x0_gpio_softc** %7, align 8
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.a37x0_gpio_softc*, %struct.a37x0_gpio_softc** %7, align 8
  %12 = getelementptr inbounds %struct.a37x0_gpio_softc, %struct.a37x0_gpio_softc* %11, i32 0, i32 3
  %13 = call i32 @syscon_get_handle_default(i32 %10, i32* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @device_printf(i32 %17, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ENXIO, align 4
  store i32 %19, i32* %2, align 4
  br label %76

20:                                               ; preds = %1
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @ofw_bus_get_node(i32 %21)
  %23 = bitcast i64** %6 to i8**
  %24 = call i32 @OF_getencprop_alloc(i32 %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* @ENXIO, align 4
  store i32 %28, i32* %2, align 4
  br label %76

29:                                               ; preds = %20
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = icmp ne i64 %31, 32
  br i1 %32, label %43, label %33

33:                                               ; preds = %29
  %34 = load i64*, i64** %6, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = load i64*, i64** %6, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38, %33, %29
  %44 = load i64*, i64** %6, align 8
  %45 = call i32 @OF_prop_free(i64* %44)
  %46 = load i32, i32* @ENXIO, align 4
  store i32 %46, i32* %2, align 4
  br label %76

47:                                               ; preds = %38
  %48 = load i64*, i64** %6, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 3
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.a37x0_gpio_softc*, %struct.a37x0_gpio_softc** %7, align 8
  %52 = getelementptr inbounds %struct.a37x0_gpio_softc, %struct.a37x0_gpio_softc* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = load i64*, i64** %6, align 8
  %54 = call i32 @OF_prop_free(i64* %53)
  %55 = load %struct.a37x0_gpio_softc*, %struct.a37x0_gpio_softc** %7, align 8
  %56 = getelementptr inbounds %struct.a37x0_gpio_softc, %struct.a37x0_gpio_softc* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.a37x0_gpio_softc*, %struct.a37x0_gpio_softc** %7, align 8
  %59 = getelementptr inbounds %struct.a37x0_gpio_softc, %struct.a37x0_gpio_softc* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp sgt i64 %57, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %47
  %63 = load i32, i32* @ENXIO, align 4
  store i32 %63, i32* %2, align 4
  br label %76

64:                                               ; preds = %47
  %65 = load i32, i32* %3, align 4
  %66 = call i32* @gpiobus_attach_bus(i32 %65)
  %67 = load %struct.a37x0_gpio_softc*, %struct.a37x0_gpio_softc** %7, align 8
  %68 = getelementptr inbounds %struct.a37x0_gpio_softc, %struct.a37x0_gpio_softc* %67, i32 0, i32 2
  store i32* %66, i32** %68, align 8
  %69 = load %struct.a37x0_gpio_softc*, %struct.a37x0_gpio_softc** %7, align 8
  %70 = getelementptr inbounds %struct.a37x0_gpio_softc, %struct.a37x0_gpio_softc* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = icmp eq i32* %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %64
  %74 = load i32, i32* @ENXIO, align 4
  store i32 %74, i32* %2, align 4
  br label %76

75:                                               ; preds = %64
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %75, %73, %62, %43, %27, %16
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local %struct.a37x0_gpio_softc* @device_get_softc(i32) #1

declare dso_local i32 @syscon_get_handle_default(i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @OF_getencprop_alloc(i32, i8*, i8**) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @OF_prop_free(i64*) #1

declare dso_local i32* @gpiobus_attach_bus(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
