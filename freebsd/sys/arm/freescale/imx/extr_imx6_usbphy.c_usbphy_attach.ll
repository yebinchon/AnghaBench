; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_usbphy.c_usbphy_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_usbphy.c_usbphy_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbphy_softc = type { i32, i32* }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Cannot allocate memory resources\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@IMX6_ANALOG_USB1_CHRG_DETECT = common dso_local global i64 0, align 8
@IMX6_ANALOG_USB_CHRG_DETECT_N_ENABLE = common dso_local global i32 0, align 4
@IMX6_ANALOG_USB_CHRG_DETECT_N_CHK_CHRG = common dso_local global i32 0, align 4
@CTRL_SET_REG = common dso_local global i32 0, align 4
@CTRL_SFTRST = common dso_local global i32 0, align 4
@CTRL_CLR_REG = common dso_local global i32 0, align 4
@CTRL_CLKGATE = common dso_local global i32 0, align 4
@CTRL_ENUTMILEVEL2 = common dso_local global i32 0, align 4
@CTRL_ENUTMILEVEL3 = common dso_local global i32 0, align 4
@PWD_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @usbphy_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbphy_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usbphy_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call %struct.usbphy_softc* @device_get_softc(i32 %8)
  store %struct.usbphy_softc* %9, %struct.usbphy_softc** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @SYS_RES_MEMORY, align 4
  %12 = load i32, i32* @RF_ACTIVE, align 4
  %13 = call i32* @bus_alloc_resource_any(i32 %10, i32 %11, i32* %6, i32 %12)
  %14 = load %struct.usbphy_softc*, %struct.usbphy_softc** %3, align 8
  %15 = getelementptr inbounds %struct.usbphy_softc, %struct.usbphy_softc* %14, i32 0, i32 1
  store i32* %13, i32** %15, align 8
  %16 = load %struct.usbphy_softc*, %struct.usbphy_softc** %3, align 8
  %17 = getelementptr inbounds %struct.usbphy_softc, %struct.usbphy_softc* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @device_printf(i32 %21, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @ENXIO, align 4
  store i32 %23, i32* %4, align 4
  br label %82

24:                                               ; preds = %1
  store i64 34377728, i64* %7, align 8
  %25 = load %struct.usbphy_softc*, %struct.usbphy_softc** %3, align 8
  %26 = getelementptr inbounds %struct.usbphy_softc, %struct.usbphy_softc* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = call i64 @BUS_SPACE_PHYSADDR(i32* %27, i32 0)
  %29 = icmp eq i64 %28, 34377728
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load %struct.usbphy_softc*, %struct.usbphy_softc** %3, align 8
  %32 = getelementptr inbounds %struct.usbphy_softc, %struct.usbphy_softc* %31, i32 0, i32 0
  store i32 0, i32* %32, align 8
  store i32 0, i32* %5, align 4
  br label %36

33:                                               ; preds = %24
  %34 = load %struct.usbphy_softc*, %struct.usbphy_softc** %3, align 8
  %35 = getelementptr inbounds %struct.usbphy_softc, %struct.usbphy_softc* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  store i32 96, i32* %5, align 4
  br label %36

36:                                               ; preds = %33, %30
  %37 = load i64, i64* @IMX6_ANALOG_USB1_CHRG_DETECT, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %37, %39
  %41 = load i32, i32* @IMX6_ANALOG_USB_CHRG_DETECT_N_ENABLE, align 4
  %42 = load i32, i32* @IMX6_ANALOG_USB_CHRG_DETECT_N_CHK_CHRG, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @imx6_anatop_write_4(i64 %40, i32 %43)
  %45 = load i64, i64* @IMX6_ANALOG_USB1_CHRG_DETECT, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %45, %47
  %49 = load i32, i32* @IMX6_ANALOG_USB_CHRG_DETECT_N_ENABLE, align 4
  %50 = load i32, i32* @IMX6_ANALOG_USB_CHRG_DETECT_N_CHK_CHRG, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @imx6_anatop_write_4(i64 %48, i32 %51)
  %53 = load i32, i32* %2, align 4
  %54 = call i32 @imx_ccm_usbphy_enable(i32 %53)
  %55 = load %struct.usbphy_softc*, %struct.usbphy_softc** %3, align 8
  %56 = getelementptr inbounds %struct.usbphy_softc, %struct.usbphy_softc* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* @CTRL_SET_REG, align 4
  %59 = load i32, i32* @CTRL_SFTRST, align 4
  %60 = call i32 @bus_write_4(i32* %57, i32 %58, i32 %59)
  %61 = load %struct.usbphy_softc*, %struct.usbphy_softc** %3, align 8
  %62 = getelementptr inbounds %struct.usbphy_softc, %struct.usbphy_softc* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* @CTRL_CLR_REG, align 4
  %65 = load i32, i32* @CTRL_SFTRST, align 4
  %66 = load i32, i32* @CTRL_CLKGATE, align 4
  %67 = or i32 %65, %66
  %68 = call i32 @bus_write_4(i32* %63, i32 %64, i32 %67)
  %69 = load %struct.usbphy_softc*, %struct.usbphy_softc** %3, align 8
  %70 = getelementptr inbounds %struct.usbphy_softc, %struct.usbphy_softc* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* @CTRL_SET_REG, align 4
  %73 = load i32, i32* @CTRL_ENUTMILEVEL2, align 4
  %74 = load i32, i32* @CTRL_ENUTMILEVEL3, align 4
  %75 = or i32 %73, %74
  %76 = call i32 @bus_write_4(i32* %71, i32 %72, i32 %75)
  %77 = load %struct.usbphy_softc*, %struct.usbphy_softc** %3, align 8
  %78 = getelementptr inbounds %struct.usbphy_softc, %struct.usbphy_softc* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* @PWD_REG, align 4
  %81 = call i32 @bus_write_4(i32* %79, i32 %80, i32 0)
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %36, %20
  %83 = load i32, i32* %4, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load i32, i32* %2, align 4
  %87 = call i32 @usbphy_detach(i32 %86)
  br label %88

88:                                               ; preds = %85, %82
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local %struct.usbphy_softc* @device_get_softc(i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @BUS_SPACE_PHYSADDR(i32*, i32) #1

declare dso_local i32 @imx6_anatop_write_4(i64, i32) #1

declare dso_local i32 @imx_ccm_usbphy_enable(i32) #1

declare dso_local i32 @bus_write_4(i32*, i32, i32) #1

declare dso_local i32 @usbphy_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
