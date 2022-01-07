; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_get_print_cts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_get_print_cts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_device = type { i32 }
%struct.ccb_trans_settings = type { i32 }
%union.ccb = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"get_print_cts: error allocating ccb\00", align 1
@XPT_GET_TRAN_SETTINGS = common dso_local global i32 0, align 4
@CTS_TYPE_CURRENT_SETTINGS = common dso_local global i32 0, align 4
@CTS_TYPE_USER_SETTINGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"error sending XPT_GET_TRAN_SETTINGS CCB\00", align 1
@CAM_STATUS_MASK = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"XPT_GET_TRANS_SETTINGS CCB failed\00", align 1
@arglist = common dso_local global i32 0, align 4
@CAM_ARG_VERBOSE = common dso_local global i32 0, align 4
@CAM_ESF_ALL = common dso_local global i32 0, align 4
@CAM_EPF_ALL = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_device*, i32, i32, %struct.ccb_trans_settings*)* @get_print_cts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_print_cts(%struct.cam_device* %0, i32 %1, i32 %2, %struct.ccb_trans_settings* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cam_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ccb_trans_settings*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %union.ccb*, align 8
  store %struct.cam_device* %0, %struct.cam_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.ccb_trans_settings* %3, %struct.ccb_trans_settings** %9, align 8
  store i32 0, i32* %10, align 4
  %12 = load %struct.cam_device*, %struct.cam_device** %6, align 8
  %13 = call %union.ccb* @cam_getccb(%struct.cam_device* %12)
  store %union.ccb* %13, %union.ccb** %11, align 8
  %14 = load %union.ccb*, %union.ccb** %11, align 8
  %15 = icmp eq %union.ccb* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = call i32 @warnx(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %89

18:                                               ; preds = %4
  %19 = load %union.ccb*, %union.ccb** %11, align 8
  %20 = bitcast %union.ccb* %19 to %struct.TYPE_6__*
  %21 = call i32 @CCB_CLEAR_ALL_EXCEPT_HDR(%struct.TYPE_6__* %20)
  %22 = load i32, i32* @XPT_GET_TRAN_SETTINGS, align 4
  %23 = load %union.ccb*, %union.ccb** %11, align 8
  %24 = bitcast %union.ccb* %23 to %struct.TYPE_5__*
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  store i32 %22, i32* %25, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %18
  %29 = load i32, i32* @CTS_TYPE_CURRENT_SETTINGS, align 4
  %30 = load %union.ccb*, %union.ccb** %11, align 8
  %31 = bitcast %union.ccb* %30 to %struct.TYPE_6__*
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 4
  br label %38

33:                                               ; preds = %18
  %34 = load i32, i32* @CTS_TYPE_USER_SETTINGS, align 4
  %35 = load %union.ccb*, %union.ccb** %11, align 8
  %36 = bitcast %union.ccb* %35 to %struct.TYPE_6__*
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 4
  br label %38

38:                                               ; preds = %33, %28
  %39 = load %struct.cam_device*, %struct.cam_device** %6, align 8
  %40 = load %union.ccb*, %union.ccb** %11, align 8
  %41 = call i64 @cam_send_ccb(%struct.cam_device* %39, %union.ccb* %40)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = call i32 @warn(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %10, align 4
  br label %85

45:                                               ; preds = %38
  %46 = load %union.ccb*, %union.ccb** %11, align 8
  %47 = bitcast %union.ccb* %46 to %struct.TYPE_5__*
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @CAM_STATUS_MASK, align 4
  %51 = and i32 %49, %50
  %52 = load i32, i32* @CAM_REQ_CMP, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %68

54:                                               ; preds = %45
  %55 = call i32 @warnx(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %56 = load i32, i32* @arglist, align 4
  %57 = load i32, i32* @CAM_ARG_VERBOSE, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %54
  %61 = load %struct.cam_device*, %struct.cam_device** %6, align 8
  %62 = load %union.ccb*, %union.ccb** %11, align 8
  %63 = load i32, i32* @CAM_ESF_ALL, align 4
  %64 = load i32, i32* @CAM_EPF_ALL, align 4
  %65 = load i32, i32* @stderr, align 4
  %66 = call i32 @cam_error_print(%struct.cam_device* %61, %union.ccb* %62, i32 %63, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %60, %54
  store i32 1, i32* %10, align 4
  br label %85

68:                                               ; preds = %45
  %69 = load i32, i32* %8, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %68
  %72 = load %struct.cam_device*, %struct.cam_device** %6, align 8
  %73 = load %union.ccb*, %union.ccb** %11, align 8
  %74 = bitcast %union.ccb* %73 to %struct.TYPE_6__*
  %75 = call i32 @cts_print(%struct.cam_device* %72, %struct.TYPE_6__* %74)
  br label %76

76:                                               ; preds = %71, %68
  %77 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %9, align 8
  %78 = icmp ne %struct.ccb_trans_settings* %77, null
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = load %union.ccb*, %union.ccb** %11, align 8
  %81 = bitcast %union.ccb* %80 to %struct.TYPE_6__*
  %82 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %9, align 8
  %83 = call i32 @bcopy(%struct.TYPE_6__* %81, %struct.ccb_trans_settings* %82, i32 4)
  br label %84

84:                                               ; preds = %79, %76
  br label %85

85:                                               ; preds = %84, %67, %43
  %86 = load %union.ccb*, %union.ccb** %11, align 8
  %87 = call i32 @cam_freeccb(%union.ccb* %86)
  %88 = load i32, i32* %10, align 4
  store i32 %88, i32* %5, align 4
  br label %89

89:                                               ; preds = %85, %16
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local %union.ccb* @cam_getccb(%struct.cam_device*) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local i32 @CCB_CLEAR_ALL_EXCEPT_HDR(%struct.TYPE_6__*) #1

declare dso_local i64 @cam_send_ccb(%struct.cam_device*, %union.ccb*) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @cam_error_print(%struct.cam_device*, %union.ccb*, i32, i32, i32) #1

declare dso_local i32 @cts_print(%struct.cam_device*, %struct.TYPE_6__*) #1

declare dso_local i32 @bcopy(%struct.TYPE_6__*, %struct.ccb_trans_settings*, i32) #1

declare dso_local i32 @cam_freeccb(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
