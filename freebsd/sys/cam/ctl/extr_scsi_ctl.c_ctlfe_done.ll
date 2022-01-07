; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_scsi_ctl.c_ctlfe_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_scsi_ctl.c_ctlfe_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%union.ctl_io = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32 }
%union.ccb = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.cam_periph = type { i64 }
%struct.ctlfe_lun_softc = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@CTL_IO_TASK = common dso_local global i64 0, align 8
@CAM_REQ_INPROG = common dso_local global i32 0, align 4
@XPT_NOTIFY_ACKNOWLEDGE = common dso_local global i32 0, align 4
@CAM_RSP_TMF_COMPLETE = common dso_local global i32 0, align 4
@CAM_RSP_TMF_SUCCEEDED = common dso_local global i32 0, align 4
@CAM_SEND_STATUS = common dso_local global i32 0, align 4
@CAM_RSP_TMF_REJECTED = common dso_local global i32 0, align 4
@CAM_RSP_TMF_INCORRECT_LUN = common dso_local global i32 0, align 4
@CAM_RSP_TMF_FAILED = common dso_local global i32 0, align 4
@CTL_FLAG_STATUS_SENT = common dso_local global i32 0, align 4
@CTL_FLAG_STATUS_QUEUED = common dso_local global i32 0, align 4
@periph_links = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@CAM_PRIORITY_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.ctl_io*)* @ctlfe_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctlfe_done(%union.ctl_io* %0) #0 {
  %2 = alloca %union.ctl_io*, align 8
  %3 = alloca %union.ccb*, align 8
  %4 = alloca %struct.cam_periph*, align 8
  %5 = alloca %struct.ctlfe_lun_softc*, align 8
  store %union.ctl_io* %0, %union.ctl_io** %2, align 8
  %6 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %7 = call %union.ccb* @PRIV_CCB(%union.ctl_io* %6)
  store %union.ccb* %7, %union.ccb** %3, align 8
  %8 = load %union.ccb*, %union.ccb** %3, align 8
  %9 = bitcast %union.ccb* %8 to %struct.TYPE_10__*
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.cam_periph* @xpt_path_periph(i32 %11)
  store %struct.cam_periph* %12, %struct.cam_periph** %4, align 8
  %13 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %14 = call i32 @cam_periph_lock(%struct.cam_periph* %13)
  %15 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %16 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.ctlfe_lun_softc*
  store %struct.ctlfe_lun_softc* %18, %struct.ctlfe_lun_softc** %5, align 8
  %19 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %20 = bitcast %union.ctl_io* %19 to %struct.TYPE_8__*
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @CTL_IO_TASK, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %101

25:                                               ; preds = %1
  %26 = load i32, i32* @CAM_REQ_INPROG, align 4
  %27 = load %union.ccb*, %union.ccb** %3, align 8
  %28 = bitcast %union.ccb* %27 to %struct.TYPE_10__*
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 2
  store i32 %26, i32* %29, align 4
  %30 = load i32, i32* @XPT_NOTIFY_ACKNOWLEDGE, align 4
  %31 = load %union.ccb*, %union.ccb** %3, align 8
  %32 = bitcast %union.ccb* %31 to %struct.TYPE_10__*
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  store i32 %30, i32* %33, align 4
  %34 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %35 = bitcast %union.ctl_io* %34 to %struct.TYPE_7__*
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  switch i32 %37, label %87 [
    i32 132, label %38
    i32 129, label %43
    i32 130, label %54
    i32 128, label %65
    i32 131, label %76
  ]

38:                                               ; preds = %25
  %39 = load i32, i32* @CAM_RSP_TMF_COMPLETE, align 4
  %40 = load %union.ccb*, %union.ccb** %3, align 8
  %41 = bitcast %union.ccb* %40 to %struct.TYPE_6__*
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 4
  br label %87

43:                                               ; preds = %25
  %44 = load i32, i32* @CAM_RSP_TMF_SUCCEEDED, align 4
  %45 = load %union.ccb*, %union.ccb** %3, align 8
  %46 = bitcast %union.ccb* %45 to %struct.TYPE_6__*
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 4
  %48 = load i32, i32* @CAM_SEND_STATUS, align 4
  %49 = load %union.ccb*, %union.ccb** %3, align 8
  %50 = bitcast %union.ccb* %49 to %struct.TYPE_10__*
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %48
  store i32 %53, i32* %51, align 4
  br label %87

