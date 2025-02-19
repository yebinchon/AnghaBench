; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_misc.c_ar9300_set_11n_rx_clear.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_misc.c_ar9300_set_11n_rx_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }

@HAL_RX_CLEAR_CTL_LOW = common dso_local global i32 0, align 4
@AR_DIAG_SW = common dso_local global i32 0, align 4
@AR_DIAG_RX_CLEAR_CTL_LOW = common dso_local global i32 0, align 4
@HAL_RX_CLEAR_EXT_LOW = common dso_local global i32 0, align 4
@AR_DIAG_RX_CLEAR_EXT_LOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar9300_set_11n_rx_clear(%struct.ath_hal* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @HAL_RX_CLEAR_CTL_LOW, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %11 = load i32, i32* @AR_DIAG_SW, align 4
  %12 = load i32, i32* @AR_DIAG_RX_CLEAR_CTL_LOW, align 4
  %13 = call i32 @OS_REG_SET_BIT(%struct.ath_hal* %10, i32 %11, i32 %12)
  br label %19

14:                                               ; preds = %2
  %15 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %16 = load i32, i32* @AR_DIAG_SW, align 4
  %17 = load i32, i32* @AR_DIAG_RX_CLEAR_CTL_LOW, align 4
  %18 = call i32 @OS_REG_CLR_BIT(%struct.ath_hal* %15, i32 %16, i32 %17)
  br label %19

19:                                               ; preds = %14, %9
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @HAL_RX_CLEAR_EXT_LOW, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %26 = load i32, i32* @AR_DIAG_SW, align 4
  %27 = load i32, i32* @AR_DIAG_RX_CLEAR_EXT_LOW, align 4
  %28 = call i32 @OS_REG_SET_BIT(%struct.ath_hal* %25, i32 %26, i32 %27)
  br label %34

29:                                               ; preds = %19
  %30 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %31 = load i32, i32* @AR_DIAG_SW, align 4
  %32 = load i32, i32* @AR_DIAG_RX_CLEAR_EXT_LOW, align 4
  %33 = call i32 @OS_REG_CLR_BIT(%struct.ath_hal* %30, i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %29, %24
  ret void
}

declare dso_local i32 @OS_REG_SET_BIT(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @OS_REG_CLR_BIT(%struct.ath_hal*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
