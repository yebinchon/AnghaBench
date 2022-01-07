; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_exynos5_combiner.c_combiner_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_exynos5_combiner.c_combiner_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.combiner_softc = type { i32*, i32*, i32, i32, i32 }

@combiner_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"could not allocate resources\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@combiner_sc = common dso_local global %struct.combiner_softc* null, align 8
@NGRP = common dso_local global i32 0, align 4
@INTR_TYPE_BIO = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@combiner_intr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Unable to alloc int resource.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @combiner_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @combiner_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.combiner_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.combiner_softc* @device_get_softc(i32 %7)
  store %struct.combiner_softc* %8, %struct.combiner_softc** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.combiner_softc*, %struct.combiner_softc** %4, align 8
  %11 = getelementptr inbounds %struct.combiner_softc, %struct.combiner_softc* %10, i32 0, i32 4
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @combiner_spec, align 4
  %14 = load %struct.combiner_softc*, %struct.combiner_softc** %4, align 8
  %15 = getelementptr inbounds %struct.combiner_softc, %struct.combiner_softc* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = call i64 @bus_alloc_resources(i32 %12, i32 %13, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @device_printf(i32 %20, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENXIO, align 4
  store i32 %22, i32* %2, align 4
  br label %78

23:                                               ; preds = %1
  %24 = load %struct.combiner_softc*, %struct.combiner_softc** %4, align 8
  %25 = getelementptr inbounds %struct.combiner_softc, %struct.combiner_softc* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @rman_get_bustag(i32 %28)
  %30 = load %struct.combiner_softc*, %struct.combiner_softc** %4, align 8
  %31 = getelementptr inbounds %struct.combiner_softc, %struct.combiner_softc* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load %struct.combiner_softc*, %struct.combiner_softc** %4, align 8
  %33 = getelementptr inbounds %struct.combiner_softc, %struct.combiner_softc* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @rman_get_bushandle(i32 %36)
  %38 = load %struct.combiner_softc*, %struct.combiner_softc** %4, align 8
  %39 = getelementptr inbounds %struct.combiner_softc, %struct.combiner_softc* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load %struct.combiner_softc*, %struct.combiner_softc** %4, align 8
  store %struct.combiner_softc* %40, %struct.combiner_softc** @combiner_sc, align 8
  store i32 0, i32* %6, align 4
  br label %41

41:                                               ; preds = %74, %23
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @NGRP, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %77

45:                                               ; preds = %41
  %46 = load i32, i32* %3, align 4
  %47 = load %struct.combiner_softc*, %struct.combiner_softc** %4, align 8
  %48 = getelementptr inbounds %struct.combiner_softc, %struct.combiner_softc* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 1, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @INTR_TYPE_BIO, align 4
  %56 = load i32, i32* @INTR_MPSAFE, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @combiner_intr, align 4
  %59 = load %struct.combiner_softc*, %struct.combiner_softc** %4, align 8
  %60 = load %struct.combiner_softc*, %struct.combiner_softc** %4, align 8
  %61 = getelementptr inbounds %struct.combiner_softc, %struct.combiner_softc* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = call i32 @bus_setup_intr(i32 %46, i32 %54, i32 %57, i32* null, i32 %58, %struct.combiner_softc* %59, i32* %65)
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %45
  %70 = load i32, i32* %3, align 4
  %71 = call i32 @device_printf(i32 %70, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %72 = load i32, i32* @ENXIO, align 4
  store i32 %72, i32* %2, align 4
  br label %78

73:                                               ; preds = %45
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %6, align 4
  br label %41

77:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %78

78:                                               ; preds = %77, %69, %19
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local %struct.combiner_softc* @device_get_softc(i32) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @rman_get_bustag(i32) #1

declare dso_local i32 @rman_get_bushandle(i32) #1

declare dso_local i32 @bus_setup_intr(i32, i32, i32, i32*, i32, %struct.combiner_softc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
