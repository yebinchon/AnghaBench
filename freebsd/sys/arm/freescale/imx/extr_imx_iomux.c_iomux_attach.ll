; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx_iomux.c_iomux_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx_iomux.c_iomux_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iomux_softc = type { i32, i32*, i32 }

@.str = private unnamed_addr constant [18 x i8] c"Unknown SoC type\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Cannot allocate memory resources\0A\00", align 1
@iomux_sc = common dso_local global %struct.iomux_softc* null, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"fsl,pins\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @iomux_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iomux_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.iomux_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.iomux_softc* @device_get_softc(i32 %6)
  store %struct.iomux_softc* %7, %struct.iomux_softc** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.iomux_softc*, %struct.iomux_softc** %4, align 8
  %10 = getelementptr inbounds %struct.iomux_softc, %struct.iomux_softc* %9, i32 0, i32 2
  store i32 %8, i32* %10, align 8
  %11 = call i32 (...) @imx_soc_type()
  switch i32 %11, label %24 [
    i32 134, label %12
    i32 133, label %15
    i32 132, label %18
    i32 130, label %18
    i32 129, label %18
    i32 131, label %18
    i32 128, label %21
  ]

12:                                               ; preds = %1
  %13 = load %struct.iomux_softc*, %struct.iomux_softc** %4, align 8
  %14 = getelementptr inbounds %struct.iomux_softc, %struct.iomux_softc* %13, i32 0, i32 0
  store i32 4, i32* %14, align 8
  br label %28

15:                                               ; preds = %1
  %16 = load %struct.iomux_softc*, %struct.iomux_softc** %4, align 8
  %17 = getelementptr inbounds %struct.iomux_softc, %struct.iomux_softc* %16, i32 0, i32 0
  store i32 8, i32* %17, align 8
  br label %28

18:                                               ; preds = %1, %1, %1, %1
  %19 = load %struct.iomux_softc*, %struct.iomux_softc** %4, align 8
  %20 = getelementptr inbounds %struct.iomux_softc, %struct.iomux_softc* %19, i32 0, i32 0
  store i32 52, i32* %20, align 8
  br label %28

21:                                               ; preds = %1
  %22 = load %struct.iomux_softc*, %struct.iomux_softc** %4, align 8
  %23 = getelementptr inbounds %struct.iomux_softc, %struct.iomux_softc* %22, i32 0, i32 0
  store i32 56, i32* %23, align 8
  br label %28

24:                                               ; preds = %1
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @device_printf(i32 %25, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @ENXIO, align 4
  store i32 %27, i32* %2, align 4
  br label %49

28:                                               ; preds = %21, %18, %15, %12
  store i32 0, i32* %5, align 4
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @SYS_RES_MEMORY, align 4
  %31 = load i32, i32* @RF_ACTIVE, align 4
  %32 = call i32* @bus_alloc_resource_any(i32 %29, i32 %30, i32* %5, i32 %31)
  %33 = load %struct.iomux_softc*, %struct.iomux_softc** %4, align 8
  %34 = getelementptr inbounds %struct.iomux_softc, %struct.iomux_softc* %33, i32 0, i32 1
  store i32* %32, i32** %34, align 8
  %35 = load %struct.iomux_softc*, %struct.iomux_softc** %4, align 8
  %36 = getelementptr inbounds %struct.iomux_softc, %struct.iomux_softc* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %28
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @device_printf(i32 %40, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* @ENXIO, align 4
  store i32 %42, i32* %2, align 4
  br label %49

43:                                               ; preds = %28
  %44 = load %struct.iomux_softc*, %struct.iomux_softc** %4, align 8
  store %struct.iomux_softc* %44, %struct.iomux_softc** @iomux_sc, align 8
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @fdt_pinctrl_register(i32 %45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @fdt_pinctrl_configure_tree(i32 %47)
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %43, %39, %24
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.iomux_softc* @device_get_softc(i32) #1

declare dso_local i32 @imx_soc_type(...) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @fdt_pinctrl_register(i32, i8*) #1

declare dso_local i32 @fdt_pinctrl_configure_tree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
