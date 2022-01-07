; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_periph.c_cam_release_devq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_periph.c_cam_release_devq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_path = type { i32 }
%struct.ccb_relsim = type { i8*, i8*, i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%union.ccb = type { i32 }

@CAM_DEBUG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"cam_release_devq(%u, %u, %u, %d)\0A\00", align 1
@CAM_PRIORITY_NORMAL = common dso_local global i32 0, align 4
@XPT_REL_SIMQ = common dso_local global i32 0, align 4
@CAM_DEV_QFREEZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @cam_release_devq(%struct.cam_path* %0, i8* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.cam_path*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ccb_relsim, align 8
  store %struct.cam_path* %0, %struct.cam_path** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %13 = load i32, i32* @CAM_DEBUG_TRACE, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = load i32, i32* %10, align 4
  %18 = sext i32 %17 to i64
  %19 = inttoptr i64 %18 to i8*
  %20 = call i32 @CAM_DEBUG(%struct.cam_path* %12, i32 %13, i8* %19)
  %21 = getelementptr inbounds %struct.ccb_relsim, %struct.ccb_relsim* %11, i32 0, i32 4
  %22 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %23 = load i32, i32* @CAM_PRIORITY_NORMAL, align 4
  %24 = call i32 @xpt_setup_ccb(%struct.TYPE_2__* %21, %struct.cam_path* %22, i32 %23)
  %25 = load i32, i32* @XPT_REL_SIMQ, align 4
  %26 = getelementptr inbounds %struct.ccb_relsim, %struct.ccb_relsim* %11, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %5
  %31 = load i32, i32* @CAM_DEV_QFREEZE, align 4
  br label %33

32:                                               ; preds = %5
  br label %33

33:                                               ; preds = %32, %30
  %34 = phi i32 [ %31, %30 ], [ 0, %32 ]
  %35 = getelementptr inbounds %struct.ccb_relsim, %struct.ccb_relsim* %11, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = getelementptr inbounds %struct.ccb_relsim, %struct.ccb_relsim* %11, i32 0, i32 3
  store i8* %37, i8** %38, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = getelementptr inbounds %struct.ccb_relsim, %struct.ccb_relsim* %11, i32 0, i32 2
  store i8* %39, i8** %40, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = getelementptr inbounds %struct.ccb_relsim, %struct.ccb_relsim* %11, i32 0, i32 1
  store i8* %41, i8** %42, align 8
  %43 = bitcast %struct.ccb_relsim* %11 to %union.ccb*
  %44 = call i32 @xpt_action(%union.ccb* %43)
  %45 = getelementptr inbounds %struct.ccb_relsim, %struct.ccb_relsim* %11, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  ret i8* %46
}

declare dso_local i32 @CAM_DEBUG(%struct.cam_path*, i32, i8*) #1

declare dso_local i32 @xpt_setup_ccb(%struct.TYPE_2__*, %struct.cam_path*, i32) #1

declare dso_local i32 @xpt_action(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
