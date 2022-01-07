; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/coresight/extr_coresight-dynamic-replicator.c_replicator_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/coresight/extr_coresight-dynamic-replicator.c_replicator_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.endpoint = type { i64 }
%struct.coresight_event = type { i32 }
%struct.replicator_softc = type { i32 }

@REPLICATOR_IDFILTER0 = common dso_local global i32 0, align 4
@REPLICATOR_IDFILTER1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.endpoint*, %struct.coresight_event*)* @replicator_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @replicator_enable(i32 %0, %struct.endpoint* %1, %struct.coresight_event* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.endpoint*, align 8
  %6 = alloca %struct.coresight_event*, align 8
  %7 = alloca %struct.replicator_softc*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.endpoint* %1, %struct.endpoint** %5, align 8
  store %struct.coresight_event* %2, %struct.coresight_event** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.replicator_softc* @device_get_softc(i32 %8)
  store %struct.replicator_softc* %9, %struct.replicator_softc** %7, align 8
  %10 = load %struct.endpoint*, %struct.endpoint** %5, align 8
  %11 = getelementptr inbounds %struct.endpoint, %struct.endpoint* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %3
  %15 = load %struct.replicator_softc*, %struct.replicator_softc** %7, align 8
  %16 = getelementptr inbounds %struct.replicator_softc, %struct.replicator_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @REPLICATOR_IDFILTER0, align 4
  %19 = call i32 @bus_write_4(i32 %17, i32 %18, i32 0)
  %20 = load %struct.replicator_softc*, %struct.replicator_softc** %7, align 8
  %21 = getelementptr inbounds %struct.replicator_softc, %struct.replicator_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @REPLICATOR_IDFILTER1, align 4
  %24 = call i32 @bus_write_4(i32 %22, i32 %23, i32 255)
  br label %36

25:                                               ; preds = %3
  %26 = load %struct.replicator_softc*, %struct.replicator_softc** %7, align 8
  %27 = getelementptr inbounds %struct.replicator_softc, %struct.replicator_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @REPLICATOR_IDFILTER0, align 4
  %30 = call i32 @bus_write_4(i32 %28, i32 %29, i32 255)
  %31 = load %struct.replicator_softc*, %struct.replicator_softc** %7, align 8
  %32 = getelementptr inbounds %struct.replicator_softc, %struct.replicator_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @REPLICATOR_IDFILTER1, align 4
  %35 = call i32 @bus_write_4(i32 %33, i32 %34, i32 0)
  br label %36

36:                                               ; preds = %25, %14
  ret i32 0
}

declare dso_local %struct.replicator_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_write_4(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
