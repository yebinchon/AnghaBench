; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_eeprom.c_ar9300_attenuation_apply.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_eeprom.c_ar9300_attenuation_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }
%struct.TYPE_4__ = type { i32, i32 }

@AR_PHY_EXT_ATTEN_CTL_0 = common dso_local global i32 0, align 4
@AR_PHY_EXT_ATTEN_CTL_1 = common dso_local global i32 0, align 4
@AR_PHY_EXT_ATTEN_CTL_2 = common dso_local global i32 0, align 4
@AR_PHY_EXT_ATTEN_CTL_XATTEN1_DB = common dso_local global i32 0, align 4
@AR_PHY_EXT_ATTEN_CTL_XATTEN1_MARGIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar9300_attenuation_apply(%struct.ath_hal* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [3 x i32], align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %9 = load i32, i32* @AR_PHY_EXT_ATTEN_CTL_0, align 4
  store i32 %9, i32* %8, align 4
  %10 = getelementptr inbounds i32, i32* %8, i64 1
  %11 = load i32, i32* @AR_PHY_EXT_ATTEN_CTL_1, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds i32, i32* %10, i64 1
  %13 = load i32, i32* @AR_PHY_EXT_ATTEN_CTL_2, align 4
  store i32 %13, i32* %12, align 4
  %14 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %15 = call i64 @AR_SREV_JUPITER(%struct.ath_hal* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %42

17:                                               ; preds = %2
  %18 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %19 = call %struct.TYPE_4__* @AH9300(%struct.ath_hal* %18)
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %23, label %42

23:                                               ; preds = %17
  %24 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @ar9300_attenuation_chain_get(%struct.ath_hal* %24, i32 1, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %28 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @AR_PHY_EXT_ATTEN_CTL_XATTEN1_DB, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %27, i32 %29, i32 %30, i32 %31)
  %33 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @ar9300_attenuation_margin_chain_get(%struct.ath_hal* %33, i32 1, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %37 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @AR_PHY_EXT_ATTEN_CTL_XATTEN1_MARGIN, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %36, i32 %38, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %23, %17, %2
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %108, %42
  %44 = load i32, i32* %5, align 4
  %45 = icmp slt i32 %44, 3
  br i1 %45, label %46, label %111

46:                                               ; preds = %43
  %47 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %48 = call %struct.TYPE_4__* @AH9300(%struct.ath_hal* %47)
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %5, align 4
  %52 = shl i32 1, %51
  %53 = and i32 %50, %52
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  br label %108

56:                                               ; preds = %46
  %57 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @ar9300_attenuation_chain_get(%struct.ath_hal* %57, i32 %58, i32 %59)
  store i32 %60, i32* %6, align 4
  %61 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @AR_PHY_EXT_ATTEN_CTL_XATTEN1_DB, align 4
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %61, i32 %65, i32 %66, i32 %67)
  %69 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %70 = call i64 @AR_SREV_POSEIDON(%struct.ath_hal* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %56
  %73 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %74 = call i64 @ar9300_rx_gain_index_get(%struct.ath_hal* %73)
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %72
  %77 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %78 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  store i32 5, i32* %6, align 4
  br label %87

83:                                               ; preds = %76, %72, %56
  %84 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @ar9300_attenuation_margin_chain_get(%struct.ath_hal* %84, i32 0, i32 %85)
  store i32 %86, i32* %6, align 4
  br label %87

87:                                               ; preds = %83, %82
  %88 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %89 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %87
  %94 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %95 = load i32, i32* @AR_PHY_EXT_ATTEN_CTL_0, align 4
  %96 = load i32, i32* @AR_PHY_EXT_ATTEN_CTL_XATTEN1_MARGIN, align 4
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %94, i32 %95, i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %93, %87
  %100 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %101 = load i32, i32* %5, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @AR_PHY_EXT_ATTEN_CTL_XATTEN1_MARGIN, align 4
  %106 = load i32, i32* %6, align 4
  %107 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %100, i32 %104, i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %99, %55
  %109 = load i32, i32* %5, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %5, align 4
  br label %43

111:                                              ; preds = %43
  ret i32 0
}

declare dso_local i64 @AR_SREV_JUPITER(%struct.ath_hal*) #1

declare dso_local %struct.TYPE_4__* @AH9300(%struct.ath_hal*) #1

declare dso_local i32 @ar9300_attenuation_chain_get(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @OS_REG_RMW_FIELD(%struct.ath_hal*, i32, i32, i32) #1

declare dso_local i32 @ar9300_attenuation_margin_chain_get(%struct.ath_hal*, i32, i32) #1

declare dso_local i64 @AR_SREV_POSEIDON(%struct.ath_hal*) #1

declare dso_local i64 @ar9300_rx_gain_index_get(%struct.ath_hal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
