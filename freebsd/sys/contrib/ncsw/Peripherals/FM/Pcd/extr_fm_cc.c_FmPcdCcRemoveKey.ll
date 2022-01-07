; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_cc.c_FmPcdCcRemoveKey.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_cc.c_FmPcdCcRemoveKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i64 }
%struct.TYPE_8__ = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@E_OK = common dso_local global i64 0, align 8
@MAJOR = common dso_local global i32 0, align 4
@E_INVALID_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"impossible to remove key when numOfKeys <= keyIndex\00", align 1
@.str.1 = private unnamed_addr constant [83 x i8] c"handler to FmPcd is different from the handle provided at node initialization time\00", align 1
@e_MODIFY_STATE_REMOVE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@E_INVALID_STATE = common dso_local global i64 0, align 8
@NO_MSG = common dso_local global i8* null, align 8
@E_BUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FmPcdCcRemoveKey(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load i64, i64* %6, align 8
  %16 = inttoptr i64 %15 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %8, align 8
  %17 = load i32, i32* @FALSE, align 4
  store i32 %17, i32* %13, align 4
  %18 = load i64, i64* @E_OK, align 8
  store i64 %18, i64* %14, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sge i64 %19, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = load i32, i32* @MAJOR, align 4
  %26 = load i64, i64* @E_INVALID_VALUE, align 8
  %27 = call i32 @RETURN_ERROR(i32 %25, i64 %26, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %24, %3
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %5, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load i32, i32* @MAJOR, align 4
  %36 = load i64, i64* @E_INVALID_VALUE, align 8
  %37 = call i32 @RETURN_ERROR(i32 %35, i64 %36, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %34, %28
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %42, %struct.TYPE_8__** %9, align 8
  %43 = call i32 @INIT_LIST(i32* %11)
  %44 = call i32 @INIT_LIST(i32* %12)
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %46 = load i64, i64* %7, align 8
  %47 = load i32, i32* @e_MODIFY_STATE_REMOVE, align 4
  %48 = load i32, i32* @TRUE, align 4
  %49 = load i32, i32* @TRUE, align 4
  %50 = load i32, i32* @FALSE, align 4
  %51 = call i32* @ModifyNodeCommonPart(%struct.TYPE_7__* %45, i64 %46, i32 %47, i32 %48, i32 %49, i32 %50)
  store i32* %51, i32** %10, align 8
  %52 = load i32*, i32** %10, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %59, label %54

54:                                               ; preds = %38
  %55 = load i32, i32* @MAJOR, align 4
  %56 = load i64, i64* @E_INVALID_STATE, align 8
  %57 = load i8*, i8** @NO_MSG, align 8
  %58 = call i32 @RETURN_ERROR(i32 %55, i64 %56, i8* %57)
  br label %59

59:                                               ; preds = %54, %38
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %79

64:                                               ; preds = %59
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = call i32 @TRY_LOCK(i32 %67, i32* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %64
  %73 = load i32*, i32** %10, align 8
  %74 = call i32 @XX_Free(i32* %73)
  %75 = load i32, i32* @E_BUSY, align 4
  %76 = call i64 @ERROR_CODE(i32 %75)
  store i64 %76, i64* %4, align 8
  br label %144

77:                                               ; preds = %64
  %78 = load i32, i32* @TRUE, align 4
  store i32 %78, i32* %13, align 4
  br label %79

79:                                               ; preds = %77, %59
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %81 = load i64, i64* %7, align 8
  %82 = load i32*, i32** %10, align 8
  %83 = call i64 @BuildNewNodeRemoveKey(%struct.TYPE_7__* %80, i64 %81, i32* %82)
  store i64 %83, i64* %14, align 8
  %84 = load i64, i64* %14, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %103

86:                                               ; preds = %79
  %87 = load i32*, i32** %10, align 8
  %88 = call i32 @XX_Free(i32* %87)
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %86
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @RELEASE_LOCK(i32 %96)
  br label %98

98:                                               ; preds = %93, %86
  %99 = load i32, i32* @MAJOR, align 4
  %100 = load i64, i64* %14, align 8
  %101 = load i8*, i8** @NO_MSG, align 8
  %102 = call i32 @RETURN_ERROR(i32 %99, i64 %100, i8* %101)
  br label %103

103:                                              ; preds = %98, %79
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %105 = load i32*, i32** %10, align 8
  %106 = call i64 @UpdatePtrWhichPointOnCrntMdfNode(%struct.TYPE_7__* %104, i32* %105, i32* %11, i32* %12)
  store i64 %106, i64* %14, align 8
  %107 = load i64, i64* %14, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %128

109:                                              ; preds = %103
  %110 = load i32*, i32** %10, align 8
  %111 = call i32 @ReleaseNewNodeCommonPart(i32* %110)
  %112 = load i32*, i32** %10, align 8
  %113 = call i32 @XX_Free(i32* %112)
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %109
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @RELEASE_LOCK(i32 %121)
  br label %123

123:                                              ; preds = %118, %109
  %124 = load i32, i32* @MAJOR, align 4
  %125 = load i64, i64* %14, align 8
  %126 = load i8*, i8** @NO_MSG, align 8
  %127 = call i32 @RETURN_ERROR(i32 %124, i64 %125, i8* %126)
  br label %128

128:                                              ; preds = %123, %103
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %130 = load i32*, i32** %10, align 8
  %131 = load i32, i32* %13, align 4
  %132 = call i64 @DoDynamicChange(%struct.TYPE_8__* %129, i32* %11, i32* %12, i32* %130, i32 %131)
  store i64 %132, i64* %14, align 8
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %128
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @RELEASE_LOCK(i32 %140)
  br label %142

142:                                              ; preds = %137, %128
  %143 = load i64, i64* %14, align 8
  store i64 %143, i64* %4, align 8
  br label %144

144:                                              ; preds = %142, %72
  %145 = load i64, i64* %4, align 8
  ret i64 %145
}

declare dso_local i32 @RETURN_ERROR(i32, i64, i8*) #1

declare dso_local i32 @INIT_LIST(i32*) #1

declare dso_local i32* @ModifyNodeCommonPart(%struct.TYPE_7__*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @TRY_LOCK(i32, i32*) #1

declare dso_local i32 @XX_Free(i32*) #1

declare dso_local i64 @ERROR_CODE(i32) #1

declare dso_local i64 @BuildNewNodeRemoveKey(%struct.TYPE_7__*, i64, i32*) #1

declare dso_local i32 @RELEASE_LOCK(i32) #1

declare dso_local i64 @UpdatePtrWhichPointOnCrntMdfNode(%struct.TYPE_7__*, i32*, i32*, i32*) #1

declare dso_local i32 @ReleaseNewNodeCommonPart(i32*) #1

declare dso_local i64 @DoDynamicChange(%struct.TYPE_8__*, i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
