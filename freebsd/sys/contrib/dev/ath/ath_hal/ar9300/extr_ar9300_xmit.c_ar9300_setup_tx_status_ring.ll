; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_xmit.c_ar9300_setup_tx_status_ring.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_xmit.c_ar9300_setup_tx_status_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ath_hal_9300 = type { i32, %struct.ar9300_txs*, i8*, i8* }
%struct.ar9300_txs = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar9300_setup_tx_status_ring(%struct.ath_hal* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.ath_hal*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ath_hal_9300*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %11 = call %struct.ath_hal_9300* @AH9300(%struct.ath_hal* %10)
  store %struct.ath_hal_9300* %11, %struct.ath_hal_9300** %9, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %9, align 8
  %14 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %13, i32 0, i32 3
  store i8* %12, i8** %14, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 4
  %19 = getelementptr i8, i8* %15, i64 %18
  %20 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %9, align 8
  %21 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %20, i32 0, i32 2
  store i8* %19, i8** %21, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %9, align 8
  %24 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = bitcast i8* %25 to %struct.ar9300_txs*
  %27 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %9, align 8
  %28 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %27, i32 0, i32 1
  store %struct.ar9300_txs* %26, %struct.ar9300_txs** %28, align 8
  %29 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %30 = call i32 @ar9300_reset_tx_status_ring(%struct.ath_hal* %29)
  ret void
}

declare dso_local %struct.ath_hal_9300* @AH9300(%struct.ath_hal*) #1

declare dso_local i32 @ar9300_reset_tx_status_ring(%struct.ath_hal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
