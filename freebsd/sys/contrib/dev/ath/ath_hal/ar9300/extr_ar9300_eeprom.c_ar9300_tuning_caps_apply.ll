; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_eeprom.c_ar9300_tuning_caps_apply.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_eeprom.c_ar9300_tuning_caps_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }

@AR_HORNET_CH0_XTAL = common dso_local global i32 0, align 4
@AR_OSPREY_CHO_XTAL_CAPINDAC = common dso_local global i32 0, align 4
@AR_OSPREY_CHO_XTAL_CAPOUTDAC = common dso_local global i32 0, align 4
@AR_SCORPION_CH0_XTAL = common dso_local global i32 0, align 4
@AR_OSPREY_CH0_XTAL = common dso_local global i32 0, align 4
@AH_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar9300_tuning_caps_apply(%struct.ath_hal* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  %6 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %7 = call %struct.TYPE_6__* @AH9300(%struct.ath_hal* %6)
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %5, align 8
  %9 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %10 = call i32 @ar9300_tuning_caps_params_get(%struct.ath_hal* %9)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, 64
  %16 = ashr i32 %15, 6
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %77

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  %20 = and i32 %19, 127
  store i32 %20, i32* %4, align 4
  %21 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %22 = call i64 @AR_SREV_POSEIDON(%struct.ath_hal* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %18
  %25 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %26 = call i64 @AR_SREV_WASP(%struct.ath_hal* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %30 = call i64 @AR_SREV_HONEYBEE(%struct.ath_hal* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28, %24, %18
  store i32 1, i32* %2, align 4
  br label %79

33:                                               ; preds = %28
  %34 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %35 = call i64 @AR_SREV_HORNET(%struct.ath_hal* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %33
  %38 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %39 = load i32, i32* @AR_HORNET_CH0_XTAL, align 4
  %40 = load i32, i32* @AR_OSPREY_CHO_XTAL_CAPINDAC, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %38, i32 %39, i32 %40, i32 %41)
  %43 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %44 = load i32, i32* @AR_HORNET_CH0_XTAL, align 4
  %45 = load i32, i32* @AR_OSPREY_CHO_XTAL_CAPOUTDAC, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %43, i32 %44, i32 %45, i32 %46)
  br label %75

48:                                               ; preds = %33
  %49 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %50 = call i64 @AR_SREV_SCORPION(%struct.ath_hal* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %48
  %53 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %54 = load i32, i32* @AR_SCORPION_CH0_XTAL, align 4
  %55 = load i32, i32* @AR_OSPREY_CHO_XTAL_CAPINDAC, align 4
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %53, i32 %54, i32 %55, i32 %56)
  %58 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %59 = load i32, i32* @AR_SCORPION_CH0_XTAL, align 4
  %60 = load i32, i32* @AR_OSPREY_CHO_XTAL_CAPOUTDAC, align 4
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %58, i32 %59, i32 %60, i32 %61)
  br label %74

63:                                               ; preds = %48
  %64 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %65 = load i32, i32* @AR_OSPREY_CH0_XTAL, align 4
  %66 = load i32, i32* @AR_OSPREY_CHO_XTAL_CAPINDAC, align 4
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %64, i32 %65, i32 %66, i32 %67)
  %69 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %70 = load i32, i32* @AR_OSPREY_CH0_XTAL, align 4
  %71 = load i32, i32* @AR_OSPREY_CHO_XTAL_CAPOUTDAC, align 4
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %69, i32 %70, i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %63, %52
  br label %75

75:                                               ; preds = %74, %37
  br label %76

76:                                               ; preds = %75
  br label %77

77:                                               ; preds = %76, %1
  %78 = load i32, i32* @AH_TRUE, align 4
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %77, %32
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local %struct.TYPE_6__* @AH9300(%struct.ath_hal*) #1

declare dso_local i32 @ar9300_tuning_caps_params_get(%struct.ath_hal*) #1

declare dso_local i64 @AR_SREV_POSEIDON(%struct.ath_hal*) #1

declare dso_local i64 @AR_SREV_WASP(%struct.ath_hal*) #1

declare dso_local i64 @AR_SREV_HONEYBEE(%struct.ath_hal*) #1

declare dso_local i64 @AR_SREV_HORNET(%struct.ath_hal*) #1

declare dso_local i32 @OS_REG_RMW_FIELD(%struct.ath_hal*, i32, i32, i32) #1

declare dso_local i64 @AR_SREV_SCORPION(%struct.ath_hal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
