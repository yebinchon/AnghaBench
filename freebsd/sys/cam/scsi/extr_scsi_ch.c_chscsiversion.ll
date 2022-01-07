; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_ch.c_chscsiversion.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_ch.c_chscsiversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_periph = type { i32 }
%struct.scsi_inquiry_data = type { i32 }
%struct.ccb_getdev = type { %struct.scsi_inquiry_data, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%union.ccb = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@CAM_PRIORITY_NORMAL = common dso_local global i32 0, align 4
@XPT_GDEV_TYPE = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_periph*)* @chscsiversion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chscsiversion(%struct.cam_periph* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cam_periph*, align 8
  %4 = alloca %struct.scsi_inquiry_data*, align 8
  %5 = alloca %struct.ccb_getdev*, align 8
  %6 = alloca i32, align 4
  store %struct.cam_periph* %0, %struct.cam_periph** %3, align 8
  %7 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %8 = load i32, i32* @MA_OWNED, align 4
  %9 = call i32 @cam_periph_assert(%struct.cam_periph* %7, i32 %8)
  %10 = call i64 (...) @xpt_alloc_ccb_nowait()
  %11 = inttoptr i64 %10 to %struct.ccb_getdev*
  store %struct.ccb_getdev* %11, %struct.ccb_getdev** %5, align 8
  %12 = icmp eq %struct.ccb_getdev* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %49

14:                                               ; preds = %1
  %15 = load %struct.ccb_getdev*, %struct.ccb_getdev** %5, align 8
  %16 = getelementptr inbounds %struct.ccb_getdev, %struct.ccb_getdev* %15, i32 0, i32 1
  %17 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %18 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @CAM_PRIORITY_NORMAL, align 4
  %21 = call i32 @xpt_setup_ccb(%struct.TYPE_2__* %16, i32 %19, i32 %20)
  %22 = load i32, i32* @XPT_GDEV_TYPE, align 4
  %23 = load %struct.ccb_getdev*, %struct.ccb_getdev** %5, align 8
  %24 = getelementptr inbounds %struct.ccb_getdev, %struct.ccb_getdev* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  store i32 %22, i32* %25, align 8
  %26 = load %struct.ccb_getdev*, %struct.ccb_getdev** %5, align 8
  %27 = bitcast %struct.ccb_getdev* %26 to %union.ccb*
  %28 = call i32 @xpt_action(%union.ccb* %27)
  %29 = load %struct.ccb_getdev*, %struct.ccb_getdev** %5, align 8
  %30 = getelementptr inbounds %struct.ccb_getdev, %struct.ccb_getdev* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @CAM_REQ_CMP, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %14
  %36 = load %struct.ccb_getdev*, %struct.ccb_getdev** %5, align 8
  %37 = bitcast %struct.ccb_getdev* %36 to %union.ccb*
  %38 = call i32 @xpt_free_ccb(%union.ccb* %37)
  store i32 -1, i32* %2, align 4
  br label %49

39:                                               ; preds = %14
  %40 = load %struct.ccb_getdev*, %struct.ccb_getdev** %5, align 8
  %41 = getelementptr inbounds %struct.ccb_getdev, %struct.ccb_getdev* %40, i32 0, i32 0
  store %struct.scsi_inquiry_data* %41, %struct.scsi_inquiry_data** %4, align 8
  %42 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %4, align 8
  %43 = getelementptr inbounds %struct.scsi_inquiry_data, %struct.scsi_inquiry_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %6, align 4
  %45 = load %struct.ccb_getdev*, %struct.ccb_getdev** %5, align 8
  %46 = bitcast %struct.ccb_getdev* %45 to %union.ccb*
  %47 = call i32 @xpt_free_ccb(%union.ccb* %46)
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %39, %35, %13
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @cam_periph_assert(%struct.cam_periph*, i32) #1

declare dso_local i64 @xpt_alloc_ccb_nowait(...) #1

declare dso_local i32 @xpt_setup_ccb(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @xpt_action(%union.ccb*) #1

declare dso_local i32 @xpt_free_ccb(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
