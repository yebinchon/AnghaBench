; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_prcm.c_am335x_clk_get_arm_disp_freq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_prcm.c_am335x_clk_get_arm_disp_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_clock_dev = type { i32 }

@CM_WKUP_CM_CLKSEL_DPLL_DISP = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_clock_dev*, i32*)* @am335x_clk_get_arm_disp_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @am335x_clk_get_arm_disp_freq(%struct.ti_clock_dev* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ti_clock_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ti_clock_dev* %0, %struct.ti_clock_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32, i32* @CM_WKUP_CM_CLKSEL_DPLL_DISP, align 4
  %9 = call i32 @prcm_read_4(i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i64 @DPLL_BYP_CLKSEL(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @ENXIO, align 4
  store i32 %14, i32* %3, align 4
  br label %25

15:                                               ; preds = %2
  %16 = call i32 @am335x_clk_get_sysclk_freq(i32* null, i32* %7)
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @DPLL_MULT(i32 %17)
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @DPLL_DIV(i32 %20)
  %22 = udiv i32 %19, %21
  %23 = mul i32 %18, %22
  %24 = load i32*, i32** %5, align 8
  store i32 %23, i32* %24, align 4
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %15, %13
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @prcm_read_4(i32) #1

declare dso_local i64 @DPLL_BYP_CLKSEL(i32) #1

declare dso_local i32 @am335x_clk_get_sysclk_freq(i32*, i32*) #1

declare dso_local i32 @DPLL_MULT(i32) #1

declare dso_local i32 @DPLL_DIV(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
