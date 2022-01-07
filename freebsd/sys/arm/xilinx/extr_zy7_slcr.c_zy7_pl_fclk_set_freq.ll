; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/xilinx/extr_zy7_slcr.c_zy7_pl_fclk_set_freq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/xilinx/extr_zy7_slcr.c_zy7_pl_fclk_set_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zy7_slcr_softc = type { i32 }

@zy7_slcr_softc_p = common dso_local global %struct.zy7_slcr_softc* null, align 8
@io_pll_frequency = common dso_local global i32 0, align 4
@arm_pll_frequency = common dso_local global i32 0, align 4
@ddr_pll_frequency = common dso_local global i32 0, align 4
@ZY7_SLCR_FPGA_CLK_CTRL_DIVISOR_MAX = common dso_local global i32 0, align 4
@ZY7_SLCR_FPGA_CLK_CTRL_DIVISOR1_MASK = common dso_local global i32 0, align 4
@ZY7_SLCR_FPGA_CLK_CTRL_DIVISOR0_MASK = common dso_local global i32 0, align 4
@ZY7_SLCR_FPGA_CLK_CTRL_DIVISOR1_SHIFT = common dso_local global i32 0, align 4
@ZY7_SLCR_FPGA_CLK_CTRL_DIVISOR0_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zy7_pl_fclk_set_freq(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.zy7_slcr_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %12 = load %struct.zy7_slcr_softc*, %struct.zy7_slcr_softc** @zy7_slcr_softc_p, align 8
  store %struct.zy7_slcr_softc* %12, %struct.zy7_slcr_softc** %6, align 8
  %13 = load %struct.zy7_slcr_softc*, %struct.zy7_slcr_softc** %6, align 8
  %14 = icmp ne %struct.zy7_slcr_softc* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %109

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @zy7_pl_fclk_get_source(i32 %17)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  switch i32 %19, label %26 [
    i32 128, label %20
    i32 130, label %22
    i32 129, label %24
  ]

20:                                               ; preds = %16
  %21 = load i32, i32* @io_pll_frequency, align 4
  store i32 %21, i32* %9, align 4
  br label %27

22:                                               ; preds = %16
  %23 = load i32, i32* @arm_pll_frequency, align 4
  store i32 %23, i32* %9, align 4
  br label %27

24:                                               ; preds = %16
  %25 = load i32, i32* @ddr_pll_frequency, align 4
  store i32 %25, i32* %9, align 4
  br label %27

26:                                               ; preds = %16
  store i32 -1, i32* %3, align 4
  br label %109

27:                                               ; preds = %24, %22, %20
  store i32 1, i32* %8, align 4
  br label %28

28:                                               ; preds = %63, %27
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @ZY7_SLCR_FPGA_CLK_CTRL_DIVISOR_MAX, align 4
  %31 = icmp sle i32 %29, %30
  br i1 %31, label %32, label %66

32:                                               ; preds = %28
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %5, align 4
  %36 = mul nsw i32 %34, %35
  %37 = sdiv i32 %36, 2
  %38 = add nsw i32 %33, %37
  %39 = load i32, i32* %8, align 4
  %40 = sdiv i32 %38, %39
  %41 = load i32, i32* %5, align 4
  %42 = sdiv i32 %40, %41
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %62

45:                                               ; preds = %32
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @ZY7_SLCR_FPGA_CLK_CTRL_DIVISOR_MAX, align 4
  %48 = icmp sle i32 %46, %47
  br i1 %48, label %49, label %62

49:                                               ; preds = %45
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %7, align 4
  %52 = sdiv i32 %50, %51
  %53 = load i32, i32* %8, align 4
  %54 = sdiv i32 %52, %53
  %55 = add nsw i32 %54, 500
  %56 = sdiv i32 %55, 1000
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 500
  %59 = sdiv i32 %58, 1000
  %60 = icmp eq i32 %56, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %49
  br label %66

62:                                               ; preds = %49, %45, %32
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %8, align 4
  br label %28

66:                                               ; preds = %61, %28
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @ZY7_SLCR_FPGA_CLK_CTRL_DIVISOR_MAX, align 4
  %69 = icmp sgt i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  store i32 -1, i32* %3, align 4
  br label %109

71:                                               ; preds = %66
  %72 = load %struct.zy7_slcr_softc*, %struct.zy7_slcr_softc** %6, align 8
  %73 = call i32 @ZSLCR_LOCK(%struct.zy7_slcr_softc* %72)
  %74 = load %struct.zy7_slcr_softc*, %struct.zy7_slcr_softc** %6, align 8
  %75 = call i32 @zy7_slcr_unlock(%struct.zy7_slcr_softc* %74)
  %76 = load %struct.zy7_slcr_softc*, %struct.zy7_slcr_softc** %6, align 8
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @ZY7_SLCR_FPGA_CLK_CTRL(i32 %77)
  %79 = call i32 @RD4(%struct.zy7_slcr_softc* %76, i32 %78)
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* @ZY7_SLCR_FPGA_CLK_CTRL_DIVISOR1_MASK, align 4
  %81 = load i32, i32* @ZY7_SLCR_FPGA_CLK_CTRL_DIVISOR0_MASK, align 4
  %82 = or i32 %80, %81
  %83 = xor i32 %82, -1
  %84 = load i32, i32* %10, align 4
  %85 = and i32 %84, %83
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* @ZY7_SLCR_FPGA_CLK_CTRL_DIVISOR1_SHIFT, align 4
  %88 = shl i32 %86, %87
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* @ZY7_SLCR_FPGA_CLK_CTRL_DIVISOR0_SHIFT, align 4
  %91 = shl i32 %89, %90
  %92 = or i32 %88, %91
  %93 = load i32, i32* %10, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %10, align 4
  %95 = load %struct.zy7_slcr_softc*, %struct.zy7_slcr_softc** %6, align 8
  %96 = load i32, i32* %4, align 4
  %97 = call i32 @ZY7_SLCR_FPGA_CLK_CTRL(i32 %96)
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @WR4(%struct.zy7_slcr_softc* %95, i32 %97, i32 %98)
  %100 = load %struct.zy7_slcr_softc*, %struct.zy7_slcr_softc** %6, align 8
  %101 = call i32 @zy7_slcr_lock(%struct.zy7_slcr_softc* %100)
  %102 = load %struct.zy7_slcr_softc*, %struct.zy7_slcr_softc** %6, align 8
  %103 = call i32 @ZSLCR_UNLOCK(%struct.zy7_slcr_softc* %102)
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* %7, align 4
  %106 = sdiv i32 %104, %105
  %107 = load i32, i32* %8, align 4
  %108 = sdiv i32 %106, %107
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %71, %70, %26, %15
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32 @zy7_pl_fclk_get_source(i32) #1

declare dso_local i32 @ZSLCR_LOCK(%struct.zy7_slcr_softc*) #1

declare dso_local i32 @zy7_slcr_unlock(%struct.zy7_slcr_softc*) #1

declare dso_local i32 @RD4(%struct.zy7_slcr_softc*, i32) #1

declare dso_local i32 @ZY7_SLCR_FPGA_CLK_CTRL(i32) #1

declare dso_local i32 @WR4(%struct.zy7_slcr_softc*, i32, i32) #1

declare dso_local i32 @zy7_slcr_lock(%struct.zy7_slcr_softc*) #1

declare dso_local i32 @ZSLCR_UNLOCK(%struct.zy7_slcr_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
