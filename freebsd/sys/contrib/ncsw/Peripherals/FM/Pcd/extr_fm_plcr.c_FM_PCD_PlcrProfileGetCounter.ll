; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_plcr.c_FM_PCD_PlcrProfileGetCounter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_plcr.c_FM_PCD_PlcrProfileGetCounter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, %struct.TYPE_13__*, i64, %struct.TYPE_12__* }
%struct.TYPE_13__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32 }

@E_INVALID_HANDLE = common dso_local global i32 0, align 4
@FM_PCD_PLCR_NUM_ENTRIES = common dso_local global i64 0, align 8
@MAJOR = common dso_local global i32 0, align 4
@E_INVALID_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"profileId too Big \00", align 1
@E_INVALID_SELECTION = common dso_local global i32 0, align 4
@NO_MSG = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FM_PCD_PlcrProfileGetCounter(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_11__*, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i64, i64* %4, align 8
  %13 = inttoptr i64 %12 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %13, %struct.TYPE_12__** %6, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %15 = load i32, i32* @E_INVALID_HANDLE, align 4
  %16 = call i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_12__* %14, i32 %15)
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 3
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  store %struct.TYPE_12__* %19, %struct.TYPE_12__** %7, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %21 = load i32, i32* @E_INVALID_HANDLE, align 4
  %22 = call i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_12__* %20, i32 %21)
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %2
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @FmHcPcdPlcrGetProfileCounter(i64 %30, i64 %31, i32 %32)
  store i32 %33, i32* %3, align 4
  br label %105

34:                                               ; preds = %2
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %38, align 8
  store %struct.TYPE_11__* %39, %struct.TYPE_11__** %11, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %41 = load i32, i32* @E_INVALID_HANDLE, align 4
  %42 = call i32 @SANITY_CHECK_RETURN_VALUE(%struct.TYPE_11__* %40, i32 %41, i32 0)
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %8, align 8
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* @FM_PCD_PLCR_NUM_ENTRIES, align 8
  %48 = icmp sge i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %34
  %50 = load i32, i32* @MAJOR, align 4
  %51 = load i32, i32* @E_INVALID_VALUE, align 4
  %52 = call i32 @REPORT_ERROR(i32 %50, i32 %51, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %105

53:                                               ; preds = %34
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %55, align 8
  %57 = call i32 @PlcrHwLock(%struct.TYPE_13__* %56)
  store i32 %57, i32* %9, align 4
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %59 = load i64, i64* %8, align 8
  %60 = call i32 @FmPcdPlcrBuildReadPlcrActionReg(i64 %59)
  %61 = call i32 @WritePar(%struct.TYPE_12__* %58, i32 %60)
  %62 = load i32, i32* %5, align 4
  switch i32 %62, label %93 [
    i32 132, label %63
    i32 128, label %69
    i32 129, label %75
    i32 130, label %81
    i32 131, label %87
  ]

63:                                               ; preds = %53
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @GET_UINT32(i32 %67)
  store i32 %68, i32* %10, align 4
  br label %98

69:                                               ; preds = %53
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @GET_UINT32(i32 %73)
  store i32 %74, i32* %10, align 4
  br label %98

75:                                               ; preds = %53
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @GET_UINT32(i32 %79)
  store i32 %80, i32* %10, align 4
  br label %98

81:                                               ; preds = %53
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @GET_UINT32(i32 %85)
  store i32 %86, i32* %10, align 4
  br label %98

87:                                               ; preds = %53
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @GET_UINT32(i32 %91)
  store i32 %92, i32* %10, align 4
  br label %98

93:                                               ; preds = %53
  %94 = load i32, i32* @MAJOR, align 4
  %95 = load i32, i32* @E_INVALID_SELECTION, align 4
  %96 = load i8*, i8** @NO_MSG, align 8
  %97 = call i32 @REPORT_ERROR(i32 %94, i32 %95, i8* %96)
  br label %98

98:                                               ; preds = %93, %87, %81, %75, %69, %63
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %100, align 8
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @PlcrHwUnlock(%struct.TYPE_13__* %101, i32 %102)
  %104 = load i32, i32* %10, align 4
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %98, %49, %27
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @FmHcPcdPlcrGetProfileCounter(i64, i64, i32) #1

declare dso_local i32 @SANITY_CHECK_RETURN_VALUE(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @REPORT_ERROR(i32, i32, i8*) #1

declare dso_local i32 @PlcrHwLock(%struct.TYPE_13__*) #1

declare dso_local i32 @WritePar(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @FmPcdPlcrBuildReadPlcrActionReg(i64) #1

declare dso_local i32 @GET_UINT32(i32) #1

declare dso_local i32 @PlcrHwUnlock(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
