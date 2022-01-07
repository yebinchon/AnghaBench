; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx_machdep.c_imx_wdog_cpu_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx_machdep.c_imx_wdog_cpu_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [70 x i8] c"imx_wdog_cpu_reset(): cannot find control register... locking up now.\00", align 1
@WDOG_CR_WDT = common dso_local global i32 0, align 4
@WDOG_CR_WDA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [72 x i8] c"imx_wdog_cpu_reset(): External reset failed, trying internal cpu-reset\0A\00", align 1
@WDOG_CR_SRS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @imx_wdog_cpu_reset(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i32* @devmap_ptov(i32 %5, i32 4)
  store i32* %6, i32** %4, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = call i32 @printf(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %10, %8
  %11 = call i32 (...) @cpu_spinwait()
  br label %10

12:                                               ; preds = %1
  %13 = load i32*, i32** %4, align 8
  %14 = load volatile i32, i32* %13, align 4
  store volatile i32 %14, i32* %3, align 4
  %15 = load volatile i32, i32* %3, align 4
  %16 = load volatile i32, i32* @WDOG_CR_WDT, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %12
  %20 = load volatile i32, i32* @WDOG_CR_WDA, align 4
  %21 = xor i32 %20, -1
  %22 = load volatile i32, i32* %3, align 4
  %23 = and i32 %22, %21
  store volatile i32 %23, i32* %3, align 4
  %24 = load volatile i32, i32* %3, align 4
  %25 = load i32*, i32** %4, align 8
  store volatile i32 %24, i32* %25, align 4
  %26 = call i32 @DELAY(i32 1000000)
  %27 = call i32 @printf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0))
  %28 = call i32 @DELAY(i32 10000)
  br label %29

29:                                               ; preds = %19, %12
  %30 = load volatile i32, i32* @WDOG_CR_SRS, align 4
  %31 = xor i32 %30, -1
  %32 = load volatile i32, i32* %3, align 4
  %33 = and i32 %32, %31
  store volatile i32 %33, i32* %3, align 4
  %34 = load volatile i32, i32* %3, align 4
  %35 = load i32*, i32** %4, align 8
  store volatile i32 %34, i32* %35, align 4
  %36 = load volatile i32, i32* %3, align 4
  %37 = load i32*, i32** %4, align 8
  store volatile i32 %36, i32* %37, align 4
  %38 = load volatile i32, i32* %3, align 4
  %39 = load i32*, i32** %4, align 8
  store volatile i32 %38, i32* %39, align 4
  br label %40

40:                                               ; preds = %40, %29
  %41 = call i32 (...) @cpu_spinwait()
  br label %40
}

declare dso_local i32* @devmap_ptov(i32, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @cpu_spinwait(...) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
