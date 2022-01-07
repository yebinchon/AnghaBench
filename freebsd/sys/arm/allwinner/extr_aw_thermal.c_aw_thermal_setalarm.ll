; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_thermal.c_aw_thermal_setalarm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_thermal.c_aw_thermal_setalarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aw_thermal_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i32)* }

@THS_ALARM0_CTRL = common dso_local global i64 0, align 8
@ALARM_T_HOT_MASK = common dso_local global i32 0, align 4
@ALARM_T_HOT_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aw_thermal_softc*, i32, i32)* @aw_thermal_setalarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aw_thermal_setalarm(%struct.aw_thermal_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.aw_thermal_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.aw_thermal_softc* %0, %struct.aw_thermal_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.aw_thermal_softc*, %struct.aw_thermal_softc** %4, align 8
  %9 = load i64, i64* @THS_ALARM0_CTRL, align 8
  %10 = load i32, i32* %5, align 4
  %11 = mul nsw i32 %10, 4
  %12 = sext i32 %11 to i64
  %13 = add nsw i64 %9, %12
  %14 = call i32 @RD4(%struct.aw_thermal_softc* %8, i64 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* @ALARM_T_HOT_MASK, align 4
  %16 = load i32, i32* @ALARM_T_HOT_SHIFT, align 4
  %17 = shl i32 %15, %16
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %7, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %7, align 4
  %21 = load %struct.aw_thermal_softc*, %struct.aw_thermal_softc** %4, align 8
  %22 = getelementptr inbounds %struct.aw_thermal_softc, %struct.aw_thermal_softc* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (i32, i32)*, i32 (i32, i32)** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 %25(i32 %26, i32 %27)
  %29 = load i32, i32* @ALARM_T_HOT_SHIFT, align 4
  %30 = shl i32 %28, %29
  %31 = load i32, i32* %7, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %7, align 4
  %33 = load %struct.aw_thermal_softc*, %struct.aw_thermal_softc** %4, align 8
  %34 = load i64, i64* @THS_ALARM0_CTRL, align 8
  %35 = load i32, i32* %5, align 4
  %36 = mul nsw i32 %35, 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %34, %37
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @WR4(%struct.aw_thermal_softc* %33, i64 %38, i32 %39)
  ret void
}

declare dso_local i32 @RD4(%struct.aw_thermal_softc*, i64) #1

declare dso_local i32 @WR4(%struct.aw_thermal_softc*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
