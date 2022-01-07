; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_prcm.c_am335x_clk_cpsw_activate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_prcm.c_am335x_clk_cpsw_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.am335x_prcm_softc = type { i32 }
%struct.ti_clock_dev = type { i32 }

@am335x_prcm_sc = common dso_local global %struct.am335x_prcm_softc* null, align 8
@ENXIO = common dso_local global i32 0, align 4
@CM_PER_CPGMAC0_CLKCTRL = common dso_local global i32 0, align 4
@CM_PER_CPSW_CLKSTCTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_clock_dev*)* @am335x_clk_cpsw_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @am335x_clk_cpsw_activate(%struct.ti_clock_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ti_clock_dev*, align 8
  %4 = alloca %struct.am335x_prcm_softc*, align 8
  store %struct.ti_clock_dev* %0, %struct.ti_clock_dev** %3, align 8
  %5 = load %struct.am335x_prcm_softc*, %struct.am335x_prcm_softc** @am335x_prcm_sc, align 8
  store %struct.am335x_prcm_softc* %5, %struct.am335x_prcm_softc** %4, align 8
  %6 = load %struct.am335x_prcm_softc*, %struct.am335x_prcm_softc** %4, align 8
  %7 = icmp eq %struct.am335x_prcm_softc* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @ENXIO, align 4
  store i32 %9, i32* %2, align 4
  br label %29

10:                                               ; preds = %1
  %11 = load i32, i32* @CM_PER_CPGMAC0_CLKCTRL, align 4
  %12 = call i32 @prcm_write_4(i32 %11, i32 2)
  br label %13

13:                                               ; preds = %18, %10
  %14 = load i32, i32* @CM_PER_CPGMAC0_CLKCTRL, align 4
  %15 = call i32 @prcm_read_4(i32 %14)
  %16 = and i32 %15, 196608
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %13

19:                                               ; preds = %13
  %20 = load i32, i32* @CM_PER_CPSW_CLKSTCTRL, align 4
  %21 = call i32 @prcm_write_4(i32 %20, i32 2)
  br label %22

22:                                               ; preds = %27, %19
  %23 = load i32, i32* @CM_PER_CPSW_CLKSTCTRL, align 4
  %24 = call i32 @prcm_read_4(i32 %23)
  %25 = and i32 %24, 16
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %22

28:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %8
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @prcm_write_4(i32, i32) #1

declare dso_local i32 @prcm_read_4(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
