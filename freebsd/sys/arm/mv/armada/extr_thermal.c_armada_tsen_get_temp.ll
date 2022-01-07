; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/armada/extr_thermal.c_armada_tsen_get_temp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/armada/extr_thermal.c_armada_tsen_get_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.armada_thermal_softc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i64, i32 (%struct.armada_thermal_softc*)* }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.armada_thermal_softc*, i32*)* @armada_tsen_get_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @armada_tsen_get_temp(%struct.armada_thermal_softc* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.armada_thermal_softc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_2__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.armada_thermal_softc* %0, %struct.armada_thermal_softc** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load %struct.armada_thermal_softc*, %struct.armada_thermal_softc** %4, align 8
  %13 = getelementptr inbounds %struct.armada_thermal_softc, %struct.armada_thermal_softc* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  store %struct.TYPE_2__* %14, %struct.TYPE_2__** %6, align 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 6
  %17 = load i32 (%struct.armada_thermal_softc*)*, i32 (%struct.armada_thermal_softc*)** %16, align 8
  %18 = icmp ne i32 (%struct.armada_thermal_softc*)* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 6
  %22 = load i32 (%struct.armada_thermal_softc*)*, i32 (%struct.armada_thermal_softc*)** %21, align 8
  %23 = load %struct.armada_thermal_softc*, %struct.armada_thermal_softc** %4, align 8
  %24 = call i32 %22(%struct.armada_thermal_softc* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* @EIO, align 4
  store i32 %27, i32* %3, align 4
  br label %75

28:                                               ; preds = %19, %2
  %29 = load %struct.armada_thermal_softc*, %struct.armada_thermal_softc** %4, align 8
  %30 = getelementptr inbounds %struct.armada_thermal_softc, %struct.armada_thermal_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @bus_read_4(i32 %31, i32 0)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = ashr i32 %33, %36
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %37, %40
  store i32 %41, i32* %7, align 4
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %10, align 4
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %9, align 4
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %11, align 4
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 5
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %28
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %7, align 4
  %58 = mul nsw i32 %56, %57
  %59 = load i32, i32* %10, align 4
  %60 = sub nsw i32 %58, %59
  %61 = load i32, i32* %11, align 4
  %62 = sdiv i32 %60, %61
  store i32 %62, i32* %8, align 4
  br label %71

63:                                               ; preds = %28
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %7, align 4
  %67 = mul nsw i32 %65, %66
  %68 = sub nsw i32 %64, %67
  %69 = load i32, i32* %11, align 4
  %70 = sdiv i32 %68, %69
  store i32 %70, i32* %8, align 4
  br label %71

71:                                               ; preds = %63, %55
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @READOUT_TO_C(i32 %72)
  %74 = load i32*, i32** %5, align 8
  store i32 %73, i32* %74, align 4
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %71, %26
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @bus_read_4(i32, i32) #1

declare dso_local i32 @READOUT_TO_C(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
