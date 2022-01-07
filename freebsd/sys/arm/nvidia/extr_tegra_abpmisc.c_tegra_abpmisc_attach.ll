; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_abpmisc.c_tegra_abpmisc_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_abpmisc.c_tegra_abpmisc_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_abpmisc_softc = type { i32*, i32*, i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Cannot map ABP misc registers.\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Cannot map strapping options registers.\0A\00", align 1
@dev_sc = common dso_local global %struct.tegra_abpmisc_softc* null, align 8
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @tegra_abpmisc_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_abpmisc_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.tegra_abpmisc_softc*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.tegra_abpmisc_softc* @device_get_softc(i32 %6)
  store %struct.tegra_abpmisc_softc* %7, %struct.tegra_abpmisc_softc** %5, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.tegra_abpmisc_softc*, %struct.tegra_abpmisc_softc** %5, align 8
  %10 = getelementptr inbounds %struct.tegra_abpmisc_softc, %struct.tegra_abpmisc_softc* %9, i32 0, i32 2
  store i32 %8, i32* %10, align 8
  store i32 0, i32* %4, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @SYS_RES_MEMORY, align 4
  %13 = load i32, i32* @RF_ACTIVE, align 4
  %14 = load i32, i32* @RF_SHAREABLE, align 4
  %15 = or i32 %13, %14
  %16 = call i8* @bus_alloc_resource_any(i32 %11, i32 %12, i32* %4, i32 %15)
  %17 = bitcast i8* %16 to i32*
  %18 = load %struct.tegra_abpmisc_softc*, %struct.tegra_abpmisc_softc** %5, align 8
  %19 = getelementptr inbounds %struct.tegra_abpmisc_softc, %struct.tegra_abpmisc_softc* %18, i32 0, i32 1
  store i32* %17, i32** %19, align 8
  %20 = load %struct.tegra_abpmisc_softc*, %struct.tegra_abpmisc_softc** %5, align 8
  %21 = getelementptr inbounds %struct.tegra_abpmisc_softc, %struct.tegra_abpmisc_softc* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @device_printf(i32 %25, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %62

27:                                               ; preds = %1
  store i32 1, i32* %4, align 4
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @SYS_RES_MEMORY, align 4
  %30 = load i32, i32* @RF_ACTIVE, align 4
  %31 = call i8* @bus_alloc_resource_any(i32 %28, i32 %29, i32* %4, i32 %30)
  %32 = bitcast i8* %31 to i32*
  %33 = load %struct.tegra_abpmisc_softc*, %struct.tegra_abpmisc_softc** %5, align 8
  %34 = getelementptr inbounds %struct.tegra_abpmisc_softc, %struct.tegra_abpmisc_softc* %33, i32 0, i32 0
  store i32* %32, i32** %34, align 8
  %35 = load %struct.tegra_abpmisc_softc*, %struct.tegra_abpmisc_softc** %5, align 8
  %36 = getelementptr inbounds %struct.tegra_abpmisc_softc, %struct.tegra_abpmisc_softc* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %27
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @device_printf(i32 %40, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %62

42:                                               ; preds = %27
  %43 = load %struct.tegra_abpmisc_softc*, %struct.tegra_abpmisc_softc** %5, align 8
  %44 = call i32 @tegra_abpmisc_read_revision(%struct.tegra_abpmisc_softc* %43)
  %45 = load %struct.tegra_abpmisc_softc*, %struct.tegra_abpmisc_softc** %5, align 8
  %46 = getelementptr inbounds %struct.tegra_abpmisc_softc, %struct.tegra_abpmisc_softc* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %58

49:                                               ; preds = %42
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* @SYS_RES_MEMORY, align 4
  %52 = load %struct.tegra_abpmisc_softc*, %struct.tegra_abpmisc_softc** %5, align 8
  %53 = getelementptr inbounds %struct.tegra_abpmisc_softc, %struct.tegra_abpmisc_softc* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @bus_release_resource(i32 %50, i32 %51, i32 0, i32* %54)
  %56 = load %struct.tegra_abpmisc_softc*, %struct.tegra_abpmisc_softc** %5, align 8
  %57 = getelementptr inbounds %struct.tegra_abpmisc_softc, %struct.tegra_abpmisc_softc* %56, i32 0, i32 1
  store i32* null, i32** %57, align 8
  br label %58

58:                                               ; preds = %49, %42
  %59 = load %struct.tegra_abpmisc_softc*, %struct.tegra_abpmisc_softc** %5, align 8
  store %struct.tegra_abpmisc_softc* %59, %struct.tegra_abpmisc_softc** @dev_sc, align 8
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @bus_generic_attach(i32 %60)
  store i32 %61, i32* %2, align 4
  br label %88

62:                                               ; preds = %39, %24
  %63 = load %struct.tegra_abpmisc_softc*, %struct.tegra_abpmisc_softc** %5, align 8
  %64 = getelementptr inbounds %struct.tegra_abpmisc_softc, %struct.tegra_abpmisc_softc* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %74

67:                                               ; preds = %62
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* @SYS_RES_MEMORY, align 4
  %70 = load %struct.tegra_abpmisc_softc*, %struct.tegra_abpmisc_softc** %5, align 8
  %71 = getelementptr inbounds %struct.tegra_abpmisc_softc, %struct.tegra_abpmisc_softc* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @bus_release_resource(i32 %68, i32 %69, i32 0, i32* %72)
  br label %74

74:                                               ; preds = %67, %62
  %75 = load %struct.tegra_abpmisc_softc*, %struct.tegra_abpmisc_softc** %5, align 8
  %76 = getelementptr inbounds %struct.tegra_abpmisc_softc, %struct.tegra_abpmisc_softc* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %86

79:                                               ; preds = %74
  %80 = load i32, i32* %3, align 4
  %81 = load i32, i32* @SYS_RES_MEMORY, align 4
  %82 = load %struct.tegra_abpmisc_softc*, %struct.tegra_abpmisc_softc** %5, align 8
  %83 = getelementptr inbounds %struct.tegra_abpmisc_softc, %struct.tegra_abpmisc_softc* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @bus_release_resource(i32 %80, i32 %81, i32 1, i32* %84)
  br label %86

86:                                               ; preds = %79, %74
  %87 = load i32, i32* @ENXIO, align 4
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %86, %58
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local %struct.tegra_abpmisc_softc* @device_get_softc(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @tegra_abpmisc_read_revision(%struct.tegra_abpmisc_softc*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @bus_generic_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
