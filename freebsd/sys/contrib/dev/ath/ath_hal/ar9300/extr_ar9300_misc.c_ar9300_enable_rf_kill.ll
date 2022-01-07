; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_misc.c_ar9300_enable_rf_kill.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_misc.c_ar9300_enable_rf_kill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ath_hal_9300 = type { i32, i64, i64 }

@AR_RFSILENT = common dso_local global i32 0, align 4
@AR_RFSILENT_FORCE = common dso_local global i32 0, align 4
@AR_PHY_TEST = common dso_local global i32 0, align 4
@RFSILENT_BB = common dso_local global i32 0, align 4
@AR_GPIO_INPUT_EN_VAL = common dso_local global i32 0, align 4
@AR_GPIO_INPUT_EN_VAL_RFSILENT_BB = common dso_local global i32 0, align 4
@AR_GPIO_INPUT_MUX2 = common dso_local global i32 0, align 4
@AR_GPIO_INPUT_MUX2_RFSILENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar9300_enable_rf_kill(%struct.ath_hal* %0) #0 {
  %2 = alloca %struct.ath_hal*, align 8
  %3 = alloca %struct.ath_hal_9300*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %2, align 8
  %4 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %5 = call %struct.ath_hal_9300* @AH9300(%struct.ath_hal* %4)
  store %struct.ath_hal_9300* %5, %struct.ath_hal_9300** %3, align 8
  %6 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %7 = call i64 @AR_SREV_JUPITER(%struct.ath_hal* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %11 = call i64 @AR_SREV_APHRODITE(%struct.ath_hal* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %46

13:                                               ; preds = %9, %1
  %14 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %15 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %3, align 8
  %16 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @ar9300_gpio_get(%struct.ath_hal* %14, i32 %17)
  %19 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %3, align 8
  %20 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %18, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %13
  %24 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %25 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %26 = load i32, i32* @AR_RFSILENT, align 4
  %27 = call i32 @AR_HOSTIF_REG(%struct.ath_hal* %25, i32 %26)
  %28 = load i32, i32* @AR_RFSILENT_FORCE, align 4
  %29 = call i32 @OS_REG_SET_BIT(%struct.ath_hal* %24, i32 %27, i32 %28)
  %30 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %31 = load i32, i32* @AR_PHY_TEST, align 4
  %32 = load i32, i32* @RFSILENT_BB, align 4
  %33 = call i32 @OS_REG_SET_BIT(%struct.ath_hal* %30, i32 %31, i32 %32)
  br label %45

34:                                               ; preds = %13
  %35 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %36 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %37 = load i32, i32* @AR_RFSILENT, align 4
  %38 = call i32 @AR_HOSTIF_REG(%struct.ath_hal* %36, i32 %37)
  %39 = load i32, i32* @AR_RFSILENT_FORCE, align 4
  %40 = call i32 @OS_REG_CLR_BIT(%struct.ath_hal* %35, i32 %38, i32 %39)
  %41 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %42 = load i32, i32* @AR_PHY_TEST, align 4
  %43 = load i32, i32* @RFSILENT_BB, align 4
  %44 = call i32 @OS_REG_CLR_BIT(%struct.ath_hal* %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %34, %23
  br label %78

46:                                               ; preds = %9
  %47 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %48 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %49 = load i32, i32* @AR_GPIO_INPUT_EN_VAL, align 4
  %50 = call i32 @AR_HOSTIF_REG(%struct.ath_hal* %48, i32 %49)
  %51 = load i32, i32* @AR_GPIO_INPUT_EN_VAL_RFSILENT_BB, align 4
  %52 = call i32 @OS_REG_SET_BIT(%struct.ath_hal* %47, i32 %50, i32 %51)
  %53 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %54 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %55 = load i32, i32* @AR_GPIO_INPUT_MUX2, align 4
  %56 = call i32 @AR_HOSTIF_REG(%struct.ath_hal* %54, i32 %55)
  %57 = load i32, i32* @AR_GPIO_INPUT_MUX2_RFSILENT, align 4
  %58 = call i32 @OS_REG_CLR_BIT(%struct.ath_hal* %53, i32 %56, i32 %57)
  %59 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %60 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %61 = load i32, i32* @AR_GPIO_INPUT_MUX2, align 4
  %62 = call i32 @AR_HOSTIF_REG(%struct.ath_hal* %60, i32 %61)
  %63 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %3, align 8
  %64 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = and i32 %65, 15
  %67 = shl i32 %66, 4
  %68 = call i32 @OS_REG_SET_BIT(%struct.ath_hal* %59, i32 %62, i32 %67)
  %69 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %70 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %3, align 8
  %71 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @ath_hal_gpioCfgInput(%struct.ath_hal* %69, i32 %72)
  %74 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %75 = load i32, i32* @AR_PHY_TEST, align 4
  %76 = load i32, i32* @RFSILENT_BB, align 4
  %77 = call i32 @OS_REG_SET_BIT(%struct.ath_hal* %74, i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %46, %45
  %79 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %80 = call i64 @ath_hal_hasrfkill_int(%struct.ath_hal* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %115

82:                                               ; preds = %78
  %83 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %3, align 8
  %84 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %87 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %3, align 8
  %88 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i64 @ar9300_gpio_get(%struct.ath_hal* %86, i32 %89)
  %91 = icmp eq i64 %85, %90
  br i1 %91, label %92, label %104

92:                                               ; preds = %82
  %93 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %94 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %3, align 8
  %95 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %3, align 8
  %98 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  %101 = xor i1 %100, true
  %102 = zext i1 %101 to i32
  %103 = call i32 @ar9300_gpio_set_intr(%struct.ath_hal* %93, i32 %96, i32 %102)
  br label %114

104:                                              ; preds = %82
  %105 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %106 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %3, align 8
  %107 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %3, align 8
  %110 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = trunc i64 %111 to i32
  %113 = call i32 @ar9300_gpio_set_intr(%struct.ath_hal* %105, i32 %108, i32 %112)
  br label %114

114:                                              ; preds = %104, %92
  br label %115

115:                                              ; preds = %114, %78
  ret void
}

declare dso_local %struct.ath_hal_9300* @AH9300(%struct.ath_hal*) #1

declare dso_local i64 @AR_SREV_JUPITER(%struct.ath_hal*) #1

declare dso_local i64 @AR_SREV_APHRODITE(%struct.ath_hal*) #1

declare dso_local i64 @ar9300_gpio_get(%struct.ath_hal*, i32) #1

declare dso_local i32 @OS_REG_SET_BIT(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @AR_HOSTIF_REG(%struct.ath_hal*, i32) #1

declare dso_local i32 @OS_REG_CLR_BIT(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @ath_hal_gpioCfgInput(%struct.ath_hal*, i32) #1

declare dso_local i64 @ath_hal_hasrfkill_int(%struct.ath_hal*) #1

declare dso_local i32 @ar9300_gpio_set_intr(%struct.ath_hal*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
