; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_pcd.c_FmPcdUnregisterReassmPort.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_pcd.c_FmPcdUnregisterReassmPort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_10__ = type { i32, i64, i32 }

@E_OK = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@MAJOR = common dso_local global i32 0, align 4
@NO_MSG = common dso_local global i8* null, align 8
@E_INVALID_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@E_INVALID_HANDLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Disable Timeout Task with invalid IPRCPT\00", align 1
@E_INVALID_VALUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FmPcdUnregisterReassmPort(%struct.TYPE_9__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_10__, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_9__* %10, %struct.TYPE_9__** %6, align 8
  %11 = bitcast %struct.TYPE_10__* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 24, i1 false)
  %12 = load i32, i32* @E_OK, align 4
  store i32 %12, i32* %9, align 4
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %14 = call i32 @ASSERT_COND(%struct.TYPE_9__* %13)
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %16 = call i32 @ASSERT_COND(%struct.TYPE_9__* %15)
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %18 = call i64 @XX_VirtToPhys(%struct.TYPE_9__* %17)
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = sub nsw i64 %18, %21
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 1
  store i64 %22, i64* %23, align 8
  %24 = load i32, i32* @FALSE, align 4
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  store i32 %24, i32* %25, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @FmHcPcdCcTimeoutReassm(i32 %28, %struct.TYPE_10__* %7, i32* %8)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* @E_OK, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %2
  %33 = load i32, i32* @MAJOR, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i8*, i8** @NO_MSG, align 8
  %36 = call i32 @RETURN_ERROR(i32 %33, i32 %34, i8* %35)
  br label %37

37:                                               ; preds = %32, %2
  %38 = load i32, i32* %8, align 4
  switch i32 %38, label %53 [
    i32 0, label %39
    i32 1, label %41
    i32 2, label %45
    i32 3, label %49
  ]

39:                                               ; preds = %37
  %40 = load i32, i32* @E_OK, align 4
  store i32 %40, i32* %3, align 4
  br label %60

41:                                               ; preds = %37
  %42 = load i32, i32* @MAJOR, align 4
  %43 = load i32, i32* @E_INVALID_STATE, align 4
  %44 = call i32 @RETURN_ERROR(i32 %42, i32 %43, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %45

45:                                               ; preds = %37, %41
  %46 = load i32, i32* @MAJOR, align 4
  %47 = load i32, i32* @E_INVALID_STATE, align 4
  %48 = call i32 @RETURN_ERROR(i32 %46, i32 %47, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %49

49:                                               ; preds = %37, %45
  %50 = load i32, i32* @MAJOR, align 4
  %51 = load i32, i32* @E_INVALID_HANDLE, align 4
  %52 = call i32 @RETURN_ERROR(i32 %50, i32 %51, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %53

53:                                               ; preds = %37, %49
  %54 = load i32, i32* @MAJOR, align 4
  %55 = load i32, i32* @E_INVALID_VALUE, align 4
  %56 = load i8*, i8** @NO_MSG, align 8
  %57 = call i32 @RETURN_ERROR(i32 %54, i32 %55, i8* %56)
  br label %58

58:                                               ; preds = %53
  %59 = load i32, i32* @E_OK, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %58, %39
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ASSERT_COND(%struct.TYPE_9__*) #2

declare dso_local i64 @XX_VirtToPhys(%struct.TYPE_9__*) #2

declare dso_local i32 @FmHcPcdCcTimeoutReassm(i32, %struct.TYPE_10__*, i32*) #2

declare dso_local i32 @RETURN_ERROR(i32, i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
