; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/BM/extr_bm.h_BmBpidGet.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/BM/extr_bm.h_BmBpidGet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_9__*, i64*, i32 }
%struct.TYPE_9__ = type { i64 }

@.str = private unnamed_addr constant [12 x i8] c"BM BPID MEM\00", align 1
@E_OK = common dso_local global i32 0, align 4
@BM_FORCE_BPID = common dso_local global i32 0, align 4
@MAJOR = common dso_local global i32 0, align 4
@NO_MSG = common dso_local global i8* null, align 8
@ILLEGAL_BASE = common dso_local global i32 0, align 4
@E_INVALID_VALUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"IPC reply length mismatch\00", align 1
@WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"No Ipc - can't validate bpid.\00", align 1
@UINT32_MAX = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"Oops, %lx > UINT32_MAX!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32, i32)* @BmBpidGet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @BmBpidGet(%struct.TYPE_10__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_8__, align 8
  %12 = alloca %struct.TYPE_8__, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_9__, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 1, i64* %9, align 8
  store i64 1, i64* %10, align 8
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %86

18:                                               ; preds = %3
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = call i64 @MM_InRange(i32 %21, i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %18
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i64, i64* %9, align 8
  %32 = call i64 @MM_GetForce(i32 %29, i32 %30, i64 %31, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i64 %32, i64* %8, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %8, align 8
  br label %85

35:                                               ; preds = %18
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %79

40:                                               ; preds = %35
  %41 = load i32, i32* @E_OK, align 4
  store i32 %41, i32* %15, align 4
  %42 = call i32 @memset(%struct.TYPE_8__* %11, i32 0, i32 24)
  %43 = call i32 @memset(%struct.TYPE_8__* %12, i32 0, i32 24)
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  store i64 %45, i64* %46, align 8
  %47 = load i32, i32* @BM_FORCE_BPID, align 4
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 2
  store i32 %47, i32* %48, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %50 = load i64*, i64** %49, align 8
  %51 = call i32 @memcpy(i64* %50, %struct.TYPE_9__* %14, i32 8)
  store i32 8, i32* %13, align 4
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = bitcast %struct.TYPE_8__* %11 to i64*
  %56 = bitcast %struct.TYPE_8__* %12 to i64*
  %57 = call i32 @XX_IpcSendMessage(i64 %54, i64* %55, i32 12, i64* %56, i32* %13, i32* null, i32* null)
  store i32 %57, i32* %15, align 4
  %58 = load i32, i32* @E_OK, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %40
  %61 = load i32, i32* @MAJOR, align 4
  %62 = load i32, i32* %15, align 4
  %63 = load i8*, i8** @NO_MSG, align 8
  %64 = call i32 @REPORT_ERROR(i32 %61, i32 %62, i8* %63)
  %65 = load i32, i32* @ILLEGAL_BASE, align 4
  store i32 %65, i32* %4, align 4
  br label %103

66:                                               ; preds = %40
  %67 = load i32, i32* %13, align 4
  %68 = sext i32 %67 to i64
  %69 = icmp ne i64 %68, 8
  br i1 %69, label %70, label %75

70:                                               ; preds = %66
  %71 = load i32, i32* @MAJOR, align 4
  %72 = load i32, i32* @E_INVALID_VALUE, align 4
  %73 = call i32 @REPORT_ERROR(i32 %71, i32 %72, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %74 = load i32, i32* @ILLEGAL_BASE, align 4
  store i32 %74, i32* %4, align 4
  br label %103

75:                                               ; preds = %66
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %76, align 8
  %78 = call i32 @memcpy(i64* %8, %struct.TYPE_9__* %77, i32 4)
  br label %84

79:                                               ; preds = %35
  %80 = load i32, i32* @WARNING, align 4
  %81 = call i32 @DBG(i32 %80, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  store i64 %83, i64* %8, align 8
  br label %84

84:                                               ; preds = %79, %75
  br label %85

85:                                               ; preds = %84, %26
  br label %93

86:                                               ; preds = %3
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i64, i64* %9, align 8
  %91 = load i64, i64* %10, align 8
  %92 = call i64 @MM_Get(i32 %89, i64 %90, i64 %91, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i64 %92, i64* %8, align 8
  br label %93

93:                                               ; preds = %86, %85
  %94 = load i64, i64* %8, align 8
  %95 = load i64, i64* @UINT32_MAX, align 8
  %96 = icmp slt i64 %94, %95
  %97 = zext i1 %96 to i32
  %98 = load i64, i64* %8, align 8
  %99 = inttoptr i64 %98 to i8*
  %100 = call i32 @KASSERT(i32 %97, i8* %99)
  %101 = load i64, i64* %8, align 8
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %93, %70, %60
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i64 @MM_InRange(i32, i64) #1

declare dso_local i64 @MM_GetForce(i32, i32, i64, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @memcpy(i64*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @XX_IpcSendMessage(i64, i64*, i32, i64*, i32*, i32*, i32*) #1

declare dso_local i32 @REPORT_ERROR(i32, i32, i8*) #1

declare dso_local i32 @DBG(i32, i8*) #1

declare dso_local i64 @MM_Get(i32, i64, i64, i8*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
