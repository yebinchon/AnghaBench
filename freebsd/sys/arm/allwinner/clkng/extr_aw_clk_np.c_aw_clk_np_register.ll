; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/clkng/extr_aw_clk_np.c_aw_clk_np_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/clkng/extr_aw_clk_np.c_aw_clk_np_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clkdom = type { i32 }
%struct.aw_clk_np_def = type { i32, i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.clknode = type { i32 }
%struct.aw_clk_np_sc = type { i32, i32, i32, i32, %struct.TYPE_7__, %struct.TYPE_5__, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }

@aw_np_clknode_class = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aw_clk_np_register(%struct.clkdom* %0, %struct.aw_clk_np_def* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clkdom*, align 8
  %5 = alloca %struct.aw_clk_np_def*, align 8
  %6 = alloca %struct.clknode*, align 8
  %7 = alloca %struct.aw_clk_np_sc*, align 8
  store %struct.clkdom* %0, %struct.clkdom** %4, align 8
  store %struct.aw_clk_np_def* %1, %struct.aw_clk_np_def** %5, align 8
  %8 = load %struct.clkdom*, %struct.clkdom** %4, align 8
  %9 = load %struct.aw_clk_np_def*, %struct.aw_clk_np_def** %5, align 8
  %10 = getelementptr inbounds %struct.aw_clk_np_def, %struct.aw_clk_np_def* %9, i32 0, i32 7
  %11 = call %struct.clknode* @clknode_create(%struct.clkdom* %8, i32* @aw_np_clknode_class, i32* %10)
  store %struct.clknode* %11, %struct.clknode** %6, align 8
  %12 = load %struct.clknode*, %struct.clknode** %6, align 8
  %13 = icmp eq %struct.clknode* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %130

15:                                               ; preds = %2
  %16 = load %struct.clknode*, %struct.clknode** %6, align 8
  %17 = call %struct.aw_clk_np_sc* @clknode_get_softc(%struct.clknode* %16)
  store %struct.aw_clk_np_sc* %17, %struct.aw_clk_np_sc** %7, align 8
  %18 = load %struct.aw_clk_np_def*, %struct.aw_clk_np_def** %5, align 8
  %19 = getelementptr inbounds %struct.aw_clk_np_def, %struct.aw_clk_np_def* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.aw_clk_np_sc*, %struct.aw_clk_np_sc** %7, align 8
  %22 = getelementptr inbounds %struct.aw_clk_np_sc, %struct.aw_clk_np_sc* %21, i32 0, i32 6
  store i32 %20, i32* %22, align 4
  %23 = load %struct.aw_clk_np_def*, %struct.aw_clk_np_def** %5, align 8
  %24 = getelementptr inbounds %struct.aw_clk_np_def, %struct.aw_clk_np_def* %23, i32 0, i32 5
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.aw_clk_np_sc*, %struct.aw_clk_np_sc** %7, align 8
  %28 = getelementptr inbounds %struct.aw_clk_np_sc, %struct.aw_clk_np_sc* %27, i32 0, i32 5
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 4
  %30 = load %struct.aw_clk_np_def*, %struct.aw_clk_np_def** %5, align 8
  %31 = getelementptr inbounds %struct.aw_clk_np_def, %struct.aw_clk_np_def* %30, i32 0, i32 5
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.aw_clk_np_sc*, %struct.aw_clk_np_sc** %7, align 8
  %35 = getelementptr inbounds %struct.aw_clk_np_sc, %struct.aw_clk_np_sc* %34, i32 0, i32 5
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  store i32 %33, i32* %36, align 4
  %37 = load %struct.aw_clk_np_sc*, %struct.aw_clk_np_sc** %7, align 8
  %38 = getelementptr inbounds %struct.aw_clk_np_sc, %struct.aw_clk_np_sc* %37, i32 0, i32 5
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 1, %40
  %42 = sub nsw i32 %41, 1
  %43 = load %struct.aw_clk_np_sc*, %struct.aw_clk_np_sc** %7, align 8
  %44 = getelementptr inbounds %struct.aw_clk_np_sc, %struct.aw_clk_np_sc* %43, i32 0, i32 5
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = shl i32 %42, %46
  %48 = load %struct.aw_clk_np_sc*, %struct.aw_clk_np_sc** %7, align 8
  %49 = getelementptr inbounds %struct.aw_clk_np_sc, %struct.aw_clk_np_sc* %48, i32 0, i32 5
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  store i32 %47, i32* %50, align 4
  %51 = load %struct.aw_clk_np_def*, %struct.aw_clk_np_def** %5, align 8
  %52 = getelementptr inbounds %struct.aw_clk_np_def, %struct.aw_clk_np_def* %51, i32 0, i32 5
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.aw_clk_np_sc*, %struct.aw_clk_np_sc** %7, align 8
  %56 = getelementptr inbounds %struct.aw_clk_np_sc, %struct.aw_clk_np_sc* %55, i32 0, i32 5
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 4
  store i32 %54, i32* %57, align 4
  %58 = load %struct.aw_clk_np_def*, %struct.aw_clk_np_def** %5, align 8
  %59 = getelementptr inbounds %struct.aw_clk_np_def, %struct.aw_clk_np_def* %58, i32 0, i32 5
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.aw_clk_np_sc*, %struct.aw_clk_np_sc** %7, align 8
  %63 = getelementptr inbounds %struct.aw_clk_np_sc, %struct.aw_clk_np_sc* %62, i32 0, i32 5
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 3
  store i32 %61, i32* %64, align 4
  %65 = load %struct.aw_clk_np_def*, %struct.aw_clk_np_def** %5, align 8
  %66 = getelementptr inbounds %struct.aw_clk_np_def, %struct.aw_clk_np_def* %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.aw_clk_np_sc*, %struct.aw_clk_np_sc** %7, align 8
  %70 = getelementptr inbounds %struct.aw_clk_np_sc, %struct.aw_clk_np_sc* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 4
  %72 = load %struct.aw_clk_np_def*, %struct.aw_clk_np_def** %5, align 8
  %73 = getelementptr inbounds %struct.aw_clk_np_def, %struct.aw_clk_np_def* %72, i32 0, i32 4
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.aw_clk_np_sc*, %struct.aw_clk_np_sc** %7, align 8
  %77 = getelementptr inbounds %struct.aw_clk_np_sc, %struct.aw_clk_np_sc* %76, i32 0, i32 4
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  store i32 %75, i32* %78, align 4
  %79 = load %struct.aw_clk_np_sc*, %struct.aw_clk_np_sc** %7, align 8
  %80 = getelementptr inbounds %struct.aw_clk_np_sc, %struct.aw_clk_np_sc* %79, i32 0, i32 4
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = shl i32 1, %82
  %84 = sub nsw i32 %83, 1
  %85 = load %struct.aw_clk_np_sc*, %struct.aw_clk_np_sc** %7, align 8
  %86 = getelementptr inbounds %struct.aw_clk_np_sc, %struct.aw_clk_np_sc* %85, i32 0, i32 4
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = shl i32 %84, %88
  %90 = load %struct.aw_clk_np_sc*, %struct.aw_clk_np_sc** %7, align 8
  %91 = getelementptr inbounds %struct.aw_clk_np_sc, %struct.aw_clk_np_sc* %90, i32 0, i32 4
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 2
  store i32 %89, i32* %92, align 4
  %93 = load %struct.aw_clk_np_def*, %struct.aw_clk_np_def** %5, align 8
  %94 = getelementptr inbounds %struct.aw_clk_np_def, %struct.aw_clk_np_def* %93, i32 0, i32 4
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.aw_clk_np_sc*, %struct.aw_clk_np_sc** %7, align 8
  %98 = getelementptr inbounds %struct.aw_clk_np_sc, %struct.aw_clk_np_sc* %97, i32 0, i32 4
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 4
  store i32 %96, i32* %99, align 4
  %100 = load %struct.aw_clk_np_def*, %struct.aw_clk_np_def** %5, align 8
  %101 = getelementptr inbounds %struct.aw_clk_np_def, %struct.aw_clk_np_def* %100, i32 0, i32 4
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.aw_clk_np_sc*, %struct.aw_clk_np_sc** %7, align 8
  %105 = getelementptr inbounds %struct.aw_clk_np_sc, %struct.aw_clk_np_sc* %104, i32 0, i32 4
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 3
  store i32 %103, i32* %106, align 4
  %107 = load %struct.aw_clk_np_def*, %struct.aw_clk_np_def** %5, align 8
  %108 = getelementptr inbounds %struct.aw_clk_np_def, %struct.aw_clk_np_def* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.aw_clk_np_sc*, %struct.aw_clk_np_sc** %7, align 8
  %111 = getelementptr inbounds %struct.aw_clk_np_sc, %struct.aw_clk_np_sc* %110, i32 0, i32 3
  store i32 %109, i32* %111, align 4
  %112 = load %struct.aw_clk_np_def*, %struct.aw_clk_np_def** %5, align 8
  %113 = getelementptr inbounds %struct.aw_clk_np_def, %struct.aw_clk_np_def* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.aw_clk_np_sc*, %struct.aw_clk_np_sc** %7, align 8
  %116 = getelementptr inbounds %struct.aw_clk_np_sc, %struct.aw_clk_np_sc* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 4
  %117 = load %struct.aw_clk_np_def*, %struct.aw_clk_np_def** %5, align 8
  %118 = getelementptr inbounds %struct.aw_clk_np_def, %struct.aw_clk_np_def* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.aw_clk_np_sc*, %struct.aw_clk_np_sc** %7, align 8
  %121 = getelementptr inbounds %struct.aw_clk_np_sc, %struct.aw_clk_np_sc* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 4
  %122 = load %struct.aw_clk_np_def*, %struct.aw_clk_np_def** %5, align 8
  %123 = getelementptr inbounds %struct.aw_clk_np_def, %struct.aw_clk_np_def* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.aw_clk_np_sc*, %struct.aw_clk_np_sc** %7, align 8
  %126 = getelementptr inbounds %struct.aw_clk_np_sc, %struct.aw_clk_np_sc* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 4
  %127 = load %struct.clkdom*, %struct.clkdom** %4, align 8
  %128 = load %struct.clknode*, %struct.clknode** %6, align 8
  %129 = call i32 @clknode_register(%struct.clkdom* %127, %struct.clknode* %128)
  store i32 0, i32* %3, align 4
  br label %130

130:                                              ; preds = %15, %14
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local %struct.clknode* @clknode_create(%struct.clkdom*, i32*, i32*) #1

declare dso_local %struct.aw_clk_np_sc* @clknode_get_softc(%struct.clknode*) #1

declare dso_local i32 @clknode_register(%struct.clkdom*, %struct.clknode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
