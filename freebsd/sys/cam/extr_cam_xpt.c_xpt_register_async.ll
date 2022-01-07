; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_register_async.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_register_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_path = type { i32 }
%struct.ccb_setasync = type { i32, %struct.TYPE_2__, i8*, i32* }
%struct.TYPE_2__ = type { i64, i32, i32 }
%union.ccb = type { i32 }

@CAM_XPT_PATH_ID = common dso_local global i32 0, align 4
@CAM_TARGET_WILDCARD = common dso_local global i32 0, align 4
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i64 0, align 8
@CAM_PRIORITY_NORMAL = common dso_local global i32 0, align 4
@XPT_SASYNC_CB = common dso_local global i32 0, align 4
@CAM_DEBUG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"xpt_register_async: func %p\0A\00", align 1
@AC_FOUND_DEVICE = common dso_local global i32 0, align 4
@xptsetasyncfunc = common dso_local global i32 0, align 4
@AC_PATH_REGISTERED = common dso_local global i32 0, align 4
@xptsetasyncbusfunc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @xpt_register_async(i32 %0, i32* %1, i8* %2, %struct.cam_path* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.cam_path*, align 8
  %10 = alloca %struct.ccb_setasync, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.cam_path* %3, %struct.cam_path** %9, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.cam_path*, %struct.cam_path** %9, align 8
  %14 = icmp eq %struct.cam_path* %13, null
  br i1 %14, label %15, label %28

15:                                               ; preds = %4
  %16 = load i32, i32* @CAM_XPT_PATH_ID, align 4
  %17 = load i32, i32* @CAM_TARGET_WILDCARD, align 4
  %18 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %19 = call i64 @xpt_create_path(%struct.cam_path** %9, i32* null, i32 %16, i32 %17, i32 %18)
  store i64 %19, i64* %11, align 8
  %20 = load i64, i64* %11, align 8
  %21 = load i64, i64* @CAM_REQ_CMP, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = load i64, i64* %11, align 8
  store i64 %24, i64* %5, align 8
  br label %89

25:                                               ; preds = %15
  %26 = load %struct.cam_path*, %struct.cam_path** %9, align 8
  %27 = call i32 @xpt_path_lock(%struct.cam_path* %26)
  store i32 1, i32* %12, align 4
  br label %28

28:                                               ; preds = %25, %4
  %29 = getelementptr inbounds %struct.ccb_setasync, %struct.ccb_setasync* %10, i32 0, i32 1
  %30 = load %struct.cam_path*, %struct.cam_path** %9, align 8
  %31 = load i32, i32* @CAM_PRIORITY_NORMAL, align 4
  %32 = call i32 @xpt_setup_ccb(%struct.TYPE_2__* %29, %struct.cam_path* %30, i32 %31)
  %33 = load i32, i32* @XPT_SASYNC_CB, align 4
  %34 = getelementptr inbounds %struct.ccb_setasync, %struct.ccb_setasync* %10, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %6, align 4
  %37 = getelementptr inbounds %struct.ccb_setasync, %struct.ccb_setasync* %10, i32 0, i32 0
  store i32 %36, i32* %37, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = getelementptr inbounds %struct.ccb_setasync, %struct.ccb_setasync* %10, i32 0, i32 3
  store i32* %38, i32** %39, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = getelementptr inbounds %struct.ccb_setasync, %struct.ccb_setasync* %10, i32 0, i32 2
  store i8* %40, i8** %41, align 8
  %42 = bitcast %struct.ccb_setasync* %10 to %union.ccb*
  %43 = call i32 @xpt_action(%union.ccb* %42)
  %44 = getelementptr inbounds %struct.ccb_setasync, %struct.ccb_setasync* %10, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %11, align 8
  %47 = getelementptr inbounds %struct.ccb_setasync, %struct.ccb_setasync* %10, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @CAM_DEBUG_TRACE, align 4
  %51 = load i32*, i32** %7, align 8
  %52 = bitcast i32* %51 to i8*
  %53 = call i32 @CAM_DEBUG(i32 %49, i32 %50, i8* %52)
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %28
  %57 = load %struct.cam_path*, %struct.cam_path** %9, align 8
  %58 = call i32 @xpt_path_unlock(%struct.cam_path* %57)
  %59 = load %struct.cam_path*, %struct.cam_path** %9, align 8
  %60 = call i32 @xpt_free_path(%struct.cam_path* %59)
  br label %61

61:                                               ; preds = %56, %28
  %62 = load i64, i64* %11, align 8
  %63 = load i64, i64* @CAM_REQ_CMP, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.ccb_setasync, %struct.ccb_setasync* %10, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @AC_FOUND_DEVICE, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load i32, i32* @xptsetasyncfunc, align 4
  %73 = call i32 @xpt_for_all_devices(i32 %72, %struct.ccb_setasync* %10)
  br label %74

74:                                               ; preds = %71, %65, %61
  %75 = load i64, i64* %11, align 8
  %76 = load i64, i64* @CAM_REQ_CMP, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %87

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.ccb_setasync, %struct.ccb_setasync* %10, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @AC_PATH_REGISTERED, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = load i32, i32* @xptsetasyncbusfunc, align 4
  %86 = call i32 @xpt_for_all_busses(i32 %85, %struct.ccb_setasync* %10)
  br label %87

87:                                               ; preds = %84, %78, %74
  %88 = load i64, i64* %11, align 8
  store i64 %88, i64* %5, align 8
  br label %89

89:                                               ; preds = %87, %23
  %90 = load i64, i64* %5, align 8
  ret i64 %90
}

declare dso_local i64 @xpt_create_path(%struct.cam_path**, i32*, i32, i32, i32) #1

declare dso_local i32 @xpt_path_lock(%struct.cam_path*) #1

declare dso_local i32 @xpt_setup_ccb(%struct.TYPE_2__*, %struct.cam_path*, i32) #1

declare dso_local i32 @xpt_action(%union.ccb*) #1

declare dso_local i32 @CAM_DEBUG(i32, i32, i8*) #1

declare dso_local i32 @xpt_path_unlock(%struct.cam_path*) #1

declare dso_local i32 @xpt_free_path(%struct.cam_path*) #1

declare dso_local i32 @xpt_for_all_devices(i32, %struct.ccb_setasync*) #1

declare dso_local i32 @xpt_for_all_busses(i32, %struct.ccb_setasync*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
