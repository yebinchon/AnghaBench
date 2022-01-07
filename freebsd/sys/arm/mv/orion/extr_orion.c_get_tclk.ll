; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/orion/extr_orion.c_get_tclk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/orion/extr_orion.c_get_tclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fdtbus_bs_tag = common dso_local global i32 0, align 4
@MV_MPP_BASE = common dso_local global i32 0, align 4
@SAMPLE_AT_RESET = common dso_local global i32 0, align 4
@TCLK_MASK = common dso_local global i32 0, align 4
@TCLK_SHIFT = common dso_local global i32 0, align 4
@TCLK_150MHZ = common dso_local global i32 0, align 4
@TCLK_166MHZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Unknown TCLK settings!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_tclk() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @fdtbus_bs_tag, align 4
  %4 = load i32, i32* @MV_MPP_BASE, align 4
  %5 = load i32, i32* @SAMPLE_AT_RESET, align 4
  %6 = call i32 @bus_space_read_4(i32 %3, i32 %4, i32 %5)
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @TCLK_MASK, align 4
  %9 = and i32 %7, %8
  %10 = load i32, i32* @TCLK_SHIFT, align 4
  %11 = ashr i32 %9, %10
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  switch i32 %12, label %17 [
    i32 1, label %13
    i32 2, label %15
  ]

13:                                               ; preds = %0
  %14 = load i32, i32* @TCLK_150MHZ, align 4
  store i32 %14, i32* %1, align 4
  br label %19

15:                                               ; preds = %0
  %16 = load i32, i32* @TCLK_166MHZ, align 4
  store i32 %16, i32* %1, align 4
  br label %19

17:                                               ; preds = %0
  %18 = call i32 @panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %13, %15, %17
  %20 = load i32, i32* %1, align 4
  ret i32 %20
}

declare dso_local i32 @bus_space_read_4(i32, i32, i32) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
