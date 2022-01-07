; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2836.c_bcm_lintc_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2836.c_bcm_lintc_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_lintc_softc = type { i32*, i32, i32, i32 }

@bcm_lintc_sc = common dso_local global %struct.bcm_lintc_softc* null, align 8
@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"could not allocate memory resource\0A\00", align 1
@BCM_LINTC_CONTROL_REG = common dso_local global i32 0, align 4
@BCM_LINTC_PRESCALER_REG = common dso_local global i32 0, align 4
@BCM_LINTC_PSR_19_2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"could not attach PIC\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @bcm_lintc_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_lintc_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.bcm_lintc_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.bcm_lintc_softc* @device_get_softc(i32 %7)
  store %struct.bcm_lintc_softc* %8, %struct.bcm_lintc_softc** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.bcm_lintc_softc*, %struct.bcm_lintc_softc** %4, align 8
  %11 = getelementptr inbounds %struct.bcm_lintc_softc, %struct.bcm_lintc_softc* %10, i32 0, i32 3
  store i32 %9, i32* %11, align 8
  %12 = load %struct.bcm_lintc_softc*, %struct.bcm_lintc_softc** @bcm_lintc_sc, align 8
  %13 = icmp ne %struct.bcm_lintc_softc* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @ENXIO, align 4
  store i32 %15, i32* %2, align 4
  br label %74

16:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @SYS_RES_MEMORY, align 4
  %19 = load i32, i32* @RF_ACTIVE, align 4
  %20 = call i32* @bus_alloc_resource_any(i32 %17, i32 %18, i32* %6, i32 %19)
  %21 = load %struct.bcm_lintc_softc*, %struct.bcm_lintc_softc** %4, align 8
  %22 = getelementptr inbounds %struct.bcm_lintc_softc, %struct.bcm_lintc_softc* %21, i32 0, i32 0
  store i32* %20, i32** %22, align 8
  %23 = load %struct.bcm_lintc_softc*, %struct.bcm_lintc_softc** %4, align 8
  %24 = getelementptr inbounds %struct.bcm_lintc_softc, %struct.bcm_lintc_softc* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %16
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @device_printf(i32 %28, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @ENXIO, align 4
  store i32 %30, i32* %2, align 4
  br label %74

31:                                               ; preds = %16
  %32 = load %struct.bcm_lintc_softc*, %struct.bcm_lintc_softc** %4, align 8
  %33 = getelementptr inbounds %struct.bcm_lintc_softc, %struct.bcm_lintc_softc* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @rman_get_bustag(i32* %34)
  %36 = load %struct.bcm_lintc_softc*, %struct.bcm_lintc_softc** %4, align 8
  %37 = getelementptr inbounds %struct.bcm_lintc_softc, %struct.bcm_lintc_softc* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load %struct.bcm_lintc_softc*, %struct.bcm_lintc_softc** %4, align 8
  %39 = getelementptr inbounds %struct.bcm_lintc_softc, %struct.bcm_lintc_softc* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @rman_get_bushandle(i32* %40)
  %42 = load %struct.bcm_lintc_softc*, %struct.bcm_lintc_softc** %4, align 8
  %43 = getelementptr inbounds %struct.bcm_lintc_softc, %struct.bcm_lintc_softc* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 8
  %44 = load %struct.bcm_lintc_softc*, %struct.bcm_lintc_softc** %4, align 8
  %45 = load i32, i32* @BCM_LINTC_CONTROL_REG, align 4
  %46 = call i32 @bcm_lintc_write_4(%struct.bcm_lintc_softc* %44, i32 %45, i32 0)
  %47 = load %struct.bcm_lintc_softc*, %struct.bcm_lintc_softc** %4, align 8
  %48 = load i32, i32* @BCM_LINTC_PRESCALER_REG, align 4
  %49 = load i32, i32* @BCM_LINTC_PSR_19_2, align 4
  %50 = call i32 @bcm_lintc_write_4(%struct.bcm_lintc_softc* %47, i32 %48, i32 %49)
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %59, %31
  %52 = load i32, i32* %5, align 4
  %53 = icmp slt i32 %52, 4
  br i1 %53, label %54, label %62

54:                                               ; preds = %51
  %55 = load %struct.bcm_lintc_softc*, %struct.bcm_lintc_softc** %4, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @BCM_LINTC_TIMER_CFG_REG(i32 %56)
  %58 = call i32 @bcm_lintc_write_4(%struct.bcm_lintc_softc* %55, i32 %57, i32 0)
  br label %59

59:                                               ; preds = %54
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %5, align 4
  br label %51

62:                                               ; preds = %51
  %63 = load %struct.bcm_lintc_softc*, %struct.bcm_lintc_softc** %4, align 8
  %64 = call i64 @bcm_lintc_pic_attach(%struct.bcm_lintc_softc* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @device_printf(i32 %67, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %69 = load i32, i32* @ENXIO, align 4
  store i32 %69, i32* %2, align 4
  br label %74

70:                                               ; preds = %62
  %71 = load %struct.bcm_lintc_softc*, %struct.bcm_lintc_softc** %4, align 8
  %72 = call i32 @BCM_LINTC_LOCK_INIT(%struct.bcm_lintc_softc* %71)
  %73 = load %struct.bcm_lintc_softc*, %struct.bcm_lintc_softc** %4, align 8
  store %struct.bcm_lintc_softc* %73, %struct.bcm_lintc_softc** @bcm_lintc_sc, align 8
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %70, %66, %27, %14
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local %struct.bcm_lintc_softc* @device_get_softc(i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @rman_get_bustag(i32*) #1

declare dso_local i32 @rman_get_bushandle(i32*) #1

declare dso_local i32 @bcm_lintc_write_4(%struct.bcm_lintc_softc*, i32, i32) #1

declare dso_local i32 @BCM_LINTC_TIMER_CFG_REG(i32) #1

declare dso_local i64 @bcm_lintc_pic_attach(%struct.bcm_lintc_softc*) #1

declare dso_local i32 @BCM_LINTC_LOCK_INIT(%struct.bcm_lintc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
