; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/clk/extr_rk_clk_composite.c_rk_clk_composite_set_mux.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/clk/extr_rk_clk_composite.c_rk_clk_composite_set_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clknode = type { i32 }
%struct.rk_clk_composite_sc = type { i32, i32, i32, i32 }

@RK_CLK_COMPOSITE_HAVE_MUX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Set mux to %d\0A\00", align 1
@RK_CLK_COMPOSITE_MASK_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Write: muxdiv_offset=%x, val=%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clknode*, i32)* @rk_clk_composite_set_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk_clk_composite_set_mux(%struct.clknode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clknode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rk_clk_composite_sc*, align 8
  %7 = alloca i32, align 4
  store %struct.clknode* %0, %struct.clknode** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.clknode*, %struct.clknode** %4, align 8
  %9 = call %struct.rk_clk_composite_sc* @clknode_get_softc(%struct.clknode* %8)
  store %struct.rk_clk_composite_sc* %9, %struct.rk_clk_composite_sc** %6, align 8
  %10 = load %struct.rk_clk_composite_sc*, %struct.rk_clk_composite_sc** %6, align 8
  %11 = getelementptr inbounds %struct.rk_clk_composite_sc, %struct.rk_clk_composite_sc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @RK_CLK_COMPOSITE_HAVE_MUX, align 4
  %14 = and i32 %12, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %49

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = call i32 (i8*, i32, ...) @dprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.clknode*, %struct.clknode** %4, align 8
  %21 = call i32 @DEVICE_LOCK(%struct.clknode* %20)
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.rk_clk_composite_sc*, %struct.rk_clk_composite_sc** %6, align 8
  %24 = getelementptr inbounds %struct.rk_clk_composite_sc, %struct.rk_clk_composite_sc* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 %22, %25
  %27 = load i32, i32* %7, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %7, align 4
  %29 = load %struct.rk_clk_composite_sc*, %struct.rk_clk_composite_sc** %6, align 8
  %30 = getelementptr inbounds %struct.rk_clk_composite_sc, %struct.rk_clk_composite_sc* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @RK_CLK_COMPOSITE_MASK_SHIFT, align 4
  %33 = shl i32 %31, %32
  %34 = load i32, i32* %7, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %7, align 4
  %36 = load %struct.rk_clk_composite_sc*, %struct.rk_clk_composite_sc** %6, align 8
  %37 = getelementptr inbounds %struct.rk_clk_composite_sc, %struct.rk_clk_composite_sc* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 (i8*, i32, ...) @dprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %39)
  %41 = load %struct.clknode*, %struct.clknode** %4, align 8
  %42 = load %struct.rk_clk_composite_sc*, %struct.rk_clk_composite_sc** %6, align 8
  %43 = getelementptr inbounds %struct.rk_clk_composite_sc, %struct.rk_clk_composite_sc* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @WRITE4(%struct.clknode* %41, i32 %44, i32 %45)
  %47 = load %struct.clknode*, %struct.clknode** %4, align 8
  %48 = call i32 @DEVICE_UNLOCK(%struct.clknode* %47)
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %17, %16
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.rk_clk_composite_sc* @clknode_get_softc(%struct.clknode*) #1

declare dso_local i32 @dprintf(i8*, i32, ...) #1

declare dso_local i32 @DEVICE_LOCK(%struct.clknode*) #1

declare dso_local i32 @WRITE4(%struct.clknode*, i32, i32) #1

declare dso_local i32 @DEVICE_UNLOCK(%struct.clknode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
