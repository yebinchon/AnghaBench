; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/clk/extr_rk_clk_gate.c_rk_clk_gate_set_gate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/clk/extr_rk_clk_gate.c_rk_clk_gate_set_gate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clknode = type { i32 }
%struct.rk_clk_gate_sc = type { i32, i32, i32, i32, i32, i32 }

@RK_CLK_GATE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clknode*, i32)* @rk_clk_gate_set_gate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk_clk_gate_set_gate(%struct.clknode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clknode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rk_clk_gate_sc*, align 8
  %8 = alloca i32, align 4
  store %struct.clknode* %0, %struct.clknode** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.clknode*, %struct.clknode** %4, align 8
  %10 = call %struct.rk_clk_gate_sc* @clknode_get_softc(%struct.clknode* %9)
  store %struct.rk_clk_gate_sc* %10, %struct.rk_clk_gate_sc** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.rk_clk_gate_sc*, %struct.rk_clk_gate_sc** %7, align 8
  %13 = getelementptr inbounds %struct.rk_clk_gate_sc, %struct.rk_clk_gate_sc* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load %struct.clknode*, %struct.clknode** %4, align 8
  %15 = call i32 @DEVICE_LOCK(%struct.clknode* %14)
  %16 = load %struct.clknode*, %struct.clknode** %4, align 8
  %17 = load %struct.rk_clk_gate_sc*, %struct.rk_clk_gate_sc** %7, align 8
  %18 = getelementptr inbounds %struct.rk_clk_gate_sc, %struct.rk_clk_gate_sc* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.rk_clk_gate_sc*, %struct.rk_clk_gate_sc** %7, align 8
  %21 = getelementptr inbounds %struct.rk_clk_gate_sc, %struct.rk_clk_gate_sc* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.rk_clk_gate_sc*, %struct.rk_clk_gate_sc** %7, align 8
  %24 = getelementptr inbounds %struct.rk_clk_gate_sc, %struct.rk_clk_gate_sc* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 %22, %25
  %27 = load %struct.rk_clk_gate_sc*, %struct.rk_clk_gate_sc** %7, align 8
  %28 = getelementptr inbounds %struct.rk_clk_gate_sc, %struct.rk_clk_gate_sc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %2
  %32 = load %struct.rk_clk_gate_sc*, %struct.rk_clk_gate_sc** %7, align 8
  %33 = getelementptr inbounds %struct.rk_clk_gate_sc, %struct.rk_clk_gate_sc* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  br label %39

35:                                               ; preds = %2
  %36 = load %struct.rk_clk_gate_sc*, %struct.rk_clk_gate_sc** %7, align 8
  %37 = getelementptr inbounds %struct.rk_clk_gate_sc, %struct.rk_clk_gate_sc* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  br label %39

39:                                               ; preds = %35, %31
  %40 = phi i32 [ %34, %31 ], [ %38, %35 ]
  %41 = load %struct.rk_clk_gate_sc*, %struct.rk_clk_gate_sc** %7, align 8
  %42 = getelementptr inbounds %struct.rk_clk_gate_sc, %struct.rk_clk_gate_sc* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = shl i32 %40, %43
  %45 = load i32, i32* @RK_CLK_GATE_MASK, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @MD4(%struct.clknode* %16, i32 %19, i32 %26, i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %39
  %51 = load %struct.clknode*, %struct.clknode** %4, align 8
  %52 = call i32 @DEVICE_UNLOCK(%struct.clknode* %51)
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %3, align 4
  br label %62

54:                                               ; preds = %39
  %55 = load %struct.clknode*, %struct.clknode** %4, align 8
  %56 = load %struct.rk_clk_gate_sc*, %struct.rk_clk_gate_sc** %7, align 8
  %57 = getelementptr inbounds %struct.rk_clk_gate_sc, %struct.rk_clk_gate_sc* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @RD4(%struct.clknode* %55, i32 %58, i32* %6)
  %60 = load %struct.clknode*, %struct.clknode** %4, align 8
  %61 = call i32 @DEVICE_UNLOCK(%struct.clknode* %60)
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %54, %50
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local %struct.rk_clk_gate_sc* @clknode_get_softc(%struct.clknode*) #1

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
