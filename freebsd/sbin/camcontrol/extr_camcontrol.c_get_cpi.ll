; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_get_cpi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_get_cpi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_device = type { i32 }
%struct.ccb_pathinq = type { i32 }
%union.ccb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"get_cpi: couldn't allocate CCB\00", align 1
@XPT_PATH_INQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"get_cpi: error sending Path Inquiry CCB\00", align 1
@CAM_STATUS_MASK = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@arglist = common dso_local global i32 0, align 4
@CAM_ARG_VERBOSE = common dso_local global i32 0, align 4
@CAM_ESF_ALL = common dso_local global i32 0, align 4
@CAM_EPF_ALL = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_device*, %struct.ccb_pathinq*)* @get_cpi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_cpi(%struct.cam_device* %0, %struct.ccb_pathinq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cam_device*, align 8
  %5 = alloca %struct.ccb_pathinq*, align 8
  %6 = alloca %union.ccb*, align 8
  %7 = alloca i32, align 4
  store %struct.cam_device* %0, %struct.cam_device** %4, align 8
  store %struct.ccb_pathinq* %1, %struct.ccb_pathinq** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.cam_device*, %struct.cam_device** %4, align 8
  %9 = call %union.ccb* @cam_getccb(%struct.cam_device* %8)
  store %union.ccb* %9, %union.ccb** %6, align 8
  %10 = load %union.ccb*, %union.ccb** %6, align 8
  %11 = icmp eq %union.ccb* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = call i32 @warnx(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %59

14:                                               ; preds = %2
  %15 = load %union.ccb*, %union.ccb** %6, align 8
  %16 = bitcast %union.ccb* %15 to i32*
  %17 = call i32 @CCB_CLEAR_ALL_EXCEPT_HDR(i32* %16)
  %18 = load i32, i32* @XPT_PATH_INQ, align 4
  %19 = load %union.ccb*, %union.ccb** %6, align 8
  %20 = bitcast %union.ccb* %19 to %struct.TYPE_2__*
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  store i32 %18, i32* %21, align 4
  %22 = load %struct.cam_device*, %struct.cam_device** %4, align 8
  %23 = load %union.ccb*, %union.ccb** %6, align 8
  %24 = call i64 @cam_send_ccb(%struct.cam_device* %22, %union.ccb* %23)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %14
  %27 = call i32 @warn(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %7, align 4
  br label %55

28:                                               ; preds = %14
  %29 = load %union.ccb*, %union.ccb** %6, align 8
  %30 = bitcast %union.ccb* %29 to %struct.TYPE_2__*
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @CAM_STATUS_MASK, align 4
  %34 = and i32 %32, %33
  %35 = load i32, i32* @CAM_REQ_CMP, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %28
  %38 = load i32, i32* @arglist, align 4
  %39 = load i32, i32* @CAM_ARG_VERBOSE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load %struct.cam_device*, %struct.cam_device** %4, align 8
  %44 = load %union.ccb*, %union.ccb** %6, align 8
  %45 = load i32, i32* @CAM_ESF_ALL, align 4
  %46 = load i32, i32* @CAM_EPF_ALL, align 4
  %47 = load i32, i32* @stderr, align 4
  %48 = call i32 @cam_error_print(%struct.cam_device* %43, %union.ccb* %44, i32 %45, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %42, %37
  store i32 1, i32* %7, align 4
  br label %55

50:                                               ; preds = %28
  %51 = load %union.ccb*, %union.ccb** %6, align 8
  %52 = bitcast %union.ccb* %51 to i32*
  %53 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %5, align 8
  %54 = call i32 @bcopy(i32* %52, %struct.ccb_pathinq* %53, i32 4)
  br label %55

55:                                               ; preds = %50, %49, %26
  %56 = load %union.ccb*, %union.ccb** %6, align 8
  %57 = call i32 @cam_freeccb(%union.ccb* %56)
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %55, %12
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %union.ccb* @cam_getccb(%struct.cam_device*) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local i32 @CCB_CLEAR_ALL_EXCEPT_HDR(i32*) #1

declare dso_local i64 @cam_send_ccb(%struct.cam_device*, %union.ccb*) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @cam_error_print(%struct.cam_device*, %union.ccb*, i32, i32, i32) #1

declare dso_local i32 @bcopy(i32*, %struct.ccb_pathinq*, i32) #1

declare dso_local i32 @cam_freeccb(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
