; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_ch.c_scsi_read_element_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_ch.c_scsi_read_element_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccb_scsiio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.cam_periph = type opaque
%union.ccb = type opaque
%struct.scsi_read_element_status = type { i32, i32, i32, i32, i32, i32 }
%struct.cam_periph.0 = type opaque
%union.ccb.1 = type opaque

@READ_ELEMENT_STATUS = common dso_local global i32 0, align 4
@READ_ELEMENT_STATUS_DVCID = common dso_local global i32 0, align 4
@READ_ELEMENT_STATUS_CURDATA = common dso_local global i32 0, align 4
@READ_ELEMENT_STATUS_VOLTAG = common dso_local global i32 0, align 4
@CAM_DIR_IN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scsi_read_element_status(%struct.ccb_scsiio* %0, i32 %1, void (%struct.cam_periph*, %union.ccb*)* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32* %9, i32 %10, i32 %11, i32 %12) #0 {
  %14 = alloca %struct.ccb_scsiio*, align 8
  %15 = alloca i32, align 4
  %16 = alloca void (%struct.cam_periph*, %union.ccb*)*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.scsi_read_element_status*, align 8
  store %struct.ccb_scsiio* %0, %struct.ccb_scsiio** %14, align 8
  store i32 %1, i32* %15, align 4
  store void (%struct.cam_periph*, %union.ccb*)* %2, void (%struct.cam_periph*, %union.ccb*)** %16, align 8
  store i32 %3, i32* %17, align 4
  store i32 %4, i32* %18, align 4
  store i32 %5, i32* %19, align 4
  store i32 %6, i32* %20, align 4
  store i32 %7, i32* %21, align 4
  store i32 %8, i32* %22, align 4
  store i32* %9, i32** %23, align 8
  store i32 %10, i32* %24, align 4
  store i32 %11, i32* %25, align 4
  store i32 %12, i32* %26, align 4
  %28 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %14, align 8
  %29 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = bitcast i32* %30 to %struct.scsi_read_element_status*
  store %struct.scsi_read_element_status* %31, %struct.scsi_read_element_status** %27, align 8
  %32 = load %struct.scsi_read_element_status*, %struct.scsi_read_element_status** %27, align 8
  %33 = call i32 @bzero(%struct.scsi_read_element_status* %32, i32 24)
  %34 = load i32, i32* @READ_ELEMENT_STATUS, align 4
  %35 = load %struct.scsi_read_element_status*, %struct.scsi_read_element_status** %27, align 8
  %36 = getelementptr inbounds %struct.scsi_read_element_status, %struct.scsi_read_element_status* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %19, align 4
  %38 = load %struct.scsi_read_element_status*, %struct.scsi_read_element_status** %27, align 8
  %39 = getelementptr inbounds %struct.scsi_read_element_status, %struct.scsi_read_element_status* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @scsi_ulto2b(i32 %37, i32 %40)
  %42 = load i32, i32* %22, align 4
  %43 = load %struct.scsi_read_element_status*, %struct.scsi_read_element_status** %27, align 8
  %44 = getelementptr inbounds %struct.scsi_read_element_status, %struct.scsi_read_element_status* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @scsi_ulto2b(i32 %42, i32 %45)
  %47 = load i32, i32* %24, align 4
  %48 = load %struct.scsi_read_element_status*, %struct.scsi_read_element_status** %27, align 8
  %49 = getelementptr inbounds %struct.scsi_read_element_status, %struct.scsi_read_element_status* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @scsi_ulto3b(i32 %47, i32 %50)
  %52 = load i32, i32* %21, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %13
  %55 = load i32, i32* @READ_ELEMENT_STATUS_DVCID, align 4
  %56 = load %struct.scsi_read_element_status*, %struct.scsi_read_element_status** %27, align 8
  %57 = getelementptr inbounds %struct.scsi_read_element_status, %struct.scsi_read_element_status* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %54, %13
  %61 = load i32, i32* %20, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load i32, i32* @READ_ELEMENT_STATUS_CURDATA, align 4
  %65 = load %struct.scsi_read_element_status*, %struct.scsi_read_element_status** %27, align 8
  %66 = getelementptr inbounds %struct.scsi_read_element_status, %struct.scsi_read_element_status* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %63, %60
  %70 = load i32, i32* %18, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %69
  %73 = load i32, i32* @READ_ELEMENT_STATUS_VOLTAG, align 4
  %74 = load %struct.scsi_read_element_status*, %struct.scsi_read_element_status** %27, align 8
  %75 = getelementptr inbounds %struct.scsi_read_element_status, %struct.scsi_read_element_status* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %72, %69
  %79 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %14, align 8
  %80 = load i32, i32* %15, align 4
  %81 = load void (%struct.cam_periph*, %union.ccb*)*, void (%struct.cam_periph*, %union.ccb*)** %16, align 8
  %82 = bitcast void (%struct.cam_periph*, %union.ccb*)* %81 to void (%struct.cam_periph.0*, %union.ccb.1*)*
  %83 = load i32, i32* @CAM_DIR_IN, align 4
  %84 = load i32, i32* %17, align 4
  %85 = load i32*, i32** %23, align 8
  %86 = load i32, i32* %24, align 4
  %87 = load i32, i32* %25, align 4
  %88 = load i32, i32* %26, align 4
  %89 = call i32 @cam_fill_csio(%struct.ccb_scsiio* %79, i32 %80, void (%struct.cam_periph.0*, %union.ccb.1*)* %82, i32 %83, i32 %84, i32* %85, i32 %86, i32 %87, i32 24, i32 %88)
  ret void
}

declare dso_local i32 @bzero(%struct.scsi_read_element_status*, i32) #1

declare dso_local i32 @scsi_ulto2b(i32, i32) #1

declare dso_local i32 @scsi_ulto3b(i32, i32) #1

declare dso_local i32 @cam_fill_csio(%struct.ccb_scsiio*, i32, void (%struct.cam_periph.0*, %union.ccb.1*)*, i32, i32, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
