; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/clkng/extr_aw_clk_m.c_aw_clk_m_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/clkng/extr_aw_clk_m.c_aw_clk_m_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clkdom = type { i32 }
%struct.aw_clk_m_def = type { i32, i32, i32, i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.clknode = type { i32 }
%struct.aw_clk_m_sc = type { i32, i32, i32, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@aw_m_clknode_class = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aw_clk_m_register(%struct.clkdom* %0, %struct.aw_clk_m_def* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clkdom*, align 8
  %5 = alloca %struct.aw_clk_m_def*, align 8
  %6 = alloca %struct.clknode*, align 8
  %7 = alloca %struct.aw_clk_m_sc*, align 8
  store %struct.clkdom* %0, %struct.clkdom** %4, align 8
  store %struct.aw_clk_m_def* %1, %struct.aw_clk_m_def** %5, align 8
  %8 = load %struct.clkdom*, %struct.clkdom** %4, align 8
  %9 = load %struct.aw_clk_m_def*, %struct.aw_clk_m_def** %5, align 8
  %10 = getelementptr inbounds %struct.aw_clk_m_def, %struct.aw_clk_m_def* %9, i32 0, i32 6
  %11 = call %struct.clknode* @clknode_create(%struct.clkdom* %8, i32* @aw_m_clknode_class, i32* %10)
  store %struct.clknode* %11, %struct.clknode** %6, align 8
  %12 = load %struct.clknode*, %struct.clknode** %6, align 8
  %13 = icmp eq %struct.clknode* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %94

15:                                               ; preds = %2
  %16 = load %struct.clknode*, %struct.clknode** %6, align 8
  %17 = call %struct.aw_clk_m_sc* @clknode_get_softc(%struct.clknode* %16)
  store %struct.aw_clk_m_sc* %17, %struct.aw_clk_m_sc** %7, align 8
  %18 = load %struct.aw_clk_m_def*, %struct.aw_clk_m_def** %5, align 8
  %19 = getelementptr inbounds %struct.aw_clk_m_def, %struct.aw_clk_m_def* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.aw_clk_m_sc*, %struct.aw_clk_m_sc** %7, align 8
  %22 = getelementptr inbounds %struct.aw_clk_m_sc, %struct.aw_clk_m_sc* %21, i32 0, i32 5
  store i32 %20, i32* %22, align 4
  %23 = load %struct.aw_clk_m_def*, %struct.aw_clk_m_def** %5, align 8
  %24 = getelementptr inbounds %struct.aw_clk_m_def, %struct.aw_clk_m_def* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.aw_clk_m_sc*, %struct.aw_clk_m_sc** %7, align 8
  %28 = getelementptr inbounds %struct.aw_clk_m_sc, %struct.aw_clk_m_sc* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 4
  %30 = load %struct.aw_clk_m_def*, %struct.aw_clk_m_def** %5, align 8
  %31 = getelementptr inbounds %struct.aw_clk_m_def, %struct.aw_clk_m_def* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.aw_clk_m_sc*, %struct.aw_clk_m_sc** %7, align 8
  %35 = getelementptr inbounds %struct.aw_clk_m_sc, %struct.aw_clk_m_sc* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  store i32 %33, i32* %36, align 4
  %37 = load %struct.aw_clk_m_sc*, %struct.aw_clk_m_sc** %7, align 8
  %38 = getelementptr inbounds %struct.aw_clk_m_sc, %struct.aw_clk_m_sc* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 1, %40
  %42 = sub nsw i32 %41, 1
  %43 = load %struct.aw_clk_m_sc*, %struct.aw_clk_m_sc** %7, align 8
  %44 = getelementptr inbounds %struct.aw_clk_m_sc, %struct.aw_clk_m_sc* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = shl i32 %42, %46
  %48 = load %struct.aw_clk_m_sc*, %struct.aw_clk_m_sc** %7, align 8
  %49 = getelementptr inbounds %struct.aw_clk_m_sc, %struct.aw_clk_m_sc* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  store i32 %47, i32* %50, align 4
  %51 = load %struct.aw_clk_m_def*, %struct.aw_clk_m_def** %5, align 8
  %52 = getelementptr inbounds %struct.aw_clk_m_def, %struct.aw_clk_m_def* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.aw_clk_m_sc*, %struct.aw_clk_m_sc** %7, align 8
  %56 = getelementptr inbounds %struct.aw_clk_m_sc, %struct.aw_clk_m_sc* %55, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 4
  store i32 %54, i32* %57, align 4
  %58 = load %struct.aw_clk_m_def*, %struct.aw_clk_m_def** %5, align 8
  %59 = getelementptr inbounds %struct.aw_clk_m_def, %struct.aw_clk_m_def* %58, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.aw_clk_m_sc*, %struct.aw_clk_m_sc** %7, align 8
  %63 = getelementptr inbounds %struct.aw_clk_m_sc, %struct.aw_clk_m_sc* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 3
  store i32 %61, i32* %64, align 4
  %65 = load %struct.aw_clk_m_def*, %struct.aw_clk_m_def** %5, align 8
  %66 = getelementptr inbounds %struct.aw_clk_m_def, %struct.aw_clk_m_def* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.aw_clk_m_sc*, %struct.aw_clk_m_sc** %7, align 8
  %69 = getelementptr inbounds %struct.aw_clk_m_sc, %struct.aw_clk_m_sc* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load %struct.aw_clk_m_def*, %struct.aw_clk_m_def** %5, align 8
  %71 = getelementptr inbounds %struct.aw_clk_m_def, %struct.aw_clk_m_def* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = shl i32 1, %72
  %74 = sub nsw i32 %73, 1
  %75 = load %struct.aw_clk_m_sc*, %struct.aw_clk_m_sc** %7, align 8
  %76 = getelementptr inbounds %struct.aw_clk_m_sc, %struct.aw_clk_m_sc* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = shl i32 %74, %77
  %79 = load %struct.aw_clk_m_sc*, %struct.aw_clk_m_sc** %7, align 8
  %80 = getelementptr inbounds %struct.aw_clk_m_sc, %struct.aw_clk_m_sc* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load %struct.aw_clk_m_def*, %struct.aw_clk_m_def** %5, align 8
  %82 = getelementptr inbounds %struct.aw_clk_m_def, %struct.aw_clk_m_def* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.aw_clk_m_sc*, %struct.aw_clk_m_sc** %7, align 8
  %85 = getelementptr inbounds %struct.aw_clk_m_sc, %struct.aw_clk_m_sc* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 4
  %86 = load %struct.aw_clk_m_def*, %struct.aw_clk_m_def** %5, align 8
  %87 = getelementptr inbounds %struct.aw_clk_m_def, %struct.aw_clk_m_def* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.aw_clk_m_sc*, %struct.aw_clk_m_sc** %7, align 8
  %90 = getelementptr inbounds %struct.aw_clk_m_sc, %struct.aw_clk_m_sc* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 4
  %91 = load %struct.clkdom*, %struct.clkdom** %4, align 8
  %92 = load %struct.clknode*, %struct.clknode** %6, align 8
  %93 = call i32 @clknode_register(%struct.clkdom* %91, %struct.clknode* %92)
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %15, %14
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local %struct.clknode* @clknode_create(%struct.clkdom*, i32*, i32*) #1

declare dso_local %struct.aw_clk_m_sc* @clknode_get_softc(%struct.clknode*) #1

declare dso_local i32 @clknode_register(%struct.clkdom*, %struct.clknode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
