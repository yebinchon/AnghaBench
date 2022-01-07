; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_misc.c_ar9300_hwgreentx_set_pal_spare.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_misc.c_ar9300_hwgreentx_set_pal_spare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ath_hal_9300 = type { i64 }

@AR_PHY_65NM_CH0_TXRF3 = common dso_local global i32 0, align 4
@AR_PHY_65NM_CH0_TXRF3_OLD_PAL_SPARE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar9300_hwgreentx_set_pal_spare(%struct.ath_hal* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_hal_9300*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %7 = call %struct.ath_hal_9300* @AH9300(%struct.ath_hal* %6)
  store %struct.ath_hal_9300* %7, %struct.ath_hal_9300** %5, align 8
  %8 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %9 = call i64 @AR_SREV_POSEIDON(%struct.ath_hal* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %29

11:                                               ; preds = %2
  %12 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %5, align 8
  %13 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %11
  %17 = load i32, i32* %4, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %28

22:                                               ; preds = %19, %16
  %23 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %24 = load i32, i32* @AR_PHY_65NM_CH0_TXRF3, align 4
  %25 = load i32, i32* @AR_PHY_65NM_CH0_TXRF3_OLD_PAL_SPARE, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %23, i32 %24, i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %22, %19
  br label %29

29:                                               ; preds = %28, %11, %2
  ret void
}

declare dso_local %struct.ath_hal_9300* @AH9300(%struct.ath_hal*) #1

declare dso_local i64 @AR_SREV_POSEIDON(%struct.ath_hal*) #1

declare dso_local i32 @OS_REG_RMW_FIELD(%struct.ath_hal*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
