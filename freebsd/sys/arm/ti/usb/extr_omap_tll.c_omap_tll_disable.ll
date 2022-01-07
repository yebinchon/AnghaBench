; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/usb/extr_omap_tll.c_omap_tll_disable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/usb/extr_omap_tll.c_omap_tll_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_tll_softc = type { i32 }

@hz = common dso_local global i32 0, align 4
@OMAP_USBTLL_SYSCONFIG = common dso_local global i32 0, align 4
@OMAP_USBTLL_SYSSTATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"USBRESET\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"operation timed out\0A\00", align 1
@USBTLL_CLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_tll_softc*)* @omap_tll_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_tll_disable(%struct.omap_tll_softc* %0) #0 {
  %2 = alloca %struct.omap_tll_softc*, align 8
  %3 = alloca i64, align 8
  store %struct.omap_tll_softc* %0, %struct.omap_tll_softc** %2, align 8
  %4 = load i32, i32* @hz, align 4
  %5 = icmp slt i32 %4, 10
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %11

7:                                                ; preds = %1
  %8 = load i32, i32* @hz, align 4
  %9 = mul nsw i32 100, %8
  %10 = sdiv i32 %9, 1000
  br label %11

11:                                               ; preds = %7, %6
  %12 = phi i32 [ 1, %6 ], [ %10, %7 ]
  %13 = sext i32 %12 to i64
  store i64 %13, i64* %3, align 8
  %14 = load %struct.omap_tll_softc*, %struct.omap_tll_softc** %2, align 8
  %15 = load i32, i32* @OMAP_USBTLL_SYSCONFIG, align 4
  %16 = call i32 @omap_tll_write_4(%struct.omap_tll_softc* %14, i32 %15, i32 2)
  br label %17

17:                                               ; preds = %33, %11
  %18 = load %struct.omap_tll_softc*, %struct.omap_tll_softc** %2, align 8
  %19 = load i32, i32* @OMAP_USBTLL_SYSSTATUS, align 4
  %20 = call i32 @omap_tll_read_4(%struct.omap_tll_softc* %18, i32 %19)
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %17
  %24 = call i32 @pause(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 1)
  %25 = load i64, i64* %3, align 8
  %26 = add i64 %25, -1
  store i64 %26, i64* %3, align 8
  %27 = icmp eq i64 %25, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.omap_tll_softc*, %struct.omap_tll_softc** %2, align 8
  %30 = getelementptr inbounds %struct.omap_tll_softc, %struct.omap_tll_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @device_printf(i32 %31, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %34

33:                                               ; preds = %23
  br label %17

34:                                               ; preds = %28, %17
  %35 = load i32, i32* @USBTLL_CLK, align 4
  %36 = call i32 @ti_prcm_clk_disable(i32 %35)
  ret void
}

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
