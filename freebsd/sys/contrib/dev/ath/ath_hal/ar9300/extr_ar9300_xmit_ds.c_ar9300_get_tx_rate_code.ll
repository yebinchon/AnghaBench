; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_xmit_ds.c_ar9300_get_tx_rate_code.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_xmit_ds.c_ar9300_get_tx_rate_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ath_tx_status = type { i32, i8* }
%struct.ar9300_txc = type { i32 }

@AR_xmit_rate0 = common dso_local global i32 0, align 4
@AR_xmit_rate1 = common dso_local global i32 0, align 4
@AR_xmit_rate2 = common dso_local global i32 0, align 4
@AR_xmit_rate3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar9300_get_tx_rate_code(%struct.ath_hal* %0, i8* %1, %struct.ath_tx_status* %2) #0 {
  %4 = alloca %struct.ath_hal*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ath_tx_status*, align 8
  %7 = alloca %struct.ar9300_txc*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.ath_tx_status* %2, %struct.ath_tx_status** %6, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call %struct.ar9300_txc* @AR9300TXC(i8* %8)
  store %struct.ar9300_txc* %9, %struct.ar9300_txc** %7, align 8
  %10 = load %struct.ath_tx_status*, %struct.ath_tx_status** %6, align 8
  %11 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %45 [
    i32 0, label %13
    i32 1, label %21
    i32 2, label %29
    i32 3, label %37
  ]

13:                                               ; preds = %3
  %14 = load %struct.ar9300_txc*, %struct.ar9300_txc** %7, align 8
  %15 = getelementptr inbounds %struct.ar9300_txc, %struct.ar9300_txc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @AR_xmit_rate0, align 4
  %18 = call i8* @MS(i32 %16, i32 %17)
  %19 = load %struct.ath_tx_status*, %struct.ath_tx_status** %6, align 8
  %20 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %19, i32 0, i32 1
  store i8* %18, i8** %20, align 8
  br label %45

21:                                               ; preds = %3
  %22 = load %struct.ar9300_txc*, %struct.ar9300_txc** %7, align 8
  %23 = getelementptr inbounds %struct.ar9300_txc, %struct.ar9300_txc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @AR_xmit_rate1, align 4
  %26 = call i8* @MS(i32 %24, i32 %25)
  %27 = load %struct.ath_tx_status*, %struct.ath_tx_status** %6, align 8
  %28 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  br label %45

29:                                               ; preds = %3
  %30 = load %struct.ar9300_txc*, %struct.ar9300_txc** %7, align 8
  %31 = getelementptr inbounds %struct.ar9300_txc, %struct.ar9300_txc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @AR_xmit_rate2, align 4
  %34 = call i8* @MS(i32 %32, i32 %33)
  %35 = load %struct.ath_tx_status*, %struct.ath_tx_status** %6, align 8
  %36 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %35, i32 0, i32 1
  store i8* %34, i8** %36, align 8
  br label %45

37:                                               ; preds = %3
  %38 = load %struct.ar9300_txc*, %struct.ar9300_txc** %7, align 8
  %39 = getelementptr inbounds %struct.ar9300_txc, %struct.ar9300_txc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @AR_xmit_rate3, align 4
  %42 = call i8* @MS(i32 %40, i32 %41)
  %43 = load %struct.ath_tx_status*, %struct.ath_tx_status** %6, align 8
  %44 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 8
  br label %45

45:                                               ; preds = %3, %37, %29, %21, %13
  %46 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %47 = load %struct.ath_tx_status*, %struct.ath_tx_status** %6, align 8
  %48 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @ar9300_set_selfgenrate_limit(%struct.ath_hal* %46, i8* %49)
  ret void
}

declare dso_local %struct.ar9300_txc* @AR9300TXC(i8*) #1

declare dso_local i8* @MS(i32, i32) #1

declare dso_local i32 @ar9300_set_selfgenrate_limit(%struct.ath_hal*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
