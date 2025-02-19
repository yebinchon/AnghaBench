; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_cc.c_FmPcdCcModifyMissNextEngineParamNode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_cc.c_FmPcdCcModifyMissNextEngineParamNode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@E_OK = common dso_local global i64 0, align 8
@E_INVALID_VALUE = common dso_local global i32 0, align 4
@e_MODIFY_STATE_CHANGE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@MAJOR = common dso_local global i32 0, align 4
@E_INVALID_STATE = common dso_local global i64 0, align 8
@NO_MSG = common dso_local global i32 0, align 4
@E_BUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FmPcdCcModifyMissNextEngineParamNode(i64 %0, i64 %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load i64, i64* %6, align 8
  %16 = inttoptr i64 %15 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %8, align 8
  %17 = load i64, i64* @E_OK, align 8
  store i64 %17, i64* %14, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %19 = load i32, i32* @E_INVALID_VALUE, align 4
  %20 = call i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_7__* %18, i32 %19)
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %12, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %27, %struct.TYPE_8__** %9, align 8
  %28 = call i32 @INIT_LIST(i32* %10)
  %29 = call i32 @INIT_LIST(i32* %11)
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* @e_MODIFY_STATE_CHANGE, align 4
  %33 = load i32, i32* @FALSE, align 4
  %34 = load i32, i32* @TRUE, align 4
  %35 = load i32, i32* @FALSE, align 4
  %36 = call i32* @ModifyNodeCommonPart(%struct.TYPE_7__* %30, i32 %31, i32 %32, i32 %33, i32 %34, i32 %35)
  store i32* %36, i32** %13, align 8
  %37 = load i32*, i32** %13, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %3
  %40 = load i32, i32* @MAJOR, align 4
  %41 = load i64, i64* @E_INVALID_STATE, align 8
  %42 = load i32, i32* @NO_MSG, align 4
  %43 = call i32 @RETURN_ERROR(i32 %40, i64 %41, i32 %42)
  br label %44

44:                                               ; preds = %39, %3
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %44
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = call i32 @TRY_LOCK(i32 %52, i32* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %49
  %58 = load i32*, i32** %13, align 8
  %59 = call i32 @XX_Free(i32* %58)
  %60 = load i32, i32* @E_BUSY, align 4
  %61 = call i64 @ERROR_CODE(i32 %60)
  store i64 %61, i64* %4, align 8
  br label %104

62:                                               ; preds = %49, %44
  %63 = load i64, i64* %5, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %65 = load i32, i32* %12, align 4
  %66 = load i32*, i32** %7, align 8
  %67 = load i32*, i32** %13, align 8
  %68 = call i64 @BuildNewNodeModifyNextEngine(i64 %63, %struct.TYPE_7__* %64, i32 %65, i32* %66, i32* %10, i32* %11, i32* %67)
  store i64 %68, i64* %14, align 8
  %69 = load i64, i64* %14, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %88

71:                                               ; preds = %62
  %72 = load i32*, i32** %13, align 8
  %73 = call i32 @XX_Free(i32* %72)
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %71
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @RELEASE_LOCK(i32 %81)
  br label %83

83:                                               ; preds = %78, %71
  %84 = load i32, i32* @MAJOR, align 4
  %85 = load i64, i64* %14, align 8
  %86 = load i32, i32* @NO_MSG, align 4
  %87 = call i32 @RETURN_ERROR(i32 %84, i64 %85, i32 %86)
  br label %88

88:                                               ; preds = %83, %62
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %90 = load i32*, i32** %13, align 8
  %91 = load i32, i32* @FALSE, align 4
  %92 = call i64 @DoDynamicChange(%struct.TYPE_8__* %89, i32* %10, i32* %11, i32* %90, i32 %91)
  store i64 %92, i64* %14, align 8
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %88
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @RELEASE_LOCK(i32 %100)
  br label %102

102:                                              ; preds = %97, %88
  %103 = load i64, i64* %14, align 8
  store i64 %103, i64* %4, align 8
  br label %104

104:                                              ; preds = %102, %57
  %105 = load i64, i64* %4, align 8
  ret i64 %105
}

declare dso_local i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @INIT_LIST(i32*) #1

declare dso_local i32* @ModifyNodeCommonPart(%struct.TYPE_7__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @RETURN_ERROR(i32, i64, i32) #1

declare dso_local i32 @TRY_LOCK(i32, i32*) #1

declare dso_local i32 @XX_Free(i32*) #1

declare dso_local i64 @ERROR_CODE(i32) #1

declare dso_local i64 @BuildNewNodeModifyNextEngine(i64, %struct.TYPE_7__*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @RELEASE_LOCK(i32) #1

declare dso_local i64 @DoDynamicChange(%struct.TYPE_8__*, i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
