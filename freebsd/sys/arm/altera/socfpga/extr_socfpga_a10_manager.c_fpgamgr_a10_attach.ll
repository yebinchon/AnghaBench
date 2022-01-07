; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/altera/socfpga/extr_socfpga_a10_manager.c_fpgamgr_a10_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/altera/socfpga/extr_socfpga_a10_manager.c_fpgamgr_a10_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpgamgr_a10_softc = type { %struct.TYPE_2__*, i32, i32*, i32, i32 }
%struct.TYPE_2__ = type { %struct.fpgamgr_a10_softc* }

@fpgamgr_a10_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Could not allocate resources.\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@fpga_cdevsw = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_WHEEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"fpga%d\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Failed to create character device.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @fpgamgr_a10_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fpgamgr_a10_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.fpgamgr_a10_softc*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.fpgamgr_a10_softc* @device_get_softc(i32 %5)
  store %struct.fpgamgr_a10_softc* %6, %struct.fpgamgr_a10_softc** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.fpgamgr_a10_softc*, %struct.fpgamgr_a10_softc** %4, align 8
  %9 = getelementptr inbounds %struct.fpgamgr_a10_softc, %struct.fpgamgr_a10_softc* %8, i32 0, i32 1
  store i32 %7, i32* %9, align 8
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @fpgamgr_a10_spec, align 4
  %12 = load %struct.fpgamgr_a10_softc*, %struct.fpgamgr_a10_softc** %4, align 8
  %13 = getelementptr inbounds %struct.fpgamgr_a10_softc, %struct.fpgamgr_a10_softc* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = call i64 @bus_alloc_resources(i32 %10, i32 %11, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @device_printf(i32 %18, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENXIO, align 4
  store i32 %20, i32* %2, align 4
  br label %61

21:                                               ; preds = %1
  %22 = load %struct.fpgamgr_a10_softc*, %struct.fpgamgr_a10_softc** %4, align 8
  %23 = getelementptr inbounds %struct.fpgamgr_a10_softc, %struct.fpgamgr_a10_softc* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @rman_get_bustag(i32 %26)
  %28 = load %struct.fpgamgr_a10_softc*, %struct.fpgamgr_a10_softc** %4, align 8
  %29 = getelementptr inbounds %struct.fpgamgr_a10_softc, %struct.fpgamgr_a10_softc* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 4
  %30 = load %struct.fpgamgr_a10_softc*, %struct.fpgamgr_a10_softc** %4, align 8
  %31 = getelementptr inbounds %struct.fpgamgr_a10_softc, %struct.fpgamgr_a10_softc* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @rman_get_bushandle(i32 %34)
  %36 = load %struct.fpgamgr_a10_softc*, %struct.fpgamgr_a10_softc** %4, align 8
  %37 = getelementptr inbounds %struct.fpgamgr_a10_softc, %struct.fpgamgr_a10_softc* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @UID_ROOT, align 4
  %39 = load i32, i32* @GID_WHEEL, align 4
  %40 = load %struct.fpgamgr_a10_softc*, %struct.fpgamgr_a10_softc** %4, align 8
  %41 = getelementptr inbounds %struct.fpgamgr_a10_softc, %struct.fpgamgr_a10_softc* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @device_get_unit(i32 %42)
  %44 = call %struct.TYPE_2__* @make_dev(i32* @fpga_cdevsw, i32 0, i32 %38, i32 %39, i32 384, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load %struct.fpgamgr_a10_softc*, %struct.fpgamgr_a10_softc** %4, align 8
  %46 = getelementptr inbounds %struct.fpgamgr_a10_softc, %struct.fpgamgr_a10_softc* %45, i32 0, i32 0
  store %struct.TYPE_2__* %44, %struct.TYPE_2__** %46, align 8
  %47 = load %struct.fpgamgr_a10_softc*, %struct.fpgamgr_a10_softc** %4, align 8
  %48 = getelementptr inbounds %struct.fpgamgr_a10_softc, %struct.fpgamgr_a10_softc* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = icmp eq %struct.TYPE_2__* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %21
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @device_printf(i32 %52, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %54 = load i32, i32* @ENXIO, align 4
  store i32 %54, i32* %2, align 4
  br label %61

55:                                               ; preds = %21
  %56 = load %struct.fpgamgr_a10_softc*, %struct.fpgamgr_a10_softc** %4, align 8
  %57 = load %struct.fpgamgr_a10_softc*, %struct.fpgamgr_a10_softc** %4, align 8
  %58 = getelementptr inbounds %struct.fpgamgr_a10_softc, %struct.fpgamgr_a10_softc* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store %struct.fpgamgr_a10_softc* %56, %struct.fpgamgr_a10_softc** %60, align 8
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %55, %51, %17
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local %struct.fpgamgr_a10_softc* @device_get_softc(i32) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @rman_get_bustag(i32) #1

declare dso_local i32 @rman_get_bushandle(i32) #1

declare dso_local %struct.TYPE_2__* @make_dev(i32*, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @device_get_unit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
