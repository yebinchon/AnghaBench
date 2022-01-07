; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_targ_bh.c_targbhstart.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_targ_bh.c_targbhstart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.cam_periph = type { i32, i64 }
%union.ccb = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ccb_accept_tio*, i32, i32, i32 }
%struct.ccb_accept_tio = type { %struct.TYPE_5__, i32, i32, i32, i64 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i64 }
%struct.targbh_softc = type { i32, i32 }
%struct.ccb_hdr = type { i32 }
%struct.targbh_cmd_desc = type { i64, i64, i32, i32*, i32 }
%struct.ccb_scsiio = type { i32, i64 }

@periph_links = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@CAM_DIS_DISCONNECT = common dso_local global i32 0, align 4
@CAM_TAG_ACTION_VALID = common dso_local global i32 0, align 4
@CAM_DIR_MASK = common dso_local global i32 0, align 4
@CAM_SEND_STATUS = common dso_local global i32 0, align 4
@CAM_SEND_SENSE = common dso_local global i32 0, align 4
@targbhdone = common dso_local global i32 0, align 4
@MSG_SIMPLE_Q_TAG = common dso_local global i32 0, align 4
@TARGBH_CCB_WORKQ = common dso_local global i32 0, align 4
@CAM_DEBUG_SUBTRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Sending a CTIO\0A\00", align 1
@CAM_DEV_QFRZN = common dso_local global i32 0, align 4
@CAM_PRIORITY_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_periph*, %union.ccb*)* @targbhstart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @targbhstart(%struct.cam_periph* %0, %union.ccb* %1) #0 {
  %3 = alloca %struct.cam_periph*, align 8
  %4 = alloca %union.ccb*, align 8
  %5 = alloca %struct.targbh_softc*, align 8
  %6 = alloca %struct.ccb_hdr*, align 8
  %7 = alloca %struct.ccb_accept_tio*, align 8
  %8 = alloca %struct.targbh_cmd_desc*, align 8
  %9 = alloca %struct.ccb_scsiio*, align 8
  %10 = alloca i32, align 4
  store %struct.cam_periph* %0, %struct.cam_periph** %3, align 8
  store %union.ccb* %1, %union.ccb** %4, align 8
  %11 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %12 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.targbh_softc*
  store %struct.targbh_softc* %14, %struct.targbh_softc** %5, align 8
  %15 = load %struct.targbh_softc*, %struct.targbh_softc** %5, align 8
  %16 = getelementptr inbounds %struct.targbh_softc, %struct.targbh_softc* %15, i32 0, i32 0
  %17 = call %struct.ccb_hdr* @TAILQ_FIRST(i32* %16)
  store %struct.ccb_hdr* %17, %struct.ccb_hdr** %6, align 8
  %18 = load %struct.ccb_hdr*, %struct.ccb_hdr** %6, align 8
  %19 = icmp eq %struct.ccb_hdr* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load %union.ccb*, %union.ccb** %4, align 8
  %22 = call i32 @xpt_release_ccb(%union.ccb* %21)
  br label %175

23:                                               ; preds = %2
  %24 = load %struct.targbh_softc*, %struct.targbh_softc** %5, align 8
  %25 = getelementptr inbounds %struct.targbh_softc, %struct.targbh_softc* %24, i32 0, i32 0
  %26 = load %struct.ccb_hdr*, %struct.ccb_hdr** %6, align 8
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @periph_links, i32 0, i32 0), align 4
  %28 = call i32 @TAILQ_REMOVE(i32* %25, %struct.ccb_hdr* %26, i32 %27)
  %29 = load %struct.targbh_softc*, %struct.targbh_softc** %5, align 8
  %30 = getelementptr inbounds %struct.targbh_softc, %struct.targbh_softc* %29, i32 0, i32 1
  %31 = load %struct.ccb_hdr*, %struct.ccb_hdr** %6, align 8
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @periph_links, i32 0, i32 0), align 4
  %33 = call i32 @TAILQ_INSERT_HEAD(i32* %30, %struct.ccb_hdr* %31, i32 %32)
  %34 = load %struct.ccb_hdr*, %struct.ccb_hdr** %6, align 8
  %35 = bitcast %struct.ccb_hdr* %34 to %struct.ccb_accept_tio*
  store %struct.ccb_accept_tio* %35, %struct.ccb_accept_tio** %7, align 8
  %36 = load %struct.ccb_accept_tio*, %struct.ccb_accept_tio** %7, align 8
  %37 = getelementptr inbounds %struct.ccb_accept_tio, %struct.ccb_accept_tio* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to %struct.targbh_cmd_desc*
  store %struct.targbh_cmd_desc* %40, %struct.targbh_cmd_desc** %8, align 8
  %41 = load %struct.ccb_accept_tio*, %struct.ccb_accept_tio** %7, align 8
  %42 = getelementptr inbounds %struct.ccb_accept_tio, %struct.ccb_accept_tio* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @CAM_DIS_DISCONNECT, align 4
  %46 = load i32, i32* @CAM_TAG_ACTION_VALID, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @CAM_DIR_MASK, align 4
  %49 = or i32 %47, %48
  %50 = and i32 %44, %49
  store i32 %50, i32* %10, align 4
  %51 = load %union.ccb*, %union.ccb** %4, align 8
  %52 = bitcast %union.ccb* %51 to %struct.ccb_scsiio*
  store %struct.ccb_scsiio* %52, %struct.ccb_scsiio** %9, align 8
  %53 = load %struct.targbh_cmd_desc*, %struct.targbh_cmd_desc** %8, align 8
  %54 = getelementptr inbounds %struct.targbh_cmd_desc, %struct.targbh_cmd_desc* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.targbh_cmd_desc*, %struct.targbh_cmd_desc** %8, align 8
  %57 = getelementptr inbounds %struct.targbh_cmd_desc, %struct.targbh_cmd_desc* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %55, %58
  br i1 %59, label %60, label %83

