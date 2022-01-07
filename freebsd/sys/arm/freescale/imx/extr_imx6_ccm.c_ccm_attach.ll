; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_ccm.c_ccm_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_ccm.c_ccm_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccm_softc = type { i32* }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Cannot allocate memory resources\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@ccm_sc = common dso_local global %struct.ccm_softc* null, align 8
@CCM_CGPR = common dso_local global i32 0, align 4
@CCM_CGPR_INT_MEM_CLK_LPM = common dso_local global i32 0, align 4
@CCM_CLPCR = common dso_local global i32 0, align 4
@CCM_CLPCR_LPM_MASK = common dso_local global i32 0, align 4
@CCM_CLPCR_LPM_RUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ccm_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccm_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ccm_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call %struct.ccm_softc* @device_get_softc(i32 %7)
  store %struct.ccm_softc* %8, %struct.ccm_softc** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @SYS_RES_MEMORY, align 4
  %11 = load i32, i32* @RF_ACTIVE, align 4
  %12 = call i32* @bus_alloc_resource_any(i32 %9, i32 %10, i32* %5, i32 %11)
  %13 = load %struct.ccm_softc*, %struct.ccm_softc** %3, align 8
  %14 = getelementptr inbounds %struct.ccm_softc, %struct.ccm_softc* %13, i32 0, i32 0
  store i32* %12, i32** %14, align 8
  %15 = load %struct.ccm_softc*, %struct.ccm_softc** %3, align 8
  %16 = getelementptr inbounds %struct.ccm_softc, %struct.ccm_softc* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @device_printf(i32 %20, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENXIO, align 4
  store i32 %22, i32* %4, align 4
  br label %50

23:                                               ; preds = %1
  %24 = load %struct.ccm_softc*, %struct.ccm_softc** %3, align 8
  store %struct.ccm_softc* %24, %struct.ccm_softc** @ccm_sc, align 8
  %25 = load %struct.ccm_softc*, %struct.ccm_softc** %3, align 8
  %26 = load i32, i32* @CCM_CGPR, align 4
  %27 = call i32 @RD4(%struct.ccm_softc* %25, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* @CCM_CGPR_INT_MEM_CLK_LPM, align 4
  %29 = load i32, i32* %6, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %6, align 4
  %31 = load %struct.ccm_softc*, %struct.ccm_softc** %3, align 8
  %32 = load i32, i32* @CCM_CGPR, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @WR4(%struct.ccm_softc* %31, i32 %32, i32 %33)
  %35 = load %struct.ccm_softc*, %struct.ccm_softc** %3, align 8
  %36 = load i32, i32* @CCM_CLPCR, align 4
  %37 = call i32 @RD4(%struct.ccm_softc* %35, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @CCM_CLPCR_LPM_MASK, align 4
  %40 = xor i32 %39, -1
  %41 = and i32 %38, %40
  %42 = load i32, i32* @CCM_CLPCR_LPM_RUN, align 4
  %43 = or i32 %41, %42
  store i32 %43, i32* %6, align 4
  %44 = load %struct.ccm_softc*, %struct.ccm_softc** %3, align 8
  %45 = load i32, i32* @CCM_CLPCR, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @WR4(%struct.ccm_softc* %44, i32 %45, i32 %46)
  %48 = load %struct.ccm_softc*, %struct.ccm_softc** %3, align 8
  %49 = call i32 @ccm_init_gates(%struct.ccm_softc* %48)
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %23, %19
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, i32* %2, align 4
  %55 = call i32 @ccm_detach(i32 %54)
  br label %56

56:                                               ; preds = %53, %50
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local %struct.ccm_softc* @device_get_softc(i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @RD4(%struct.ccm_softc*, i32) #1

declare dso_local i32 @WR4(%struct.ccm_softc*, i32, i32) #1

declare dso_local i32 @ccm_init_gates(%struct.ccm_softc*) #1

declare dso_local i32 @ccm_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
