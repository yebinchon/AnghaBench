; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_attach.c_ar9300_set_immunity.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_attach.c_ar9300_set_immunity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ath_hal_9300 = type { i32*, i64 }

@AR_PHY_SFCORR_LOW = common dso_local global i32 0, align 4
@AR_PHY_SFCORR_LOW_M1_THRESH_LOW = common dso_local global i32 0, align 4
@AR_PHY_SFCORR_LOW_M2_THRESH_LOW = common dso_local global i32 0, align 4
@AR_PHY_SFCORR = common dso_local global i32 0, align 4
@AR_PHY_SFCORR_M1_THRESH = common dso_local global i32 0, align 4
@AR_PHY_SFCORR_M2_THRESH = common dso_local global i32 0, align 4
@AR_PHY_SFCORR_M2COUNT_THR = common dso_local global i32 0, align 4
@AR_PHY_SFCORR_LOW_M2COUNT_THR_LOW = common dso_local global i32 0, align 4
@AR_PHY_SFCORR_EXT = common dso_local global i32 0, align 4
@AR_PHY_SFCORR_EXT_M1_THRESH_LOW = common dso_local global i32 0, align 4
@AR_PHY_SFCORR_EXT_M2_THRESH_LOW = common dso_local global i32 0, align 4
@AR_PHY_SFCORR_EXT_M1_THRESH = common dso_local global i32 0, align 4
@AR_PHY_SFCORR_EXT_M2_THRESH = common dso_local global i32 0, align 4
@AR_PHY_SFCORR_LOW_USE_SELF_CORR_LOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar9300_set_immunity(%struct.ath_hal* %0, i64 %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ath_hal_9300*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store i64 %1, i64* %4, align 8
  %12 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %13 = call %struct.ath_hal_9300* @AH9300(%struct.ath_hal* %12)
  store %struct.ath_hal_9300* %13, %struct.ath_hal_9300** %5, align 8
  %14 = load i64, i64* %4, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %23

17:                                               ; preds = %2
  %18 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %5, align 8
  %19 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  br label %23

23:                                               ; preds = %17, %16
  %24 = phi i32 [ 127, %16 ], [ %22, %17 ]
  store i32 %24, i32* %6, align 4
  %25 = load i64, i64* %4, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %34

28:                                               ; preds = %23
  %29 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %5, align 8
  %30 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  br label %34

34:                                               ; preds = %28, %27
  %35 = phi i32 [ 127, %27 ], [ %33, %28 ]
  store i32 %35, i32* %7, align 4
  %36 = load i64, i64* %4, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %45

39:                                               ; preds = %34
  %40 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %5, align 8
  %41 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 2
  %44 = load i32, i32* %43, align 4
  br label %45

45:                                               ; preds = %39, %38
  %46 = phi i32 [ 127, %38 ], [ %44, %39 ]
  store i32 %46, i32* %8, align 4
  %47 = load i64, i64* %4, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  br label %56

50:                                               ; preds = %45
  %51 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %5, align 8
  %52 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 3
  %55 = load i32, i32* %54, align 4
  br label %56

56:                                               ; preds = %50, %49
  %57 = phi i32 [ 127, %49 ], [ %55, %50 ]
  store i32 %57, i32* %9, align 4
  %58 = load i64, i64* %4, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  br label %67

61:                                               ; preds = %56
  %62 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %5, align 8
  %63 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 4
  %66 = load i32, i32* %65, align 4
  br label %67

67:                                               ; preds = %61, %60
  %68 = phi i32 [ 31, %60 ], [ %66, %61 ]
  store i32 %68, i32* %10, align 4
  %69 = load i64, i64* %4, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  br label %78

72:                                               ; preds = %67
  %73 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %5, align 8
  %74 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 5
  %77 = load i32, i32* %76, align 4
  br label %78

78:                                               ; preds = %72, %71
  %79 = phi i32 [ 63, %71 ], [ %77, %72 ]
  store i32 %79, i32* %11, align 4
  %80 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %5, align 8
  %81 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %4, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %78
  br label %152

86:                                               ; preds = %78
  %87 = load i64, i64* %4, align 8
  %88 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %5, align 8
  %89 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %88, i32 0, i32 1
  store i64 %87, i64* %89, align 8
  %90 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %91 = load i32, i32* @AR_PHY_SFCORR_LOW, align 4
  %92 = load i32, i32* @AR_PHY_SFCORR_LOW_M1_THRESH_LOW, align 4
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %90, i32 %91, i32 %92, i32 %93)
  %95 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %96 = load i32, i32* @AR_PHY_SFCORR_LOW, align 4
  %97 = load i32, i32* @AR_PHY_SFCORR_LOW_M2_THRESH_LOW, align 4
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %95, i32 %96, i32 %97, i32 %98)
  %100 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %101 = load i32, i32* @AR_PHY_SFCORR, align 4
  %102 = load i32, i32* @AR_PHY_SFCORR_M1_THRESH, align 4
  %103 = load i32, i32* %8, align 4
  %104 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %100, i32 %101, i32 %102, i32 %103)
  %105 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %106 = load i32, i32* @AR_PHY_SFCORR, align 4
  %107 = load i32, i32* @AR_PHY_SFCORR_M2_THRESH, align 4
  %108 = load i32, i32* %9, align 4
  %109 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %105, i32 %106, i32 %107, i32 %108)
  %110 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %111 = load i32, i32* @AR_PHY_SFCORR, align 4
  %112 = load i32, i32* @AR_PHY_SFCORR_M2COUNT_THR, align 4
  %113 = load i32, i32* %10, align 4
  %114 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %110, i32 %111, i32 %112, i32 %113)
  %115 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %116 = load i32, i32* @AR_PHY_SFCORR_LOW, align 4
  %117 = load i32, i32* @AR_PHY_SFCORR_LOW_M2COUNT_THR_LOW, align 4
  %118 = load i32, i32* %11, align 4
  %119 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %115, i32 %116, i32 %117, i32 %118)
  %120 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %121 = load i32, i32* @AR_PHY_SFCORR_EXT, align 4
  %122 = load i32, i32* @AR_PHY_SFCORR_EXT_M1_THRESH_LOW, align 4
  %123 = load i32, i32* %6, align 4
  %124 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %120, i32 %121, i32 %122, i32 %123)
  %125 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %126 = load i32, i32* @AR_PHY_SFCORR_EXT, align 4
  %127 = load i32, i32* @AR_PHY_SFCORR_EXT_M2_THRESH_LOW, align 4
  %128 = load i32, i32* %7, align 4
  %129 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %125, i32 %126, i32 %127, i32 %128)
  %130 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %131 = load i32, i32* @AR_PHY_SFCORR_EXT, align 4
  %132 = load i32, i32* @AR_PHY_SFCORR_EXT_M1_THRESH, align 4
  %133 = load i32, i32* %8, align 4
  %134 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %130, i32 %131, i32 %132, i32 %133)
  %135 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %136 = load i32, i32* @AR_PHY_SFCORR_EXT, align 4
  %137 = load i32, i32* @AR_PHY_SFCORR_EXT_M2_THRESH, align 4
  %138 = load i32, i32* %9, align 4
  %139 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %135, i32 %136, i32 %137, i32 %138)
  %140 = load i64, i64* %4, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %147, label %142

142:                                              ; preds = %86
  %143 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %144 = load i32, i32* @AR_PHY_SFCORR_LOW, align 4
  %145 = load i32, i32* @AR_PHY_SFCORR_LOW_USE_SELF_CORR_LOW, align 4
  %146 = call i32 @OS_REG_SET_BIT(%struct.ath_hal* %143, i32 %144, i32 %145)
  br label %152

147:                                              ; preds = %86
  %148 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %149 = load i32, i32* @AR_PHY_SFCORR_LOW, align 4
  %150 = load i32, i32* @AR_PHY_SFCORR_LOW_USE_SELF_CORR_LOW, align 4
  %151 = call i32 @OS_REG_CLR_BIT(%struct.ath_hal* %148, i32 %149, i32 %150)
  br label %152

152:                                              ; preds = %85, %147, %142
  ret void
}

declare dso_local %struct.ath_hal_9300* @AH9300(%struct.ath_hal*) #1

declare dso_local i32 @OS_REG_RMW_FIELD(%struct.ath_hal*, i32, i32, i32) #1

declare dso_local i32 @OS_REG_SET_BIT(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @OS_REG_CLR_BIT(%struct.ath_hal*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
