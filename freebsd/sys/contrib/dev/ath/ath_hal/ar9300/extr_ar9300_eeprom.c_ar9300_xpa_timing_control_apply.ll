; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_eeprom.c_ar9300_xpa_timing_control_apply.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_eeprom.c_ar9300_xpa_timing_control_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_6__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }

@AR_PHY_XPA_TIMING_CTL = common dso_local global i32 0, align 4
@AR_PHY_XPA_TIMING_CTL_FRAME_XPAB_ON = common dso_local global i32 0, align 4
@AR_PHY_XPA_TIMING_CTL_FRAME_XPAA_ON = common dso_local global i32 0, align 4
@AH_TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ar9300_xpa_timing_control_apply(%struct.ath_hal* %0, i64 %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %8 = call %struct.TYPE_10__* @AH9300(%struct.ath_hal* %7)
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  store %struct.TYPE_9__* %9, %struct.TYPE_9__** %6, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, 128
  %15 = ashr i32 %14, 7
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %58

17:                                               ; preds = %2
  %18 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %19 = call i64 @AR_SREV_OSPREY(%struct.ath_hal* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %33, label %21

21:                                               ; preds = %17
  %22 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %23 = call i64 @AR_SREV_AR9580(%struct.ath_hal* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %21
  %26 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %27 = call i64 @AR_SREV_WASP(%struct.ath_hal* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %31 = call i64 @AR_SREV_HONEYBEE(%struct.ath_hal* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %57

33:                                               ; preds = %29, %25, %21, %17
  %34 = load i64, i64* %4, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %33
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %5, align 4
  %41 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %42 = load i32, i32* @AR_PHY_XPA_TIMING_CTL, align 4
  %43 = load i32, i32* @AR_PHY_XPA_TIMING_CTL_FRAME_XPAB_ON, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %41, i32 %42, i32 %43, i32 %44)
  br label %56

46:                                               ; preds = %33
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %5, align 4
  %51 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %52 = load i32, i32* @AR_PHY_XPA_TIMING_CTL, align 4
  %53 = load i32, i32* @AR_PHY_XPA_TIMING_CTL_FRAME_XPAA_ON, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %51, i32 %52, i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %46, %36
  br label %57

57:                                               ; preds = %56, %29
  br label %58

58:                                               ; preds = %57, %2
  %59 = load i64, i64* @AH_TRUE, align 8
  ret i64 %59
}

declare dso_local %struct.TYPE_10__* @AH9300(%struct.ath_hal*) #1

declare dso_local i64 @AR_SREV_OSPREY(%struct.ath_hal*) #1

declare dso_local i64 @AR_SREV_AR9580(%struct.ath_hal*) #1

declare dso_local i64 @AR_SREV_WASP(%struct.ath_hal*) #1

declare dso_local i64 @AR_SREV_HONEYBEE(%struct.ath_hal*) #1

declare dso_local i32 @OS_REG_RMW_FIELD(%struct.ath_hal*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
