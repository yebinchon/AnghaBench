; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_freebsd.c_ar9300_freebsd_fill_tx_desc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_freebsd.c_ar9300_freebsd_fill_tx_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ath_desc = type { i32 }
%struct.ar9300_txc = type { i32 }

@AR_encr_type = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar9300_freebsd_fill_tx_desc(%struct.ath_hal* %0, %struct.ath_desc* %1, i32* %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7, %struct.ath_desc* %8) #0 {
  %10 = alloca %struct.ath_hal*, align 8
  %11 = alloca %struct.ath_desc*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.ath_desc*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.ar9300_txc*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %10, align 8
  store %struct.ath_desc* %1, %struct.ath_desc** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store %struct.ath_desc* %8, %struct.ath_desc** %18, align 8
  store i32 0, i32* %19, align 4
  %21 = load %struct.ath_desc*, %struct.ath_desc** %18, align 8
  %22 = call %struct.ar9300_txc* @AR9300TXC_CONST(%struct.ath_desc* %21)
  store %struct.ar9300_txc* %22, %struct.ar9300_txc** %20, align 8
  %23 = load %struct.ar9300_txc*, %struct.ar9300_txc** %20, align 8
  %24 = getelementptr inbounds %struct.ar9300_txc, %struct.ar9300_txc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @AR_encr_type, align 4
  %27 = call i32 @MS(i32 %25, i32 %26)
  store i32 %27, i32* %19, align 4
  %28 = load %struct.ath_hal*, %struct.ath_hal** %10, align 8
  %29 = load %struct.ath_desc*, %struct.ath_desc** %11, align 8
  %30 = load i32*, i32** %12, align 8
  %31 = load i32*, i32** %13, align 8
  %32 = load i32, i32* %14, align 4
  %33 = load i32, i32* %15, align 4
  %34 = load i32, i32* %19, align 4
  %35 = load i32, i32* %16, align 4
  %36 = load i32, i32* %17, align 4
  %37 = load %struct.ath_desc*, %struct.ath_desc** %18, align 8
  %38 = call i32 @ar9300_fill_tx_desc(%struct.ath_hal* %28, %struct.ath_desc* %29, i32* %30, i32* %31, i32 %32, i32 %33, i32 %34, i32 %35, i32 %36, %struct.ath_desc* %37)
  ret i32 %38
}

declare dso_local %struct.ar9300_txc* @AR9300TXC_CONST(%struct.ath_desc*) #1

declare dso_local i32 @MS(i32, i32) #1

declare dso_local i32 @ar9300_fill_tx_desc(%struct.ath_hal*, %struct.ath_desc*, i32*, i32*, i32, i32, i32, i32, i32, %struct.ath_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
