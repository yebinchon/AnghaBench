; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_read_attribute.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_read_attribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccb_scsiio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.cam_periph = type opaque
%union.ccb = type opaque
%struct.scsi_read_attribute = type { i32, i32, i32, i32, i32, i8*, i32, i8*, i32 }
%struct.cam_periph.0 = type opaque
%union.ccb.1 = type opaque

@READ_ATTRIBUTE = common dso_local global i32 0, align 4
@SRA_CACHE = common dso_local global i32 0, align 4
@CAM_DIR_IN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scsi_read_attribute(%struct.ccb_scsiio* %0, i32 %1, void (%struct.cam_periph*, %union.ccb*)* %2, i8* %3, i8* %4, i32 %5, i8* %6, i32 %7, i32 %8, i32 %9, i32 %10, i8** %11, i32 %12, i32 %13, i32 %14) #0 {
  %16 = alloca %struct.ccb_scsiio*, align 8
  %17 = alloca i32, align 4
  %18 = alloca void (%struct.cam_periph*, %union.ccb*)*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i8**, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca %struct.scsi_read_attribute*, align 8
  store %struct.ccb_scsiio* %0, %struct.ccb_scsiio** %16, align 8
  store i32 %1, i32* %17, align 4
  store void (%struct.cam_periph*, %union.ccb*)* %2, void (%struct.cam_periph*, %union.ccb*)** %18, align 8
  store i8* %3, i8** %19, align 8
  store i8* %4, i8** %20, align 8
  store i32 %5, i32* %21, align 4
  store i8* %6, i8** %22, align 8
  store i32 %7, i32* %23, align 4
  store i32 %8, i32* %24, align 4
  store i32 %9, i32* %25, align 4
  store i32 %10, i32* %26, align 4
  store i8** %11, i8*** %27, align 8
  store i32 %12, i32* %28, align 4
  store i32 %13, i32* %29, align 4
  store i32 %14, i32* %30, align 4
  %32 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %16, align 8
  %33 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = bitcast i32* %34 to %struct.scsi_read_attribute*
  store %struct.scsi_read_attribute* %35, %struct.scsi_read_attribute** %31, align 8
  %36 = load %struct.scsi_read_attribute*, %struct.scsi_read_attribute** %31, align 8
  %37 = call i32 @bzero(%struct.scsi_read_attribute* %36, i32 56)
  %38 = load i32, i32* @READ_ATTRIBUTE, align 4
  %39 = load %struct.scsi_read_attribute*, %struct.scsi_read_attribute** %31, align 8
  %40 = getelementptr inbounds %struct.scsi_read_attribute, %struct.scsi_read_attribute* %39, i32 0, i32 8
  store i32 %38, i32* %40, align 8
  %41 = load i8*, i8** %20, align 8
  %42 = load %struct.scsi_read_attribute*, %struct.scsi_read_attribute** %31, align 8
  %43 = getelementptr inbounds %struct.scsi_read_attribute, %struct.scsi_read_attribute* %42, i32 0, i32 7
  store i8* %41, i8** %43, align 8
  %44 = load i32, i32* %21, align 4
  %45 = load %struct.scsi_read_attribute*, %struct.scsi_read_attribute** %31, align 8
  %46 = getelementptr inbounds %struct.scsi_read_attribute, %struct.scsi_read_attribute* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @scsi_ulto2b(i32 %44, i32 %47)
  %49 = load i8*, i8** %22, align 8
  %50 = load %struct.scsi_read_attribute*, %struct.scsi_read_attribute** %31, align 8
  %51 = getelementptr inbounds %struct.scsi_read_attribute, %struct.scsi_read_attribute* %50, i32 0, i32 5
  store i8* %49, i8** %51, align 8
  %52 = load i32, i32* %23, align 4
  %53 = load %struct.scsi_read_attribute*, %struct.scsi_read_attribute** %31, align 8
  %54 = getelementptr inbounds %struct.scsi_read_attribute, %struct.scsi_read_attribute* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* %24, align 4
  %56 = load %struct.scsi_read_attribute*, %struct.scsi_read_attribute** %31, align 8
  %57 = getelementptr inbounds %struct.scsi_read_attribute, %struct.scsi_read_attribute* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* %25, align 4
  %59 = load %struct.scsi_read_attribute*, %struct.scsi_read_attribute** %31, align 8
  %60 = getelementptr inbounds %struct.scsi_read_attribute, %struct.scsi_read_attribute* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @scsi_ulto2b(i32 %58, i32 %61)
  %63 = load i32, i32* %28, align 4
  %64 = load %struct.scsi_read_attribute*, %struct.scsi_read_attribute** %31, align 8
  %65 = getelementptr inbounds %struct.scsi_read_attribute, %struct.scsi_read_attribute* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @scsi_ulto4b(i32 %63, i32 %66)
  %68 = load i32, i32* %26, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %15
  %71 = load i32, i32* @SRA_CACHE, align 4
  %72 = load %struct.scsi_read_attribute*, %struct.scsi_read_attribute** %31, align 8
  %73 = getelementptr inbounds %struct.scsi_read_attribute, %struct.scsi_read_attribute* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 8
  br label %76

76:                                               ; preds = %70, %15
  %77 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %16, align 8
  %78 = load i32, i32* %17, align 4
  %79 = load void (%struct.cam_periph*, %union.ccb*)*, void (%struct.cam_periph*, %union.ccb*)** %18, align 8
  %80 = bitcast void (%struct.cam_periph*, %union.ccb*)* %79 to void (%struct.cam_periph.0*, %union.ccb.1*)*
  %81 = load i32, i32* @CAM_DIR_IN, align 4
  %82 = load i8*, i8** %19, align 8
  %83 = load i8**, i8*** %27, align 8
  %84 = load i32, i32* %28, align 4
  %85 = load i32, i32* %29, align 4
  %86 = load i32, i32* %30, align 4
  %87 = call i32 @cam_fill_csio(%struct.ccb_scsiio* %77, i32 %78, void (%struct.cam_periph.0*, %union.ccb.1*)* %80, i32 %81, i8* %82, i8** %83, i32 %84, i32 %85, i32 56, i32 %86)
  ret void
}

declare dso_local i32 @bzero(%struct.scsi_read_attribute*, i32) #1

declare dso_local i32 @scsi_ulto2b(i32, i32) #1

declare dso_local i32 @scsi_ulto4b(i32, i32) #1

declare dso_local i32 @cam_fill_csio(%struct.ccb_scsiio*, i32, void (%struct.cam_periph.0*, %union.ccb.1*)*, i32, i8*, i8**, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
