; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_thermal.c_aw_thermal_gethyst.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_thermal.c_aw_thermal_gethyst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aw_thermal_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i32)* }

@THS_ALARM0_CTRL = common dso_local global i64 0, align 8
@ALARM_T_HYST_SHIFT = common dso_local global i32 0, align 4
@ALARM_T_HYST_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aw_thermal_softc*, i32)* @aw_thermal_gethyst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aw_thermal_gethyst(%struct.aw_thermal_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.aw_thermal_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.aw_thermal_softc* %0, %struct.aw_thermal_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.aw_thermal_softc*, %struct.aw_thermal_softc** %3, align 8
  %7 = load i64, i64* @THS_ALARM0_CTRL, align 8
  %8 = load i32, i32* %4, align 4
  %9 = mul nsw i32 %8, 4
  %10 = sext i32 %9 to i64
  %11 = add nsw i64 %7, %10
  %12 = call i32 @RD4(%struct.aw_thermal_softc* %6, i64 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @ALARM_T_HYST_SHIFT, align 4
  %15 = ashr i32 %13, %14
  %16 = load i32, i32* @ALARM_T_HYST_MASK, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %5, align 4
  %18 = load %struct.aw_thermal_softc*, %struct.aw_thermal_softc** %3, align 8
  %19 = getelementptr inbounds %struct.aw_thermal_softc, %struct.aw_thermal_softc* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (i32, i32)*, i32 (i32, i32)** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 %22(i32 %23, i32 %24)
  ret i32 %25
}

declare dso_local i32 @RD4(%struct.aw_thermal_softc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
