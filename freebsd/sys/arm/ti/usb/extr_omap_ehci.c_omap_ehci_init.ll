; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/usb/extr_omap_ehci.c_omap_ehci_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/usb/extr_omap_ehci.c_omap_ehci_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_ehci_softc = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Starting TI EHCI USB Controller\0A\00", align 1
@OMAP_USBHOST_USBCMD = common dso_local global i32 0, align 4
@OMAP_HS_USB_PORTS = common dso_local global i32 0, align 4
@EHCI_HCD_OMAP_MODE_PHY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_ehci_softc*)* @omap_ehci_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_ehci_init(%struct.omap_ehci_softc* %0) #0 {
  %2 = alloca %struct.omap_ehci_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.omap_ehci_softc* %0, %struct.omap_ehci_softc** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.omap_ehci_softc*, %struct.omap_ehci_softc** %2, align 8
  %7 = getelementptr inbounds %struct.omap_ehci_softc, %struct.omap_ehci_softc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @device_get_parent(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.omap_ehci_softc*, %struct.omap_ehci_softc** %2, align 8
  %11 = getelementptr inbounds %struct.omap_ehci_softc, %struct.omap_ehci_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @device_printf(i32 %12, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.omap_ehci_softc*, %struct.omap_ehci_softc** %2, align 8
  %15 = load i32, i32* @OMAP_USBHOST_USBCMD, align 4
  %16 = call i32 @omap_ehci_read_4(%struct.omap_ehci_softc* %14, i32 %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = and i32 %17, -16711681
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = or i32 %19, 65536
  store i32 %20, i32* %3, align 4
  %21 = load %struct.omap_ehci_softc*, %struct.omap_ehci_softc** %2, align 8
  %22 = load i32, i32* @OMAP_USBHOST_USBCMD, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @omap_ehci_write_4(%struct.omap_ehci_softc* %21, i32 %22, i32 %23)
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %40, %1
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @OMAP_HS_USB_PORTS, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %43

29:                                               ; preds = %25
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i64 @omap_usb_port_mode(i32 %30, i32 %31)
  %33 = load i64, i64* @EHCI_HCD_OMAP_MODE_PHY, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load %struct.omap_ehci_softc*, %struct.omap_ehci_softc** %2, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @omap_ehci_soft_phy_reset(%struct.omap_ehci_softc* %36, i32 %37)
  br label %39

39:                                               ; preds = %35, %29
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %25

43:                                               ; preds = %25
  ret i32 0
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @omap_ehci_read_4(%struct.omap_ehci_softc*, i32) #1

declare dso_local i32 @omap_ehci_write_4(%struct.omap_ehci_softc*, i32, i32) #1

declare dso_local i64 @omap_usb_port_mode(i32, i32) #1

declare dso_local i32 @omap_ehci_soft_phy_reset(%struct.omap_ehci_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
