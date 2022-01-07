; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_eeprom.c_ar9300_noise_floor_cal_or_power_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_eeprom.c_ar9300_noise_floor_cal_or_power_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_5__**, i32*, %struct.TYPE_5__**, i32* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }

@OSPREY_NUM_5G_CAL_PIERS = common dso_local global i32 0, align 4
@OSPREY_NUM_2G_CAL_PIERS = common dso_local global i32 0, align 4
@OSPREY_MAX_CHAINS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar9300_noise_floor_cal_or_power_get(%struct.ath_hal* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath_hal*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_4__*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_5__*, align 8
  %21 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i32 1, i32* %10, align 4
  %22 = load i32, i32* @OSPREY_NUM_5G_CAL_PIERS, align 4
  %23 = load i32, i32* @OSPREY_NUM_2G_CAL_PIERS, align 4
  %24 = add nsw i32 %22, %23
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %11, align 8
  %27 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %12, align 8
  %28 = load i32, i32* @OSPREY_NUM_5G_CAL_PIERS, align 4
  %29 = load i32, i32* @OSPREY_NUM_2G_CAL_PIERS, align 4
  %30 = add nsw i32 %28, %29
  %31 = zext i32 %30 to i64
  %32 = alloca i32, i64 %31, align 16
  store i64 %31, i64* %13, align 8
  %33 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %34 = call %struct.TYPE_6__* @AH9300(%struct.ath_hal* %33)
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  store %struct.TYPE_4__* %35, %struct.TYPE_4__** %18, align 8
  %36 = load i32, i32* %8, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @OSPREY_MAX_CHAINS, align 4
  %41 = icmp sge i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38, %4
  store i32 1, i32* %5, align 4
  store i32 1, i32* %21, align 4
  br label %131

43:                                               ; preds = %38
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %44, 4000
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %15, align 4
  %47 = load i32, i32* %15, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %43
  %50 = load i32, i32* @OSPREY_NUM_2G_CAL_PIERS, align 4
  store i32 %50, i32* %17, align 4
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 3
  %53 = load i32*, i32** %52, align 8
  store i32* %53, i32** %19, align 8
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %56, i64 %58
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  store %struct.TYPE_5__* %60, %struct.TYPE_5__** %20, align 8
  br label %73

61:                                               ; preds = %43
  %62 = load i32, i32* @OSPREY_NUM_5G_CAL_PIERS, align 4
  store i32 %62, i32* %17, align 4
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  store i32* %65, i32** %19, align 8
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %68, i64 %70
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  store %struct.TYPE_5__* %72, %struct.TYPE_5__** %20, align 8
  br label %73

73:                                               ; preds = %61, %49
  store i32 0, i32* %14, align 4
  store i32 0, i32* %16, align 4
  br label %74

74:                                               ; preds = %119, %73
  %75 = load i32, i32* %16, align 4
  %76 = load i32, i32* %17, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %122

78:                                               ; preds = %74
  %79 = load i32*, i32** %19, align 8
  %80 = load i32, i32* %16, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %15, align 4
  %85 = call i32 @FBIN2FREQ(i32 %83, i32 %84)
  %86 = load i32, i32* %14, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %27, i64 %87
  store i32 %85, i32* %88, align 4
  %89 = load i64, i64* %9, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %78
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %93 = load i32, i32* %16, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  br label %105

98:                                               ; preds = %78
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %100 = load i32, i32* %16, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  br label %105

105:                                              ; preds = %98, %91
  %106 = phi i32 [ %97, %91 ], [ %104, %98 ]
  %107 = load i32, i32* %14, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %32, i64 %108
  store i32 %106, i32* %109, align 4
  %110 = load i32, i32* %14, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %32, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %105
  %116 = load i32, i32* %14, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %14, align 4
  br label %118

118:                                              ; preds = %115, %105
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %16, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %16, align 4
  br label %74

122:                                              ; preds = %74
  %123 = load i32, i32* %14, align 4
  %124 = icmp sgt i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %122
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* %14, align 4
  %128 = call i32 @interpolate(i32 %126, i32* %27, i32* %32, i32 %127)
  store i32 %128, i32* %10, align 4
  br label %129

129:                                              ; preds = %125, %122
  %130 = load i32, i32* %10, align 4
  store i32 %130, i32* %5, align 4
  store i32 1, i32* %21, align 4
  br label %131

131:                                              ; preds = %129, %42
  %132 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %132)
  %133 = load i32, i32* %5, align 4
  ret i32 %133
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_6__* @AH9300(%struct.ath_hal*) #2

declare dso_local i32 @FBIN2FREQ(i32, i32) #2

declare dso_local i32 @interpolate(i32, i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
