; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_kg.c_FM_PCD_KgSchemeSetCounter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_kg.c_FM_PCD_KgSchemeSetCounter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_13__*, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i64 }

@E_INVALID_HANDLE = common dso_local global i32 0, align 4
@MAJOR = common dso_local global i32 0, align 4
@E_INVALID_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Requested scheme is invalid.\00", align 1
@FM_PCD_KG_NUM_OF_SCHEMES = common dso_local global i64 0, align 8
@E_NOT_IN_RANGE = common dso_local global i32 0, align 4
@NO_MSG = common dso_local global i32 0, align 4
@KG_SCH_MODE_EN = common dso_local global i32 0, align 4
@E_ALREADY_EXISTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Scheme is Invalid\00", align 1
@TRUE = common dso_local global i32 0, align 4
@E_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FM_PCD_KgSchemeSetCounter(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i64, i64* %4, align 8
  %11 = load i32, i32* @E_INVALID_HANDLE, align 4
  %12 = call i32 @SANITY_CHECK_RETURN_VALUE(i64 %10, i32 %11, i32 0)
  %13 = load i64, i64* %4, align 8
  %14 = inttoptr i64 %13 to %struct.TYPE_11__*
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %17, %struct.TYPE_12__** %6, align 8
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @FmPcdKgIsSchemeValidSw(i64 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @MAJOR, align 4
  %23 = load i32, i32* @E_INVALID_STATE, align 4
  %24 = call i32 @RETURN_ERROR(i32 %22, i32 %23, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %21, %2
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @FmHcPcdKgSetSchemeCounter(i64 %33, i64 %34, i32 %35)
  store i32 %36, i32* %3, align 4
  br label %106

37:                                               ; preds = %25
  %38 = load i64, i64* %4, align 8
  %39 = inttoptr i64 %38 to %struct.TYPE_11__*
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %9, align 4
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i64 @FmPcdKgGetRelativeSchemeId(%struct.TYPE_12__* %42, i32 %43)
  %45 = load i64, i64* @FM_PCD_KG_NUM_OF_SCHEMES, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %37
  %48 = load i32, i32* @MAJOR, align 4
  %49 = load i32, i32* @E_NOT_IN_RANGE, align 4
  %50 = load i32, i32* @NO_MSG, align 4
  %51 = call i32 @REPORT_ERROR(i32 %48, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %47, %37
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @FmPcdKgBuildReadSchemeActionReg(i32 %53)
  store i32 %54, i32* %7, align 4
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %56, align 8
  %58 = call i32 @KgHwLock(%struct.TYPE_13__* %57)
  store i32 %58, i32* %8, align 4
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @WriteKgarWait(%struct.TYPE_12__* %59, i32 %60)
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @GET_UINT32(i32 %69)
  %71 = load i32, i32* @KG_SCH_MODE_EN, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %83, label %74

74:                                               ; preds = %52
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @KgHwUnlock(%struct.TYPE_13__* %77, i32 %78)
  %80 = load i32, i32* @MAJOR, align 4
  %81 = load i32, i32* @E_ALREADY_EXISTS, align 4
  %82 = call i32 @RETURN_ERROR(i32 %80, i32 %81, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %83

83:                                               ; preds = %74, %52
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @WRITE_UINT32(i32 %91, i32 %92)
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* @TRUE, align 4
  %96 = call i32 @FmPcdKgBuildWriteSchemeActionReg(i32 %94, i32 %95)
  store i32 %96, i32* %7, align 4
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @WriteKgarWait(%struct.TYPE_12__* %97, i32 %98)
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %101, align 8
  %103 = load i32, i32* %8, align 4
  %104 = call i32 @KgHwUnlock(%struct.TYPE_13__* %102, i32 %103)
  %105 = load i32, i32* @E_OK, align 4
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %83, %30
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @SANITY_CHECK_RETURN_VALUE(i64, i32, i32) #1

declare dso_local i32 @FmPcdKgIsSchemeValidSw(i64) #1

declare dso_local i32 @RETURN_ERROR(i32, i32, i8*) #1

declare dso_local i32 @FmHcPcdKgSetSchemeCounter(i64, i64, i32) #1

declare dso_local i64 @FmPcdKgGetRelativeSchemeId(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @REPORT_ERROR(i32, i32, i32) #1

declare dso_local i32 @FmPcdKgBuildReadSchemeActionReg(i32) #1

declare dso_local i32 @KgHwLock(%struct.TYPE_13__*) #1

declare dso_local i32 @WriteKgarWait(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @GET_UINT32(i32) #1

declare dso_local i32 @KgHwUnlock(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @WRITE_UINT32(i32, i32) #1

declare dso_local i32 @FmPcdKgBuildWriteSchemeActionReg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
