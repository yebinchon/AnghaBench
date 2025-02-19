; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_timer.c_mv_watchdog_enable_armv5.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_timer.c_mv_watchdog_enable_armv5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@timer_softc = common dso_local global %struct.TYPE_4__* null, align 8
@BRIDGE_IRQ_MASK = common dso_local global i32 0, align 4
@IRQ_TIMER_WD_MASK = common dso_local global i32 0, align 4
@RSTOUTn_MASK = common dso_local global i32 0, align 4
@WD_RST_OUT_EN = common dso_local global i32 0, align 4
@CPU_TIMER2_EN = common dso_local global i32 0, align 4
@CPU_TIMER2_AUTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @mv_watchdog_enable_armv5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv_watchdog_enable_armv5() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** @timer_softc, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @read_cpu_ctrl(i32 %8)
  store i32 %9, i32* %2, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @timer_softc, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %2, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %2, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @timer_softc, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @write_cpu_ctrl(i32 %21, i32 %22)
  %24 = load i32, i32* @BRIDGE_IRQ_MASK, align 4
  %25 = call i32 @read_cpu_ctrl(i32 %24)
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* @IRQ_TIMER_WD_MASK, align 4
  %27 = load i32, i32* %3, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* @BRIDGE_IRQ_MASK, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @write_cpu_ctrl(i32 %29, i32 %30)
  %32 = load i32, i32* @RSTOUTn_MASK, align 4
  %33 = call i32 @read_cpu_ctrl(i32 %32)
  store i32 %33, i32* %1, align 4
  %34 = load i32, i32* @WD_RST_OUT_EN, align 4
  %35 = load i32, i32* %1, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %1, align 4
  %37 = load i32, i32* @RSTOUTn_MASK, align 4
  %38 = load i32, i32* %1, align 4
  %39 = call i32 @write_cpu_ctrl(i32 %37, i32 %38)
  %40 = call i32 (...) @mv_get_timer_control()
  store i32 %40, i32* %1, align 4
  %41 = load i32, i32* @CPU_TIMER2_EN, align 4
  %42 = load i32, i32* @CPU_TIMER2_AUTO, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* %1, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %1, align 4
  %46 = load i32, i32* %1, align 4
  %47 = call i32 @mv_set_timer_control(i32 %46)
  ret void
}

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
