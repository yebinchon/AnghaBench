; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_timer.c_mv_setup_timers.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_timer.c_mv_setup_timers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@INITIAL_TIMECOUNTER = common dso_local global i32 0, align 4
@CPU_TIMER0_EN = common dso_local global i32 0, align 4
@CPU_TIMER0_AUTO = common dso_local global i32 0, align 4
@CPU_TIMER1_EN = common dso_local global i32 0, align 4
@CPU_TIMER1_AUTO = common dso_local global i32 0, align 4
@timer_softc = common dso_local global %struct.TYPE_4__* null, align 8
@MV_SOC_ARMADA_XP = common dso_local global i64 0, align 8
@CPU_TIMER0_25MHZ_EN = common dso_local global i32 0, align 4
@CPU_TIMER1_25MHZ_EN = common dso_local global i32 0, align 4
@timers_initialized = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @mv_setup_timers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv_setup_timers() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @INITIAL_TIMECOUNTER, align 4
  %3 = call i32 @mv_set_timer_rel(i32 1, i32 %2)
  %4 = load i32, i32* @INITIAL_TIMECOUNTER, align 4
  %5 = call i32 @mv_set_timer(i32 1, i32 %4)
  %6 = call i32 (...) @mv_get_timer_control()
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* @CPU_TIMER0_EN, align 4
  %8 = load i32, i32* @CPU_TIMER0_AUTO, align 4
  %9 = or i32 %7, %8
  %10 = xor i32 %9, -1
  %11 = load i32, i32* %1, align 4
  %12 = and i32 %11, %10
  store i32 %12, i32* %1, align 4
  %13 = load i32, i32* @CPU_TIMER1_EN, align 4
  %14 = load i32, i32* @CPU_TIMER1_AUTO, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* %1, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %1, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @timer_softc, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @MV_SOC_ARMADA_XP, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %0
  %26 = load i32, i32* @CPU_TIMER0_25MHZ_EN, align 4
  %27 = load i32, i32* @CPU_TIMER1_25MHZ_EN, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* %1, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %1, align 4
  br label %31

31:                                               ; preds = %25, %0
  %32 = load i32, i32* %1, align 4
  %33 = call i32 @mv_set_timer_control(i32 %32)
  store i32 1, i32* @timers_initialized, align 4
  ret void
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
