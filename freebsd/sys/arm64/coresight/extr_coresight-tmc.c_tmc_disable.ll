; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/coresight/extr_coresight-tmc.c_tmc_disable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/coresight/extr_coresight-tmc.c_tmc_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.endpoint = type { i32 }
%struct.coresight_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.tmc_softc = type { i64, i32*, i32 }

@CORESIGHT_ETF = common dso_local global i64 0, align 8
@CORESIGHT_ETR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"Wrong dev_type\00", align 1
@ETR_FLAG_RELEASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.endpoint*, %struct.coresight_event*)* @tmc_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tmc_disable(i32 %0, %struct.endpoint* %1, %struct.coresight_event* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.endpoint*, align 8
  %6 = alloca %struct.coresight_event*, align 8
  %7 = alloca %struct.tmc_softc*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.endpoint* %1, %struct.endpoint** %5, align 8
  store %struct.coresight_event* %2, %struct.coresight_event** %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.tmc_softc* @device_get_softc(i32 %9)
  store %struct.tmc_softc* %10, %struct.tmc_softc** %7, align 8
  %11 = load %struct.tmc_softc*, %struct.tmc_softc** %7, align 8
  %12 = getelementptr inbounds %struct.tmc_softc, %struct.tmc_softc* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @CORESIGHT_ETF, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %51

17:                                               ; preds = %3
  %18 = load %struct.tmc_softc*, %struct.tmc_softc** %7, align 8
  %19 = getelementptr inbounds %struct.tmc_softc, %struct.tmc_softc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @CORESIGHT_ETR, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @KASSERT(i32 %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.coresight_event*, %struct.coresight_event** %6, align 8
  %26 = getelementptr inbounds %struct.coresight_event, %struct.coresight_event* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @ETR_FLAG_RELEASE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %51

32:                                               ; preds = %17
  %33 = load i32, i32* @ETR_FLAG_RELEASE, align 4
  %34 = xor i32 %33, -1
  %35 = load %struct.coresight_event*, %struct.coresight_event** %6, align 8
  %36 = getelementptr inbounds %struct.coresight_event, %struct.coresight_event* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, %34
  store i32 %39, i32* %37, align 4
  %40 = load %struct.tmc_softc*, %struct.tmc_softc** %7, align 8
  %41 = getelementptr inbounds %struct.tmc_softc, %struct.tmc_softc* %40, i32 0, i32 2
  %42 = call i32 @atomic_fetchadd_int(i32* %41, i32 -1)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %50

45:                                               ; preds = %32
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @tmc_stop(i32 %46)
  %48 = load %struct.tmc_softc*, %struct.tmc_softc** %7, align 8
  %49 = getelementptr inbounds %struct.tmc_softc, %struct.tmc_softc* %48, i32 0, i32 1
  store i32* null, i32** %49, align 8
  br label %50

50:                                               ; preds = %45, %32
  br label %51

51:                                               ; preds = %16, %50, %17
  ret void
}

declare dso_local %struct.tmc_softc* @device_get_softc(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @atomic_fetchadd_int(i32*, i32) #1

declare dso_local i32 @tmc_stop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
