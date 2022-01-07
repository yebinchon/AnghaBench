; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_thermal.c_mv_thermal_read_sensor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_thermal.c_mv_thermal_read_sensor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_thermal_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i64, i64 }

@STATUS = common dso_local global i32 0, align 4
@STATUS_TEMP_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mv_thermal_softc*, i32, i32*)* @mv_thermal_read_sensor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_thermal_read_sensor(%struct.mv_thermal_softc* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mv_thermal_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.mv_thermal_softc* %0, %struct.mv_thermal_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load %struct.mv_thermal_softc*, %struct.mv_thermal_softc** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i64 @mv_thermal_select_sensor(%struct.mv_thermal_softc* %11, i32 %12)
  store i64 %13, i64* %10, align 8
  %14 = load i64, i64* %10, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i64, i64* %10, align 8
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %4, align 4
  br label %61

19:                                               ; preds = %3
  %20 = load %struct.mv_thermal_softc*, %struct.mv_thermal_softc** %5, align 8
  %21 = load i32, i32* @STATUS, align 4
  %22 = call i64 @RD4(%struct.mv_thermal_softc* %20, i32 %21)
  %23 = load i64, i64* @STATUS_TEMP_MASK, align 8
  %24 = and i64 %22, %23
  store i64 %24, i64* %8, align 8
  %25 = load %struct.mv_thermal_softc*, %struct.mv_thermal_softc** %5, align 8
  %26 = getelementptr inbounds %struct.mv_thermal_softc, %struct.mv_thermal_softc* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %19
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* @STATUS_TEMP_MASK, align 8
  %34 = call i64 @fls(i64 %33)
  %35 = sub nsw i64 %34, 1
  %36 = call i64 @sign_extend(i64 %32, i64 %35)
  store i64 %36, i64* %9, align 8
  br label %39

37:                                               ; preds = %19
  %38 = load i64, i64* %8, align 8
  store i64 %38, i64* %9, align 8
  br label %39

39:                                               ; preds = %37, %31
  %40 = load i64, i64* %9, align 8
  %41 = load %struct.mv_thermal_softc*, %struct.mv_thermal_softc** %5, align 8
  %42 = getelementptr inbounds %struct.mv_thermal_softc, %struct.mv_thermal_softc* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = mul nsw i64 %40, %45
  %47 = load %struct.mv_thermal_softc*, %struct.mv_thermal_softc** %5, align 8
  %48 = getelementptr inbounds %struct.mv_thermal_softc, %struct.mv_thermal_softc* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %46, %51
  %53 = load %struct.mv_thermal_softc*, %struct.mv_thermal_softc** %5, align 8
  %54 = getelementptr inbounds %struct.mv_thermal_softc, %struct.mv_thermal_softc* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = sdiv i64 %52, %57
  %59 = trunc i64 %58 to i32
  %60 = load i32*, i32** %7, align 8
  store i32 %59, i32* %60, align 4
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %39, %16
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i64 @mv_thermal_select_sensor(%struct.mv_thermal_softc*, i32) #1

declare dso_local i64 @RD4(%struct.mv_thermal_softc*, i32) #1

declare dso_local i64 @sign_extend(i64, i64) #1

declare dso_local i64 @fls(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
