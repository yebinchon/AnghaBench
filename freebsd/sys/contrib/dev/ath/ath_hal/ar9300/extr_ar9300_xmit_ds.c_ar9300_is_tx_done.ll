; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_xmit_ds.c_ar9300_is_tx_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_xmit_ds.c_ar9300_is_tx_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ath_hal_9300 = type { i64, %struct.ar9300_txs* }
%struct.ar9300_txs = type { i32 }

@AR_tx_done = common dso_local global i32 0, align 4
@HAL_OK = common dso_local global i32 0, align 4
@HAL_EINPROGRESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar9300_is_tx_done(%struct.ath_hal* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca %struct.ath_hal_9300*, align 8
  %5 = alloca %struct.ar9300_txs*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  %6 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %7 = call %struct.ath_hal_9300* @AH9300(%struct.ath_hal* %6)
  store %struct.ath_hal_9300* %7, %struct.ath_hal_9300** %4, align 8
  %8 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %4, align 8
  %9 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %8, i32 0, i32 1
  %10 = load %struct.ar9300_txs*, %struct.ar9300_txs** %9, align 8
  %11 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %4, align 8
  %12 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.ar9300_txs, %struct.ar9300_txs* %10, i64 %13
  store %struct.ar9300_txs* %14, %struct.ar9300_txs** %5, align 8
  %15 = load %struct.ar9300_txs*, %struct.ar9300_txs** %5, align 8
  %16 = getelementptr inbounds %struct.ar9300_txs, %struct.ar9300_txs* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @AR_tx_done, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* @HAL_OK, align 4
  store i32 %22, i32* %2, align 4
  br label %25

23:                                               ; preds = %1
  %24 = load i32, i32* @HAL_EINPROGRESS, align 4
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local %struct.ath_hal_9300* @AH9300(%struct.ath_hal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
