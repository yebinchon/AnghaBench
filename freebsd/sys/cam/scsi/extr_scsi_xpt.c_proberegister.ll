; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_xpt.c_proberegister.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_xpt.c_proberegister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.cam_periph = type { %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.cam_periph*, i64, i32 }
%union.ccb = type { i32 }

@.str = private unnamed_addr constant [52 x i8] c"proberegister: no probe CCB, can't register device\0A\00", align 1
@CAM_REQ_CMP_ERR = common dso_local global i32 0, align 4
@M_CAMXPT = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [69 x i8] c"proberegister: Unable to probe new device. Unable to allocate softc\0A\00", align 1
@periph_links = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@PROBE_INVALID = common dso_local global i32 0, align 4
@CAM_DEBUG_PROBE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"Probe started\0A\00", align 1
@scsi_delay = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_periph*, i8*)* @proberegister to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proberegister(%struct.cam_periph* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cam_periph*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %union.ccb*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  store %struct.cam_periph* %0, %struct.cam_periph** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %union.ccb*
  store %union.ccb* %9, %union.ccb** %6, align 8
  %10 = load %union.ccb*, %union.ccb** %6, align 8
  %11 = icmp eq %union.ccb* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = call i32 @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @CAM_REQ_CMP_ERR, align 4
  store i32 %14, i32* %3, align 4
  br label %73

15:                                               ; preds = %2
  %16 = load i32, i32* @M_CAMXPT, align 4
  %17 = load i32, i32* @M_NOWAIT, align 4
  %18 = call i64 @malloc(i32 32, i32 %16, i32 %17)
  %19 = inttoptr i64 %18 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %7, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %21 = icmp eq %struct.TYPE_7__* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = call i32 @printf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* @CAM_REQ_CMP_ERR, align 4
  store i32 %24, i32* %3, align 4
  br label %73

25:                                               ; preds = %15
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 3
  %28 = call i32 @TAILQ_INIT(i32* %27)
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 3
  %31 = load %union.ccb*, %union.ccb** %6, align 8
  %32 = bitcast %union.ccb* %31 to i32*
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @periph_links, i32 0, i32 0), align 4
  %34 = call i32 @TAILQ_INSERT_TAIL(i32* %30, i32* %32, i32 %33)
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 2
  store i64 0, i64* %36, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %38 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %39 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %38, i32 0, i32 1
  store %struct.TYPE_7__* %37, %struct.TYPE_7__** %39, align 8
  %40 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  store %struct.cam_periph* %40, %struct.cam_periph** %42, align 8
  %43 = load i32, i32* @PROBE_INVALID, align 4
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %47 = call i64 @cam_periph_acquire(%struct.cam_periph* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %25
  %50 = load i32, i32* @CAM_REQ_CMP_ERR, align 4
  store i32 %50, i32* %3, align 4
  br label %73

51:                                               ; preds = %25
  %52 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %53 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %52, i32 0, i32 0
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = load i32, i32* @CAM_DEBUG_PROBE, align 4
  %56 = call i32 @CAM_DEBUG(%struct.TYPE_8__* %54, i32 %55, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %57 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %58 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %57, i32 0, i32 0
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = call i32 @scsi_devise_transport(%struct.TYPE_8__* %59)
  %61 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %62 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %63 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %62, i32 0, i32 0
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* @scsi_delay, align 4
  %69 = call i32 @cam_periph_freeze_after_event(%struct.cam_periph* %61, i32* %67, i32 %68)
  %70 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %71 = call i32 @probeschedule(%struct.cam_periph* %70)
  %72 = load i32, i32* @CAM_REQ_CMP, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %51, %49, %22, %12
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, i32*, i32) #1

declare dso_local i64 @cam_periph_acquire(%struct.cam_periph*) #1

declare dso_local i32 @CAM_DEBUG(%struct.TYPE_8__*, i32, i8*) #1

declare dso_local i32 @scsi_devise_transport(%struct.TYPE_8__*) #1

declare dso_local i32 @cam_periph_freeze_after_event(%struct.cam_periph*, i32*, i32) #1

declare dso_local i32 @probeschedule(%struct.cam_periph*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
