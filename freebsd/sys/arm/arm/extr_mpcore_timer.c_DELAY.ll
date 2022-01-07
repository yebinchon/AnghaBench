; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_mpcore_timer.c_DELAY.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_mpcore_timer.c_DELAY.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.arm_tmr_softc* }
%struct.arm_tmr_softc = type { i32 }
%struct.TYPE_3__ = type { i64 }

@arm_tmr_tc = common dso_local global %struct.TYPE_4__* null, align 8
@arm_tmr_timecount = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DELAY(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.arm_tmr_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = call i32 (...) @TSENTER()
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** @arm_tmr_tc, align 8
  %7 = icmp eq %struct.TYPE_4__* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @arm_tmr_timecount, i32 0, i32 0), align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %29

11:                                               ; preds = %8, %1
  br label %12

12:                                               ; preds = %25, %11
  %13 = load i32, i32* %2, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %12
  store i32 200, i32* %4, align 4
  br label %16

16:                                               ; preds = %21, %15
  %17 = load i32, i32* %4, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = call i32 (...) @cpufunc_nullop()
  br label %21

21:                                               ; preds = %19
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %4, align 4
  br label %16

24:                                               ; preds = %16
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %2, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %2, align 4
  br label %12

28:                                               ; preds = %12
  br label %36

29:                                               ; preds = %8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @arm_tmr_tc, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.arm_tmr_softc*, %struct.arm_tmr_softc** %31, align 8
  store %struct.arm_tmr_softc* %32, %struct.arm_tmr_softc** %3, align 8
  %33 = load i32, i32* %2, align 4
  %34 = load %struct.arm_tmr_softc*, %struct.arm_tmr_softc** %3, align 8
  %35 = call i32 @arm_tmr_delay(i32 %33, %struct.arm_tmr_softc* %34)
  br label %36

36:                                               ; preds = %29, %28
  %37 = call i32 (...) @TSEXIT()
  ret void
}

declare dso_local i32 @TSENTER(...) #1

declare dso_local i32 @cpufunc_nullop(...) #1

declare dso_local i32 @arm_tmr_delay(i32, %struct.arm_tmr_softc*) #1

declare dso_local i32 @TSEXIT(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
