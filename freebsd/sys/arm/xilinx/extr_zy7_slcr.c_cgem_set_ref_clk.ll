; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/xilinx/extr_zy7_slcr.c_cgem_set_ref_clk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/xilinx/extr_zy7_slcr.c_cgem_set_ref_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zy7_slcr_softc = type { i32 }

@zy7_slcr_softc_p = common dso_local global %struct.zy7_slcr_softc* null, align 8
@ZY7_SLCR_GEM_CLK_CTRL_DIVISOR1_MAX = common dso_local global i32 0, align 4
@io_pll_frequency = common dso_local global i32 0, align 4
@ZY7_SLCR_GEM_CLK_CTRL_DIVISOR_MAX = common dso_local global i32 0, align 4
@ZY7_SLCR_GEM1_CLK_CTRL = common dso_local global i32 0, align 4
@ZY7_SLCR_GEM0_CLK_CTRL = common dso_local global i32 0, align 4
@ZY7_SLCR_GEM_CLK_CTRL_DIVISOR1_SHIFT = common dso_local global i32 0, align 4
@ZY7_SLCR_GEM_CLK_CTRL_DIVISOR_SHIFT = common dso_local global i32 0, align 4
@ZY7_SLCR_GEM_CLK_CTRL_SRCSEL_IO_PLL = common dso_local global i32 0, align 4
@ZY7_SLCR_GEM_CLK_CTRL_CLKACT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cgem_set_ref_clk(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.zy7_slcr_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load %struct.zy7_slcr_softc*, %struct.zy7_slcr_softc** @zy7_slcr_softc_p, align 8
  store %struct.zy7_slcr_softc* %9, %struct.zy7_slcr_softc** %6, align 8
  %10 = load %struct.zy7_slcr_softc*, %struct.zy7_slcr_softc** %6, align 8
  %11 = icmp ne %struct.zy7_slcr_softc* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %87

13:                                               ; preds = %2
  store i32 1, i32* %8, align 4
  br label %14

14:                                               ; preds = %49, %13
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @ZY7_SLCR_GEM_CLK_CTRL_DIVISOR1_MAX, align 4
  %17 = icmp sle i32 %15, %16
  br i1 %17, label %18, label %52

18:                                               ; preds = %14
  %19 = load i32, i32* @io_pll_frequency, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %5, align 4
  %22 = mul nsw i32 %20, %21
  %23 = sdiv i32 %22, 2
  %24 = add nsw i32 %19, %23
  %25 = load i32, i32* %8, align 4
  %26 = sdiv i32 %24, %25
  %27 = load i32, i32* %5, align 4
  %28 = sdiv i32 %26, %27
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %48

31:                                               ; preds = %18
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @ZY7_SLCR_GEM_CLK_CTRL_DIVISOR_MAX, align 4
  %34 = icmp sle i32 %32, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %31
  %36 = load i32, i32* @io_pll_frequency, align 4
  %37 = load i32, i32* %7, align 4
  %38 = sdiv i32 %36, %37
  %39 = load i32, i32* %8, align 4
  %40 = sdiv i32 %38, %39
  %41 = add nsw i32 %40, 500
  %42 = sdiv i32 %41, 1000
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 500
  %45 = sdiv i32 %44, 1000
  %46 = icmp eq i32 %42, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %35
  br label %52

48:                                               ; preds = %35, %31, %18
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %8, align 4
  br label %14

52:                                               ; preds = %47, %14
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @ZY7_SLCR_GEM_CLK_CTRL_DIVISOR1_MAX, align 4
  %55 = icmp sgt i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  store i32 -1, i32* %3, align 4
  br label %87

57:                                               ; preds = %52
  %58 = load %struct.zy7_slcr_softc*, %struct.zy7_slcr_softc** %6, align 8
  %59 = call i32 @ZSLCR_LOCK(%struct.zy7_slcr_softc* %58)
  %60 = load %struct.zy7_slcr_softc*, %struct.zy7_slcr_softc** %6, align 8
  %61 = call i32 @zy7_slcr_unlock(%struct.zy7_slcr_softc* %60)
  %62 = load %struct.zy7_slcr_softc*, %struct.zy7_slcr_softc** %6, align 8
  %63 = load i32, i32* %4, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = load i32, i32* @ZY7_SLCR_GEM1_CLK_CTRL, align 4
  br label %69

67:                                               ; preds = %57
  %68 = load i32, i32* @ZY7_SLCR_GEM0_CLK_CTRL, align 4
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i32 [ %66, %65 ], [ %68, %67 ]
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @ZY7_SLCR_GEM_CLK_CTRL_DIVISOR1_SHIFT, align 4
  %73 = shl i32 %71, %72
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @ZY7_SLCR_GEM_CLK_CTRL_DIVISOR_SHIFT, align 4
  %76 = shl i32 %74, %75
  %77 = or i32 %73, %76
  %78 = load i32, i32* @ZY7_SLCR_GEM_CLK_CTRL_SRCSEL_IO_PLL, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @ZY7_SLCR_GEM_CLK_CTRL_CLKACT, align 4
  %81 = or i32 %79, %80
  %82 = call i32 @WR4(%struct.zy7_slcr_softc* %62, i32 %70, i32 %81)
  %83 = load %struct.zy7_slcr_softc*, %struct.zy7_slcr_softc** %6, align 8
  %84 = call i32 @zy7_slcr_lock(%struct.zy7_slcr_softc* %83)
  %85 = load %struct.zy7_slcr_softc*, %struct.zy7_slcr_softc** %6, align 8
  %86 = call i32 @ZSLCR_UNLOCK(%struct.zy7_slcr_softc* %85)
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %69, %56, %12
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @ZSLCR_LOCK(%struct.zy7_slcr_softc*) #1

declare dso_local i32 @zy7_slcr_unlock(%struct.zy7_slcr_softc*) #1

declare dso_local i32 @WR4(%struct.zy7_slcr_softc*, i32, i32) #1

declare dso_local i32 @zy7_slcr_lock(%struct.zy7_slcr_softc*) #1

declare dso_local i32 @ZSLCR_UNLOCK(%struct.zy7_slcr_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
