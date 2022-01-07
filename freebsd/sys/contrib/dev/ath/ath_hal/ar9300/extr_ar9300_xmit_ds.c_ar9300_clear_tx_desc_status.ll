; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_xmit_ds.c_ar9300_clear_tx_desc_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_xmit_ds.c_ar9300_clear_tx_desc_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ar9300_txs = type { i64, i64, i64, i64, i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar9300_clear_tx_desc_status(%struct.ath_hal* %0, i8* %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ar9300_txs*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call %struct.ar9300_txs* @AR9300TXS(i8* %6)
  store %struct.ar9300_txs* %7, %struct.ar9300_txs** %5, align 8
  %8 = load %struct.ar9300_txs*, %struct.ar9300_txs** %5, align 8
  %9 = getelementptr inbounds %struct.ar9300_txs, %struct.ar9300_txs* %8, i32 0, i32 6
  store i64 0, i64* %9, align 8
  %10 = load %struct.ar9300_txs*, %struct.ar9300_txs** %5, align 8
  %11 = getelementptr inbounds %struct.ar9300_txs, %struct.ar9300_txs* %10, i32 0, i32 7
  store i64 0, i64* %11, align 8
  %12 = load %struct.ar9300_txs*, %struct.ar9300_txs** %5, align 8
  %13 = getelementptr inbounds %struct.ar9300_txs, %struct.ar9300_txs* %12, i32 0, i32 4
  store i64 0, i64* %13, align 8
  %14 = load %struct.ar9300_txs*, %struct.ar9300_txs** %5, align 8
  %15 = getelementptr inbounds %struct.ar9300_txs, %struct.ar9300_txs* %14, i32 0, i32 5
  store i64 0, i64* %15, align 8
  %16 = load %struct.ar9300_txs*, %struct.ar9300_txs** %5, align 8
  %17 = getelementptr inbounds %struct.ar9300_txs, %struct.ar9300_txs* %16, i32 0, i32 2
  store i64 0, i64* %17, align 8
  %18 = load %struct.ar9300_txs*, %struct.ar9300_txs** %5, align 8
  %19 = getelementptr inbounds %struct.ar9300_txs, %struct.ar9300_txs* %18, i32 0, i32 3
  store i64 0, i64* %19, align 8
  %20 = load %struct.ar9300_txs*, %struct.ar9300_txs** %5, align 8
  %21 = getelementptr inbounds %struct.ar9300_txs, %struct.ar9300_txs* %20, i32 0, i32 0
  store i64 0, i64* %21, align 8
  %22 = load %struct.ar9300_txs*, %struct.ar9300_txs** %5, align 8
  %23 = getelementptr inbounds %struct.ar9300_txs, %struct.ar9300_txs* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  ret void
}

declare dso_local %struct.ar9300_txs* @AR9300TXS(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
