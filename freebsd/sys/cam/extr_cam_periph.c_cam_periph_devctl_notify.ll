; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_periph.c_cam_periph_devctl_notify.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_periph.c_cam_periph_devctl_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ccb = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64, i32, i32 }
%struct.cam_periph = type { i32, i32 }
%struct.ccb_getdev = type { i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32 }
%struct.sbuf = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@CAM_PERIPH_DEVD_MSG_SIZE = common dso_local global i32 0, align 4
@M_CAMPERIPH = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@SBUF_FIXEDLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"device=%s%d \00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"serial=\22\00", align 1
@CAM_PRIORITY_NORMAL = common dso_local global i32 0, align 4
@XPT_GDEV_TYPE = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"\22 \00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"cam_status=\220x%x\22 \00", align 1
@CAM_STATUS_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"timeout=%d \00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"scsi_status=%d \00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"scsi_sense=\22%02x %02x %02x %02x\22 \00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"RES=\22\00", align 1
@XPT_SCSI_IO = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [6 x i8] c"CDB=\22\00", align 1
@XPT_ATA_IO = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [6 x i8] c"ACB=\22\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"CAM\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"periph\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.ccb*)* @cam_periph_devctl_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cam_periph_devctl_notify(%union.ccb* %0) #0 {
  %2 = alloca %union.ccb*, align 8
  %3 = alloca %struct.cam_periph*, align 8
  %4 = alloca %struct.ccb_getdev*, align 8
  %5 = alloca %struct.sbuf, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %union.ccb* %0, %union.ccb** %2, align 8
  %12 = load i32, i32* @CAM_PERIPH_DEVD_MSG_SIZE, align 4
  %13 = load i32, i32* @M_CAMPERIPH, align 4
  %14 = load i32, i32* @M_NOWAIT, align 4
  %15 = call i8* @malloc(i32 %12, i32 %13, i32 %14)
  store i8* %15, i8** %10, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %158

19:                                               ; preds = %1
  %20 = load i8*, i8** %10, align 8
  %21 = load i32, i32* @CAM_PERIPH_DEVD_MSG_SIZE, align 4
  %22 = load i32, i32* @SBUF_FIXEDLEN, align 4
  %23 = call i32 @sbuf_new(%struct.sbuf* %5, i8* %20, i32 %21, i32 %22)
  %24 = load %union.ccb*, %union.ccb** %2, align 8
  %25 = bitcast %union.ccb* %24 to %struct.TYPE_5__*
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.cam_periph* @xpt_path_periph(i32 %27)
  store %struct.cam_periph* %28, %struct.cam_periph** %3, align 8
  %29 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %30 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %33 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %5, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %34)
  %36 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %37 = call i64 (...) @xpt_alloc_ccb_nowait()
  %38 = inttoptr i64 %37 to %struct.ccb_getdev*
  store %struct.ccb_getdev* %38, %struct.ccb_getdev** %4, align 8
  %39 = icmp ne %struct.ccb_getdev* %38, null
  br i1 %39, label %40, label %74

40:                                               ; preds = %19
  %41 = load %struct.ccb_getdev*, %struct.ccb_getdev** %4, align 8
  %42 = getelementptr inbounds %struct.ccb_getdev, %struct.ccb_getdev* %41, i32 0, i32 2
  %43 = load %union.ccb*, %union.ccb** %2, align 8
  %44 = bitcast %union.ccb* %43 to %struct.TYPE_5__*
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @CAM_PRIORITY_NORMAL, align 4
  %48 = call i32 @xpt_setup_ccb(%struct.TYPE_7__* %42, i32 %46, i32 %47)
  %49 = load i32, i32* @XPT_GDEV_TYPE, align 4
  %50 = load %struct.ccb_getdev*, %struct.ccb_getdev** %4, align 8
  %51 = getelementptr inbounds %struct.ccb_getdev, %struct.ccb_getdev* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  store i32 %49, i32* %52, align 8
  %53 = load %struct.ccb_getdev*, %struct.ccb_getdev** %4, align 8
  %54 = bitcast %struct.ccb_getdev* %53 to %union.ccb*
  %55 = call i32 @xpt_action(%union.ccb* %54)
  %56 = load %struct.ccb_getdev*, %struct.ccb_getdev** %4, align 8
  %57 = getelementptr inbounds %struct.ccb_getdev, %struct.ccb_getdev* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @CAM_REQ_CMP, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %40
  %63 = load %struct.ccb_getdev*, %struct.ccb_getdev** %4, align 8
  %64 = getelementptr inbounds %struct.ccb_getdev, %struct.ccb_getdev* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ccb_getdev*, %struct.ccb_getdev** %4, align 8
  %67 = getelementptr inbounds %struct.ccb_getdev, %struct.ccb_getdev* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @sbuf_bcat(%struct.sbuf* %5, i32 %65, i32 %68)
  br label %70

70:                                               ; preds = %62, %40
  %71 = load %struct.ccb_getdev*, %struct.ccb_getdev** %4, align 8
  %72 = bitcast %struct.ccb_getdev* %71 to %union.ccb*
  %73 = call i32 @xpt_free_ccb(%union.ccb* %72)
  br label %74

