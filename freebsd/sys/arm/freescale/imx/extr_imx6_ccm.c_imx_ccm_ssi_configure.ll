; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_ccm.c_imx_ccm_ssi_configure.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_ccm.c_imx_ccm_ssi_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccm_softc = type { i32 }

@ccm_sc = common dso_local global %struct.ccm_softc* null, align 8
@CCM_CSCMR1 = common dso_local global i32 0, align 4
@SSI_CLK_SEL_M = common dso_local global i32 0, align 4
@SSI1_CLK_SEL_S = common dso_local global i32 0, align 4
@SSI_CLK_SEL_PLL4 = common dso_local global i32 0, align 4
@SSI2_CLK_SEL_S = common dso_local global i32 0, align 4
@SSI3_CLK_SEL_S = common dso_local global i32 0, align 4
@CCM_CS1CDR = common dso_local global i32 0, align 4
@SSI_CLK_PODF_MASK = common dso_local global i32 0, align 4
@SSI1_CLK_PODF_SHIFT = common dso_local global i32 0, align 4
@SSI3_CLK_PODF_SHIFT = common dso_local global i32 0, align 4
@SSI_CLK_PRED_MASK = common dso_local global i32 0, align 4
@SSI1_CLK_PRED_SHIFT = common dso_local global i32 0, align 4
@SSI3_CLK_PRED_SHIFT = common dso_local global i32 0, align 4
@CCM_CS2CDR = common dso_local global i32 0, align 4
@SSI2_CLK_PODF_SHIFT = common dso_local global i32 0, align 4
@SSI2_CLK_PRED_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @imx_ccm_ssi_configure(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ccm_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load %struct.ccm_softc*, %struct.ccm_softc** @ccm_sc, align 8
  store %struct.ccm_softc* %5, %struct.ccm_softc** %3, align 8
  %6 = load %struct.ccm_softc*, %struct.ccm_softc** %3, align 8
  %7 = load i32, i32* @CCM_CSCMR1, align 4
  %8 = call i32 @RD4(%struct.ccm_softc* %6, i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* @SSI_CLK_SEL_M, align 4
  %10 = load i32, i32* @SSI1_CLK_SEL_S, align 4
  %11 = shl i32 %9, %10
  %12 = xor i32 %11, -1
  %13 = load i32, i32* %4, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* @SSI_CLK_SEL_PLL4, align 4
  %16 = load i32, i32* @SSI1_CLK_SEL_S, align 4
  %17 = shl i32 %15, %16
  %18 = load i32, i32* %4, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* @SSI_CLK_SEL_M, align 4
  %21 = load i32, i32* @SSI2_CLK_SEL_S, align 4
  %22 = shl i32 %20, %21
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %4, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* @SSI_CLK_SEL_PLL4, align 4
  %27 = load i32, i32* @SSI2_CLK_SEL_S, align 4
  %28 = shl i32 %26, %27
  %29 = load i32, i32* %4, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* @SSI_CLK_SEL_M, align 4
  %32 = load i32, i32* @SSI3_CLK_SEL_S, align 4
  %33 = shl i32 %31, %32
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %4, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* @SSI_CLK_SEL_PLL4, align 4
  %38 = load i32, i32* @SSI3_CLK_SEL_S, align 4
  %39 = shl i32 %37, %38
  %40 = load i32, i32* %4, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %4, align 4
  %42 = load %struct.ccm_softc*, %struct.ccm_softc** %3, align 8
  %43 = load i32, i32* @CCM_CSCMR1, align 4
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @WR4(%struct.ccm_softc* %42, i32 %43, i32 %44)
  %46 = load %struct.ccm_softc*, %struct.ccm_softc** %3, align 8
  %47 = load i32, i32* @CCM_CS1CDR, align 4
  %48 = call i32 @RD4(%struct.ccm_softc* %46, i32 %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* @SSI_CLK_PODF_MASK, align 4
  %50 = load i32, i32* @SSI1_CLK_PODF_SHIFT, align 4
  %51 = shl i32 %49, %50
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %4, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* @SSI_CLK_PODF_MASK, align 4
  %56 = load i32, i32* @SSI3_CLK_PODF_SHIFT, align 4
  %57 = shl i32 %55, %56
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %4, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* @SSI1_CLK_PODF_SHIFT, align 4
  %62 = shl i32 1, %61
  %63 = load i32, i32* %4, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* @SSI3_CLK_PODF_SHIFT, align 4
  %66 = shl i32 1, %65
  %67 = load i32, i32* %4, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* @SSI_CLK_PRED_MASK, align 4
  %70 = load i32, i32* @SSI1_CLK_PRED_SHIFT, align 4
  %71 = shl i32 %69, %70
  %72 = xor i32 %71, -1
  %73 = load i32, i32* %4, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* @SSI_CLK_PRED_MASK, align 4
  %76 = load i32, i32* @SSI3_CLK_PRED_SHIFT, align 4
  %77 = shl i32 %75, %76
  %78 = xor i32 %77, -1
  %79 = load i32, i32* %4, align 4
  %80 = and i32 %79, %78
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* @SSI1_CLK_PRED_SHIFT, align 4
  %82 = shl i32 3, %81
  %83 = load i32, i32* %4, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %4, align 4
  %85 = load i32, i32* @SSI3_CLK_PRED_SHIFT, align 4
  %86 = shl i32 3, %85
  %87 = load i32, i32* %4, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %4, align 4
  %89 = load %struct.ccm_softc*, %struct.ccm_softc** %3, align 8
  %90 = load i32, i32* @CCM_CS1CDR, align 4
  %91 = load i32, i32* %4, align 4
  %92 = call i32 @WR4(%struct.ccm_softc* %89, i32 %90, i32 %91)
  %93 = load %struct.ccm_softc*, %struct.ccm_softc** %3, align 8
  %94 = load i32, i32* @CCM_CS2CDR, align 4
  %95 = call i32 @RD4(%struct.ccm_softc* %93, i32 %94)
  store i32 %95, i32* %4, align 4
  %96 = load i32, i32* @SSI_CLK_PODF_MASK, align 4
  %97 = load i32, i32* @SSI2_CLK_PODF_SHIFT, align 4
  %98 = shl i32 %96, %97
  %99 = xor i32 %98, -1
  %100 = load i32, i32* %4, align 4
  %101 = and i32 %100, %99
  store i32 %101, i32* %4, align 4
  %102 = load i32, i32* @SSI2_CLK_PODF_SHIFT, align 4
  %103 = shl i32 1, %102
  %104 = load i32, i32* %4, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %4, align 4
  %106 = load i32, i32* @SSI_CLK_PRED_MASK, align 4
  %107 = load i32, i32* @SSI2_CLK_PRED_SHIFT, align 4
  %108 = shl i32 %106, %107
  %109 = xor i32 %108, -1
  %110 = load i32, i32* %4, align 4
  %111 = and i32 %110, %109
  store i32 %111, i32* %4, align 4
  %112 = load i32, i32* @SSI2_CLK_PRED_SHIFT, align 4
  %113 = shl i32 3, %112
  %114 = load i32, i32* %4, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %4, align 4
  %116 = load %struct.ccm_softc*, %struct.ccm_softc** %3, align 8
  %117 = load i32, i32* @CCM_CS2CDR, align 4
  %118 = load i32, i32* %4, align 4
  %119 = call i32 @WR4(%struct.ccm_softc* %116, i32 %117, i32 %118)
  ret void
}

declare dso_local i32 @RD4(%struct.ccm_softc*, i32) #1

declare dso_local i32 @WR4(%struct.ccm_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
