; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_pinmux.c_ti_pinmux_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_pinmux.c_ti_pinmux_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_pinmux_softc = type { i32*, i32, i32, i32 }

@ti_pinmux_res_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"could not allocate resources\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@ti_pinmux_sc = common dso_local global %struct.ti_pinmux_softc* null, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"pinctrl-single,pins\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ti_pinmux_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_pinmux_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ti_pinmux_softc*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.ti_pinmux_softc* @device_get_softc(i32 %5)
  store %struct.ti_pinmux_softc* %6, %struct.ti_pinmux_softc** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.ti_pinmux_softc*, %struct.ti_pinmux_softc** %4, align 8
  %9 = getelementptr inbounds %struct.ti_pinmux_softc, %struct.ti_pinmux_softc* %8, i32 0, i32 3
  store i32 %7, i32* %9, align 8
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @ti_pinmux_res_spec, align 4
  %12 = load %struct.ti_pinmux_softc*, %struct.ti_pinmux_softc** %4, align 8
  %13 = getelementptr inbounds %struct.ti_pinmux_softc, %struct.ti_pinmux_softc* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = call i64 @bus_alloc_resources(i32 %10, i32 %11, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @device_printf(i32 %18, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENXIO, align 4
  store i32 %20, i32* %2, align 4
  br label %47

21:                                               ; preds = %1
  %22 = load %struct.ti_pinmux_softc*, %struct.ti_pinmux_softc** %4, align 8
  %23 = getelementptr inbounds %struct.ti_pinmux_softc, %struct.ti_pinmux_softc* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @rman_get_bustag(i32 %26)
  %28 = load %struct.ti_pinmux_softc*, %struct.ti_pinmux_softc** %4, align 8
  %29 = getelementptr inbounds %struct.ti_pinmux_softc, %struct.ti_pinmux_softc* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load %struct.ti_pinmux_softc*, %struct.ti_pinmux_softc** %4, align 8
  %31 = getelementptr inbounds %struct.ti_pinmux_softc, %struct.ti_pinmux_softc* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @rman_get_bushandle(i32 %34)
  %36 = load %struct.ti_pinmux_softc*, %struct.ti_pinmux_softc** %4, align 8
  %37 = getelementptr inbounds %struct.ti_pinmux_softc, %struct.ti_pinmux_softc* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  %38 = load %struct.ti_pinmux_softc*, %struct.ti_pinmux_softc** @ti_pinmux_sc, align 8
  %39 = icmp eq %struct.ti_pinmux_softc* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %21
  %41 = load %struct.ti_pinmux_softc*, %struct.ti_pinmux_softc** %4, align 8
  store %struct.ti_pinmux_softc* %41, %struct.ti_pinmux_softc** @ti_pinmux_sc, align 8
  br label %42

42:                                               ; preds = %40, %21
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @fdt_pinctrl_register(i32 %43, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @fdt_pinctrl_configure_tree(i32 %45)
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %42, %17
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.ti_pinmux_softc* @device_get_softc(i32) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @rman_get_bustag(i32) #1

declare dso_local i32 @rman_get_bushandle(i32) #1

declare dso_local i32 @fdt_pinctrl_register(i32, i8*) #1

declare dso_local i32 @fdt_pinctrl_configure_tree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