60:                                               ; preds = %23
  %61 = load i32, i32* @CAM_SEND_STATUS, align 4
  %62 = load i32, i32* %10, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %10, align 4
  %64 = load %struct.ccb_accept_tio*, %struct.ccb_accept_tio** %7, align 8
  %65 = getelementptr inbounds %struct.ccb_accept_tio, %struct.ccb_accept_tio* %64, i32 0, i32 4
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %82

68:                                               ; preds = %60
  %69 = load %struct.ccb_accept_tio*, %struct.ccb_accept_tio** %7, align 8
  %70 = getelementptr inbounds %struct.ccb_accept_tio, %struct.ccb_accept_tio* %69, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %9, align 8
  %73 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %72, i32 0, i32 1
  store i64 %71, i64* %73, align 8
  %74 = load %struct.ccb_accept_tio*, %struct.ccb_accept_tio** %7, align 8
  %75 = getelementptr inbounds %struct.ccb_accept_tio, %struct.ccb_accept_tio* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %9, align 8
  %78 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load i32, i32* @CAM_SEND_SENSE, align 4
  %80 = load i32, i32* %10, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %10, align 4
  br label %82

82:                                               ; preds = %68, %60
  br label %83

83:                                               ; preds = %82, %23
  %84 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %9, align 8
  %85 = load i32, i32* @targbhdone, align 4
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* @CAM_TAG_ACTION_VALID, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %83
  %92 = load i32, i32* @MSG_SIMPLE_Q_TAG, align 4
  br label %94

93:                                               ; preds = %83
  br label %94

94:                                               ; preds = %93, %91
  %95 = phi i32 [ %92, %91 ], [ 0, %93 ]
  %96 = load %struct.ccb_accept_tio*, %struct.ccb_accept_tio** %7, align 8
  %97 = getelementptr inbounds %struct.ccb_accept_tio, %struct.ccb_accept_tio* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.ccb_accept_tio*, %struct.ccb_accept_tio** %7, align 8
  %100 = getelementptr inbounds %struct.ccb_accept_tio, %struct.ccb_accept_tio* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.targbh_cmd_desc*, %struct.targbh_cmd_desc** %8, align 8
  %103 = getelementptr inbounds %struct.targbh_cmd_desc, %struct.targbh_cmd_desc* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.targbh_cmd_desc*, %struct.targbh_cmd_desc** %8, align 8
  %106 = getelementptr inbounds %struct.targbh_cmd_desc, %struct.targbh_cmd_desc* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %94
  br label %114

110:                                              ; preds = %94
  %111 = load %struct.targbh_cmd_desc*, %struct.targbh_cmd_desc** %8, align 8
  %112 = getelementptr inbounds %struct.targbh_cmd_desc, %struct.targbh_cmd_desc* %111, i32 0, i32 3
  %113 = load i32*, i32** %112, align 8
  br label %114

