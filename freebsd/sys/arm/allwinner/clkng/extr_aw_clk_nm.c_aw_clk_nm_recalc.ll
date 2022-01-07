; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/clkng/extr_aw_clk_nm.c_aw_clk_nm_recalc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/clkng/extr_aw_clk_nm.c_aw_clk_nm_recalc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clknode = type { i32 }
%struct.aw_clk_nm_sc = type { i32, i32, i32, i32, i32 }

@AW_CLK_HAS_PREDIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clknode*, i32*)* @aw_clk_nm_recalc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aw_clk_nm_recalc(%struct.clknode* %0, i32* %1) #0 {
  %3 = alloca %struct.clknode*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.aw_clk_nm_sc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.clknode* %0, %struct.clknode** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load %struct.clknode*, %struct.clknode** %3, align 8
  %11 = call %struct.aw_clk_nm_sc* @clknode_get_softc(%struct.clknode* %10)
  store %struct.aw_clk_nm_sc* %11, %struct.aw_clk_nm_sc** %5, align 8
  %12 = load %struct.clknode*, %struct.clknode** %3, align 8
  %13 = call i32 @DEVICE_LOCK(%struct.clknode* %12)
  %14 = load %struct.clknode*, %struct.clknode** %3, align 8
  %15 = load %struct.aw_clk_nm_sc*, %struct.aw_clk_nm_sc** %5, align 8
  %16 = getelementptr inbounds %struct.aw_clk_nm_sc, %struct.aw_clk_nm_sc* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @READ4(%struct.clknode* %14, i32 %17, i32* %6)
  %19 = load %struct.clknode*, %struct.clknode** %3, align 8
  %20 = call i32 @DEVICE_UNLOCK(%struct.clknode* %19)
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.aw_clk_nm_sc*, %struct.aw_clk_nm_sc** %5, align 8
  %23 = getelementptr inbounds %struct.aw_clk_nm_sc, %struct.aw_clk_nm_sc* %22, i32 0, i32 3
  %24 = call i32 @aw_clk_get_factor(i32 %21, i32* %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.aw_clk_nm_sc*, %struct.aw_clk_nm_sc** %5, align 8
  %27 = getelementptr inbounds %struct.aw_clk_nm_sc, %struct.aw_clk_nm_sc* %26, i32 0, i32 2
  %28 = call i32 @aw_clk_get_factor(i32 %25, i32* %27)
  store i32 %28, i32* %8, align 4
  %29 = load %struct.aw_clk_nm_sc*, %struct.aw_clk_nm_sc** %5, align 8
  %30 = getelementptr inbounds %struct.aw_clk_nm_sc, %struct.aw_clk_nm_sc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @AW_CLK_HAS_PREDIV, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %2
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.aw_clk_nm_sc*, %struct.aw_clk_nm_sc** %5, align 8
  %38 = getelementptr inbounds %struct.aw_clk_nm_sc, %struct.aw_clk_nm_sc* %37, i32 0, i32 1
  %39 = call i32 @aw_clk_get_factor(i32 %36, i32* %38)
  store i32 %39, i32* %9, align 4
  br label %41

40:                                               ; preds = %2
  store i32 1, i32* %9, align 4
  br label %41

41:                                               ; preds = %40, %35
  %42 = load i32*, i32** %4, align 8
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %9, align 4
  %45 = sdiv i32 %43, %44
  %46 = load i32, i32* %8, align 4
  %47 = sdiv i32 %45, %46
  %48 = load i32, i32* %7, align 4
  %49 = sdiv i32 %47, %48
  %50 = load i32*, i32** %4, align 8
  store i32 %49, i32* %50, align 4
  ret i32 0
}

declare dso_local %struct.aw_clk_nm_sc* @clknode_get_softc(%struct.clknode*) #1

declare dso_local i32 @DEVICE_LOCK(%struct.clknode*) #1

declare dso_local i32 @READ4(%struct.clknode*, i32, i32*) #1

declare dso_local i32 @DEVICE_UNLOCK(%struct.clknode*) #1

declare dso_local i32 @aw_clk_get_factor(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
