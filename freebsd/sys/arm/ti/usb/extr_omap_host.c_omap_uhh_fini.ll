; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/usb/extr_omap_host.c_omap_uhh_fini.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/usb/extr_omap_host.c_omap_uhh_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_uhh_softc = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Stopping TI EHCI USB Controller\0A\00", align 1
@hz = common dso_local global i32 0, align 4
@OMAP_USBHOST_UHH_SYSCONFIG = common dso_local global i32 0, align 4
@OMAP_USBHOST_UHH_SYSSTATUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"USBRESET\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"operation timed out\0A\00", align 1
@USBHSHOST_CLK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Clock to USB host has been disabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_uhh_softc*)* @omap_uhh_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_uhh_fini(%struct.omap_uhh_softc* %0) #0 {
  %2 = alloca %struct.omap_uhh_softc*, align 8
  %3 = alloca i64, align 8
  store %struct.omap_uhh_softc* %0, %struct.omap_uhh_softc** %2, align 8
  %4 = load %struct.omap_uhh_softc*, %struct.omap_uhh_softc** %2, align 8
  %5 = getelementptr inbounds %struct.omap_uhh_softc, %struct.omap_uhh_softc* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @device_printf(i32 %6, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @hz, align 4
  %9 = icmp slt i32 %8, 10
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i64 1, i64* %3, align 8
  br label %16

11:                                               ; preds = %1
  %12 = load i32, i32* @hz, align 4
  %13 = mul nsw i32 100, %12
  %14 = sdiv i32 %13, 1000
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %3, align 8
  br label %16

16:                                               ; preds = %11, %10
  %17 = load %struct.omap_uhh_softc*, %struct.omap_uhh_softc** %2, align 8
  %18 = load i32, i32* @OMAP_USBHOST_UHH_SYSCONFIG, align 4
  %19 = call i32 @omap_uhh_write_4(%struct.omap_uhh_softc* %17, i32 %18, i32 2)
  br label %20

20:                                               ; preds = %36, %16
  %21 = load %struct.omap_uhh_softc*, %struct.omap_uhh_softc** %2, align 8
  %22 = load i32, i32* @OMAP_USBHOST_UHH_SYSSTATUS, align 4
  %23 = call i32 @omap_uhh_read_4(%struct.omap_uhh_softc* %21, i32 %22)
  %24 = and i32 %23, 7
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %20
  %27 = call i32 @pause(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %28 = load i64, i64* %3, align 8
  %29 = add i64 %28, -1
  store i64 %29, i64* %3, align 8
  %30 = icmp eq i64 %28, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load %struct.omap_uhh_softc*, %struct.omap_uhh_softc** %2, align 8
  %33 = getelementptr inbounds %struct.omap_uhh_softc, %struct.omap_uhh_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @device_printf(i32 %34, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %37

36:                                               ; preds = %26
  br label %20

37:                                               ; preds = %31, %20
  %38 = load i32, i32* @USBHSHOST_CLK, align 4
  %39 = call i32 @ti_prcm_clk_disable(i32 %38)
  %40 = load %struct.omap_uhh_softc*, %struct.omap_uhh_softc** %2, align 8
  %41 = getelementptr inbounds %struct.omap_uhh_softc, %struct.omap_uhh_softc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @device_printf(i32 %42, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @omap_uhh_write_4(%struct.omap_uhh_softc*, i32, i32) #1

declare dso_local i32 @omap_uhh_read_4(%struct.omap_uhh_softc*, i32) #1

declare dso_local i32 @pause(i8*, i32) #1

declare dso_local i32 @ti_prcm_clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
