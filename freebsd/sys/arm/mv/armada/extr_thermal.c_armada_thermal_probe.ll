; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/armada/extr_thermal.c_armada_thermal_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/armada/extr_thermal.c_armada_thermal_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.armada_thermal_softc = type { i32* }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"marvell,armada380-thermal\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Armada380 Thermal Control\00", align 1
@armada380_tdata = common dso_local global i32 0, align 4
@BUS_PROBE_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @armada_thermal_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @armada_thermal_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.armada_thermal_softc*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.armada_thermal_softc* @device_get_softc(i32 %5)
  store %struct.armada_thermal_softc* %6, %struct.armada_thermal_softc** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @ofw_bus_status_okay(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENXIO, align 4
  store i32 %11, i32* %2, align 4
  br label %24

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = call i64 @ofw_bus_is_compatible(i32 %13, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %12
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @device_set_desc(i32 %17, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %19 = load %struct.armada_thermal_softc*, %struct.armada_thermal_softc** %4, align 8
  %20 = getelementptr inbounds %struct.armada_thermal_softc, %struct.armada_thermal_softc* %19, i32 0, i32 0
  store i32* @armada380_tdata, i32** %20, align 8
  %21 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %21, i32* %2, align 4
  br label %24

22:                                               ; preds = %12
  %23 = load i32, i32* @ENXIO, align 4
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %22, %16, %10
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local %struct.armada_thermal_softc* @device_get_softc(i32) #1

declare dso_local i32 @ofw_bus_status_okay(i32) #1

declare dso_local i64 @ofw_bus_is_compatible(i32, i8*) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
