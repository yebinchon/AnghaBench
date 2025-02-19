; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_wdog.c_aw_wdog_watchdog_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_wdog.c_aw_wdog_watchdog_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i64, i64, i64 }
%struct.TYPE_4__ = type { i32 }

@aw_wdog_sc = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [49 x i8] c"Reset: watchdog device has not been initialized\0A\00", align 1
@wd_intervals = common dso_local global %struct.TYPE_4__* null, align 8
@WDOG_CTRL_RESTART = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aw_wdog_watchdog_reset() #0 {
  %1 = load %struct.TYPE_5__*, %struct.TYPE_5__** @aw_wdog_sc, align 8
  %2 = icmp eq %struct.TYPE_5__* %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = call i32 @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  ret void

5:                                                ; preds = %0
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** @aw_wdog_sc, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** @aw_wdog_sc, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 6
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd_intervals, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i64 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** @aw_wdog_sc, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = shl i32 %13, %16
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** @aw_wdog_sc, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %17, %20
  %22 = call i32 @WRITE(%struct.TYPE_5__* %6, i64 %9, i32 %21)
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** @aw_wdog_sc, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 5
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %5
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** @aw_wdog_sc, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** @aw_wdog_sc, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 5
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** @aw_wdog_sc, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @WRITE(%struct.TYPE_5__* %28, i64 %31, i32 %34)
  br label %36

36:                                               ; preds = %27, %5
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** @aw_wdog_sc, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** @aw_wdog_sc, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* @WDOG_CTRL_RESTART, align 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** @aw_wdog_sc, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %41, %44
  %46 = call i32 @WRITE(%struct.TYPE_5__* %37, i64 %40, i32 %45)
  br label %47

47:                                               ; preds = %36, %47
  br label %47
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @WRITE(%struct.TYPE_5__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
