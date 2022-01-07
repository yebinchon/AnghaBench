; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_anatop.c_intr_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_anatop.c_intr_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx6_anatop_softc = type { i32, i32, i32, i32** }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@IRQRES = common dso_local global i64 0, align 8
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@tempmon_intr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Cannot allocate IRQ resource\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @intr_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intr_setup(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.imx6_anatop_softc*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.imx6_anatop_softc*
  store %struct.imx6_anatop_softc* %6, %struct.imx6_anatop_softc** %4, align 8
  store i32 0, i32* %3, align 4
  %7 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %4, align 8
  %8 = getelementptr inbounds %struct.imx6_anatop_softc, %struct.imx6_anatop_softc* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @SYS_RES_IRQ, align 4
  %11 = load i32, i32* @RF_ACTIVE, align 4
  %12 = call i32* @bus_alloc_resource_any(i32 %9, i32 %10, i32* %3, i32 %11)
  %13 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %4, align 8
  %14 = getelementptr inbounds %struct.imx6_anatop_softc, %struct.imx6_anatop_softc* %13, i32 0, i32 3
  %15 = load i32**, i32*** %14, align 8
  %16 = load i64, i64* @IRQRES, align 8
  %17 = getelementptr inbounds i32*, i32** %15, i64 %16
  store i32* %12, i32** %17, align 8
  %18 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %4, align 8
  %19 = getelementptr inbounds %struct.imx6_anatop_softc, %struct.imx6_anatop_softc* %18, i32 0, i32 3
  %20 = load i32**, i32*** %19, align 8
  %21 = load i64, i64* @IRQRES, align 8
  %22 = getelementptr inbounds i32*, i32** %20, i64 %21
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %43

25:                                               ; preds = %1
  %26 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %4, align 8
  %27 = getelementptr inbounds %struct.imx6_anatop_softc, %struct.imx6_anatop_softc* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %4, align 8
  %30 = getelementptr inbounds %struct.imx6_anatop_softc, %struct.imx6_anatop_softc* %29, i32 0, i32 3
  %31 = load i32**, i32*** %30, align 8
  %32 = load i64, i64* @IRQRES, align 8
  %33 = getelementptr inbounds i32*, i32** %31, i64 %32
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* @INTR_TYPE_MISC, align 4
  %36 = load i32, i32* @INTR_MPSAFE, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @tempmon_intr, align 4
  %39 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %4, align 8
  %40 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %4, align 8
  %41 = getelementptr inbounds %struct.imx6_anatop_softc, %struct.imx6_anatop_softc* %40, i32 0, i32 2
  %42 = call i32 @bus_setup_intr(i32 %28, i32* %34, i32 %37, i32 %38, i32* null, %struct.imx6_anatop_softc* %39, i32* %41)
  br label %48

43:                                               ; preds = %1
  %44 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %4, align 8
  %45 = getelementptr inbounds %struct.imx6_anatop_softc, %struct.imx6_anatop_softc* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @device_printf(i32 %46, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %48

48:                                               ; preds = %43, %25
  %49 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %4, align 8
  %50 = getelementptr inbounds %struct.imx6_anatop_softc, %struct.imx6_anatop_softc* %49, i32 0, i32 0
  %51 = call i32 @config_intrhook_disestablish(i32* %50)
  ret void
}

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32, i32*, %struct.imx6_anatop_softc*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @config_intrhook_disestablish(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
