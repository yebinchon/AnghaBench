; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/usb/extr_omap_ehci.c_omap_ehci_soft_phy_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/usb/extr_omap_ehci.c_omap_ehci_soft_phy_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_ehci_softc = type { i32 }

@hz = common dso_local global i32 0, align 4
@ULPI_FUNC_CTRL_RESET = common dso_local global i32 0, align 4
@ULPI_FUNC_CTRL = common dso_local global i32 0, align 4
@OMAP_USBHOST_INSNREG05_ULPI_REGADD_SHIFT = common dso_local global i32 0, align 4
@OMAP_USBHOST_INSNREG05_ULPI_OPSEL_SHIFT = common dso_local global i32 0, align 4
@OMAP_USBHOST_INSNREG05_ULPI_PORTSEL_SHIFT = common dso_local global i32 0, align 4
@OMAP_USBHOST_INSNREG05_ULPI_CONTROL_SHIFT = common dso_local global i32 0, align 4
@OMAP_USBHOST_INSNREG05_ULPI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"USBPHY_RESET\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"PHY reset operation timed out\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_ehci_softc*, i32)* @omap_ehci_soft_phy_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_ehci_soft_phy_reset(%struct.omap_ehci_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.omap_ehci_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.omap_ehci_softc* %0, %struct.omap_ehci_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @hz, align 4
  %8 = icmp slt i32 %7, 10
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %14

10:                                               ; preds = %2
  %11 = load i32, i32* @hz, align 4
  %12 = mul nsw i32 100, %11
  %13 = sdiv i32 %12, 1000
  br label %14

14:                                               ; preds = %10, %9
  %15 = phi i32 [ 1, %9 ], [ %13, %10 ]
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %5, align 8
  %17 = load i32, i32* @ULPI_FUNC_CTRL_RESET, align 4
  %18 = load i32, i32* @ULPI_FUNC_CTRL, align 4
  %19 = call i32 @ULPI_SET(i32 %18)
  %20 = load i32, i32* @OMAP_USBHOST_INSNREG05_ULPI_REGADD_SHIFT, align 4
  %21 = shl i32 %19, %20
  %22 = or i32 %17, %21
  %23 = load i32, i32* @OMAP_USBHOST_INSNREG05_ULPI_OPSEL_SHIFT, align 4
  %24 = shl i32 2, %23
  %25 = or i32 %22, %24
  %26 = load i32, i32* %4, align 4
  %27 = add i32 %26, 1
  %28 = load i32, i32* @OMAP_USBHOST_INSNREG05_ULPI_PORTSEL_SHIFT, align 4
  %29 = shl i32 %27, %28
  %30 = or i32 %25, %29
  %31 = load i32, i32* @OMAP_USBHOST_INSNREG05_ULPI_CONTROL_SHIFT, align 4
  %32 = shl i32 1, %31
  %33 = or i32 %30, %32
  store i32 %33, i32* %6, align 4
  %34 = load %struct.omap_ehci_softc*, %struct.omap_ehci_softc** %3, align 8
  %35 = load i32, i32* @OMAP_USBHOST_INSNREG05_ULPI, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @omap_ehci_write_4(%struct.omap_ehci_softc* %34, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %56, %14
  %39 = load %struct.omap_ehci_softc*, %struct.omap_ehci_softc** %3, align 8
  %40 = load i32, i32* @OMAP_USBHOST_INSNREG05_ULPI, align 4
  %41 = call i32 @omap_ehci_read_4(%struct.omap_ehci_softc* %39, i32 %40)
  %42 = load i32, i32* @OMAP_USBHOST_INSNREG05_ULPI_CONTROL_SHIFT, align 4
  %43 = shl i32 1, %42
  %44 = and i32 %41, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %38
  %47 = call i32 @pause(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 1)
  %48 = load i64, i64* %5, align 8
  %49 = add i64 %48, -1
  store i64 %49, i64* %5, align 8
  %50 = icmp eq i64 %48, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load %struct.omap_ehci_softc*, %struct.omap_ehci_softc** %3, align 8
  %53 = getelementptr inbounds %struct.omap_ehci_softc, %struct.omap_ehci_softc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @device_printf(i32 %54, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %57

56:                                               ; preds = %46
  br label %38

57:                                               ; preds = %51, %38
  ret void
}

declare dso_local i32 @ULPI_SET(i32) #1

declare dso_local i32 @omap_ehci_write_4(%struct.omap_ehci_softc*, i32, i32) #1

declare dso_local i32 @omap_ehci_read_4(%struct.omap_ehci_softc*, i32) #1

declare dso_local i32 @pause(i8*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
