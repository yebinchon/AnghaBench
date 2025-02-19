; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_misc.c_ar9300_is_skip_paprd_by_greentx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_misc.c_ar9300_is_skip_paprd_by_greentx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@HAL_RSSI_TX_POWER_SHORT = common dso_local global i64 0, align 8
@HAL_RSSI_TX_POWER_MIDDLE = common dso_local global i64 0, align 8
@AH_TRUE = common dso_local global i32 0, align 4
@AH_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar9300_is_skip_paprd_by_greentx(%struct.ath_hal* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath_hal*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  %4 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %5 = call i64 @AR_SREV_POSEIDON(%struct.ath_hal* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %29

7:                                                ; preds = %1
  %8 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %9 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %7
  %14 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %15 = call %struct.TYPE_4__* @AH9300(%struct.ath_hal* %14)
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @HAL_RSSI_TX_POWER_SHORT, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %27, label %20

20:                                               ; preds = %13
  %21 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %22 = call %struct.TYPE_4__* @AH9300(%struct.ath_hal* %21)
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @HAL_RSSI_TX_POWER_MIDDLE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %20, %13
  %28 = load i32, i32* @AH_TRUE, align 4
  store i32 %28, i32* %2, align 4
  br label %31

29:                                               ; preds = %20, %7, %1
  %30 = load i32, i32* @AH_FALSE, align 4
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i64 @AR_SREV_POSEIDON(%struct.ath_hal*) #1

declare dso_local %struct.TYPE_4__* @AH9300(%struct.ath_hal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
