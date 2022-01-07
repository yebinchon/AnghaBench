; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_exynos5_mct.c_arm_tmr_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_exynos5_mct.c_arm_tmr_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_tmr_softc = type { i32, i32, i32* }

@arm_tmr_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"could not allocate resources\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@MCT_CTRL = common dso_local global i32 0, align 4
@MCT_CTRL_START = common dso_local global i32 0, align 4
@MCT_WRITE_STAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Can't enable timer\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @arm_tmr_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_tmr_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.arm_tmr_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.arm_tmr_softc* @device_get_softc(i32 %8)
  store %struct.arm_tmr_softc* %9, %struct.arm_tmr_softc** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @arm_tmr_spec, align 4
  %12 = load %struct.arm_tmr_softc*, %struct.arm_tmr_softc** %4, align 8
  %13 = getelementptr inbounds %struct.arm_tmr_softc, %struct.arm_tmr_softc* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = call i64 @bus_alloc_resources(i32 %10, i32 %11, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @device_printf(i32 %18, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENXIO, align 4
  store i32 %20, i32* %2, align 4
  br label %91

21:                                               ; preds = %1
  %22 = load %struct.arm_tmr_softc*, %struct.arm_tmr_softc** %4, align 8
  %23 = getelementptr inbounds %struct.arm_tmr_softc, %struct.arm_tmr_softc* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @rman_get_bustag(i32 %26)
  %28 = load %struct.arm_tmr_softc*, %struct.arm_tmr_softc** %4, align 8
  %29 = getelementptr inbounds %struct.arm_tmr_softc, %struct.arm_tmr_softc* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.arm_tmr_softc*, %struct.arm_tmr_softc** %4, align 8
  %31 = getelementptr inbounds %struct.arm_tmr_softc, %struct.arm_tmr_softc* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @rman_get_bushandle(i32 %34)
  %36 = load %struct.arm_tmr_softc*, %struct.arm_tmr_softc** %4, align 8
  %37 = getelementptr inbounds %struct.arm_tmr_softc, %struct.arm_tmr_softc* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.arm_tmr_softc*, %struct.arm_tmr_softc** %4, align 8
  %39 = getelementptr inbounds %struct.arm_tmr_softc, %struct.arm_tmr_softc* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.arm_tmr_softc*, %struct.arm_tmr_softc** %4, align 8
  %42 = getelementptr inbounds %struct.arm_tmr_softc, %struct.arm_tmr_softc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @MCT_CTRL, align 4
  %45 = call i32 @bus_space_read_4(i32 %40, i32 %43, i32 %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* @MCT_CTRL_START, align 4
  %47 = load i32, i32* %5, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %5, align 4
  %49 = load %struct.arm_tmr_softc*, %struct.arm_tmr_softc** %4, align 8
  %50 = getelementptr inbounds %struct.arm_tmr_softc, %struct.arm_tmr_softc* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.arm_tmr_softc*, %struct.arm_tmr_softc** %4, align 8
  %53 = getelementptr inbounds %struct.arm_tmr_softc, %struct.arm_tmr_softc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @MCT_CTRL, align 4
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @bus_space_write_4(i32 %51, i32 %54, i32 %55, i32 %56)
  store i32 65536, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %58

58:                                               ; preds = %86, %21
  %59 = load i32, i32* %6, align 4
  %60 = icmp slt i32 %59, 10
  br i1 %60, label %61, label %89

61:                                               ; preds = %58
  %62 = load %struct.arm_tmr_softc*, %struct.arm_tmr_softc** %4, align 8
  %63 = getelementptr inbounds %struct.arm_tmr_softc, %struct.arm_tmr_softc* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.arm_tmr_softc*, %struct.arm_tmr_softc** %4, align 8
  %66 = getelementptr inbounds %struct.arm_tmr_softc, %struct.arm_tmr_softc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @MCT_WRITE_STAT, align 4
  %69 = call i32 @bus_space_read_4(i32 %64, i32 %67, i32 %68)
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* %7, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %61
  %75 = load %struct.arm_tmr_softc*, %struct.arm_tmr_softc** %4, align 8
  %76 = getelementptr inbounds %struct.arm_tmr_softc, %struct.arm_tmr_softc* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.arm_tmr_softc*, %struct.arm_tmr_softc** %4, align 8
  %79 = getelementptr inbounds %struct.arm_tmr_softc, %struct.arm_tmr_softc* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @MCT_WRITE_STAT, align 4
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @bus_space_write_4(i32 %77, i32 %80, i32 %81, i32 %82)
  store i32 0, i32* %2, align 4
  br label %91

84:                                               ; preds = %61
  %85 = call i32 (...) @cpufunc_nullop()
  br label %86

86:                                               ; preds = %84
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %6, align 4
  br label %58

89:                                               ; preds = %58
  %90 = call i32 @panic(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %91

91:                                               ; preds = %89, %74, %17
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local %struct.arm_tmr_softc* @device_get_softc(i32) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @rman_get_bustag(i32) #1

declare dso_local i32 @rman_get_bushandle(i32) #1

declare dso_local i32 @bus_space_read_4(i32, i32, i32) #1

declare dso_local i32 @bus_space_write_4(i32, i32, i32, i32) #1

declare dso_local i32 @cpufunc_nullop(...) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
