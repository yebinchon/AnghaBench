; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_thermal.c_mv_thermal_select_sensor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_thermal.c_mv_thermal_select_sensor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_thermal_softc = type { i32 }

@CONTROL0 = common dso_local global i32 0, align 4
@CONTROL0_TSEN_START = common dso_local global i32 0, align 4
@CONTROL0_TSEN_EN = common dso_local global i32 0, align 4
@CONTROL0_MODE_MASK = common dso_local global i32 0, align 4
@CONTROL0_MODE_SHIFT = common dso_local global i32 0, align 4
@CONTROL0_MODE_EXTERNAL = common dso_local global i32 0, align 4
@CONTROL0_CHANNEL_MASK = common dso_local global i32 0, align 4
@CONTROL0_CHANNEL_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mv_thermal_softc*, i32)* @mv_thermal_select_sensor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_thermal_select_sensor(%struct.mv_thermal_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mv_thermal_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mv_thermal_softc* %0, %struct.mv_thermal_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.mv_thermal_softc*, %struct.mv_thermal_softc** %4, align 8
  %8 = getelementptr inbounds %struct.mv_thermal_softc, %struct.mv_thermal_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %75

13:                                               ; preds = %2
  %14 = load %struct.mv_thermal_softc*, %struct.mv_thermal_softc** %4, align 8
  %15 = load i32, i32* @CONTROL0, align 4
  %16 = call i32 @RD4(%struct.mv_thermal_softc* %14, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* @CONTROL0_TSEN_START, align 4
  %18 = load i32, i32* @CONTROL0_TSEN_EN, align 4
  %19 = or i32 %17, %18
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %6, align 4
  %23 = load %struct.mv_thermal_softc*, %struct.mv_thermal_softc** %4, align 8
  %24 = load i32, i32* @CONTROL0, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @WR4(%struct.mv_thermal_softc* %23, i32 %24, i32 %25)
  %27 = load i32, i32* @CONTROL0_MODE_MASK, align 4
  %28 = load i32, i32* @CONTROL0_MODE_SHIFT, align 4
  %29 = shl i32 %27, %28
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %53

35:                                               ; preds = %13
  %36 = load i32, i32* @CONTROL0_MODE_EXTERNAL, align 4
  %37 = load i32, i32* @CONTROL0_MODE_SHIFT, align 4
  %38 = shl i32 %36, %37
  %39 = load i32, i32* %6, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* @CONTROL0_CHANNEL_MASK, align 4
  %42 = load i32, i32* @CONTROL0_CHANNEL_SHIFT, align 4
  %43 = shl i32 %41, %42
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %6, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %5, align 4
  %48 = sub nsw i32 %47, 1
  %49 = load i32, i32* @CONTROL0_CHANNEL_SHIFT, align 4
  %50 = shl i32 %48, %49
  %51 = load i32, i32* %6, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %35, %13
  %54 = load %struct.mv_thermal_softc*, %struct.mv_thermal_softc** %4, align 8
  %55 = load i32, i32* @CONTROL0, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @WR4(%struct.mv_thermal_softc* %54, i32 %55, i32 %56)
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.mv_thermal_softc*, %struct.mv_thermal_softc** %4, align 8
  %60 = getelementptr inbounds %struct.mv_thermal_softc, %struct.mv_thermal_softc* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load %struct.mv_thermal_softc*, %struct.mv_thermal_softc** %4, align 8
  %62 = load i32, i32* @CONTROL0, align 4
  %63 = call i32 @RD4(%struct.mv_thermal_softc* %61, i32 %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* @CONTROL0_TSEN_START, align 4
  %65 = load i32, i32* @CONTROL0_TSEN_EN, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* %6, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %6, align 4
  %69 = load %struct.mv_thermal_softc*, %struct.mv_thermal_softc** %4, align 8
  %70 = load i32, i32* @CONTROL0, align 4
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @WR4(%struct.mv_thermal_softc* %69, i32 %70, i32 %71)
  %73 = load %struct.mv_thermal_softc*, %struct.mv_thermal_softc** %4, align 8
  %74 = call i32 @mv_thermal_wait_sensor(%struct.mv_thermal_softc* %73)
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %53, %12
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @RD4(%struct.mv_thermal_softc*, i32) #1

declare dso_local i32 @WR4(%struct.mv_thermal_softc*, i32, i32) #1

declare dso_local i32 @mv_thermal_wait_sensor(%struct.mv_thermal_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
