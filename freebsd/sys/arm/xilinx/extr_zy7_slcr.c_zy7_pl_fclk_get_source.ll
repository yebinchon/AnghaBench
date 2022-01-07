; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/xilinx/extr_zy7_slcr.c_zy7_pl_fclk_get_source.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/xilinx/extr_zy7_slcr.c_zy7_pl_fclk_get_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zy7_slcr_softc = type { i32 }

@zy7_slcr_softc_p = common dso_local global %struct.zy7_slcr_softc* null, align 8
@ZY7_SLCR_FPGA_CLK_CTRL_SRCSEL_MASK = common dso_local global i32 0, align 4
@ZY7_SLCR_FPGA_CLK_CTRL_SRCSEL_SHIFT = common dso_local global i32 0, align 4
@ZY7_PL_FCLK_SRC_IO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zy7_pl_fclk_get_source(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.zy7_slcr_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load %struct.zy7_slcr_softc*, %struct.zy7_slcr_softc** @zy7_slcr_softc_p, align 8
  store %struct.zy7_slcr_softc* %7, %struct.zy7_slcr_softc** %4, align 8
  %8 = load %struct.zy7_slcr_softc*, %struct.zy7_slcr_softc** %4, align 8
  %9 = icmp ne %struct.zy7_slcr_softc* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %32

11:                                               ; preds = %1
  %12 = load %struct.zy7_slcr_softc*, %struct.zy7_slcr_softc** %4, align 8
  %13 = call i32 @ZSLCR_LOCK(%struct.zy7_slcr_softc* %12)
  %14 = load %struct.zy7_slcr_softc*, %struct.zy7_slcr_softc** %4, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @ZY7_SLCR_FPGA_CLK_CTRL(i32 %15)
  %17 = call i32 @RD4(%struct.zy7_slcr_softc* %14, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @ZY7_SLCR_FPGA_CLK_CTRL_SRCSEL_MASK, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* @ZY7_SLCR_FPGA_CLK_CTRL_SRCSEL_SHIFT, align 4
  %22 = ashr i32 %20, %21
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = and i32 %23, 2
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %11
  %27 = load i32, i32* @ZY7_PL_FCLK_SRC_IO, align 4
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %26, %11
  %29 = load %struct.zy7_slcr_softc*, %struct.zy7_slcr_softc** %4, align 8
  %30 = call i32 @ZSLCR_UNLOCK(%struct.zy7_slcr_softc* %29)
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %28, %10
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @ZSLCR_LOCK(%struct.zy7_slcr_softc*) #1

declare dso_local i32 @RD4(%struct.zy7_slcr_softc*, i32) #1

declare dso_local i32 @ZY7_SLCR_FPGA_CLK_CTRL(i32) #1

declare dso_local i32 @ZSLCR_UNLOCK(%struct.zy7_slcr_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
