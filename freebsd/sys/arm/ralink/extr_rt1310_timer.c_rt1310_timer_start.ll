; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ralink/extr_rt1310_timer.c_rt1310_timer_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ralink/extr_rt1310_timer.c_rt1310_timer_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eventtimer = type { i64, i64 }
%struct.rt1310_timer_softc = type { i32, i32 }

@RT_TIMER_CONTROL = common dso_local global i32 0, align 4
@RT_TIMER_LOAD = common dso_local global i32 0, align 4
@RT_TIMER_VALUE = common dso_local global i32 0, align 4
@RT_TIMER_CTRL_ENABLE = common dso_local global i32 0, align 4
@RT_TIMER_CTRL_INTCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eventtimer*, i32, i32)* @rt1310_timer_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt1310_timer_start(%struct.eventtimer* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.eventtimer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rt1310_timer_softc*, align 8
  %8 = alloca i32, align 4
  store %struct.eventtimer* %0, %struct.eventtimer** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.eventtimer*, %struct.eventtimer** %4, align 8
  %10 = getelementptr inbounds %struct.eventtimer, %struct.eventtimer* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.rt1310_timer_softc*
  store %struct.rt1310_timer_softc* %12, %struct.rt1310_timer_softc** %7, align 8
  %13 = load i32, i32* %6, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load %struct.rt1310_timer_softc*, %struct.rt1310_timer_softc** %7, align 8
  %17 = getelementptr inbounds %struct.rt1310_timer_softc, %struct.rt1310_timer_softc* %16, i32 0, i32 0
  store i32 1, i32* %17, align 4
  %18 = load %struct.rt1310_timer_softc*, %struct.rt1310_timer_softc** %7, align 8
  %19 = getelementptr inbounds %struct.rt1310_timer_softc, %struct.rt1310_timer_softc* %18, i32 0, i32 1
  store i32 0, i32* %19, align 4
  br label %32

20:                                               ; preds = %3
  %21 = load %struct.rt1310_timer_softc*, %struct.rt1310_timer_softc** %7, align 8
  %22 = getelementptr inbounds %struct.rt1310_timer_softc, %struct.rt1310_timer_softc* %21, i32 0, i32 0
  store i32 0, i32* %22, align 4
  %23 = load %struct.eventtimer*, %struct.eventtimer** %4, align 8
  %24 = getelementptr inbounds %struct.eventtimer, %struct.eventtimer* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = trunc i64 %25 to i32
  %27 = load i32, i32* %6, align 4
  %28 = mul nsw i32 %26, %27
  %29 = ashr i32 %28, 32
  %30 = load %struct.rt1310_timer_softc*, %struct.rt1310_timer_softc** %7, align 8
  %31 = getelementptr inbounds %struct.rt1310_timer_softc, %struct.rt1310_timer_softc* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  br label %32

32:                                               ; preds = %20, %15
  %33 = load i32, i32* %5, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load %struct.rt1310_timer_softc*, %struct.rt1310_timer_softc** %7, align 8
  %37 = getelementptr inbounds %struct.rt1310_timer_softc, %struct.rt1310_timer_softc* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %8, align 4
  br label %47

39:                                               ; preds = %32
  %40 = load %struct.eventtimer*, %struct.eventtimer** %4, align 8
  %41 = getelementptr inbounds %struct.eventtimer, %struct.eventtimer* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = load i32, i32* %5, align 4
  %45 = mul nsw i32 %43, %44
  %46 = ashr i32 %45, 32
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %39, %35
  %48 = load %struct.rt1310_timer_softc*, %struct.rt1310_timer_softc** %7, align 8
  %49 = load i32, i32* @RT_TIMER_CONTROL, align 4
  %50 = call i32 @timer2_write_4(%struct.rt1310_timer_softc* %48, i32 %49, i32 0)
  %51 = load %struct.rt1310_timer_softc*, %struct.rt1310_timer_softc** %7, align 8
  %52 = load i32, i32* @RT_TIMER_LOAD, align 4
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @timer2_write_4(%struct.rt1310_timer_softc* %51, i32 %52, i32 %53)
  %55 = load %struct.rt1310_timer_softc*, %struct.rt1310_timer_softc** %7, align 8
  %56 = load i32, i32* @RT_TIMER_VALUE, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @timer2_write_4(%struct.rt1310_timer_softc* %55, i32 %56, i32 %57)
  %59 = load %struct.rt1310_timer_softc*, %struct.rt1310_timer_softc** %7, align 8
  %60 = load i32, i32* @RT_TIMER_CONTROL, align 4
  %61 = load i32, i32* @RT_TIMER_CTRL_ENABLE, align 4
  %62 = load i32, i32* @RT_TIMER_CTRL_INTCTL, align 4
  %63 = or i32 %61, %62
  %64 = call i32 @timer2_write_4(%struct.rt1310_timer_softc* %59, i32 %60, i32 %63)
  ret i32 0
}

declare dso_local i32 @timer2_write_4(%struct.rt1310_timer_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
