; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_freebsd.c_ar9300_freebsd_setup_tx_desc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_freebsd.c_ar9300_freebsd_setup_tx_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ath_desc = type { i32 }
%struct.ath_hal_9300 = type { i32* }

@HAL_TXKEYIX_INVALID = common dso_local global i64 0, align 8
@AH_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar9300_freebsd_setup_tx_desc(%struct.ath_hal* %0, %struct.ath_desc* %1, i64 %2, i64 %3, i32 %4, i64 %5, i64 %6, i64 %7, i64 %8, i64 %9, i64 %10, i64 %11, i64 %12, i64 %13, i64 %14, i64 %15) #0 {
  %17 = alloca %struct.ath_hal*, align 8
  %18 = alloca %struct.ath_desc*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca %struct.ath_hal_9300*, align 8
  %34 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %17, align 8
  store %struct.ath_desc* %1, %struct.ath_desc** %18, align 8
  store i64 %2, i64* %19, align 8
  store i64 %3, i64* %20, align 8
  store i32 %4, i32* %21, align 4
  store i64 %5, i64* %22, align 8
  store i64 %6, i64* %23, align 8
  store i64 %7, i64* %24, align 8
  store i64 %8, i64* %25, align 8
  store i64 %9, i64* %26, align 8
  store i64 %10, i64* %27, align 8
  store i64 %11, i64* %28, align 8
  store i64 %12, i64* %29, align 8
  store i64 %13, i64* %30, align 8
  store i64 %14, i64* %31, align 8
  store i64 %15, i64* %32, align 8
  %35 = load %struct.ath_hal*, %struct.ath_hal** %17, align 8
  %36 = call %struct.ath_hal_9300* @AH9300(%struct.ath_hal* %35)
  store %struct.ath_hal_9300* %36, %struct.ath_hal_9300** %33, align 8
  store i32 0, i32* %34, align 4
  %37 = load i64, i64* %25, align 8
  %38 = load i64, i64* @HAL_TXKEYIX_INVALID, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %16
  %41 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %33, align 8
  %42 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* %25, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %34, align 4
  br label %47

47:                                               ; preds = %40, %16
  %48 = load %struct.ath_hal*, %struct.ath_hal** %17, align 8
  %49 = load %struct.ath_desc*, %struct.ath_desc** %18, align 8
  %50 = load i64, i64* %19, align 8
  %51 = load i32, i32* %21, align 4
  %52 = load i64, i64* %22, align 8
  %53 = load i64, i64* %25, align 8
  %54 = load i32, i32* %34, align 4
  %55 = load i64, i64* %27, align 8
  %56 = call i32 @ar9300_set_11n_tx_desc(%struct.ath_hal* %48, %struct.ath_desc* %49, i64 %50, i32 %51, i64 %52, i64 %53, i32 %54, i64 %55)
  %57 = load i32, i32* @AH_TRUE, align 4
  ret i32 %57
}

declare dso_local %struct.ath_hal_9300* @AH9300(%struct.ath_hal*) #1

declare dso_local i32 @ar9300_set_11n_tx_desc(%struct.ath_hal*, %struct.ath_desc*, i64, i32, i64, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
