; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_xmit_ds.c_ar9300_set_11n_aggr_first.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_xmit_ds.c_ar9300_set_11n_aggr_first.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ath_desc = type { i32 }
%struct.ar9300_txc = type { i32, i32 }

@AR_is_aggr = common dso_local global i32 0, align 4
@AR_more_aggr = common dso_local global i32 0, align 4
@AR_aggr_len = common dso_local global i32 0, align 4
@AR_pad_delim = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar9300_set_11n_aggr_first(%struct.ath_hal* %0, %struct.ath_desc* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ath_hal*, align 8
  %6 = alloca %struct.ath_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ar9300_txc*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %5, align 8
  store %struct.ath_desc* %1, %struct.ath_desc** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.ath_desc*, %struct.ath_desc** %6, align 8
  %11 = call %struct.ar9300_txc* @AR9300TXC(%struct.ath_desc* %10)
  store %struct.ar9300_txc* %11, %struct.ar9300_txc** %9, align 8
  %12 = load i32, i32* @AR_is_aggr, align 4
  %13 = load i32, i32* @AR_more_aggr, align 4
  %14 = or i32 %12, %13
  %15 = load %struct.ar9300_txc*, %struct.ar9300_txc** %9, align 8
  %16 = getelementptr inbounds %struct.ar9300_txc, %struct.ar9300_txc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load i32, i32* @AR_aggr_len, align 4
  %20 = xor i32 %19, -1
  %21 = load %struct.ar9300_txc*, %struct.ar9300_txc** %9, align 8
  %22 = getelementptr inbounds %struct.ar9300_txc, %struct.ar9300_txc* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, %20
  store i32 %24, i32* %22, align 4
  %25 = load i32, i32* @AR_pad_delim, align 4
  %26 = xor i32 %25, -1
  %27 = load %struct.ar9300_txc*, %struct.ar9300_txc** %9, align 8
  %28 = getelementptr inbounds %struct.ar9300_txc, %struct.ar9300_txc* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @AR_aggr_len, align 4
  %33 = call i32 @SM(i32 %31, i32 %32)
  %34 = load %struct.ar9300_txc*, %struct.ar9300_txc** %9, align 8
  %35 = getelementptr inbounds %struct.ar9300_txc, %struct.ar9300_txc* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @AR_pad_delim, align 4
  %40 = call i32 @SM(i32 %38, i32 %39)
  %41 = load %struct.ar9300_txc*, %struct.ar9300_txc** %9, align 8
  %42 = getelementptr inbounds %struct.ar9300_txc, %struct.ar9300_txc* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  ret void
}

declare dso_local %struct.ar9300_txc* @AR9300TXC(%struct.ath_desc*) #1

declare dso_local i32 @SM(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
