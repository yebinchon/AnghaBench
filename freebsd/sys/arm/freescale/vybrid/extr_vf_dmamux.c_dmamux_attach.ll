; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_dmamux.c_dmamux_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_dmamux.c_dmamux_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmamux_softc = type { i32*, i32*, i32* }

@dmamux_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"could not allocate resources\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@dmamux_sc = common dso_local global %struct.dmamux_softc* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @dmamux_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmamux_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.dmamux_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.dmamux_softc* @device_get_softc(i32 %6)
  store %struct.dmamux_softc* %7, %struct.dmamux_softc** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @dmamux_spec, align 4
  %10 = load %struct.dmamux_softc*, %struct.dmamux_softc** %4, align 8
  %11 = getelementptr inbounds %struct.dmamux_softc, %struct.dmamux_softc* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = call i64 @bus_alloc_resources(i32 %8, i32 %9, i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @device_printf(i32 %16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ENXIO, align 4
  store i32 %18, i32* %2, align 4
  br label %57

19:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %52, %19
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 4
  br i1 %22, label %23, label %55

23:                                               ; preds = %20
  %24 = load %struct.dmamux_softc*, %struct.dmamux_softc** %4, align 8
  %25 = getelementptr inbounds %struct.dmamux_softc, %struct.dmamux_softc* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @rman_get_bustag(i32 %30)
  %32 = load %struct.dmamux_softc*, %struct.dmamux_softc** %4, align 8
  %33 = getelementptr inbounds %struct.dmamux_softc, %struct.dmamux_softc* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  store i32 %31, i32* %37, align 4
  %38 = load %struct.dmamux_softc*, %struct.dmamux_softc** %4, align 8
  %39 = getelementptr inbounds %struct.dmamux_softc, %struct.dmamux_softc* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @rman_get_bushandle(i32 %44)
  %46 = load %struct.dmamux_softc*, %struct.dmamux_softc** %4, align 8
  %47 = getelementptr inbounds %struct.dmamux_softc, %struct.dmamux_softc* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 %45, i32* %51, align 4
  br label %52

52:                                               ; preds = %23
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %20

55:                                               ; preds = %20
  %56 = load %struct.dmamux_softc*, %struct.dmamux_softc** %4, align 8
  store %struct.dmamux_softc* %56, %struct.dmamux_softc** @dmamux_sc, align 8
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %55, %15
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local %struct.dmamux_softc* @device_get_softc(i32) #1

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
