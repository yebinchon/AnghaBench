; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_hdmi.c_a10hdmi_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_hdmi.c_a10hdmi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a10hdmi_softc = type { i32 }

@HDMI_CTRL = common dso_local global i32 0, align 4
@CTRL_MODULE_EN = common dso_local global i32 0, align 4
@HDMI_PADCTRL0 = common dso_local global i32 0, align 4
@PADCTRL0_BIASEN = common dso_local global i32 0, align 4
@PADCTRL0_LDOCEN = common dso_local global i32 0, align 4
@PADCTRL0_LDODEN = common dso_local global i32 0, align 4
@PADCTRL0_PWENC = common dso_local global i32 0, align 4
@PADCTRL0_PWEND = common dso_local global i32 0, align 4
@PADCTRL0_PWENG = common dso_local global i32 0, align 4
@PADCTRL0_CKEN = common dso_local global i32 0, align 4
@PADCTRL0_TXEN = common dso_local global i32 0, align 4
@HDMI_PADCTRL1 = common dso_local global i32 0, align 4
@PADCTRL1_AMP_OPT = common dso_local global i32 0, align 4
@PADCTRL1_AMPCK_OPT = common dso_local global i32 0, align 4
@PADCTRL1_EMP_OPT = common dso_local global i32 0, align 4
@PADCTRL1_EMPCK_OPT = common dso_local global i32 0, align 4
@PADCTRL1_REG_DEN = common dso_local global i32 0, align 4
@PADCTRL1_REG_DENCK = common dso_local global i32 0, align 4
@PADCTRL1_REG_EMP_EN = common dso_local global i32 0, align 4
@PADCTRL1_REG_AMP_EN = common dso_local global i32 0, align 4
@HDMI_PLLDBG0 = common dso_local global i32 0, align 4
@PLLDBG0_CKIN_SEL_PLL3 = common dso_local global i32 0, align 4
@HDMI_ENABLE_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.a10hdmi_softc*)* @a10hdmi_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @a10hdmi_init(%struct.a10hdmi_softc* %0) #0 {
  %2 = alloca %struct.a10hdmi_softc*, align 8
  store %struct.a10hdmi_softc* %0, %struct.a10hdmi_softc** %2, align 8
  %3 = load %struct.a10hdmi_softc*, %struct.a10hdmi_softc** %2, align 8
  %4 = load i32, i32* @HDMI_CTRL, align 4
  %5 = load i32, i32* @CTRL_MODULE_EN, align 4
  %6 = call i32 @HDMI_WRITE(%struct.a10hdmi_softc* %3, i32 %4, i32 %5)
  %7 = load %struct.a10hdmi_softc*, %struct.a10hdmi_softc** %2, align 8
  %8 = load i32, i32* @HDMI_PADCTRL0, align 4
  %9 = load i32, i32* @PADCTRL0_BIASEN, align 4
  %10 = load i32, i32* @PADCTRL0_LDOCEN, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @PADCTRL0_LDODEN, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @PADCTRL0_PWENC, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @PADCTRL0_PWEND, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @PADCTRL0_PWENG, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @PADCTRL0_CKEN, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @PADCTRL0_TXEN, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @HDMI_WRITE(%struct.a10hdmi_softc* %7, i32 %8, i32 %23)
  %25 = load %struct.a10hdmi_softc*, %struct.a10hdmi_softc** %2, align 8
  %26 = load i32, i32* @HDMI_PADCTRL1, align 4
  %27 = load i32, i32* @PADCTRL1_AMP_OPT, align 4
  %28 = load i32, i32* @PADCTRL1_AMPCK_OPT, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @PADCTRL1_EMP_OPT, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @PADCTRL1_EMPCK_OPT, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @PADCTRL1_REG_DEN, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @PADCTRL1_REG_DENCK, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @PADCTRL1_REG_EMP_EN, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @PADCTRL1_REG_AMP_EN, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @HDMI_WRITE(%struct.a10hdmi_softc* %25, i32 %26, i32 %41)
  %43 = load %struct.a10hdmi_softc*, %struct.a10hdmi_softc** %2, align 8
  %44 = load i32, i32* @HDMI_PLLDBG0, align 4
  %45 = load i32, i32* @PLLDBG0_CKIN_SEL_PLL3, align 4
  %46 = call i32 @HDMI_WRITE(%struct.a10hdmi_softc* %43, i32 %44, i32 %45)
  %47 = load i32, i32* @HDMI_ENABLE_DELAY, align 4
  %48 = call i32 @DELAY(i32 %47)
  ret void
}

declare dso_local i32 @HDMI_WRITE(%struct.a10hdmi_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
