; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_plcr.c_FM_PCD_PlcrProfileSetCounter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_plcr.c_FM_PCD_PlcrProfileSetCounter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__, i32, %struct.TYPE_11__* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_12__*, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_10__* }

@E_INVALID_HANDLE = common dso_local global i32 0, align 4
@MAJOR = common dso_local global i32 0, align 4
@E_INVALID_SELECTION = common dso_local global i32 0, align 4
@NO_MSG = common dso_local global i32 0, align 4
@E_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FM_PCD_PlcrProfileSetCounter(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_10__*, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load i64, i64* %5, align 8
  %15 = inttoptr i64 %14 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %8, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %17 = load i32, i32* @E_INVALID_HANDLE, align 4
  %18 = call i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_10__* %16, i32 %17)
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  store %struct.TYPE_11__* %21, %struct.TYPE_11__** %9, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %10, align 4
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %3
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @FmHcPcdPlcrSetProfileCounter(i64 %32, i64 %33, i32 %34, i32 %35)
  store i32 %36, i32* %4, align 4
  br label %112

37:                                               ; preds = %3
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  store %struct.TYPE_10__* %42, %struct.TYPE_10__** %13, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %44 = load i32, i32* @E_INVALID_HANDLE, align 4
  %45 = call i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_10__* %43, i32 %44)
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %47, align 8
  %49 = call i32 @PlcrHwLock(%struct.TYPE_12__* %48)
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %6, align 4
  switch i32 %50, label %86 [
    i32 132, label %51
    i32 128, label %58
    i32 129, label %65
    i32 130, label %72
    i32 131, label %79
  ]

51:                                               ; preds = %37
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @WRITE_UINT32(i32 %55, i32 %56)
  br label %96

58:                                               ; preds = %37
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @WRITE_UINT32(i32 %62, i32 %63)
  br label %96

65:                                               ; preds = %37
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @WRITE_UINT32(i32 %69, i32 %70)
  br label %96

72:                                               ; preds = %37
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @WRITE_UINT32(i32 %76, i32 %77)
  br label %96

79:                                               ; preds = %37
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @WRITE_UINT32(i32 %83, i32 %84)
  br label %96

86:                                               ; preds = %37
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %88, align 8
  %90 = load i32, i32* %12, align 4
  %91 = call i32 @PlcrHwUnlock(%struct.TYPE_12__* %89, i32 %90)
  %92 = load i32, i32* @MAJOR, align 4
  %93 = load i32, i32* @E_INVALID_SELECTION, align 4
  %94 = load i32, i32* @NO_MSG, align 4
  %95 = call i32 @RETURN_ERROR(i32 %92, i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %86, %79, %72, %65, %58, %51
  %97 = load i32, i32* %10, align 4
  %98 = call i32 @FmPcdPlcrBuildWritePlcrActionReg(i32 %97)
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @FmPcdPlcrBuildCounterProfileReg(i32 %99)
  %101 = load i32, i32* %11, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %11, align 4
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %104 = load i32, i32* %11, align 4
  %105 = call i32 @WritePar(%struct.TYPE_11__* %103, i32 %104)
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %107, align 8
  %109 = load i32, i32* %12, align 4
  %110 = call i32 @PlcrHwUnlock(%struct.TYPE_12__* %108, i32 %109)
  %111 = load i32, i32* @E_OK, align 4
  store i32 %111, i32* %4, align 4
  br label %112

112:                                              ; preds = %96, %29
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @FmHcPcdPlcrSetProfileCounter(i64, i64, i32, i32) #1

declare dso_local i32 @PlcrHwLock(%struct.TYPE_12__*) #1

declare dso_local i32 @WRITE_UINT32(i32, i32) #1

declare dso_local i32 @PlcrHwUnlock(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @RETURN_ERROR(i32, i32, i32) #1

declare dso_local i32 @FmPcdPlcrBuildWritePlcrActionReg(i32) #1

declare dso_local i32 @FmPcdPlcrBuildCounterProfileReg(i32) #1

declare dso_local i32 @WritePar(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
