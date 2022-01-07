; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_targ_bh.c_targbhdislun.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_targ_bh.c_targbhdislun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.cam_periph = type { i32, i64 }
%union.ccb = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_9__, i64 }
%struct.TYPE_9__ = type { i64, i8* }
%struct.targbh_softc = type { i32, i32, %struct.ccb_accept_tio* }
%struct.ccb_accept_tio = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.ccb_hdr = type { i32 }
%struct.targbh_cmd_desc = type { %struct.ccb_accept_tio* }
%struct.TYPE_7__ = type { %union.ccb*, %struct.TYPE_9__ }

@TARGBH_FLAG_LUN_ENABLED = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i64 0, align 8
@CAM_PRIORITY_NORMAL = common dso_local global i32 0, align 4
@XPT_ABORT = common dso_local global i8* null, align 8
@periph_links = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@XPT_EN_LUN = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [68 x i8] c"targbhdislun - Disabling lun on controller failed with status 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.cam_periph*)* @targbhdislun to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @targbhdislun(%struct.cam_periph* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.cam_periph*, align 8
  %4 = alloca %union.ccb, align 8
  %5 = alloca %struct.targbh_softc*, align 8
  %6 = alloca %struct.ccb_accept_tio*, align 8
  %7 = alloca %struct.ccb_hdr*, align 8
  store %struct.cam_periph* %0, %struct.cam_periph** %3, align 8
  %8 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %9 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.targbh_softc*
  store %struct.targbh_softc* %11, %struct.targbh_softc** %5, align 8
  %12 = load %struct.targbh_softc*, %struct.targbh_softc** %5, align 8
  %13 = getelementptr inbounds %struct.targbh_softc, %struct.targbh_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @TARGBH_FLAG_LUN_ENABLED, align 4
  %16 = and i32 %14, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i64, i64* @CAM_REQ_CMP, align 8
  store i64 %19, i64* %2, align 8
  br label %118

20:                                               ; preds = %1
  br label %21

21:                                               ; preds = %26, %20
  %22 = load %struct.targbh_softc*, %struct.targbh_softc** %5, align 8
  %23 = getelementptr inbounds %struct.targbh_softc, %struct.targbh_softc* %22, i32 0, i32 2
  %24 = load %struct.ccb_accept_tio*, %struct.ccb_accept_tio** %23, align 8
  store %struct.ccb_accept_tio* %24, %struct.ccb_accept_tio** %6, align 8
  %25 = icmp ne %struct.ccb_accept_tio* %24, null
  br i1 %25, label %26, label %52

26:                                               ; preds = %21
  %27 = load %struct.ccb_accept_tio*, %struct.ccb_accept_tio** %6, align 8
  %28 = getelementptr inbounds %struct.ccb_accept_tio, %struct.ccb_accept_tio* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.targbh_cmd_desc*
  %32 = getelementptr inbounds %struct.targbh_cmd_desc, %struct.targbh_cmd_desc* %31, i32 0, i32 0
  %33 = load %struct.ccb_accept_tio*, %struct.ccb_accept_tio** %32, align 8
  %34 = load %struct.targbh_softc*, %struct.targbh_softc** %5, align 8
  %35 = getelementptr inbounds %struct.targbh_softc, %struct.targbh_softc* %34, i32 0, i32 2
  store %struct.ccb_accept_tio* %33, %struct.ccb_accept_tio** %35, align 8
  %36 = bitcast %union.ccb* %4 to %struct.TYPE_7__*
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %39 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @CAM_PRIORITY_NORMAL, align 4
  %42 = call i32 @xpt_setup_ccb(%struct.TYPE_9__* %37, i32 %40, i32 %41)
  %43 = load i8*, i8** @XPT_ABORT, align 8
  %44 = bitcast %union.ccb* %4 to %struct.TYPE_7__*
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  store i8* %43, i8** %46, align 8
  %47 = load %struct.ccb_accept_tio*, %struct.ccb_accept_tio** %6, align 8
  %48 = bitcast %struct.ccb_accept_tio* %47 to %union.ccb*
  %49 = bitcast %union.ccb* %4 to %struct.TYPE_7__*
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  store %union.ccb* %48, %union.ccb** %50, align 8
  %51 = call i32 @xpt_action(%union.ccb* %4)
  br label %21

