; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/coresight/extr_coresight-tmc.c_tmc_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/coresight/extr_coresight-tmc.c_tmc_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.endpoint = type { i32 }
%struct.coresight_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i32 }
%struct.tmc_softc = type { i64, i32, %struct.coresight_event* }

@CORESIGHT_ETF = common dso_local global i64 0, align 8
@TMC_STS = common dso_local global i32 0, align 4
@STS_FULL = common dso_local global i32 0, align 4
@TMC_RWP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.endpoint*, %struct.coresight_event*)* @tmc_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmc_read(i32 %0, %struct.endpoint* %1, %struct.coresight_event* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.endpoint*, align 8
  %7 = alloca %struct.coresight_event*, align 8
  %8 = alloca %struct.tmc_softc*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.endpoint* %1, %struct.endpoint** %6, align 8
  store %struct.coresight_event* %2, %struct.coresight_event** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.tmc_softc* @device_get_softc(i32 %10)
  store %struct.tmc_softc* %11, %struct.tmc_softc** %8, align 8
  %12 = load %struct.tmc_softc*, %struct.tmc_softc** %8, align 8
  %13 = getelementptr inbounds %struct.tmc_softc, %struct.tmc_softc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @CORESIGHT_ETF, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %64

18:                                               ; preds = %3
  %19 = load %struct.tmc_softc*, %struct.tmc_softc** %8, align 8
  %20 = getelementptr inbounds %struct.tmc_softc, %struct.tmc_softc* %19, i32 0, i32 2
  %21 = load %struct.coresight_event*, %struct.coresight_event** %20, align 8
  %22 = load %struct.coresight_event*, %struct.coresight_event** %7, align 8
  %23 = icmp ne %struct.coresight_event* %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %64

25:                                               ; preds = %18
  %26 = load %struct.tmc_softc*, %struct.tmc_softc** %8, align 8
  %27 = getelementptr inbounds %struct.tmc_softc, %struct.tmc_softc* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @TMC_STS, align 4
  %30 = call i32 @bus_read_4(i32 %28, i32 %29)
  %31 = load i32, i32* @STS_FULL, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %25
  %35 = load %struct.coresight_event*, %struct.coresight_event** %7, align 8
  %36 = getelementptr inbounds %struct.coresight_event, %struct.coresight_event* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = load %struct.coresight_event*, %struct.coresight_event** %7, align 8
  %39 = getelementptr inbounds %struct.coresight_event, %struct.coresight_event* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @tmc_stop(i32 %43)
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @tmc_start(i32 %45)
  br label %63

47:                                               ; preds = %25
  %48 = load %struct.tmc_softc*, %struct.tmc_softc** %8, align 8
  %49 = getelementptr inbounds %struct.tmc_softc, %struct.tmc_softc* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @TMC_RWP, align 4
  %52 = call i32 @bus_read_4(i32 %50, i32 %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = load %struct.coresight_event*, %struct.coresight_event** %7, align 8
  %56 = getelementptr inbounds %struct.coresight_event, %struct.coresight_event* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = sub nsw i64 %54, %58
  %60 = load %struct.coresight_event*, %struct.coresight_event** %7, align 8
  %61 = getelementptr inbounds %struct.coresight_event, %struct.coresight_event* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  store i64 %59, i64* %62, align 8
  br label %63

63:                                               ; preds = %47, %34
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %63, %24, %17
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local %struct.tmc_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_read_4(i32, i32) #1

declare dso_local i32 @tmc_stop(i32) #1

declare dso_local i32 @tmc_start(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
