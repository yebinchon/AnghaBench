; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_thermal.c_aw_thermal_throttle.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_thermal.c_aw_thermal_throttle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aw_thermal_softc = type { i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"cpufreq\00", align 1
@MAX_CF_LEVELS = common dso_local global i32 0, align 4
@CPUFREQ_PRIO_USER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aw_thermal_softc*, i32)* @aw_thermal_throttle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aw_thermal_throttle(%struct.aw_thermal_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.aw_thermal_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.aw_thermal_softc* %0, %struct.aw_thermal_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.aw_thermal_softc*, %struct.aw_thermal_softc** %3, align 8
  %10 = getelementptr inbounds %struct.aw_thermal_softc, %struct.aw_thermal_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp eq i32 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %67

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %63

17:                                               ; preds = %14
  %18 = call i32 @devclass_find(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %19 = call i32* @devclass_get_device(i32 %18, i32 0)
  store i32* %19, i32** %5, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %67

23:                                               ; preds = %17
  %24 = load i32, i32* @MAX_CF_LEVELS, align 4
  store i32 %24, i32* %6, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = load %struct.aw_thermal_softc*, %struct.aw_thermal_softc** %3, align 8
  %27 = getelementptr inbounds %struct.aw_thermal_softc, %struct.aw_thermal_softc* %26, i32 0, i32 1
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = call i32 @CPUFREQ_LEVELS(i32* %25, %struct.TYPE_5__* %28, i32* %6)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %23
  %33 = load i32, i32* %6, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32, %23
  br label %67

36:                                               ; preds = %32
  %37 = load %struct.aw_thermal_softc*, %struct.aw_thermal_softc** %3, align 8
  %38 = getelementptr inbounds %struct.aw_thermal_softc, %struct.aw_thermal_softc* %37, i32 0, i32 1
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sub nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.aw_thermal_softc*, %struct.aw_thermal_softc** %3, align 8
  %48 = getelementptr inbounds %struct.aw_thermal_softc, %struct.aw_thermal_softc* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = load %struct.aw_thermal_softc*, %struct.aw_thermal_softc** %3, align 8
  %51 = getelementptr inbounds %struct.aw_thermal_softc, %struct.aw_thermal_softc* %50, i32 0, i32 1
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sub nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i64 %55
  %57 = load i32, i32* @CPUFREQ_PRIO_USER, align 4
  %58 = call i32 @CPUFREQ_SET(i32* %49, %struct.TYPE_5__* %56, i32 %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %36
  br label %67

62:                                               ; preds = %36
  br label %63

63:                                               ; preds = %62, %14
  %64 = load i32, i32* %4, align 4
  %65 = load %struct.aw_thermal_softc*, %struct.aw_thermal_softc** %3, align 8
  %66 = getelementptr inbounds %struct.aw_thermal_softc, %struct.aw_thermal_softc* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  br label %67

67:                                               ; preds = %63, %61, %35, %22, %13
  ret void
}

declare dso_local i32* @devclass_get_device(i32, i32) #1

declare dso_local i32 @devclass_find(i8*) #1

declare dso_local i32 @CPUFREQ_LEVELS(i32*, %struct.TYPE_5__*, i32*) #1

declare dso_local i32 @CPUFREQ_SET(i32*, %struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
