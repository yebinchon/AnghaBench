; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_ccm.c_ccm_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_ccm.c_ccm_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccm_softc = type { i32, i32*, i32, i32 }

@ccm_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"could not allocate resources\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@CCM_CCR = common dso_local global i32 0, align 4
@FIRC_EN = common dso_local global i32 0, align 4
@FXOSC_EN = common dso_local global i32 0, align 4
@CCM_CSR = common dso_local global i32 0, align 4
@FXOSC_RDY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"On board oscillator is ready.\0A\00", align 1
@CCM_CCGRN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ccm_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccm_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ccm_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.ccm_softc* @device_get_softc(i32 %7)
  store %struct.ccm_softc* %8, %struct.ccm_softc** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.ccm_softc*, %struct.ccm_softc** %4, align 8
  %11 = getelementptr inbounds %struct.ccm_softc, %struct.ccm_softc* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @ccm_spec, align 4
  %14 = load %struct.ccm_softc*, %struct.ccm_softc** %4, align 8
  %15 = getelementptr inbounds %struct.ccm_softc, %struct.ccm_softc* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = call i64 @bus_alloc_resources(i32 %12, i32 %13, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @device_printf(i32 %20, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENXIO, align 4
  store i32 %22, i32* %2, align 4
  br label %88

23:                                               ; preds = %1
  %24 = load %struct.ccm_softc*, %struct.ccm_softc** %4, align 8
  %25 = getelementptr inbounds %struct.ccm_softc, %struct.ccm_softc* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @rman_get_bustag(i32 %28)
  %30 = load %struct.ccm_softc*, %struct.ccm_softc** %4, align 8
  %31 = getelementptr inbounds %struct.ccm_softc, %struct.ccm_softc* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load %struct.ccm_softc*, %struct.ccm_softc** %4, align 8
  %33 = getelementptr inbounds %struct.ccm_softc, %struct.ccm_softc* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @rman_get_bushandle(i32 %36)
  %38 = load %struct.ccm_softc*, %struct.ccm_softc** %4, align 8
  %39 = getelementptr inbounds %struct.ccm_softc, %struct.ccm_softc* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load %struct.ccm_softc*, %struct.ccm_softc** %4, align 8
  %41 = load i32, i32* @CCM_CCR, align 4
  %42 = call i32 @READ4(%struct.ccm_softc* %40, i32 %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* @FIRC_EN, align 4
  %44 = load i32, i32* @FXOSC_EN, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* %5, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %5, align 4
  %48 = load %struct.ccm_softc*, %struct.ccm_softc** %4, align 8
  %49 = load i32, i32* @CCM_CCR, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @WRITE4(%struct.ccm_softc* %48, i32 %49, i32 %50)
  store i32 0, i32* %6, align 4
  br label %52

52:                                               ; preds = %69, %23
  %53 = load i32, i32* %6, align 4
  %54 = icmp slt i32 %53, 10
  br i1 %54, label %55, label %72

55:                                               ; preds = %52
  %56 = load %struct.ccm_softc*, %struct.ccm_softc** %4, align 8
  %57 = load i32, i32* @CCM_CSR, align 4
  %58 = call i32 @READ4(%struct.ccm_softc* %56, i32 %57)
  %59 = load i32, i32* @FXOSC_RDY, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %55
  %63 = load %struct.ccm_softc*, %struct.ccm_softc** %4, align 8
  %64 = getelementptr inbounds %struct.ccm_softc, %struct.ccm_softc* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @device_printf(i32 %65, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %72

67:                                               ; preds = %55
  %68 = call i32 (...) @cpufunc_nullop()
  br label %69

69:                                               ; preds = %67
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %6, align 4
  br label %52

72:                                               ; preds = %62, %52
  store i32 0, i32* %6, align 4
  br label %73

73:                                               ; preds = %82, %72
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @CCM_CCGRN, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %85

77:                                               ; preds = %73
  %78 = load %struct.ccm_softc*, %struct.ccm_softc** %4, align 8
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @CCM_CCGR(i32 %79)
  %81 = call i32 @WRITE4(%struct.ccm_softc* %78, i32 %80, i32 -1)
  br label %82

82:                                               ; preds = %77
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %6, align 4
  br label %73

85:                                               ; preds = %73
  %86 = load %struct.ccm_softc*, %struct.ccm_softc** %4, align 8
  %87 = call i32 @ccm_fdt_set(%struct.ccm_softc* %86)
  store i32 0, i32* %2, align 4
  br label %88

88:                                               ; preds = %85, %19
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local %struct.ccm_softc* @device_get_softc(i32) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @rman_get_bustag(i32) #1

declare dso_local i32 @rman_get_bushandle(i32) #1

declare dso_local i32 @READ4(%struct.ccm_softc*, i32) #1

declare dso_local i32 @WRITE4(%struct.ccm_softc*, i32, i32) #1

declare dso_local i32 @cpufunc_nullop(...) #1

declare dso_local i32 @CCM_CCGR(i32) #1

declare dso_local i32 @ccm_fdt_set(%struct.ccm_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
