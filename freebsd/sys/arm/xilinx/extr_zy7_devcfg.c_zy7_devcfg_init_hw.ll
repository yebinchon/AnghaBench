; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/xilinx/extr_zy7_devcfg.c_zy7_devcfg_init_hw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/xilinx/extr_zy7_devcfg.c_zy7_devcfg_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zy7_devcfg_softc = type { i32 }

@ZY7_DEVCFG_CTRL = common dso_local global i32 0, align 4
@ZY7_DEVCFG_CTRL_PCFG_PROG_B = common dso_local global i32 0, align 4
@ZY7_DEVCFG_CTRL_PCAP_PR = common dso_local global i32 0, align 4
@ZY7_DEVCFG_CTRL_PCAP_MODE = common dso_local global i32 0, align 4
@ZY7_DEVCFG_CTRL_USER_MODE = common dso_local global i32 0, align 4
@ZY7_DEVCFG_CTRL_RESVD_WR11 = common dso_local global i32 0, align 4
@ZY7_DEVCFG_CTRL_SPNIDEN = common dso_local global i32 0, align 4
@ZY7_DEVCFG_CTRL_SPIDEN = common dso_local global i32 0, align 4
@ZY7_DEVCFG_CTRL_NIDEN = common dso_local global i32 0, align 4
@ZY7_DEVCFG_CTRL_DBGEN = common dso_local global i32 0, align 4
@ZY7_DEVCFG_CTRL_DAP_EN_MASK = common dso_local global i32 0, align 4
@ZY7_DEVCFG_MCTRL = common dso_local global i32 0, align 4
@ZY7_DEVCFG_MCTRL_INT_PCAP_LPBK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zy7_devcfg_softc*)* @zy7_devcfg_init_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zy7_devcfg_init_hw(%struct.zy7_devcfg_softc* %0) #0 {
  %2 = alloca %struct.zy7_devcfg_softc*, align 8
  store %struct.zy7_devcfg_softc* %0, %struct.zy7_devcfg_softc** %2, align 8
  %3 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %2, align 8
  %4 = call i32 @DEVCFG_SC_ASSERT_LOCKED(%struct.zy7_devcfg_softc* %3)
  %5 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %2, align 8
  %6 = load i32, i32* @ZY7_DEVCFG_CTRL, align 4
  %7 = load i32, i32* @ZY7_DEVCFG_CTRL_PCFG_PROG_B, align 4
  %8 = load i32, i32* @ZY7_DEVCFG_CTRL_PCAP_PR, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @ZY7_DEVCFG_CTRL_PCAP_MODE, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @ZY7_DEVCFG_CTRL_USER_MODE, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @ZY7_DEVCFG_CTRL_RESVD_WR11, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @ZY7_DEVCFG_CTRL_SPNIDEN, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @ZY7_DEVCFG_CTRL_SPIDEN, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @ZY7_DEVCFG_CTRL_NIDEN, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @ZY7_DEVCFG_CTRL_DBGEN, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @ZY7_DEVCFG_CTRL_DAP_EN_MASK, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @WR4(%struct.zy7_devcfg_softc* %5, i32 %6, i32 %25)
  %27 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %2, align 8
  %28 = load i32, i32* @ZY7_DEVCFG_MCTRL, align 4
  %29 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %2, align 8
  %30 = load i32, i32* @ZY7_DEVCFG_MCTRL, align 4
  %31 = call i32 @RD4(%struct.zy7_devcfg_softc* %29, i32 %30)
  %32 = load i32, i32* @ZY7_DEVCFG_MCTRL_INT_PCAP_LPBK, align 4
  %33 = xor i32 %32, -1
  %34 = and i32 %31, %33
  %35 = call i32 @WR4(%struct.zy7_devcfg_softc* %27, i32 %28, i32 %34)
  ret void
}

declare dso_local i32 @DEVCFG_SC_ASSERT_LOCKED(%struct.zy7_devcfg_softc*) #1

declare dso_local i32 @WR4(%struct.zy7_devcfg_softc*, i32, i32) #1

declare dso_local i32 @RD4(%struct.zy7_devcfg_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