114:                                              ; preds = %110, %109
  %115 = phi i32* [ null, %109 ], [ %113, %110 ]
  %116 = load %struct.targbh_cmd_desc*, %struct.targbh_cmd_desc** %8, align 8
  %117 = getelementptr inbounds %struct.targbh_cmd_desc, %struct.targbh_cmd_desc* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.targbh_cmd_desc*, %struct.targbh_cmd_desc** %8, align 8
  %120 = getelementptr inbounds %struct.targbh_cmd_desc, %struct.targbh_cmd_desc* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @cam_fill_ctio(%struct.ccb_scsiio* %84, i32 2, i32 %85, i32 %86, i32 %95, i32 %98, i32 %101, i32 %104, i32* %115, i64 %118, i32 %121)
  %123 = load %struct.ccb_accept_tio*, %struct.ccb_accept_tio** %7, align 8
  %124 = getelementptr inbounds %struct.ccb_accept_tio, %struct.ccb_accept_tio* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = load %union.ccb*, %union.ccb** %4, align 8
  %128 = bitcast %union.ccb* %127 to %struct.TYPE_4__*
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 3
  store i32 %126, i32* %129, align 8
  %130 = load %struct.ccb_accept_tio*, %struct.ccb_accept_tio** %7, align 8
  %131 = getelementptr inbounds %struct.ccb_accept_tio, %struct.ccb_accept_tio* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load %union.ccb*, %union.ccb** %4, align 8
  %135 = bitcast %union.ccb* %134 to %struct.TYPE_4__*
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 2
  store i32 %133, i32* %136, align 4
  %137 = load i32, i32* @TARGBH_CCB_WORKQ, align 4
  %138 = load %union.ccb*, %union.ccb** %4, align 8
  %139 = bitcast %union.ccb* %138 to %struct.TYPE_4__*
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 1
  store i32 %137, i32* %140, align 8
  %141 = load %struct.ccb_accept_tio*, %struct.ccb_accept_tio** %7, align 8
  %142 = load %union.ccb*, %union.ccb** %4, align 8
  %143 = bitcast %union.ccb* %142 to %struct.TYPE_4__*
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  store %struct.ccb_accept_tio* %141, %struct.ccb_accept_tio** %144, align 8
  %145 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %146 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @CAM_DEBUG_SUBTRACE, align 4
  %149 = call i32 @CAM_DEBUG(i32 %147, i32 %148, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %150 = load %union.ccb*, %union.ccb** %4, align 8
  %151 = call i32 @xpt_action(%union.ccb* %150)
  %152 = load %struct.ccb_accept_tio*, %struct.ccb_accept_tio** %7, align 8
  %153 = getelementptr inbounds %struct.ccb_accept_tio, %struct.ccb_accept_tio* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @CAM_DEV_QFRZN, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %171

159:                                              ; preds = %114
  %160 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %161 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @cam_release_devq(i32 %162, i32 0, i32 0, i32 0, i32 0)
  %164 = load i32, i32* @CAM_DEV_QFRZN, align 4
  %165 = xor i32 %164, -1
  %166 = load %struct.ccb_accept_tio*, %struct.ccb_accept_tio** %7, align 8
  %167 = getelementptr inbounds %struct.ccb_accept_tio, %struct.ccb_accept_tio* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = and i32 %169, %165
  store i32 %170, i32* %168, align 4
  br label %171

171:                                              ; preds = %159, %114
  %172 = load %struct.targbh_softc*, %struct.targbh_softc** %5, align 8
  %173 = getelementptr inbounds %struct.targbh_softc, %struct.targbh_softc* %172, i32 0, i32 0
  %174 = call %struct.ccb_hdr* @TAILQ_FIRST(i32* %173)
  store %struct.ccb_hdr* %174, %struct.ccb_hdr** %6, align 8
  br label %175

175:                                              ; preds = %171, %20
  %176 = load %struct.ccb_hdr*, %struct.ccb_hdr** %6, align 8
  %177 = icmp ne %struct.ccb_hdr* %176, null
  br i1 %177, label %178, label %182

178:                                              ; preds = %175
  %179 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %180 = load i32, i32* @CAM_PRIORITY_NORMAL, align 4
  %181 = call i32 @xpt_schedule(%struct.cam_periph* %179, i32 %180)
  br label %182

182:                                              ; preds = %178, %175
  ret void
}

declare dso_local %struct.ccb_hdr* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @xpt_release_ccb(%union.ccb*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.ccb_hdr*, i32) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.ccb_hdr*, i32) #1

declare dso_local i32 @cam_fill_ctio(%struct.ccb_scsiio*, i32, i32, i32, i32, i32, i32, i32, i32*, i64, i32) #1

declare dso_local i32 @CAM_DEBUG(i32, i32, i8*) #1

declare dso_local i32 @xpt_action(%union.ccb*) #1

declare dso_local i32 @cam_release_devq(i32, i32, i32, i32, i32) #1

declare dso_local i32 @xpt_schedule(%struct.cam_periph*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
