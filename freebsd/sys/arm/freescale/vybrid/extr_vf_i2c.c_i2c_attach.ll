; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_i2c.c_i2c_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_i2c.c_i2c_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_softc = type { i32, i32*, i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"I2C\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@i2c_spec = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"could not allocate resources\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@I2C_IBIC = common dso_local global i32 0, align 4
@IBIC_BIIE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"iicbus\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"could not add iicbus child\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @i2c_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_softc*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.i2c_softc* @device_get_softc(i32 %5)
  store %struct.i2c_softc* %6, %struct.i2c_softc** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.i2c_softc*, %struct.i2c_softc** %4, align 8
  %9 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %8, i32 0, i32 5
  store i32 %7, i32* %9, align 8
  %10 = load %struct.i2c_softc*, %struct.i2c_softc** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @device_get_nameunit(i32 %12)
  %14 = load i32, i32* @MTX_DEF, align 4
  %15 = call i32 @mtx_init(i32* %11, i32 %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @i2c_spec, align 4
  %18 = load %struct.i2c_softc*, %struct.i2c_softc** %4, align 8
  %19 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = call i64 @bus_alloc_resources(i32 %16, i32 %17, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @device_printf(i32 %24, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* @ENXIO, align 4
  store i32 %26, i32* %2, align 4
  br label %66

27:                                               ; preds = %1
  %28 = load %struct.i2c_softc*, %struct.i2c_softc** %4, align 8
  %29 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @rman_get_bustag(i32 %32)
  %34 = load %struct.i2c_softc*, %struct.i2c_softc** %4, align 8
  %35 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 4
  %36 = load %struct.i2c_softc*, %struct.i2c_softc** %4, align 8
  %37 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @rman_get_bushandle(i32 %40)
  %42 = load %struct.i2c_softc*, %struct.i2c_softc** %4, align 8
  %43 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 8
  %44 = load %struct.i2c_softc*, %struct.i2c_softc** %4, align 8
  %45 = load i32, i32* @I2C_IBIC, align 4
  %46 = load i32, i32* @IBIC_BIIE, align 4
  %47 = call i32 @WRITE1(%struct.i2c_softc* %44, i32 %45, i32 %46)
  %48 = load i32, i32* %3, align 4
  %49 = call i32* @device_add_child(i32 %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 -1)
  %50 = load %struct.i2c_softc*, %struct.i2c_softc** %4, align 8
  %51 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %50, i32 0, i32 1
  store i32* %49, i32** %51, align 8
  %52 = load %struct.i2c_softc*, %struct.i2c_softc** %4, align 8
  %53 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %63

56:                                               ; preds = %27
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @device_printf(i32 %57, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %59 = load %struct.i2c_softc*, %struct.i2c_softc** %4, align 8
  %60 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %59, i32 0, i32 0
  %61 = call i32 @mtx_destroy(i32* %60)
  %62 = load i32, i32* @ENXIO, align 4
  store i32 %62, i32* %2, align 4
  br label %66

63:                                               ; preds = %27
  %64 = load i32, i32* %3, align 4
  %65 = call i32 @bus_generic_attach(i32 %64)
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %63, %56, %23
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local %struct.i2c_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_init(i32*, i32, i8*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @rman_get_bustag(i32) #1

declare dso_local i32 @rman_get_bushandle(i32) #1

declare dso_local i32 @WRITE1(%struct.i2c_softc*, i32, i32) #1

declare dso_local i32* @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @bus_generic_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