54:                                               ; preds = %25
  %55 = load i32, i32* @CAM_RSP_TMF_REJECTED, align 4
  %56 = load %union.ccb*, %union.ccb** %3, align 8
  %57 = bitcast %union.ccb* %56 to %struct.TYPE_6__*
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 4
  %59 = load i32, i32* @CAM_SEND_STATUS, align 4
  %60 = load %union.ccb*, %union.ccb** %3, align 8
  %61 = bitcast %union.ccb* %60 to %struct.TYPE_10__*
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %59
  store i32 %64, i32* %62, align 4
  br label %87

65:                                               ; preds = %25
  %66 = load i32, i32* @CAM_RSP_TMF_INCORRECT_LUN, align 4
  %67 = load %union.ccb*, %union.ccb** %3, align 8
  %68 = bitcast %union.ccb* %67 to %struct.TYPE_6__*
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 4
  %70 = load i32, i32* @CAM_SEND_STATUS, align 4
  %71 = load %union.ccb*, %union.ccb** %3, align 8
  %72 = bitcast %union.ccb* %71 to %struct.TYPE_10__*
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %70
  store i32 %75, i32* %73, align 4
  br label %87

76:                                               ; preds = %25
  %77 = load i32, i32* @CAM_RSP_TMF_FAILED, align 4
  %78 = load %union.ccb*, %union.ccb** %3, align 8
  %79 = bitcast %union.ccb* %78 to %struct.TYPE_6__*
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  store i32 %77, i32* %80, align 4
  %81 = load i32, i32* @CAM_SEND_STATUS, align 4
  %82 = load %union.ccb*, %union.ccb** %3, align 8
  %83 = bitcast %union.ccb* %82 to %struct.TYPE_10__*
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %81
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %25, %76, %65, %54, %43, %38
  %88 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %89 = bitcast %union.ctl_io* %88 to %struct.TYPE_7__*
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @scsi_3btoul(i32 %91)
  %93 = shl i32 %92, 8
  %94 = load %union.ccb*, %union.ccb** %3, align 8
  %95 = bitcast %union.ccb* %94 to %struct.TYPE_6__*
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %93
  store i32 %98, i32* %96, align 4
  %99 = load %union.ccb*, %union.ccb** %3, align 8
  %100 = call i32 @xpt_action(%union.ccb* %99)
  br label %130

101:                                              ; preds = %1
  %102 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %103 = bitcast %union.ctl_io* %102 to %struct.TYPE_8__*
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @CTL_FLAG_STATUS_SENT, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %101
  %110 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %111 = load %union.ccb*, %union.ccb** %3, align 8
  %112 = call i32 @ctlfe_requeue_ccb(%struct.cam_periph* %110, %union.ccb* %111, i32 1)
  br label %133

113:                                              ; preds = %101
  %114 = load i32, i32* @CTL_FLAG_STATUS_QUEUED, align 4
  %115 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %116 = bitcast %union.ctl_io* %115 to %struct.TYPE_8__*
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = or i32 %118, %114
  store i32 %119, i32* %117, align 8
  %120 = load %struct.ctlfe_lun_softc*, %struct.ctlfe_lun_softc** %5, align 8
  %121 = getelementptr inbounds %struct.ctlfe_lun_softc, %struct.ctlfe_lun_softc* %120, i32 0, i32 0
  %122 = load %union.ccb*, %union.ccb** %3, align 8
  %123 = bitcast %union.ccb* %122 to %struct.TYPE_10__*
  %124 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @periph_links, i32 0, i32 0), align 4
  %125 = call i32 @STAILQ_INSERT_TAIL(i32* %121, %struct.TYPE_10__* %123, i32 %124)
  %126 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %127 = load i32, i32* @CAM_PRIORITY_NORMAL, align 4
  %128 = call i32 @xpt_schedule(%struct.cam_periph* %126, i32 %127)
  br label %129

129:                                              ; preds = %113
  br label %130

130:                                              ; preds = %129, %87
  %131 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %132 = call i32 @cam_periph_unlock(%struct.cam_periph* %131)
  br label %133

133:                                              ; preds = %130, %109
  ret void
}

declare dso_local %union.ccb* @PRIV_CCB(%union.ctl_io*) #1

declare dso_local %struct.cam_periph* @xpt_path_periph(i32) #1

declare dso_local i32 @cam_periph_lock(%struct.cam_periph*) #1

declare dso_local i32 @scsi_3btoul(i32) #1

declare dso_local i32 @xpt_action(%union.ccb*) #1

declare dso_local i32 @ctlfe_requeue_ccb(%struct.cam_periph*, %union.ccb*, i32) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @xpt_schedule(%struct.cam_periph*, i32) #1

declare dso_local i32 @cam_periph_unlock(%struct.cam_periph*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
