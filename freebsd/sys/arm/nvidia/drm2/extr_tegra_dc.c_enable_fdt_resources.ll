; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_tegra_dc.c_enable_fdt_resources.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_tegra_dc.c_enable_fdt_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_softc = type { i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [34 x i8] c"Cannot set parent for 'dc' clock\0A\00", align 1
@TEGRA_POWERGATE_DIS = common dso_local global i32 0, align 4
@TEGRA_POWERGATE_DISB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Cannot enable 'DIS' powergate\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dc_softc*)* @enable_fdt_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enable_fdt_resources(%struct.dc_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dc_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dc_softc* %0, %struct.dc_softc** %3, align 8
  %6 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %7 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %10 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @clk_set_parent_by_clk(i32 %8, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %17 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @device_printf(i32 %18, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %2, align 4
  br label %50

21:                                               ; preds = %1
  %22 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %23 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @TEGRA_POWERGATE_DIS, align 4
  br label %31

29:                                               ; preds = %21
  %30 = load i32, i32* @TEGRA_POWERGATE_DISB, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %35 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %38 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @tegra_powergate_sequence_power_up(i32 %33, i32 %36, i32 %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %31
  %44 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %45 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @device_printf(i32 %46, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* %5, align 4
  store i32 %48, i32* %2, align 4
  br label %50

49:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %49, %43, %15
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @clk_set_parent_by_clk(i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @tegra_powergate_sequence_power_up(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
