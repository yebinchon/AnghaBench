; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ralink/extr_rt1310_timer.c_rt1310_hardclock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ralink/extr_rt1310_timer.c_rt1310_hardclock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt1310_timer_softc = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 (%struct.TYPE_2__*, i32)*, i64 }

@RT_TIMER_CONTROL = common dso_local global i32 0, align 4
@RT_TIMER_LOAD = common dso_local global i32 0, align 4
@RT_TIMER_VALUE = common dso_local global i32 0, align 4
@RT_TIMER_CTRL_ENABLE = common dso_local global i32 0, align 4
@RT_TIMER_CTRL_INTCTL = common dso_local global i32 0, align 4
@FILTER_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @rt1310_hardclock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt1310_hardclock(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.rt1310_timer_softc*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.rt1310_timer_softc*
  store %struct.rt1310_timer_softc* %5, %struct.rt1310_timer_softc** %3, align 8
  %6 = load %struct.rt1310_timer_softc*, %struct.rt1310_timer_softc** %3, align 8
  %7 = load i32, i32* @RT_TIMER_CONTROL, align 4
  %8 = load %struct.rt1310_timer_softc*, %struct.rt1310_timer_softc** %3, align 8
  %9 = load i32, i32* @RT_TIMER_CONTROL, align 4
  %10 = call i32 @timer2_read_4(%struct.rt1310_timer_softc* %8, i32 %9)
  %11 = or i32 %10, 8
  %12 = call i32 @timer2_write_4(%struct.rt1310_timer_softc* %6, i32 %7, i32 %11)
  %13 = load %struct.rt1310_timer_softc*, %struct.rt1310_timer_softc** %3, align 8
  %14 = load i32, i32* @RT_TIMER_CONTROL, align 4
  %15 = load %struct.rt1310_timer_softc*, %struct.rt1310_timer_softc** %3, align 8
  %16 = load i32, i32* @RT_TIMER_CONTROL, align 4
  %17 = call i32 @timer2_read_4(%struct.rt1310_timer_softc* %15, i32 %16)
  %18 = and i32 %17, 507
  %19 = call i32 @timer2_write_4(%struct.rt1310_timer_softc* %13, i32 %14, i32 %18)
  %20 = load %struct.rt1310_timer_softc*, %struct.rt1310_timer_softc** %3, align 8
  %21 = getelementptr inbounds %struct.rt1310_timer_softc, %struct.rt1310_timer_softc* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %43, label %24

24:                                               ; preds = %1
  %25 = load %struct.rt1310_timer_softc*, %struct.rt1310_timer_softc** %3, align 8
  %26 = load i32, i32* @RT_TIMER_LOAD, align 4
  %27 = load %struct.rt1310_timer_softc*, %struct.rt1310_timer_softc** %3, align 8
  %28 = getelementptr inbounds %struct.rt1310_timer_softc, %struct.rt1310_timer_softc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @timer2_write_4(%struct.rt1310_timer_softc* %25, i32 %26, i32 %29)
  %31 = load %struct.rt1310_timer_softc*, %struct.rt1310_timer_softc** %3, align 8
  %32 = load i32, i32* @RT_TIMER_VALUE, align 4
  %33 = load %struct.rt1310_timer_softc*, %struct.rt1310_timer_softc** %3, align 8
  %34 = getelementptr inbounds %struct.rt1310_timer_softc, %struct.rt1310_timer_softc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @timer2_write_4(%struct.rt1310_timer_softc* %31, i32 %32, i32 %35)
  %37 = load %struct.rt1310_timer_softc*, %struct.rt1310_timer_softc** %3, align 8
  %38 = load i32, i32* @RT_TIMER_CONTROL, align 4
  %39 = load i32, i32* @RT_TIMER_CTRL_ENABLE, align 4
  %40 = load i32, i32* @RT_TIMER_CTRL_INTCTL, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @timer2_write_4(%struct.rt1310_timer_softc* %37, i32 %38, i32 %41)
  br label %43

43:                                               ; preds = %24, %1
  %44 = load %struct.rt1310_timer_softc*, %struct.rt1310_timer_softc** %3, align 8
  %45 = getelementptr inbounds %struct.rt1310_timer_softc, %struct.rt1310_timer_softc* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %43
  %50 = load %struct.rt1310_timer_softc*, %struct.rt1310_timer_softc** %3, align 8
  %51 = getelementptr inbounds %struct.rt1310_timer_softc, %struct.rt1310_timer_softc* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32 (%struct.TYPE_2__*, i32)*, i32 (%struct.TYPE_2__*, i32)** %52, align 8
  %54 = load %struct.rt1310_timer_softc*, %struct.rt1310_timer_softc** %3, align 8
  %55 = getelementptr inbounds %struct.rt1310_timer_softc, %struct.rt1310_timer_softc* %54, i32 0, i32 1
  %56 = load %struct.rt1310_timer_softc*, %struct.rt1310_timer_softc** %3, align 8
  %57 = getelementptr inbounds %struct.rt1310_timer_softc, %struct.rt1310_timer_softc* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 %53(%struct.TYPE_2__* %55, i32 %59)
  br label %61

61:                                               ; preds = %49, %43
  %62 = load i32, i32* @FILTER_HANDLED, align 4
  ret i32 %62
}

declare dso_local i32 @timer2_write_4(%struct.rt1310_timer_softc*, i32, i32) #1

declare dso_local i32 @timer2_read_4(%struct.rt1310_timer_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
