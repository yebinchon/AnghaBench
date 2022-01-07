; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_cam_periph_getccb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_cam_periph_getccb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%union.ccb = type { i32 }
%struct.cam_periph = type { i64, i32, i32 }
%struct.ccb_hdr = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@CAM_DEBUG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"cam_periph_getccb\0A\00", align 1
@MA_OWNED = common dso_local global i32 0, align 4
@PRIBIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"cgticb\00", align 1
@periph_links = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %union.ccb* @cam_periph_getccb(%struct.cam_periph* %0, i64 %1) #0 {
  %3 = alloca %struct.cam_periph*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ccb_hdr*, align 8
  store %struct.cam_periph* %0, %struct.cam_periph** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %7 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @CAM_DEBUG_TRACE, align 4
  %10 = call i32 @CAM_DEBUG(i32 %8, i32 %9, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %12 = load i32, i32* @MA_OWNED, align 4
  %13 = call i32 @cam_periph_assert(%struct.cam_periph* %11, i32 %12)
  br label %14

14:                                               ; preds = %46, %2
  %15 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %16 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %15, i32 0, i32 1
  %17 = call %struct.ccb_hdr* @SLIST_FIRST(i32* %16)
  store %struct.ccb_hdr* %17, %struct.ccb_hdr** %5, align 8
  %18 = icmp eq %struct.ccb_hdr* %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %14
  %20 = load %struct.ccb_hdr*, %struct.ccb_hdr** %5, align 8
  %21 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %4, align 8
  %25 = icmp ne i64 %23, %24
  br label %26

26:                                               ; preds = %19, %14
  %27 = phi i1 [ true, %14 ], [ %25, %19 ]
  br i1 %27, label %28, label %47

28:                                               ; preds = %26
  %29 = load i64, i64* %4, align 8
  %30 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %31 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp slt i64 %29, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  %35 = load i64, i64* %4, align 8
  %36 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %37 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %39 = call i32 @xpt_run_allocq(%struct.cam_periph* %38, i32 0)
  br label %46

40:                                               ; preds = %28
  %41 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %42 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %43 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %42, i32 0, i32 1
  %44 = load i32, i32* @PRIBIO, align 4
  %45 = call i32 @cam_periph_sleep(%struct.cam_periph* %41, i32* %43, i32 %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 0)
  br label %46

46:                                               ; preds = %40, %34
  br label %14

47:                                               ; preds = %26
  %48 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %49 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %48, i32 0, i32 1
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @periph_links, i32 0, i32 0), align 4
  %51 = call i32 @SLIST_REMOVE_HEAD(i32* %49, i32 %50)
  %52 = load %struct.ccb_hdr*, %struct.ccb_hdr** %5, align 8
  %53 = bitcast %struct.ccb_hdr* %52 to %union.ccb*
  ret %union.ccb* %53
}

declare dso_local i32 @CAM_DEBUG(i32, i32, i8*) #1

declare dso_local i32 @cam_periph_assert(%struct.cam_periph*, i32) #1

declare dso_local %struct.ccb_hdr* @SLIST_FIRST(i32*) #1

declare dso_local i32 @xpt_run_allocq(%struct.cam_periph*, i32) #1

declare dso_local i32 @cam_periph_sleep(%struct.cam_periph*, i32*, i32, i8*, i32) #1

declare dso_local i32 @SLIST_REMOVE_HEAD(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
