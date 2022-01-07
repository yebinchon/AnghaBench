; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_exynos5_usb_phy.c_usb3_phy_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_exynos5_usb_phy.c_usb3_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_phy_softc = type { i32 }

@USB_DRD_PHYREG0 = common dso_local global i32 0, align 4
@USB_DRD_PHYPARAM0 = common dso_local global i32 0, align 4
@PHYPARAM0_REF_USE_PAD = common dso_local global i32 0, align 4
@PHYPARAM0_REF_LOSLEVEL_MASK = common dso_local global i32 0, align 4
@PHYPARAM0_REF_LOSLEVEL = common dso_local global i32 0, align 4
@USB_DRD_PHYRESUME = common dso_local global i32 0, align 4
@LINKSYSTEM_XHCI_VERSION_CTRL = common dso_local global i32 0, align 4
@USB_DRD_LINKSYSTEM = common dso_local global i32 0, align 4
@USB_DRD_PHYPARAM1 = common dso_local global i32 0, align 4
@PHYPARAM1_PCS_TXDEEMPH_MASK = common dso_local global i32 0, align 4
@PHYPARAM1_PCS_TXDEEMPH = common dso_local global i32 0, align 4
@USB_DRD_PHYUTMICLKSEL = common dso_local global i32 0, align 4
@PHYUTMICLKSEL_UTMI_CLKSEL = common dso_local global i32 0, align 4
@USB_DRD_PHYTEST = common dso_local global i32 0, align 4
@PHYTEST_POWERDOWN_HSP = common dso_local global i32 0, align 4
@PHYTEST_POWERDOWN_SSP = common dso_local global i32 0, align 4
@USB_DRD_PHYUTMI = common dso_local global i32 0, align 4
@PHYUTMI_OTGDISABLE = common dso_local global i32 0, align 4
@PHYCLKRST_REFCLKSEL_EXT_REFCLK = common dso_local global i32 0, align 4
@PHYCLKRST_FSEL_24MHZ = common dso_local global i32 0, align 4
@PHYCLKRST_MPLL_MLTPR_24MHZ = common dso_local global i32 0, align 4
@PHYCLKRST_RETENABLEN = common dso_local global i32 0, align 4
@PHYCLKRST_REF_SSP_EN = common dso_local global i32 0, align 4
@PHYCLKRST_SSC_EN = common dso_local global i32 0, align 4
@PHYCLKRST_COMMONONN = common dso_local global i32 0, align 4
@PHYCLKRST_PORTRESET = common dso_local global i32 0, align 4
@USB_DRD_PHYCLKRST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_phy_softc*)* @usb3_phy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb3_phy_init(%struct.usb_phy_softc* %0) #0 {
  %2 = alloca %struct.usb_phy_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.usb_phy_softc* %0, %struct.usb_phy_softc** %2, align 8
  %4 = load %struct.usb_phy_softc*, %struct.usb_phy_softc** %2, align 8
  %5 = load i32, i32* @USB_DRD_PHYREG0, align 4
  %6 = call i32 @WRITE4(%struct.usb_phy_softc* %4, i32 %5, i32 0)
  %7 = load %struct.usb_phy_softc*, %struct.usb_phy_softc** %2, align 8
  %8 = load i32, i32* @USB_DRD_PHYPARAM0, align 4
  %9 = call i32 @READ4(%struct.usb_phy_softc* %7, i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @PHYPARAM0_REF_USE_PAD, align 4
  %11 = xor i32 %10, -1
  %12 = load i32, i32* %3, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* @PHYPARAM0_REF_LOSLEVEL_MASK, align 4
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %3, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* @PHYPARAM0_REF_LOSLEVEL, align 4
  %19 = load i32, i32* %3, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %3, align 4
  %21 = load %struct.usb_phy_softc*, %struct.usb_phy_softc** %2, align 8
  %22 = load i32, i32* @USB_DRD_PHYPARAM0, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @WRITE4(%struct.usb_phy_softc* %21, i32 %22, i32 %23)
  %25 = load %struct.usb_phy_softc*, %struct.usb_phy_softc** %2, align 8
  %26 = load i32, i32* @USB_DRD_PHYRESUME, align 4
  %27 = call i32 @WRITE4(%struct.usb_phy_softc* %25, i32 %26, i32 0)
  %28 = load i32, i32* @LINKSYSTEM_XHCI_VERSION_CTRL, align 4
  %29 = call i32 @LINKSYSTEM_FLADJ(i32 32)
  %30 = or i32 %28, %29
  store i32 %30, i32* %3, align 4
  %31 = load %struct.usb_phy_softc*, %struct.usb_phy_softc** %2, align 8
  %32 = load i32, i32* @USB_DRD_LINKSYSTEM, align 4
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @WRITE4(%struct.usb_phy_softc* %31, i32 %32, i32 %33)
  %35 = load %struct.usb_phy_softc*, %struct.usb_phy_softc** %2, align 8
  %36 = load i32, i32* @USB_DRD_PHYPARAM1, align 4
  %37 = call i32 @READ4(%struct.usb_phy_softc* %35, i32 %36)
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* @PHYPARAM1_PCS_TXDEEMPH_MASK, align 4
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %3, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %3, align 4
  %42 = load i32, i32* @PHYPARAM1_PCS_TXDEEMPH, align 4
  %43 = load i32, i32* %3, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %3, align 4
  %45 = load %struct.usb_phy_softc*, %struct.usb_phy_softc** %2, align 8
  %46 = load i32, i32* @USB_DRD_PHYPARAM1, align 4
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @WRITE4(%struct.usb_phy_softc* %45, i32 %46, i32 %47)
  %49 = load %struct.usb_phy_softc*, %struct.usb_phy_softc** %2, align 8
  %50 = load i32, i32* @USB_DRD_PHYUTMICLKSEL, align 4
  %51 = call i32 @READ4(%struct.usb_phy_softc* %49, i32 %50)
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* @PHYUTMICLKSEL_UTMI_CLKSEL, align 4
  %53 = load i32, i32* %3, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %3, align 4
  %55 = load %struct.usb_phy_softc*, %struct.usb_phy_softc** %2, align 8
  %56 = load i32, i32* @USB_DRD_PHYUTMICLKSEL, align 4
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @WRITE4(%struct.usb_phy_softc* %55, i32 %56, i32 %57)
  %59 = load %struct.usb_phy_softc*, %struct.usb_phy_softc** %2, align 8
  %60 = load i32, i32* @USB_DRD_PHYTEST, align 4
  %61 = call i32 @READ4(%struct.usb_phy_softc* %59, i32 %60)
  store i32 %61, i32* %3, align 4
  %62 = load i32, i32* @PHYTEST_POWERDOWN_HSP, align 4
  %63 = xor i32 %62, -1
  %64 = load i32, i32* %3, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %3, align 4
  %66 = load i32, i32* @PHYTEST_POWERDOWN_SSP, align 4
  %67 = xor i32 %66, -1
  %68 = load i32, i32* %3, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %3, align 4
  %70 = load %struct.usb_phy_softc*, %struct.usb_phy_softc** %2, align 8
  %71 = load i32, i32* @USB_DRD_PHYTEST, align 4
  %72 = load i32, i32* %3, align 4
  %73 = call i32 @WRITE4(%struct.usb_phy_softc* %70, i32 %71, i32 %72)
  %74 = load %struct.usb_phy_softc*, %struct.usb_phy_softc** %2, align 8
  %75 = load i32, i32* @USB_DRD_PHYUTMI, align 4
  %76 = load i32, i32* @PHYUTMI_OTGDISABLE, align 4
  %77 = call i32 @WRITE4(%struct.usb_phy_softc* %74, i32 %75, i32 %76)
  %78 = load i32, i32* @PHYCLKRST_REFCLKSEL_EXT_REFCLK, align 4
  store i32 %78, i32* %3, align 4
  %79 = load i32, i32* @PHYCLKRST_FSEL_24MHZ, align 4
  %80 = call i32 @PHYCLKRST_FSEL(i32 %79)
  %81 = load i32, i32* %3, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %3, align 4
  %83 = load i32, i32* @PHYCLKRST_MPLL_MLTPR_24MHZ, align 4
  %84 = load i32, i32* %3, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %3, align 4
  %86 = call i32 @PHYCLKRST_SSC_REFCLKSEL(i32 136)
  %87 = load i32, i32* %3, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %3, align 4
  %89 = load i32, i32* @PHYCLKRST_RETENABLEN, align 4
  %90 = load i32, i32* @PHYCLKRST_REF_SSP_EN, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @PHYCLKRST_SSC_EN, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @PHYCLKRST_COMMONONN, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @PHYCLKRST_PORTRESET, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* %3, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %3, align 4
  %100 = load %struct.usb_phy_softc*, %struct.usb_phy_softc** %2, align 8
  %101 = load i32, i32* @USB_DRD_PHYCLKRST, align 4
  %102 = load i32, i32* %3, align 4
  %103 = call i32 @WRITE4(%struct.usb_phy_softc* %100, i32 %101, i32 %102)
  %104 = call i32 @DELAY(i32 50000)
  %105 = load i32, i32* @PHYCLKRST_PORTRESET, align 4
  %106 = xor i32 %105, -1
  %107 = load i32, i32* %3, align 4
  %108 = and i32 %107, %106
  store i32 %108, i32* %3, align 4
  %109 = load %struct.usb_phy_softc*, %struct.usb_phy_softc** %2, align 8
  %110 = load i32, i32* @USB_DRD_PHYCLKRST, align 4
  %111 = load i32, i32* %3, align 4
  %112 = call i32 @WRITE4(%struct.usb_phy_softc* %109, i32 %110, i32 %111)
  ret i32 0
}

declare dso_local i32 @WRITE4(%struct.usb_phy_softc*, i32, i32) #1

declare dso_local i32 @READ4(%struct.usb_phy_softc*, i32) #1

declare dso_local i32 @LINKSYSTEM_FLADJ(i32) #1

declare dso_local i32 @PHYCLKRST_FSEL(i32) #1

declare dso_local i32 @PHYCLKRST_SSC_REFCLKSEL(i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