74:                                               ; preds = %70, %19
  %75 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %76 = load %union.ccb*, %union.ccb** %2, align 8
  %77 = bitcast %union.ccb* %76 to %struct.TYPE_5__*
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %5, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %79)
  %81 = load %union.ccb*, %union.ccb** %2, align 8
  %82 = bitcast %union.ccb* %81 to %struct.TYPE_5__*
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @CAM_STATUS_MASK, align 4
  %86 = and i32 %84, %85
  switch i32 %86, label %116 [
    i32 129, label %87
    i32 128, label %93
    i32 130, label %109
  ]

87:                                               ; preds = %74
  %88 = load %union.ccb*, %union.ccb** %2, align 8
  %89 = bitcast %union.ccb* %88 to %struct.TYPE_5__*
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %91)
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8** %11, align 8
  br label %117

93:                                               ; preds = %74
  %94 = load %union.ccb*, %union.ccb** %2, align 8
  %95 = bitcast %union.ccb* %94 to %struct.TYPE_8__*
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %5, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %97)
  %99 = load %union.ccb*, %union.ccb** %2, align 8
  %100 = call i32 @scsi_extract_sense_ccb(%union.ccb* %99, i32* %6, i32* %7, i32* %8, i32* %9)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %93
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* %9, align 4
  %107 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %5, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %103, i32 %104, i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %102, %93
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8** %11, align 8
  br label %117

109:                                              ; preds = %74
  %110 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %111 = load %union.ccb*, %union.ccb** %2, align 8
  %112 = bitcast %union.ccb* %111 to %struct.TYPE_6__*
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 1
  %114 = call i32 @ata_res_sbuf(i32* %113, %struct.sbuf* %5)
  %115 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8** %11, align 8
  br label %117

116:                                              ; preds = %74
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8** %11, align 8
  br label %117

117:                                              ; preds = %116, %109, %108, %87
  %118 = load %union.ccb*, %union.ccb** %2, align 8
  %119 = bitcast %union.ccb* %118 to %struct.TYPE_5__*
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @XPT_SCSI_IO, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %131

124:                                              ; preds = %117
  %125 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %126 = load %union.ccb*, %union.ccb** %2, align 8
  %127 = bitcast %union.ccb* %126 to %struct.TYPE_8__*
  %128 = call i32 @scsiio_cdb_ptr(%struct.TYPE_8__* %127)
  %129 = call i32 @scsi_cdb_sbuf(i32 %128, %struct.sbuf* %5)
  %130 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %146

131:                                              ; preds = %117
  %132 = load %union.ccb*, %union.ccb** %2, align 8
  %133 = bitcast %union.ccb* %132 to %struct.TYPE_5__*
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @XPT_ATA_IO, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %145

138:                                              ; preds = %131
  %139 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  %140 = load %union.ccb*, %union.ccb** %2, align 8
  %141 = bitcast %union.ccb* %140 to %struct.TYPE_6__*
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = call i32 @ata_cmd_sbuf(i32* %142, %struct.sbuf* %5)
  %144 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %145

145:                                              ; preds = %138, %131
  br label %146

146:                                              ; preds = %145, %124
  %147 = call i64 @sbuf_finish(%struct.sbuf* %5)
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %146
  %150 = load i8*, i8** %11, align 8
  %151 = call i32 @sbuf_data(%struct.sbuf* %5)
  %152 = call i32 @devctl_notify(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i8* %150, i32 %151)
  br label %153

153:                                              ; preds = %149, %146
  %154 = call i32 @sbuf_delete(%struct.sbuf* %5)
  %155 = load i8*, i8** %10, align 8
  %156 = load i32, i32* @M_CAMPERIPH, align 4
  %157 = call i32 @free(i8* %155, i32 %156)
  br label %158

158:                                              ; preds = %153, %18
  ret void
}

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @sbuf_new(%struct.sbuf*, i8*, i32, i32) #1

declare dso_local %struct.cam_periph* @xpt_path_periph(i32) #1

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, ...) #1

declare dso_local i64 @xpt_alloc_ccb_nowait(...) #1

declare dso_local i32 @xpt_setup_ccb(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @xpt_action(%union.ccb*) #1

declare dso_local i32 @sbuf_bcat(%struct.sbuf*, i32, i32) #1

declare dso_local i32 @xpt_free_ccb(%union.ccb*) #1

declare dso_local i32 @scsi_extract_sense_ccb(%union.ccb*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @ata_res_sbuf(i32*, %struct.sbuf*) #1

declare dso_local i32 @scsi_cdb_sbuf(i32, %struct.sbuf*) #1

declare dso_local i32 @scsiio_cdb_ptr(%struct.TYPE_8__*) #1

declare dso_local i32 @ata_cmd_sbuf(i32*, %struct.sbuf*) #1

declare dso_local i64 @sbuf_finish(%struct.sbuf*) #1

declare dso_local i32 @devctl_notify(i8*, i8*, i8*, i32) #1

declare dso_local i32 @sbuf_data(%struct.sbuf*) #1

declare dso_local i32 @sbuf_delete(%struct.sbuf*) #1

declare dso_local i32 @free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
