; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-qlm.c___cvmx_qlm_pcie_idle_dac_tweak.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-qlm.c___cvmx_qlm_pcie_idle_dac_tweak.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OCTEON_CN68XX_PASS1_X = common dso_local global i32 0, align 4
@OCTEON_CN66XX_PASS1_X = common dso_local global i32 0, align 4
@OCTEON_CN63XX_PASS1_X = common dso_local global i32 0, align 4
@OCTEON_CN63XX_PASS2_X = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"idle_dac\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__cvmx_qlm_pcie_idle_dac_tweak() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %3 = load i32, i32* @OCTEON_CN68XX_PASS1_X, align 4
  %4 = call i64 @OCTEON_IS_MODEL(i32 %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store i32 5, i32* %1, align 4
  br label %24

7:                                                ; preds = %0
  %8 = load i32, i32* @OCTEON_CN66XX_PASS1_X, align 4
  %9 = call i64 @OCTEON_IS_MODEL(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  store i32 3, i32* %1, align 4
  br label %23

12:                                               ; preds = %7
  %13 = load i32, i32* @OCTEON_CN63XX_PASS1_X, align 4
  %14 = call i64 @OCTEON_IS_MODEL(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* @OCTEON_CN63XX_PASS2_X, align 4
  %18 = call i64 @OCTEON_IS_MODEL(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16, %12
  store i32 3, i32* %1, align 4
  br label %22

21:                                               ; preds = %16
  br label %35

22:                                               ; preds = %20
  br label %23

23:                                               ; preds = %22, %11
  br label %24

24:                                               ; preds = %23, %6
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %32, %24
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* %1, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load i32, i32* %2, align 4
  %31 = call i32 @cvmx_qlm_jtag_set(i32 %30, i32 -1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 2)
  br label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %2, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %2, align 4
  br label %25

35:                                               ; preds = %21, %25
  ret void
}

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

declare dso_local i32 @cvmx_qlm_jtag_set(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
