; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_exynos5_i2c.c_i2c_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_exynos5_i2c.c_i2c_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_softc = type { i32, i32*, i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"I2C\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@i2c_spec = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"could not allocate resources\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"iicbus\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"could not add iicbus child\00", align 1
@I2CSTAT = common dso_local global i32 0, align 4
@I2CADD = common dso_local global i32 0, align 4
@RXTX_EN = common dso_local global i32 0, align 4
@I2CMODE_MT = common dso_local global i32 0, align 4
@I2CMODE_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @i2c_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.i2c_softc* @device_get_softc(i32 %6)
  store %struct.i2c_softc* %7, %struct.i2c_softc** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.i2c_softc*, %struct.i2c_softc** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %9, i32 0, i32 5
  store i32 %8, i32* %10, align 8
  %11 = load %struct.i2c_softc*, %struct.i2c_softc** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @device_get_nameunit(i32 %13)
  %15 = load i32, i32* @MTX_DEF, align 4
  %16 = call i32 @mtx_init(i32* %12, i32 %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @i2c_spec, align 4
  %19 = load %struct.i2c_softc*, %struct.i2c_softc** %4, align 8
  %20 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = call i64 @bus_alloc_resources(i32 %17, i32 %18, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @device_printf(i32 %25, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @ENXIO, align 4
  store i32 %27, i32* %2, align 4
  br label %79

28:                                               ; preds = %1
  %29 = load %struct.i2c_softc*, %struct.i2c_softc** %4, align 8
  %30 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @rman_get_bustag(i32 %33)
  %35 = load %struct.i2c_softc*, %struct.i2c_softc** %4, align 8
  %36 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 4
  %37 = load %struct.i2c_softc*, %struct.i2c_softc** %4, align 8
  %38 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @rman_get_bushandle(i32 %41)
  %43 = load %struct.i2c_softc*, %struct.i2c_softc** %4, align 8
  %44 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* %3, align 4
  %46 = call i32* @device_add_child(i32 %45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 -1)
  %47 = load %struct.i2c_softc*, %struct.i2c_softc** %4, align 8
  %48 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %47, i32 0, i32 1
  store i32* %46, i32** %48, align 8
  %49 = load %struct.i2c_softc*, %struct.i2c_softc** %4, align 8
  %50 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %60

53:                                               ; preds = %28
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @device_printf(i32 %54, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %56 = load %struct.i2c_softc*, %struct.i2c_softc** %4, align 8
  %57 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %56, i32 0, i32 0
  %58 = call i32 @mtx_destroy(i32* %57)
  %59 = load i32, i32* @ENXIO, align 4
  store i32 %59, i32* %2, align 4
  br label %79

60:                                               ; preds = %28
  %61 = load %struct.i2c_softc*, %struct.i2c_softc** %4, align 8
  %62 = load i32, i32* @I2CSTAT, align 4
  %63 = call i32 @WRITE1(%struct.i2c_softc* %61, i32 %62, i32 0)
  %64 = load %struct.i2c_softc*, %struct.i2c_softc** %4, align 8
  %65 = load i32, i32* @I2CADD, align 4
  %66 = call i32 @WRITE1(%struct.i2c_softc* %64, i32 %65, i32 0)
  %67 = load i32, i32* @RXTX_EN, align 4
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* @I2CMODE_MT, align 4
  %69 = load i32, i32* @I2CMODE_S, align 4
  %70 = shl i32 %68, %69
  %71 = load i32, i32* %5, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %5, align 4
  %73 = load %struct.i2c_softc*, %struct.i2c_softc** %4, align 8
  %74 = load i32, i32* @I2CSTAT, align 4
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @WRITE1(%struct.i2c_softc* %73, i32 %74, i32 %75)
  %77 = load i32, i32* %3, align 4
  %78 = call i32 @bus_generic_attach(i32 %77)
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %60, %53, %24
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local %struct.i2c_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_init(i32*, i32, i8*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @rman_get_bustag(i32) #1

declare dso_local i32 @rman_get_bushandle(i32) #1

declare dso_local i32* @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @WRITE1(%struct.i2c_softc*, i32, i32) #1

declare dso_local i32 @bus_generic_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
