; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/usb/extr_omap_tll.c_omap_tll_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/usb/extr_omap_tll.c_omap_tll_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_tll_softc = type { i32 }

@USBTLL_CLK = common dso_local global i32 0, align 4
@OMAP_USBTLL_SYSCONFIG = common dso_local global i32 0, align 4
@TLL_SYSCONFIG_SOFTRESET = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@OMAP_USBTLL_SYSSTATUS = common dso_local global i32 0, align 4
@TLL_SYSSTATUS_RESETDONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"USBRESET\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"TLL reset operation timed out\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TLL_SYSCONFIG_ENAWAKEUP = common dso_local global i32 0, align 4
@TLL_SYSCONFIG_AUTOIDLE = common dso_local global i32 0, align 4
@TLL_SYSCONFIG_SIDLE_SMART_IDLE = common dso_local global i32 0, align 4
@TLL_SYSCONFIG_CACTIVITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_tll_softc*)* @omap_tll_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_tll_init(%struct.omap_tll_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omap_tll_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.omap_tll_softc* %0, %struct.omap_tll_softc** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @USBTLL_CLK, align 4
  %7 = call i32 @ti_prcm_clk_enable(i32 %6)
  %8 = load %struct.omap_tll_softc*, %struct.omap_tll_softc** %3, align 8
  %9 = load i32, i32* @OMAP_USBTLL_SYSCONFIG, align 4
  %10 = load i32, i32* @TLL_SYSCONFIG_SOFTRESET, align 4
  %11 = call i32 @omap_tll_write_4(%struct.omap_tll_softc* %8, i32 %9, i32 %10)
  %12 = load i32, i32* @hz, align 4
  %13 = icmp slt i32 %12, 10
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %19

15:                                               ; preds = %1
  %16 = load i32, i32* @hz, align 4
  %17 = mul nsw i32 100, %16
  %18 = sdiv i32 %17, 1000
  br label %19

19:                                               ; preds = %15, %14
  %20 = phi i32 [ 1, %14 ], [ %18, %15 ]
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %4, align 8
  br label %22

22:                                               ; preds = %40, %19
  %23 = load %struct.omap_tll_softc*, %struct.omap_tll_softc** %3, align 8
  %24 = load i32, i32* @OMAP_USBTLL_SYSSTATUS, align 4
  %25 = call i32 @omap_tll_read_4(%struct.omap_tll_softc* %23, i32 %24)
  %26 = load i32, i32* @TLL_SYSSTATUS_RESETDONE, align 4
  %27 = and i32 %25, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %22
  %30 = call i32 @pause(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 1)
  %31 = load i64, i64* %4, align 8
  %32 = add i64 %31, -1
  store i64 %32, i64* %4, align 8
  %33 = icmp eq i64 %31, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load %struct.omap_tll_softc*, %struct.omap_tll_softc** %3, align 8
  %36 = getelementptr inbounds %struct.omap_tll_softc, %struct.omap_tll_softc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @device_printf(i32 %37, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @EINVAL, align 4
  store i32 %39, i32* %5, align 4
  br label %52

40:                                               ; preds = %29
  br label %22

41:                                               ; preds = %22
  %42 = load %struct.omap_tll_softc*, %struct.omap_tll_softc** %3, align 8
  %43 = load i32, i32* @OMAP_USBTLL_SYSCONFIG, align 4
  %44 = load i32, i32* @TLL_SYSCONFIG_ENAWAKEUP, align 4
  %45 = load i32, i32* @TLL_SYSCONFIG_AUTOIDLE, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @TLL_SYSCONFIG_SIDLE_SMART_IDLE, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @TLL_SYSCONFIG_CACTIVITY, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @omap_tll_write_4(%struct.omap_tll_softc* %42, i32 %43, i32 %50)
  store i32 0, i32* %2, align 4
  br label %56

52:                                               ; preds = %34
  %53 = load i32, i32* @USBTLL_CLK, align 4
  %54 = call i32 @ti_prcm_clk_disable(i32 %53)
  %55 = load i32, i32* %5, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %52, %41
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @ti_prcm_clk_enable(i32) #1

declare dso_local i32 @omap_tll_write_4(%struct.omap_tll_softc*, i32, i32) #1

declare dso_local i32 @omap_tll_read_4(%struct.omap_tll_softc*, i32) #1

declare dso_local i32 @pause(i8*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @ti_prcm_clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
