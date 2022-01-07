; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_eeprom.c_ar9300_eeprom_set_tx_gain_cap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_eeprom.c_ar9300_eeprom_set_tx_gain_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.ath_hal_9300 = type { %struct.TYPE_8__ }

@AH_FALSE = common dso_local global i32 0, align 4
@AH_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar9300_eeprom_set_tx_gain_cap(%struct.ath_hal* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath_hal*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca %struct.ath_hal_9300*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %13 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %14 = call %struct.ath_hal_9300* @AH9300(%struct.ath_hal* %13)
  store %struct.ath_hal_9300* %14, %struct.ath_hal_9300** %12, align 8
  %15 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %12, align 8
  %16 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %15, i32 0, i32 0
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** %11, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @AH_FALSE, align 4
  store i32 %23, i32* %3, align 4
  br label %130

24:                                               ; preds = %2
  %25 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %26 = call i32 @ar9300_eeprom_get_tx_gain_table_number_max(%struct.ath_hal* %25)
  store i32 %26, i32* %10, align 4
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %125, %24
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 2
  br i1 %29, label %30, label %128

30:                                               ; preds = %27
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = icmp sgt i32 %35, -100
  br i1 %36, label %37, label %124

37:                                               ; preds = %30
  %38 = load i32, i32* %6, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load i32*, i32** %5, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp sgt i32 %43, -100
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %125

46:                                               ; preds = %40
  br label %47

47:                                               ; preds = %46, %37
  store i32 1, i32* %7, align 4
  br label %48

48:                                               ; preds = %74, %47
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp sle i32 %49, %50
  br i1 %51, label %52, label %77

52:                                               ; preds = %48
  %53 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %54 = icmp ne %struct.ath_hal* %53, null
  br i1 %54, label %55, label %73

55:                                               ; preds = %52
  %56 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %57 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %55
  %61 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @ar9300_eeprom_get_pcdac_tx_gain_table_i(%struct.ath_hal* %61, i32 %62, i32* %9)
  %64 = load i32, i32* %9, align 4
  %65 = load i32*, i32** %5, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = icmp sge i32 %64, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %60
  br label %77

72:                                               ; preds = %60
  br label %73

73:                                               ; preds = %72, %55, %52
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %7, align 4
  br label %48

77:                                               ; preds = %71, %48
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, 1
  %80 = load i32, i32* %10, align 4
  %81 = icmp sle i32 %79, %80
  br i1 %81, label %82, label %109

82:                                               ; preds = %77
  %83 = load i32, i32* %9, align 4
  %84 = load i32*, i32** %5, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %83, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %82
  %91 = load i32, i32* %7, align 4
  store i32 %91, i32* %8, align 4
  br label %95

92:                                               ; preds = %82
  %93 = load i32, i32* %7, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %8, align 4
  br label %95

95:                                               ; preds = %92, %90
  %96 = load i32, i32* %6, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %95
  %99 = load i32, i32* %8, align 4
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  store i32 %99, i32* %102, align 4
  br label %108

103:                                              ; preds = %95
  %104 = load i32, i32* %8, align 4
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  store i32 %104, i32* %107, align 8
  br label %108

108:                                              ; preds = %103, %98
  br label %123

109:                                              ; preds = %77
  %110 = load i32, i32* %6, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %109
  %113 = load i32, i32* %7, align 4
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  store i32 %113, i32* %116, align 4
  br label %122

117:                                              ; preds = %109
  %118 = load i32, i32* %7, align 4
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  store i32 %118, i32* %121, align 8
  br label %122

122:                                              ; preds = %117, %112
  br label %123

123:                                              ; preds = %122, %108
  br label %124

124:                                              ; preds = %123, %30
  br label %125

125:                                              ; preds = %124, %45
  %126 = load i32, i32* %6, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %6, align 4
  br label %27

128:                                              ; preds = %27
  %129 = load i32, i32* @AH_TRUE, align 4
  store i32 %129, i32* %3, align 4
  br label %130

130:                                              ; preds = %128, %22
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local %struct.ath_hal_9300* @AH9300(%struct.ath_hal*) #1

declare dso_local i32 @ar9300_eeprom_get_tx_gain_table_number_max(%struct.ath_hal*) #1

declare dso_local i32 @ar9300_eeprom_get_pcdac_tx_gain_table_i(%struct.ath_hal*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
