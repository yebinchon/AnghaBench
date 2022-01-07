; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_manip.c_FmPcdRegisterReassmPort.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_manip.c_FmPcdRegisterReassmPort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64, i32 }
%struct.TYPE_10__ = type { i32, i32, i64, i32 }

@E_OK = common dso_local global i32 0, align 4
@MAJOR = common dso_local global i32 0, align 4
@E_NOT_AVAILABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Timestamp scale\00", align 1
@FM_PCD_MANIP_REASM_TIMEOUT_THREAD_THRESH = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@NO_MSG = common dso_local global i8* null, align 8
@E_NO_MEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"failed to allocate TNUM\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"failed to allocate internal buffer from the HC-Port\00", align 1
@E_INVALID_VALUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"'Disable Timeout Task' with invalid IPRCPT\00", align 1
@E_FULL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"too many timeout tasks\00", align 1
@E_INVALID_SELECTION = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"invalid sub command\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FmPcdRegisterReassmPort(%struct.TYPE_9__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_10__, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %6, align 8
  %14 = bitcast %struct.TYPE_10__* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 24, i1 false)
  %15 = load i32, i32* @E_OK, align 4
  store i32 %15, i32* %8, align 4
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %17 = call i32 @ASSERT_COND(%struct.TYPE_9__* %16)
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %19 = call i32 @ASSERT_COND(%struct.TYPE_9__* %18)
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @FmGetTimeStampScale(i32 %22)
  store i64 %23, i64* %10, align 8
  %24 = load i64, i64* %10, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = load i32, i32* @MAJOR, align 4
  %28 = load i32, i32* @E_NOT_AVAILABLE, align 4
  %29 = call i32 @RETURN_ERROR(i32 %27, i32 %28, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %26, %2
  %31 = load i64, i64* %10, align 8
  %32 = sub nsw i64 32, %31
  store i64 %32, i64* %10, align 8
  %33 = load i32, i32* @FM_PCD_MANIP_REASM_TIMEOUT_THREAD_THRESH, align 4
  %34 = load i64, i64* %12, align 8
  %35 = call i32 @LOG2(i32 %33, i64 %34)
  %36 = load i64, i64* %10, align 8
  %37 = load i64, i64* %12, align 8
  %38 = sub nsw i64 %36, %37
  store i64 %38, i64* %11, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %40 = call i64 @XX_VirtToPhys(%struct.TYPE_9__* %39)
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = sub nsw i64 %40, %43
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 2
  store i64 %44, i64* %45, align 8
  %46 = load i64, i64* %11, align 8
  %47 = trunc i64 %46 to i32
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  store i32 %47, i32* %48, align 8
  %49 = load i32, i32* @TRUE, align 4
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 1
  store i32 %49, i32* %50, align 4
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @FmHcPcdCcTimeoutReassm(i32 %53, %struct.TYPE_10__* %7, i32* %9)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* @E_OK, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %30
  %58 = load i32, i32* @MAJOR, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i8*, i8** @NO_MSG, align 8
  %61 = call i32 @RETURN_ERROR(i32 %58, i32 %59, i8* %60)
  br label %62

62:                                               ; preds = %57, %30
  %63 = load i32, i32* %9, align 4
  switch i32 %63, label %86 [
    i32 0, label %64
    i32 1, label %66
    i32 2, label %70
    i32 3, label %74
    i32 4, label %78
    i32 5, label %82
  ]

64:                                               ; preds = %62
  %65 = load i32, i32* @E_OK, align 4
  store i32 %65, i32* %3, align 4
  br label %93

66:                                               ; preds = %62
  %67 = load i32, i32* @MAJOR, align 4
  %68 = load i32, i32* @E_NO_MEMORY, align 4
  %69 = call i32 @RETURN_ERROR(i32 %67, i32 %68, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %70

70:                                               ; preds = %62, %66
  %71 = load i32, i32* @MAJOR, align 4
  %72 = load i32, i32* @E_NO_MEMORY, align 4
  %73 = call i32 @RETURN_ERROR(i32 %71, i32 %72, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  br label %74

74:                                               ; preds = %62, %70
  %75 = load i32, i32* @MAJOR, align 4
  %76 = load i32, i32* @E_INVALID_VALUE, align 4
  %77 = call i32 @RETURN_ERROR(i32 %75, i32 %76, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  br label %78

78:                                               ; preds = %62, %74
  %79 = load i32, i32* @MAJOR, align 4
  %80 = load i32, i32* @E_FULL, align 4
  %81 = call i32 @RETURN_ERROR(i32 %79, i32 %80, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %82

82:                                               ; preds = %62, %78
  %83 = load i32, i32* @MAJOR, align 4
  %84 = load i32, i32* @E_INVALID_SELECTION, align 4
  %85 = call i32 @RETURN_ERROR(i32 %83, i32 %84, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  br label %86

86:                                               ; preds = %62, %82
  %87 = load i32, i32* @MAJOR, align 4
  %88 = load i32, i32* @E_INVALID_VALUE, align 4
  %89 = load i8*, i8** @NO_MSG, align 8
  %90 = call i32 @RETURN_ERROR(i32 %87, i32 %88, i8* %89)
  br label %91

91:                                               ; preds = %86
  %92 = load i32, i32* @E_OK, align 4
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %91, %64
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ASSERT_COND(%struct.TYPE_9__*) #2

declare dso_local i64 @FmGetTimeStampScale(i32) #2

declare dso_local i32 @RETURN_ERROR(i32, i32, i8*) #2

declare dso_local i32 @LOG2(i32, i64) #2

declare dso_local i64 @XX_VirtToPhys(%struct.TYPE_9__*) #2

declare dso_local i32 @FmHcPcdCcTimeoutReassm(i32, %struct.TYPE_10__*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
