; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_ccm.c_ccm_init_gates.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_ccm.c_ccm_init_gates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccm_softc = type { i32 }

@CCGR0_AIPS_TZ1 = common dso_local global i32 0, align 4
@CCGR0_AIPS_TZ2 = common dso_local global i32 0, align 4
@CCGR0_ABPHDMA = common dso_local global i32 0, align 4
@CCM_CCGR0 = common dso_local global i32 0, align 4
@CCGR1_ENET = common dso_local global i32 0, align 4
@CCGR1_EPIT1 = common dso_local global i32 0, align 4
@CCGR1_GPT = common dso_local global i32 0, align 4
@CCGR1_ECSPI1 = common dso_local global i32 0, align 4
@CCGR1_ECSPI2 = common dso_local global i32 0, align 4
@CCGR1_ECSPI3 = common dso_local global i32 0, align 4
@CCGR1_ECSPI4 = common dso_local global i32 0, align 4
@CCGR1_ECSPI5 = common dso_local global i32 0, align 4
@CCM_CCGR1 = common dso_local global i32 0, align 4
@CCGR2_I2C1 = common dso_local global i32 0, align 4
@CCGR2_I2C2 = common dso_local global i32 0, align 4
@CCGR2_I2C3 = common dso_local global i32 0, align 4
@CCGR2_IIM = common dso_local global i32 0, align 4
@CCGR2_IOMUX_IPT = common dso_local global i32 0, align 4
@CCGR2_IPMUX1 = common dso_local global i32 0, align 4
@CCGR2_IPMUX2 = common dso_local global i32 0, align 4
@CCGR2_IPMUX3 = common dso_local global i32 0, align 4
@CCGR2_IPSYNC_IP2APB_TZASC1 = common dso_local global i32 0, align 4
@CCGR2_IPSYNC_IP2APB_TZASC2 = common dso_local global i32 0, align 4
@CCGR2_IPSYNC_VDOA = common dso_local global i32 0, align 4
@CCM_CCGR2 = common dso_local global i32 0, align 4
@CCGR3_OCRAM = common dso_local global i32 0, align 4
@CCGR3_MMDC_CORE_IPG = common dso_local global i32 0, align 4
@CCGR3_MMDC_CORE_ACLK_FAST = common dso_local global i32 0, align 4
@CCGR3_CG11 = common dso_local global i32 0, align 4
@CCGR3_CG13 = common dso_local global i32 0, align 4
@CCM_CCGR3 = common dso_local global i32 0, align 4
@CCGR4_PL301_MX6QFAST1_S133 = common dso_local global i32 0, align 4
@CCGR4_PL301_MX6QPER1_BCH = common dso_local global i32 0, align 4
@CCGR4_PL301_MX6QPER2_MAIN = common dso_local global i32 0, align 4
@CCM_CCGR4 = common dso_local global i32 0, align 4
@CCGR5_SDMA = common dso_local global i32 0, align 4
@CCGR5_SSI1 = common dso_local global i32 0, align 4
@CCGR5_SSI2 = common dso_local global i32 0, align 4
@CCGR5_SSI3 = common dso_local global i32 0, align 4
@CCGR5_UART = common dso_local global i32 0, align 4
@CCGR5_UART_SERIAL = common dso_local global i32 0, align 4
@CCM_CCGR5 = common dso_local global i32 0, align 4
@CCGR6_USBOH3 = common dso_local global i32 0, align 4
@CCGR6_USDHC1 = common dso_local global i32 0, align 4
@CCGR6_USDHC2 = common dso_local global i32 0, align 4
@CCGR6_USDHC3 = common dso_local global i32 0, align 4
@CCGR6_USDHC4 = common dso_local global i32 0, align 4
@CCM_CCGR6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccm_softc*)* @ccm_init_gates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccm_init_gates(%struct.ccm_softc* %0) #0 {
  %2 = alloca %struct.ccm_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.ccm_softc* %0, %struct.ccm_softc** %2, align 8
  %4 = load i32, i32* @CCGR0_AIPS_TZ1, align 4
  %5 = load i32, i32* @CCGR0_AIPS_TZ2, align 4
  %6 = or i32 %4, %5
  %7 = load i32, i32* @CCGR0_ABPHDMA, align 4
  %8 = or i32 %6, %7
  store i32 %8, i32* %3, align 4
  %9 = load %struct.ccm_softc*, %struct.ccm_softc** %2, align 8
  %10 = load i32, i32* @CCM_CCGR0, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @WR4(%struct.ccm_softc* %9, i32 %10, i32 %11)
  %13 = load i32, i32* @CCGR1_ENET, align 4
  %14 = load i32, i32* @CCGR1_EPIT1, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @CCGR1_GPT, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @CCGR1_ECSPI1, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @CCGR1_ECSPI2, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @CCGR1_ECSPI3, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @CCGR1_ECSPI4, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @CCGR1_ECSPI5, align 4
  %27 = or i32 %25, %26
  store i32 %27, i32* %3, align 4
  %28 = load %struct.ccm_softc*, %struct.ccm_softc** %2, align 8
  %29 = load i32, i32* @CCM_CCGR1, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @WR4(%struct.ccm_softc* %28, i32 %29, i32 %30)
  %32 = load i32, i32* @CCGR2_I2C1, align 4
  %33 = load i32, i32* @CCGR2_I2C2, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @CCGR2_I2C3, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @CCGR2_IIM, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @CCGR2_IOMUX_IPT, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @CCGR2_IPMUX1, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @CCGR2_IPMUX2, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @CCGR2_IPMUX3, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @CCGR2_IPSYNC_IP2APB_TZASC1, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @CCGR2_IPSYNC_IP2APB_TZASC2, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @CCGR2_IPSYNC_VDOA, align 4
  %52 = or i32 %50, %51
  store i32 %52, i32* %3, align 4
  %53 = load %struct.ccm_softc*, %struct.ccm_softc** %2, align 8
  %54 = load i32, i32* @CCM_CCGR2, align 4
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @WR4(%struct.ccm_softc* %53, i32 %54, i32 %55)
  %57 = load i32, i32* @CCGR3_OCRAM, align 4
  %58 = load i32, i32* @CCGR3_MMDC_CORE_IPG, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @CCGR3_MMDC_CORE_ACLK_FAST, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @CCGR3_CG11, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @CCGR3_CG13, align 4
  %65 = or i32 %63, %64
  store i32 %65, i32* %3, align 4
  %66 = load %struct.ccm_softc*, %struct.ccm_softc** %2, align 8
  %67 = load i32, i32* @CCM_CCGR3, align 4
  %68 = load i32, i32* %3, align 4
  %69 = call i32 @WR4(%struct.ccm_softc* %66, i32 %67, i32 %68)
  %70 = load i32, i32* @CCGR4_PL301_MX6QFAST1_S133, align 4
  %71 = load i32, i32* @CCGR4_PL301_MX6QPER1_BCH, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @CCGR4_PL301_MX6QPER2_MAIN, align 4
  %74 = or i32 %72, %73
  store i32 %74, i32* %3, align 4
  %75 = load %struct.ccm_softc*, %struct.ccm_softc** %2, align 8
  %76 = load i32, i32* @CCM_CCGR4, align 4
  %77 = load i32, i32* %3, align 4
  %78 = call i32 @WR4(%struct.ccm_softc* %75, i32 %76, i32 %77)
  %79 = load i32, i32* @CCGR5_SDMA, align 4
  %80 = load i32, i32* @CCGR5_SSI1, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @CCGR5_SSI2, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @CCGR5_SSI3, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @CCGR5_UART, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @CCGR5_UART_SERIAL, align 4
  %89 = or i32 %87, %88
  store i32 %89, i32* %3, align 4
  %90 = load %struct.ccm_softc*, %struct.ccm_softc** %2, align 8
  %91 = load i32, i32* @CCM_CCGR5, align 4
  %92 = load i32, i32* %3, align 4
  %93 = call i32 @WR4(%struct.ccm_softc* %90, i32 %91, i32 %92)
  %94 = load i32, i32* @CCGR6_USBOH3, align 4
  %95 = load i32, i32* @CCGR6_USDHC1, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @CCGR6_USDHC2, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @CCGR6_USDHC3, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @CCGR6_USDHC4, align 4
  %102 = or i32 %100, %101
  store i32 %102, i32* %3, align 4
  %103 = load %struct.ccm_softc*, %struct.ccm_softc** %2, align 8
  %104 = load i32, i32* @CCM_CCGR6, align 4
  %105 = load i32, i32* %3, align 4
  %106 = call i32 @WR4(%struct.ccm_softc* %103, i32 %104, i32 %105)
  ret void
}

declare dso_local i32 @WR4(%struct.ccm_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
