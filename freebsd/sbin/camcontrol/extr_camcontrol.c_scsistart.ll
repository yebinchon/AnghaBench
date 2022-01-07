; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_scsistart.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_scsistart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_device = type { i32 }
%union.ccb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@MSG_SIMPLE_Q_TAG = common dso_local global i32 0, align 4
@MSG_ORDERED_Q_TAG = common dso_local global i32 0, align 4
@SSD_FULL_SIZE = common dso_local global i32 0, align 4
@CAM_DEV_QFRZDIS = common dso_local global i32 0, align 4
@arglist = common dso_local global i32 0, align 4
@CAM_ARG_ERR_RECOVER = common dso_local global i32 0, align 4
@CAM_PASS_ERR_RECOVER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"error sending START STOP UNIT command\00", align 1
@CAM_STATUS_MASK = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Unit started successfully\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c", Media loaded\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Unit stopped successfully\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c", Media ejected\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"Error received from start unit command\0A\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"Error received from stop unit command\0A\00", align 1
@CAM_ARG_VERBOSE = common dso_local global i32 0, align 4
@CAM_ESF_ALL = common dso_local global i32 0, align 4
@CAM_EPF_ALL = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_device*, i32, i32, i32, i32, i32)* @scsistart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scsistart(%struct.cam_device* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.cam_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %union.ccb*, align 8
  %15 = alloca i32, align 4
  store %struct.cam_device* %0, %struct.cam_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %16 = load %struct.cam_device*, %struct.cam_device** %8, align 8
  %17 = call %union.ccb* @cam_getccb(%struct.cam_device* %16)
  store %union.ccb* %17, %union.ccb** %14, align 8
  %18 = load i32, i32* %9, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %6
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* @MSG_SIMPLE_Q_TAG, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @MSG_ORDERED_Q_TAG, align 4
  store i32 %25, i32* %11, align 4
  br label %26

26:                                               ; preds = %24, %20, %6
  %27 = load %union.ccb*, %union.ccb** %14, align 8
  %28 = bitcast %union.ccb* %27 to i32*
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @SSD_FULL_SIZE, align 4
  %34 = load i32, i32* %13, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %26
  %37 = load i32, i32* %13, align 4
  br label %39

38:                                               ; preds = %26
  br label %39

39:                                               ; preds = %38, %36
  %40 = phi i32 [ %37, %36 ], [ 120000, %38 ]
  %41 = call i32 @scsi_start_stop(i32* %28, i32 %29, i32* null, i32 %30, i32 %31, i32 %32, i32 0, i32 %33, i32 %40)
  %42 = load i32, i32* @CAM_DEV_QFRZDIS, align 4
  %43 = load %union.ccb*, %union.ccb** %14, align 8
  %44 = bitcast %union.ccb* %43 to %struct.TYPE_2__*
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %42
  store i32 %47, i32* %45, align 4
  %48 = load i32, i32* @arglist, align 4
  %49 = load i32, i32* @CAM_ARG_ERR_RECOVER, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %39
  %53 = load i32, i32* @CAM_PASS_ERR_RECOVER, align 4
  %54 = load %union.ccb*, %union.ccb** %14, align 8
  %55 = bitcast %union.ccb* %54 to %struct.TYPE_2__*
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %53
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %52, %39
  %60 = load %struct.cam_device*, %struct.cam_device** %8, align 8
  %61 = load %union.ccb*, %union.ccb** %14, align 8
  %62 = call i64 @cam_send_ccb(%struct.cam_device* %60, %union.ccb* %61)
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = call i32 @warn(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %66 = load %union.ccb*, %union.ccb** %14, align 8
  %67 = call i32 @cam_freeccb(%union.ccb* %66)
  store i32 1, i32* %7, align 4
  br label %131

68:                                               ; preds = %59
  %69 = load %union.ccb*, %union.ccb** %14, align 8
  %70 = bitcast %union.ccb* %69 to %struct.TYPE_2__*
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @CAM_STATUS_MASK, align 4
  %74 = and i32 %72, %73
  %75 = load i32, i32* @CAM_REQ_CMP, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %105

77:                                               ; preds = %68
  %78 = load i32, i32* %9, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %92

80:                                               ; preds = %77
  %81 = load i32, i32* @stdout, align 4
  %82 = call i32 @fprintf(i32 %81, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %83 = load i32, i32* %10, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load i32, i32* @stdout, align 4
  %87 = call i32 @fprintf(i32 %86, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %91

88:                                               ; preds = %80
  %89 = load i32, i32* @stdout, align 4
  %90 = call i32 @fprintf(i32 %89, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %91

91:                                               ; preds = %88, %85
  br label %104

92:                                               ; preds = %77
  %93 = load i32, i32* @stdout, align 4
  %94 = call i32 @fprintf(i32 %93, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %95 = load i32, i32* %10, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load i32, i32* @stdout, align 4
  %99 = call i32 @fprintf(i32 %98, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  br label %103

100:                                              ; preds = %92
  %101 = load i32, i32* @stdout, align 4
  %102 = call i32 @fprintf(i32 %101, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %103

103:                                              ; preds = %100, %97
  br label %104

104:                                              ; preds = %103, %91
  br label %127

105:                                              ; preds = %68
  store i32 1, i32* %15, align 4
  %106 = load i32, i32* %9, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = load i32, i32* @stdout, align 4
  %110 = call i32 @fprintf(i32 %109, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  br label %114

111:                                              ; preds = %105
  %112 = load i32, i32* @stdout, align 4
  %113 = call i32 @fprintf(i32 %112, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0))
  br label %114

114:                                              ; preds = %111, %108
  %115 = load i32, i32* @arglist, align 4
  %116 = load i32, i32* @CAM_ARG_VERBOSE, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %114
  %120 = load %struct.cam_device*, %struct.cam_device** %8, align 8
  %121 = load %union.ccb*, %union.ccb** %14, align 8
  %122 = load i32, i32* @CAM_ESF_ALL, align 4
  %123 = load i32, i32* @CAM_EPF_ALL, align 4
  %124 = load i32, i32* @stderr, align 4
  %125 = call i32 @cam_error_print(%struct.cam_device* %120, %union.ccb* %121, i32 %122, i32 %123, i32 %124)
  br label %126

126:                                              ; preds = %119, %114
  br label %127

127:                                              ; preds = %126, %104
  %128 = load %union.ccb*, %union.ccb** %14, align 8
  %129 = call i32 @cam_freeccb(%union.ccb* %128)
  %130 = load i32, i32* %15, align 4
  store i32 %130, i32* %7, align 4
  br label %131

131:                                              ; preds = %127, %64
  %132 = load i32, i32* %7, align 4
  ret i32 %132
}

declare dso_local %union.ccb* @cam_getccb(%struct.cam_device*) #1

declare dso_local i32 @scsi_start_stop(i32*, i32, i32*, i32, i32, i32, i32, i32, i32) #1

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
