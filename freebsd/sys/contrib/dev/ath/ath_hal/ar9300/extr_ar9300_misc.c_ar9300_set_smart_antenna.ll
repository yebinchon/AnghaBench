; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_misc.c_ar9300_set_smart_antenna.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_misc.c_ar9300_set_smart_antenna.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ath_hal_9300 = type { i32 }

@AR_XRTO = common dso_local global i32 0, align 4
@AR_ENABLE_SMARTANTENNA = common dso_local global i32 0, align 4
@HAL_OK = common dso_local global i64 0, align 8
@HAL_CAP_SMARTANTENNA = common dso_local global i32 0, align 4
@AR_PHY_SWITCH_COM = common dso_local global i32 0, align 4
@AR_PHY_SWITCH_COM_2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar9300_set_smart_antenna(%struct.ath_hal* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_hal_9300*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %7 = call %struct.ath_hal_9300* @AH9300(%struct.ath_hal* %6)
  store %struct.ath_hal_9300* %7, %struct.ath_hal_9300** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %12 = load i32, i32* @AR_XRTO, align 4
  %13 = load i32, i32* @AR_ENABLE_SMARTANTENNA, align 4
  %14 = call i32 @OS_REG_SET_BIT(%struct.ath_hal* %11, i32 %12, i32 %13)
  br label %20

15:                                               ; preds = %2
  %16 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %17 = load i32, i32* @AR_XRTO, align 4
  %18 = load i32, i32* @AR_ENABLE_SMARTANTENNA, align 4
  %19 = call i32 @OS_REG_CLR_BIT(%struct.ath_hal* %16, i32 %17, i32 %18)
  br label %20

20:                                               ; preds = %15, %10
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %20
  %24 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %25 = call i64 @AR_SREV_SCORPION(%struct.ath_hal* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %23
  %28 = load i64, i64* @HAL_OK, align 8
  %29 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %30 = load i32, i32* @HAL_CAP_SMARTANTENNA, align 4
  %31 = call i64 @ar9300_get_capability(%struct.ath_hal* %29, i32 %30, i32 0, i32 0)
  %32 = icmp eq i64 %28, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %35 = load i32, i32* @AR_PHY_SWITCH_COM, align 4
  %36 = call i32 @OS_REG_WRITE(%struct.ath_hal* %34, i32 %35, i32 1088)
  %37 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %38 = load i32, i32* @AR_PHY_SWITCH_COM_2, align 4
  %39 = call i32 @OS_REG_WRITE(%struct.ath_hal* %37, i32 %38, i32 0)
  br label %40

40:                                               ; preds = %33, %27, %23, %20
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %5, align 8
  %43 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  ret i32 1
}

declare dso_local %struct.ath_hal_9300* @AH9300(%struct.ath_hal*) #1

declare dso_local i32 @OS_REG_SET_BIT(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @OS_REG_CLR_BIT(%struct.ath_hal*, i32, i32) #1

declare dso_local i64 @AR_SREV_SCORPION(%struct.ath_hal*) #1

declare dso_local i64 @ar9300_get_capability(%struct.ath_hal*, i32, i32, i32) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
