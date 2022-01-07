; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_exynos5_xhci.c_dwc3_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_exynos5_xhci.c_dwc3_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_xhci_softc = type { i32 }

@GSNPSID = common dso_local global i32 0, align 4
@GSNPSID_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"It is not DWC3 controller\0A\00", align 1
@GCTL = common dso_local global i32 0, align 4
@GCTL_CORESOFTRESET = common dso_local global i32 0, align 4
@GUSB3PIPECTL_PHYSOFTRST = common dso_local global i32 0, align 4
@GUSB2PHYCFG_PHYSOFTRST = common dso_local global i32 0, align 4
@GHWPARAMS1 = common dso_local global i32 0, align 4
@GCTL_SCALEDOWN_MASK = common dso_local global i32 0, align 4
@GCTL_SCALEDOWN_SHIFT = common dso_local global i32 0, align 4
@GCTL_DISSCRAMBLE = common dso_local global i32 0, align 4
@GHWPARAMS1_EN_PWROPT_CLK = common dso_local global i64 0, align 8
@GCTL_DSBLCLKGTNG = common dso_local global i32 0, align 4
@REVISION_MASK = common dso_local global i32 0, align 4
@GCTL_U2RSTECN = common dso_local global i32 0, align 4
@GCTL_PRTCAP_OTG = common dso_local global i32 0, align 4
@GCTL_PRTCAP_HOST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.exynos_xhci_softc*)* @dwc3_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc3_init(%struct.exynos_xhci_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.exynos_xhci_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.exynos_xhci_softc* %0, %struct.exynos_xhci_softc** %3, align 8
  %7 = load %struct.exynos_xhci_softc*, %struct.exynos_xhci_softc** %3, align 8
  %8 = load i32, i32* @GSNPSID, align 4
  %9 = call i32 @READ4(%struct.exynos_xhci_softc* %7, i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @GSNPSID_MASK, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 1429405696
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %118

16:                                               ; preds = %1
  %17 = load %struct.exynos_xhci_softc*, %struct.exynos_xhci_softc** %3, align 8
  %18 = load i32, i32* @GCTL, align 4
  %19 = load i32, i32* @GCTL_CORESOFTRESET, align 4
  %20 = call i32 @WRITE4(%struct.exynos_xhci_softc* %17, i32 %18, i32 %19)
  %21 = load %struct.exynos_xhci_softc*, %struct.exynos_xhci_softc** %3, align 8
  %22 = call i32 @GUSB3PIPECTL(i32 0)
  %23 = load i32, i32* @GUSB3PIPECTL_PHYSOFTRST, align 4
  %24 = call i32 @WRITE4(%struct.exynos_xhci_softc* %21, i32 %22, i32 %23)
  %25 = load %struct.exynos_xhci_softc*, %struct.exynos_xhci_softc** %3, align 8
  %26 = call i32 @GUSB2PHYCFG(i32 0)
  %27 = load i32, i32* @GUSB2PHYCFG_PHYSOFTRST, align 4
  %28 = call i32 @WRITE4(%struct.exynos_xhci_softc* %25, i32 %26, i32 %27)
  %29 = call i32 @DELAY(i32 100000)
  %30 = load %struct.exynos_xhci_softc*, %struct.exynos_xhci_softc** %3, align 8
  %31 = call i32 @GUSB3PIPECTL(i32 0)
  %32 = call i32 @READ4(%struct.exynos_xhci_softc* %30, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* @GUSB3PIPECTL_PHYSOFTRST, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %6, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %6, align 4
  %37 = load %struct.exynos_xhci_softc*, %struct.exynos_xhci_softc** %3, align 8
  %38 = call i32 @GUSB3PIPECTL(i32 0)
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @WRITE4(%struct.exynos_xhci_softc* %37, i32 %38, i32 %39)
  %41 = load %struct.exynos_xhci_softc*, %struct.exynos_xhci_softc** %3, align 8
  %42 = call i32 @GUSB2PHYCFG(i32 0)
  %43 = call i32 @READ4(%struct.exynos_xhci_softc* %41, i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* @GUSB2PHYCFG_PHYSOFTRST, align 4
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %6, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %6, align 4
  %48 = load %struct.exynos_xhci_softc*, %struct.exynos_xhci_softc** %3, align 8
  %49 = call i32 @GUSB2PHYCFG(i32 0)
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @WRITE4(%struct.exynos_xhci_softc* %48, i32 %49, i32 %50)
  %52 = load %struct.exynos_xhci_softc*, %struct.exynos_xhci_softc** %3, align 8
  %53 = load i32, i32* @GCTL, align 4
  %54 = call i32 @READ4(%struct.exynos_xhci_softc* %52, i32 %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* @GCTL_CORESOFTRESET, align 4
  %56 = xor i32 %55, -1
  %57 = load i32, i32* %6, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %6, align 4
  %59 = load %struct.exynos_xhci_softc*, %struct.exynos_xhci_softc** %3, align 8
  %60 = load i32, i32* @GCTL, align 4
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @WRITE4(%struct.exynos_xhci_softc* %59, i32 %60, i32 %61)
  %63 = load %struct.exynos_xhci_softc*, %struct.exynos_xhci_softc** %3, align 8
  %64 = load i32, i32* @GHWPARAMS1, align 4
  %65 = call i32 @READ4(%struct.exynos_xhci_softc* %63, i32 %64)
  store i32 %65, i32* %4, align 4
  %66 = load %struct.exynos_xhci_softc*, %struct.exynos_xhci_softc** %3, align 8
  %67 = load i32, i32* @GCTL, align 4
  %68 = call i32 @READ4(%struct.exynos_xhci_softc* %66, i32 %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* @GCTL_SCALEDOWN_MASK, align 4
  %70 = load i32, i32* @GCTL_SCALEDOWN_SHIFT, align 4
  %71 = shl i32 %69, %70
  %72 = xor i32 %71, -1
  %73 = load i32, i32* %6, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* @GCTL_DISSCRAMBLE, align 4
  %76 = xor i32 %75, -1
  %77 = load i32, i32* %6, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %4, align 4
  %80 = call i64 @GHWPARAMS1_EN_PWROPT(i32 %79)
  %81 = load i64, i64* @GHWPARAMS1_EN_PWROPT_CLK, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %16
  %84 = load i32, i32* @GCTL_DSBLCLKGTNG, align 4
  %85 = xor i32 %84, -1
  %86 = load i32, i32* %6, align 4
  %87 = and i32 %86, %85
  store i32 %87, i32* %6, align 4
  br label %88

88:                                               ; preds = %83, %16
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* @REVISION_MASK, align 4
  %91 = and i32 %89, %90
  %92 = icmp slt i32 %91, 6410
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = load i32, i32* @GCTL_U2RSTECN, align 4
  %95 = load i32, i32* %6, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %6, align 4
  br label %97

97:                                               ; preds = %93, %88
  %98 = load %struct.exynos_xhci_softc*, %struct.exynos_xhci_softc** %3, align 8
  %99 = load i32, i32* @GCTL, align 4
  %100 = load i32, i32* %6, align 4
  %101 = call i32 @WRITE4(%struct.exynos_xhci_softc* %98, i32 %99, i32 %100)
  %102 = load %struct.exynos_xhci_softc*, %struct.exynos_xhci_softc** %3, align 8
  %103 = load i32, i32* @GCTL, align 4
  %104 = call i32 @READ4(%struct.exynos_xhci_softc* %102, i32 %103)
  store i32 %104, i32* %6, align 4
  %105 = load i32, i32* @GCTL_PRTCAP_OTG, align 4
  %106 = call i32 @GCTL_PRTCAPDIR(i32 %105)
  %107 = xor i32 %106, -1
  %108 = load i32, i32* %6, align 4
  %109 = and i32 %108, %107
  store i32 %109, i32* %6, align 4
  %110 = load i32, i32* @GCTL_PRTCAP_HOST, align 4
  %111 = call i32 @GCTL_PRTCAPDIR(i32 %110)
  %112 = load i32, i32* %6, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %6, align 4
  %114 = load %struct.exynos_xhci_softc*, %struct.exynos_xhci_softc** %3, align 8
  %115 = load i32, i32* @GCTL, align 4
  %116 = load i32, i32* %6, align 4
  %117 = call i32 @WRITE4(%struct.exynos_xhci_softc* %114, i32 %115, i32 %116)
  store i32 0, i32* %2, align 4
  br label %118

118:                                              ; preds = %97, %14
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

declare dso_local i32 @READ4(%struct.exynos_xhci_softc*, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @WRITE4(%struct.exynos_xhci_softc*, i32, i32) #1

declare dso_local i32 @GUSB3PIPECTL(i32) #1

declare dso_local i32 @GUSB2PHYCFG(i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i64 @GHWPARAMS1_EN_PWROPT(i32) #1

declare dso_local i32 @GCTL_PRTCAPDIR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
