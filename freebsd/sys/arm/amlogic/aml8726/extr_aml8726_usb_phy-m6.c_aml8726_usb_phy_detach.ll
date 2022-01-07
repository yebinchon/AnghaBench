; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_usb_phy-m6.c_aml8726_usb_phy_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_usb_phy-m6.c_aml8726_usb_phy_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aml8726_usb_phy_softc = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@AML_USB_PHY_CTRL_REG = common dso_local global i32 0, align 4
@AML_USB_PHY_CTRL_POR = common dso_local global i64 0, align 8
@M_DEVBUF = common dso_local global i32 0, align 4
@aml8726_usb_phy_spec = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @aml8726_usb_phy_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aml8726_usb_phy_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aml8726_usb_phy_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.aml8726_usb_phy_softc* @device_get_softc(i32 %6)
  store %struct.aml8726_usb_phy_softc* %7, %struct.aml8726_usb_phy_softc** %3, align 8
  %8 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %3, align 8
  %9 = load i32, i32* @AML_USB_PHY_CTRL_REG, align 4
  %10 = call i64 @CSR_READ_4(%struct.aml8726_usb_phy_softc* %8, i32 %9)
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* @AML_USB_PHY_CTRL_POR, align 8
  %12 = load i64, i64* %5, align 8
  %13 = or i64 %12, %11
  store i64 %13, i64* %5, align 8
  %14 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %3, align 8
  %15 = load i32, i32* @AML_USB_PHY_CTRL_REG, align 4
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @CSR_WRITE_4(%struct.aml8726_usb_phy_softc* %14, i32 %15, i64 %16)
  %18 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %3, align 8
  %19 = load i32, i32* @AML_USB_PHY_CTRL_REG, align 4
  %20 = call i32 @CSR_BARRIER(%struct.aml8726_usb_phy_softc* %18, i32 %19)
  %21 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %3, align 8
  %22 = getelementptr inbounds %struct.aml8726_usb_phy_softc, %struct.aml8726_usb_phy_softc* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %4, align 8
  br label %24

24:                                               ; preds = %28, %1
  %25 = load i64, i64* %4, align 8
  %26 = add i64 %25, -1
  store i64 %26, i64* %4, align 8
  %27 = icmp ne i64 %25, 0
  br i1 %27, label %28, label %52

28:                                               ; preds = %24
  %29 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %3, align 8
  %30 = getelementptr inbounds %struct.aml8726_usb_phy_softc, %struct.aml8726_usb_phy_softc* %29, i32 0, i32 2
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i64, i64* %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %3, align 8
  %37 = getelementptr inbounds %struct.aml8726_usb_phy_softc, %struct.aml8726_usb_phy_softc* %36, i32 0, i32 2
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i64, i64* %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %3, align 8
  %44 = getelementptr inbounds %struct.aml8726_usb_phy_softc, %struct.aml8726_usb_phy_softc* %43, i32 0, i32 2
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i64, i64* %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @PIN_OFF_FLAG(i32 %49)
  %51 = call i32 @GPIO_PIN_SET(i32 %35, i32 %42, i32 %50)
  br label %24

52:                                               ; preds = %24
  %53 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %3, align 8
  %54 = getelementptr inbounds %struct.aml8726_usb_phy_softc, %struct.aml8726_usb_phy_softc* %53, i32 0, i32 2
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i32, i32* @M_DEVBUF, align 4
  %57 = call i32 @free(%struct.TYPE_2__* %55, i32 %56)
  %58 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %3, align 8
  %59 = getelementptr inbounds %struct.aml8726_usb_phy_softc, %struct.aml8726_usb_phy_softc* %58, i32 0, i32 2
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %59, align 8
  %60 = load i32, i32* %2, align 4
  %61 = load i32, i32* @aml8726_usb_phy_spec, align 4
  %62 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %3, align 8
  %63 = getelementptr inbounds %struct.aml8726_usb_phy_softc, %struct.aml8726_usb_phy_softc* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @bus_release_resources(i32 %60, i32 %61, i32 %64)
  ret i32 0
}

declare dso_local %struct.aml8726_usb_phy_softc* @device_get_softc(i32) #1

declare dso_local i64 @CSR_READ_4(%struct.aml8726_usb_phy_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.aml8726_usb_phy_softc*, i32, i64) #1

declare dso_local i32 @CSR_BARRIER(%struct.aml8726_usb_phy_softc*, i32) #1

declare dso_local i32 @GPIO_PIN_SET(i32, i32, i32) #1

declare dso_local i32 @PIN_OFF_FLAG(i32) #1

declare dso_local i32 @free(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @bus_release_resources(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
