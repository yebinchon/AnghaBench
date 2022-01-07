; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_cc.c_FmPcdCcModifyNextEngineParamTree.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_cc.c_FmPcdCcModifyNextEngineParamTree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i64, i32 }
%struct.TYPE_14__ = type { i32 }

@E_OK = common dso_local global i64 0, align 8
@E_INVALID_HANDLE = common dso_local global i64 0, align 8
@E_INVALID_VALUE = common dso_local global i64 0, align 8
@MAJOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"grpId you asked > numOfGroup of relevant tree\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"index > numOfEntriesInGroup\00", align 1
@e_MODIFY_STATE_CHANGE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@E_INVALID_STATE = common dso_local global i64 0, align 8
@NO_MSG = common dso_local global i8* null, align 8
@E_BUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FmPcdCcModifyNextEngineParamTree(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca %struct.TYPE_16__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_14__*, align 8
  %18 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %21, %struct.TYPE_15__** %12, align 8
  %22 = load i64, i64* @E_OK, align 8
  store i64 %22, i64* %18, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i64, i64* @E_INVALID_HANDLE, align 8
  %25 = call i32 @SANITY_CHECK_RETURN_ERROR(i32 %23, i64 %24)
  %26 = load i32, i32* %8, align 4
  %27 = load i64, i64* @E_INVALID_HANDLE, align 8
  %28 = call i32 @SANITY_CHECK_RETURN_ERROR(i32 %26, i64 %27)
  %29 = load i32, i32* %9, align 4
  %30 = icmp sle i32 %29, 7
  %31 = zext i1 %30 to i32
  %32 = load i64, i64* @E_INVALID_VALUE, align 8
  %33 = call i32 @SANITY_CHECK_RETURN_ERROR(i32 %31, i64 %32)
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp sge i32 %34, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %5
  %40 = load i32, i32* @MAJOR, align 4
  %41 = load i64, i64* @E_INVALID_HANDLE, align 8
  %42 = call i32 @RETURN_ERROR(i32 %40, i64 %41, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %43

43:                                               ; preds = %39, %5
  %44 = load i32, i32* %10, align 4
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp sge i32 %44, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %43
  %55 = load i32, i32* @MAJOR, align 4
  %56 = load i64, i64* @E_INVALID_HANDLE, align 8
  %57 = call i32 @RETURN_ERROR(i32 %55, i64 %56, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %58

58:                                               ; preds = %54, %43
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = inttoptr i64 %60 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %61, %struct.TYPE_16__** %13, align 8
  %62 = call i32 @INIT_LIST(i32* %14)
  %63 = call i32 @INIT_LIST(i32* %15)
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %71, %72
  %74 = sext i32 %73 to i64
  store i64 %74, i64* %16, align 8
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %76 = load i64, i64* %16, align 8
  %77 = load i32, i32* @e_MODIFY_STATE_CHANGE, align 4
  %78 = load i32, i32* @FALSE, align 4
  %79 = load i32, i32* @FALSE, align 4
  %80 = load i32, i32* @TRUE, align 4
  %81 = call %struct.TYPE_14__* @ModifyNodeCommonPart(%struct.TYPE_15__* %75, i64 %76, i32 %77, i32 %78, i32 %79, i32 %80)
  store %struct.TYPE_14__* %81, %struct.TYPE_14__** %17, align 8
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %83 = icmp ne %struct.TYPE_14__* %82, null
  br i1 %83, label %89, label %84

84:                                               ; preds = %58
  %85 = load i32, i32* @MAJOR, align 4
  %86 = load i64, i64* @E_INVALID_STATE, align 8
  %87 = load i8*, i8** @NO_MSG, align 8
  %88 = call i32 @RETURN_ERROR(i32 %85, i64 %86, i8* %87)
  br label %89

89:                                               ; preds = %84, %58
  %90 = load i32, i32* @TRUE, align 4
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 4
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %110

97:                                               ; preds = %89
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 0
  %103 = call i32 @TRY_LOCK(i32 %100, i32* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %110, label %105

105:                                              ; preds = %97
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %107 = call i32 @XX_Free(%struct.TYPE_14__* %106)
  %108 = load i32, i32* @E_BUSY, align 4
  %109 = call i64 @ERROR_CODE(i32 %108)
  store i64 %109, i64* %6, align 8
  br label %142

110:                                              ; preds = %97, %89
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %113 = load i64, i64* %16, align 8
  %114 = load i32*, i32** %11, align 8
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %116 = call i64 @BuildNewNodeModifyNextEngine(%struct.TYPE_16__* %111, %struct.TYPE_15__* %112, i64 %113, i32* %114, i32* %14, i32* %15, %struct.TYPE_14__* %115)
  store i64 %116, i64* %18, align 8
  %117 = load i64, i64* %18, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %110
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %121 = call i32 @XX_Free(%struct.TYPE_14__* %120)
  %122 = load i32, i32* @MAJOR, align 4
  %123 = load i64, i64* %18, align 8
  %124 = load i8*, i8** @NO_MSG, align 8
  %125 = call i32 @RETURN_ERROR(i32 %122, i64 %123, i8* %124)
  br label %126

126:                                              ; preds = %119, %110
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %129 = load i32, i32* @FALSE, align 4
  %130 = call i64 @DoDynamicChange(%struct.TYPE_16__* %127, i32* %14, i32* %15, %struct.TYPE_14__* %128, i32 %129)
  store i64 %130, i64* %18, align 8
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %126
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @RELEASE_LOCK(i32 %138)
  br label %140

140:                                              ; preds = %135, %126
  %141 = load i64, i64* %18, align 8
  store i64 %141, i64* %6, align 8
  br label %142

142:                                              ; preds = %140, %105
  %143 = load i64, i64* %6, align 8
  ret i64 %143
}

declare dso_local i32 @SANITY_CHECK_RETURN_ERROR(i32, i64) #1

declare dso_local i32 @RETURN_ERROR(i32, i64, i8*) #1

declare dso_local i32 @INIT_LIST(i32*) #1

declare dso_local %struct.TYPE_14__* @ModifyNodeCommonPart(%struct.TYPE_15__*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @TRY_LOCK(i32, i32*) #1

declare dso_local i32 @XX_Free(%struct.TYPE_14__*) #1

declare dso_local i64 @ERROR_CODE(i32) #1

declare dso_local i64 @BuildNewNodeModifyNextEngine(%struct.TYPE_16__*, %struct.TYPE_15__*, i64, i32*, i32*, i32*, %struct.TYPE_14__*) #1

declare dso_local i64 @DoDynamicChange(%struct.TYPE_16__*, i32*, i32*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @RELEASE_LOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
