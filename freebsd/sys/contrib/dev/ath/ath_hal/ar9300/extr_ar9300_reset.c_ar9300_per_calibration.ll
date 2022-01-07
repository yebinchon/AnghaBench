; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_reset.c_ar9300_per_calibration.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_reset.c_ar9300_per_calibration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i32, i32 (%struct.ath_hal*, i32)*, i32 (%struct.ath_hal*, i32)* }
%struct.ath_hal_9300 = type { i64 }

@AH_FALSE = common dso_local global i32 0, align 4
@CAL_RUNNING = common dso_local global i64 0, align 8
@AR_PHY_TIMING4 = common dso_local global i32 0, align 4
@AR_PHY_TIMING4_DO_CAL = common dso_local global i32 0, align 4
@AR9300_MAX_CHAINS = common dso_local global i32 0, align 4
@CAL_DONE = common dso_local global i64 0, align 8
@AH_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hal*, %struct.TYPE_9__*, i32, %struct.TYPE_10__*, i32*)* @ar9300_per_calibration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9300_per_calibration(%struct.ath_hal* %0, %struct.TYPE_9__* %1, i32 %2, %struct.TYPE_10__* %3, i32* %4) #0 {
  %6 = alloca %struct.ath_hal*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.ath_hal_9300*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %6, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %9, align 8
  store i32* %4, i32** %10, align 8
  %14 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %15 = call %struct.ath_hal_9300* @AH9300(%struct.ath_hal* %14)
  store %struct.ath_hal_9300* %15, %struct.ath_hal_9300** %11, align 8
  %16 = load i32, i32* @AH_FALSE, align 4
  %17 = load i32*, i32** %10, align 8
  store i32 %16, i32* %17, align 4
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @CAL_RUNNING, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %99

23:                                               ; preds = %5
  %24 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %25 = load i32, i32* @AR_PHY_TIMING4, align 4
  %26 = call i32 @OS_REG_READ(%struct.ath_hal* %24, i32 %25)
  %27 = load i32, i32* @AR_PHY_TIMING4_DO_CAL, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %98, label %30

30:                                               ; preds = %23
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %31

31:                                               ; preds = %45, %30
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* @AR9300_MAX_CHAINS, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %31
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %12, align 4
  %38 = shl i32 1, %37
  %39 = and i32 %36, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i32, i32* %13, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %13, align 4
  br label %44

44:                                               ; preds = %41, %35
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %12, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %12, align 4
  br label %31

48:                                               ; preds = %31
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 3
  %53 = load i32 (%struct.ath_hal*, i32)*, i32 (%struct.ath_hal*, i32)** %52, align 8
  %54 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %55 = load i32, i32* %13, align 4
  %56 = call i32 %53(%struct.ath_hal* %54, i32 %55)
  %57 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %11, align 8
  %58 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %58, align 8
  %61 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %11, align 8
  %62 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp sge i64 %63, %68
  br i1 %69, label %70, label %93

70:                                               ; preds = %48
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 2
  %75 = load i32 (%struct.ath_hal*, i32)*, i32 (%struct.ath_hal*, i32)** %74, align 8
  %76 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %77 = load i32, i32* %13, align 4
  %78 = call i32 %75(%struct.ath_hal* %76, i32 %77)
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 4
  %88 = load i64, i64* @CAL_DONE, align 8
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  %91 = load i32, i32* @AH_TRUE, align 4
  %92 = load i32*, i32** %10, align 8
  store i32 %91, i32* %92, align 4
  br label %97

93:                                               ; preds = %48
  %94 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %96 = call i32 @ar9300_setup_calibration(%struct.ath_hal* %94, %struct.TYPE_10__* %95)
  br label %97

97:                                               ; preds = %93, %70
  br label %98

98:                                               ; preds = %97, %23
  br label %115

99:                                               ; preds = %5
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = and i32 %102, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %99
  %111 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %113 = call i32 @ar9300_reset_calibration(%struct.ath_hal* %111, %struct.TYPE_10__* %112)
  br label %114

114:                                              ; preds = %110, %99
  br label %115

115:                                              ; preds = %114, %98
  ret void
}

declare dso_local %struct.ath_hal_9300* @AH9300(%struct.ath_hal*) #1

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i32) #1

declare dso_local i32 @ar9300_setup_calibration(%struct.ath_hal*, %struct.TYPE_10__*) #1

declare dso_local i32 @ar9300_reset_calibration(%struct.ath_hal*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
