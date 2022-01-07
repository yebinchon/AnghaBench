; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/QM/extr_qm.c_QmFqidPut.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/QM/extr_qm.c_QmFqidPut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64, i64 }

@.str = private unnamed_addr constant [17 x i8] c"QM rsrv FQID MEM\00", align 1
@ILLEGAL_BASE = common dso_local global i64 0, align 8
@E_OK = common dso_local global i32 0, align 4
@E_NOT_FOUND = common dso_local global i32 0, align 4
@QM_PUT_FQID = common dso_local global i32 0, align 4
@MAJOR = common dso_local global i32 0, align 4
@NO_MSG = common dso_local global i32 0, align 4
@WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"No Ipc - can't validate fqid.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @QmFqidPut(%struct.TYPE_9__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_7__, align 4
  %8 = alloca %struct.TYPE_8__, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @XX_LockIntrSpinlock(i32 %12)
  store i64 %13, i64* %6, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load i64, i64* %5, align 8
  %18 = trunc i64 %17 to i32
  %19 = call i64 @MM_GetForce(i32 %16, i32 %18, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %20 = load i64, i64* @ILLEGAL_BASE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %2
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @XX_UnlockIntrSpinlock(i32 %25, i64 %26)
  %28 = load i32, i32* @E_OK, align 4
  store i32 %28, i32* %3, align 4
  br label %112

29:                                               ; preds = %2
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load i64, i64* %5, align 8
  %34 = trunc i64 %33 to i32
  %35 = call i32 @MM_PutForce(i32 %32, i32 %34, i32 1)
  br label %36

36:                                               ; preds = %29
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i64, i64* %5, align 8
  %41 = trunc i64 %40 to i32
  %42 = call i64 @MM_InRange(i32 %39, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %67

44:                                               ; preds = %36
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load i64, i64* %5, align 8
  %49 = trunc i64 %48 to i32
  %50 = call i64 @MM_Put(i32 %47, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %44
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i64, i64* %6, align 8
  %57 = call i32 @XX_UnlockIntrSpinlock(i32 %55, i64 %56)
  %58 = load i32, i32* @E_OK, align 4
  store i32 %58, i32* %3, align 4
  br label %112

59:                                               ; preds = %44
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i64, i64* %6, align 8
  %64 = call i32 @XX_UnlockIntrSpinlock(i32 %62, i64 %63)
  %65 = load i32, i32* @E_NOT_FOUND, align 4
  %66 = call i32 @ERROR_CODE(i32 %65)
  store i32 %66, i32* %3, align 4
  br label %112

67:                                               ; preds = %36
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %101

72:                                               ; preds = %67
  %73 = load i32, i32* @E_OK, align 4
  store i32 %73, i32* %9, align 4
  %74 = call i32 @memset(%struct.TYPE_7__* %7, i32 0, i32 8)
  %75 = load i64, i64* %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  store i64 %75, i64* %76, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  store i64 0, i64* %77, align 8
  %78 = load i32, i32* @QM_PUT_FQID, align 4
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  store i32 %78, i32* %79, align 4
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @memcpy(i32 %81, %struct.TYPE_8__* %8, i32 16)
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = bitcast %struct.TYPE_7__* %7 to i64*
  %87 = call i32 @XX_IpcSendMessage(i64 %85, i64* %86, i32 20, i32* null, i32* null, i32* null, i32* null)
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* @E_OK, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %100

90:                                               ; preds = %72
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i64, i64* %6, align 8
  %95 = call i32 @XX_UnlockIntrSpinlock(i32 %93, i64 %94)
  %96 = load i32, i32* @MAJOR, align 4
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* @NO_MSG, align 4
  %99 = call i32 @RETURN_ERROR(i32 %96, i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %90, %72
  br label %104

101:                                              ; preds = %67
  %102 = load i32, i32* @WARNING, align 4
  %103 = call i32 @DBG(i32 %102, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %104

104:                                              ; preds = %101, %100
  br label %105

105:                                              ; preds = %104
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i64, i64* %6, align 8
  %110 = call i32 @XX_UnlockIntrSpinlock(i32 %108, i64 %109)
  %111 = load i32, i32* @E_OK, align 4
  store i32 %111, i32* %3, align 4
  br label %112

112:                                              ; preds = %105, %59, %52, %22
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i64 @XX_LockIntrSpinlock(i32) #1

declare dso_local i64 @MM_GetForce(i32, i32, i32, i8*) #1

declare dso_local i32 @XX_UnlockIntrSpinlock(i32, i64) #1

declare dso_local i32 @MM_PutForce(i32, i32, i32) #1

declare dso_local i64 @MM_InRange(i32, i32) #1

declare dso_local i64 @MM_Put(i32, i32) #1

declare dso_local i32 @ERROR_CODE(i32) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @memcpy(i32, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @XX_IpcSendMessage(i64, i64*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @RETURN_ERROR(i32, i32, i32) #1

declare dso_local i32 @DBG(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
