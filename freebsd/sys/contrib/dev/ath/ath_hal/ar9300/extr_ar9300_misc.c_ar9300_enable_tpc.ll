; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_misc.c_ar9300_enable_tpc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_misc.c_ar9300_enable_tpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@AR_PHY_PWRTX_MAX = common dso_local global i32 0, align 4
@AR_PHY_PER_PACKET_POWERTX_MAX = common dso_local global i32 0, align 4
@AR_PHY_POWER_TX_SUB = common dso_local global i32 0, align 4
@AR_PHY_POWER_TX_SUB_2_DISABLE = common dso_local global i32 0, align 4
@AR_PHY_POWER_TX_SUB_3_DISABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar9300_enable_tpc(%struct.ath_hal* %0) #0 {
  %2 = alloca %struct.ath_hal*, align 8
  %3 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %5 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  store i32 1, i32* %6, align 4
  %7 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %8 = load i32, i32* @AR_PHY_PWRTX_MAX, align 4
  %9 = load i32, i32* @AR_PHY_PER_PACKET_POWERTX_MAX, align 4
  %10 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %7, i32 %8, i32 %9, i32 1)
  %11 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %12 = load i32, i32* @AR_PHY_POWER_TX_SUB, align 4
  %13 = call i32 @OS_REG_READ(%struct.ath_hal* %11, i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %15 = call i64 @AR_SREV_WASP(%struct.ath_hal* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %19 = load i32, i32* @AR_PHY_POWER_TX_SUB, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @AR_PHY_POWER_TX_SUB_2_DISABLE, align 4
  %22 = and i32 %20, %21
  %23 = call i32 @OS_REG_WRITE(%struct.ath_hal* %18, i32 %19, i32 %22)
  br label %31

24:                                               ; preds = %1
  %25 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %26 = load i32, i32* @AR_PHY_POWER_TX_SUB, align 4
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @AR_PHY_POWER_TX_SUB_3_DISABLE, align 4
  %29 = and i32 %27, %28
  %30 = call i32 @OS_REG_WRITE(%struct.ath_hal* %25, i32 %26, i32 %29)
  br label %31

31:                                               ; preds = %24, %17
  ret void
}

declare dso_local i32 @OS_REG_RMW_FIELD(%struct.ath_hal*, i32, i32, i32) #1

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i32) #1

declare dso_local i64 @AR_SREV_WASP(%struct.ath_hal*) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
