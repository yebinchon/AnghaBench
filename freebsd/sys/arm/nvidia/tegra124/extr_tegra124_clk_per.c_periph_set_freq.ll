; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_clk_per.c_periph_set_freq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_clk_per.c_periph_set_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clknode = type { i32 }
%struct.periph_sc = type { i32, i32, i32, i32, i32 }

@DCF_HAVE_DIV = common dso_local global i32 0, align 4
@CLK_SET_DRYRUN = common dso_local global i32 0, align 4
@CLK_SET_ROUND_UP = common dso_local global i32 0, align 4
@CLK_SET_ROUND_DOWN = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clknode*, i32, i32*, i32, i32*)* @periph_set_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @periph_set_freq(%struct.clknode* %0, i32 %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.clknode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.periph_sc*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.clknode* %0, %struct.clknode** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %15 = load %struct.clknode*, %struct.clknode** %7, align 8
  %16 = call %struct.periph_sc* @clknode_get_softc(%struct.clknode* %15)
  store %struct.periph_sc* %16, %struct.periph_sc** %12, align 8
  %17 = load %struct.periph_sc*, %struct.periph_sc** %12, align 8
  %18 = getelementptr inbounds %struct.periph_sc, %struct.periph_sc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @DCF_HAVE_DIV, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %5
  %24 = load i32*, i32** %11, align 8
  store i32 0, i32* %24, align 4
  store i32 0, i32* %6, align 4
  br label %106

25:                                               ; preds = %5
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.periph_sc*, %struct.periph_sc** %12, align 8
  %28 = getelementptr inbounds %struct.periph_sc, %struct.periph_sc* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 %26, %29
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %13, align 4
  %32 = load i32*, i32** %9, align 8
  %33 = load i32, i32* %32, align 4
  %34 = sdiv i32 %31, %33
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %13, align 4
  %36 = load i32*, i32** %9, align 8
  %37 = load i32, i32* %36, align 4
  %38 = srem i32 %35, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %25
  %41 = load i32, i32* %14, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %14, align 4
  br label %43

43:                                               ; preds = %40, %25
  %44 = load i32, i32* %14, align 4
  %45 = load %struct.periph_sc*, %struct.periph_sc** %12, align 8
  %46 = getelementptr inbounds %struct.periph_sc, %struct.periph_sc* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 1, %47
  %49 = icmp slt i32 %44, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %43
  %51 = load %struct.periph_sc*, %struct.periph_sc** %12, align 8
  %52 = getelementptr inbounds %struct.periph_sc, %struct.periph_sc* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = sub nsw i32 %53, 1
  %55 = shl i32 1, %54
  store i32 %55, i32* %14, align 4
  br label %56

56:                                               ; preds = %50, %43
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @CLK_SET_DRYRUN, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %78

61:                                               ; preds = %56
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* @CLK_SET_ROUND_UP, align 4
  %64 = load i32, i32* @CLK_SET_ROUND_DOWN, align 4
  %65 = or i32 %63, %64
  %66 = and i32 %62, %65
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %61
  %69 = load i32*, i32** %9, align 8
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* %14, align 4
  %73 = sdiv i32 %71, %72
  %74 = icmp ne i32 %70, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %68
  %76 = load i32, i32* @ERANGE, align 4
  store i32 %76, i32* %6, align 4
  br label %106

77:                                               ; preds = %68, %61
  br label %100

78:                                               ; preds = %56
  %79 = load %struct.periph_sc*, %struct.periph_sc** %12, align 8
  %80 = call i32 @DEVICE_LOCK(%struct.periph_sc* %79)
  %81 = load %struct.periph_sc*, %struct.periph_sc** %12, align 8
  %82 = load %struct.periph_sc*, %struct.periph_sc** %12, align 8
  %83 = getelementptr inbounds %struct.periph_sc, %struct.periph_sc* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.periph_sc*, %struct.periph_sc** %12, align 8
  %86 = getelementptr inbounds %struct.periph_sc, %struct.periph_sc* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %14, align 4
  %89 = load %struct.periph_sc*, %struct.periph_sc** %12, align 8
  %90 = getelementptr inbounds %struct.periph_sc, %struct.periph_sc* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = shl i32 1, %91
  %93 = sub nsw i32 %88, %92
  %94 = call i32 @MD4(%struct.periph_sc* %81, i32 %84, i32 %87, i32 %93)
  %95 = load %struct.periph_sc*, %struct.periph_sc** %12, align 8
  %96 = call i32 @DEVICE_UNLOCK(%struct.periph_sc* %95)
  %97 = load i32, i32* %14, align 4
  %98 = load %struct.periph_sc*, %struct.periph_sc** %12, align 8
  %99 = getelementptr inbounds %struct.periph_sc, %struct.periph_sc* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 4
  br label %100

100:                                              ; preds = %78, %77
  %101 = load i32, i32* %13, align 4
  %102 = load i32, i32* %14, align 4
  %103 = sdiv i32 %101, %102
  %104 = load i32*, i32** %9, align 8
  store i32 %103, i32* %104, align 4
  %105 = load i32*, i32** %11, align 8
  store i32 1, i32* %105, align 4
  store i32 0, i32* %6, align 4
  br label %106

106:                                              ; preds = %100, %75, %23
  %107 = load i32, i32* %6, align 4
  ret i32 %107
}

declare dso_local %struct.periph_sc* @clknode_get_softc(%struct.clknode*) #1

declare dso_local i32 @DEVICE_LOCK(%struct.periph_sc*) #1

declare dso_local i32 @MD4(%struct.periph_sc*, i32, i32, i32) #1

declare dso_local i32 @DEVICE_UNLOCK(%struct.periph_sc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
