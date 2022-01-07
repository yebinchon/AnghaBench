; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_timer.c_ar9300_start_generic_timer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_timer.c_ar9300_start_generic_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.ath_hal = type { i32 }

@AR_FIRST_NDP_TIMER = common dso_local global i32 0, align 4
@AR_NUM_GEN_TIMERS = common dso_local global i32 0, align 4
@gen_timer_configuration = common dso_local global %struct.TYPE_2__* null, align 8
@AR_GEN_TIMER_BANK_1_LEN = common dso_local global i32 0, align 4
@AR_MAC_PCU_GEN_TIMER_TSF_SEL = common dso_local global i32 0, align 4
@AR_IMR_S5 = common dso_local global i32 0, align 4
@AR_IMR_S5_GENTIMER_THRESH = common dso_local global i32 0, align 4
@AR_IMR_S5_GENTIMER_TRIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar9300_start_generic_timer(%struct.ath_hal* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ath_hal*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @AR_FIRST_NDP_TIMER, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %16, label %12

12:                                               ; preds = %4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @AR_NUM_GEN_TIMERS, align 4
  %15 = icmp sge i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %12, %4
  br label %87

17:                                               ; preds = %12
  %18 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @gen_timer_configuration, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @OS_REG_WRITE(%struct.ath_hal* %18, i32 %24, i32 %25)
  %27 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @gen_timer_configuration, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @OS_REG_WRITE(%struct.ath_hal* %27, i32 %33, i32 %34)
  %36 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @gen_timer_configuration, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @gen_timer_configuration, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @OS_REG_SET_BIT(%struct.ath_hal* %36, i32 %42, i32 %48)
  %50 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %51 = call i64 @AR_SREV_JUPITER(%struct.ath_hal* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %17
  %54 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %55 = call i64 @AR_SREV_APHRODITE(%struct.ath_hal* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %74

57:                                               ; preds = %53, %17
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @AR_GEN_TIMER_BANK_1_LEN, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %57
  %62 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %63 = load i32, i32* @AR_MAC_PCU_GEN_TIMER_TSF_SEL, align 4
  %64 = load i32, i32* %6, align 4
  %65 = shl i32 1, %64
  %66 = call i32 @OS_REG_CLR_BIT(%struct.ath_hal* %62, i32 %63, i32 %65)
  br label %73

67:                                               ; preds = %57
  %68 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %69 = load i32, i32* @AR_MAC_PCU_GEN_TIMER_TSF_SEL, align 4
  %70 = load i32, i32* %6, align 4
  %71 = shl i32 1, %70
  %72 = call i32 @OS_REG_SET_BIT(%struct.ath_hal* %68, i32 %69, i32 %71)
  br label %73

73:                                               ; preds = %67, %61
  br label %74

74:                                               ; preds = %73, %53
  %75 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %76 = load i32, i32* @AR_IMR_S5, align 4
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @AR_GENTMR_BIT(i32 %77)
  %79 = load i32, i32* @AR_IMR_S5_GENTIMER_THRESH, align 4
  %80 = call i32 @SM(i32 %78, i32 %79)
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @AR_GENTMR_BIT(i32 %81)
  %83 = load i32, i32* @AR_IMR_S5_GENTIMER_TRIG, align 4
  %84 = call i32 @SM(i32 %82, i32 %83)
  %85 = or i32 %80, %84
  %86 = call i32 @OS_REG_SET_BIT(%struct.ath_hal* %75, i32 %76, i32 %85)
  br label %87

87:                                               ; preds = %74, %16
  ret void
}

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @OS_REG_SET_BIT(%struct.ath_hal*, i32, i32) #1

declare dso_local i64 @AR_SREV_JUPITER(%struct.ath_hal*) #1

declare dso_local i64 @AR_SREV_APHRODITE(%struct.ath_hal*) #1

declare dso_local i32 @OS_REG_CLR_BIT(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @SM(i32, i32) #1

declare dso_local i32 @AR_GENTMR_BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
