; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_prcm.c_ti_prcm_clk_dev.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_prcm.c_ti_prcm_clk_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_clock_dev = type { i64 }

@.str = private unnamed_addr constant [22 x i8] c"No clock devmap found\00", align 1
@INVALID_CLK_IDENT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"ti_prcm: Failed to find clock device (%d)\0A\00", align 1
@ti_am335x_clk_devmap = common dso_local global %struct.ti_clock_dev* null, align 8
@ti_omap4_clk_devmap = common dso_local global %struct.ti_clock_dev* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ti_clock_dev* (i64)* @ti_prcm_clk_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ti_clock_dev* @ti_prcm_clk_dev(i64 %0) #0 {
  %2 = alloca %struct.ti_clock_dev*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.ti_clock_dev*, align 8
  store i64 %0, i64* %3, align 8
  store %struct.ti_clock_dev* null, %struct.ti_clock_dev** %4, align 8
  %5 = call i32 (...) @ti_chip()
  switch i32 %5, label %6 [
  ]

6:                                                ; preds = %1
  %7 = load %struct.ti_clock_dev*, %struct.ti_clock_dev** %4, align 8
  %8 = icmp eq %struct.ti_clock_dev* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = call i32 @panic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %6
  br label %12

12:                                               ; preds = %26, %11
  %13 = load %struct.ti_clock_dev*, %struct.ti_clock_dev** %4, align 8
  %14 = getelementptr inbounds %struct.ti_clock_dev, %struct.ti_clock_dev* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @INVALID_CLK_IDENT, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %12
  %19 = load %struct.ti_clock_dev*, %struct.ti_clock_dev** %4, align 8
  %20 = getelementptr inbounds %struct.ti_clock_dev, %struct.ti_clock_dev* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %3, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load %struct.ti_clock_dev*, %struct.ti_clock_dev** %4, align 8
  store %struct.ti_clock_dev* %25, %struct.ti_clock_dev** %2, align 8
  br label %32

26:                                               ; preds = %18
  %27 = load %struct.ti_clock_dev*, %struct.ti_clock_dev** %4, align 8
  %28 = getelementptr inbounds %struct.ti_clock_dev, %struct.ti_clock_dev* %27, i32 1
  store %struct.ti_clock_dev* %28, %struct.ti_clock_dev** %4, align 8
  br label %12

29:                                               ; preds = %12
  %30 = load i64, i64* %3, align 8
  %31 = call i32 @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %30)
  store %struct.ti_clock_dev* null, %struct.ti_clock_dev** %2, align 8
  br label %32

32:                                               ; preds = %29, %24
  %33 = load %struct.ti_clock_dev*, %struct.ti_clock_dev** %2, align 8
  ret %struct.ti_clock_dev* %33
}

declare dso_local i32 @ti_chip(...) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @printf(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
