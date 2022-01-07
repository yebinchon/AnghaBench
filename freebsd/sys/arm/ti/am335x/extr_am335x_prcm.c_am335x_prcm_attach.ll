; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_prcm.c_am335x_prcm_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_prcm.c_am335x_prcm_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.am335x_prcm_softc = type { i32*, i32, i32 }

@am335x_prcm_sc = common dso_local global %struct.am335x_prcm_softc* null, align 8
@ENXIO = common dso_local global i32 0, align 4
@am335x_prcm_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"could not allocate resources\0A\00", align 1
@am335x_prcm_reset = common dso_local global i32 0, align 4
@ti_cpu_reset = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @am335x_prcm_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @am335x_prcm_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.am335x_prcm_softc*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.am335x_prcm_softc* @device_get_softc(i32 %5)
  store %struct.am335x_prcm_softc* %6, %struct.am335x_prcm_softc** %4, align 8
  %7 = load %struct.am335x_prcm_softc*, %struct.am335x_prcm_softc** @am335x_prcm_sc, align 8
  %8 = icmp ne %struct.am335x_prcm_softc* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @ENXIO, align 4
  store i32 %10, i32* %2, align 4
  br label %42

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @am335x_prcm_spec, align 4
  %14 = load %struct.am335x_prcm_softc*, %struct.am335x_prcm_softc** %4, align 8
  %15 = getelementptr inbounds %struct.am335x_prcm_softc, %struct.am335x_prcm_softc* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = call i64 @bus_alloc_resources(i32 %12, i32 %13, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %11
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @device_printf(i32 %20, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENXIO, align 4
  store i32 %22, i32* %2, align 4
  br label %42

23:                                               ; preds = %11
  %24 = load %struct.am335x_prcm_softc*, %struct.am335x_prcm_softc** %4, align 8
  %25 = getelementptr inbounds %struct.am335x_prcm_softc, %struct.am335x_prcm_softc* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @rman_get_bustag(i32 %28)
  %30 = load %struct.am335x_prcm_softc*, %struct.am335x_prcm_softc** %4, align 8
  %31 = getelementptr inbounds %struct.am335x_prcm_softc, %struct.am335x_prcm_softc* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load %struct.am335x_prcm_softc*, %struct.am335x_prcm_softc** %4, align 8
  %33 = getelementptr inbounds %struct.am335x_prcm_softc, %struct.am335x_prcm_softc* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @rman_get_bushandle(i32 %36)
  %38 = load %struct.am335x_prcm_softc*, %struct.am335x_prcm_softc** %4, align 8
  %39 = getelementptr inbounds %struct.am335x_prcm_softc, %struct.am335x_prcm_softc* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  %40 = load %struct.am335x_prcm_softc*, %struct.am335x_prcm_softc** %4, align 8
  store %struct.am335x_prcm_softc* %40, %struct.am335x_prcm_softc** @am335x_prcm_sc, align 8
  %41 = load i32, i32* @am335x_prcm_reset, align 4
  store i32 %41, i32* @ti_cpu_reset, align 4
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %23, %19, %9
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.am335x_prcm_softc* @device_get_softc(i32) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @rman_get_bustag(i32) #1

declare dso_local i32 @rman_get_bushandle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
