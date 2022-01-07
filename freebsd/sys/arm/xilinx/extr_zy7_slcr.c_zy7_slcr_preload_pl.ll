; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/xilinx/extr_zy7_slcr.c_zy7_slcr_preload_pl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/xilinx/extr_zy7_slcr.c_zy7_slcr_preload_pl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zy7_slcr_softc = type { i32 }

@zy7_slcr_softc_p = common dso_local global %struct.zy7_slcr_softc* null, align 8
@ZY7_SLCR_FPGA_RST_CTRL = common dso_local global i32 0, align 4
@ZY7_SLCR_FPGA_RST_CTRL_RST_ALL = common dso_local global i32 0, align 4
@ZY7_SLCR_LVL_SHFTR_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zy7_slcr_preload_pl() #0 {
  %1 = alloca %struct.zy7_slcr_softc*, align 8
  %2 = load %struct.zy7_slcr_softc*, %struct.zy7_slcr_softc** @zy7_slcr_softc_p, align 8
  store %struct.zy7_slcr_softc* %2, %struct.zy7_slcr_softc** %1, align 8
  %3 = load %struct.zy7_slcr_softc*, %struct.zy7_slcr_softc** %1, align 8
  %4 = icmp ne %struct.zy7_slcr_softc* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  br label %22

6:                                                ; preds = %0
  %7 = load %struct.zy7_slcr_softc*, %struct.zy7_slcr_softc** %1, align 8
  %8 = call i32 @ZSLCR_LOCK(%struct.zy7_slcr_softc* %7)
  %9 = load %struct.zy7_slcr_softc*, %struct.zy7_slcr_softc** %1, align 8
  %10 = call i32 @zy7_slcr_unlock(%struct.zy7_slcr_softc* %9)
  %11 = load %struct.zy7_slcr_softc*, %struct.zy7_slcr_softc** %1, align 8
  %12 = load i32, i32* @ZY7_SLCR_FPGA_RST_CTRL, align 4
  %13 = load i32, i32* @ZY7_SLCR_FPGA_RST_CTRL_RST_ALL, align 4
  %14 = call i32 @WR4(%struct.zy7_slcr_softc* %11, i32 %12, i32 %13)
  %15 = load %struct.zy7_slcr_softc*, %struct.zy7_slcr_softc** %1, align 8
  %16 = load i32, i32* @ZY7_SLCR_LVL_SHFTR_EN, align 4
  %17 = call i32 @WR4(%struct.zy7_slcr_softc* %15, i32 %16, i32 0)
  %18 = load %struct.zy7_slcr_softc*, %struct.zy7_slcr_softc** %1, align 8
  %19 = call i32 @zy7_slcr_lock(%struct.zy7_slcr_softc* %18)
  %20 = load %struct.zy7_slcr_softc*, %struct.zy7_slcr_softc** %1, align 8
  %21 = call i32 @ZSLCR_UNLOCK(%struct.zy7_slcr_softc* %20)
  br label %22

22:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @ZSLCR_LOCK(%struct.zy7_slcr_softc*) #1

declare dso_local i32 @zy7_slcr_unlock(%struct.zy7_slcr_softc*) #1

declare dso_local i32 @WR4(%struct.zy7_slcr_softc*, i32, i32) #1

declare dso_local i32 @zy7_slcr_lock(%struct.zy7_slcr_softc*) #1

declare dso_local i32 @ZSLCR_UNLOCK(%struct.zy7_slcr_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
