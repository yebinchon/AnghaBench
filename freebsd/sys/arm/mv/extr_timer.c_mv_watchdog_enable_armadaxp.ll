; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_timer.c_mv_watchdog_enable_armadaxp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_timer.c_mv_watchdog_enable_armadaxp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@timer_softc = common dso_local global %struct.TYPE_4__* null, align 8
@WD_RSTOUTn_MASK = common dso_local global i32 0, align 4
@WD_GLOBAL_MASK = common dso_local global i32 0, align 4
@WD_CPU0_MASK = common dso_local global i32 0, align 4
@RSTOUTn_MASK_ARMV7 = common dso_local global i32 0, align 4
@RSTOUTn_MASK_WD = common dso_local global i32 0, align 4
@CPU_TIMER2_EN = common dso_local global i32 0, align 4
@CPU_TIMER2_AUTO = common dso_local global i32 0, align 4
@CPU_TIMER_WD_25MHZ_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @mv_watchdog_enable_armadaxp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv_watchdog_enable_armadaxp() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load %struct.TYPE_4__*, %struct.TYPE_4__** @timer_softc, align 8
  %4 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @read_cpu_ctrl(i32 %7)
  store i32 %8, i32* %1, align 4
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** @timer_softc, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %1, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %1, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @timer_softc, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %1, align 4
  %22 = call i32 @write_cpu_ctrl(i32 %20, i32 %21)
  %23 = load i32, i32* @WD_RSTOUTn_MASK, align 4
  %24 = call i32 @read_cpu_mp_clocks(i32 %23)
  store i32 %24, i32* %2, align 4
  %25 = load i32, i32* @WD_GLOBAL_MASK, align 4
  %26 = load i32, i32* @WD_CPU0_MASK, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* %2, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %2, align 4
  %30 = load i32, i32* @WD_RSTOUTn_MASK, align 4
  %31 = load i32, i32* %2, align 4
  %32 = call i32 @write_cpu_mp_clocks(i32 %30, i32 %31)
  %33 = load i32, i32* @RSTOUTn_MASK_ARMV7, align 4
  %34 = call i32 @read_cpu_misc(i32 %33)
  store i32 %34, i32* %2, align 4
  %35 = load i32, i32* @RSTOUTn_MASK_WD, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %2, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %2, align 4
  %39 = load i32, i32* @RSTOUTn_MASK_ARMV7, align 4
  %40 = load i32, i32* %2, align 4
  %41 = call i32 @write_cpu_misc(i32 %39, i32 %40)
  %42 = call i32 (...) @mv_get_timer_control()
  store i32 %42, i32* %2, align 4
  %43 = load i32, i32* @CPU_TIMER2_EN, align 4
  %44 = load i32, i32* @CPU_TIMER2_AUTO, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @CPU_TIMER_WD_25MHZ_EN, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* %2, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %2, align 4
  %50 = load i32, i32* %2, align 4
  %51 = call i32 @mv_set_timer_control(i32 %50)
  ret void
}

declare dso_local i32 @read_cpu_ctrl(i32) #1

declare dso_local i32 @write_cpu_ctrl(i32, i32) #1

declare dso_local i32 @read_cpu_mp_clocks(i32) #1

declare dso_local i32 @write_cpu_mp_clocks(i32, i32) #1

declare dso_local i32 @read_cpu_misc(i32) #1

declare dso_local i32 @write_cpu_misc(i32, i32) #1

declare dso_local i32 @mv_get_timer_control(...) #1

declare dso_local i32 @mv_set_timer_control(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
