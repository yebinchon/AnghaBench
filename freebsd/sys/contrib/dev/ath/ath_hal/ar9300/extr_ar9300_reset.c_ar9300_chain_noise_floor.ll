; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_reset.c_ar9300_chain_noise_floor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_reset.c_ar9300_chain_noise_floor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64**, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.ath_hal = type { i32 }
%struct.ieee80211_channel = type { i32 }
%struct.ath_hal_9300 = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_9__, %struct.ieee80211_channel* }

@HAL_NF_CAL_HIST_LEN_FULL = common dso_local global i32 0, align 4
@AH_NULL = common dso_local global %struct.TYPE_10__* null, align 8
@HAL_NUM_NF_READINGS = common dso_local global i32 0, align 4
@HAL_NF_CAL_HIST_LEN_SMALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar9300_chain_noise_floor(%struct.ath_hal* %0, i64* %1, %struct.ieee80211_channel* %2, i32 %3) #0 {
  %5 = alloca %struct.ath_hal*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.ieee80211_channel*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ath_hal_9300*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_10__*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %5, align 8
  store i64* %1, i64** %6, align 8
  store %struct.ieee80211_channel* %2, %struct.ieee80211_channel** %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %17 = call %struct.ath_hal_9300* @AH9300(%struct.ath_hal* %16)
  store %struct.ath_hal_9300* %17, %struct.ath_hal_9300** %9, align 8
  store i32 0, i32* %12, align 4
  %18 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %9, align 8
  %19 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %9, align 8
  %22 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = shl i32 %23, 3
  %25 = or i32 %20, %24
  store i32 %25, i32* %14, align 4
  %26 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %27 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %28 = call %struct.TYPE_10__* @ath_hal_checkchannel(%struct.ath_hal* %26, %struct.ieee80211_channel* %27)
  store %struct.TYPE_10__* %28, %struct.TYPE_10__** %15, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %30 = call i32 @HALASSERT(%struct.TYPE_10__* %29)
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %45, label %33

33:                                               ; preds = %4
  %34 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %35 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %36 = call %struct.TYPE_11__* @AH_PRIVATE(%struct.ath_hal* %35)
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  %38 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %37, align 8
  %39 = icmp eq %struct.ieee80211_channel* %34, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %33
  %41 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %42 = call %struct.TYPE_11__* @AH_PRIVATE(%struct.ath_hal* %41)
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  store %struct.TYPE_9__* %43, %struct.TYPE_9__** %13, align 8
  %44 = load i32, i32* @HAL_NF_CAL_HIST_LEN_FULL, align 4
  store i32 %44, i32* %11, align 4
  br label %60

45:                                               ; preds = %33, %4
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** @AH_NULL, align 8
  %48 = icmp eq %struct.TYPE_10__* %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %45
  %50 = load i64*, i64** %6, align 8
  %51 = load i32, i32* @HAL_NUM_NF_READINGS, align 4
  %52 = sext i32 %51 to i64
  %53 = mul i64 8, %52
  %54 = trunc i64 %53 to i32
  %55 = call i32 @OS_MEMZERO(i64* %50, i32 %54)
  br label %111

56:                                               ; preds = %45
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  store %struct.TYPE_9__* %58, %struct.TYPE_9__** %13, align 8
  %59 = load i32, i32* @HAL_NF_CAL_HIST_LEN_SMALL, align 4
  store i32 %59, i32* %11, align 4
  br label %60

60:                                               ; preds = %56, %40
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %60
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sub nsw i32 %70, 1
  br label %75

72:                                               ; preds = %60
  %73 = load i32, i32* %11, align 4
  %74 = sub nsw i32 %73, 1
  br label %75

75:                                               ; preds = %72, %66
  %76 = phi i32 [ %71, %66 ], [ %74, %72 ]
  store i32 %76, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %77

77:                                               ; preds = %108, %75
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @HAL_NUM_NF_READINGS, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %111

81:                                               ; preds = %77
  %82 = load i32, i32* %14, align 4
  %83 = load i32, i32* %10, align 4
  %84 = shl i32 1, %83
  %85 = and i32 %82, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %81
  %88 = load i64*, i64** %6, align 8
  %89 = load i32, i32* %10, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %88, i64 %90
  store i64 0, i64* %91, align 8
  br label %108

92:                                               ; preds = %81
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load i64**, i64*** %94, align 8
  %96 = load i32, i32* %12, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i64*, i64** %95, i64 %97
  %99 = load i64*, i64** %98, align 8
  %100 = load i32, i32* %10, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %99, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = load i64*, i64** %6, align 8
  %105 = load i32, i32* %10, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i64, i64* %104, i64 %106
  store i64 %103, i64* %107, align 8
  br label %108

108:                                              ; preds = %92, %87
  %109 = load i32, i32* %10, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %10, align 4
  br label %77

111:                                              ; preds = %49, %77
  ret void
}

declare dso_local %struct.ath_hal_9300* @AH9300(%struct.ath_hal*) #1

declare dso_local %struct.TYPE_10__* @ath_hal_checkchannel(%struct.ath_hal*, %struct.ieee80211_channel*) #1

declare dso_local i32 @HALASSERT(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_11__* @AH_PRIVATE(%struct.ath_hal*) #1

declare dso_local i32 @OS_MEMZERO(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
