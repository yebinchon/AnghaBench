; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_prcm.c_am335x_clk_set_arm_disp_freq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_prcm.c_am335x_clk_set_arm_disp_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_clock_dev = type { i32 }

@CM_WKUP_CM_CLKMODE_DPLL_DISP = common dso_local global i32 0, align 4
@CM_WKUP_CM_IDLEST_DPLL_DISP = common dso_local global i32 0, align 4
@DPLL_MAX_MUL = common dso_local global i32 0, align 4
@DPLL_MAX_DIV = common dso_local global i32 0, align 4
@CM_WKUP_CM_CLKSEL_DPLL_DISP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_clock_dev*, i32)* @am335x_clk_set_arm_disp_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @am335x_clk_set_arm_disp_freq(%struct.ti_clock_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.ti_clock_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ti_clock_dev* %0, %struct.ti_clock_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = call i32 @am335x_clk_get_sysclk_freq(i32* null, i32* %5)
  %14 = load i32, i32* @CM_WKUP_CM_CLKMODE_DPLL_DISP, align 4
  %15 = call i32 @prcm_write_4(i32 %14, i32 4)
  br label %16

16:                                               ; preds = %22, %2
  %17 = load i32, i32* @CM_WKUP_CM_IDLEST_DPLL_DISP, align 4
  %18 = call i32 @prcm_read_4(i32 %17)
  %19 = and i32 %18, 256
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = call i32 @DELAY(i32 10)
  br label %16

24:                                               ; preds = %16
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %11, align 4
  store i32 1, i32* %8, align 4
  br label %26

26:                                               ; preds = %60, %24
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @DPLL_MAX_MUL, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %63

30:                                               ; preds = %26
  store i32 1, i32* %9, align 4
  br label %31

31:                                               ; preds = %56, %30
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @DPLL_MAX_DIV, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %59

35:                                               ; preds = %31
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %9, align 4
  %40 = udiv i32 %38, %39
  %41 = mul i32 %37, %40
  %42 = sub i32 %36, %41
  %43 = call i32 @abs(i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %35
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %11, align 4
  br label %51

51:                                               ; preds = %47, %35
  %52 = load i32, i32* %11, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  br label %59

55:                                               ; preds = %51
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %9, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %9, align 4
  br label %31

59:                                               ; preds = %54, %31
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %8, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %8, align 4
  br label %26

63:                                               ; preds = %26
  %64 = load i32, i32* @CM_WKUP_CM_CLKSEL_DPLL_DISP, align 4
  %65 = load i32, i32* %6, align 4
  %66 = shl i32 %65, 8
  %67 = load i32, i32* %7, align 4
  %68 = sub i32 %67, 1
  %69 = or i32 %66, %68
  %70 = call i32 @prcm_write_4(i32 %64, i32 %69)
  %71 = load i32, i32* @CM_WKUP_CM_CLKMODE_DPLL_DISP, align 4
  %72 = call i32 @prcm_write_4(i32 %71, i32 7)
  store i32 10000, i32* %12, align 4
  br label %73

73:                                               ; preds = %84, %63
  %74 = load i32, i32* @CM_WKUP_CM_IDLEST_DPLL_DISP, align 4
  %75 = call i32 @prcm_read_4(i32 %74)
  %76 = and i32 %75, 1
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %73
  %79 = load i32, i32* %12, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %12, align 4
  %81 = icmp ne i32 %79, 0
  br label %82

82:                                               ; preds = %78, %73
  %83 = phi i1 [ false, %73 ], [ %81, %78 ]
  br i1 %83, label %84, label %86

84:                                               ; preds = %82
  %85 = call i32 @DELAY(i32 10)
  br label %73

86:                                               ; preds = %82
  ret i32 0
}

declare dso_local i32 @am335x_clk_get_sysclk_freq(i32*, i32*) #1

declare dso_local i32 @prcm_write_4(i32, i32) #1

declare dso_local i32 @prcm_read_4(i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @abs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
