; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_cd.c_cdprevent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_cd.c_cdprevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_periph = type { i64, i32 }
%union.ccb = type { i32 }
%struct.cd_softc = type { i32 }

@CAM_DEBUG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"entering cdprevent\0A\00", align 1
@PR_ALLOW = common dso_local global i32 0, align 4
@CD_FLAG_DISC_LOCKED = common dso_local global i32 0, align 4
@PR_PREVENT = common dso_local global i32 0, align 4
@CAM_PRIORITY_NORMAL = common dso_local global i32 0, align 4
@cd_retry_count = common dso_local global i32 0, align 4
@MSG_SIMPLE_Q_TAG = common dso_local global i32 0, align 4
@SSD_FULL_SIZE = common dso_local global i32 0, align 4
@cderror = common dso_local global i32 0, align 4
@CAM_RETRY_SELTO = common dso_local global i32 0, align 4
@SF_RETRY_UA = common dso_local global i32 0, align 4
@SF_NO_PRINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_periph*, i32)* @cdprevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdprevent(%struct.cam_periph* %0, i32 %1) #0 {
  %3 = alloca %struct.cam_periph*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.ccb*, align 8
  %6 = alloca %struct.cd_softc*, align 8
  %7 = alloca i32, align 4
  store %struct.cam_periph* %0, %struct.cam_periph** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %9 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @CAM_DEBUG_TRACE, align 4
  %12 = call i32 @CAM_DEBUG(i32 %10, i32 %11, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %14 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.cd_softc*
  store %struct.cd_softc* %16, %struct.cd_softc** %6, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @PR_ALLOW, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %2
  %21 = load %struct.cd_softc*, %struct.cd_softc** %6, align 8
  %22 = getelementptr inbounds %struct.cd_softc, %struct.cd_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @CD_FLAG_DISC_LOCKED, align 4
  %25 = and i32 %23, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %38, label %27

27:                                               ; preds = %20, %2
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @PR_PREVENT, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = load %struct.cd_softc*, %struct.cd_softc** %6, align 8
  %33 = getelementptr inbounds %struct.cd_softc, %struct.cd_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @CD_FLAG_DISC_LOCKED, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31, %20
  br label %79

39:                                               ; preds = %31, %27
  %40 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %41 = load i32, i32* @CAM_PRIORITY_NORMAL, align 4
  %42 = call %union.ccb* @cam_periph_getccb(%struct.cam_periph* %40, i32 %41)
  store %union.ccb* %42, %union.ccb** %5, align 8
  %43 = load %union.ccb*, %union.ccb** %5, align 8
  %44 = bitcast %union.ccb* %43 to i32*
  %45 = load i32, i32* @cd_retry_count, align 4
  %46 = load i32, i32* @MSG_SIMPLE_Q_TAG, align 4
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @SSD_FULL_SIZE, align 4
  %49 = call i32 @scsi_prevent(i32* %44, i32 %45, i32* null, i32 %46, i32 %47, i32 %48, i32 60000)
  %50 = load %union.ccb*, %union.ccb** %5, align 8
  %51 = load i32, i32* @cderror, align 4
  %52 = load i32, i32* @CAM_RETRY_SELTO, align 4
  %53 = load i32, i32* @SF_RETRY_UA, align 4
  %54 = load i32, i32* @SF_NO_PRINT, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @cdrunccb(%union.ccb* %50, i32 %51, i32 %52, i32 %55)
  store i32 %56, i32* %7, align 4
  %57 = load %union.ccb*, %union.ccb** %5, align 8
  %58 = call i32 @xpt_release_ccb(%union.ccb* %57)
  %59 = load i32, i32* %7, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %79

61:                                               ; preds = %39
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @PR_ALLOW, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %61
  %66 = load i32, i32* @CD_FLAG_DISC_LOCKED, align 4
  %67 = xor i32 %66, -1
  %68 = load %struct.cd_softc*, %struct.cd_softc** %6, align 8
  %69 = getelementptr inbounds %struct.cd_softc, %struct.cd_softc* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, %67
  store i32 %71, i32* %69, align 4
  br label %78

72:                                               ; preds = %61
  %73 = load i32, i32* @CD_FLAG_DISC_LOCKED, align 4
  %74 = load %struct.cd_softc*, %struct.cd_softc** %6, align 8
  %75 = getelementptr inbounds %struct.cd_softc, %struct.cd_softc* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %72, %65
  br label %79

79:                                               ; preds = %38, %78, %39
  ret void
}

declare dso_local i32 @CAM_DEBUG(i32, i32, i8*) #1

declare dso_local %union.ccb* @cam_periph_getccb(%struct.cam_periph*, i32) #1

declare dso_local i32 @scsi_prevent(i32*, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @cdrunccb(%union.ccb*, i32, i32, i32) #1

declare dso_local i32 @xpt_release_ccb(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
