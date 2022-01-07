; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_misc.c_ar9300_ppm_get_rssi_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_misc.c_ar9300_ppm_get_rssi_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }

@AR_PHY_ANALOG_SWAP = common dso_local global i64 0, align 8
@AR_PHY_SWAP_ALT_CHAIN = common dso_local global i32 0, align 4
@AR_PHY_CHAN_INFO_GAIN_0 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar9300_ppm_get_rssi_dump(%struct.ath_hal* %0) #0 {
  %2 = alloca %struct.ath_hal*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %2, align 8
  %6 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %7 = load i64, i64* @AR_PHY_ANALOG_SWAP, align 8
  %8 = call i32 @OS_REG_READ(%struct.ath_hal* %6, i64 %7)
  %9 = load i32, i32* @AR_PHY_SWAP_ALT_CHAIN, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 8192, i32* %4, align 4
  store i32 4096, i32* %5, align 4
  br label %14

13:                                               ; preds = %1
  store i32 4096, i32* %4, align 4
  store i32 8192, i32* %5, align 4
  br label %14

14:                                               ; preds = %13, %12
  %15 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %16 = load i64, i64* @AR_PHY_CHAN_INFO_GAIN_0, align 8
  %17 = call i32 @OS_REG_READ(%struct.ath_hal* %15, i64 %16)
  %18 = and i32 255, %17
  %19 = shl i32 %18, 0
  %20 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %21 = load i64, i64* @AR_PHY_CHAN_INFO_GAIN_0, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %21, %23
  %25 = call i32 @OS_REG_READ(%struct.ath_hal* %20, i64 %24)
  %26 = and i32 255, %25
  %27 = shl i32 %26, 8
  %28 = or i32 %19, %27
  %29 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %30 = load i64, i64* @AR_PHY_CHAN_INFO_GAIN_0, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %30, %32
  %34 = call i32 @OS_REG_READ(%struct.ath_hal* %29, i64 %33)
  %35 = and i32 255, %34
  %36 = shl i32 %35, 16
  %37 = or i32 %28, %36
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
