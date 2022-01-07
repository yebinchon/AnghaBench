; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/clk/extr_rk_clk_armclk.c_rk_clk_armclk_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/clk/extr_rk_clk_armclk.c_rk_clk_armclk_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clknode = type { i32 }
%struct.rk_clk_armclk_sc = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clknode*, i32)* @rk_clk_armclk_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk_clk_armclk_init(%struct.clknode* %0, i32 %1) #0 {
  %3 = alloca %struct.clknode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rk_clk_armclk_sc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.clknode* %0, %struct.clknode** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.clknode*, %struct.clknode** %3, align 8
  %9 = call %struct.rk_clk_armclk_sc* @clknode_get_softc(%struct.clknode* %8)
  store %struct.rk_clk_armclk_sc* %9, %struct.rk_clk_armclk_sc** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.clknode*, %struct.clknode** %3, align 8
  %11 = call i32 @DEVICE_LOCK(%struct.clknode* %10)
  %12 = load %struct.clknode*, %struct.clknode** %3, align 8
  %13 = load %struct.rk_clk_armclk_sc*, %struct.rk_clk_armclk_sc** %5, align 8
  %14 = getelementptr inbounds %struct.rk_clk_armclk_sc, %struct.rk_clk_armclk_sc* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @READ4(%struct.clknode* %12, i32 %15, i32* %6)
  %17 = load %struct.clknode*, %struct.clknode** %3, align 8
  %18 = call i32 @DEVICE_UNLOCK(%struct.clknode* %17)
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.rk_clk_armclk_sc*, %struct.rk_clk_armclk_sc** %5, align 8
  %21 = getelementptr inbounds %struct.rk_clk_armclk_sc, %struct.rk_clk_armclk_sc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %19, %22
  %24 = load %struct.rk_clk_armclk_sc*, %struct.rk_clk_armclk_sc** %5, align 8
  %25 = getelementptr inbounds %struct.rk_clk_armclk_sc, %struct.rk_clk_armclk_sc* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = ashr i32 %23, %26
  store i32 %27, i32* %7, align 4
  %28 = load %struct.clknode*, %struct.clknode** %3, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @clknode_init_parent_idx(%struct.clknode* %28, i32 %29)
  ret i32 0
}

declare dso_local %struct.rk_clk_armclk_sc* @clknode_get_softc(%struct.clknode*) #1

declare dso_local i32 @DEVICE_LOCK(%struct.clknode*) #1

declare dso_local i32 @READ4(%struct.clknode*, i32, i32*) #1

declare dso_local i32 @DEVICE_UNLOCK(%struct.clknode*) #1

declare dso_local i32 @clknode_init_parent_idx(%struct.clknode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
