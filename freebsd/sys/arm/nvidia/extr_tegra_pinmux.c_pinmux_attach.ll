; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_pinmux.c_pinmux_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_pinmux.c_pinmux_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinmux_softc = type { i32*, i32*, i32*, i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Cannot allocate memory resources\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"boot\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @pinmux_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pinmux_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.pinmux_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.pinmux_softc* @device_get_softc(i32 %6)
  store %struct.pinmux_softc* %7, %struct.pinmux_softc** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.pinmux_softc*, %struct.pinmux_softc** %4, align 8
  %10 = getelementptr inbounds %struct.pinmux_softc, %struct.pinmux_softc* %9, i32 0, i32 3
  store i32 %8, i32* %10, align 8
  store i32 0, i32* %5, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @SYS_RES_MEMORY, align 4
  %13 = load i32, i32* @RF_ACTIVE, align 4
  %14 = call i8* @bus_alloc_resource_any(i32 %11, i32 %12, i32* %5, i32 %13)
  %15 = bitcast i8* %14 to i32*
  %16 = load %struct.pinmux_softc*, %struct.pinmux_softc** %4, align 8
  %17 = getelementptr inbounds %struct.pinmux_softc, %struct.pinmux_softc* %16, i32 0, i32 2
  store i32* %15, i32** %17, align 8
  %18 = load %struct.pinmux_softc*, %struct.pinmux_softc** %4, align 8
  %19 = getelementptr inbounds %struct.pinmux_softc, %struct.pinmux_softc* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @device_printf(i32 %23, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @ENXIO, align 4
  store i32 %25, i32* %2, align 4
  br label %63

26:                                               ; preds = %1
  store i32 1, i32* %5, align 4
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @SYS_RES_MEMORY, align 4
  %29 = load i32, i32* @RF_ACTIVE, align 4
  %30 = call i8* @bus_alloc_resource_any(i32 %27, i32 %28, i32* %5, i32 %29)
  %31 = bitcast i8* %30 to i32*
  %32 = load %struct.pinmux_softc*, %struct.pinmux_softc** %4, align 8
  %33 = getelementptr inbounds %struct.pinmux_softc, %struct.pinmux_softc* %32, i32 0, i32 1
  store i32* %31, i32** %33, align 8
  %34 = load %struct.pinmux_softc*, %struct.pinmux_softc** %4, align 8
  %35 = getelementptr inbounds %struct.pinmux_softc, %struct.pinmux_softc* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %26
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @device_printf(i32 %39, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @ENXIO, align 4
  store i32 %41, i32* %2, align 4
  br label %63

42:                                               ; preds = %26
  store i32 2, i32* %5, align 4
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @SYS_RES_MEMORY, align 4
  %45 = load i32, i32* @RF_ACTIVE, align 4
  %46 = call i8* @bus_alloc_resource_any(i32 %43, i32 %44, i32* %5, i32 %45)
  %47 = bitcast i8* %46 to i32*
  %48 = load %struct.pinmux_softc*, %struct.pinmux_softc** %4, align 8
  %49 = getelementptr inbounds %struct.pinmux_softc, %struct.pinmux_softc* %48, i32 0, i32 0
  store i32* %47, i32** %49, align 8
  %50 = load %struct.pinmux_softc*, %struct.pinmux_softc** %4, align 8
  %51 = getelementptr inbounds %struct.pinmux_softc, %struct.pinmux_softc* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %42
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @device_printf(i32 %55, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %57 = load i32, i32* @ENXIO, align 4
  store i32 %57, i32* %2, align 4
  br label %63

58:                                               ; preds = %42
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @fdt_pinctrl_register(i32 %59, i32* null)
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @fdt_pinctrl_configure_by_name(i32 %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %58, %54, %38, %22
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local %struct.pinmux_softc* @device_get_softc(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @fdt_pinctrl_register(i32, i32*) #1

declare dso_local i32 @fdt_pinctrl_configure_by_name(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
