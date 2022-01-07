; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_plcr.c_FM_PCD_PlcrProfileDelete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_plcr.c_FM_PCD_PlcrProfileDelete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, %struct.TYPE_15__*, i64, i32, %struct.TYPE_14__* }
%struct.TYPE_15__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }

@E_INVALID_HANDLE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@FM_PCD_PLCR_PEMODE_PI = common dso_local global i32 0, align 4
@E_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FM_PCD_PlcrProfileDelete(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %10 = load i64, i64* %3, align 8
  %11 = inttoptr i64 %10 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %11, %struct.TYPE_14__** %4, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %13 = load i32, i32* @E_INVALID_HANDLE, align 4
  %14 = call i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_14__* %12, i32 %13)
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 4
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  store %struct.TYPE_14__* %17, %struct.TYPE_14__** %5, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %19 = load i32, i32* @E_INVALID_HANDLE, align 4
  %20 = call i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_14__* %18, i32 %19)
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %6, align 4
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @FALSE, align 4
  %27 = call i32 @UpdateRequiredActionFlag(%struct.TYPE_14__* %24, i32 %25, i32 %26)
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @FmPcdPlcrInvalidateProfileSw(%struct.TYPE_14__* %28, i32 %29)
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %53

35:                                               ; preds = %1
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %3, align 8
  %40 = call i32 @FmHcPcdPlcrDeleteProfile(i64 %38, i64 %39)
  store i32 %40, i32* %9, align 4
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %35
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @FmPcdReleaseLock(%struct.TYPE_14__* %46, i64 %49)
  br label %51

51:                                               ; preds = %45, %35
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %2, align 4
  br label %91

53:                                               ; preds = %1
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %55, align 8
  %57 = call i32 @PlcrHwLock(%struct.TYPE_15__* %56)
  store i32 %57, i32* %8, align 4
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @FM_PCD_PLCR_PEMODE_PI, align 4
  %67 = xor i32 %66, -1
  %68 = call i32 @WRITE_UINT32(i32 %65, i32 %67)
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @FmPcdPlcrBuildWritePlcrActionRegs(i32 %69)
  store i32 %70, i32* %7, align 4
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @WritePar(%struct.TYPE_14__* %71, i32 %72)
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @PlcrHwUnlock(%struct.TYPE_15__* %76, i32 %77)
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %53
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @FmPcdReleaseLock(%struct.TYPE_14__* %84, i64 %87)
  br label %89

89:                                               ; preds = %83, %53
  %90 = load i32, i32* @E_OK, align 4
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %89, %51
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @UpdateRequiredActionFlag(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @FmPcdPlcrInvalidateProfileSw(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @FmHcPcdPlcrDeleteProfile(i64, i64) #1

declare dso_local i32 @FmPcdReleaseLock(%struct.TYPE_14__*, i64) #1

declare dso_local i32 @PlcrHwLock(%struct.TYPE_15__*) #1

declare dso_local i32 @WRITE_UINT32(i32, i32) #1

declare dso_local i32 @FmPcdPlcrBuildWritePlcrActionRegs(i32) #1

declare dso_local i32 @WritePar(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @PlcrHwUnlock(%struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
