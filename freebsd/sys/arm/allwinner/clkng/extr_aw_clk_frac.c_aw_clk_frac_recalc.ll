; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/clkng/extr_aw_clk_frac.c_aw_clk_frac_recalc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/clkng/extr_aw_clk_frac.c_aw_clk_frac_recalc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clknode = type { i32 }
%struct.aw_clk_frac_sc = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clknode*, i32*)* @aw_clk_frac_recalc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aw_clk_frac_recalc(%struct.clknode* %0, i32* %1) #0 {
  %3 = alloca %struct.clknode*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.aw_clk_frac_sc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.clknode* %0, %struct.clknode** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.clknode*, %struct.clknode** %3, align 8
  %10 = call %struct.aw_clk_frac_sc* @clknode_get_softc(%struct.clknode* %9)
  store %struct.aw_clk_frac_sc* %10, %struct.aw_clk_frac_sc** %5, align 8
  %11 = load %struct.clknode*, %struct.clknode** %3, align 8
  %12 = call i32 @DEVICE_LOCK(%struct.clknode* %11)
  %13 = load %struct.clknode*, %struct.clknode** %3, align 8
  %14 = load %struct.aw_clk_frac_sc*, %struct.aw_clk_frac_sc** %5, align 8
  %15 = getelementptr inbounds %struct.aw_clk_frac_sc, %struct.aw_clk_frac_sc* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @READ4(%struct.clknode* %13, i32 %16, i32* %6)
  %18 = load %struct.clknode*, %struct.clknode** %3, align 8
  %19 = call i32 @DEVICE_UNLOCK(%struct.clknode* %18)
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.aw_clk_frac_sc*, %struct.aw_clk_frac_sc** %5, align 8
  %22 = getelementptr inbounds %struct.aw_clk_frac_sc, %struct.aw_clk_frac_sc* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %20, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %48

27:                                               ; preds = %2
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.aw_clk_frac_sc*, %struct.aw_clk_frac_sc** %5, align 8
  %30 = getelementptr inbounds %struct.aw_clk_frac_sc, %struct.aw_clk_frac_sc* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %28, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %27
  %36 = load %struct.aw_clk_frac_sc*, %struct.aw_clk_frac_sc** %5, align 8
  %37 = getelementptr inbounds %struct.aw_clk_frac_sc, %struct.aw_clk_frac_sc* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %4, align 8
  store i32 %39, i32* %40, align 4
  br label %47

41:                                               ; preds = %27
  %42 = load %struct.aw_clk_frac_sc*, %struct.aw_clk_frac_sc** %5, align 8
  %43 = getelementptr inbounds %struct.aw_clk_frac_sc, %struct.aw_clk_frac_sc* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %4, align 8
  store i32 %45, i32* %46, align 4
  br label %47

47:                                               ; preds = %41, %35
  br label %64

48:                                               ; preds = %2
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.aw_clk_frac_sc*, %struct.aw_clk_frac_sc** %5, align 8
  %51 = getelementptr inbounds %struct.aw_clk_frac_sc, %struct.aw_clk_frac_sc* %50, i32 0, i32 1
  %52 = call i32 @aw_clk_get_factor(i32 %49, i32* %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.aw_clk_frac_sc*, %struct.aw_clk_frac_sc** %5, align 8
  %55 = getelementptr inbounds %struct.aw_clk_frac_sc, %struct.aw_clk_frac_sc* %54, i32 0, i32 0
  %56 = call i32 @aw_clk_get_factor(i32 %53, i32* %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32*, i32** %4, align 8
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %8, align 4
  %60 = mul nsw i32 %58, %59
  %61 = load i32, i32* %7, align 4
  %62 = sdiv i32 %60, %61
  %63 = load i32*, i32** %4, align 8
  store i32 %62, i32* %63, align 4
  br label %64

64:                                               ; preds = %48, %47
  ret i32 0
}

declare dso_local %struct.aw_clk_frac_sc* @clknode_get_softc(%struct.clknode*) #1

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
