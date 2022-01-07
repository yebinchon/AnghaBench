; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_if_awg.c_awg_tick.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_if_awg.c_awg_tick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.awg_softc = type { i32, i32, i32, i32 }
%struct.mii_data = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @awg_tick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @awg_tick(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.awg_softc*, align 8
  %4 = alloca %struct.mii_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.awg_softc*
  store %struct.awg_softc* %8, %struct.awg_softc** %3, align 8
  %9 = load %struct.awg_softc*, %struct.awg_softc** %3, align 8
  %10 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  %12 = load %struct.awg_softc*, %struct.awg_softc** %3, align 8
  %13 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.mii_data* @device_get_softc(i32 %14)
  store %struct.mii_data* %15, %struct.mii_data** %4, align 8
  %16 = load %struct.awg_softc*, %struct.awg_softc** %3, align 8
  %17 = call i32 @AWG_ASSERT_LOCKED(%struct.awg_softc* %16)
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @if_getdrvflags(i32 %18)
  %20 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  br label %46

24:                                               ; preds = %1
  %25 = load %struct.awg_softc*, %struct.awg_softc** %3, align 8
  %26 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %6, align 4
  %28 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %29 = call i32 @mii_tick(%struct.mii_data* %28)
  %30 = load %struct.awg_softc*, %struct.awg_softc** %3, align 8
  %31 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %24
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load %struct.awg_softc*, %struct.awg_softc** %3, align 8
  %39 = call i32 @awg_start_locked(%struct.awg_softc* %38)
  br label %40

40:                                               ; preds = %37, %34, %24
  %41 = load %struct.awg_softc*, %struct.awg_softc** %3, align 8
  %42 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %41, i32 0, i32 1
  %43 = load i32, i32* @hz, align 4
  %44 = load %struct.awg_softc*, %struct.awg_softc** %3, align 8
  %45 = call i32 @callout_reset(i32* %42, i32 %43, void (i8*)* @awg_tick, %struct.awg_softc* %44)
  br label %46

46:                                               ; preds = %40, %23
  ret void
}

declare dso_local %struct.mii_data* @device_get_softc(i32) #1

declare dso_local i32 @AWG_ASSERT_LOCKED(%struct.awg_softc*) #1

declare dso_local i32 @if_getdrvflags(i32) #1

declare dso_local i32 @mii_tick(%struct.mii_data*) #1

declare dso_local i32 @awg_start_locked(%struct.awg_softc*) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.awg_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
