; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_car.c_init_muxes.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_car.c_init_muxes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra124_car_softc = type { i32 }
%struct.clk_mux_def = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"clk_mux_register failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra124_car_softc*, %struct.clk_mux_def*, i32)* @init_muxes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_muxes(%struct.tegra124_car_softc* %0, %struct.clk_mux_def* %1, i32 %2) #0 {
  %4 = alloca %struct.tegra124_car_softc*, align 8
  %5 = alloca %struct.clk_mux_def*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tegra124_car_softc* %0, %struct.tegra124_car_softc** %4, align 8
  store %struct.clk_mux_def* %1, %struct.clk_mux_def** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %27, %3
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %30

13:                                               ; preds = %9
  %14 = load %struct.tegra124_car_softc*, %struct.tegra124_car_softc** %4, align 8
  %15 = getelementptr inbounds %struct.tegra124_car_softc, %struct.tegra124_car_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.clk_mux_def*, %struct.clk_mux_def** %5, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.clk_mux_def, %struct.clk_mux_def* %17, i64 %19
  %21 = call i32 @clknode_mux_register(i32 %16, %struct.clk_mux_def* %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %13
  %25 = call i32 @panic(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %13
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %7, align 4
  br label %9

30:                                               ; preds = %9
  ret void
}

declare dso_local i32 @clknode_mux_register(i32, %struct.clk_mux_def*) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
