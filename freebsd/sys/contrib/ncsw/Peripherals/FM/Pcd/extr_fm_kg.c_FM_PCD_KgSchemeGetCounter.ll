; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_kg.c_FM_PCD_KgSchemeGetCounter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_kg.c_FM_PCD_KgSchemeGetCounter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_13__*, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i64 }

@E_INVALID_HANDLE = common dso_local global i32 0, align 4
@FM_PCD_KG_NUM_OF_SCHEMES = common dso_local global i64 0, align 8
@MAJOR = common dso_local global i32 0, align 4
@E_NOT_IN_RANGE = common dso_local global i32 0, align 4
@NO_MSG = common dso_local global i8* null, align 8
@KG_SCH_MODE_EN = common dso_local global i32 0, align 4
@E_ALREADY_EXISTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Scheme is Invalid\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FM_PCD_KgSchemeGetCounter(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = load i32, i32* @E_INVALID_HANDLE, align 4
  %11 = call i32 @SANITY_CHECK_RETURN_VALUE(i64 %9, i32 %10, i32 0)
  %12 = load i64, i64* %3, align 8
  %13 = inttoptr i64 %12 to %struct.TYPE_11__*
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %4, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %1
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %3, align 8
  %26 = call i32 @FmHcPcdKgGetSchemeCounter(i64 %24, i64 %25)
  store i32 %26, i32* %2, align 4
  br label %84

27:                                               ; preds = %1
  %28 = load i64, i64* %3, align 8
  %29 = inttoptr i64 %28 to %struct.TYPE_11__*
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %8, align 4
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i64 @FmPcdKgGetRelativeSchemeId(%struct.TYPE_12__* %32, i32 %33)
  %35 = load i64, i64* @FM_PCD_KG_NUM_OF_SCHEMES, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %27
  %38 = load i32, i32* @MAJOR, align 4
  %39 = load i32, i32* @E_NOT_IN_RANGE, align 4
  %40 = load i8*, i8** @NO_MSG, align 8
  %41 = call i32 @REPORT_ERROR(i32 %38, i32 %39, i8* %40)
  br label %42

42:                                               ; preds = %37, %27
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @FmPcdKgBuildReadSchemeActionReg(i32 %43)
  store i32 %44, i32* %5, align 4
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %46, align 8
  %48 = call i32 @KgHwLock(%struct.TYPE_13__* %47)
  store i32 %48, i32* %7, align 4
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @WriteKgarWait(%struct.TYPE_12__* %49, i32 %50)
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @GET_UINT32(i32 %59)
  %61 = load i32, i32* @KG_SCH_MODE_EN, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %42
  %65 = load i32, i32* @MAJOR, align 4
  %66 = load i32, i32* @E_ALREADY_EXISTS, align 4
  %67 = call i32 @REPORT_ERROR(i32 %65, i32 %66, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %68

68:                                               ; preds = %64, %42
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @GET_UINT32(i32 %76)
  store i32 %77, i32* %6, align 4
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @KgHwUnlock(%struct.TYPE_13__* %80, i32 %81)
  %83 = load i32, i32* %6, align 4
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %68, %21
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i32 @SANITY_CHECK_RETURN_VALUE(i64, i32, i32) #1

declare dso_local i32 @FmHcPcdKgGetSchemeCounter(i64, i64) #1

declare dso_local i64 @FmPcdKgGetRelativeSchemeId(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @REPORT_ERROR(i32, i32, i8*) #1

declare dso_local i32 @FmPcdKgBuildReadSchemeActionReg(i32) #1

declare dso_local i32 @KgHwLock(%struct.TYPE_13__*) #1

declare dso_local i32 @WriteKgarWait(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @GET_UINT32(i32) #1

declare dso_local i32 @KgHwUnlock(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
