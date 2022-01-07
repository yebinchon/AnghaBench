; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_dev_has_vpd_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_dev_has_vpd_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_device = type { i32 }
%union.ccb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.scsi_vpd_supported_page_list = type { i32, i64* }

@.str = private unnamed_addr constant [23 x i8] c"Unable to allocate CCB\00", align 1
@MSG_SIMPLE_Q_TAG = common dso_local global i32 0, align 4
@SVPD_SUPPORTED_PAGE_LIST = common dso_local global i32 0, align 4
@SSD_FULL_SIZE = common dso_local global i32 0, align 4
@CAM_DEV_QFRZDIS = common dso_local global i32 0, align 4
@CAM_PASS_ERR_RECOVER = common dso_local global i32 0, align 4
@CAM_STATUS_MASK = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@CAM_ESF_ALL = common dso_local global i32 0, align 4
@CAM_EPF_ALL = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dev_has_vpd_page(%struct.cam_device* %0, i64 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.cam_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %union.ccb*, align 8
  %12 = alloca %struct.scsi_vpd_supported_page_list, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.cam_device* %0, %struct.cam_device** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store %union.ccb* null, %union.ccb** %11, align 8
  store i32 0, i32* %14, align 4
  %15 = load %struct.cam_device*, %struct.cam_device** %6, align 8
  %16 = call %union.ccb* @cam_getccb(%struct.cam_device* %15)
  store %union.ccb* %16, %union.ccb** %11, align 8
  %17 = load %union.ccb*, %union.ccb** %11, align 8
  %18 = icmp eq %union.ccb* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = call i32 @warn(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %14, align 4
  br label %105

21:                                               ; preds = %5
  %22 = load %union.ccb*, %union.ccb** %11, align 8
  %23 = bitcast %union.ccb* %22 to i32*
  %24 = call i32 @CCB_CLEAR_ALL_EXCEPT_HDR(i32* %23)
  %25 = call i32 @bzero(%struct.scsi_vpd_supported_page_list* %12, i32 16)
  %26 = load %union.ccb*, %union.ccb** %11, align 8
  %27 = bitcast %union.ccb* %26 to i32*
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @MSG_SIMPLE_Q_TAG, align 4
  %30 = bitcast %struct.scsi_vpd_supported_page_list* %12 to i32*
  %31 = load i32, i32* @SVPD_SUPPORTED_PAGE_LIST, align 4
  %32 = load i32, i32* @SSD_FULL_SIZE, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %21
  %36 = load i32, i32* %9, align 4
  br label %38

37:                                               ; preds = %21
  br label %38

38:                                               ; preds = %37, %35
  %39 = phi i32 [ %36, %35 ], [ 5000, %37 ]
  %40 = call i32 @scsi_inquiry(i32* %27, i32 %28, i32* null, i32 %29, i32* %30, i32 16, i32 1, i32 %31, i32 %32, i32 %39)
  %41 = load i32, i32* @CAM_DEV_QFRZDIS, align 4
  %42 = load %union.ccb*, %union.ccb** %11, align 8
  %43 = bitcast %union.ccb* %42 to %struct.TYPE_2__*
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %41
  store i32 %46, i32* %44, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %38
  %50 = load i32, i32* @CAM_PASS_ERR_RECOVER, align 4
  %51 = load %union.ccb*, %union.ccb** %11, align 8
  %52 = bitcast %union.ccb* %51 to %struct.TYPE_2__*
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %50
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %49, %38
  %57 = load %struct.cam_device*, %struct.cam_device** %6, align 8
  %58 = load %union.ccb*, %union.ccb** %11, align 8
  %59 = call i64 @cam_send_ccb(%struct.cam_device* %57, %union.ccb* %58)
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load %union.ccb*, %union.ccb** %11, align 8
  %63 = call i32 @cam_freeccb(%union.ccb* %62)
  store %union.ccb* null, %union.ccb** %11, align 8
  store i32 -1, i32* %14, align 4
  br label %105

64:                                               ; preds = %56
  %65 = load %union.ccb*, %union.ccb** %11, align 8
  %66 = bitcast %union.ccb* %65 to %struct.TYPE_2__*
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @CAM_STATUS_MASK, align 4
  %70 = and i32 %68, %69
  %71 = load i32, i32* @CAM_REQ_CMP, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %84

73:                                               ; preds = %64
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %73
  %77 = load %struct.cam_device*, %struct.cam_device** %6, align 8
  %78 = load %union.ccb*, %union.ccb** %11, align 8
  %79 = load i32, i32* @CAM_ESF_ALL, align 4
  %80 = load i32, i32* @CAM_EPF_ALL, align 4
  %81 = load i32, i32* @stderr, align 4
  %82 = call i32 @cam_error_print(%struct.cam_device* %77, %union.ccb* %78, i32 %79, i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %76, %73
  store i32 -1, i32* %14, align 4
  br label %105

84:                                               ; preds = %64
  store i32 0, i32* %13, align 4
  br label %85

85:                                               ; preds = %101, %84
  %86 = load i32, i32* %13, align 4
  %87 = getelementptr inbounds %struct.scsi_vpd_supported_page_list, %struct.scsi_vpd_supported_page_list* %12, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp slt i32 %86, %88
  br i1 %89, label %90, label %104

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.scsi_vpd_supported_page_list, %struct.scsi_vpd_supported_page_list* %12, i32 0, i32 1
  %92 = load i64*, i64** %91, align 8
  %93 = load i32, i32* %13, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %92, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* %7, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %90
  store i32 1, i32* %14, align 4
  br label %105

100:                                              ; preds = %90
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %13, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %13, align 4
  br label %85

104:                                              ; preds = %85
  br label %105

105:                                              ; preds = %104, %99, %83, %61, %19
  %106 = load %union.ccb*, %union.ccb** %11, align 8
  %107 = icmp ne %union.ccb* %106, null
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = load %union.ccb*, %union.ccb** %11, align 8
  %110 = call i32 @cam_freeccb(%union.ccb* %109)
  br label %111

111:                                              ; preds = %108, %105
  %112 = load i32, i32* %14, align 4
  ret i32 %112
}

declare dso_local %union.ccb* @cam_getccb(%struct.cam_device*) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @CCB_CLEAR_ALL_EXCEPT_HDR(i32*) #1

declare dso_local i32 @bzero(%struct.scsi_vpd_supported_page_list*, i32) #1

declare dso_local i32 @scsi_inquiry(i32*, i32, i32*, i32, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @cam_send_ccb(%struct.cam_device*, %union.ccb*) #1

declare dso_local i32 @cam_freeccb(%union.ccb*) #1

declare dso_local i32 @cam_error_print(%struct.cam_device*, %union.ccb*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
