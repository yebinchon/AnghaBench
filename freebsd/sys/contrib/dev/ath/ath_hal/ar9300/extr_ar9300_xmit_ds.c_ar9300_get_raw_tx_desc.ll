; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_xmit_ds.c_ar9300_get_raw_tx_desc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_xmit_ds.c_ar9300_get_raw_tx_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ath_hal_9300 = type { i64, %struct.ar9300_txs* }
%struct.ar9300_txs = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar9300_get_raw_tx_desc(%struct.ath_hal* %0, i32* %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ath_hal_9300*, align 8
  %6 = alloca %struct.ar9300_txs*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %8 = call %struct.ath_hal_9300* @AH9300(%struct.ath_hal* %7)
  store %struct.ath_hal_9300* %8, %struct.ath_hal_9300** %5, align 8
  %9 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %5, align 8
  %10 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %9, i32 0, i32 1
  %11 = load %struct.ar9300_txs*, %struct.ar9300_txs** %10, align 8
  %12 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %5, align 8
  %13 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.ar9300_txs, %struct.ar9300_txs* %11, i64 %14
  store %struct.ar9300_txs* %15, %struct.ar9300_txs** %6, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = load %struct.ar9300_txs*, %struct.ar9300_txs** %6, align 8
  %18 = call i32 @OS_MEMCPY(i32* %16, %struct.ar9300_txs* %17, i32 4)
  ret void
}

declare dso_local %struct.ath_hal_9300* @AH9300(%struct.ath_hal*) #1

declare dso_local i32 @OS_MEMCPY(i32*, %struct.ar9300_txs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
