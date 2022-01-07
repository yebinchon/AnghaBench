; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_xmit_ds.c_ar9300_calc_ptr_chk_sum.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_xmit_ds.c_ar9300_calc_ptr_chk_sum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9300_txc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@AR_tx_ptr_chk_sum = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ar9300_txc*)* @ar9300_calc_ptr_chk_sum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar9300_calc_ptr_chk_sum(%struct.ar9300_txc* %0) #0 {
  %2 = alloca %struct.ar9300_txc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ar9300_txc* %0, %struct.ar9300_txc** %2, align 8
  %5 = load %struct.ar9300_txc*, %struct.ar9300_txc** %2, align 8
  %6 = getelementptr inbounds %struct.ar9300_txc, %struct.ar9300_txc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.ar9300_txc*, %struct.ar9300_txc** %2, align 8
  %9 = getelementptr inbounds %struct.ar9300_txc, %struct.ar9300_txc* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = add nsw i32 %7, %10
  %12 = load %struct.ar9300_txc*, %struct.ar9300_txc** %2, align 8
  %13 = getelementptr inbounds %struct.ar9300_txc, %struct.ar9300_txc* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %11, %14
  %16 = load %struct.ar9300_txc*, %struct.ar9300_txc** %2, align 8
  %17 = getelementptr inbounds %struct.ar9300_txc, %struct.ar9300_txc* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %15, %18
  %20 = load %struct.ar9300_txc*, %struct.ar9300_txc** %2, align 8
  %21 = getelementptr inbounds %struct.ar9300_txc, %struct.ar9300_txc* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %19, %22
  %24 = load %struct.ar9300_txc*, %struct.ar9300_txc** %2, align 8
  %25 = getelementptr inbounds %struct.ar9300_txc, %struct.ar9300_txc* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %23, %26
  %28 = load %struct.ar9300_txc*, %struct.ar9300_txc** %2, align 8
  %29 = getelementptr inbounds %struct.ar9300_txc, %struct.ar9300_txc* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %27, %30
  %32 = load %struct.ar9300_txc*, %struct.ar9300_txc** %2, align 8
  %33 = getelementptr inbounds %struct.ar9300_txc, %struct.ar9300_txc* %32, i32 0, i32 7
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %31, %34
  %36 = load %struct.ar9300_txc*, %struct.ar9300_txc** %2, align 8
  %37 = getelementptr inbounds %struct.ar9300_txc, %struct.ar9300_txc* %36, i32 0, i32 8
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %35, %38
  %40 = load %struct.ar9300_txc*, %struct.ar9300_txc** %2, align 8
  %41 = getelementptr inbounds %struct.ar9300_txc, %struct.ar9300_txc* %40, i32 0, i32 9
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %39, %42
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* %3, align 4
  %45 = and i32 %44, 65535
  %46 = load i32, i32* %3, align 4
  %47 = ashr i32 %46, 16
  %48 = add nsw i32 %45, %47
  %49 = load i32, i32* @AR_tx_ptr_chk_sum, align 4
  %50 = and i32 %48, %49
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
