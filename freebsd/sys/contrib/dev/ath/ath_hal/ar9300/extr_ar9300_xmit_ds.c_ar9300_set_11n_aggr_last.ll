; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_xmit_ds.c_ar9300_set_11n_aggr_last.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_xmit_ds.c_ar9300_set_11n_aggr_last.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ath_desc = type { i32 }
%struct.ar9300_txc = type { i32, i32 }

@AR_is_aggr = common dso_local global i32 0, align 4
@AR_more_aggr = common dso_local global i32 0, align 4
@AR_pad_delim = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar9300_set_11n_aggr_last(%struct.ath_hal* %0, %struct.ath_desc* %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca %struct.ath_desc*, align 8
  %5 = alloca %struct.ar9300_txc*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store %struct.ath_desc* %1, %struct.ath_desc** %4, align 8
  %6 = load %struct.ath_desc*, %struct.ath_desc** %4, align 8
  %7 = call %struct.ar9300_txc* @AR9300TXC(%struct.ath_desc* %6)
  store %struct.ar9300_txc* %7, %struct.ar9300_txc** %5, align 8
  %8 = load i32, i32* @AR_is_aggr, align 4
  %9 = load %struct.ar9300_txc*, %struct.ar9300_txc** %5, align 8
  %10 = getelementptr inbounds %struct.ar9300_txc, %struct.ar9300_txc* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = or i32 %11, %8
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* @AR_more_aggr, align 4
  %14 = xor i32 %13, -1
  %15 = load %struct.ar9300_txc*, %struct.ar9300_txc** %5, align 8
  %16 = getelementptr inbounds %struct.ar9300_txc, %struct.ar9300_txc* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load i32, i32* @AR_pad_delim, align 4
  %20 = xor i32 %19, -1
  %21 = load %struct.ar9300_txc*, %struct.ar9300_txc** %5, align 8
  %22 = getelementptr inbounds %struct.ar9300_txc, %struct.ar9300_txc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, %20
  store i32 %24, i32* %22, align 4
  ret void
}

declare dso_local %struct.ar9300_txc* @AR9300TXC(%struct.ath_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
