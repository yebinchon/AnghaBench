; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/extr_fm_ncsw.c_FmSetFmanCtrlIntr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/extr_fm_ncsw.c_FmSetFmanCtrlIntr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.fman_fpm_regs*, i64* }
%struct.fman_fpm_regs = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@NCSW_MASTER_ID = common dso_local global i64 0, align 8
@FM_SET_FMAN_CTRL_EVENTS_ENABLE = common dso_local global i32 0, align 4
@E_OK = common dso_local global i64 0, align 8
@MINOR = common dso_local global i32 0, align 4
@NO_MSG = common dso_local global i8* null, align 8
@E_NOT_SUPPORTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"Either IPC or 'baseAddress' is required!\00", align 1
@FM_NUM_OF_FMAN_CTRL_EVENT_REGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FmSetFmanCtrlIntr(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.fman_fpm_regs*, align 8
  %9 = alloca %struct.TYPE_7__, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_6__, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i64, i64* %4, align 8
  %13 = inttoptr i64 %12 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %7, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %16 = load %struct.fman_fpm_regs*, %struct.fman_fpm_regs** %15, align 8
  store %struct.fman_fpm_regs* %16, %struct.fman_fpm_regs** %8, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @NCSW_MASTER_ID, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %61

22:                                               ; preds = %3
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = load %struct.fman_fpm_regs*, %struct.fman_fpm_regs** %24, align 8
  %26 = icmp ne %struct.fman_fpm_regs* %25, null
  br i1 %26, label %61, label %27

27:                                               ; preds = %22
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 2
  %30 = load i64*, i64** %29, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %61

34:                                               ; preds = %27
  %35 = load i32, i32* %5, align 4
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* %6, align 4
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  store i32 %37, i32* %38, align 4
  %39 = call i32 @memset(%struct.TYPE_6__* %11, i32 0, i32 8)
  %40 = load i32, i32* @FM_SET_FMAN_CTRL_EVENTS_ENABLE, align 4
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  store i32 %40, i32* %41, align 4
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @memcpy(i32 %43, %struct.TYPE_7__* %9, i32 8)
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 2
  %47 = load i64*, i64** %46, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 0
  %49 = load i64, i64* %48, align 8
  %50 = bitcast %struct.TYPE_6__* %11 to i32*
  %51 = call i64 @XX_IpcSendMessage(i64 %49, i32* %50, i32 12, i32* null, i32* null, i32* null, i32* null)
  store i64 %51, i64* %10, align 8
  %52 = load i64, i64* %10, align 8
  %53 = load i64, i64* @E_OK, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %34
  %56 = load i32, i32* @MINOR, align 4
  %57 = load i64, i64* %10, align 8
  %58 = load i8*, i8** @NO_MSG, align 8
  %59 = call i32 @REPORT_ERROR(i32 %56, i64 %57, i8* %58)
  br label %60

60:                                               ; preds = %55, %34
  br label %81

61:                                               ; preds = %27, %22, %3
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = load %struct.fman_fpm_regs*, %struct.fman_fpm_regs** %63, align 8
  %65 = icmp ne %struct.fman_fpm_regs* %64, null
  br i1 %65, label %70, label %66

66:                                               ; preds = %61
  %67 = load i32, i32* @MINOR, align 4
  %68 = load i64, i64* @E_NOT_SUPPORTED, align 8
  %69 = call i32 @REPORT_ERROR(i32 %67, i64 %68, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %81

70:                                               ; preds = %61
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @FM_NUM_OF_FMAN_CTRL_EVENT_REGS, align 4
  %74 = icmp slt i32 %72, %73
  %75 = zext i1 %74 to i32
  %76 = call i32 @ASSERT_COND(i32 %75)
  %77 = load %struct.fman_fpm_regs*, %struct.fman_fpm_regs** %8, align 8
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @fman_set_ctrl_intr(%struct.fman_fpm_regs* %77, i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %71, %66, %60
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @memcpy(i32, %struct.TYPE_7__*, i32) #1

declare dso_local i64 @XX_IpcSendMessage(i64, i32*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @REPORT_ERROR(i32, i64, i8*) #1

declare dso_local i32 @ASSERT_COND(i32) #1

declare dso_local i32 @fman_set_ctrl_intr(%struct.fman_fpm_regs*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
