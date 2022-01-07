; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_timer.c_mv_timer_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_timer.c_mv_timer_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eventtimer = type { i64 }
%struct.mv_timer_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@CPU_TIMER0_EN = common dso_local global i32 0, align 4
@CPU_TIMER0_AUTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eventtimer*, i32, i32)* @mv_timer_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_timer_start(%struct.eventtimer* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.eventtimer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mv_timer_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.eventtimer* %0, %struct.eventtimer** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.eventtimer*, %struct.eventtimer** %4, align 8
  %11 = getelementptr inbounds %struct.eventtimer, %struct.eventtimer* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.mv_timer_softc*
  store %struct.mv_timer_softc* %13, %struct.mv_timer_softc** %7, align 8
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %3
  %17 = load %struct.mv_timer_softc*, %struct.mv_timer_softc** %7, align 8
  %18 = getelementptr inbounds %struct.mv_timer_softc, %struct.mv_timer_softc* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = trunc i64 %20 to i32
  %22 = load i32, i32* %6, align 4
  %23 = mul nsw i32 %21, %22
  %24 = ashr i32 %23, 32
  store i32 %24, i32* %8, align 4
  br label %26

25:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %25, %16
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %26
  %30 = load %struct.mv_timer_softc*, %struct.mv_timer_softc** %7, align 8
  %31 = getelementptr inbounds %struct.mv_timer_softc, %struct.mv_timer_softc* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = load i32, i32* %5, align 4
  %36 = mul nsw i32 %34, %35
  %37 = ashr i32 %36, 32
  store i32 %37, i32* %9, align 4
  br label %40

38:                                               ; preds = %26
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %38, %29
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @mv_set_timer_rel(i32 0, i32 %41)
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @mv_set_timer(i32 0, i32 %43)
  %45 = call i32 (...) @mv_get_timer_control()
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* @CPU_TIMER0_EN, align 4
  %47 = load i32, i32* %8, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %40
  %52 = load i32, i32* @CPU_TIMER0_AUTO, align 4
  %53 = load i32, i32* %8, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %8, align 4
  br label %60

55:                                               ; preds = %40
  %56 = load i32, i32* @CPU_TIMER0_AUTO, align 4
  %57 = xor i32 %56, -1
  %58 = load i32, i32* %8, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %55, %51
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @mv_set_timer_control(i32 %61)
  ret i32 0
}

declare dso_local i32 @mv_set_timer_rel(i32, i32) #1

declare dso_local i32 @mv_set_timer(i32, i32) #1

declare dso_local i32 @mv_get_timer_control(...) #1

declare dso_local i32 @mv_set_timer_control(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
