; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/QM/extr_qm.c_QmFqidGet.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/QM/extr_qm.c_QmFqidGet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i64, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_9__*, i32*, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"QM FQID MEM\00", align 1
@ILLEGAL_BASE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"QM rsrv FQID MEM\00", align 1
@E_OK = common dso_local global i64 0, align 8
@QM_FORCE_FQID = common dso_local global i32 0, align 4
@MAJOR = common dso_local global i32 0, align 4
@NO_MSG = common dso_local global i8* null, align 8
@E_INVALID_VALUE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"IPC reply length mismatch\00", align 1
@WARNING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"No Ipc - can't validate fqid.\00", align 1
@UINT32_MAX = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [25 x i8] c"Oops, %lx > UINT32_MAX!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @QmFqidGet(%struct.TYPE_10__* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_8__, align 8
  %14 = alloca %struct.TYPE_8__, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_9__, align 4
  %17 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @XX_LockIntrSpinlock(i32 %20)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %114

24:                                               ; preds = %5
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = call i64 @MM_GetForce(i32 %27, i64 %29, i64 %31, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i64 %32, i64* %11, align 8
  %33 = load i64, i64* %11, align 8
  %34 = load i64, i64* @ILLEGAL_BASE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %113

36:                                               ; preds = %24
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = call i64 @MM_GetForce(i32 %39, i64 %41, i64 %43, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i64 %44, i64* %11, align 8
  %45 = load i64, i64* %11, align 8
  %46 = load i64, i64* @ILLEGAL_BASE, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %36
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  store i64 %50, i64* %11, align 8
  br label %112

51:                                               ; preds = %36
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %106

56:                                               ; preds = %51
  %57 = load i64, i64* @E_OK, align 8
  store i64 %57, i64* %17, align 8
  %58 = call i32 @memset(%struct.TYPE_8__* %13, i32 0, i32 24)
  %59 = call i32 @memset(%struct.TYPE_8__* %14, i32 0, i32 24)
  %60 = load i32, i32* %10, align 4
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  store i32 %60, i32* %61, align 4
  %62 = load i32, i32* %7, align 4
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* @QM_FORCE_FQID, align 4
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 2
  store i32 %64, i32* %65, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @memcpy(i32* %67, %struct.TYPE_9__* %16, i32 8)
  store i32 8, i32* %15, align 4
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = bitcast %struct.TYPE_8__* %13 to i32*
  %73 = bitcast %struct.TYPE_8__* %14 to i32*
  %74 = call i64 @XX_IpcSendMessage(i64 %71, i32* %72, i32 12, i32* %73, i32* %15, i32* null, i32* null)
  store i64 %74, i64* %17, align 8
  %75 = load i64, i64* @E_OK, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %56
  %78 = load i32, i32* @MAJOR, align 4
  %79 = load i64, i64* %17, align 8
  %80 = load i8*, i8** @NO_MSG, align 8
  %81 = call i32 @REPORT_ERROR(i32 %78, i64 %79, i8* %80)
  br label %82

82:                                               ; preds = %77, %56
  %83 = load i32, i32* %15, align 4
  %84 = sext i32 %83 to i64
  %85 = icmp ne i64 %84, 8
  br i1 %85, label %86, label %90

86:                                               ; preds = %82
  %87 = load i32, i32* @MAJOR, align 4
  %88 = load i64, i64* @E_INVALID_VALUE, align 8
  %89 = call i32 @REPORT_ERROR(i32 %87, i64 %88, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %90

90:                                               ; preds = %86, %82
  %91 = load i64, i64* %17, align 8
  %92 = load i64, i64* @E_OK, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %98, label %94

94:                                               ; preds = %90
  %95 = load i32, i32* %15, align 4
  %96 = sext i32 %95 to i64
  %97 = icmp ne i64 %96, 8
  br i1 %97, label %98, label %100

98:                                               ; preds = %94, %90
  %99 = load i64, i64* @ILLEGAL_BASE, align 8
  store i64 %99, i64* %11, align 8
  br label %105

100:                                              ; preds = %94
  %101 = bitcast i64* %11 to i32*
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %102, align 8
  %104 = call i32 @memcpy(i32* %101, %struct.TYPE_9__* %103, i32 4)
  br label %105

105:                                              ; preds = %100, %98
  br label %111

106:                                              ; preds = %51
  %107 = load i32, i32* @WARNING, align 4
  %108 = call i32 @DBG(i32 %107, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %109 = load i32, i32* %10, align 4
  %110 = sext i32 %109 to i64
  store i64 %110, i64* %11, align 8
  br label %111

111:                                              ; preds = %106, %105
  br label %112

112:                                              ; preds = %111, %48
  br label %113

113:                                              ; preds = %112, %24
  br label %121

114:                                              ; preds = %5
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* %8, align 4
  %120 = call i64 @MM_Get(i32 %117, i32 %118, i32 %119, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i64 %120, i64* %11, align 8
  br label %121

121:                                              ; preds = %114, %113
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* %12, align 4
  %126 = call i32 @XX_UnlockIntrSpinlock(i32 %124, i32 %125)
  %127 = load i64, i64* %11, align 8
  %128 = load i64, i64* @UINT32_MAX, align 8
  %129 = icmp slt i64 %127, %128
  %130 = zext i1 %129 to i32
  %131 = load i64, i64* %11, align 8
  %132 = inttoptr i64 %131 to i8*
  %133 = call i32 @KASSERT(i32 %130, i8* %132)
  %134 = load i64, i64* %11, align 8
  %135 = trunc i64 %134 to i32
  ret i32 %135
}

declare dso_local i32 @XX_LockIntrSpinlock(i32) #1

declare dso_local i64 @MM_GetForce(i32, i64, i64, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_9__*, i32) #1

declare dso_local i64 @XX_IpcSendMessage(i64, i32*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @REPORT_ERROR(i32, i64, i8*) #1

declare dso_local i32 @DBG(i32, i8*) #1

declare dso_local i64 @MM_Get(i32, i32, i32, i8*) #1

declare dso_local i32 @XX_UnlockIntrSpinlock(i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
