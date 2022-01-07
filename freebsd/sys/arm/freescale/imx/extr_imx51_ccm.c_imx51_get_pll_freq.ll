; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx51_ccm.c_imx51_get_pll_freq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx51_ccm.c_imx51_get_pll_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@IMX51_N_DPLLS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Wrong PLL id\00", align 1
@ccm_softc = common dso_local global %struct.TYPE_4__* null, align 8
@DPLL_DP_CTL = common dso_local global i32 0, align 4
@DP_CTL_HFSM = common dso_local global i32 0, align 4
@DPLL_DP_HFS_OP = common dso_local global i32 0, align 4
@DPLL_DP_HFS_MFD = common dso_local global i32 0, align 4
@DPLL_DP_HFS_MFN = common dso_local global i32 0, align 4
@DPLL_DP_OP = common dso_local global i32 0, align 4
@DPLL_DP_MFD = common dso_local global i32 0, align 4
@DPLL_DP_MFN = common dso_local global i32 0, align 4
@DP_OP_PDF_MASK = common dso_local global i32 0, align 4
@DP_OP_MFI_MASK = common dso_local global i32 0, align 4
@DP_OP_MFI_SHIFT = common dso_local global i32 0, align 4
@DP_CTL_REF_CLK_SEL_MASK = common dso_local global i32 0, align 4
@CCMC_CCR = common dso_local global i32 0, align 4
@CCR_FPM_MULT = common dso_local global i32 0, align 4
@DP_CTL_REF_CLK_DIV = common dso_local global i32 0, align 4
@DP_CTL_DPDCK0_2_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @imx51_get_pll_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx51_get_pll_freq(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* %2, align 4
  %15 = icmp sle i32 1, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* @IMX51_N_DPLLS, align 4
  %19 = icmp sle i32 %17, %18
  br label %20

20:                                               ; preds = %16, %1
  %21 = phi i1 [ false, %1 ], [ %19, %16 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @KASSERT(i32 %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ccm_softc, align 8
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* @DPLL_DP_CTL, align 4
  %27 = call i32 @pll_read_4(%struct.TYPE_4__* %24, i32 %25, i32 %26)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @DP_CTL_HFSM, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %20
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ccm_softc, align 8
  %34 = load i32, i32* %2, align 4
  %35 = load i32, i32* @DPLL_DP_HFS_OP, align 4
  %36 = call i32 @pll_read_4(%struct.TYPE_4__* %33, i32 %34, i32 %35)
  store i32 %36, i32* %4, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ccm_softc, align 8
  %38 = load i32, i32* %2, align 4
  %39 = load i32, i32* @DPLL_DP_HFS_MFD, align 4
  %40 = call i32 @pll_read_4(%struct.TYPE_4__* %37, i32 %38, i32 %39)
  store i32 %40, i32* %5, align 4
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ccm_softc, align 8
  %42 = load i32, i32* %2, align 4
  %43 = load i32, i32* @DPLL_DP_HFS_MFN, align 4
  %44 = call i32 @pll_read_4(%struct.TYPE_4__* %41, i32 %42, i32 %43)
  store i32 %44, i32* %6, align 4
  br label %58

45:                                               ; preds = %20
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ccm_softc, align 8
  %47 = load i32, i32* %2, align 4
  %48 = load i32, i32* @DPLL_DP_OP, align 4
  %49 = call i32 @pll_read_4(%struct.TYPE_4__* %46, i32 %47, i32 %48)
  store i32 %49, i32* %4, align 4
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ccm_softc, align 8
  %51 = load i32, i32* %2, align 4
  %52 = load i32, i32* @DPLL_DP_MFD, align 4
  %53 = call i32 @pll_read_4(%struct.TYPE_4__* %50, i32 %51, i32 %52)
  store i32 %53, i32* %5, align 4
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ccm_softc, align 8
  %55 = load i32, i32* %2, align 4
  %56 = load i32, i32* @DPLL_DP_MFN, align 4
  %57 = call i32 @pll_read_4(%struct.TYPE_4__* %54, i32 %55, i32 %56)
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %45, %32
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @DP_OP_PDF_MASK, align 4
  %61 = and i32 %59, %60
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @DP_OP_MFI_MASK, align 4
  %64 = and i32 %62, %63
  %65 = load i32, i32* @DP_OP_MFI_SHIFT, align 4
  %66 = ashr i32 %64, %65
  %67 = call i32 @max(i32 5, i32 %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %5, align 4
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %6, align 4
  %70 = and i32 %69, 67108864
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %58
  %73 = load i32, i32* %6, align 4
  %74 = or i32 -134217728, %73
  store i32 %74, i32* %8, align 4
  br label %77

75:                                               ; preds = %58
  %76 = load i32, i32* %6, align 4
  store i32 %76, i32* %8, align 4
  br label %77

77:                                               ; preds = %75, %72
  %78 = load i32, i32* %3, align 4
  %79 = load i32, i32* @DP_CTL_REF_CLK_SEL_MASK, align 4
  %80 = and i32 %78, %79
  switch i32 %80, label %93 [
    i32 129, label %81
    i32 128, label %82
  ]

81:                                               ; preds = %77
  store i32 24000000, i32* %13, align 4
  br label %94

82:                                               ; preds = %77
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ccm_softc, align 8
  %84 = load i32, i32* @CCMC_CCR, align 4
  %85 = call i32 @ccm_read_4(%struct.TYPE_4__* %83, i32 %84)
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* @CCR_FPM_MULT, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %82
  store i32 33554432, i32* %13, align 4
  br label %92

91:                                               ; preds = %82
  store i32 16777216, i32* %13, align 4
  br label %92

92:                                               ; preds = %91, %90
  br label %94

93:                                               ; preds = %77
  store i32 0, i32* %13, align 4
  br label %94

94:                                               ; preds = %93, %92, %81
  %95 = load i32, i32* %3, align 4
  %96 = load i32, i32* @DP_CTL_REF_CLK_DIV, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load i32, i32* %13, align 4
  %101 = sdiv i32 %100, 2
  store i32 %101, i32* %13, align 4
  br label %102

102:                                              ; preds = %99, %94
  %103 = load i32, i32* %13, align 4
  %104 = mul nsw i32 %103, 4
  store i32 %104, i32* %13, align 4
  %105 = load i32, i32* %13, align 4
  %106 = load i32, i32* %7, align 4
  %107 = mul nsw i32 %105, %106
  %108 = load i32, i32* %13, align 4
  %109 = load i32, i32* %8, align 4
  %110 = mul nsw i32 %108, %109
  %111 = load i32, i32* %9, align 4
  %112 = add nsw i32 %111, 1
  %113 = sdiv i32 %110, %112
  %114 = add nsw i32 %107, %113
  store i32 %114, i32* %12, align 4
  %115 = load i32, i32* %10, align 4
  %116 = add nsw i32 %115, 1
  %117 = load i32, i32* %12, align 4
  %118 = sdiv i32 %117, %116
  store i32 %118, i32* %12, align 4
  %119 = load i32, i32* %3, align 4
  %120 = load i32, i32* @DP_CTL_DPDCK0_2_EN, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %102
  %124 = load i32, i32* %12, align 4
  %125 = sdiv i32 %124, 2
  store i32 %125, i32* %12, align 4
  br label %126

126:                                              ; preds = %123, %102
  %127 = load i32, i32* %12, align 4
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ccm_softc, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %2, align 4
  %132 = sub nsw i32 %131, 1
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %130, i64 %133
  store i32 %127, i32* %134, align 4
  %135 = load i32, i32* %12, align 4
  ret i32 %135
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @pll_read_4(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @ccm_read_4(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
