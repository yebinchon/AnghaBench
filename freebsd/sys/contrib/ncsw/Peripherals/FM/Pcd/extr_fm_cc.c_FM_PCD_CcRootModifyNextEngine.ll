; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_cc.c_FM_PCD_CcRootModifyNextEngine.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_cc.c_FM_PCD_CcRootModifyNextEngine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }

@E_OK = common dso_local global i64 0, align 8
@E_NULL_POINTER = common dso_local global i32 0, align 4
@E_INVALID_STATE = common dso_local global i32 0, align 4
@E_INVALID_HANDLE = common dso_local global i32 0, align 4
@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"FmPcdLockTryLockAll failed\00", align 1
@E_BUSY = common dso_local global i32 0, align 4
@MAJOR = common dso_local global i32 0, align 4
@NO_MSG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FM_PCD_CcRootModifyNextEngine(i64 %0, i32 %1, i32 %2, %struct.TYPE_11__* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %9, align 8
  %13 = load i64, i64* %6, align 8
  %14 = inttoptr i64 %13 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %14, %struct.TYPE_11__** %11, align 8
  %15 = load i64, i64* @E_OK, align 8
  store i64 %15, i64* %12, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %17 = load i32, i32* @E_NULL_POINTER, align 4
  %18 = call i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_11__* %16, i32 %17)
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %20 = load i32, i32* @E_INVALID_STATE, align 4
  %21 = call i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_11__* %19, i32 %20)
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %25, %struct.TYPE_11__** %10, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %27 = load i32, i32* @E_INVALID_HANDLE, align 4
  %28 = call i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_11__* %26, i32 %27)
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %30 = call i32 @FmPcdLockTryLockAll(%struct.TYPE_11__* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %4
  %33 = load i32, i32* @TRACE, align 4
  %34 = call i32 @DBG(i32 %33, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @E_BUSY, align 4
  %36 = call i64 @ERROR_CODE(i32 %35)
  store i64 %36, i64* %5, align 8
  br label %55

37:                                               ; preds = %4
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %43 = call i64 @FmPcdCcModifyNextEngineParamTree(%struct.TYPE_11__* %38, %struct.TYPE_11__* %39, i32 %40, i32 %41, %struct.TYPE_11__* %42)
  store i64 %43, i64* %12, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %45 = call i32 @FmPcdLockUnlockAll(%struct.TYPE_11__* %44)
  %46 = load i64, i64* %12, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %37
  %49 = load i32, i32* @MAJOR, align 4
  %50 = load i64, i64* %12, align 8
  %51 = load i32, i32* @NO_MSG, align 4
  %52 = call i32 @RETURN_ERROR(i32 %49, i64 %50, i32 %51)
  br label %53

53:                                               ; preds = %48, %37
  %54 = load i64, i64* @E_OK, align 8
  store i64 %54, i64* %5, align 8
  br label %55

55:                                               ; preds = %53, %32
  %56 = load i64, i64* %5, align 8
  ret i64 %56
}

declare dso_local i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @FmPcdLockTryLockAll(%struct.TYPE_11__*) #1

declare dso_local i32 @DBG(i32, i8*) #1

declare dso_local i64 @ERROR_CODE(i32) #1

declare dso_local i64 @FmPcdCcModifyNextEngineParamTree(%struct.TYPE_11__*, %struct.TYPE_11__*, i32, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @FmPcdLockUnlockAll(%struct.TYPE_11__*) #1

declare dso_local i32 @RETURN_ERROR(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
