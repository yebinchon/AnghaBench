; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_ccm.c_imx_ccm_ipu_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_ccm.c_imx_ccm_ipu_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccm_softc = type { i32 }

@ccm_sc = common dso_local global %struct.ccm_softc* null, align 8
@CCM_CCGR3 = common dso_local global i32 0, align 4
@CCGR3_IPU1_IPU = common dso_local global i32 0, align 4
@CCGR3_IPU1_DI0 = common dso_local global i32 0, align 4
@CCGR3_IPU2_IPU = common dso_local global i32 0, align 4
@CCGR3_IPU2_DI0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @imx_ccm_ipu_enable(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ccm_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load %struct.ccm_softc*, %struct.ccm_softc** @ccm_sc, align 8
  store %struct.ccm_softc* %5, %struct.ccm_softc** %3, align 8
  %6 = load %struct.ccm_softc*, %struct.ccm_softc** %3, align 8
  %7 = load i32, i32* @CCM_CCGR3, align 4
  %8 = call i32 @RD4(%struct.ccm_softc* %6, i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %2, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load i32, i32* @CCGR3_IPU1_IPU, align 4
  %13 = load i32, i32* @CCGR3_IPU1_DI0, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* %4, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %4, align 4
  br label %23

17:                                               ; preds = %1
  %18 = load i32, i32* @CCGR3_IPU2_IPU, align 4
  %19 = load i32, i32* @CCGR3_IPU2_DI0, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* %4, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %17, %11
  %24 = load %struct.ccm_softc*, %struct.ccm_softc** %3, align 8
  %25 = load i32, i32* @CCM_CCGR3, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @WR4(%struct.ccm_softc* %24, i32 %25, i32 %26)
  ret void
}

declare dso_local i32 @RD4(%struct.ccm_softc*, i32) #1

declare dso_local i32 @WR4(%struct.ccm_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
