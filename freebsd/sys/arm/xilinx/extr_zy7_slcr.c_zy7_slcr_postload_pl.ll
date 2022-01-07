; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/xilinx/extr_zy7_slcr.c_zy7_slcr_postload_pl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/xilinx/extr_zy7_slcr.c_zy7_slcr_postload_pl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zy7_slcr_softc = type { i32 }

@zy7_slcr_softc_p = common dso_local global %struct.zy7_slcr_softc* null, align 8
@ZY7_SLCR_LVL_SHFTR_EN = common dso_local global i32 0, align 4
@ZY7_SLCR_LVL_SHFTR_EN_ALL = common dso_local global i32 0, align 4
@ZY7_SLCR_FPGA_RST_CTRL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zy7_slcr_postload_pl(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zy7_slcr_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load %struct.zy7_slcr_softc*, %struct.zy7_slcr_softc** @zy7_slcr_softc_p, align 8
  store %struct.zy7_slcr_softc* %4, %struct.zy7_slcr_softc** %3, align 8
  %5 = load %struct.zy7_slcr_softc*, %struct.zy7_slcr_softc** %3, align 8
  %6 = icmp ne %struct.zy7_slcr_softc* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %28

8:                                                ; preds = %1
  %9 = load %struct.zy7_slcr_softc*, %struct.zy7_slcr_softc** %3, align 8
  %10 = call i32 @ZSLCR_LOCK(%struct.zy7_slcr_softc* %9)
  %11 = load %struct.zy7_slcr_softc*, %struct.zy7_slcr_softc** %3, align 8
  %12 = call i32 @zy7_slcr_unlock(%struct.zy7_slcr_softc* %11)
  %13 = load i32, i32* %2, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %8
  %16 = load %struct.zy7_slcr_softc*, %struct.zy7_slcr_softc** %3, align 8
  %17 = load i32, i32* @ZY7_SLCR_LVL_SHFTR_EN, align 4
  %18 = load i32, i32* @ZY7_SLCR_LVL_SHFTR_EN_ALL, align 4
  %19 = call i32 @WR4(%struct.zy7_slcr_softc* %16, i32 %17, i32 %18)
  br label %20

20:                                               ; preds = %15, %8
  %21 = load %struct.zy7_slcr_softc*, %struct.zy7_slcr_softc** %3, align 8
  %22 = load i32, i32* @ZY7_SLCR_FPGA_RST_CTRL, align 4
  %23 = call i32 @WR4(%struct.zy7_slcr_softc* %21, i32 %22, i32 0)
  %24 = load %struct.zy7_slcr_softc*, %struct.zy7_slcr_softc** %3, align 8
  %25 = call i32 @zy7_slcr_lock(%struct.zy7_slcr_softc* %24)
  %26 = load %struct.zy7_slcr_softc*, %struct.zy7_slcr_softc** %3, align 8
  %27 = call i32 @ZSLCR_UNLOCK(%struct.zy7_slcr_softc* %26)
  br label %28

28:                                               ; preds = %20, %7
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
