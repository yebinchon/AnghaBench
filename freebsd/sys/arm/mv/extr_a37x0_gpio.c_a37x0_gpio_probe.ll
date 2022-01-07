; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_a37x0_gpio.c_a37x0_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_a37x0_gpio.c_a37x0_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a37x0_gpio_softc = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"gpio-controller\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@compat_data = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Armada 37x0 North Bridge GPIO Controller\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Armada 37x0 South Bridge GPIO Controller\00", align 1
@BUS_PROBE_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @a37x0_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a37x0_gpio_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.a37x0_gpio_softc*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @ofw_bus_get_node(i32 %6)
  %8 = call i32 @OF_hasprop(i32 %7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENXIO, align 4
  store i32 %11, i32* %2, align 4
  br label %39

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = call %struct.a37x0_gpio_softc* @device_get_softc(i32 %13)
  store %struct.a37x0_gpio_softc* %14, %struct.a37x0_gpio_softc** %5, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @device_get_parent(i32 %15)
  %17 = load i32, i32* @compat_data, align 4
  %18 = call %struct.TYPE_2__* @ofw_bus_search_compatible(i32 %16, i32 %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.a37x0_gpio_softc*, %struct.a37x0_gpio_softc** %5, align 8
  %22 = getelementptr inbounds %struct.a37x0_gpio_softc, %struct.a37x0_gpio_softc* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.a37x0_gpio_softc*, %struct.a37x0_gpio_softc** %5, align 8
  %24 = getelementptr inbounds %struct.a37x0_gpio_softc, %struct.a37x0_gpio_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %32 [
    i32 129, label %26
    i32 128, label %29
  ]

26:                                               ; preds = %12
  %27 = load %struct.a37x0_gpio_softc*, %struct.a37x0_gpio_softc** %5, align 8
  %28 = getelementptr inbounds %struct.a37x0_gpio_softc, %struct.a37x0_gpio_softc* %27, i32 0, i32 1
  store i32 36, i32* %28, align 4
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %34

29:                                               ; preds = %12
  %30 = load %struct.a37x0_gpio_softc*, %struct.a37x0_gpio_softc** %5, align 8
  %31 = getelementptr inbounds %struct.a37x0_gpio_softc, %struct.a37x0_gpio_softc* %30, i32 0, i32 1
  store i32 30, i32* %31, align 4
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  br label %34

32:                                               ; preds = %12
  %33 = load i32, i32* @ENXIO, align 4
  store i32 %33, i32* %2, align 4
  br label %39

34:                                               ; preds = %29, %26
  %35 = load i32, i32* %3, align 4
  %36 = load i8*, i8** %4, align 8
  %37 = call i32 @device_set_desc(i32 %35, i8* %36)
  %38 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %34, %32, %10
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @OF_hasprop(i32, i8*) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local %struct.a37x0_gpio_softc* @device_get_softc(i32) #1

declare dso_local %struct.TYPE_2__* @ofw_bus_search_compatible(i32, i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
