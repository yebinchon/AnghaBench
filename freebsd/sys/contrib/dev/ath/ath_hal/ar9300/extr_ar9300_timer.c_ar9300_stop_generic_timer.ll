; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_timer.c_ar9300_stop_generic_timer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_timer.c_ar9300_stop_generic_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.ath_hal = type { i32 }

@AR_FIRST_NDP_TIMER = common dso_local global i32 0, align 4
@AR_NUM_GEN_TIMERS = common dso_local global i32 0, align 4
@gen_timer_configuration = common dso_local global %struct.TYPE_2__* null, align 8
@AR_IMR_S5 = common dso_local global i32 0, align 4
@AR_IMR_S5_GENTIMER_THRESH = common dso_local global i32 0, align 4
@AR_IMR_S5_GENTIMER_TRIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar9300_stop_generic_timer(%struct.ath_hal* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @AR_FIRST_NDP_TIMER, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @AR_NUM_GEN_TIMERS, align 4
  %11 = icmp sge i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %8, %2
  br label %40

13:                                               ; preds = %8
  %14 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @gen_timer_configuration, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @gen_timer_configuration, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @OS_REG_CLR_BIT(%struct.ath_hal* %14, i32 %20, i32 %26)
  %28 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %29 = load i32, i32* @AR_IMR_S5, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @AR_GENTMR_BIT(i32 %30)
  %32 = load i32, i32* @AR_IMR_S5_GENTIMER_THRESH, align 4
  %33 = call i32 @SM(i32 %31, i32 %32)
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @AR_GENTMR_BIT(i32 %34)
  %36 = load i32, i32* @AR_IMR_S5_GENTIMER_TRIG, align 4
  %37 = call i32 @SM(i32 %35, i32 %36)
  %38 = or i32 %33, %37
  %39 = call i32 @OS_REG_CLR_BIT(%struct.ath_hal* %28, i32 %29, i32 %38)
  br label %40

40:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @OS_REG_CLR_BIT(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @SM(i32, i32) #1

declare dso_local i32 @AR_GENTMR_BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
