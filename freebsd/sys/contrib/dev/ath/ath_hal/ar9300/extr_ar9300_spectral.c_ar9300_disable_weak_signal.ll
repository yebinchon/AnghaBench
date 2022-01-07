; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_spectral.c_ar9300_disable_weak_signal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_spectral.c_ar9300_disable_weak_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }

@AR_PHY_FIND_SIG = common dso_local global i32 0, align 4
@AR_PHY_FIND_SIG_FIRPWR = common dso_local global i32 0, align 4
@AR_PHY_FIND_SIG_FIRPWR_SIGN_BIT = common dso_local global i32 0, align 4
@AR_PHY_FIND_SIG_FIRSTEP = common dso_local global i32 0, align 4
@AR_PHY_FIND_SIG_RELPWR = common dso_local global i32 0, align 4
@AR_PHY_FIND_SIG_RELPWR_SIGN_BIT = common dso_local global i32 0, align 4
@AR_PHY_FIND_SIG_RELSTEP = common dso_local global i32 0, align 4
@AR_PHY_FIND_SIG_RELSTEP_SIGN_BIT = common dso_local global i32 0, align 4
@AR_PHY_FIND_SIG_LOW = common dso_local global i32 0, align 4
@AR_PHY_FIND_SIG_LOW_FIRPWR = common dso_local global i32 0, align 4
@AR_PHY_FIND_SIG_LOW_FIRPWR_SIGN_BIT = common dso_local global i32 0, align 4
@AR_PHY_FIND_SIG_LOW_FIRSTEP_LOW = common dso_local global i32 0, align 4
@AR_PHY_FIND_SIG_LOW_RELSTEP = common dso_local global i32 0, align 4
@AR_PHY_FIND_SIG_LOW_RELSTEP_SIGN_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar9300_disable_weak_signal(%struct.ath_hal* %0) #0 {
  %2 = alloca %struct.ath_hal*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %2, align 8
  %3 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %4 = load i32, i32* @AR_PHY_FIND_SIG, align 4
  %5 = load i32, i32* @AR_PHY_FIND_SIG_FIRPWR, align 4
  %6 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %3, i32 %4, i32 %5, i32 127)
  %7 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %8 = load i32, i32* @AR_PHY_FIND_SIG, align 4
  %9 = load i32, i32* @AR_PHY_FIND_SIG_FIRPWR_SIGN_BIT, align 4
  %10 = call i32 @OS_REG_CLR_BIT(%struct.ath_hal* %7, i32 %8, i32 %9)
  %11 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %12 = load i32, i32* @AR_PHY_FIND_SIG, align 4
  %13 = load i32, i32* @AR_PHY_FIND_SIG_FIRSTEP, align 4
  %14 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %11, i32 %12, i32 %13, i32 63)
  %15 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %16 = load i32, i32* @AR_PHY_FIND_SIG, align 4
  %17 = load i32, i32* @AR_PHY_FIND_SIG_RELPWR, align 4
  %18 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %15, i32 %16, i32 %17, i32 31)
  %19 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %20 = load i32, i32* @AR_PHY_FIND_SIG, align 4
  %21 = load i32, i32* @AR_PHY_FIND_SIG_RELPWR_SIGN_BIT, align 4
  %22 = call i32 @OS_REG_CLR_BIT(%struct.ath_hal* %19, i32 %20, i32 %21)
  %23 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %24 = load i32, i32* @AR_PHY_FIND_SIG, align 4
  %25 = load i32, i32* @AR_PHY_FIND_SIG_RELSTEP, align 4
  %26 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %23, i32 %24, i32 %25, i32 31)
  %27 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %28 = load i32, i32* @AR_PHY_FIND_SIG, align 4
  %29 = load i32, i32* @AR_PHY_FIND_SIG_RELSTEP_SIGN_BIT, align 4
  %30 = call i32 @OS_REG_CLR_BIT(%struct.ath_hal* %27, i32 %28, i32 %29)
  %31 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %32 = load i32, i32* @AR_PHY_FIND_SIG_LOW, align 4
  %33 = load i32, i32* @AR_PHY_FIND_SIG_LOW_FIRPWR, align 4
  %34 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %31, i32 %32, i32 %33, i32 127)
  %35 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %36 = load i32, i32* @AR_PHY_FIND_SIG_LOW, align 4
  %37 = load i32, i32* @AR_PHY_FIND_SIG_LOW_FIRPWR_SIGN_BIT, align 4
  %38 = call i32 @OS_REG_CLR_BIT(%struct.ath_hal* %35, i32 %36, i32 %37)
  %39 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %40 = load i32, i32* @AR_PHY_FIND_SIG_LOW, align 4
  %41 = load i32, i32* @AR_PHY_FIND_SIG_LOW_FIRSTEP_LOW, align 4
  %42 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %39, i32 %40, i32 %41, i32 63)
  %43 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %44 = load i32, i32* @AR_PHY_FIND_SIG_LOW, align 4
  %45 = load i32, i32* @AR_PHY_FIND_SIG_LOW_RELSTEP, align 4
  %46 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %43, i32 %44, i32 %45, i32 31)
  %47 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %48 = load i32, i32* @AR_PHY_FIND_SIG_LOW, align 4
  %49 = load i32, i32* @AR_PHY_FIND_SIG_LOW_RELSTEP_SIGN_BIT, align 4
  %50 = call i32 @OS_REG_CLR_BIT(%struct.ath_hal* %47, i32 %48, i32 %49)
  ret void
}

declare dso_local i32 @OS_REG_RMW_FIELD(%struct.ath_hal*, i32, i32, i32) #1

declare dso_local i32 @OS_REG_CLR_BIT(%struct.ath_hal*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
