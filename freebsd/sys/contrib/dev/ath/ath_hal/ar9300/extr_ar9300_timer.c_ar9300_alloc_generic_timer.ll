; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_timer.c_ar9300_alloc_generic_timer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_timer.c_ar9300_alloc_generic_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ath_hal_9300 = type { i32, i64 }

@HAL_GEN_TIMER_TSF = common dso_local global i64 0, align 8
@AR_FIRST_NDP_TIMER = common dso_local global i32 0, align 4
@AR_GEN_TIMER_BANK_1_LEN = common dso_local global i32 0, align 4
@AR_NUM_GEN_TIMERS = common dso_local global i32 0, align 4
@HAL_GEN_TIMER_TSF2 = common dso_local global i64 0, align 8
@AH_TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar9300_alloc_generic_timer(%struct.ath_hal* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath_hal*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ath_hal_9300*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %12 = call %struct.ath_hal_9300* @AH9300(%struct.ath_hal* %11)
  store %struct.ath_hal_9300* %12, %struct.ath_hal_9300** %6, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @HAL_GEN_TIMER_TSF, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @AR_FIRST_NDP_TIMER, align 4
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* @AR_GEN_TIMER_BANK_1_LEN, align 4
  store i32 %18, i32* %10, align 4
  br label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @AR_GEN_TIMER_BANK_1_LEN, align 4
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* @AR_NUM_GEN_TIMERS, align 4
  store i32 %21, i32* %10, align 4
  br label %22

22:                                               ; preds = %19, %16
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %7, align 4
  %24 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %6, align 8
  %25 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = ashr i32 %26, %27
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %67, %22
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp slt i32 %33, %34
  br label %36

36:                                               ; preds = %32, %29
  %37 = phi i1 [ false, %29 ], [ %35, %32 ]
  br i1 %37, label %38, label %72

38:                                               ; preds = %36
  %39 = load i32, i32* %8, align 4
  %40 = and i32 %39, 1
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %66

42:                                               ; preds = %38
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @AR_GENTMR_BIT(i32 %43)
  %45 = xor i32 %44, -1
  %46 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %6, align 8
  %47 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = and i32 %48, %45
  store i32 %49, i32* %47, align 8
  %50 = load i64, i64* %5, align 8
  %51 = load i64, i64* @HAL_GEN_TIMER_TSF2, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %64

53:                                               ; preds = %42
  %54 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %6, align 8
  %55 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %53
  %59 = load i64, i64* @AH_TRUE, align 8
  %60 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %6, align 8
  %61 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %60, i32 0, i32 1
  store i64 %59, i64* %61, align 8
  %62 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %63 = call i32 @ar9300_start_tsf2(%struct.ath_hal* %62)
  br label %64

64:                                               ; preds = %58, %53, %42
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %3, align 4
  br label %73

66:                                               ; preds = %38
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %8, align 4
  %69 = ashr i32 %68, 1
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %7, align 4
  br label %29

72:                                               ; preds = %36
  store i32 -1, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %64
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local %struct.ath_hal_9300* @AH9300(%struct.ath_hal*) #1

declare dso_local i32 @AR_GENTMR_BIT(i32) #1

declare dso_local i32 @ar9300_start_tsf2(%struct.ath_hal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
