; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_edma3.c_ti_edma3_enable_transfer_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_edma3.c_ti_edma3_enable_transfer_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TI_EDMA3_NUM_DMA_CHS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TI_EDMA3CC_EMCR = common dso_local global i32 0, align 4
@TI_EDMA3CC_EMCRH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ti_edma3_enable_transfer_event(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @TI_EDMA3_NUM_DMA_CHS, align 4
  %6 = icmp uge i32 %4, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @EINVAL, align 4
  store i32 %8, i32* %2, align 4
  br label %42

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = icmp ult i32 %10, 32
  br i1 %11, label %12, label %25

12:                                               ; preds = %9
  %13 = call i32 @TI_EDMA3CC_S_SECR(i32 0)
  %14 = load i32, i32* %3, align 4
  %15 = shl i32 1, %14
  %16 = call i32 @ti_edma3_cc_wr_4(i32 %13, i32 %15)
  %17 = load i32, i32* @TI_EDMA3CC_EMCR, align 4
  %18 = load i32, i32* %3, align 4
  %19 = shl i32 1, %18
  %20 = call i32 @ti_edma3_cc_wr_4(i32 %17, i32 %19)
  %21 = call i32 @TI_EDMA3CC_S_EESR(i32 0)
  %22 = load i32, i32* %3, align 4
  %23 = shl i32 1, %22
  %24 = call i32 @ti_edma3_cc_wr_4(i32 %21, i32 %23)
  br label %41

25:                                               ; preds = %9
  %26 = call i32 @TI_EDMA3CC_S_SECRH(i32 0)
  %27 = load i32, i32* %3, align 4
  %28 = sub i32 %27, 32
  %29 = shl i32 1, %28
  %30 = call i32 @ti_edma3_cc_wr_4(i32 %26, i32 %29)
  %31 = load i32, i32* @TI_EDMA3CC_EMCRH, align 4
  %32 = load i32, i32* %3, align 4
  %33 = sub i32 %32, 32
  %34 = shl i32 1, %33
  %35 = call i32 @ti_edma3_cc_wr_4(i32 %31, i32 %34)
  %36 = call i32 @TI_EDMA3CC_S_EESRH(i32 0)
  %37 = load i32, i32* %3, align 4
  %38 = sub i32 %37, 32
  %39 = shl i32 1, %38
  %40 = call i32 @ti_edma3_cc_wr_4(i32 %36, i32 %39)
  br label %41

41:                                               ; preds = %25, %12
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %7
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @ti_edma3_cc_wr_4(i32, i32) #1

declare dso_local i32 @TI_EDMA3CC_S_SECR(i32) #1

declare dso_local i32 @TI_EDMA3CC_S_EESR(i32) #1

declare dso_local i32 @TI_EDMA3CC_S_SECRH(i32) #1

declare dso_local i32 @TI_EDMA3CC_S_EESRH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
