; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_ehci.c_phy_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_ehci.c_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vybrid_ehci_softc = type { i32 }

@USBPHY_CTRL = common dso_local global i32 0, align 4
@USBPHY_CTRL_SFTRST = common dso_local global i32 0, align 4
@USBPHY_CTRL_CLKGATE = common dso_local global i32 0, align 4
@ENUTMILEVEL2 = common dso_local global i32 0, align 4
@ENUTMILEVEL3 = common dso_local global i32 0, align 4
@USBPHY_CTRL_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"gpio\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Error: failed to get the GPIO dev\0A\00", align 1
@GPIO_USB_PWR = common dso_local global i32 0, align 4
@GPIO_PIN_OUTPUT = common dso_local global i32 0, align 4
@GPIO_PIN_HIGH = common dso_local global i32 0, align 4
@USBPHY_PWD = common dso_local global i32 0, align 4
@USBPHY_DEBUG = common dso_local global i32 0, align 4
@USBPHY_DEBUG_CLKGATE = common dso_local global i32 0, align 4
@USBPHY_DEBUG0_STATUS = common dso_local global i32 0, align 4
@USBPHY_DEBUG1 = common dso_local global i32 0, align 4
@USBPHY_IP = common dso_local global i32 0, align 4
@USBPHY_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vybrid_ehci_softc*)* @phy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phy_init(%struct.vybrid_ehci_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vybrid_ehci_softc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.vybrid_ehci_softc* %0, %struct.vybrid_ehci_softc** %3, align 8
  %6 = load %struct.vybrid_ehci_softc*, %struct.vybrid_ehci_softc** %3, align 8
  %7 = load i32, i32* @USBPHY_CTRL, align 4
  %8 = call i32 @PHY_READ4(%struct.vybrid_ehci_softc* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @USBPHY_CTRL_SFTRST, align 4
  %10 = load i32, i32* %5, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* %5, align 4
  %12 = load %struct.vybrid_ehci_softc*, %struct.vybrid_ehci_softc** %3, align 8
  %13 = load i32, i32* @USBPHY_CTRL, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @PHY_WRITE4(%struct.vybrid_ehci_softc* %12, i32 %13, i32 %14)
  %16 = call i32 @DELAY(i32 10000)
  %17 = load i32, i32* @USBPHY_CTRL_SFTRST, align 4
  %18 = load i32, i32* @USBPHY_CTRL_CLKGATE, align 4
  %19 = or i32 %17, %18
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %5, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %5, align 4
  %23 = load %struct.vybrid_ehci_softc*, %struct.vybrid_ehci_softc** %3, align 8
  %24 = load i32, i32* @USBPHY_CTRL, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @PHY_WRITE4(%struct.vybrid_ehci_softc* %23, i32 %24, i32 %25)
  %27 = load i32, i32* @ENUTMILEVEL2, align 4
  %28 = load i32, i32* @ENUTMILEVEL3, align 4
  %29 = or i32 %27, %28
  store i32 %29, i32* %5, align 4
  %30 = load %struct.vybrid_ehci_softc*, %struct.vybrid_ehci_softc** %3, align 8
  %31 = load i32, i32* @USBPHY_CTRL_SET, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @PHY_WRITE4(%struct.vybrid_ehci_softc* %30, i32 %31, i32 %32)
  %34 = call i32 @devclass_find(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %35 = call i32* @devclass_get_device(i32 %34, i32 0)
  store i32* %35, i32** %4, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %1
  %39 = load %struct.vybrid_ehci_softc*, %struct.vybrid_ehci_softc** %3, align 8
  %40 = getelementptr inbounds %struct.vybrid_ehci_softc, %struct.vybrid_ehci_softc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @device_printf(i32 %41, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %66

43:                                               ; preds = %1
  %44 = load i32*, i32** %4, align 8
  %45 = load i32, i32* @GPIO_USB_PWR, align 4
  %46 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %47 = call i32 @GPIO_PIN_SETFLAGS(i32* %44, i32 %45, i32 %46)
  %48 = load i32*, i32** %4, align 8
  %49 = load i32, i32* @GPIO_USB_PWR, align 4
  %50 = load i32, i32* @GPIO_PIN_HIGH, align 4
  %51 = call i32 @GPIO_PIN_SET(i32* %48, i32 %49, i32 %50)
  %52 = load %struct.vybrid_ehci_softc*, %struct.vybrid_ehci_softc** %3, align 8
  %53 = load i32, i32* @USBPHY_PWD, align 4
  %54 = call i32 @PHY_WRITE4(%struct.vybrid_ehci_softc* %52, i32 %53, i32 0)
  %55 = load %struct.vybrid_ehci_softc*, %struct.vybrid_ehci_softc** %3, align 8
  %56 = load i32, i32* @USBPHY_DEBUG, align 4
  %57 = call i32 @PHY_READ4(%struct.vybrid_ehci_softc* %55, i32 %56)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* @USBPHY_DEBUG_CLKGATE, align 4
  %59 = xor i32 %58, -1
  %60 = load i32, i32* %5, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %5, align 4
  %62 = load %struct.vybrid_ehci_softc*, %struct.vybrid_ehci_softc** %3, align 8
  %63 = load i32, i32* @USBPHY_DEBUG, align 4
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @PHY_WRITE4(%struct.vybrid_ehci_softc* %62, i32 %63, i32 %64)
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %43, %38
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @PHY_READ4(%struct.vybrid_ehci_softc*, i32) #1

declare dso_local i32 @PHY_WRITE4(%struct.vybrid_ehci_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32* @devclass_get_device(i32, i32) #1

declare dso_local i32 @devclass_find(i8*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @GPIO_PIN_SETFLAGS(i32*, i32, i32) #1

declare dso_local i32 @GPIO_PIN_SET(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
