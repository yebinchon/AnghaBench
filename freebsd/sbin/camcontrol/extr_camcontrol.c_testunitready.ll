; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_testunitready.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_testunitready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_device = type { i32 }
%union.ccb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@SSD_FULL_SIZE = common dso_local global i32 0, align 4
@CAM_DEV_QFRZDIS = common dso_local global i32 0, align 4
@arglist = common dso_local global i32 0, align 4
@CAM_ARG_ERR_RECOVER = common dso_local global i32 0, align 4
@CAM_PASS_ERR_RECOVER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"error sending TEST UNIT READY command\00", align 1
@CAM_STATUS_MASK = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Unit is ready\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Unit is not ready\0A\00", align 1
@CAM_ARG_VERBOSE = common dso_local global i32 0, align 4
@CAM_ESF_ALL = common dso_local global i32 0, align 4
@CAM_EPF_ALL = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_device*, i32, i32, i32, i32)* @testunitready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @testunitready(%struct.cam_device* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cam_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %union.ccb*, align 8
  store %struct.cam_device* %0, %struct.cam_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %14 = load %struct.cam_device*, %struct.cam_device** %7, align 8
  %15 = call %union.ccb* @cam_getccb(%struct.cam_device* %14)
  store %union.ccb* %15, %union.ccb** %13, align 8
  %16 = load %union.ccb*, %union.ccb** %13, align 8
  %17 = bitcast %union.ccb* %16 to i32*
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @SSD_FULL_SIZE, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %5
  %24 = load i32, i32* %10, align 4
  br label %26

25:                                               ; preds = %5
  br label %26

26:                                               ; preds = %25, %23
  %27 = phi i32 [ %24, %23 ], [ 5000, %25 ]
  %28 = call i32 @scsi_test_unit_ready(i32* %17, i32 %18, i32* null, i32 %19, i32 %20, i32 %27)
  %29 = load i32, i32* @CAM_DEV_QFRZDIS, align 4
  %30 = load %union.ccb*, %union.ccb** %13, align 8
  %31 = bitcast %union.ccb* %30 to %struct.TYPE_2__*
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %29
  store i32 %34, i32* %32, align 4
  %35 = load i32, i32* @arglist, align 4
  %36 = load i32, i32* @CAM_ARG_ERR_RECOVER, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %26
  %40 = load i32, i32* @CAM_PASS_ERR_RECOVER, align 4
  %41 = load %union.ccb*, %union.ccb** %13, align 8
  %42 = bitcast %union.ccb* %41 to %struct.TYPE_2__*
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %40
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %39, %26
  %47 = load %struct.cam_device*, %struct.cam_device** %7, align 8
  %48 = load %union.ccb*, %union.ccb** %13, align 8
  %49 = call i64 @cam_send_ccb(%struct.cam_device* %47, %union.ccb* %48)
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %46
  %52 = load i32, i32* %11, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = call i32 @warn(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %51
  %57 = load %union.ccb*, %union.ccb** %13, align 8
  %58 = call i32 @cam_freeccb(%union.ccb* %57)
  store i32 1, i32* %6, align 4
  br label %98

59:                                               ; preds = %46
  %60 = load %union.ccb*, %union.ccb** %13, align 8
  %61 = bitcast %union.ccb* %60 to %struct.TYPE_2__*
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @CAM_STATUS_MASK, align 4
  %65 = and i32 %63, %64
  %66 = load i32, i32* @CAM_REQ_CMP, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %59
  %69 = load i32, i32* %11, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i32, i32* @stdout, align 4
  %73 = call i32 @fprintf(i32 %72, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %74

74:                                               ; preds = %71, %68
  br label %94

75:                                               ; preds = %59
  %76 = load i32, i32* %11, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i32, i32* @stdout, align 4
  %80 = call i32 @fprintf(i32 %79, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %81

81:                                               ; preds = %78, %75
  store i32 1, i32* %12, align 4
  %82 = load i32, i32* @arglist, align 4
  %83 = load i32, i32* @CAM_ARG_VERBOSE, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %81
  %87 = load %struct.cam_device*, %struct.cam_device** %7, align 8
  %88 = load %union.ccb*, %union.ccb** %13, align 8
  %89 = load i32, i32* @CAM_ESF_ALL, align 4
  %90 = load i32, i32* @CAM_EPF_ALL, align 4
  %91 = load i32, i32* @stderr, align 4
  %92 = call i32 @cam_error_print(%struct.cam_device* %87, %union.ccb* %88, i32 %89, i32 %90, i32 %91)
  br label %93

93:                                               ; preds = %86, %81
  br label %94

94:                                               ; preds = %93, %74
  %95 = load %union.ccb*, %union.ccb** %13, align 8
  %96 = call i32 @cam_freeccb(%union.ccb* %95)
  %97 = load i32, i32* %12, align 4
  store i32 %97, i32* %6, align 4
  br label %98

98:                                               ; preds = %94, %56
  %99 = load i32, i32* %6, align 4
  ret i32 %99
}

declare dso_local %union.ccb* @cam_getccb(%struct.cam_device*) #1

declare dso_local i32 @scsi_test_unit_ready(i32*, i32, i32*, i32, i32, i32) #1

declare dso_local i64 @cam_send_ccb(%struct.cam_device*, %union.ccb*) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @cam_freeccb(%union.ccb*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @cam_error_print(%struct.cam_device*, %union.ccb*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
