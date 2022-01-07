; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_cd.c_cdreadsubchannel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_cd.c_cdreadsubchannel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_periph = type { i32 }
%struct.cd_sub_channel_info = type { i32 }
%struct.scsi_read_subchannel = type { i32, i64, i64, i64, i32, i32, i32 }
%struct.ccb_scsiio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%union.ccb = type { %struct.ccb_scsiio }

@CAM_PRIORITY_NORMAL = common dso_local global i32 0, align 4
@cd_retry_count = common dso_local global i32 0, align 4
@CAM_DIR_IN = common dso_local global i32 0, align 4
@MSG_SIMPLE_Q_TAG = common dso_local global i32 0, align 4
@SSD_FULL_SIZE = common dso_local global i32 0, align 4
@READ_SUBCHANNEL = common dso_local global i32 0, align 4
@CD_MSF_FORMAT = common dso_local global i64 0, align 8
@CD_MSF = common dso_local global i32 0, align 4
@SRS_SUBQ = common dso_local global i32 0, align 4
@cderror = common dso_local global i32 0, align 4
@CAM_RETRY_SELTO = common dso_local global i32 0, align 4
@SF_RETRY_UA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_periph*, i64, i64, i32, %struct.cd_sub_channel_info*, i64)* @cdreadsubchannel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdreadsubchannel(%struct.cam_periph* %0, i64 %1, i64 %2, i32 %3, %struct.cd_sub_channel_info* %4, i64 %5) #0 {
  %7 = alloca %struct.cam_periph*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.cd_sub_channel_info*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.scsi_read_subchannel*, align 8
  %14 = alloca %struct.ccb_scsiio*, align 8
  %15 = alloca %union.ccb*, align 8
  %16 = alloca i32, align 4
  store %struct.cam_periph* %0, %struct.cam_periph** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.cd_sub_channel_info* %4, %struct.cd_sub_channel_info** %11, align 8
  store i64 %5, i64* %12, align 8
  store i32 0, i32* %16, align 4
  %17 = load %struct.cam_periph*, %struct.cam_periph** %7, align 8
  %18 = load i32, i32* @CAM_PRIORITY_NORMAL, align 4
  %19 = call %union.ccb* @cam_periph_getccb(%struct.cam_periph* %17, i32 %18)
  store %union.ccb* %19, %union.ccb** %15, align 8
  %20 = load %union.ccb*, %union.ccb** %15, align 8
  %21 = bitcast %union.ccb* %20 to %struct.ccb_scsiio*
  store %struct.ccb_scsiio* %21, %struct.ccb_scsiio** %14, align 8
  %22 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %14, align 8
  %23 = load i32, i32* @cd_retry_count, align 4
  %24 = load i32, i32* @CAM_DIR_IN, align 4
  %25 = load i32, i32* @MSG_SIMPLE_Q_TAG, align 4
  %26 = load %struct.cd_sub_channel_info*, %struct.cd_sub_channel_info** %11, align 8
  %27 = bitcast %struct.cd_sub_channel_info* %26 to i32*
  %28 = load i64, i64* %12, align 8
  %29 = load i32, i32* @SSD_FULL_SIZE, align 4
  %30 = call i32 @cam_fill_csio(%struct.ccb_scsiio* %22, i32 %23, i32* null, i32 %24, i32 %25, i32* %27, i64 %28, i32 %29, i32 48, i32 50000)
  %31 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %14, align 8
  %32 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = bitcast i32* %33 to %struct.scsi_read_subchannel*
  store %struct.scsi_read_subchannel* %34, %struct.scsi_read_subchannel** %13, align 8
  %35 = load %struct.scsi_read_subchannel*, %struct.scsi_read_subchannel** %13, align 8
  %36 = call i32 @bzero(%struct.scsi_read_subchannel* %35, i32 48)
  %37 = load i32, i32* @READ_SUBCHANNEL, align 4
  %38 = load %struct.scsi_read_subchannel*, %struct.scsi_read_subchannel** %13, align 8
  %39 = getelementptr inbounds %struct.scsi_read_subchannel, %struct.scsi_read_subchannel* %38, i32 0, i32 6
  store i32 %37, i32* %39, align 8
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* @CD_MSF_FORMAT, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %6
  %44 = load i32, i32* @CD_MSF, align 4
  %45 = load %struct.scsi_read_subchannel*, %struct.scsi_read_subchannel** %13, align 8
  %46 = getelementptr inbounds %struct.scsi_read_subchannel, %struct.scsi_read_subchannel* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %43, %6
  %50 = load i32, i32* @SRS_SUBQ, align 4
  %51 = load %struct.scsi_read_subchannel*, %struct.scsi_read_subchannel** %13, align 8
  %52 = getelementptr inbounds %struct.scsi_read_subchannel, %struct.scsi_read_subchannel* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 8
  %53 = load i64, i64* %9, align 8
  %54 = load %struct.scsi_read_subchannel*, %struct.scsi_read_subchannel** %13, align 8
  %55 = getelementptr inbounds %struct.scsi_read_subchannel, %struct.scsi_read_subchannel* %54, i32 0, i32 3
  store i64 %53, i64* %55, align 8
  %56 = load i32, i32* %10, align 4
  %57 = load %struct.scsi_read_subchannel*, %struct.scsi_read_subchannel** %13, align 8
  %58 = getelementptr inbounds %struct.scsi_read_subchannel, %struct.scsi_read_subchannel* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load i64, i64* %12, align 8
  %60 = load %struct.scsi_read_subchannel*, %struct.scsi_read_subchannel** %13, align 8
  %61 = getelementptr inbounds %struct.scsi_read_subchannel, %struct.scsi_read_subchannel* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = inttoptr i64 %62 to i32*
  %64 = call i32 @scsi_ulto2b(i64 %59, i32* %63)
  %65 = load %struct.scsi_read_subchannel*, %struct.scsi_read_subchannel** %13, align 8
  %66 = getelementptr inbounds %struct.scsi_read_subchannel, %struct.scsi_read_subchannel* %65, i32 0, i32 1
  store i64 0, i64* %66, align 8
  %67 = load %union.ccb*, %union.ccb** %15, align 8
  %68 = load i32, i32* @cderror, align 4
  %69 = load i32, i32* @CAM_RETRY_SELTO, align 4
  %70 = load i32, i32* @SF_RETRY_UA, align 4
  %71 = call i32 @cdrunccb(%union.ccb* %67, i32 %68, i32 %69, i32 %70)
  store i32 %71, i32* %16, align 4
  %72 = load %union.ccb*, %union.ccb** %15, align 8
  %73 = call i32 @xpt_release_ccb(%union.ccb* %72)
  %74 = load i32, i32* %16, align 4
  ret i32 %74
}

declare dso_local %union.ccb* @cam_periph_getccb(%struct.cam_periph*, i32) #1

declare dso_local i32 @cam_fill_csio(%struct.ccb_scsiio*, i32, i32*, i32, i32, i32*, i64, i32, i32, i32) #1

declare dso_local i32 @bzero(%struct.scsi_read_subchannel*, i32) #1

declare dso_local i32 @scsi_ulto2b(i64, i32*) #1

declare dso_local i32 @cdrunccb(%union.ccb*, i32, i32, i32) #1

declare dso_local i32 @xpt_release_ccb(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
