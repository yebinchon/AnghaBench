; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_xpt.c_scsi_toggle_tags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_xpt.c_scsi_toggle_tags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_path = type { %struct.cam_ed* }
%struct.cam_ed = type { i32, i32 }
%struct.ccb_trans_settings = type { %struct.TYPE_4__, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }

@CAM_DEV_TAG_AFTER_COUNT = common dso_local global i32 0, align 4
@SID_CmdQue = common dso_local global i32 0, align 4
@SID_Sync = common dso_local global i32 0, align 4
@SID_WBus16 = common dso_local global i32 0, align 4
@SID_WBus32 = common dso_local global i32 0, align 4
@CAM_PRIORITY_NONE = common dso_local global i32 0, align 4
@PROTO_SCSI = common dso_local global i32 0, align 4
@PROTO_VERSION_UNSPECIFIED = common dso_local global i32 0, align 4
@XPORT_UNSPECIFIED = common dso_local global i32 0, align 4
@XPORT_VERSION_UNSPECIFIED = common dso_local global i32 0, align 4
@CTS_SCSI_VALID_TQ = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@CTS_SCSI_FLAGS_TAG_ENB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_path*)* @scsi_toggle_tags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scsi_toggle_tags(%struct.cam_path* %0) #0 {
  %2 = alloca %struct.cam_path*, align 8
  %3 = alloca %struct.cam_ed*, align 8
  %4 = alloca %struct.ccb_trans_settings, align 8
  store %struct.cam_path* %0, %struct.cam_path** %2, align 8
  %5 = load %struct.cam_path*, %struct.cam_path** %2, align 8
  %6 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %5, i32 0, i32 0
  %7 = load %struct.cam_ed*, %struct.cam_ed** %6, align 8
  store %struct.cam_ed* %7, %struct.cam_ed** %3, align 8
  %8 = load %struct.cam_ed*, %struct.cam_ed** %3, align 8
  %9 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @CAM_DEV_TAG_AFTER_COUNT, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %32, label %14

14:                                               ; preds = %1
  %15 = load %struct.cam_ed*, %struct.cam_ed** %3, align 8
  %16 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @SID_CmdQue, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %62

21:                                               ; preds = %14
  %22 = load %struct.cam_ed*, %struct.cam_ed** %3, align 8
  %23 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @SID_Sync, align 4
  %26 = load i32, i32* @SID_WBus16, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @SID_WBus32, align 4
  %29 = or i32 %27, %28
  %30 = and i32 %24, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %62

32:                                               ; preds = %21, %1
  %33 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %4, i32 0, i32 5
  %34 = load %struct.cam_path*, %struct.cam_path** %2, align 8
  %35 = load i32, i32* @CAM_PRIORITY_NONE, align 4
  %36 = call i32 @xpt_setup_ccb(i32* %33, %struct.cam_path* %34, i32 %35)
  %37 = load i32, i32* @PROTO_SCSI, align 4
  %38 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %4, i32 0, i32 4
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* @PROTO_VERSION_UNSPECIFIED, align 4
  %40 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %4, i32 0, i32 3
  store i32 %39, i32* %40, align 8
  %41 = load i32, i32* @XPORT_UNSPECIFIED, align 4
  %42 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %4, i32 0, i32 2
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* @XPORT_VERSION_UNSPECIFIED, align 4
  %44 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %4, i32 0, i32 1
  store i32 %43, i32* %44, align 8
  %45 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %4, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store i64 0, i64* %47, align 8
  %48 = load i32, i32* @CTS_SCSI_VALID_TQ, align 4
  %49 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %4, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  store i32 %48, i32* %51, align 8
  %52 = load %struct.cam_path*, %struct.cam_path** %2, align 8
  %53 = load i32, i32* @TRUE, align 4
  %54 = call i32 @scsi_set_transfer_settings(%struct.ccb_trans_settings* %4, %struct.cam_path* %52, i32 %53)
  %55 = load i64, i64* @CTS_SCSI_FLAGS_TAG_ENB, align 8
  %56 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %4, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  store i64 %55, i64* %58, align 8
  %59 = load %struct.cam_path*, %struct.cam_path** %2, align 8
  %60 = load i32, i32* @TRUE, align 4
  %61 = call i32 @scsi_set_transfer_settings(%struct.ccb_trans_settings* %4, %struct.cam_path* %59, i32 %60)
  br label %62

62:                                               ; preds = %32, %21, %14
  ret void
}

declare dso_local i32 @xpt_setup_ccb(i32*, %struct.cam_path*, i32) #1

declare dso_local i32 @scsi_set_transfer_settings(%struct.ccb_trans_settings*, %struct.cam_path*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
