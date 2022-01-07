; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_cc.c_ModifyNextEngineParamNode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_cc.c_ModifyNextEngineParamNode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64, i64 }
%struct.TYPE_12__ = type { i32, i32 }

@E_OK = common dso_local global i64 0, align 8
@E_INVALID_VALUE = common dso_local global i32 0, align 4
@E_INVALID_HANDLE = common dso_local global i32 0, align 4
@MAJOR = common dso_local global i32 0, align 4
@E_INVALID_STATE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"keyIndex > previously cleared last index + 1\00", align 1
@e_MODIFY_STATE_CHANGE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@NO_MSG = common dso_local global i8* null, align 8
@E_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_11__*, %struct.TYPE_11__*, i64, i32*)* @ModifyNextEngineParamNode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ModifyNextEngineParamNode(%struct.TYPE_11__* %0, %struct.TYPE_11__* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  store %struct.TYPE_11__* %16, %struct.TYPE_11__** %10, align 8
  %17 = load i64, i64* @E_OK, align 8
  store i64 %17, i64* %15, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %19 = load i32, i32* @E_INVALID_VALUE, align 4
  %20 = call i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_11__* %18, i32 %19)
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %22 = load i32, i32* @E_INVALID_HANDLE, align 4
  %23 = call i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_11__* %21, i32 %22)
  %24 = load i64, i64* %8, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sge i64 %24, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %4
  %30 = load i32, i32* @MAJOR, align 4
  %31 = load i64, i64* @E_INVALID_STATE, align 8
  %32 = call i32 @RETURN_ERROR(i32 %30, i64 %31, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %29, %4
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %37, %struct.TYPE_12__** %11, align 8
  %38 = call i32 @INIT_LIST(i32* %12)
  %39 = call i32 @INIT_LIST(i32* %13)
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %41 = load i64, i64* %8, align 8
  %42 = load i32, i32* @e_MODIFY_STATE_CHANGE, align 4
  %43 = load i32, i32* @FALSE, align 4
  %44 = load i32, i32* @FALSE, align 4
  %45 = load i32, i32* @FALSE, align 4
  %46 = call i32* @ModifyNodeCommonPart(%struct.TYPE_11__* %40, i64 %41, i32 %42, i32 %43, i32 %44, i32 %45)
  store i32* %46, i32** %14, align 8
  %47 = load i32*, i32** %14, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %33
  %50 = load i32, i32* @MAJOR, align 4
  %51 = load i64, i64* @E_INVALID_STATE, align 8
  %52 = load i8*, i8** @NO_MSG, align 8
  %53 = call i32 @RETURN_ERROR(i32 %50, i64 %51, i8* %52)
  br label %54

54:                                               ; preds = %49, %33
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %54
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = call i32 @TRY_LOCK(i32 %62, i32* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %59
  %68 = load i32*, i32** %14, align 8
  %69 = call i32 @XX_Free(i32* %68)
  %70 = load i32, i32* @E_BUSY, align 4
  %71 = call i64 @ERROR_CODE(i32 %70)
  store i64 %71, i64* %5, align 8
  br label %114

72:                                               ; preds = %59, %54
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %75 = load i64, i64* %8, align 8
  %76 = load i32*, i32** %9, align 8
  %77 = load i32*, i32** %14, align 8
  %78 = call i64 @BuildNewNodeModifyNextEngine(%struct.TYPE_11__* %73, %struct.TYPE_11__* %74, i64 %75, i32* %76, i32* %12, i32* %13, i32* %77)
  store i64 %78, i64* %15, align 8
  %79 = load i64, i64* %15, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %98

81:                                               ; preds = %72
  %82 = load i32*, i32** %14, align 8
  %83 = call i32 @XX_Free(i32* %82)
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %81
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @RELEASE_LOCK(i32 %91)
  br label %93

93:                                               ; preds = %88, %81
  %94 = load i32, i32* @MAJOR, align 4
  %95 = load i64, i64* %15, align 8
  %96 = load i8*, i8** @NO_MSG, align 8
  %97 = call i32 @RETURN_ERROR(i32 %94, i64 %95, i8* %96)
  br label %98

98:                                               ; preds = %93, %72
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %100 = load i32*, i32** %14, align 8
  %101 = load i32, i32* @FALSE, align 4
  %102 = call i64 @DoDynamicChange(%struct.TYPE_12__* %99, i32* %12, i32* %13, i32* %100, i32 %101)
  store i64 %102, i64* %15, align 8
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %98
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @RELEASE_LOCK(i32 %110)
  br label %112

112:                                              ; preds = %107, %98
  %113 = load i64, i64* %15, align 8
  store i64 %113, i64* %5, align 8
  br label %114

114:                                              ; preds = %112, %67
  %115 = load i64, i64* %5, align 8
  ret i64 %115
}

declare dso_local i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @RETURN_ERROR(i32, i64, i8*) #1

declare dso_local i32 @INIT_LIST(i32*) #1

declare dso_local i32* @ModifyNodeCommonPart(%struct.TYPE_11__*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @TRY_LOCK(i32, i32*) #1

declare dso_local i32 @XX_Free(i32*) #1

declare dso_local i64 @ERROR_CODE(i32) #1

declare dso_local i64 @BuildNewNodeModifyNextEngine(%struct.TYPE_11__*, %struct.TYPE_11__*, i64, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @RELEASE_LOCK(i32) #1

declare dso_local i64 @DoDynamicChange(%struct.TYPE_12__*, i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
