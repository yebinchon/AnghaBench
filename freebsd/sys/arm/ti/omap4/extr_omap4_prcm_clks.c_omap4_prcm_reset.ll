; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/omap4/extr_omap4_prcm_clks.c_omap4_prcm_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/omap4/extr_omap4_prcm_clks.c_omap4_prcm_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap4_prcm_softc = type { i32 }

@PRM_INSTANCE = common dso_local global i32 0, align 4
@PRM_RSTCTRL = common dso_local global i32 0, align 4
@PRM_RSTCTRL_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @omap4_prcm_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap4_prcm_reset() #0 {
  %1 = alloca %struct.omap4_prcm_softc*, align 8
  %2 = load i32, i32* @PRM_INSTANCE, align 4
  %3 = call %struct.omap4_prcm_softc* @omap4_prcm_get_instance_softc(i32 %2)
  store %struct.omap4_prcm_softc* %3, %struct.omap4_prcm_softc** %1, align 8
  %4 = load %struct.omap4_prcm_softc*, %struct.omap4_prcm_softc** %1, align 8
  %5 = icmp eq %struct.omap4_prcm_softc* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %25

7:                                                ; preds = %0
  %8 = load %struct.omap4_prcm_softc*, %struct.omap4_prcm_softc** %1, align 8
  %9 = getelementptr inbounds %struct.omap4_prcm_softc, %struct.omap4_prcm_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @PRM_RSTCTRL, align 4
  %12 = load %struct.omap4_prcm_softc*, %struct.omap4_prcm_softc** %1, align 8
  %13 = getelementptr inbounds %struct.omap4_prcm_softc, %struct.omap4_prcm_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @PRM_RSTCTRL, align 4
  %16 = call i32 @bus_read_4(i32 %14, i32 %15)
  %17 = load i32, i32* @PRM_RSTCTRL_RESET, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @bus_write_4(i32 %10, i32 %11, i32 %18)
  %20 = load %struct.omap4_prcm_softc*, %struct.omap4_prcm_softc** %1, align 8
  %21 = getelementptr inbounds %struct.omap4_prcm_softc, %struct.omap4_prcm_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @PRM_RSTCTRL, align 4
  %24 = call i32 @bus_read_4(i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %7, %6
  ret void
}

declare dso_local %struct.omap4_prcm_softc* @omap4_prcm_get_instance_softc(i32) #1

declare dso_local i32 @bus_write_4(i32, i32, i32) #1

declare dso_local i32 @bus_read_4(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
