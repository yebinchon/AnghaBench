; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_cd.c_cderror.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_cd.c_cderror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ccb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.cd_softc = type { i32, i32, i32 }
%struct.cam_periph = type { i64 }

@CAM_STATUS_MASK = common dso_local global i32 0, align 4
@CAM_REQ_INVALID = common dso_local global i32 0, align 4
@SSD_KEY_ILLEGAL_REQUEST = common dso_local global i32 0, align 4
@SSD_KEY_UNIT_ATTENTION = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@SSD_KEY_NOT_READY = common dso_local global i32 0, align 4
@CD_FLAG_SAW_MEDIA = common dso_local global i32 0, align 4
@ERESTART = common dso_local global i32 0, align 4
@SF_RETRY_UA = common dso_local global i32 0, align 4
@CD_Q_RETRY_BUSY = common dso_local global i32 0, align 4
@SF_RETRY_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.ccb*, i32, i32)* @cderror to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cderror(%union.ccb* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %union.ccb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cd_softc*, align 8
  %9 = alloca %struct.cam_periph*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %union.ccb* %0, %union.ccb** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load %union.ccb*, %union.ccb** %5, align 8
  %16 = bitcast %union.ccb* %15 to %struct.TYPE_2__*
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.cam_periph* @xpt_path_periph(i32 %18)
  store %struct.cam_periph* %19, %struct.cam_periph** %9, align 8
  %20 = load %struct.cam_periph*, %struct.cam_periph** %9, align 8
  %21 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.cd_softc*
  store %struct.cd_softc* %23, %struct.cd_softc** %8, align 8
  store i32 0, i32* %10, align 4
  %24 = load %union.ccb*, %union.ccb** %5, align 8
  %25 = bitcast %union.ccb* %24 to %struct.TYPE_2__*
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @CAM_STATUS_MASK, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* @CAM_REQ_INVALID, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %3
  %33 = load %union.ccb*, %union.ccb** %5, align 8
  %34 = call i32 @cd6byteworkaround(%union.ccb* %33)
  store i32 %34, i32* %10, align 4
  br label %92

35:                                               ; preds = %3
  %36 = load %union.ccb*, %union.ccb** %5, align 8
  %37 = call i64 @scsi_extract_sense_ccb(%union.ccb* %36, i32* %11, i32* %12, i32* %13, i32* %14)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %91

39:                                               ; preds = %35
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* @SSD_KEY_ILLEGAL_REQUEST, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load %union.ccb*, %union.ccb** %5, align 8
  %45 = call i32 @cd6byteworkaround(%union.ccb* %44)
  store i32 %45, i32* %10, align 4
  br label %90

46:                                               ; preds = %39
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* @SSD_KEY_UNIT_ATTENTION, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %62

50:                                               ; preds = %46
  %51 = load i32, i32* %13, align 4
  %52 = icmp eq i32 %51, 40
  br i1 %52, label %53, label %62

53:                                               ; preds = %50
  %54 = load i32, i32* %14, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load %struct.cd_softc*, %struct.cd_softc** %8, align 8
  %58 = getelementptr inbounds %struct.cd_softc, %struct.cd_softc* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @M_NOWAIT, align 4
  %61 = call i32 @disk_media_changed(i32 %59, i32 %60)
  br label %89

62:                                               ; preds = %53, %50, %46
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* @SSD_KEY_NOT_READY, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %88

66:                                               ; preds = %62
  %67 = load i32, i32* %13, align 4
  %68 = icmp eq i32 %67, 58
  br i1 %68, label %69, label %88

69:                                               ; preds = %66
  %70 = load %struct.cd_softc*, %struct.cd_softc** %8, align 8
  %71 = getelementptr inbounds %struct.cd_softc, %struct.cd_softc* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @CD_FLAG_SAW_MEDIA, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %88

76:                                               ; preds = %69
  %77 = load i32, i32* @CD_FLAG_SAW_MEDIA, align 4
  %78 = xor i32 %77, -1
  %79 = load %struct.cd_softc*, %struct.cd_softc** %8, align 8
  %80 = getelementptr inbounds %struct.cd_softc, %struct.cd_softc* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, %78
  store i32 %82, i32* %80, align 4
  %83 = load %struct.cd_softc*, %struct.cd_softc** %8, align 8
  %84 = getelementptr inbounds %struct.cd_softc, %struct.cd_softc* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @M_NOWAIT, align 4
  %87 = call i32 @disk_media_gone(i32 %85, i32 %86)
  br label %88

88:                                               ; preds = %76, %69, %66, %62
  br label %89

89:                                               ; preds = %88, %56
  br label %90

90:                                               ; preds = %89, %43
  br label %91

91:                                               ; preds = %90, %35
  br label %92

92:                                               ; preds = %91, %32
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* @ERESTART, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = load i32, i32* %10, align 4
  store i32 %97, i32* %4, align 4
  br label %117

98:                                               ; preds = %92
  %99 = load i32, i32* @SF_RETRY_UA, align 4
  %100 = load i32, i32* %7, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %7, align 4
  %102 = load %struct.cd_softc*, %struct.cd_softc** %8, align 8
  %103 = getelementptr inbounds %struct.cd_softc, %struct.cd_softc* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @CD_Q_RETRY_BUSY, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %98
  %109 = load i32, i32* @SF_RETRY_BUSY, align 4
  %110 = load i32, i32* %7, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %7, align 4
  br label %112

112:                                              ; preds = %108, %98
  %113 = load %union.ccb*, %union.ccb** %5, align 8
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* %7, align 4
  %116 = call i32 @cam_periph_error(%union.ccb* %113, i32 %114, i32 %115)
  store i32 %116, i32* %4, align 4
  br label %117

117:                                              ; preds = %112, %96
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local %struct.cam_periph* @xpt_path_periph(i32) #1

declare dso_local i32 @cd6byteworkaround(%union.ccb*) #1

declare dso_local i64 @scsi_extract_sense_ccb(%union.ccb*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @disk_media_changed(i32, i32) #1

declare dso_local i32 @disk_media_gone(i32, i32) #1

declare dso_local i32 @cam_periph_error(%union.ccb*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
