; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_edma3.c_ti_edma3_request_dma_ch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_edma3.c_ti_edma3_request_dma_ch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TI_EDMA3_NUM_DMA_CHS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TI_EDMA3CC_OPT_TCC_CLR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ti_edma3_request_dma_ch(i32 %0, i32 %1, i32 %2) #0 {
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
  br label %71

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = icmp ult i32 %15, 32
  br i1 %16, label %17, label %27

17:                                               ; preds = %14
  %18 = call i32 @TI_EDMA3CC_DRAE(i32 0)
  %19 = call i32 @ti_edma3_cc_rd_4(i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %5, align 4
  %21 = shl i32 1, %20
  %22 = load i32, i32* %8, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %8, align 4
  %24 = call i32 @TI_EDMA3CC_DRAE(i32 0)
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @ti_edma3_cc_wr_4(i32 %24, i32 %25)
  br label %38

27:                                               ; preds = %14
  %28 = call i32 @TI_EDMA3CC_DRAEH(i32 0)
  %29 = call i32 @ti_edma3_cc_rd_4(i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %5, align 4
  %31 = sub i32 %30, 32
  %32 = shl i32 1, %31
  %33 = load i32, i32* %8, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %8, align 4
  %35 = call i32 @TI_EDMA3CC_DRAEH(i32 0)
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @ti_edma3_cc_wr_4(i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %27, %17
  %39 = load i32, i32* %5, align 4
  %40 = lshr i32 %39, 3
  %41 = call i32 @TI_EDMA3CC_DMAQNUM(i32 %40)
  %42 = call i32 @ti_edma3_cc_rd_4(i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @TI_EDMA3CC_DMAQNUM_CLR(i32 %43)
  %45 = load i32, i32* %8, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @TI_EDMA3CC_DMAQNUM_SET(i32 %47, i32 %48)
  %50 = load i32, i32* %8, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %5, align 4
  %53 = lshr i32 %52, 3
  %54 = call i32 @TI_EDMA3CC_DMAQNUM(i32 %53)
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @ti_edma3_cc_wr_4(i32 %54, i32 %55)
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @TI_EDMA3CC_OPT(i32 %57)
  %59 = call i32 @ti_edma3_cc_rd_4(i32 %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* @TI_EDMA3CC_OPT_TCC_CLR, align 4
  %61 = load i32, i32* %8, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @TI_EDMA3CC_OPT_TCC_SET(i32 %63)
  %65 = load i32, i32* %8, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @TI_EDMA3CC_OPT(i32 %67)
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @ti_edma3_cc_wr_4(i32 %68, i32 %69)
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %38, %12
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @ti_edma3_cc_rd_4(i32) #1

declare dso_local i32 @TI_EDMA3CC_DRAE(i32) #1

declare dso_local i32 @ti_edma3_cc_wr_4(i32, i32) #1

declare dso_local i32 @TI_EDMA3CC_DRAEH(i32) #1

declare dso_local i32 @TI_EDMA3CC_DMAQNUM(i32) #1

declare dso_local i32 @TI_EDMA3CC_DMAQNUM_CLR(i32) #1

declare dso_local i32 @TI_EDMA3CC_DMAQNUM_SET(i32, i32) #1

declare dso_local i32 @TI_EDMA3CC_OPT(i32) #1

declare dso_local i32 @TI_EDMA3CC_OPT_TCC_SET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
