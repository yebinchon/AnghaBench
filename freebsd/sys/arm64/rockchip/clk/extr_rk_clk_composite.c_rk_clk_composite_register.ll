; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/clk/extr_rk_clk_composite.c_rk_clk_composite_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/clk/extr_rk_clk_composite.c_rk_clk_composite_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clkdom = type { i32 }
%struct.rk_clk_composite_def = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.clknode = type { i32 }
%struct.rk_clk_composite_sc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@rk_clk_composite_clknode_class = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rk_clk_composite_register(%struct.clkdom* %0, %struct.rk_clk_composite_def* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clkdom*, align 8
  %5 = alloca %struct.rk_clk_composite_def*, align 8
  %6 = alloca %struct.clknode*, align 8
  %7 = alloca %struct.rk_clk_composite_sc*, align 8
  store %struct.clkdom* %0, %struct.clkdom** %4, align 8
  store %struct.rk_clk_composite_def* %1, %struct.rk_clk_composite_def** %5, align 8
  %8 = load %struct.clkdom*, %struct.clkdom** %4, align 8
  %9 = load %struct.rk_clk_composite_def*, %struct.rk_clk_composite_def** %5, align 8
  %10 = getelementptr inbounds %struct.rk_clk_composite_def, %struct.rk_clk_composite_def* %9, i32 0, i32 8
  %11 = call %struct.clknode* @clknode_create(%struct.clkdom* %8, i32* @rk_clk_composite_clknode_class, i32* %10)
  store %struct.clknode* %11, %struct.clknode** %6, align 8
  %12 = load %struct.clknode*, %struct.clknode** %6, align 8
  %13 = icmp eq %struct.clknode* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %83

15:                                               ; preds = %2
  %16 = load %struct.clknode*, %struct.clknode** %6, align 8
  %17 = call %struct.rk_clk_composite_sc* @clknode_get_softc(%struct.clknode* %16)
  store %struct.rk_clk_composite_sc* %17, %struct.rk_clk_composite_sc** %7, align 8
  %18 = load %struct.rk_clk_composite_def*, %struct.rk_clk_composite_def** %5, align 8
  %19 = getelementptr inbounds %struct.rk_clk_composite_def, %struct.rk_clk_composite_def* %18, i32 0, i32 7
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.rk_clk_composite_sc*, %struct.rk_clk_composite_sc** %7, align 8
  %22 = getelementptr inbounds %struct.rk_clk_composite_sc, %struct.rk_clk_composite_sc* %21, i32 0, i32 9
  store i32 %20, i32* %22, align 4
  %23 = load %struct.rk_clk_composite_def*, %struct.rk_clk_composite_def** %5, align 8
  %24 = getelementptr inbounds %struct.rk_clk_composite_def, %struct.rk_clk_composite_def* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.rk_clk_composite_sc*, %struct.rk_clk_composite_sc** %7, align 8
  %27 = getelementptr inbounds %struct.rk_clk_composite_sc, %struct.rk_clk_composite_sc* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.rk_clk_composite_def*, %struct.rk_clk_composite_def** %5, align 8
  %29 = getelementptr inbounds %struct.rk_clk_composite_def, %struct.rk_clk_composite_def* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.rk_clk_composite_sc*, %struct.rk_clk_composite_sc** %7, align 8
  %32 = getelementptr inbounds %struct.rk_clk_composite_sc, %struct.rk_clk_composite_sc* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.rk_clk_composite_def*, %struct.rk_clk_composite_def** %5, align 8
  %34 = getelementptr inbounds %struct.rk_clk_composite_def, %struct.rk_clk_composite_def* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = shl i32 1, %35
  %37 = sub nsw i32 %36, 1
  %38 = load %struct.rk_clk_composite_sc*, %struct.rk_clk_composite_sc** %7, align 8
  %39 = getelementptr inbounds %struct.rk_clk_composite_sc, %struct.rk_clk_composite_sc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 %37, %40
  %42 = load %struct.rk_clk_composite_sc*, %struct.rk_clk_composite_sc** %7, align 8
  %43 = getelementptr inbounds %struct.rk_clk_composite_sc, %struct.rk_clk_composite_sc* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load %struct.rk_clk_composite_def*, %struct.rk_clk_composite_def** %5, align 8
  %45 = getelementptr inbounds %struct.rk_clk_composite_def, %struct.rk_clk_composite_def* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.rk_clk_composite_sc*, %struct.rk_clk_composite_sc** %7, align 8
  %48 = getelementptr inbounds %struct.rk_clk_composite_sc, %struct.rk_clk_composite_sc* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  %49 = load %struct.rk_clk_composite_def*, %struct.rk_clk_composite_def** %5, align 8
  %50 = getelementptr inbounds %struct.rk_clk_composite_def, %struct.rk_clk_composite_def* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.rk_clk_composite_sc*, %struct.rk_clk_composite_sc** %7, align 8
  %53 = getelementptr inbounds %struct.rk_clk_composite_sc, %struct.rk_clk_composite_sc* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 4
  %54 = load %struct.rk_clk_composite_def*, %struct.rk_clk_composite_def** %5, align 8
  %55 = getelementptr inbounds %struct.rk_clk_composite_def, %struct.rk_clk_composite_def* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = shl i32 1, %56
  %58 = sub nsw i32 %57, 1
  %59 = load %struct.rk_clk_composite_sc*, %struct.rk_clk_composite_sc** %7, align 8
  %60 = getelementptr inbounds %struct.rk_clk_composite_sc, %struct.rk_clk_composite_sc* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = shl i32 %58, %61
  %63 = load %struct.rk_clk_composite_sc*, %struct.rk_clk_composite_sc** %7, align 8
  %64 = getelementptr inbounds %struct.rk_clk_composite_sc, %struct.rk_clk_composite_sc* %63, i32 0, i32 5
  store i32 %62, i32* %64, align 4
  %65 = load %struct.rk_clk_composite_def*, %struct.rk_clk_composite_def** %5, align 8
  %66 = getelementptr inbounds %struct.rk_clk_composite_def, %struct.rk_clk_composite_def* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.rk_clk_composite_sc*, %struct.rk_clk_composite_sc** %7, align 8
  %69 = getelementptr inbounds %struct.rk_clk_composite_sc, %struct.rk_clk_composite_sc* %68, i32 0, i32 8
  store i32 %67, i32* %69, align 4
  %70 = load %struct.rk_clk_composite_def*, %struct.rk_clk_composite_def** %5, align 8
  %71 = getelementptr inbounds %struct.rk_clk_composite_def, %struct.rk_clk_composite_def* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.rk_clk_composite_sc*, %struct.rk_clk_composite_sc** %7, align 8
  %74 = getelementptr inbounds %struct.rk_clk_composite_sc, %struct.rk_clk_composite_sc* %73, i32 0, i32 7
  store i32 %72, i32* %74, align 4
  %75 = load %struct.rk_clk_composite_def*, %struct.rk_clk_composite_def** %5, align 8
  %76 = getelementptr inbounds %struct.rk_clk_composite_def, %struct.rk_clk_composite_def* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.rk_clk_composite_sc*, %struct.rk_clk_composite_sc** %7, align 8
  %79 = getelementptr inbounds %struct.rk_clk_composite_sc, %struct.rk_clk_composite_sc* %78, i32 0, i32 6
  store i32 %77, i32* %79, align 4
  %80 = load %struct.clkdom*, %struct.clkdom** %4, align 8
  %81 = load %struct.clknode*, %struct.clknode** %6, align 8
  %82 = call i32 @clknode_register(%struct.clkdom* %80, %struct.clknode* %81)
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %15, %14
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local %struct.clknode* @clknode_create(%struct.clkdom*, i32*, i32*) #1

declare dso_local %struct.rk_clk_composite_sc* @clknode_get_softc(%struct.clknode*) #1

declare dso_local i32 @clknode_register(%struct.clkdom*, %struct.clknode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