52:                                               ; preds = %21
  br label %53

53:                                               ; preds = %58, %52
  %54 = load %struct.targbh_softc*, %struct.targbh_softc** %5, align 8
  %55 = getelementptr inbounds %struct.targbh_softc, %struct.targbh_softc* %54, i32 0, i32 1
  %56 = call %struct.ccb_hdr* @SLIST_FIRST(i32* %55)
  store %struct.ccb_hdr* %56, %struct.ccb_hdr** %7, align 8
  %57 = icmp ne %struct.ccb_hdr* %56, null
  br i1 %57, label %58, label %79

58:                                               ; preds = %53
  %59 = load %struct.targbh_softc*, %struct.targbh_softc** %5, align 8
  %60 = getelementptr inbounds %struct.targbh_softc, %struct.targbh_softc* %59, i32 0, i32 1
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @periph_links, i32 0, i32 0), align 4
  %62 = call i32 @SLIST_REMOVE_HEAD(i32* %60, i32 %61)
  %63 = bitcast %union.ccb* %4 to %struct.TYPE_7__*
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %66 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @CAM_PRIORITY_NORMAL, align 4
  %69 = call i32 @xpt_setup_ccb(%struct.TYPE_9__* %64, i32 %67, i32 %68)
  %70 = load i8*, i8** @XPT_ABORT, align 8
  %71 = bitcast %union.ccb* %4 to %struct.TYPE_7__*
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  store i8* %70, i8** %73, align 8
  %74 = load %struct.ccb_hdr*, %struct.ccb_hdr** %7, align 8
  %75 = bitcast %struct.ccb_hdr* %74 to %union.ccb*
  %76 = bitcast %union.ccb* %4 to %struct.TYPE_7__*
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  store %union.ccb* %75, %union.ccb** %77, align 8
  %78 = call i32 @xpt_action(%union.ccb* %4)
  br label %53

79:                                               ; preds = %53
  %80 = bitcast %union.ccb* %4 to %struct.TYPE_8__*
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %83 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @CAM_PRIORITY_NORMAL, align 4
  %86 = call i32 @xpt_setup_ccb(%struct.TYPE_9__* %81, i32 %84, i32 %85)
  %87 = load i8*, i8** @XPT_EN_LUN, align 8
  %88 = bitcast %union.ccb* %4 to %struct.TYPE_8__*
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 1
  store i8* %87, i8** %90, align 8
  %91 = bitcast %union.ccb* %4 to %struct.TYPE_8__*
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  store i64 0, i64* %92, align 8
  %93 = call i32 @xpt_action(%union.ccb* %4)
  %94 = bitcast %union.ccb* %4 to %struct.TYPE_8__*
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @CAM_REQ_CMP, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %79
  %101 = bitcast %union.ccb* %4 to %struct.TYPE_8__*
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i64 %104)
  br label %113

106:                                              ; preds = %79
  %107 = load i32, i32* @TARGBH_FLAG_LUN_ENABLED, align 4
  %108 = xor i32 %107, -1
  %109 = load %struct.targbh_softc*, %struct.targbh_softc** %5, align 8
  %110 = getelementptr inbounds %struct.targbh_softc, %struct.targbh_softc* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = and i32 %111, %108
  store i32 %112, i32* %110, align 8
  br label %113

113:                                              ; preds = %106, %100
  %114 = bitcast %union.ccb* %4 to %struct.TYPE_8__*
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  store i64 %117, i64* %2, align 8
  br label %118

118:                                              ; preds = %113, %18
  %119 = load i64, i64* %2, align 8
  ret i64 %119
}

declare dso_local i32 @xpt_setup_ccb(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @xpt_action(%union.ccb*) #1

declare dso_local %struct.ccb_hdr* @SLIST_FIRST(i32*) #1

declare dso_local i32 @SLIST_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @printf(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
