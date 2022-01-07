; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmu.c_pmu_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmu.c_pmu_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmu_softc = type { i32*, i32**, i32 }

@pmu_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"could not allocate resources\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@MAX_RLEN = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@pmu_intr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Unable to setup interrupt handler.\0A\00", align 1
@MAXCPU = common dso_local global i32 0, align 4
@PMU_IESR_C = common dso_local global i32 0, align 4
@ccnt_hi = common dso_local global i64* null, align 8
@pmu_attched = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @pmu_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmu_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.pmu_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.pmu_softc* @device_get_softc(i32 %7)
  store %struct.pmu_softc* %8, %struct.pmu_softc** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.pmu_softc*, %struct.pmu_softc** %4, align 8
  %11 = getelementptr inbounds %struct.pmu_softc, %struct.pmu_softc* %10, i32 0, i32 2
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @pmu_spec, align 4
  %14 = load %struct.pmu_softc*, %struct.pmu_softc** %4, align 8
  %15 = getelementptr inbounds %struct.pmu_softc, %struct.pmu_softc* %14, i32 0, i32 1
  %16 = load i32**, i32*** %15, align 8
  %17 = call i64 @bus_alloc_resources(i32 %12, i32 %13, i32** %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @device_printf(i32 %20, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENXIO, align 4
  store i32 %22, i32* %2, align 4
  br label %69

23:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %65, %23
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @MAX_RLEN, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %68

28:                                               ; preds = %24
  %29 = load %struct.pmu_softc*, %struct.pmu_softc** %4, align 8
  %30 = getelementptr inbounds %struct.pmu_softc, %struct.pmu_softc* %29, i32 0, i32 1
  %31 = load i32**, i32*** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32*, i32** %31, i64 %33
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  br label %68

38:                                               ; preds = %28
  %39 = load i32, i32* %3, align 4
  %40 = load %struct.pmu_softc*, %struct.pmu_softc** %4, align 8
  %41 = getelementptr inbounds %struct.pmu_softc, %struct.pmu_softc* %40, i32 0, i32 1
  %42 = load i32**, i32*** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32*, i32** %42, i64 %44
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* @INTR_MPSAFE, align 4
  %48 = load i32, i32* @INTR_TYPE_MISC, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @pmu_intr, align 4
  %51 = load %struct.pmu_softc*, %struct.pmu_softc** %4, align 8
  %52 = getelementptr inbounds %struct.pmu_softc, %struct.pmu_softc* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = call i32 @bus_setup_intr(i32 %39, i32* %46, i32 %49, i32 %50, i32* null, i32* null, i32* %56)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %38
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @device_printf(i32 %61, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %63 = load i32, i32* @ENXIO, align 4
  store i32 %63, i32* %2, align 4
  br label %69

64:                                               ; preds = %38
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %6, align 4
  br label %24

68:                                               ; preds = %37, %24
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %68, %60, %19
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local %struct.pmu_softc* @device_get_softc(i32) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32**) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
