; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/armada/extr_thermal.c_armada_thermal_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/armada/extr_thermal.c_armada_thermal_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.armada_thermal_softc = type { i32*, i32*, i64, i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @armada_thermal_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @armada_thermal_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.armada_thermal_softc*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.armada_thermal_softc* @device_get_softc(i32 %5)
  store %struct.armada_thermal_softc* %6, %struct.armada_thermal_softc** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @device_is_attached(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %41

11:                                               ; preds = %1
  %12 = load %struct.armada_thermal_softc*, %struct.armada_thermal_softc** %4, align 8
  %13 = getelementptr inbounds %struct.armada_thermal_softc, %struct.armada_thermal_softc* %12, i32 0, i32 3
  %14 = call i32 @callout_drain(i32* %13)
  %15 = load %struct.armada_thermal_softc*, %struct.armada_thermal_softc** %4, align 8
  %16 = getelementptr inbounds %struct.armada_thermal_softc, %struct.armada_thermal_softc* %15, i32 0, i32 2
  store i64 0, i64* %16, align 8
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @SYS_RES_MEMORY, align 4
  %19 = load %struct.armada_thermal_softc*, %struct.armada_thermal_softc** %4, align 8
  %20 = getelementptr inbounds %struct.armada_thermal_softc, %struct.armada_thermal_softc* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @rman_get_rid(i32* %21)
  %23 = load %struct.armada_thermal_softc*, %struct.armada_thermal_softc** %4, align 8
  %24 = getelementptr inbounds %struct.armada_thermal_softc, %struct.armada_thermal_softc* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @bus_release_resource(i32 %17, i32 %18, i32 %22, i32* %25)
  %27 = load %struct.armada_thermal_softc*, %struct.armada_thermal_softc** %4, align 8
  %28 = getelementptr inbounds %struct.armada_thermal_softc, %struct.armada_thermal_softc* %27, i32 0, i32 1
  store i32* null, i32** %28, align 8
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @SYS_RES_MEMORY, align 4
  %31 = load %struct.armada_thermal_softc*, %struct.armada_thermal_softc** %4, align 8
  %32 = getelementptr inbounds %struct.armada_thermal_softc, %struct.armada_thermal_softc* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @rman_get_rid(i32* %33)
  %35 = load %struct.armada_thermal_softc*, %struct.armada_thermal_softc** %4, align 8
  %36 = getelementptr inbounds %struct.armada_thermal_softc, %struct.armada_thermal_softc* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @bus_release_resource(i32 %29, i32 %30, i32 %34, i32* %37)
  %39 = load %struct.armada_thermal_softc*, %struct.armada_thermal_softc** %4, align 8
  %40 = getelementptr inbounds %struct.armada_thermal_softc, %struct.armada_thermal_softc* %39, i32 0, i32 0
  store i32* null, i32** %40, align 8
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %11, %10
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local %struct.armada_thermal_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_is_attached(i32) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @rman_get_rid(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
