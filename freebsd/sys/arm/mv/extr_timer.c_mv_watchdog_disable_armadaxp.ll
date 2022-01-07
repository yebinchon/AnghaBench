; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_timer.c_mv_watchdog_disable_armadaxp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_timer.c_mv_watchdog_disable_armadaxp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@WD_RSTOUTn_MASK = common dso_local global i32 0, align 4
@WD_GLOBAL_MASK = common dso_local global i32 0, align 4
@WD_CPU0_MASK = common dso_local global i32 0, align 4
@RSTOUTn_MASK_ARMV7 = common dso_local global i32 0, align 4
@RSTOUTn_MASK_WD = common dso_local global i32 0, align 4
@timer_softc = common dso_local global %struct.TYPE_4__* null, align 8
@CPU_TIMER2_EN = common dso_local global i32 0, align 4
@CPU_TIMER2_AUTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @mv_watchdog_disable_armadaxp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv_watchdog_disable_armadaxp() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @WD_RSTOUTn_MASK, align 4
  %4 = call i32 @read_cpu_mp_clocks(i32 %3)
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* @WD_GLOBAL_MASK, align 4
  %6 = load i32, i32* @WD_CPU0_MASK, align 4
  %7 = or i32 %5, %6
  %8 = xor i32 %7, -1
  %9 = load i32, i32* %1, align 4
  %10 = and i32 %9, %8
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* @WD_RSTOUTn_MASK, align 4
  %12 = load i32, i32* %1, align 4
  %13 = call i32 @write_cpu_mp_clocks(i32 %11, i32 %12)
  %14 = load i32, i32* @RSTOUTn_MASK_ARMV7, align 4
  %15 = call i32 @read_cpu_misc(i32 %14)
  store i32 %15, i32* %1, align 4
  %16 = load i32, i32* @RSTOUTn_MASK_WD, align 4
  %17 = load i32, i32* %1, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %1, align 4
  %19 = load i32, i32* @RSTOUTn_MASK_ARMV7, align 4
  %20 = load i32, i32* @RSTOUTn_MASK_WD, align 4
  %21 = call i32 @write_cpu_misc(i32 %19, i32 %20)
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @timer_softc, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @read_cpu_ctrl(i32 %26)
  store i32 %27, i32* %2, align 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @timer_softc, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %2, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %2, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** @timer_softc, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %2, align 4
  %41 = call i32 @write_cpu_ctrl(i32 %39, i32 %40)
  %42 = call i32 (...) @mv_get_timer_control()
  store i32 %42, i32* %1, align 4
  %43 = load i32, i32* @CPU_TIMER2_EN, align 4
  %44 = load i32, i32* @CPU_TIMER2_AUTO, align 4
  %45 = or i32 %43, %44
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %1, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %1, align 4
  %49 = load i32, i32* %1, align 4
  %50 = call i32 @mv_set_timer_control(i32 %49)
  ret void
}

declare dso_local i32 @read_cpu_mp_clocks(i32) #1

declare dso_local i32 @write_cpu_mp_clocks(i32, i32) #1

declare dso_local i32 @read_cpu_misc(i32) #1

declare dso_local i32 @write_cpu_misc(i32, i32) #1

declare dso_local i32 @read_cpu_ctrl(i32) #1

declare dso_local i32 @write_cpu_ctrl(i32, i32) #1

declare dso_local i32 @mv_get_timer_control(...) #1

declare dso_local i32 @mv_set_timer_control(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
