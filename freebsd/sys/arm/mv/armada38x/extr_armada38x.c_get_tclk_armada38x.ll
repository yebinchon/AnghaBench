; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/armada38x/extr_armada38x.c_get_tclk_armada38x.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/armada38x/extr_armada38x.c_get_tclk_armada38x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TCLK_MASK_ARMADA38X = common dso_local global i32 0, align 4
@TCLK_SHIFT_ARMADA38X = common dso_local global i32 0, align 4
@TCLK_250MHZ = common dso_local global i32 0, align 4
@TCLK_200MHZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_tclk_armada38x() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i64 (...) @get_sar_value_armada38x()
  %4 = trunc i64 %3 to i32
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @TCLK_MASK_ARMADA38X, align 4
  %7 = and i32 %5, %6
  %8 = load i32, i32* @TCLK_SHIFT_ARMADA38X, align 4
  %9 = ashr i32 %7, %8
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %0
  %13 = load i32, i32* @TCLK_250MHZ, align 4
  store i32 %13, i32* %1, align 4
  br label %16

14:                                               ; preds = %0
  %15 = load i32, i32* @TCLK_200MHZ, align 4
  store i32 %15, i32* %1, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = load i32, i32* %1, align 4
  ret i32 %17
}

declare dso_local i64 @get_sar_value_armada38x(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
