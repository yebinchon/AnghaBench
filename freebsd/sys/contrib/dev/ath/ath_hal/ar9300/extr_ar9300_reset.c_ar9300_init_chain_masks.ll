; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_reset.c_ar9300_init_chain_masks.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_reset.c_ar9300_init_chain_masks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@HAL_GREEN_AP_RX_MASK = common dso_local global i32 0, align 4
@AR_PHY_ANALOG_SWAP = common dso_local global i32 0, align 4
@AR_PHY_SWAP_ALT_CHAIN = common dso_local global i32 0, align 4
@AR_PHY_RX_CHAINMASK = common dso_local global i32 0, align 4
@AR_PHY_CAL_CHAINMASK = common dso_local global i32 0, align 4
@AR_SELFGEN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hal*, i32, i32)* @ar9300_init_chain_masks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9300_init_chain_masks(%struct.ath_hal* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ath_hal*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %8 = call %struct.TYPE_6__* @AH9300(%struct.ath_hal* %7)
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @HAL_GREEN_AP_RX_MASK, align 4
  store i32 %13, i32* %5, align 4
  br label %14

14:                                               ; preds = %12, %3
  %15 = load i32, i32* %5, align 4
  %16 = icmp eq i32 %15, 5
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %19 = load i32, i32* @AR_PHY_ANALOG_SWAP, align 4
  %20 = load i32, i32* @AR_PHY_SWAP_ALT_CHAIN, align 4
  %21 = call i32 @OS_REG_SET_BIT(%struct.ath_hal* %18, i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %17, %14
  %23 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %24 = load i32, i32* @AR_PHY_RX_CHAINMASK, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @OS_REG_WRITE(%struct.ath_hal* %23, i32 %24, i32 %25)
  %27 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %28 = load i32, i32* @AR_PHY_CAL_CHAINMASK, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @OS_REG_WRITE(%struct.ath_hal* %27, i32 %28, i32 %29)
  %31 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %32 = call %struct.TYPE_5__* @AH_PRIVATE(%struct.ath_hal* %31)
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %22
  %38 = load i32, i32* %6, align 4
  %39 = icmp eq i32 %38, 7
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %42 = load i32, i32* @AR_SELFGEN_MASK, align 4
  %43 = call i32 @OS_REG_WRITE(%struct.ath_hal* %41, i32 %42, i32 3)
  br label %49

44:                                               ; preds = %37, %22
  %45 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %46 = load i32, i32* @AR_SELFGEN_MASK, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @OS_REG_WRITE(%struct.ath_hal* %45, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %44, %40
  %50 = load i32, i32* %6, align 4
  %51 = icmp eq i32 %50, 5
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  %53 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %54 = load i32, i32* @AR_PHY_ANALOG_SWAP, align 4
  %55 = load i32, i32* @AR_PHY_SWAP_ALT_CHAIN, align 4
  %56 = call i32 @OS_REG_SET_BIT(%struct.ath_hal* %53, i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %52, %49
  ret void
}

declare dso_local %struct.TYPE_6__* @AH9300(%struct.ath_hal*) #1

declare dso_local i32 @OS_REG_SET_BIT(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

declare dso_local %struct.TYPE_5__* @AH_PRIVATE(%struct.ath_hal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
