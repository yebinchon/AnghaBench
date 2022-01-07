; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_usbphy.c_usbphy_phy_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_usbphy.c_usbphy_phy_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phynode = type { i32 }
%struct.usbphy_softc = type { i64, i32 }

@USB_IFC_TYPE_UTMI = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Only UTMI interface is supported.\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phynode*, i32)* @usbphy_phy_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbphy_phy_enable(%struct.phynode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.phynode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.usbphy_softc*, align 8
  %8 = alloca i32, align 4
  store %struct.phynode* %0, %struct.phynode** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.phynode*, %struct.phynode** %4, align 8
  %10 = call i32 @phynode_get_device(%struct.phynode* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.usbphy_softc* @device_get_softc(i32 %11)
  store %struct.usbphy_softc* %12, %struct.usbphy_softc** %7, align 8
  %13 = load %struct.usbphy_softc*, %struct.usbphy_softc** %7, align 8
  %14 = getelementptr inbounds %struct.usbphy_softc, %struct.usbphy_softc* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @USB_IFC_TYPE_UTMI, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.usbphy_softc*, %struct.usbphy_softc** %7, align 8
  %20 = getelementptr inbounds %struct.usbphy_softc, %struct.usbphy_softc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @device_printf(i32 %21, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @ENXIO, align 4
  store i32 %23, i32* %3, align 4
  br label %35

24:                                               ; preds = %2
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load %struct.usbphy_softc*, %struct.usbphy_softc** %7, align 8
  %29 = call i32 @usbphy_utmi_enable(%struct.usbphy_softc* %28)
  store i32 %29, i32* %8, align 4
  br label %33

30:                                               ; preds = %24
  %31 = load %struct.usbphy_softc*, %struct.usbphy_softc** %7, align 8
  %32 = call i32 @usbphy_utmi_disable(%struct.usbphy_softc* %31)
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %30, %27
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %33, %18
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @phynode_get_device(%struct.phynode*) #1

declare dso_local %struct.usbphy_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @usbphy_utmi_enable(%struct.usbphy_softc*) #1

declare dso_local i32 @usbphy_utmi_disable(%struct.usbphy_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
