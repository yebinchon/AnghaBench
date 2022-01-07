; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/clk/extr_rk_clk_composite.c_rk_clk_composite_recalc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/clk/extr_rk_clk_composite.c_rk_clk_composite_recalc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clknode = type { i32 }
%struct.rk_clk_composite_sc = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"Read: muxdiv_offset=%x, val=%x\0A\00", align 1
@RK_CLK_COMPOSITE_DIV_EXP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"parent_freq=%ju, div=%u\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Final freq=%ju\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clknode*, i32*)* @rk_clk_composite_recalc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk_clk_composite_recalc(%struct.clknode* %0, i32* %1) #0 {
  %3 = alloca %struct.clknode*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.rk_clk_composite_sc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.clknode* %0, %struct.clknode** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.clknode*, %struct.clknode** %3, align 8
  %9 = call %struct.rk_clk_composite_sc* @clknode_get_softc(%struct.clknode* %8)
  store %struct.rk_clk_composite_sc* %9, %struct.rk_clk_composite_sc** %5, align 8
  %10 = load %struct.clknode*, %struct.clknode** %3, align 8
  %11 = call i32 @DEVICE_LOCK(%struct.clknode* %10)
  %12 = load %struct.clknode*, %struct.clknode** %3, align 8
  %13 = load %struct.rk_clk_composite_sc*, %struct.rk_clk_composite_sc** %5, align 8
  %14 = getelementptr inbounds %struct.rk_clk_composite_sc, %struct.rk_clk_composite_sc* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @READ4(%struct.clknode* %12, i32 %15, i32* %6)
  %17 = load %struct.rk_clk_composite_sc*, %struct.rk_clk_composite_sc** %5, align 8
  %18 = getelementptr inbounds %struct.rk_clk_composite_sc, %struct.rk_clk_composite_sc* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 (i8*, i32, ...) @dprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20)
  %22 = load %struct.clknode*, %struct.clknode** %3, align 8
  %23 = call i32 @DEVICE_UNLOCK(%struct.clknode* %22)
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.rk_clk_composite_sc*, %struct.rk_clk_composite_sc** %5, align 8
  %26 = getelementptr inbounds %struct.rk_clk_composite_sc, %struct.rk_clk_composite_sc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %24, %27
  %29 = load %struct.rk_clk_composite_sc*, %struct.rk_clk_composite_sc** %5, align 8
  %30 = getelementptr inbounds %struct.rk_clk_composite_sc, %struct.rk_clk_composite_sc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = ashr i32 %28, %31
  store i32 %32, i32* %7, align 4
  %33 = load %struct.rk_clk_composite_sc*, %struct.rk_clk_composite_sc** %5, align 8
  %34 = getelementptr inbounds %struct.rk_clk_composite_sc, %struct.rk_clk_composite_sc* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @RK_CLK_COMPOSITE_DIV_EXP, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %2
  %40 = load i32, i32* %7, align 4
  %41 = shl i32 1, %40
  store i32 %41, i32* %7, align 4
  br label %45

42:                                               ; preds = %2
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %42, %39
  %46 = load i32*, i32** %4, align 8
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 (i8*, i32, ...) @dprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %47, i32 %48)
  %50 = load i32*, i32** %4, align 8
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %7, align 4
  %53 = sdiv i32 %51, %52
  %54 = load i32*, i32** %4, align 8
  store i32 %53, i32* %54, align 4
  %55 = load i32*, i32** %4, align 8
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (i8*, i32, ...) @dprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  ret i32 0
}

declare dso_local %struct.rk_clk_composite_sc* @clknode_get_softc(%struct.clknode*) #1

declare dso_local i32 @DEVICE_LOCK(%struct.clknode*) #1

declare dso_local i32 @READ4(%struct.clknode*, i32, i32*) #1

declare dso_local i32 @dprintf(i8*, i32, ...) #1

declare dso_local i32 @DEVICE_UNLOCK(%struct.clknode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
