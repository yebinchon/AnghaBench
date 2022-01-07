; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_edma3.c_ti_edma3_request_qdma_ch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_edma3.c_ti_edma3_request_qdma_ch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TI_EDMA3_NUM_DMA_CHS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TI_EDMA3CC_QDMAQNUM = common dso_local global i32 0, align 4
@TI_EDMA3CC_OPT_TCC_CLR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ti_edma3_request_qdma_ch(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @TI_EDMA3_NUM_DMA_CHS, align 4
  %11 = icmp uge i32 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @EINVAL, align 4
  store i32 %13, i32* %4, align 4
  br label %48

14:                                               ; preds = %3
  %15 = call i32 @TI_EDMA3CC_QRAE(i32 0)
  %16 = call i32 @ti_edma3_cc_rd_4(i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %5, align 4
  %18 = shl i32 1, %17
  %19 = load i32, i32* %8, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %8, align 4
  %21 = call i32 @TI_EDMA3CC_QRAE(i32 0)
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @ti_edma3_cc_wr_4(i32 %21, i32 %22)
  %24 = load i32, i32* @TI_EDMA3CC_QDMAQNUM, align 4
  %25 = call i32 @ti_edma3_cc_rd_4(i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @TI_EDMA3CC_QDMAQNUM_SET(i32 %26, i32 %27)
  %29 = load i32, i32* %8, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* @TI_EDMA3CC_QDMAQNUM, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @ti_edma3_cc_wr_4(i32 %31, i32 %32)
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @TI_EDMA3CC_OPT(i32 %34)
  %36 = call i32 @ti_edma3_cc_rd_4(i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* @TI_EDMA3CC_OPT_TCC_CLR, align 4
  %38 = load i32, i32* %8, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @TI_EDMA3CC_OPT_TCC_SET(i32 %40)
  %42 = load i32, i32* %8, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @TI_EDMA3CC_OPT(i32 %44)
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @ti_edma3_cc_wr_4(i32 %45, i32 %46)
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %14, %12
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @ti_edma3_cc_rd_4(i32) #1

declare dso_local i32 @TI_EDMA3CC_QRAE(i32) #1

declare dso_local i32 @ti_edma3_cc_wr_4(i32, i32) #1

declare dso_local i32 @TI_EDMA3CC_QDMAQNUM_SET(i32, i32) #1

declare dso_local i32 @TI_EDMA3CC_OPT(i32) #1

declare dso_local i32 @TI_EDMA3CC_OPT_TCC_SET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
