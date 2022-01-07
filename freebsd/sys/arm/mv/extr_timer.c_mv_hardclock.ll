; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_timer.c_mv_hardclock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_timer.c_mv_hardclock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.mv_timer_softc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 (%struct.TYPE_6__*, i32)*, i64 }

@timer_softc = common dso_local global %struct.TYPE_5__* null, align 8
@FILTER_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @mv_hardclock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_hardclock(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mv_timer_softc*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** @timer_softc, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @read_cpu_ctrl(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** @timer_softc, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %4, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %4, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** @timer_softc, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @write_cpu_ctrl(i32 %22, i32 %23)
  %25 = load i8*, i8** %2, align 8
  %26 = bitcast i8* %25 to %struct.mv_timer_softc*
  store %struct.mv_timer_softc* %26, %struct.mv_timer_softc** %3, align 8
  %27 = load %struct.mv_timer_softc*, %struct.mv_timer_softc** %3, align 8
  %28 = getelementptr inbounds %struct.mv_timer_softc, %struct.mv_timer_softc* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %1
  %33 = load %struct.mv_timer_softc*, %struct.mv_timer_softc** %3, align 8
  %34 = getelementptr inbounds %struct.mv_timer_softc, %struct.mv_timer_softc* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32 (%struct.TYPE_6__*, i32)*, i32 (%struct.TYPE_6__*, i32)** %35, align 8
  %37 = load %struct.mv_timer_softc*, %struct.mv_timer_softc** %3, align 8
  %38 = getelementptr inbounds %struct.mv_timer_softc, %struct.mv_timer_softc* %37, i32 0, i32 0
  %39 = load %struct.mv_timer_softc*, %struct.mv_timer_softc** %3, align 8
  %40 = getelementptr inbounds %struct.mv_timer_softc, %struct.mv_timer_softc* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 %36(%struct.TYPE_6__* %38, i32 %42)
  br label %44

44:                                               ; preds = %32, %1
  %45 = load i32, i32* @FILTER_HANDLED, align 4
  ret i32 %45
}

declare dso_local i32 @read_cpu_ctrl(i32) #1

declare dso_local i32 @write_cpu_ctrl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
