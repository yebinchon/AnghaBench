; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/extr_fm_ncsw.c_FmGetFmanCtrlIntr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/extr_fm_ncsw.c_FmGetFmanCtrlIntr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.fman_fpm_regs*, i64* }
%struct.fman_fpm_regs = type { i32 }
%struct.TYPE_5__ = type { i32, i32*, i32 }

@NCSW_MASTER_ID = common dso_local global i64 0, align 8
@FM_GET_FMAN_CTRL_EVENTS_ENABLE = common dso_local global i32 0, align 4
@E_OK = common dso_local global i64 0, align 8
@MINOR = common dso_local global i32 0, align 4
@NO_MSG = common dso_local global i8* null, align 8
@E_INVALID_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"IPC reply length mismatch\00", align 1
@E_NOT_SUPPORTED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"Either IPC or 'baseAddress' is required!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FmGetFmanCtrlIntr(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.fman_fpm_regs*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_5__, align 8
  %10 = alloca %struct.TYPE_5__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load i64, i64* %4, align 8
  %14 = inttoptr i64 %13 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %6, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load %struct.fman_fpm_regs*, %struct.fman_fpm_regs** %16, align 8
  store %struct.fman_fpm_regs* %17, %struct.fman_fpm_regs** %7, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @NCSW_MASTER_ID, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %73

23:                                               ; preds = %2
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load %struct.fman_fpm_regs*, %struct.fman_fpm_regs** %25, align 8
  %27 = icmp ne %struct.fman_fpm_regs* %26, null
  br i1 %27, label %73, label %28

28:                                               ; preds = %23
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 2
  %31 = load i64*, i64** %30, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %73

35:                                               ; preds = %28
  %36 = call i32 @memset(%struct.TYPE_5__* %9, i32 0, i32 24)
  %37 = call i32 @memset(%struct.TYPE_5__* %10, i32 0, i32 24)
  %38 = load i32, i32* @FM_GET_FMAN_CTRL_EVENTS_ENABLE, align 4
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  store i32 %38, i32* %39, align 8
  %40 = load i32, i32* %5, align 4
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  store i32 %40, i32* %43, align 4
  store i32 8, i32* %11, align 4
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  %46 = load i64*, i64** %45, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 0
  %48 = load i64, i64* %47, align 8
  %49 = bitcast %struct.TYPE_5__* %9 to i32*
  %50 = bitcast %struct.TYPE_5__* %10 to i32*
  %51 = call i64 @XX_IpcSendMessage(i64 %48, i32* %49, i32 8, i32* %50, i32* %11, i32* null, i32* null)
  store i64 %51, i64* %8, align 8
  %52 = load i64, i64* %8, align 8
  %53 = load i64, i64* @E_OK, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %35
  %56 = load i32, i32* @MINOR, align 4
  %57 = load i64, i64* %8, align 8
  %58 = load i8*, i8** @NO_MSG, align 8
  %59 = call i32 @REPORT_ERROR(i32 %56, i64 %57, i8* %58)
  store i32 0, i32* %3, align 4
  br label %87

60:                                               ; preds = %35
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = icmp ne i64 %62, 8
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load i32, i32* @MINOR, align 4
  %66 = load i64, i64* @E_INVALID_VALUE, align 8
  %67 = call i32 @REPORT_ERROR(i32 %65, i64 %66, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %87

68:                                               ; preds = %60
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @memcpy(i32* %12, i32 %70, i32 4)
  %72 = load i32, i32* %12, align 4
  store i32 %72, i32* %3, align 4
  br label %87

73:                                               ; preds = %28, %23, %2
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load %struct.fman_fpm_regs*, %struct.fman_fpm_regs** %75, align 8
  %77 = icmp ne %struct.fman_fpm_regs* %76, null
  br i1 %77, label %82, label %78

78:                                               ; preds = %73
  %79 = load i32, i32* @MINOR, align 4
  %80 = load i64, i64* @E_NOT_SUPPORTED, align 8
  %81 = call i32 @REPORT_ERROR(i32 %79, i64 %80, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %87

82:                                               ; preds = %73
  br label %83

83:                                               ; preds = %82
  %84 = load %struct.fman_fpm_regs*, %struct.fman_fpm_regs** %7, align 8
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @fman_get_ctrl_intr(%struct.fman_fpm_regs* %84, i32 %85)
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %83, %78, %68, %64, %55
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i64 @XX_IpcSendMessage(i64, i32*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @REPORT_ERROR(i32, i64, i8*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @fman_get_ctrl_intr(%struct.fman_fpm_regs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
