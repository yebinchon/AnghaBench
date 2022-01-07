; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_clk_per.c_periph_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_clk_per.c_periph_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clkdom = type { i32 }
%struct.periph_def = type { i32, i32, i32, i32, i32 }
%struct.clknode = type { i32 }
%struct.periph_sc = type { i32, i32, i32, i32, i32, i32, i32 }

@tegra124_periph_class = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clkdom*, %struct.periph_def*)* @periph_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @periph_register(%struct.clkdom* %0, %struct.periph_def* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clkdom*, align 8
  %5 = alloca %struct.periph_def*, align 8
  %6 = alloca %struct.clknode*, align 8
  %7 = alloca %struct.periph_sc*, align 8
  store %struct.clkdom* %0, %struct.clkdom** %4, align 8
  store %struct.periph_def* %1, %struct.periph_def** %5, align 8
  %8 = load %struct.clkdom*, %struct.clkdom** %4, align 8
  %9 = load %struct.periph_def*, %struct.periph_def** %5, align 8
  %10 = getelementptr inbounds %struct.periph_def, %struct.periph_def* %9, i32 0, i32 4
  %11 = call %struct.clknode* @clknode_create(%struct.clkdom* %8, i32* @tegra124_periph_class, i32* %10)
  store %struct.clknode* %11, %struct.clknode** %6, align 8
  %12 = load %struct.clknode*, %struct.clknode** %6, align 8
  %13 = icmp eq %struct.clknode* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %59

15:                                               ; preds = %2
  %16 = load %struct.clknode*, %struct.clknode** %6, align 8
  %17 = call %struct.periph_sc* @clknode_get_softc(%struct.clknode* %16)
  store %struct.periph_sc* %17, %struct.periph_sc** %7, align 8
  %18 = load %struct.clknode*, %struct.clknode** %6, align 8
  %19 = call i32 @clknode_get_device(%struct.clknode* %18)
  %20 = load %struct.periph_sc*, %struct.periph_sc** %7, align 8
  %21 = getelementptr inbounds %struct.periph_sc, %struct.periph_sc* %20, i32 0, i32 6
  store i32 %19, i32* %21, align 4
  %22 = load %struct.periph_def*, %struct.periph_def** %5, align 8
  %23 = getelementptr inbounds %struct.periph_def, %struct.periph_def* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.periph_sc*, %struct.periph_sc** %7, align 8
  %26 = getelementptr inbounds %struct.periph_sc, %struct.periph_sc* %25, i32 0, i32 5
  store i32 %24, i32* %26, align 4
  %27 = load %struct.periph_def*, %struct.periph_def** %5, align 8
  %28 = getelementptr inbounds %struct.periph_def, %struct.periph_def* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.periph_sc*, %struct.periph_sc** %7, align 8
  %31 = getelementptr inbounds %struct.periph_sc, %struct.periph_sc* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.periph_def*, %struct.periph_def** %5, align 8
  %33 = getelementptr inbounds %struct.periph_def, %struct.periph_def* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 1, %34
  %36 = sub nsw i32 %35, 1
  %37 = load %struct.periph_sc*, %struct.periph_sc** %7, align 8
  %38 = getelementptr inbounds %struct.periph_sc, %struct.periph_sc* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.periph_def*, %struct.periph_def** %5, align 8
  %40 = getelementptr inbounds %struct.periph_def, %struct.periph_def* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.periph_sc*, %struct.periph_sc** %7, align 8
  %43 = getelementptr inbounds %struct.periph_sc, %struct.periph_sc* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load %struct.periph_def*, %struct.periph_def** %5, align 8
  %45 = getelementptr inbounds %struct.periph_def, %struct.periph_def* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = shl i32 1, %46
  %48 = sub nsw i32 %47, 1
  %49 = load %struct.periph_sc*, %struct.periph_sc** %7, align 8
  %50 = getelementptr inbounds %struct.periph_sc, %struct.periph_sc* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 4
  %51 = load %struct.periph_def*, %struct.periph_def** %5, align 8
  %52 = getelementptr inbounds %struct.periph_def, %struct.periph_def* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.periph_sc*, %struct.periph_sc** %7, align 8
  %55 = getelementptr inbounds %struct.periph_sc, %struct.periph_sc* %54, i32 0, i32 4
  store i32 %53, i32* %55, align 4
  %56 = load %struct.clkdom*, %struct.clkdom** %4, align 8
  %57 = load %struct.clknode*, %struct.clknode** %6, align 8
  %58 = call i32 @clknode_register(%struct.clkdom* %56, %struct.clknode* %57)
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %15, %14
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %struct.clknode* @clknode_create(%struct.clkdom*, i32*, i32*) #1

declare dso_local %struct.periph_sc* @clknode_get_softc(%struct.clknode*) #1

declare dso_local i32 @clknode_get_device(%struct.clknode*) #1

declare dso_local i32 @clknode_register(%struct.clkdom*, %struct.clknode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
