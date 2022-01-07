; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_anadig.c_anadig_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_anadig.c_anadig_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anadig_softc = type { i32*, i32, i32 }

@anadig_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"could not allocate resources\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@anadig_sc = common dso_local global %struct.anadig_softc* null, align 8
@ANADIG_PLL3_CTRL = common dso_local global i32 0, align 4
@ANADIG_PLL7_CTRL = common dso_local global i32 0, align 4
@ANADIG_PLL1_CTRL = common dso_local global i32 0, align 4
@ANADIG_PLL2_CTRL = common dso_local global i32 0, align 4
@ANADIG_PLL4_CTRL = common dso_local global i32 0, align 4
@ANADIG_PLL5_CTRL = common dso_local global i32 0, align 4
@ANADIG_PLL6_CTRL = common dso_local global i32 0, align 4
@ANADIG_REG_3P0 = common dso_local global i32 0, align 4
@ENABLE_LINREG = common dso_local global i32 0, align 4
@EN_CLK_TO_UTMI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @anadig_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @anadig_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.anadig_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.anadig_softc* @device_get_softc(i32 %6)
  store %struct.anadig_softc* %7, %struct.anadig_softc** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @anadig_spec, align 4
  %10 = load %struct.anadig_softc*, %struct.anadig_softc** %4, align 8
  %11 = getelementptr inbounds %struct.anadig_softc, %struct.anadig_softc* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = call i64 @bus_alloc_resources(i32 %8, i32 %9, i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @device_printf(i32 %16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ENXIO, align 4
  store i32 %18, i32* %2, align 4
  br label %88

19:                                               ; preds = %1
  %20 = load %struct.anadig_softc*, %struct.anadig_softc** %4, align 8
  %21 = getelementptr inbounds %struct.anadig_softc, %struct.anadig_softc* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @rman_get_bustag(i32 %24)
  %26 = load %struct.anadig_softc*, %struct.anadig_softc** %4, align 8
  %27 = getelementptr inbounds %struct.anadig_softc, %struct.anadig_softc* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load %struct.anadig_softc*, %struct.anadig_softc** %4, align 8
  %29 = getelementptr inbounds %struct.anadig_softc, %struct.anadig_softc* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @rman_get_bushandle(i32 %32)
  %34 = load %struct.anadig_softc*, %struct.anadig_softc** %4, align 8
  %35 = getelementptr inbounds %struct.anadig_softc, %struct.anadig_softc* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  %36 = load %struct.anadig_softc*, %struct.anadig_softc** %4, align 8
  store %struct.anadig_softc* %36, %struct.anadig_softc** @anadig_sc, align 8
  %37 = load %struct.anadig_softc*, %struct.anadig_softc** %4, align 8
  %38 = load i32, i32* @ANADIG_PLL3_CTRL, align 4
  %39 = call i32 @enable_pll(%struct.anadig_softc* %37, i32 %38)
  %40 = load %struct.anadig_softc*, %struct.anadig_softc** %4, align 8
  %41 = load i32, i32* @ANADIG_PLL7_CTRL, align 4
  %42 = call i32 @enable_pll(%struct.anadig_softc* %40, i32 %41)
  %43 = load %struct.anadig_softc*, %struct.anadig_softc** %4, align 8
  %44 = load i32, i32* @ANADIG_PLL1_CTRL, align 4
  %45 = call i32 @enable_pll(%struct.anadig_softc* %43, i32 %44)
  %46 = load %struct.anadig_softc*, %struct.anadig_softc** %4, align 8
  %47 = load i32, i32* @ANADIG_PLL2_CTRL, align 4
  %48 = call i32 @enable_pll(%struct.anadig_softc* %46, i32 %47)
  %49 = load %struct.anadig_softc*, %struct.anadig_softc** %4, align 8
  %50 = load i32, i32* @ANADIG_PLL4_CTRL, align 4
  %51 = call i32 @enable_pll(%struct.anadig_softc* %49, i32 %50)
  %52 = load %struct.anadig_softc*, %struct.anadig_softc** %4, align 8
  %53 = load i32, i32* @ANADIG_PLL5_CTRL, align 4
  %54 = call i32 @enable_pll(%struct.anadig_softc* %52, i32 %53)
  %55 = load %struct.anadig_softc*, %struct.anadig_softc** %4, align 8
  %56 = load i32, i32* @ANADIG_PLL6_CTRL, align 4
  %57 = call i32 @enable_pll(%struct.anadig_softc* %55, i32 %56)
  %58 = load %struct.anadig_softc*, %struct.anadig_softc** %4, align 8
  %59 = load i32, i32* @ANADIG_REG_3P0, align 4
  %60 = call i32 @READ4(%struct.anadig_softc* %58, i32 %59)
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* @ENABLE_LINREG, align 4
  %62 = load i32, i32* %5, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %5, align 4
  %64 = load %struct.anadig_softc*, %struct.anadig_softc** %4, align 8
  %65 = load i32, i32* @ANADIG_REG_3P0, align 4
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @WRITE4(%struct.anadig_softc* %64, i32 %65, i32 %66)
  %68 = load %struct.anadig_softc*, %struct.anadig_softc** %4, align 8
  %69 = call i32 @USB_MISC(i32 0)
  %70 = call i32 @READ4(%struct.anadig_softc* %68, i32 %69)
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* @EN_CLK_TO_UTMI, align 4
  %72 = load i32, i32* %5, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %5, align 4
  %74 = load %struct.anadig_softc*, %struct.anadig_softc** %4, align 8
  %75 = call i32 @USB_MISC(i32 0)
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @WRITE4(%struct.anadig_softc* %74, i32 %75, i32 %76)
  %78 = load %struct.anadig_softc*, %struct.anadig_softc** %4, align 8
  %79 = call i32 @USB_MISC(i32 1)
  %80 = call i32 @READ4(%struct.anadig_softc* %78, i32 %79)
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* @EN_CLK_TO_UTMI, align 4
  %82 = load i32, i32* %5, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %5, align 4
  %84 = load %struct.anadig_softc*, %struct.anadig_softc** %4, align 8
  %85 = call i32 @USB_MISC(i32 1)
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @WRITE4(%struct.anadig_softc* %84, i32 %85, i32 %86)
  store i32 0, i32* %2, align 4
  br label %88

88:                                               ; preds = %19, %15
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local %struct.anadig_softc* @device_get_softc(i32) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @rman_get_bustag(i32) #1

declare dso_local i32 @rman_get_bushandle(i32) #1

declare dso_local i32 @enable_pll(%struct.anadig_softc*, i32) #1

declare dso_local i32 @READ4(%struct.anadig_softc*, i32) #1

declare dso_local i32 @WRITE4(%struct.anadig_softc*, i32, i32) #1

declare dso_local i32 @USB_MISC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
