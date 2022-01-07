; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_target.c_targendislun.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_target.c_targendislun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_path = type { i32 }
%struct.ccb_en_lun = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%union.ccb = type { i32 }

@CAM_PRIORITY_NORMAL = common dso_local global i32 0, align 4
@XPT_EN_LUN = common dso_local global i32 0, align 4
@CAM_STATUS_MASK = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"%sable lun CCB rejected, status %#x\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"en\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"dis\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_path*, i32, i32, i32)* @targendislun to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @targendislun(%struct.cam_path* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.cam_path*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ccb_en_lun, align 4
  %10 = alloca i32, align 4
  store %struct.cam_path* %0, %struct.cam_path** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = getelementptr inbounds %struct.ccb_en_lun, %struct.ccb_en_lun* %9, i32 0, i32 3
  %12 = load %struct.cam_path*, %struct.cam_path** %5, align 8
  %13 = load i32, i32* @CAM_PRIORITY_NORMAL, align 4
  %14 = call i32 @xpt_setup_ccb(%struct.TYPE_2__* %11, %struct.cam_path* %12, i32 %13)
  %15 = load i32, i32* @XPT_EN_LUN, align 4
  %16 = getelementptr inbounds %struct.ccb_en_lun, %struct.ccb_en_lun* %9, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* %7, align 4
  %19 = getelementptr inbounds %struct.ccb_en_lun, %struct.ccb_en_lun* %9, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* %8, align 4
  %21 = getelementptr inbounds %struct.ccb_en_lun, %struct.ccb_en_lun* %9, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 1, i32 0
  %26 = getelementptr inbounds %struct.ccb_en_lun, %struct.ccb_en_lun* %9, i32 0, i32 2
  store i32 %25, i32* %26, align 4
  %27 = bitcast %struct.ccb_en_lun* %9 to %union.ccb*
  %28 = call i32 @xpt_action(%union.ccb* %27)
  %29 = getelementptr inbounds %struct.ccb_en_lun, %struct.ccb_en_lun* %9, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @CAM_STATUS_MASK, align 4
  %33 = and i32 %31, %32
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @CAM_REQ_CMP, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %4
  %38 = load %struct.cam_path*, %struct.cam_path** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @xpt_print(%struct.cam_path* %38, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %42, i32 %43)
  br label %45

45:                                               ; preds = %37, %4
  %46 = load i32, i32* %10, align 4
  ret i32 %46
}

declare dso_local i32 @xpt_setup_ccb(%struct.TYPE_2__*, %struct.cam_path*, i32) #1

declare dso_local i32 @xpt_action(%union.ccb*) #1

declare dso_local i32 @xpt_print(%struct.cam_path*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
