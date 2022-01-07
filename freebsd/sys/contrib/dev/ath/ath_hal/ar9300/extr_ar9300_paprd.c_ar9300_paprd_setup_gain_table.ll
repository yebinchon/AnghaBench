; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_paprd.c_ar9300_paprd_setup_gain_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_paprd.c_ar9300_paprd_setup_gain_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.TYPE_2__ = type { i32, i32, i32* }

@HAL_DEBUG_CALIBRATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"Run papredistortion single table algorithm:: Training power = %d\0A\00", align 1
@AR_PHY_PAPRD_TRAINER_STAT1_POSEIDON = common dso_local global i32 0, align 4
@AR_PHY_PAPRD_TRAINER_STAT1_PAPRD_TRAIN_DONE = common dso_local global i32 0, align 4
@AR_PHY_PAPRD_TRAINER_STAT1 = common dso_local global i32 0, align 4
@HAL_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar9300_paprd_setup_gain_table(%struct.ath_hal* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %9 = load i32, i32* @HAL_DEBUG_CALIBRATE, align 4
  %10 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %11 = call %struct.TYPE_2__* @AH9300(%struct.ath_hal* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sdiv i32 %13, 2
  %15 = call i32 @HALDEBUG(%struct.ath_hal* %8, i32 %9, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %17 = call %struct.TYPE_2__* @AH9300(%struct.ath_hal* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %4, align 4
  %21 = shl i32 1, %20
  %22 = and i32 %19, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %72

24:                                               ; preds = %2
  %25 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %28 = call %struct.TYPE_2__* @AH9300(%struct.ath_hal* %27)
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @ar9300_get_desired_gain_for_chain(%struct.ath_hal* %25, i32 %26, i32 %30)
  store i32 %31, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %51, %24
  %33 = load i32, i32* %5, align 4
  %34 = icmp ult i32 %33, 32
  br i1 %34, label %35, label %54

35:                                               ; preds = %32
  %36 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %37 = call %struct.TYPE_2__* @AH9300(%struct.ath_hal* %36)
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %35
  %47 = load i32, i32* %7, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %50

49:                                               ; preds = %35
  br label %54

50:                                               ; preds = %46
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %5, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %32

54:                                               ; preds = %49, %32
  %55 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @ar9300_tx_force_gain(%struct.ath_hal* %55, i32 %56)
  %58 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %59 = call i64 @AR_SREV_POSEIDON(%struct.ath_hal* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %54
  %62 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %63 = load i32, i32* @AR_PHY_PAPRD_TRAINER_STAT1_POSEIDON, align 4
  %64 = load i32, i32* @AR_PHY_PAPRD_TRAINER_STAT1_PAPRD_TRAIN_DONE, align 4
  %65 = call i32 @OS_REG_RMW_FIELD_ALT(%struct.ath_hal* %62, i32 %63, i32 %64, i32 0)
  br label %71

66:                                               ; preds = %54
  %67 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %68 = load i32, i32* @AR_PHY_PAPRD_TRAINER_STAT1, align 4
  %69 = load i32, i32* @AR_PHY_PAPRD_TRAINER_STAT1_PAPRD_TRAIN_DONE, align 4
  %70 = call i32 @OS_REG_RMW_FIELD_ALT(%struct.ath_hal* %67, i32 %68, i32 %69, i32 0)
  br label %71

71:                                               ; preds = %66, %61
  br label %72

72:                                               ; preds = %71, %2
  %73 = load i32, i32* @HAL_OK, align 4
  ret i32 %73
}

declare dso_local i32 @HALDEBUG(%struct.ath_hal*, i32, i8*, i32) #1

declare dso_local %struct.TYPE_2__* @AH9300(%struct.ath_hal*) #1

declare dso_local i32 @ar9300_get_desired_gain_for_chain(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @ar9300_tx_force_gain(%struct.ath_hal*, i32) #1

declare dso_local i64 @AR_SREV_POSEIDON(%struct.ath_hal*) #1

declare dso_local i32 @OS_REG_RMW_FIELD_ALT(%struct.ath_hal*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
