; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/coresight/extr_coresight-tmc.c_tmc_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/coresight/extr_coresight-tmc.c_tmc_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.endpoint = type { i32 }
%struct.coresight_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.tmc_softc = type { i64, %struct.coresight_event*, i32 }

@CORESIGHT_ETF = common dso_local global i64 0, align 8
@CORESIGHT_ETR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"Wrong dev_type\00", align 1
@ETR_FLAG_ALLOCATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.endpoint*, %struct.coresight_event*)* @tmc_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmc_enable(i32 %0, %struct.endpoint* %1, %struct.coresight_event* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.endpoint*, align 8
  %7 = alloca %struct.coresight_event*, align 8
  %8 = alloca %struct.tmc_softc*, align 8
  %9 = alloca i64, align 8
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
  br label %60

18:                                               ; preds = %3
  %19 = load %struct.tmc_softc*, %struct.tmc_softc** %8, align 8
  %20 = getelementptr inbounds %struct.tmc_softc, %struct.tmc_softc* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @CORESIGHT_ETR, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @KASSERT(i32 %24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.coresight_event*, %struct.coresight_event** %7, align 8
  %27 = getelementptr inbounds %struct.coresight_event, %struct.coresight_event* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @ETR_FLAG_ALLOCATE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %59

33:                                               ; preds = %18
  %34 = load i32, i32* @ETR_FLAG_ALLOCATE, align 4
  %35 = xor i32 %34, -1
  %36 = load %struct.coresight_event*, %struct.coresight_event** %7, align 8
  %37 = getelementptr inbounds %struct.coresight_event, %struct.coresight_event* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, %35
  store i32 %40, i32* %38, align 4
  %41 = load %struct.tmc_softc*, %struct.tmc_softc** %8, align 8
  %42 = getelementptr inbounds %struct.tmc_softc, %struct.tmc_softc* %41, i32 0, i32 2
  %43 = call i64 @atomic_fetchadd_int(i32* %42, i32 1)
  store i64 %43, i64* %9, align 8
  %44 = load i64, i64* %9, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %33
  %47 = load %struct.coresight_event*, %struct.coresight_event** %7, align 8
  %48 = load %struct.tmc_softc*, %struct.tmc_softc** %8, align 8
  %49 = getelementptr inbounds %struct.tmc_softc, %struct.tmc_softc* %48, i32 0, i32 1
  store %struct.coresight_event* %47, %struct.coresight_event** %49, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @tmc_stop(i32 %50)
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.endpoint*, %struct.endpoint** %6, align 8
  %54 = load %struct.coresight_event*, %struct.coresight_event** %7, align 8
  %55 = call i32 @tmc_configure_etr(i32 %52, %struct.endpoint* %53, %struct.coresight_event* %54)
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @tmc_start(i32 %56)
  br label %58

58:                                               ; preds = %46, %33
  br label %59

59:                                               ; preds = %58, %18
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %59, %17
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local %struct.tmc_softc* @device_get_softc(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @atomic_fetchadd_int(i32*, i32) #1

declare dso_local i32 @tmc_stop(i32) #1

declare dso_local i32 @tmc_configure_etr(i32, %struct.endpoint*, %struct.coresight_event*) #1

declare dso_local i32 @tmc_start(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
