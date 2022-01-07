; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_attach.c_ar9300_config_pci_power_save.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_attach.c_ar9300_config_pci_power_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i64 }
%struct.ath_hal_9300 = type { i32, %struct.TYPE_5__, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64 }

@AH_TRUE = common dso_local global i64 0, align 8
@AR_PCIE_PM_CTRL = common dso_local global i32 0, align 4
@AR_PCIE_PM_CTRL_ENA = common dso_local global i32 0, align 4
@AR_WA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar9300_config_pci_power_save(%struct.ath_hal* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ath_hal*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ath_hal_9300*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %11 = call %struct.ath_hal_9300* @AH9300(%struct.ath_hal* %10)
  store %struct.ath_hal_9300* %11, %struct.ath_hal_9300** %7, align 8
  %12 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %13 = call %struct.TYPE_6__* @AH_PRIVATE(%struct.ath_hal* %12)
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @AH_TRUE, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %138

19:                                               ; preds = %3
  %20 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %21 = call i64 @AR_SREV_JUPITER(%struct.ath_hal* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %19
  %24 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %25 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = and i32 %28, -16777216
  %30 = icmp eq i32 %29, 385875968
  br i1 %30, label %31, label %39

31:                                               ; preds = %23
  %32 = load i32, i32* %9, align 4
  %33 = and i32 %32, 16777215
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = or i32 %34, 654311424
  store i32 %35, i32* %9, align 4
  %36 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @OS_REG_WRITE(%struct.ath_hal* %36, i32 22284, i32 %37)
  br label %39

39:                                               ; preds = %31, %23
  br label %40

40:                                               ; preds = %39, %19
  %41 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %42 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %138

47:                                               ; preds = %40
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %82, label %50

50:                                               ; preds = %47
  %51 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %52 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %53 = load i32, i32* @AR_PCIE_PM_CTRL, align 4
  %54 = call i32 @AR_HOSTIF_REG(%struct.ath_hal* %52, i32 %53)
  %55 = load i32, i32* @AR_PCIE_PM_CTRL_ENA, align 4
  %56 = call i32 @OS_REG_SET_BIT(%struct.ath_hal* %51, i32 %54, i32 %55)
  %57 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %58 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %50
  %63 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %64 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %65 = load i32, i32* @AR_WA, align 4
  %66 = call i32 @AR_HOSTIF_REG(%struct.ath_hal* %64, i32 %65)
  %67 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %68 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @OS_REG_WRITE(%struct.ath_hal* %63, i32 %66, i32 %70)
  br label %81

72:                                               ; preds = %50
  %73 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %74 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %75 = load i32, i32* @AR_WA, align 4
  %76 = call i32 @AR_HOSTIF_REG(%struct.ath_hal* %74, i32 %75)
  %77 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %7, align 8
  %78 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @OS_REG_WRITE(%struct.ath_hal* %73, i32 %76, i32 %79)
  br label %81

81:                                               ; preds = %72, %62
  br label %82

82:                                               ; preds = %81, %47
  %83 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %84 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %138

88:                                               ; preds = %82
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %114

91:                                               ; preds = %88
  store i32 0, i32* %8, align 4
  br label %92

92:                                               ; preds = %110, %91
  %93 = load i32, i32* %8, align 4
  %94 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %7, align 8
  %95 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp slt i32 %93, %97
  br i1 %98, label %99, label %113

99:                                               ; preds = %92
  %100 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %101 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %7, align 8
  %102 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %101, i32 0, i32 2
  %103 = load i32, i32* %8, align 4
  %104 = call i32 @INI_RA(%struct.TYPE_5__* %102, i32 %103, i32 0)
  %105 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %7, align 8
  %106 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %105, i32 0, i32 2
  %107 = load i32, i32* %8, align 4
  %108 = call i32 @INI_RA(%struct.TYPE_5__* %106, i32 %107, i32 1)
  %109 = call i32 @OS_REG_WRITE(%struct.ath_hal* %100, i32 %104, i32 %108)
  br label %110

110:                                              ; preds = %99
  %111 = load i32, i32* %8, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %8, align 4
  br label %92

113:                                              ; preds = %92
  br label %137

114:                                              ; preds = %88
  store i32 0, i32* %8, align 4
  br label %115

115:                                              ; preds = %133, %114
  %116 = load i32, i32* %8, align 4
  %117 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %7, align 8
  %118 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = icmp slt i32 %116, %120
  br i1 %121, label %122, label %136

122:                                              ; preds = %115
  %123 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %124 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %7, align 8
  %125 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %124, i32 0, i32 1
  %126 = load i32, i32* %8, align 4
  %127 = call i32 @INI_RA(%struct.TYPE_5__* %125, i32 %126, i32 0)
  %128 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %7, align 8
  %129 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %128, i32 0, i32 1
  %130 = load i32, i32* %8, align 4
  %131 = call i32 @INI_RA(%struct.TYPE_5__* %129, i32 %130, i32 1)
  %132 = call i32 @OS_REG_WRITE(%struct.ath_hal* %123, i32 %127, i32 %131)
  br label %133

133:                                              ; preds = %122
  %134 = load i32, i32* %8, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %8, align 4
  br label %115

136:                                              ; preds = %115
  br label %137

137:                                              ; preds = %136, %113
  br label %138

138:                                              ; preds = %18, %46, %137, %82
  ret void
}

declare dso_local %struct.ath_hal_9300* @AH9300(%struct.ath_hal*) #1

declare dso_local %struct.TYPE_6__* @AH_PRIVATE(%struct.ath_hal*) #1

declare dso_local i64 @AR_SREV_JUPITER(%struct.ath_hal*) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @OS_REG_SET_BIT(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @AR_HOSTIF_REG(%struct.ath_hal*, i32) #1

declare dso_local i32 @INI_RA(%struct.TYPE_5__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
