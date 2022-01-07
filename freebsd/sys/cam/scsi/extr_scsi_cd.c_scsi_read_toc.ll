; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_cd.c_scsi_read_toc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_cd.c_scsi_read_toc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccb_scsiio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.cam_periph = type opaque
%union.ccb = type opaque
%struct.scsi_read_toc = type { i32, i8*, i8*, i8*, i32 }
%struct.cam_periph.0 = type opaque
%union.ccb.1 = type opaque

@READ_TOC = common dso_local global i32 0, align 4
@CAM_DIR_IN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scsi_read_toc(%struct.ccb_scsiio* %0, i32 %1, void (%struct.cam_periph*, %union.ccb*)* %2, i8* %3, i8* %4, i8* %5, i8* %6, i8** %7, i32 %8, i32 %9, i32 %10) #0 {
  %12 = alloca %struct.ccb_scsiio*, align 8
  %13 = alloca i32, align 4
  %14 = alloca void (%struct.cam_periph*, %union.ccb*)*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8**, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.scsi_read_toc*, align 8
  store %struct.ccb_scsiio* %0, %struct.ccb_scsiio** %12, align 8
  store i32 %1, i32* %13, align 4
  store void (%struct.cam_periph*, %union.ccb*)* %2, void (%struct.cam_periph*, %union.ccb*)** %14, align 8
  store i8* %3, i8** %15, align 8
  store i8* %4, i8** %16, align 8
  store i8* %5, i8** %17, align 8
  store i8* %6, i8** %18, align 8
  store i8** %7, i8*** %19, align 8
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  store i32 %10, i32* %22, align 4
  %24 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %12, align 8
  %25 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = bitcast i32* %26 to %struct.scsi_read_toc*
  store %struct.scsi_read_toc* %27, %struct.scsi_read_toc** %23, align 8
  %28 = load %struct.scsi_read_toc*, %struct.scsi_read_toc** %23, align 8
  %29 = call i32 @bzero(%struct.scsi_read_toc* %28, i32 40)
  %30 = load i32, i32* @READ_TOC, align 4
  %31 = load %struct.scsi_read_toc*, %struct.scsi_read_toc** %23, align 8
  %32 = getelementptr inbounds %struct.scsi_read_toc, %struct.scsi_read_toc* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 8
  %33 = load i8*, i8** %16, align 8
  %34 = load %struct.scsi_read_toc*, %struct.scsi_read_toc** %23, align 8
  %35 = getelementptr inbounds %struct.scsi_read_toc, %struct.scsi_read_toc* %34, i32 0, i32 3
  store i8* %33, i8** %35, align 8
  %36 = load i8*, i8** %17, align 8
  %37 = load %struct.scsi_read_toc*, %struct.scsi_read_toc** %23, align 8
  %38 = getelementptr inbounds %struct.scsi_read_toc, %struct.scsi_read_toc* %37, i32 0, i32 2
  store i8* %36, i8** %38, align 8
  %39 = load i8*, i8** %18, align 8
  %40 = load %struct.scsi_read_toc*, %struct.scsi_read_toc** %23, align 8
  %41 = getelementptr inbounds %struct.scsi_read_toc, %struct.scsi_read_toc* %40, i32 0, i32 1
  store i8* %39, i8** %41, align 8
  %42 = load i32, i32* %20, align 4
  %43 = load %struct.scsi_read_toc*, %struct.scsi_read_toc** %23, align 8
  %44 = getelementptr inbounds %struct.scsi_read_toc, %struct.scsi_read_toc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @scsi_ulto2b(i32 %42, i32 %45)
  %47 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %12, align 8
  %48 = load i32, i32* %13, align 4
  %49 = load void (%struct.cam_periph*, %union.ccb*)*, void (%struct.cam_periph*, %union.ccb*)** %14, align 8
  %50 = bitcast void (%struct.cam_periph*, %union.ccb*)* %49 to void (%struct.cam_periph.0*, %union.ccb.1*)*
  %51 = load i32, i32* @CAM_DIR_IN, align 4
  %52 = load i8*, i8** %15, align 8
  %53 = load i8**, i8*** %19, align 8
  %54 = load i32, i32* %20, align 4
  %55 = load i32, i32* %21, align 4
  %56 = load i32, i32* %22, align 4
  %57 = call i32 @cam_fill_csio(%struct.ccb_scsiio* %47, i32 %48, void (%struct.cam_periph.0*, %union.ccb.1*)* %50, i32 %51, i8* %52, i8** %53, i32 %54, i32 %55, i32 40, i32 %56)
  ret void
}

declare dso_local i32 @bzero(%struct.scsi_read_toc*, i32) #1

declare dso_local i32 @scsi_ulto2b(i32, i32) #1

declare dso_local i32 @cam_fill_csio(%struct.ccb_scsiio*, i32, void (%struct.cam_periph.0*, %union.ccb.1*)*, i32, i8*, i8**, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
