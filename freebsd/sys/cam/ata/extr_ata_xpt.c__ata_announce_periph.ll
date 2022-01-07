; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ata/extr_ata_xpt.c__ata_announce_periph.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ata/extr_ata_xpt.c__ata_announce_periph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_periph = type { %struct.cam_path* }
%struct.cam_path = type { i32 }
%struct.ccb_trans_settings = type { i64, %struct.TYPE_3__, %struct.TYPE_4__, i32 }
%struct.TYPE_3__ = type { %struct.ccb_trans_settings_sata, %struct.ccb_trans_settings_pata }
%struct.ccb_trans_settings_sata = type { i32, i32 }
%struct.ccb_trans_settings_pata = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ccb_pathinq = type { i32 }
%union.ccb = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@CAM_PRIORITY_NORMAL = common dso_local global i32 0, align 4
@XPT_GET_TRAN_SETTINGS = common dso_local global i32 0, align 4
@CTS_TYPE_CURRENT_SETTINGS = common dso_local global i32 0, align 4
@CAM_STATUS_MASK = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@XPORT_ATA = common dso_local global i64 0, align 8
@CTS_ATA_VALID_MODE = common dso_local global i32 0, align 4
@XPORT_SATA = common dso_local global i64 0, align 8
@CTS_SATA_VALID_REVISION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_periph*, %struct.ccb_trans_settings*, i32*)* @_ata_announce_periph to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ata_announce_periph(%struct.cam_periph* %0, %struct.ccb_trans_settings* %1, i32* %2) #0 {
  %4 = alloca %struct.cam_periph*, align 8
  %5 = alloca %struct.ccb_trans_settings*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ccb_pathinq, align 4
  %8 = alloca %struct.cam_path*, align 8
  %9 = alloca %struct.ccb_trans_settings_pata*, align 8
  %10 = alloca %struct.ccb_trans_settings_sata*, align 8
  store %struct.cam_periph* %0, %struct.cam_periph** %4, align 8
  store %struct.ccb_trans_settings* %1, %struct.ccb_trans_settings** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %12 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %11, i32 0, i32 0
  %13 = load %struct.cam_path*, %struct.cam_path** %12, align 8
  store %struct.cam_path* %13, %struct.cam_path** %8, align 8
  %14 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %15 = load i32, i32* @MA_OWNED, align 4
  %16 = call i32 @cam_periph_assert(%struct.cam_periph* %14, i32 %15)
  %17 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %5, align 8
  %18 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %17, i32 0, i32 2
  %19 = load %struct.cam_path*, %struct.cam_path** %8, align 8
  %20 = load i32, i32* @CAM_PRIORITY_NORMAL, align 4
  %21 = call i32 @xpt_setup_ccb(%struct.TYPE_4__* %18, %struct.cam_path* %19, i32 %20)
  %22 = load i32, i32* @XPT_GET_TRAN_SETTINGS, align 4
  %23 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %5, align 8
  %24 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  store i32 %22, i32* %25, align 4
  %26 = load i32, i32* @CTS_TYPE_CURRENT_SETTINGS, align 4
  %27 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %5, align 8
  %28 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 8
  %29 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %5, align 8
  %30 = bitcast %struct.ccb_trans_settings* %29 to %union.ccb*
  %31 = call i32 @xpt_action(%union.ccb* %30)
  %32 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %5, align 8
  %33 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @CAM_STATUS_MASK, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* @CAM_REQ_CMP, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %3
  br label %92

41:                                               ; preds = %3
  %42 = load %struct.cam_path*, %struct.cam_path** %8, align 8
  %43 = call i32 @xpt_path_inq(%struct.ccb_pathinq* %7, %struct.cam_path* %42)
  %44 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %7, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %6, align 8
  store i32 %45, i32* %46, align 4
  %47 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %5, align 8
  %48 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @XPORT_ATA, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %69

52:                                               ; preds = %41
  %53 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %5, align 8
  %54 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  store %struct.ccb_trans_settings_pata* %55, %struct.ccb_trans_settings_pata** %9, align 8
  %56 = load %struct.ccb_trans_settings_pata*, %struct.ccb_trans_settings_pata** %9, align 8
  %57 = getelementptr inbounds %struct.ccb_trans_settings_pata, %struct.ccb_trans_settings_pata* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @CTS_ATA_VALID_MODE, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %52
  %63 = load %struct.ccb_trans_settings_pata*, %struct.ccb_trans_settings_pata** %9, align 8
  %64 = getelementptr inbounds %struct.ccb_trans_settings_pata, %struct.ccb_trans_settings_pata* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @ata_mode2speed(i32 %65)
  %67 = load i32*, i32** %6, align 8
  store i32 %66, i32* %67, align 4
  br label %68

68:                                               ; preds = %62, %52
  br label %69

69:                                               ; preds = %68, %41
  %70 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %5, align 8
  %71 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @XPORT_SATA, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %92

75:                                               ; preds = %69
  %76 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %5, align 8
  %77 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  store %struct.ccb_trans_settings_sata* %78, %struct.ccb_trans_settings_sata** %10, align 8
  %79 = load %struct.ccb_trans_settings_sata*, %struct.ccb_trans_settings_sata** %10, align 8
  %80 = getelementptr inbounds %struct.ccb_trans_settings_sata, %struct.ccb_trans_settings_sata* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @CTS_SATA_VALID_REVISION, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %75
  %86 = load %struct.ccb_trans_settings_sata*, %struct.ccb_trans_settings_sata** %10, align 8
  %87 = getelementptr inbounds %struct.ccb_trans_settings_sata, %struct.ccb_trans_settings_sata* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @ata_revision2speed(i32 %88)
  %90 = load i32*, i32** %6, align 8
  store i32 %89, i32* %90, align 4
  br label %91

91:                                               ; preds = %85, %75
  br label %92

92:                                               ; preds = %40, %91, %69
  ret void
}

declare dso_local i32 @cam_periph_assert(%struct.cam_periph*, i32) #1

declare dso_local i32 @xpt_setup_ccb(%struct.TYPE_4__*, %struct.cam_path*, i32) #1

declare dso_local i32 @xpt_action(%union.ccb*) #1

declare dso_local i32 @xpt_path_inq(%struct.ccb_pathinq*, %struct.cam_path*) #1

declare dso_local i32 @ata_mode2speed(i32) #1

declare dso_local i32 @ata_revision2speed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
