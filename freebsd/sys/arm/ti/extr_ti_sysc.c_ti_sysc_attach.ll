; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_sysc.c_ti_sysc_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_sysc.c_ti_sysc_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_sysc_softc = type { i32, i32* }

@.str = private unnamed_addr constant [22 x i8] c"could not get ranges\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ti_sysc_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_sysc_attach(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.ti_sysc_softc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call %struct.ti_sysc_softc* @device_get_softc(i32* %8)
  store %struct.ti_sysc_softc* %9, %struct.ti_sysc_softc** %4, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = load %struct.ti_sysc_softc*, %struct.ti_sysc_softc** %4, align 8
  %12 = getelementptr inbounds %struct.ti_sysc_softc, %struct.ti_sysc_softc* %11, i32 0, i32 1
  store i32* %10, i32** %12, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = call i64 @ofw_bus_get_node(i32* %13)
  store i64 %14, i64* %6, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @simplebus_init(i32* %15, i64 %16)
  %18 = load i64, i64* %6, align 8
  %19 = load %struct.ti_sysc_softc*, %struct.ti_sysc_softc** %4, align 8
  %20 = getelementptr inbounds %struct.ti_sysc_softc, %struct.ti_sysc_softc* %19, i32 0, i32 0
  %21 = call i64 @simplebus_fill_ranges(i64 %18, i32* %20)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @device_printf(i32* %24, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @ENXIO, align 4
  store i32 %26, i32* %2, align 4
  br label %49

27:                                               ; preds = %1
  %28 = load i64, i64* %6, align 8
  %29 = call i64 @OF_child(i64 %28)
  store i64 %29, i64* %7, align 8
  br label %30

30:                                               ; preds = %43, %27
  %31 = load i64, i64* %7, align 8
  %32 = icmp sgt i64 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %30
  %34 = load i32*, i32** %3, align 8
  %35 = load i64, i64* %7, align 8
  %36 = call i32* @simplebus_add_device(i32* %34, i64 %35, i32 0, i32* null, i32 -1, i32* null)
  store i32* %36, i32** %5, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @device_probe_and_attach(i32* %40)
  br label %42

42:                                               ; preds = %39, %33
  br label %43

43:                                               ; preds = %42
  %44 = load i64, i64* %7, align 8
  %45 = call i64 @OF_peer(i64 %44)
  store i64 %45, i64* %7, align 8
  br label %30

46:                                               ; preds = %30
  %47 = load i32*, i32** %3, align 8
  %48 = call i32 @bus_generic_attach(i32* %47)
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %46, %23
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.ti_sysc_softc* @device_get_softc(i32*) #1

declare dso_local i64 @ofw_bus_get_node(i32*) #1

declare dso_local i32 @simplebus_init(i32*, i64) #1

declare dso_local i64 @simplebus_fill_ranges(i64, i32*) #1

declare dso_local i32 @device_printf(i32*, i8*) #1

declare dso_local i64 @OF_child(i64) #1

declare dso_local i32* @simplebus_add_device(i32*, i64, i32, i32*, i32, i32*) #1

declare dso_local i32 @device_probe_and_attach(i32*) #1

declare dso_local i64 @OF_peer(i64) #1

declare dso_local i32 @bus_generic_attach(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
