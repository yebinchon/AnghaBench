; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_misc.c_ar9300_control_signals_for_green_tx_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_misc.c_ar9300_control_signals_for_green_tx_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ath_hal_9300 = type { i64 }

@AR_PHY_PAPRD_VALID_OBDB_POSEIDON = common dso_local global i32 0, align 4
@AR_PHY_PAPRD_VALID_OBDB_0 = common dso_local global i32 0, align 4
@AR_PHY_PAPRD_VALID_OBDB_1 = common dso_local global i32 0, align 4
@AR_PHY_PAPRD_VALID_OBDB_2 = common dso_local global i32 0, align 4
@AR_PHY_PAPRD_VALID_OBDB_3 = common dso_local global i32 0, align 4
@AR_PHY_PAPRD_VALID_OBDB_4 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar9300_control_signals_for_green_tx_mode(%struct.ath_hal* %0) #0 {
  %2 = alloca %struct.ath_hal*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ath_hal_9300*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %2, align 8
  store i32 45, i32* %3, align 4
  store i32 37, i32* %4, align 4
  store i32 29, i32* %5, align 4
  store i32 21, i32* %6, align 4
  store i32 13, i32* %7, align 4
  %9 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %10 = call %struct.ath_hal_9300* @AH9300(%struct.ath_hal* %9)
  store %struct.ath_hal_9300* %10, %struct.ath_hal_9300** %8, align 8
  %11 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %12 = call i64 @AR_SREV_POSEIDON(%struct.ath_hal* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %45

14:                                               ; preds = %1
  %15 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %8, align 8
  %16 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %45

19:                                               ; preds = %14
  %20 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %21 = load i32, i32* @AR_PHY_PAPRD_VALID_OBDB_POSEIDON, align 4
  %22 = load i32, i32* @AR_PHY_PAPRD_VALID_OBDB_0, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @OS_REG_RMW_FIELD_ALT(%struct.ath_hal* %20, i32 %21, i32 %22, i32 %23)
  %25 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %26 = load i32, i32* @AR_PHY_PAPRD_VALID_OBDB_POSEIDON, align 4
  %27 = load i32, i32* @AR_PHY_PAPRD_VALID_OBDB_1, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @OS_REG_RMW_FIELD_ALT(%struct.ath_hal* %25, i32 %26, i32 %27, i32 %28)
  %30 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %31 = load i32, i32* @AR_PHY_PAPRD_VALID_OBDB_POSEIDON, align 4
  %32 = load i32, i32* @AR_PHY_PAPRD_VALID_OBDB_2, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @OS_REG_RMW_FIELD_ALT(%struct.ath_hal* %30, i32 %31, i32 %32, i32 %33)
  %35 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %36 = load i32, i32* @AR_PHY_PAPRD_VALID_OBDB_POSEIDON, align 4
  %37 = load i32, i32* @AR_PHY_PAPRD_VALID_OBDB_3, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @OS_REG_RMW_FIELD_ALT(%struct.ath_hal* %35, i32 %36, i32 %37, i32 %38)
  %40 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %41 = load i32, i32* @AR_PHY_PAPRD_VALID_OBDB_POSEIDON, align 4
  %42 = load i32, i32* @AR_PHY_PAPRD_VALID_OBDB_4, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @OS_REG_RMW_FIELD_ALT(%struct.ath_hal* %40, i32 %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %19, %14, %1
  ret void
}

declare dso_local %struct.ath_hal_9300* @AH9300(%struct.ath_hal*) #1

declare dso_local i64 @AR_SREV_POSEIDON(%struct.ath_hal*) #1

declare dso_local i32 @OS_REG_RMW_FIELD_ALT(%struct.ath_hal*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
