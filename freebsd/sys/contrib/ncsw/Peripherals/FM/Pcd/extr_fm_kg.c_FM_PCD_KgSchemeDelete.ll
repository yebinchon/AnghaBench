; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_kg.c_FM_PCD_KgSchemeDelete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_kg.c_FM_PCD_KgSchemeDelete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_13__*, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i64, i32, i64 }

@E_OK = common dso_local global i64 0, align 8
@E_INVALID_HANDLE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@MINOR = common dso_local global i32 0, align 4
@NO_MSG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FM_PCD_KgSchemeDelete(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  store i64 %0, i64* %3, align 8
  %10 = load i64, i64* @E_OK, align 8
  store i64 %10, i64* %8, align 8
  %11 = load i64, i64* %3, align 8
  %12 = inttoptr i64 %11 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %12, %struct.TYPE_11__** %9, align 8
  %13 = load i64, i64* %3, align 8
  %14 = load i32, i32* @E_INVALID_HANDLE, align 4
  %15 = call i32 @SANITY_CHECK_RETURN_ERROR(i64 %13, i32 %14)
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %19, %struct.TYPE_12__** %4, align 8
  %20 = load i64, i64* %3, align 8
  %21 = load i32, i32* @FALSE, align 4
  %22 = call i32 @UpdateRequiredActionFlag(i64 %20, i32 %21)
  %23 = load i64, i64* %3, align 8
  %24 = call i64 @InvalidateSchemeSw(i64 %23)
  store i64 %24, i64* %8, align 8
  %25 = load i64, i64* %8, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %1
  %28 = load i32, i32* @MINOR, align 4
  %29 = load i64, i64* %8, align 8
  %30 = load i32, i32* @NO_MSG, align 4
  %31 = call i32 @RETURN_ERROR(i32 %28, i64 %29, i32 %30)
  br label %32

32:                                               ; preds = %27, %1
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %55

37:                                               ; preds = %32
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %3, align 8
  %42 = call i64 @FmHcPcdKgDeleteScheme(i64 %40, i64 %41)
  store i64 %42, i64* %8, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %37
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @FmPcdReleaseLock(%struct.TYPE_12__* %48, i64 %51)
  br label %53

53:                                               ; preds = %47, %37
  %54 = load i64, i64* %8, align 8
  store i64 %54, i64* %2, align 8
  br label %96

55:                                               ; preds = %32
  %56 = load i64, i64* %3, align 8
  %57 = inttoptr i64 %56 to %struct.TYPE_11__*
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %5, align 4
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %61, align 8
  %63 = call i32 @KgHwLock(%struct.TYPE_13__* %62)
  store i32 %63, i32* %7, align 4
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @WRITE_UINT32(i32 %71, i32 0)
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @FALSE, align 4
  %75 = call i32 @FmPcdKgBuildWriteSchemeActionReg(i32 %73, i32 %74)
  store i32 %75, i32* %6, align 4
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @WriteKgarWait(%struct.TYPE_12__* %76, i32 %77)
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @KgHwUnlock(%struct.TYPE_13__* %81, i32 %82)
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %55
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @FmPcdReleaseLock(%struct.TYPE_12__* %89, i64 %92)
  br label %94

94:                                               ; preds = %88, %55
  %95 = load i64, i64* @E_OK, align 8
  store i64 %95, i64* %2, align 8
  br label %96

96:                                               ; preds = %94, %53
  %97 = load i64, i64* %2, align 8
  ret i64 %97
}

declare dso_local i32 @SANITY_CHECK_RETURN_ERROR(i64, i32) #1

declare dso_local i32 @UpdateRequiredActionFlag(i64, i32) #1

declare dso_local i64 @InvalidateSchemeSw(i64) #1

declare dso_local i32 @RETURN_ERROR(i32, i64, i32) #1

declare dso_local i64 @FmHcPcdKgDeleteScheme(i64, i64) #1

declare dso_local i32 @FmPcdReleaseLock(%struct.TYPE_12__*, i64) #1

declare dso_local i32 @KgHwLock(%struct.TYPE_13__*) #1

declare dso_local i32 @WRITE_UINT32(i32, i32) #1

declare dso_local i32 @FmPcdKgBuildWriteSchemeActionReg(i32, i32) #1

declare dso_local i32 @WriteKgarWait(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @KgHwUnlock(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
