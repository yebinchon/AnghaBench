; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/xilinx/extr_zy7_slcr.c_zy7_pl_fclk_get_freq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/xilinx/extr_zy7_slcr.c_zy7_pl_fclk_get_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zy7_slcr_softc = type { i32 }

@zy7_slcr_softc_p = common dso_local global %struct.zy7_slcr_softc* null, align 8
@io_pll_frequency = common dso_local global i32 0, align 4
@arm_pll_frequency = common dso_local global i32 0, align 4
@ddr_pll_frequency = common dso_local global i32 0, align 4
@ZY7_SLCR_FPGA_CLK_CTRL_DIVISOR1_MASK = common dso_local global i32 0, align 4
@ZY7_SLCR_FPGA_CLK_CTRL_DIVISOR1_SHIFT = common dso_local global i32 0, align 4
@ZY7_SLCR_FPGA_CLK_CTRL_DIVISOR0_MASK = common dso_local global i32 0, align 4
@ZY7_SLCR_FPGA_CLK_CTRL_DIVISOR0_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zy7_pl_fclk_get_freq(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.zy7_slcr_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %11 = load %struct.zy7_slcr_softc*, %struct.zy7_slcr_softc** @zy7_slcr_softc_p, align 8
  store %struct.zy7_slcr_softc* %11, %struct.zy7_slcr_softc** %4, align 8
  %12 = load %struct.zy7_slcr_softc*, %struct.zy7_slcr_softc** %4, align 8
  %13 = icmp ne %struct.zy7_slcr_softc* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %64

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @zy7_pl_fclk_get_source(i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  switch i32 %18, label %25 [
    i32 128, label %19
    i32 130, label %21
    i32 129, label %23
  ]

19:                                               ; preds = %15
  %20 = load i32, i32* @io_pll_frequency, align 4
  store i32 %20, i32* %7, align 4
  br label %26

21:                                               ; preds = %15
  %22 = load i32, i32* @arm_pll_frequency, align 4
  store i32 %22, i32* %7, align 4
  br label %26

23:                                               ; preds = %15
  %24 = load i32, i32* @ddr_pll_frequency, align 4
  store i32 %24, i32* %7, align 4
  br label %26

25:                                               ; preds = %15
  store i32 -1, i32* %2, align 4
  br label %64

26:                                               ; preds = %23, %21, %19
  %27 = load %struct.zy7_slcr_softc*, %struct.zy7_slcr_softc** %4, align 8
  %28 = call i32 @ZSLCR_LOCK(%struct.zy7_slcr_softc* %27)
  %29 = load %struct.zy7_slcr_softc*, %struct.zy7_slcr_softc** %4, align 8
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @ZY7_SLCR_FPGA_CLK_CTRL(i32 %30)
  %32 = call i32 @RD4(%struct.zy7_slcr_softc* %29, i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @ZY7_SLCR_FPGA_CLK_CTRL_DIVISOR1_MASK, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* @ZY7_SLCR_FPGA_CLK_CTRL_DIVISOR1_SHIFT, align 4
  %37 = ashr i32 %35, %36
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @ZY7_SLCR_FPGA_CLK_CTRL_DIVISOR0_MASK, align 4
  %40 = and i32 %38, %39
  %41 = load i32, i32* @ZY7_SLCR_FPGA_CLK_CTRL_DIVISOR0_SHIFT, align 4
  %42 = ashr i32 %40, %41
  store i32 %42, i32* %5, align 4
  %43 = load %struct.zy7_slcr_softc*, %struct.zy7_slcr_softc** %4, align 8
  %44 = call i32 @ZSLCR_UNLOCK(%struct.zy7_slcr_softc* %43)
  %45 = load i32, i32* %5, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %26
  store i32 1, i32* %5, align 4
  br label %48

48:                                               ; preds = %47, %26
  %49 = load i32, i32* %6, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i32 1, i32* %6, align 4
  br label %52

52:                                               ; preds = %51, %48
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %5, align 4
  %55 = sdiv i32 %53, %54
  %56 = load i32, i32* %6, align 4
  %57 = sdiv i32 %55, %56
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 500
  %60 = sdiv i32 %59, 1000
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = mul nsw i32 %61, 1000
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %52, %25, %14
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @zy7_pl_fclk_get_source(i32) #1

declare dso_local i32 @ZSLCR_LOCK(%struct.zy7_slcr_softc*) #1

declare dso_local i32 @RD4(%struct.zy7_slcr_softc*, i32) #1

declare dso_local i32 @ZY7_SLCR_FPGA_CLK_CTRL(i32) #1

declare dso_local i32 @ZSLCR_UNLOCK(%struct.zy7_slcr_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
