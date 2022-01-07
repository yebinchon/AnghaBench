; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_tegra_host1x.c_host1x_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_tegra_host1x.c_host1x_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host1x_softc = type { i32*, %struct.TYPE_5__*, i32, i8* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, %struct.TYPE_5__** }

@DRM_MEM_DRIVER = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Cannot map registers.\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @host1x_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @host1x_attach(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.host1x_softc*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call %struct.host1x_softc* @device_get_softc(i8* %7)
  store %struct.host1x_softc* %8, %struct.host1x_softc** %6, align 8
  %9 = load i32, i32* @DRM_MEM_DRIVER, align 4
  %10 = load i32, i32* @M_WAITOK, align 4
  %11 = load i32, i32* @M_ZERO, align 4
  %12 = or i32 %10, %11
  %13 = call %struct.TYPE_5__* @malloc(i32 4, i32 %9, i32 %12)
  %14 = load %struct.host1x_softc*, %struct.host1x_softc** %6, align 8
  %15 = getelementptr inbounds %struct.host1x_softc, %struct.host1x_softc* %14, i32 0, i32 1
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %15, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = load %struct.host1x_softc*, %struct.host1x_softc** %6, align 8
  %18 = getelementptr inbounds %struct.host1x_softc, %struct.host1x_softc* %17, i32 0, i32 3
  store i8* %16, i8** %18, align 8
  %19 = load %struct.host1x_softc*, %struct.host1x_softc** %6, align 8
  %20 = getelementptr inbounds %struct.host1x_softc, %struct.host1x_softc* %19, i32 0, i32 1
  %21 = load %struct.host1x_softc*, %struct.host1x_softc** %6, align 8
  %22 = getelementptr inbounds %struct.host1x_softc, %struct.host1x_softc* %21, i32 0, i32 1
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  store %struct.TYPE_5__** %20, %struct.TYPE_5__*** %25, align 8
  %26 = load i8*, i8** %3, align 8
  %27 = load %struct.host1x_softc*, %struct.host1x_softc** %6, align 8
  %28 = getelementptr inbounds %struct.host1x_softc, %struct.host1x_softc* %27, i32 0, i32 1
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i8* %26, i8** %31, align 8
  %32 = load %struct.host1x_softc*, %struct.host1x_softc** %6, align 8
  %33 = getelementptr inbounds %struct.host1x_softc, %struct.host1x_softc* %32, i32 0, i32 2
  %34 = call i32 @TAILQ_INIT(i32* %33)
  %35 = load %struct.host1x_softc*, %struct.host1x_softc** %6, align 8
  %36 = call i32 @LOCK_INIT(%struct.host1x_softc* %35)
  store i32 0, i32* %5, align 4
  %37 = load i8*, i8** %3, align 8
  %38 = load i32, i32* @SYS_RES_MEMORY, align 4
  %39 = load i32, i32* @RF_ACTIVE, align 4
  %40 = call i32* @bus_alloc_resource_any(i8* %37, i32 %38, i32* %5, i32 %39)
  %41 = load %struct.host1x_softc*, %struct.host1x_softc** %6, align 8
  %42 = getelementptr inbounds %struct.host1x_softc, %struct.host1x_softc* %41, i32 0, i32 0
  store i32* %40, i32** %42, align 8
  %43 = load %struct.host1x_softc*, %struct.host1x_softc** %6, align 8
  %44 = getelementptr inbounds %struct.host1x_softc, %struct.host1x_softc* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %1
  %48 = load i8*, i8** %3, align 8
  %49 = call i32 @device_printf(i8* %48, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @ENXIO, align 4
  store i32 %50, i32* %4, align 4
  br label %54

51:                                               ; preds = %1
  %52 = load i8*, i8** %3, align 8
  %53 = call i32 @bus_generic_attach(i8* %52)
  store i32 %53, i32* %2, align 4
  br label %81

54:                                               ; preds = %47
  %55 = load %struct.host1x_softc*, %struct.host1x_softc** %6, align 8
  %56 = getelementptr inbounds %struct.host1x_softc, %struct.host1x_softc* %55, i32 0, i32 1
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = icmp ne %struct.TYPE_5__* %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load %struct.host1x_softc*, %struct.host1x_softc** %6, align 8
  %61 = getelementptr inbounds %struct.host1x_softc, %struct.host1x_softc* %60, i32 0, i32 1
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = load i32, i32* @DRM_MEM_DRIVER, align 4
  %64 = call i32 @free(%struct.TYPE_5__* %62, i32 %63)
  br label %65

65:                                               ; preds = %59, %54
  %66 = load %struct.host1x_softc*, %struct.host1x_softc** %6, align 8
  %67 = getelementptr inbounds %struct.host1x_softc, %struct.host1x_softc* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %77

70:                                               ; preds = %65
  %71 = load i8*, i8** %3, align 8
  %72 = load i32, i32* @SYS_RES_MEMORY, align 4
  %73 = load %struct.host1x_softc*, %struct.host1x_softc** %6, align 8
  %74 = getelementptr inbounds %struct.host1x_softc, %struct.host1x_softc* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = call i32 @bus_release_resource(i8* %71, i32 %72, i32 0, i32* %75)
  br label %77

77:                                               ; preds = %70, %65
  %78 = load %struct.host1x_softc*, %struct.host1x_softc** %6, align 8
  %79 = call i32 @LOCK_DESTROY(%struct.host1x_softc* %78)
  %80 = load i32, i32* %4, align 4
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %77, %51
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local %struct.host1x_softc* @device_get_softc(i8*) #1

declare dso_local %struct.TYPE_5__* @malloc(i32, i32, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @LOCK_INIT(%struct.host1x_softc*) #1

declare dso_local i32* @bus_alloc_resource_any(i8*, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i8*, i8*) #1

declare dso_local i32 @bus_generic_attach(i8*) #1

declare dso_local i32 @free(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @bus_release_resource(i8*, i32, i32, i32*) #1

declare dso_local i32 @LOCK_DESTROY(%struct.host1x_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
