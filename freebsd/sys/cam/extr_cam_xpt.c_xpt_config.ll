; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@xsoftc = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@PRIBIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"CAM taskq\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"xpt_config: failed to create taskqueue thread.\0A\00", align 1
@cam_dflags = common dso_local global i64 0, align 8
@CAM_DEBUG_NONE = common dso_local global i64 0, align 8
@cam_dpath = common dso_local global i32* null, align 8
@CAM_DEBUG_BUS = common dso_local global i32 0, align 4
@CAM_DEBUG_TARGET = common dso_local global i32 0, align 4
@CAM_DEBUG_LUN = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [84 x i8] c"xpt_config: xpt_create_path() failed for debug target %d:%d:%d, debugging disabled\0A\00", align 1
@SBT_1MS = common dso_local global i32 0, align 4
@xpt_boot_delay = common dso_local global i32 0, align 4
@xpt_scanner_thread = common dso_local global i32 0, align 4
@cam_proc = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"cam\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"scanner\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"xpt_config: failed to create rescan thread.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @xpt_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xpt_config(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i32, i32* @PRIBIO, align 4
  %4 = call i64 @taskqueue_start_threads(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xsoftc, i32 0, i32 2), i32 1, i32 %3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %8

8:                                                ; preds = %6, %1
  %9 = load i64, i64* @cam_dflags, align 8
  %10 = load i64, i64* @CAM_DEBUG_NONE, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %26

12:                                               ; preds = %8
  %13 = load i32, i32* @CAM_DEBUG_BUS, align 4
  %14 = load i32, i32* @CAM_DEBUG_TARGET, align 4
  %15 = load i32, i32* @CAM_DEBUG_LUN, align 4
  %16 = call i64 @xpt_create_path(i32** @cam_dpath, i32* null, i32 %13, i32 %14, i32 %15)
  %17 = load i64, i64* @CAM_REQ_CMP, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %12
  %20 = load i32, i32* @CAM_DEBUG_BUS, align 4
  %21 = load i32, i32* @CAM_DEBUG_TARGET, align 4
  %22 = load i32, i32* @CAM_DEBUG_LUN, align 4
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.2, i64 0, i64 0), i32 %20, i32 %21, i32 %22)
  %24 = load i64, i64* @CAM_DEBUG_NONE, align 8
  store i64 %24, i64* @cam_dflags, align 8
  br label %25

25:                                               ; preds = %19, %12
  br label %27

26:                                               ; preds = %8
  store i32* null, i32** @cam_dpath, align 8
  br label %27

27:                                               ; preds = %26, %25
  %28 = call i32 @periphdriver_init(i32 1)
  %29 = call i32 (...) @xpt_hold_boot()
  %30 = call i32 @callout_init(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xsoftc, i32 0, i32 1), i32 1)
  %31 = load i32, i32* @SBT_1MS, align 4
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xsoftc, i32 0, i32 0), align 4
  %33 = mul nsw i32 %31, %32
  %34 = load i32, i32* @xpt_boot_delay, align 4
  %35 = call i32 @callout_reset_sbt(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xsoftc, i32 0, i32 1), i32 %33, i32 0, i32 %34, i32* null, i32 0)
  %36 = load i32, i32* @xpt_scanner_thread, align 4
  %37 = call i64 @kproc_kthread_add(i32 %36, i32* null, i32* @cam_proc, i32* null, i32 0, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %27
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %27
  ret void
}

declare dso_local i64 @taskqueue_start_threads(i32*, i32, i32, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @xpt_create_path(i32**, i32*, i32, i32, i32) #1

declare dso_local i32 @periphdriver_init(i32) #1

declare dso_local i32 @xpt_hold_boot(...) #1

declare dso_local i32 @callout_init(i32*, i32) #1

declare dso_local i32 @callout_reset_sbt(i32*, i32, i32, i32, i32*, i32) #1

declare dso_local i64 @kproc_kthread_add(i32, i32*, i32*, i32*, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
