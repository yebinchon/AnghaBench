; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_car.c_init_fixeds.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_car.c_init_fixeds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_fixed_def = type { i64, i32 }
%struct.tegra124_car_softc = type { i32, i32 }

@OSC_CTRL = common dso_local global i32 0, align 4
@OSC_CTRL_OSC_FREQ_SHIFT = common dso_local global i32 0, align 4
@osc_freqs = common dso_local global i64* null, align 8
@fixed_clk_m = common dso_local global %struct.clk_fixed_def zeroinitializer, align 8
@.str = private unnamed_addr constant [26 x i8] c"Undefined input frequency\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"clk_fixed_register failed\00", align 1
@OSC_CTRL_PLL_REF_DIV_SHIFT = common dso_local global i32 0, align 4
@fixed_osc_div_clk = common dso_local global %struct.clk_fixed_def zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra124_car_softc*, %struct.clk_fixed_def*, i32)* @init_fixeds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_fixeds(%struct.tegra124_car_softc* %0, %struct.clk_fixed_def* %1, i32 %2) #0 {
  %4 = alloca %struct.tegra124_car_softc*, align 8
  %5 = alloca %struct.clk_fixed_def*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.tegra124_car_softc* %0, %struct.tegra124_car_softc** %4, align 8
  store %struct.clk_fixed_def* %1, %struct.clk_fixed_def** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.tegra124_car_softc*, %struct.tegra124_car_softc** %4, align 8
  %12 = getelementptr inbounds %struct.tegra124_car_softc, %struct.tegra124_car_softc* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @OSC_CTRL, align 4
  %15 = call i32 @CLKDEV_READ_4(i32 %13, i32 %14, i32* %9)
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @OSC_CTRL_OSC_FREQ_SHIFT, align 4
  %18 = ashr i32 %16, %17
  store i32 %18, i32* %10, align 4
  %19 = load i64*, i64** @osc_freqs, align 8
  %20 = load i32, i32* %10, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* getelementptr inbounds (%struct.clk_fixed_def, %struct.clk_fixed_def* @fixed_clk_m, i32 0, i32 0), align 8
  %24 = load i64, i64* getelementptr inbounds (%struct.clk_fixed_def, %struct.clk_fixed_def* @fixed_clk_m, i32 0, i32 0), align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = call i32 @panic(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %3
  %29 = load %struct.tegra124_car_softc*, %struct.tegra124_car_softc** %4, align 8
  %30 = getelementptr inbounds %struct.tegra124_car_softc, %struct.tegra124_car_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @clknode_fixed_register(i32 %31, %struct.clk_fixed_def* @fixed_clk_m)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = call i32 @panic(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %28
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @OSC_CTRL_PLL_REF_DIV_SHIFT, align 4
  %40 = ashr i32 %38, %39
  %41 = and i32 %40, 3
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = shl i32 1, %42
  store i32 %43, i32* getelementptr inbounds (%struct.clk_fixed_def, %struct.clk_fixed_def* @fixed_osc_div_clk, i32 0, i32 1), align 8
  %44 = load %struct.tegra124_car_softc*, %struct.tegra124_car_softc** %4, align 8
  %45 = getelementptr inbounds %struct.tegra124_car_softc, %struct.tegra124_car_softc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @clknode_fixed_register(i32 %46, %struct.clk_fixed_def* @fixed_osc_div_clk)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %37
  %51 = call i32 @panic(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %37
  store i32 0, i32* %7, align 4
  br label %53

53:                                               ; preds = %71, %52
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %74

57:                                               ; preds = %53
  %58 = load %struct.tegra124_car_softc*, %struct.tegra124_car_softc** %4, align 8
  %59 = getelementptr inbounds %struct.tegra124_car_softc, %struct.tegra124_car_softc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.clk_fixed_def*, %struct.clk_fixed_def** %5, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.clk_fixed_def, %struct.clk_fixed_def* %61, i64 %63
  %65 = call i32 @clknode_fixed_register(i32 %60, %struct.clk_fixed_def* %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %57
  %69 = call i32 @panic(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %57
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %7, align 4
  br label %53

74:                                               ; preds = %53
  ret void
}

declare dso_local i32 @CLKDEV_READ_4(i32, i32, i32*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @clknode_fixed_register(i32, %struct.clk_fixed_def*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
