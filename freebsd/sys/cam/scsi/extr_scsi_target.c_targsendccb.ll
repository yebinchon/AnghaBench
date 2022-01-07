; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_target.c_targsendccb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_target.c_targsendccb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.targ_softc = type { i32, i32, i32 }
%union.ccb = type { %struct.ccb_hdr }
%struct.ccb_hdr = type { i64, i32, %struct.targ_cmd_descr*, i32 }
%struct.targ_cmd_descr = type { %struct.cam_periph_map_info }
%struct.cam_periph_map_info = type { i64 }

@targdone = common dso_local global i32 0, align 4
@XPT_CONT_TARGET_IO = common dso_local global i64 0, align 8
@XPT_DEV_MATCH = common dso_local global i64 0, align 8
@CAM_REQ_CMP_ERR = common dso_local global i32 0, align 4
@CAM_DEBUG_PERIPH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"sendccb %p\0A\00", align 1
@periph_links = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.targ_softc*, %union.ccb*, %struct.targ_cmd_descr*)* @targsendccb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @targsendccb(%struct.targ_softc* %0, %union.ccb* %1, %struct.targ_cmd_descr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.targ_softc*, align 8
  %6 = alloca %union.ccb*, align 8
  %7 = alloca %struct.targ_cmd_descr*, align 8
  %8 = alloca %struct.cam_periph_map_info*, align 8
  %9 = alloca %struct.ccb_hdr*, align 8
  %10 = alloca i32, align 4
  store %struct.targ_softc* %0, %struct.targ_softc** %5, align 8
  store %union.ccb* %1, %union.ccb** %6, align 8
  store %struct.targ_cmd_descr* %2, %struct.targ_cmd_descr** %7, align 8
  %11 = load %union.ccb*, %union.ccb** %6, align 8
  %12 = bitcast %union.ccb* %11 to %struct.ccb_hdr*
  store %struct.ccb_hdr* %12, %struct.ccb_hdr** %9, align 8
  %13 = load %struct.targ_cmd_descr*, %struct.targ_cmd_descr** %7, align 8
  %14 = getelementptr inbounds %struct.targ_cmd_descr, %struct.targ_cmd_descr* %13, i32 0, i32 0
  store %struct.cam_periph_map_info* %14, %struct.cam_periph_map_info** %8, align 8
  %15 = load %struct.cam_periph_map_info*, %struct.cam_periph_map_info** %8, align 8
  %16 = getelementptr inbounds %struct.cam_periph_map_info, %struct.cam_periph_map_info* %15, i32 0, i32 0
  store i64 0, i64* %16, align 8
  %17 = load i32, i32* @targdone, align 4
  %18 = load %struct.ccb_hdr*, %struct.ccb_hdr** %9, align 8
  %19 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 8
  %20 = load %struct.targ_cmd_descr*, %struct.targ_cmd_descr** %7, align 8
  %21 = load %struct.ccb_hdr*, %struct.ccb_hdr** %9, align 8
  %22 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %21, i32 0, i32 2
  store %struct.targ_cmd_descr* %20, %struct.targ_cmd_descr** %22, align 8
  %23 = load %struct.ccb_hdr*, %struct.ccb_hdr** %9, align 8
  %24 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @XPT_CONT_TARGET_IO, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %34, label %28

28:                                               ; preds = %3
  %29 = load %struct.ccb_hdr*, %struct.ccb_hdr** %9, align 8
  %30 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @XPT_DEV_MATCH, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %51

34:                                               ; preds = %28, %3
  %35 = load %union.ccb*, %union.ccb** %6, align 8
  %36 = load %struct.cam_periph_map_info*, %struct.cam_periph_map_info** %8, align 8
  %37 = load %struct.targ_softc*, %struct.targ_softc** %5, align 8
  %38 = getelementptr inbounds %struct.targ_softc, %struct.targ_softc* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @cam_periph_mapmem(%union.ccb* %35, %struct.cam_periph_map_info* %36, i32 %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %34
  %44 = load i32, i32* @CAM_REQ_CMP_ERR, align 4
  %45 = load %struct.ccb_hdr*, %struct.ccb_hdr** %9, align 8
  %46 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  %47 = load %struct.cam_periph_map_info*, %struct.cam_periph_map_info** %8, align 8
  %48 = getelementptr inbounds %struct.cam_periph_map_info, %struct.cam_periph_map_info* %47, i32 0, i32 0
  store i64 0, i64* %48, align 8
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %4, align 4
  br label %71

50:                                               ; preds = %34
  br label %51

51:                                               ; preds = %50, %28
  %52 = load %struct.targ_softc*, %struct.targ_softc** %5, align 8
  %53 = getelementptr inbounds %struct.targ_softc, %struct.targ_softc* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @CAM_DEBUG_PERIPH, align 4
  %56 = load %union.ccb*, %union.ccb** %6, align 8
  %57 = bitcast %union.ccb* %56 to i8*
  %58 = call i32 @CAM_DEBUG(i32 %54, i32 %55, i8* %57)
  %59 = load %union.ccb*, %union.ccb** %6, align 8
  %60 = call i64 @XPT_FC_IS_QUEUED(%union.ccb* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %51
  %63 = load %struct.targ_softc*, %struct.targ_softc** %5, align 8
  %64 = getelementptr inbounds %struct.targ_softc, %struct.targ_softc* %63, i32 0, i32 0
  %65 = load %struct.ccb_hdr*, %struct.ccb_hdr** %9, align 8
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @periph_links, i32 0, i32 0), align 4
  %67 = call i32 @TAILQ_INSERT_TAIL(i32* %64, %struct.ccb_hdr* %65, i32 %66)
  br label %68

68:                                               ; preds = %62, %51
  %69 = load %union.ccb*, %union.ccb** %6, align 8
  %70 = call i32 @xpt_action(%union.ccb* %69)
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %68, %43
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @cam_periph_mapmem(%union.ccb*, %struct.cam_periph_map_info*, i32) #1

declare dso_local i32 @CAM_DEBUG(i32, i32, i8*) #1

declare dso_local i64 @XPT_FC_IS_QUEUED(%union.ccb*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.ccb_hdr*, i32) #1

declare dso_local i32 @xpt_action(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
