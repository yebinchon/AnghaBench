; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_paprd.c_ar9300_get_desired_gain_for_chain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_paprd.c_ar9300_get_desired_gain_for_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }

@AR_PHY_PAPRD_TRAINER_STAT1_POSEIDON = common dso_local global i32 0, align 4
@AR_PHY_PAPRD_TRAINER_STAT1_PAPRD_TRAIN_DONE = common dso_local global i32 0, align 4
@AR_PHY_PAPRD_TRAINER_STAT1 = common dso_local global i32 0, align 4
@AR_PHY_TPC_12 = common dso_local global i32 0, align 4
@AR_PHY_TPC_12_DESIRED_SCALE_HT40_5 = common dso_local global i32 0, align 4
@AR_PHY_TPC_19 = common dso_local global i32 0, align 4
@AR_PHY_TPC_19_ALPHA_THERM = common dso_local global i32 0, align 4
@AR_PHY_TPC_19_ALT_ALPHA_VOLT = common dso_local global i32 0, align 4
@AR_PHY_TPC_18 = common dso_local global i32 0, align 4
@AR_PHY_TPC_18_ALT_THERM_CAL_VALUE = common dso_local global i32 0, align 4
@AR_PHY_TPC_18_ALT_VOLT_CAL_VALUE = common dso_local global i32 0, align 4
@AR_PHY_THERM_ADC_4 = common dso_local global i32 0, align 4
@AR_PHY_THERM_ADC_4_LATEST_THERM_VALUE = common dso_local global i32 0, align 4
@AR_PHY_THERM_ADC_4_LATEST_VOLT_VALUE = common dso_local global i32 0, align 4
@AR_PHY_TPC_11_B0 = common dso_local global i32 0, align 4
@AR_PHY_TPC_11_B0_OLPC_GAIN_DELTA_0 = common dso_local global i32 0, align 4
@AR_PHY_CL_TAB_0 = common dso_local global i32 0, align 4
@AR_PHY_CL_TAB_0_CL_GAIN_MOD = common dso_local global i32 0, align 4
@AR_PHY_TPC_11_B1 = common dso_local global i32 0, align 4
@AR_PHY_TPC_11_B1_OLPC_GAIN_DELTA_1 = common dso_local global i32 0, align 4
@AR_PHY_CL_TAB_1 = common dso_local global i32 0, align 4
@AR_PHY_CL_TAB_1_CL_GAIN_MOD = common dso_local global i32 0, align 4
@AR_PHY_TPC_11_B2 = common dso_local global i32 0, align 4
@AR_PHY_TPC_11_B2_OLPC_GAIN_DELTA_2 = common dso_local global i32 0, align 4
@AR_PHY_CL_TAB_2 = common dso_local global i32 0, align 4
@AR_PHY_CL_TAB_2_CL_GAIN_MOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hal*, i32, i32)* @ar9300_get_desired_gain_for_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar9300_get_desired_gain_for_chain(%struct.ath_hal* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ath_hal*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %20 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %21 = call i64 @AR_SREV_POSEIDON(%struct.ath_hal* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %3
  %24 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %25 = load i32, i32* @AR_PHY_PAPRD_TRAINER_STAT1_POSEIDON, align 4
  %26 = load i32, i32* @AR_PHY_PAPRD_TRAINER_STAT1_PAPRD_TRAIN_DONE, align 4
  %27 = call i32 @OS_REG_RMW_FIELD_ALT(%struct.ath_hal* %24, i32 %25, i32 %26, i32 0)
  br label %33

28:                                               ; preds = %3
  %29 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %30 = load i32, i32* @AR_PHY_PAPRD_TRAINER_STAT1, align 4
  %31 = load i32, i32* @AR_PHY_PAPRD_TRAINER_STAT1_PAPRD_TRAIN_DONE, align 4
  %32 = call i32 @OS_REG_RMW_FIELD_ALT(%struct.ath_hal* %29, i32 %30, i32 %31, i32 0)
  br label %33

33:                                               ; preds = %28, %23
  %34 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %35 = load i32, i32* @AR_PHY_TPC_12, align 4
  %36 = load i32, i32* @AR_PHY_TPC_12_DESIRED_SCALE_HT40_5, align 4
  %37 = call i32 @OS_REG_READ_FIELD_ALT(%struct.ath_hal* %34, i32 %35, i32 %36)
  store i32 %37, i32* %17, align 4
  %38 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %39 = load i32, i32* @AR_PHY_TPC_19, align 4
  %40 = load i32, i32* @AR_PHY_TPC_19_ALPHA_THERM, align 4
  %41 = call i32 @OS_REG_READ_FIELD(%struct.ath_hal* %38, i32 %39, i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %43 = load i32, i32* @AR_PHY_TPC_19, align 4
  %44 = load i32, i32* @AR_PHY_TPC_19_ALT_ALPHA_VOLT, align 4
  %45 = call i32 @OS_REG_READ_FIELD_ALT(%struct.ath_hal* %42, i32 %43, i32 %44)
  store i32 %45, i32* %9, align 4
  %46 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %47 = load i32, i32* @AR_PHY_TPC_18, align 4
  %48 = load i32, i32* @AR_PHY_TPC_18_ALT_THERM_CAL_VALUE, align 4
  %49 = call i32 @OS_REG_READ_FIELD_ALT(%struct.ath_hal* %46, i32 %47, i32 %48)
  store i32 %49, i32* %10, align 4
  %50 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %51 = load i32, i32* @AR_PHY_TPC_18, align 4
  %52 = load i32, i32* @AR_PHY_TPC_18_ALT_VOLT_CAL_VALUE, align 4
  %53 = call i32 @OS_REG_READ_FIELD_ALT(%struct.ath_hal* %50, i32 %51, i32 %52)
  store i32 %53, i32* %11, align 4
  %54 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %55 = load i32, i32* @AR_PHY_THERM_ADC_4, align 4
  %56 = load i32, i32* @AR_PHY_THERM_ADC_4_LATEST_THERM_VALUE, align 4
  %57 = call i32 @OS_REG_READ_FIELD_ALT(%struct.ath_hal* %54, i32 %55, i32 %56)
  store i32 %57, i32* %12, align 4
  %58 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %59 = load i32, i32* @AR_PHY_THERM_ADC_4, align 4
  %60 = load i32, i32* @AR_PHY_THERM_ADC_4_LATEST_VOLT_VALUE, align 4
  %61 = call i32 @OS_REG_READ_FIELD_ALT(%struct.ath_hal* %58, i32 %59, i32 %60)
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %5, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %33
  %65 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %66 = load i32, i32* @AR_PHY_TPC_11_B0, align 4
  %67 = load i32, i32* @AR_PHY_TPC_11_B0_OLPC_GAIN_DELTA_0, align 4
  %68 = call i32 @OS_REG_READ_FIELD_ALT(%struct.ath_hal* %65, i32 %66, i32 %67)
  store i32 %68, i32* %14, align 4
  %69 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %70 = load i32, i32* @AR_PHY_CL_TAB_0, align 4
  %71 = load i32, i32* @AR_PHY_CL_TAB_0_CL_GAIN_MOD, align 4
  %72 = call i32 @OS_REG_READ_FIELD_ALT(%struct.ath_hal* %69, i32 %70, i32 %71)
  store i32 %72, i32* %19, align 4
  br label %110

73:                                               ; preds = %33
  %74 = load i32, i32* %5, align 4
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %76, label %90

76:                                               ; preds = %73
  %77 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %78 = call i64 @AR_SREV_POSEIDON(%struct.ath_hal* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %89, label %80

80:                                               ; preds = %76
  %81 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %82 = load i32, i32* @AR_PHY_TPC_11_B1, align 4
  %83 = load i32, i32* @AR_PHY_TPC_11_B1_OLPC_GAIN_DELTA_1, align 4
  %84 = call i32 @OS_REG_READ_FIELD_ALT(%struct.ath_hal* %81, i32 %82, i32 %83)
  store i32 %84, i32* %14, align 4
  %85 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %86 = load i32, i32* @AR_PHY_CL_TAB_1, align 4
  %87 = load i32, i32* @AR_PHY_CL_TAB_1_CL_GAIN_MOD, align 4
  %88 = call i32 @OS_REG_READ_FIELD_ALT(%struct.ath_hal* %85, i32 %86, i32 %87)
  store i32 %88, i32* %19, align 4
  br label %89

89:                                               ; preds = %80, %76
  br label %109

90:                                               ; preds = %73
  %91 = load i32, i32* %5, align 4
  %92 = icmp eq i32 %91, 2
  br i1 %92, label %93, label %107

93:                                               ; preds = %90
  %94 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %95 = call i64 @AR_SREV_POSEIDON(%struct.ath_hal* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %106, label %97

97:                                               ; preds = %93
  %98 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %99 = load i32, i32* @AR_PHY_TPC_11_B2, align 4
  %100 = load i32, i32* @AR_PHY_TPC_11_B2_OLPC_GAIN_DELTA_2, align 4
  %101 = call i32 @OS_REG_READ_FIELD_ALT(%struct.ath_hal* %98, i32 %99, i32 %100)
  store i32 %101, i32* %14, align 4
  %102 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %103 = load i32, i32* @AR_PHY_CL_TAB_2, align 4
  %104 = load i32, i32* @AR_PHY_CL_TAB_2_CL_GAIN_MOD, align 4
  %105 = call i32 @OS_REG_READ_FIELD_ALT(%struct.ath_hal* %102, i32 %103, i32 %104)
  store i32 %105, i32* %19, align 4
  br label %106

106:                                              ; preds = %97, %93
  br label %108

107:                                              ; preds = %90
  br label %108

108:                                              ; preds = %107, %106
  br label %109

109:                                              ; preds = %108, %89
  br label %110

110:                                              ; preds = %109, %64
  %111 = load i32, i32* %14, align 4
  %112 = icmp slt i32 %111, 128
  br i1 %112, label %113, label %115

113:                                              ; preds = %110
  %114 = load i32, i32* %14, align 4
  store i32 %114, i32* %7, align 4
  br label %118

115:                                              ; preds = %110
  %116 = load i32, i32* %14, align 4
  %117 = sub nsw i32 %116, 256
  store i32 %117, i32* %7, align 4
  br label %118

118:                                              ; preds = %115, %113
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* %12, align 4
  %121 = load i32, i32* %10, align 4
  %122 = sub nsw i32 %120, %121
  %123 = mul nsw i32 %119, %122
  %124 = add nsw i32 %123, 128
  %125 = ashr i32 %124, 8
  store i32 %125, i32* %15, align 4
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* %13, align 4
  %128 = load i32, i32* %11, align 4
  %129 = sub nsw i32 %127, %128
  %130 = mul nsw i32 %126, %129
  %131 = add nsw i32 %130, 64
  %132 = ashr i32 %131, 7
  store i32 %132, i32* %16, align 4
  %133 = load i32, i32* %6, align 4
  %134 = load i32, i32* %7, align 4
  %135 = sub nsw i32 %133, %134
  %136 = load i32, i32* %15, align 4
  %137 = sub nsw i32 %135, %136
  %138 = load i32, i32* %16, align 4
  %139 = sub nsw i32 %137, %138
  %140 = load i32, i32* %17, align 4
  %141 = add nsw i32 %139, %140
  %142 = load i32, i32* %19, align 4
  %143 = add nsw i32 %141, %142
  store i32 %143, i32* %18, align 4
  %144 = load i32, i32* %18, align 4
  ret i32 %144
}

declare dso_local i64 @AR_SREV_POSEIDON(%struct.ath_hal*) #1

declare dso_local i32 @OS_REG_RMW_FIELD_ALT(%struct.ath_hal*, i32, i32, i32) #1

declare dso_local i32 @OS_REG_READ_FIELD_ALT(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @OS_REG_READ_FIELD(%struct.ath_hal*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
