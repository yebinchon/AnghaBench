; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/clk/extr_rk_clk_mux.c_rk_clk_mux_set_mux.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/clk/extr_rk_clk_mux.c_rk_clk_mux_set_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clknode = type { i32 }
%struct.rk_clk_mux_sc = type { i32, i32, i32 }

@RK_CLK_MUX_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clknode*, i32)* @rk_clk_mux_set_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk_clk_mux_set_mux(%struct.clknode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clknode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rk_clk_mux_sc*, align 8
  %8 = alloca i32, align 4
  store %struct.clknode* %0, %struct.clknode** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.clknode*, %struct.clknode** %4, align 8
  %10 = call %struct.rk_clk_mux_sc* @clknode_get_softc(%struct.clknode* %9)
  store %struct.rk_clk_mux_sc* %10, %struct.rk_clk_mux_sc** %7, align 8
  %11 = load %struct.clknode*, %struct.clknode** %4, align 8
  %12 = call i32 @DEVICE_LOCK(%struct.clknode* %11)
  %13 = load %struct.clknode*, %struct.clknode** %4, align 8
  %14 = load %struct.rk_clk_mux_sc*, %struct.rk_clk_mux_sc** %7, align 8
  %15 = getelementptr inbounds %struct.rk_clk_mux_sc, %struct.rk_clk_mux_sc* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.rk_clk_mux_sc*, %struct.rk_clk_mux_sc** %7, align 8
  %18 = getelementptr inbounds %struct.rk_clk_mux_sc, %struct.rk_clk_mux_sc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.rk_clk_mux_sc*, %struct.rk_clk_mux_sc** %7, align 8
  %21 = getelementptr inbounds %struct.rk_clk_mux_sc, %struct.rk_clk_mux_sc* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = shl i32 %19, %22
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.rk_clk_mux_sc*, %struct.rk_clk_mux_sc** %7, align 8
  %26 = getelementptr inbounds %struct.rk_clk_mux_sc, %struct.rk_clk_mux_sc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %24, %27
  %29 = load %struct.rk_clk_mux_sc*, %struct.rk_clk_mux_sc** %7, align 8
  %30 = getelementptr inbounds %struct.rk_clk_mux_sc, %struct.rk_clk_mux_sc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = shl i32 %28, %31
  %33 = load i32, i32* @RK_CLK_MUX_MASK, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @MD4(%struct.clknode* %13, i32 %16, i32 %23, i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %2
  %39 = load %struct.clknode*, %struct.clknode** %4, align 8
  %40 = call i32 @DEVICE_UNLOCK(%struct.clknode* %39)
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %3, align 4
  br label %50

42:                                               ; preds = %2
  %43 = load %struct.clknode*, %struct.clknode** %4, align 8
  %44 = load %struct.rk_clk_mux_sc*, %struct.rk_clk_mux_sc** %7, align 8
  %45 = getelementptr inbounds %struct.rk_clk_mux_sc, %struct.rk_clk_mux_sc* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @RD4(%struct.clknode* %43, i32 %46, i32* %6)
  %48 = load %struct.clknode*, %struct.clknode** %4, align 8
  %49 = call i32 @DEVICE_UNLOCK(%struct.clknode* %48)
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %42, %38
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local %struct.rk_clk_mux_sc* @clknode_get_softc(%struct.clknode*) #1

declare dso_local i32 @DEVICE_LOCK(%struct.clknode*) #1

declare dso_local i32 @MD4(%struct.clknode*, i32, i32, i32) #1

declare dso_local i32 @DEVICE_UNLOCK(%struct.clknode*) #1

declare dso_local i32 @RD4(%struct.clknode*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
