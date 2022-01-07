; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/extr_fm_ncsw.c_FmAllocFmanCtrlEventReg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/extr_fm_ncsw.c_FmAllocFmanCtrlEventReg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64*, i64* }
%struct.TYPE_6__ = type { i32, i64, i32 }

@E_INVALID_HANDLE = common dso_local global i32 0, align 4
@NCSW_MASTER_ID = common dso_local global i64 0, align 8
@FM_ALLOC_FMAN_CTRL_EVENT_REG = common dso_local global i32 0, align 4
@E_OK = common dso_local global i32 0, align 4
@MAJOR = common dso_local global i32 0, align 4
@NO_MSG = common dso_local global i8* null, align 8
@E_INVALID_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"IPC reply length mismatch\00", align 1
@MINOR = common dso_local global i32 0, align 4
@E_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"running in guest-mode without IPC!\00", align 1
@FM_NUM_OF_FMAN_CTRL_EVENT_REGS = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@E_BUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"No resource - FMan controller event register.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FmAllocFmanCtrlEventReg(i64 %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__, align 8
  %10 = alloca %struct.TYPE_6__, align 8
  %11 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64* %1, i64** %5, align 8
  %12 = load i64, i64* %4, align 8
  %13 = inttoptr i64 %12 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %6, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %15 = load i32, i32* @E_INVALID_HANDLE, align 4
  %16 = call i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_7__* %14, i32 %15)
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @NCSW_MASTER_ID, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %65

22:                                               ; preds = %2
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 2
  %25 = load i64*, i64** %24, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %65

29:                                               ; preds = %22
  %30 = call i32 @memset(%struct.TYPE_6__* %9, i32 0, i32 24)
  %31 = call i32 @memset(%struct.TYPE_6__* %10, i32 0, i32 24)
  %32 = load i32, i32* @FM_ALLOC_FMAN_CTRL_EVENT_REG, align 4
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 2
  store i32 %32, i32* %33, align 8
  store i32 12, i32* %11, align 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 2
  %36 = load i64*, i64** %35, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 0
  %38 = load i64, i64* %37, align 8
  %39 = bitcast %struct.TYPE_6__* %9 to i64*
  %40 = bitcast %struct.TYPE_6__* %10 to i64*
  %41 = call i32 @XX_IpcSendMessage(i64 %38, i64* %39, i32 4, i64* %40, i32* %11, i32* null, i32* null)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* @E_OK, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %29
  %45 = load i32, i32* @MAJOR, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i8*, i8** @NO_MSG, align 8
  %48 = call i32 @RETURN_ERROR(i32 %45, i32 %46, i8* %47)
  br label %49

49:                                               ; preds = %44, %29
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = icmp ne i64 %51, 12
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i32, i32* @MAJOR, align 4
  %55 = load i32, i32* @E_INVALID_VALUE, align 4
  %56 = call i32 @RETURN_ERROR(i32 %54, i32 %55, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %57

57:                                               ; preds = %53, %49
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to i64*
  %61 = load i64, i64* %60, align 8
  %62 = load i64*, i64** %5, align 8
  store i64 %61, i64* %62, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* %3, align 4
  br label %112

65:                                               ; preds = %22, %2
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @NCSW_MASTER_ID, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %65
  %72 = load i32, i32* @MINOR, align 4
  %73 = load i32, i32* @E_NOT_SUPPORTED, align 4
  %74 = call i32 @RETURN_ERROR(i32 %72, i32 %73, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %75

75:                                               ; preds = %71, %65
  br label %76

76:                                               ; preds = %75
  store i64 0, i64* %7, align 8
  br label %77

77:                                               ; preds = %99, %76
  %78 = load i64, i64* %7, align 8
  %79 = load i64, i64* @FM_NUM_OF_FMAN_CTRL_EVENT_REGS, align 8
  %80 = icmp ult i64 %78, %79
  br i1 %80, label %81, label %102

81:                                               ; preds = %77
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  %84 = load i64*, i64** %83, align 8
  %85 = load i64, i64* %7, align 8
  %86 = getelementptr inbounds i64, i64* %84, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %98, label %89

89:                                               ; preds = %81
  %90 = load i64, i64* @TRUE, align 8
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  %93 = load i64*, i64** %92, align 8
  %94 = load i64, i64* %7, align 8
  %95 = getelementptr inbounds i64, i64* %93, i64 %94
  store i64 %90, i64* %95, align 8
  %96 = load i64, i64* %7, align 8
  %97 = load i64*, i64** %5, align 8
  store i64 %96, i64* %97, align 8
  br label %102

98:                                               ; preds = %81
  br label %99

99:                                               ; preds = %98
  %100 = load i64, i64* %7, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %7, align 8
  br label %77

102:                                              ; preds = %89, %77
  %103 = load i64, i64* %7, align 8
  %104 = load i64, i64* @FM_NUM_OF_FMAN_CTRL_EVENT_REGS, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %102
  %107 = load i32, i32* @MAJOR, align 4
  %108 = load i32, i32* @E_BUSY, align 4
  %109 = call i32 @RETURN_ERROR(i32 %107, i32 %108, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  br label %110

110:                                              ; preds = %106, %102
  %111 = load i32, i32* @E_OK, align 4
  store i32 %111, i32* %3, align 4
  br label %112

112:                                              ; preds = %110, %57
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @XX_IpcSendMessage(i64, i64*, i32, i64*, i32*, i32*, i32*) #1

declare dso_local i32 @RETURN_ERROR(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
