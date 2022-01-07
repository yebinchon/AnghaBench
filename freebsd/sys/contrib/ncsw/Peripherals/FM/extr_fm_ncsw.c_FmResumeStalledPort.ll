; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/extr_fm_ncsw.c_FmResumeStalledPort.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/extr_fm_ncsw.c_FmResumeStalledPort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.TYPE_8__*, i32, i64*, %struct.fman_fpm_regs* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.fman_fpm_regs = type { i32 }
%struct.TYPE_9__ = type { i32, i32*, i32 }

@NCSW_MASTER_ID = common dso_local global i64 0, align 8
@FM_RESUME_STALLED_PORT = common dso_local global i32 0, align 4
@E_OK = common dso_local global i64 0, align 8
@MINOR = common dso_local global i32 0, align 4
@NO_MSG = common dso_local global i8* null, align 8
@MAJOR = common dso_local global i32 0, align 4
@E_INVALID_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"IPC reply length mismatch\00", align 1
@E_NOT_SUPPORTED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"Either IPC or 'baseAddress' is required!\00", align 1
@E_NOT_AVAILABLE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"Not available for this FM revision!\00", align 1
@E_INVALID_STATE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"Can't get port status\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FmResumeStalledPort(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.fman_fpm_regs*, align 8
  %10 = alloca %struct.TYPE_9__, align 8
  %11 = alloca %struct.TYPE_9__, align 8
  %12 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load i64, i64* %4, align 8
  %14 = inttoptr i64 %13 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %14, %struct.TYPE_10__** %6, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 4
  %17 = load %struct.fman_fpm_regs*, %struct.fman_fpm_regs** %16, align 8
  store %struct.fman_fpm_regs* %17, %struct.fman_fpm_regs** %9, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @NCSW_MASTER_ID, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %72

23:                                               ; preds = %2
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %72, label %28

28:                                               ; preds = %23
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 3
  %31 = load i64*, i64** %30, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %72

35:                                               ; preds = %28
  %36 = call i32 @memset(%struct.TYPE_9__* %10, i32 0, i32 24)
  %37 = call i32 @memset(%struct.TYPE_9__* %11, i32 0, i32 24)
  %38 = load i32, i32* @FM_RESUME_STALLED_PORT, align 4
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 2
  store i32 %38, i32* %39, align 8
  %40 = load i32, i32* %5, align 4
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  store i32 %40, i32* %43, align 4
  store i32 4, i32* %12, align 4
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 3
  %46 = load i64*, i64** %45, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 0
  %48 = load i64, i64* %47, align 8
  %49 = bitcast %struct.TYPE_9__* %10 to i32*
  %50 = bitcast %struct.TYPE_9__* %11 to i32*
  %51 = call i64 @XX_IpcSendMessage(i64 %48, i32* %49, i32 8, i32* %50, i32* %12, i32* null, i32* null)
  store i64 %51, i64* %7, align 8
  %52 = load i64, i64* %7, align 8
  %53 = load i64, i64* @E_OK, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %35
  %56 = load i32, i32* @MINOR, align 4
  %57 = load i64, i64* %7, align 8
  %58 = load i8*, i8** @NO_MSG, align 8
  %59 = call i32 @RETURN_ERROR(i32 %56, i64 %57, i8* %58)
  br label %60

60:                                               ; preds = %55, %35
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = icmp ne i64 %62, 4
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load i32, i32* @MAJOR, align 4
  %66 = load i64, i64* @E_INVALID_VALUE, align 8
  %67 = call i32 @RETURN_ERROR(i32 %65, i64 %66, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %68

68:                                               ; preds = %64, %60
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  store i64 %71, i64* %3, align 8
  br label %114

72:                                               ; preds = %28, %23, %2
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %72
  %78 = load i32, i32* @MINOR, align 4
  %79 = load i64, i64* @E_NOT_SUPPORTED, align 8
  %80 = call i32 @RETURN_ERROR(i32 %78, i64 %79, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %81

81:                                               ; preds = %77, %72
  br label %82

82:                                               ; preds = %81
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp sge i32 %88, 6
  br i1 %89, label %90, label %94

90:                                               ; preds = %82
  %91 = load i32, i32* @MINOR, align 4
  %92 = load i64, i64* @E_NOT_AVAILABLE, align 8
  %93 = call i32 @RETURN_ERROR(i32 %91, i64 %92, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %94

94:                                               ; preds = %90, %82
  %95 = load i64, i64* %4, align 8
  %96 = load i32, i32* %5, align 4
  %97 = call i64 @FmIsPortStalled(i64 %95, i32 %96, i32* %8)
  store i64 %97, i64* %7, align 8
  %98 = load i64, i64* %7, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %94
  %101 = load i32, i32* @MAJOR, align 4
  %102 = load i64, i64* @E_INVALID_STATE, align 8
  %103 = call i32 @RETURN_ERROR(i32 %101, i64 %102, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %104

104:                                              ; preds = %100, %94
  %105 = load i32, i32* %8, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %104
  %108 = load i64, i64* @E_OK, align 8
  store i64 %108, i64* %3, align 8
  br label %114

109:                                              ; preds = %104
  %110 = load %struct.fman_fpm_regs*, %struct.fman_fpm_regs** %9, align 8
  %111 = load i32, i32* %5, align 4
  %112 = call i32 @fman_resume_stalled_port(%struct.fman_fpm_regs* %110, i32 %111)
  %113 = load i64, i64* @E_OK, align 8
  store i64 %113, i64* %3, align 8
  br label %114

114:                                              ; preds = %109, %107, %68
  %115 = load i64, i64* %3, align 8
  ret i64 %115
}

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i64 @XX_IpcSendMessage(i64, i32*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @RETURN_ERROR(i32, i64, i8*) #1

declare dso_local i64 @FmIsPortStalled(i64, i32, i32*) #1

declare dso_local i32 @fman_resume_stalled_port(%struct.fman_fpm_regs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
