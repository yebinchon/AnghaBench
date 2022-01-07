; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ata/extr_ata_xpt.c_proberequestdefaultnegotiation.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ata/extr_ata_xpt.c_proberequestdefaultnegotiation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_periph = type { i32 }
%struct.ccb_trans_settings = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i64 }
%union.ccb = type { i32 }

@CAM_PRIORITY_NONE = common dso_local global i32 0, align 4
@XPT_GET_TRAN_SETTINGS = common dso_local global i32 0, align 4
@CTS_TYPE_USER_SETTINGS = common dso_local global i32 0, align 4
@CAM_STATUS_MASK = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@XPT_SET_TRAN_SETTINGS = common dso_local global i32 0, align 4
@CTS_TYPE_CURRENT_SETTINGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_periph*)* @proberequestdefaultnegotiation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @proberequestdefaultnegotiation(%struct.cam_periph* %0) #0 {
  %2 = alloca %struct.cam_periph*, align 8
  %3 = alloca %struct.ccb_trans_settings, align 8
  store %struct.cam_periph* %0, %struct.cam_periph** %2, align 8
  %4 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %3, i32 0, i32 1
  %5 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %6 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @CAM_PRIORITY_NONE, align 4
  %9 = call i32 @xpt_setup_ccb(%struct.TYPE_4__* %4, i32 %7, i32 %8)
  %10 = load i32, i32* @XPT_GET_TRAN_SETTINGS, align 4
  %11 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %3, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @CTS_TYPE_USER_SETTINGS, align 4
  %14 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %3, i32 0, i32 0
  store i32 %13, i32* %14, align 8
  %15 = bitcast %struct.ccb_trans_settings* %3 to %union.ccb*
  %16 = call i32 @xpt_action(%union.ccb* %15)
  %17 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %3, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @CAM_STATUS_MASK, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* @CAM_REQ_CMP, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %35

25:                                               ; preds = %1
  %26 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %3, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  %28 = load i32, i32* @XPT_SET_TRAN_SETTINGS, align 4
  %29 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %3, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @CTS_TYPE_CURRENT_SETTINGS, align 4
  %32 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %3, i32 0, i32 0
  store i32 %31, i32* %32, align 8
  %33 = bitcast %struct.ccb_trans_settings* %3 to %union.ccb*
  %34 = call i32 @xpt_action(%union.ccb* %33)
  br label %35

35:                                               ; preds = %25, %24
  ret void
}

declare dso_local i32 @xpt_setup_ccb(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @xpt_action(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
