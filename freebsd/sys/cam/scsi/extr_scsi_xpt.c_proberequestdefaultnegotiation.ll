; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_xpt.c_proberequestdefaultnegotiation.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_xpt.c_proberequestdefaultnegotiation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_periph = type { i32 }
%struct.ccb_trans_settings = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%union.ccb = type { i32 }

@CAM_PRIORITY_NONE = common dso_local global i32 0, align 4
@XPT_GET_TRAN_SETTINGS = common dso_local global i32 0, align 4
@CTS_TYPE_USER_SETTINGS = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i64 0, align 8
@XPT_SET_TRAN_SETTINGS = common dso_local global i32 0, align 4
@CTS_TYPE_CURRENT_SETTINGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_periph*)* @proberequestdefaultnegotiation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @proberequestdefaultnegotiation(%struct.cam_periph* %0) #0 {
  %2 = alloca %struct.cam_periph*, align 8
  %3 = alloca %struct.ccb_trans_settings, align 4
  store %struct.cam_periph* %0, %struct.cam_periph** %2, align 8
  %4 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %3, i32 0, i32 1
  %5 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %6 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @CAM_PRIORITY_NONE, align 4
  %9 = call i32 @xpt_setup_ccb(%struct.TYPE_2__* %4, i32 %7, i32 %8)
  %10 = load i32, i32* @XPT_GET_TRAN_SETTINGS, align 4
  %11 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %3, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @CTS_TYPE_USER_SETTINGS, align 4
  %14 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %3, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = bitcast %struct.ccb_trans_settings* %3 to %union.ccb*
  %16 = call i32 @xpt_action(%union.ccb* %15)
  %17 = bitcast %struct.ccb_trans_settings* %3 to %union.ccb*
  %18 = call i64 @cam_ccb_status(%union.ccb* %17)
  %19 = load i64, i64* @CAM_REQ_CMP, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %30

22:                                               ; preds = %1
  %23 = load i32, i32* @XPT_SET_TRAN_SETTINGS, align 4
  %24 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %3, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @CTS_TYPE_CURRENT_SETTINGS, align 4
  %27 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %3, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = bitcast %struct.ccb_trans_settings* %3 to %union.ccb*
  %29 = call i32 @xpt_action(%union.ccb* %28)
  br label %30

30:                                               ; preds = %22, %21
  ret void
}

declare dso_local i32 @xpt_setup_ccb(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @xpt_action(%union.ccb*) #1

declare dso_local i64 @cam_ccb_status(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
