; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_edma3.c_ti_edma3_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_edma3.c_ti_edma3_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EDMA_TPTC0_CLK = common dso_local global i64 0, align 8
@TI_EDMA3CC_EMCR = common dso_local global i32 0, align 4
@TI_EDMA3CC_EMCRH = common dso_local global i32 0, align 4
@TI_EDMA3CC_QEMCR = common dso_local global i32 0, align 4
@TI_EDMA3CC_CCERRCLR = common dso_local global i32 0, align 4
@TI_EDMA3_NUM_DMA_CHS = common dso_local global i32 0, align 4
@TI_EDMA3_NUM_QDMA_CHS = common dso_local global i32 0, align 4
@TI_EDMA3CC_QDMAQNUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ti_edma3_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i64, i64* @EDMA_TPTC0_CLK, align 8
  %6 = load i32, i32* %2, align 4
  %7 = zext i32 %6 to i64
  %8 = add nsw i64 %5, %7
  %9 = call i32 @ti_prcm_clk_enable(i64 %8)
  %10 = load i32, i32* @TI_EDMA3CC_EMCR, align 4
  %11 = call i32 @ti_edma3_cc_wr_4(i32 %10, i32 -1)
  %12 = load i32, i32* @TI_EDMA3CC_EMCRH, align 4
  %13 = call i32 @ti_edma3_cc_wr_4(i32 %12, i32 -1)
  %14 = load i32, i32* @TI_EDMA3CC_QEMCR, align 4
  %15 = call i32 @ti_edma3_cc_wr_4(i32 %14, i32 -1)
  %16 = load i32, i32* @TI_EDMA3CC_CCERRCLR, align 4
  %17 = call i32 @ti_edma3_cc_wr_4(i32 %16, i32 -1)
  %18 = call i32 @TI_EDMA3CC_DRAE(i32 0)
  %19 = call i32 @ti_edma3_cc_wr_4(i32 %18, i32 -1)
  %20 = call i32 @TI_EDMA3CC_DRAEH(i32 0)
  %21 = call i32 @ti_edma3_cc_wr_4(i32 %20, i32 -1)
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %31, %1
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %23, 64
  br i1 %24, label %25, label %34

25:                                               ; preds = %22
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @TI_EDMA3CC_DCHMAP(i32 %26)
  %28 = load i32, i32* %4, align 4
  %29 = shl i32 %28, 5
  %30 = call i32 @ti_edma3_cc_wr_4(i32 %27, i32 %29)
  br label %31

31:                                               ; preds = %25
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %22

34:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %58, %34
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @TI_EDMA3_NUM_DMA_CHS, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %61

39:                                               ; preds = %35
  %40 = load i32, i32* %4, align 4
  %41 = ashr i32 %40, 3
  %42 = call i32 @TI_EDMA3CC_DMAQNUM(i32 %41)
  %43 = call i32 @ti_edma3_cc_rd_4(i32 %42)
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @TI_EDMA3CC_DMAQNUM_CLR(i32 %44)
  %46 = load i32, i32* %3, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* %2, align 4
  %50 = call i32 @TI_EDMA3CC_DMAQNUM_SET(i32 %48, i32 %49)
  %51 = load i32, i32* %3, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %3, align 4
  %53 = load i32, i32* %4, align 4
  %54 = ashr i32 %53, 3
  %55 = call i32 @TI_EDMA3CC_DMAQNUM(i32 %54)
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @ti_edma3_cc_wr_4(i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %39
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %4, align 4
  br label %35

61:                                               ; preds = %35
  %62 = call i32 @TI_EDMA3CC_QRAE(i32 0)
  %63 = load i32, i32* @TI_EDMA3_NUM_QDMA_CHS, align 4
  %64 = shl i32 1, %63
  %65 = sub nsw i32 %64, 1
  %66 = call i32 @ti_edma3_cc_wr_4(i32 %62, i32 %65)
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %86, %61
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @TI_EDMA3_NUM_QDMA_CHS, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %89

71:                                               ; preds = %67
  %72 = load i32, i32* @TI_EDMA3CC_QDMAQNUM, align 4
  %73 = call i32 @ti_edma3_cc_rd_4(i32 %72)
  store i32 %73, i32* %3, align 4
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @TI_EDMA3CC_QDMAQNUM_CLR(i32 %74)
  %76 = load i32, i32* %3, align 4
  %77 = and i32 %76, %75
  store i32 %77, i32* %3, align 4
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* %2, align 4
  %80 = call i32 @TI_EDMA3CC_QDMAQNUM_SET(i32 %78, i32 %79)
  %81 = load i32, i32* %3, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %3, align 4
  %83 = load i32, i32* @TI_EDMA3CC_QDMAQNUM, align 4
  %84 = load i32, i32* %3, align 4
  %85 = call i32 @ti_edma3_cc_wr_4(i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %71
  %87 = load i32, i32* %4, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %4, align 4
  br label %67

89:                                               ; preds = %67
  ret void
}

declare dso_local i32 @ti_prcm_clk_enable(i64) #1

declare dso_local i32 @ti_edma3_cc_wr_4(i32, i32) #1

declare dso_local i32 @TI_EDMA3CC_DRAE(i32) #1

declare dso_local i32 @TI_EDMA3CC_DRAEH(i32) #1

declare dso_local i32 @TI_EDMA3CC_DCHMAP(i32) #1

declare dso_local i32 @ti_edma3_cc_rd_4(i32) #1

declare dso_local i32 @TI_EDMA3CC_DMAQNUM(i32) #1

declare dso_local i32 @TI_EDMA3CC_DMAQNUM_CLR(i32) #1

declare dso_local i32 @TI_EDMA3CC_DMAQNUM_SET(i32, i32) #1

declare dso_local i32 @TI_EDMA3CC_QRAE(i32) #1

declare dso_local i32 @TI_EDMA3CC_QDMAQNUM_CLR(i32) #1

declare dso_local i32 @TI_EDMA3CC_QDMAQNUM_SET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
