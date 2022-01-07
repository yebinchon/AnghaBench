; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/xilinx/extr_zy7_slcr.c_zy7_pl_fclk_set_source.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/xilinx/extr_zy7_slcr.c_zy7_pl_fclk_set_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zy7_slcr_softc = type { i32 }

@zy7_slcr_softc_p = common dso_local global %struct.zy7_slcr_softc* null, align 8
@ZY7_SLCR_FPGA_CLK_CTRL_SRCSEL_MASK = common dso_local global i32 0, align 4
@ZY7_SLCR_FPGA_CLK_CTRL_SRCSEL_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zy7_pl_fclk_set_source(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.zy7_slcr_softc*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load %struct.zy7_slcr_softc*, %struct.zy7_slcr_softc** @zy7_slcr_softc_p, align 8
  store %struct.zy7_slcr_softc* %8, %struct.zy7_slcr_softc** %6, align 8
  %9 = load %struct.zy7_slcr_softc*, %struct.zy7_slcr_softc** %6, align 8
  %10 = icmp ne %struct.zy7_slcr_softc* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %39

12:                                               ; preds = %2
  %13 = load %struct.zy7_slcr_softc*, %struct.zy7_slcr_softc** %6, align 8
  %14 = call i32 @ZSLCR_LOCK(%struct.zy7_slcr_softc* %13)
  %15 = load %struct.zy7_slcr_softc*, %struct.zy7_slcr_softc** %6, align 8
  %16 = call i32 @zy7_slcr_unlock(%struct.zy7_slcr_softc* %15)
  %17 = load %struct.zy7_slcr_softc*, %struct.zy7_slcr_softc** %6, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @ZY7_SLCR_FPGA_CLK_CTRL(i32 %18)
  %20 = call i32 @RD4(%struct.zy7_slcr_softc* %17, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* @ZY7_SLCR_FPGA_CLK_CTRL_SRCSEL_MASK, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %7, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @ZY7_SLCR_FPGA_CLK_CTRL_SRCSEL_SHIFT, align 4
  %27 = shl i32 %25, %26
  %28 = load i32, i32* %7, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %7, align 4
  %30 = load %struct.zy7_slcr_softc*, %struct.zy7_slcr_softc** %6, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @ZY7_SLCR_FPGA_CLK_CTRL(i32 %31)
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @WR4(%struct.zy7_slcr_softc* %30, i32 %32, i32 %33)
  %35 = load %struct.zy7_slcr_softc*, %struct.zy7_slcr_softc** %6, align 8
  %36 = call i32 @zy7_slcr_lock(%struct.zy7_slcr_softc* %35)
  %37 = load %struct.zy7_slcr_softc*, %struct.zy7_slcr_softc** %6, align 8
  %38 = call i32 @ZSLCR_UNLOCK(%struct.zy7_slcr_softc* %37)
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %12, %11
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @ZSLCR_LOCK(%struct.zy7_slcr_softc*) #1

declare dso_local i32 @zy7_slcr_unlock(%struct.zy7_slcr_softc*) #1

declare dso_local i32 @RD4(%struct.zy7_slcr_softc*, i32) #1

declare dso_local i32 @ZY7_SLCR_FPGA_CLK_CTRL(i32) #1

declare dso_local i32 @WR4(%struct.zy7_slcr_softc*, i32, i32) #1

declare dso_local i32 @zy7_slcr_lock(%struct.zy7_slcr_softc*) #1

declare dso_local i32 @ZSLCR_UNLOCK(%struct.zy7_slcr_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
