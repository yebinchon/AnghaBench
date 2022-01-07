; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_sdma.c_sdma_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_sdma.c_sdma_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdma_softc = type { i32, i32*, i32, i32, i32 }

@sdma_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"could not allocate resources\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@sdma_sc = common dso_local global %struct.sdma_softc* null, align 8
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@sdma_intr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Unable to alloc interrupt resource.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @sdma_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdma_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.sdma_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.sdma_softc* @device_get_softc(i32 %6)
  store %struct.sdma_softc* %7, %struct.sdma_softc** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.sdma_softc*, %struct.sdma_softc** %4, align 8
  %10 = getelementptr inbounds %struct.sdma_softc, %struct.sdma_softc* %9, i32 0, i32 4
  store i32 %8, i32* %10, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @sdma_spec, align 4
  %13 = load %struct.sdma_softc*, %struct.sdma_softc** %4, align 8
  %14 = getelementptr inbounds %struct.sdma_softc, %struct.sdma_softc* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = call i64 @bus_alloc_resources(i32 %11, i32 %12, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @device_printf(i32 %19, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENXIO, align 4
  store i32 %21, i32* %2, align 4
  br label %73

22:                                               ; preds = %1
  %23 = load %struct.sdma_softc*, %struct.sdma_softc** %4, align 8
  %24 = getelementptr inbounds %struct.sdma_softc, %struct.sdma_softc* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @rman_get_bustag(i32 %27)
  %29 = load %struct.sdma_softc*, %struct.sdma_softc** %4, align 8
  %30 = getelementptr inbounds %struct.sdma_softc, %struct.sdma_softc* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  %31 = load %struct.sdma_softc*, %struct.sdma_softc** %4, align 8
  %32 = getelementptr inbounds %struct.sdma_softc, %struct.sdma_softc* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @rman_get_bushandle(i32 %35)
  %37 = load %struct.sdma_softc*, %struct.sdma_softc** %4, align 8
  %38 = getelementptr inbounds %struct.sdma_softc, %struct.sdma_softc* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load %struct.sdma_softc*, %struct.sdma_softc** %4, align 8
  store %struct.sdma_softc* %39, %struct.sdma_softc** @sdma_sc, align 8
  %40 = load i32, i32* %3, align 4
  %41 = load %struct.sdma_softc*, %struct.sdma_softc** %4, align 8
  %42 = getelementptr inbounds %struct.sdma_softc, %struct.sdma_softc* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @INTR_TYPE_MISC, align 4
  %47 = load i32, i32* @INTR_MPSAFE, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @sdma_intr, align 4
  %50 = load %struct.sdma_softc*, %struct.sdma_softc** %4, align 8
  %51 = load %struct.sdma_softc*, %struct.sdma_softc** %4, align 8
  %52 = getelementptr inbounds %struct.sdma_softc, %struct.sdma_softc* %51, i32 0, i32 0
  %53 = call i32 @bus_setup_intr(i32 %40, i32 %45, i32 %48, i32* null, i32 %49, %struct.sdma_softc* %50, i32* %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %22
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @device_printf(i32 %57, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32, i32* @ENXIO, align 4
  store i32 %59, i32* %2, align 4
  br label %73

60:                                               ; preds = %22
  %61 = load %struct.sdma_softc*, %struct.sdma_softc** %4, align 8
  %62 = call i32 @load_firmware(%struct.sdma_softc* %61)
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i32, i32* @ENXIO, align 4
  store i32 %65, i32* %2, align 4
  br label %73

66:                                               ; preds = %60
  %67 = load %struct.sdma_softc*, %struct.sdma_softc** %4, align 8
  %68 = call i32 @boot_firmware(%struct.sdma_softc* %67)
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load i32, i32* @ENXIO, align 4
  store i32 %71, i32* %2, align 4
  br label %73

72:                                               ; preds = %66
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %72, %70, %64, %56, %18
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local %struct.sdma_softc* @device_get_softc(i32) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @rman_get_bustag(i32) #1

declare dso_local i32 @rman_get_bushandle(i32) #1

declare dso_local i32 @bus_setup_intr(i32, i32, i32, i32*, i32, %struct.sdma_softc*, i32*) #1

declare dso_local i32 @load_firmware(%struct.sdma_softc*) #1

declare dso_local i32 @boot_firmware(%struct.sdma_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
