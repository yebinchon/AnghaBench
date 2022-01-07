; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/mmc/extr_mmc_xpt.c_mmcprobe_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/mmc/extr_mmc_xpt.c_mmcprobe_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_periph = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i64, i32, %struct.cam_periph*, i64, i64 }
%union.ccb = type { i32 }

@CAM_DEBUG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"mmcprobe_register\0A\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"mmcprobe_register: no probe CCB, can't register device\0A\00", align 1
@CAM_REQ_CMP_ERR = common dso_local global i32 0, align 4
@M_CAMXPT = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [69 x i8] c"proberegister: Unable to probe new device. Unable to allocate softc\0A\00", align 1
@PROBE_INVALID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [54 x i8] c"proberegister: cam_periph_acquire failed (status=%d)\0A\00", align 1
@CAM_DEBUG_PROBE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"Probe started\0A\00", align 1
@CAM_DEV_UNCONFIGURED = common dso_local global i32 0, align 4
@PROBE_RESET = common dso_local global i32 0, align 4
@PROBE_IDENTIFY = common dso_local global i32 0, align 4
@CAM_PRIORITY_XPT = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_periph*, i8*)* @mmcprobe_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmcprobe_register(%struct.cam_periph* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cam_periph*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %union.ccb*, align 8
  %8 = alloca i32, align 4
  store %struct.cam_periph* %0, %struct.cam_periph** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %10 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %9, i32 0, i32 0
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = load i32, i32* @CAM_DEBUG_TRACE, align 4
  %13 = call i32 @CAM_DEBUG(%struct.TYPE_7__* %11, i32 %12, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %union.ccb*
  store %union.ccb* %15, %union.ccb** %7, align 8
  %16 = load %union.ccb*, %union.ccb** %7, align 8
  %17 = icmp eq %union.ccb* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32, i32* @CAM_REQ_CMP_ERR, align 4
  store i32 %20, i32* %3, align 4
  br label %91

21:                                               ; preds = %2
  %22 = load i32, i32* @M_CAMXPT, align 4
  %23 = load i32, i32* @M_NOWAIT, align 4
  %24 = call i64 @malloc(i32 40, i32 %22, i32 %23)
  %25 = inttoptr i64 %24 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %25, %struct.TYPE_6__** %6, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %27 = icmp eq %struct.TYPE_6__* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0))
  %30 = load i32, i32* @CAM_REQ_CMP_ERR, align 4
  store i32 %30, i32* %3, align 4
  br label %91

31:                                               ; preds = %21
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 4
  store i64 0, i64* %33, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 3
  store i64 0, i64* %35, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %37 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %38 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %37, i32 0, i32 1
  store %struct.TYPE_6__* %36, %struct.TYPE_6__** %38, align 8
  %39 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 2
  store %struct.cam_periph* %39, %struct.cam_periph** %41, align 8
  %42 = load i32, i32* @PROBE_INVALID, align 4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  store i64 0, i64* %46, align 8
  %47 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %48 = call i32 @cam_periph_acquire(%struct.cam_periph* %47)
  store i32 %48, i32* %8, align 4
  %49 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %50 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %49, i32 0, i32 0
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = call i32 @memset(i32* %54, i32 0, i32 4)
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %31
  %59 = load i32, i32* %8, align 4
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* @CAM_REQ_CMP_ERR, align 4
  store i32 %61, i32* %3, align 4
  br label %91

62:                                               ; preds = %31
  %63 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %64 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %63, i32 0, i32 0
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = load i32, i32* @CAM_DEBUG_PROBE, align 4
  %67 = call i32 @CAM_DEBUG(%struct.TYPE_7__* %65, i32 %66, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %68 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %69 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %68, i32 0, i32 0
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @CAM_DEV_UNCONFIGURED, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %62
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %80 = load i32, i32* @PROBE_RESET, align 4
  %81 = call i32 @PROBE_SET_ACTION(%struct.TYPE_6__* %79, i32 %80)
  br label %86

82:                                               ; preds = %62
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %84 = load i32, i32* @PROBE_IDENTIFY, align 4
  %85 = call i32 @PROBE_SET_ACTION(%struct.TYPE_6__* %83, i32 %84)
  br label %86

86:                                               ; preds = %82, %78
  %87 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %88 = load i32, i32* @CAM_PRIORITY_XPT, align 4
  %89 = call i32 @xpt_schedule(%struct.cam_periph* %87, i32 %88)
  %90 = load i32, i32* @CAM_REQ_CMP, align 4
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %86, %58, %28, %18
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @CAM_DEBUG(%struct.TYPE_7__*, i32, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @cam_periph_acquire(%struct.cam_periph*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @PROBE_SET_ACTION(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @xpt_schedule(%struct.cam_periph*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
