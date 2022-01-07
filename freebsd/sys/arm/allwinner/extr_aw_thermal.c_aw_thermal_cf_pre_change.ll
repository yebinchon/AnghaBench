; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_thermal.c_aw_thermal_cf_pre_change.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_thermal.c_aw_thermal_cf_pre_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_level = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.aw_thermal_softc = type { i64, i64 }

@aw_thermal_throttle_enable = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.cf_level*, i32*)* @aw_thermal_cf_pre_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aw_thermal_cf_pre_change(i8* %0, %struct.cf_level* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.cf_level*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.aw_thermal_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.cf_level* %1, %struct.cf_level** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.aw_thermal_softc*
  store %struct.aw_thermal_softc* %11, %struct.aw_thermal_softc** %7, align 8
  %12 = load i64, i64* @aw_thermal_throttle_enable, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %28, label %14

14:                                               ; preds = %3
  %15 = load %struct.aw_thermal_softc*, %struct.aw_thermal_softc** %7, align 8
  %16 = getelementptr inbounds %struct.aw_thermal_softc, %struct.aw_thermal_softc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %14
  %20 = load %struct.cf_level*, %struct.cf_level** %5, align 8
  %21 = getelementptr inbounds %struct.cf_level, %struct.cf_level* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.aw_thermal_softc*, %struct.aw_thermal_softc** %7, align 8
  %25 = getelementptr inbounds %struct.aw_thermal_softc, %struct.aw_thermal_softc* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %19, %14, %3
  br label %43

29:                                               ; preds = %19
  %30 = load %struct.aw_thermal_softc*, %struct.aw_thermal_softc** %7, align 8
  %31 = call i32 @aw_thermal_gettemp(%struct.aw_thermal_softc* %30, i32 0)
  store i32 %31, i32* %8, align 4
  %32 = load %struct.aw_thermal_softc*, %struct.aw_thermal_softc** %7, align 8
  %33 = call i32 @aw_thermal_getalarm(%struct.aw_thermal_softc* %32, i32 0)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %29
  %38 = load %struct.aw_thermal_softc*, %struct.aw_thermal_softc** %7, align 8
  %39 = call i32 @aw_thermal_throttle(%struct.aw_thermal_softc* %38, i32 0)
  br label %43

40:                                               ; preds = %29
  %41 = load i32, i32* @ENXIO, align 4
  %42 = load i32*, i32** %6, align 8
  store i32 %41, i32* %42, align 4
  br label %43

43:                                               ; preds = %28, %40, %37
  ret void
}

declare dso_local i32 @aw_thermal_gettemp(%struct.aw_thermal_softc*, i32) #1

declare dso_local i32 @aw_thermal_getalarm(%struct.aw_thermal_softc*, i32) #1

declare dso_local i32 @aw_thermal_throttle(%struct.aw_thermal_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
