; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_prcm.c_am335x_clk_get_sysclk_freq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_prcm.c_am335x_clk_get_sysclk_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_clock_dev = type { i32 }

@SCM_CTRL_STATUS = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_clock_dev*, i32*)* @am335x_clk_get_sysclk_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @am335x_clk_get_sysclk_freq(%struct.ti_clock_dev* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ti_clock_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.ti_clock_dev* %0, %struct.ti_clock_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32, i32* @SCM_CTRL_STATUS, align 4
  %8 = call i64 @ti_scm_reg_read_4(i32 %7, i32* %6)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @ENXIO, align 4
  store i32 %11, i32* %3, align 4
  br label %25

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  %14 = ashr i32 %13, 22
  %15 = and i32 %14, 3
  switch i32 %15, label %24 [
    i32 0, label %16
    i32 1, label %18
    i32 2, label %20
    i32 3, label %22
  ]

16:                                               ; preds = %12
  %17 = load i32*, i32** %5, align 8
  store i32 19200000, i32* %17, align 4
  br label %24

18:                                               ; preds = %12
  %19 = load i32*, i32** %5, align 8
  store i32 24000000, i32* %19, align 4
  br label %24

20:                                               ; preds = %12
  %21 = load i32*, i32** %5, align 8
  store i32 25000000, i32* %21, align 4
  br label %24

22:                                               ; preds = %12
  %23 = load i32*, i32** %5, align 8
  store i32 26000000, i32* %23, align 4
  br label %24

24:                                               ; preds = %12, %22, %20, %18, %16
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %24, %10
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i64 @ti_scm_reg_read_4(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
