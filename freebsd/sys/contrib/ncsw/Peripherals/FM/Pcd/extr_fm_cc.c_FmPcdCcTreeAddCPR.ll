; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_cc.c_FmPcdCcTreeAddCPR.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_cc.c_FmPcdCcTreeAddCPR.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i64, i32, %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i64, i32 }

@FM_PCD_MAX_NUM_OF_CC_GROUPS = common dso_local global i32 0, align 4
@MAJOR = common dso_local global i32 0, align 4
@E_INVALID_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"need one free entries for CPR\00", align 1
@e_FM_PCD_DONE = common dso_local global i32 0, align 4
@E_BUSY = common dso_local global i32 0, align 4
@E_OK = common dso_local global i64 0, align 8
@E_INVALID_STATE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [52 x i8] c"This tree was previously updated with different CPR\00", align 1
@NO_MSG = common dso_local global i8* null, align 8
@FM_PCD_CC_AD_ENTRY_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FmPcdCcTreeAddCPR(i64 %0, i64 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca %struct.TYPE_12__, align 8
  %14 = alloca %struct.TYPE_12__, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load i64, i64* %8, align 8
  %19 = inttoptr i64 %18 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %19, %struct.TYPE_13__** %12, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %21 = call i32 @ASSERT_COND(%struct.TYPE_13__* %20)
  %22 = call i32 @memset(%struct.TYPE_12__* %13, i32 0, i32 16)
  %23 = call i32 @memset(%struct.TYPE_12__* %14, i32 0, i32 16)
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @UINT_TO_PTR(i32 %26)
  store i64 %27, i64* %15, align 8
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @FM_PCD_MAX_NUM_OF_CC_GROUPS, align 4
  %32 = sub nsw i32 %31, 1
  %33 = icmp sgt i32 %30, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %5
  %35 = load i32, i32* @MAJOR, align 4
  %36 = load i64, i64* @E_INVALID_VALUE, align 8
  %37 = call i32 @RETURN_ERROR(i32 %35, i64 %36, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %34, %5
  %39 = load i32, i32* @e_FM_PCD_DONE, align 4
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  store i32 %39, i32* %40, align 8
  %41 = load i64, i64* %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  store i64 %41, i64* %42, align 8
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %44 = call i64 @CcRootTryLock(%struct.TYPE_13__* %43)
  store i64 %44, i64* %17, align 8
  %45 = load i64, i64* %17, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %38
  %48 = load i32, i32* @E_BUSY, align 4
  %49 = call i64 @ERROR_CODE(i32 %48)
  store i64 %49, i64* %6, align 8
  br label %129

50:                                               ; preds = %38
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %10, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %58 = call i32 @CcRootReleaseLock(%struct.TYPE_13__* %57)
  %59 = load i64, i64* @E_OK, align 8
  store i64 %59, i64* %6, align 8
  br label %129

60:                                               ; preds = %50
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %60
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* %10, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %65
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %73 = call i32 @CcRootReleaseLock(%struct.TYPE_13__* %72)
  %74 = load i32, i32* @MAJOR, align 4
  %75 = load i64, i64* @E_INVALID_STATE, align 8
  %76 = call i32 @RETURN_ERROR(i32 %74, i64 %75, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  br label %77

77:                                               ; preds = %71, %65, %60
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 8
  %82 = sext i32 %80 to i64
  store i64 %82, i64* %16, align 8
  %83 = load i32, i32* @FM_PCD_MAX_NUM_OF_CC_GROUPS, align 4
  %84 = sub nsw i32 %83, 1
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 3
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %86, align 8
  %88 = load i64, i64* %16, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  store i32 %84, i32* %90, align 4
  %91 = load i32, i32* %11, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %114

93:                                               ; preds = %77
  %94 = load i64, i64* %7, align 8
  %95 = load i64, i64* %9, align 8
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %97 = load i64, i64* %10, align 8
  %98 = load i64, i64* %16, align 8
  %99 = call i64 @FmPcdManipBuildCapwapReassmScheme(i64 %94, i64 %95, %struct.TYPE_13__* %96, i64 %97, i64 %98)
  store i64 %99, i64* %17, align 8
  %100 = load i64, i64* %17, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %113

102:                                              ; preds = %93
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = add nsw i32 %105, -1
  store i32 %106, i32* %104, align 8
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %108 = call i32 @CcRootReleaseLock(%struct.TYPE_13__* %107)
  %109 = load i32, i32* @MAJOR, align 4
  %110 = load i64, i64* %17, align 8
  %111 = load i8*, i8** @NO_MSG, align 8
  %112 = call i32 @RETURN_ERROR(i32 %109, i64 %110, i8* %111)
  br label %113

113:                                              ; preds = %102, %93
  br label %114

114:                                              ; preds = %113, %77
  %115 = load i64, i64* %15, align 8
  %116 = load i32, i32* @FM_PCD_MAX_NUM_OF_CC_GROUPS, align 4
  %117 = sub nsw i32 %116, 1
  %118 = load i32, i32* @FM_PCD_CC_AD_ENTRY_SIZE, align 4
  %119 = mul nsw i32 %117, %118
  %120 = call i32 @PTR_MOVE(i64 %115, i32 %119)
  %121 = load i64, i64* %7, align 8
  %122 = call i32 @NextStepAd(i32 %120, i32* null, %struct.TYPE_12__* %13, i64 %121)
  %123 = load i64, i64* %10, align 8
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 1
  store i64 %123, i64* %125, align 8
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %127 = call i32 @CcRootReleaseLock(%struct.TYPE_13__* %126)
  %128 = load i64, i64* @E_OK, align 8
  store i64 %128, i64* %6, align 8
  br label %129

129:                                              ; preds = %114, %56, %47
  %130 = load i64, i64* %6, align 8
  ret i64 %130
}

declare dso_local i32 @ASSERT_COND(%struct.TYPE_13__*) #1

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i64 @UINT_TO_PTR(i32) #1

declare dso_local i32 @RETURN_ERROR(i32, i64, i8*) #1

declare dso_local i64 @CcRootTryLock(%struct.TYPE_13__*) #1

declare dso_local i64 @ERROR_CODE(i32) #1

declare dso_local i32 @CcRootReleaseLock(%struct.TYPE_13__*) #1

declare dso_local i64 @FmPcdManipBuildCapwapReassmScheme(i64, i64, %struct.TYPE_13__*, i64, i64) #1

declare dso_local i32 @NextStepAd(i32, i32*, %struct.TYPE_12__*, i64) #1

declare dso_local i32 @PTR_MOVE(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
