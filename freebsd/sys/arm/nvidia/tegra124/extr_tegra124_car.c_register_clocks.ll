; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_car.c_register_clocks.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_car.c_register_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra124_car_softc = type { i32* }

@.str = private unnamed_addr constant [15 x i8] c"clkdom == NULL\00", align 1
@tegra124_fixed_clks = common dso_local global i32 0, align 4
@tegra124_mux_clks = common dso_local global i32 0, align 4
@tegra124_div_clks = common dso_local global i32 0, align 4
@tegra124_gate_clks = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @register_clocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @register_clocks(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra124_car_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.tegra124_car_softc* @device_get_softc(i32 %4)
  store %struct.tegra124_car_softc* %5, %struct.tegra124_car_softc** %3, align 8
  %6 = load i32, i32* %2, align 4
  %7 = call i32* @clkdom_create(i32 %6)
  %8 = load %struct.tegra124_car_softc*, %struct.tegra124_car_softc** %3, align 8
  %9 = getelementptr inbounds %struct.tegra124_car_softc, %struct.tegra124_car_softc* %8, i32 0, i32 0
  store i32* %7, i32** %9, align 8
  %10 = load %struct.tegra124_car_softc*, %struct.tegra124_car_softc** %3, align 8
  %11 = getelementptr inbounds %struct.tegra124_car_softc, %struct.tegra124_car_softc* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = call i32 @panic(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %1
  %17 = load %struct.tegra124_car_softc*, %struct.tegra124_car_softc** %3, align 8
  %18 = call i32 @tegra124_init_plls(%struct.tegra124_car_softc* %17)
  %19 = load %struct.tegra124_car_softc*, %struct.tegra124_car_softc** %3, align 8
  %20 = load i32, i32* @tegra124_fixed_clks, align 4
  %21 = load i32, i32* @tegra124_fixed_clks, align 4
  %22 = call i32 @nitems(i32 %21)
  %23 = call i32 @init_fixeds(%struct.tegra124_car_softc* %19, i32 %20, i32 %22)
  %24 = load %struct.tegra124_car_softc*, %struct.tegra124_car_softc** %3, align 8
  %25 = load i32, i32* @tegra124_mux_clks, align 4
  %26 = load i32, i32* @tegra124_mux_clks, align 4
  %27 = call i32 @nitems(i32 %26)
  %28 = call i32 @init_muxes(%struct.tegra124_car_softc* %24, i32 %25, i32 %27)
  %29 = load %struct.tegra124_car_softc*, %struct.tegra124_car_softc** %3, align 8
  %30 = load i32, i32* @tegra124_div_clks, align 4
  %31 = load i32, i32* @tegra124_div_clks, align 4
  %32 = call i32 @nitems(i32 %31)
  %33 = call i32 @init_divs(%struct.tegra124_car_softc* %29, i32 %30, i32 %32)
  %34 = load %struct.tegra124_car_softc*, %struct.tegra124_car_softc** %3, align 8
  %35 = load i32, i32* @tegra124_gate_clks, align 4
  %36 = load i32, i32* @tegra124_gate_clks, align 4
  %37 = call i32 @nitems(i32 %36)
  %38 = call i32 @init_gates(%struct.tegra124_car_softc* %34, i32 %35, i32 %37)
  %39 = load %struct.tegra124_car_softc*, %struct.tegra124_car_softc** %3, align 8
  %40 = call i32 @tegra124_periph_clock(%struct.tegra124_car_softc* %39)
  %41 = load %struct.tegra124_car_softc*, %struct.tegra124_car_softc** %3, align 8
  %42 = call i32 @tegra124_super_mux_clock(%struct.tegra124_car_softc* %41)
  %43 = load %struct.tegra124_car_softc*, %struct.tegra124_car_softc** %3, align 8
  %44 = getelementptr inbounds %struct.tegra124_car_softc, %struct.tegra124_car_softc* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @clkdom_finit(i32* %45)
  %47 = load %struct.tegra124_car_softc*, %struct.tegra124_car_softc** %3, align 8
  %48 = getelementptr inbounds %struct.tegra124_car_softc, %struct.tegra124_car_softc* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @clkdom_xlock(i32* %49)
  %51 = load %struct.tegra124_car_softc*, %struct.tegra124_car_softc** %3, align 8
  %52 = call i32 @postinit_clock(%struct.tegra124_car_softc* %51)
  %53 = load %struct.tegra124_car_softc*, %struct.tegra124_car_softc** %3, align 8
  %54 = getelementptr inbounds %struct.tegra124_car_softc, %struct.tegra124_car_softc* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @clkdom_unlock(i32* %55)
  %57 = load i64, i64* @bootverbose, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %16
  %60 = load %struct.tegra124_car_softc*, %struct.tegra124_car_softc** %3, align 8
  %61 = getelementptr inbounds %struct.tegra124_car_softc, %struct.tegra124_car_softc* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @clkdom_dump(i32* %62)
  br label %64

64:                                               ; preds = %59, %16
  ret void
}

declare dso_local %struct.tegra124_car_softc* @device_get_softc(i32) #1

declare dso_local i32* @clkdom_create(i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @tegra124_init_plls(%struct.tegra124_car_softc*) #1

declare dso_local i32 @init_fixeds(%struct.tegra124_car_softc*, i32, i32) #1

declare dso_local i32 @nitems(i32) #1

declare dso_local i32 @init_muxes(%struct.tegra124_car_softc*, i32, i32) #1

declare dso_local i32 @init_divs(%struct.tegra124_car_softc*, i32, i32) #1

declare dso_local i32 @init_gates(%struct.tegra124_car_softc*, i32, i32) #1

declare dso_local i32 @tegra124_periph_clock(%struct.tegra124_car_softc*) #1

declare dso_local i32 @tegra124_super_mux_clock(%struct.tegra124_car_softc*) #1

declare dso_local i32 @clkdom_finit(i32*) #1

declare dso_local i32 @clkdom_xlock(i32*) #1

declare dso_local i32 @postinit_clock(%struct.tegra124_car_softc*) #1

declare dso_local i32 @clkdom_unlock(i32*) #1

declare dso_local i32 @clkdom_dump(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
