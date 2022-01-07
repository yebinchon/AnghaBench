; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_scsiinquiry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_scsiinquiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_device = type { i8*, i32 }
%union.ccb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.scsi_inquiry_data = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"couldn't allocate CCB\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"can't malloc memory for inquiry\0A\00", align 1
@SHORT_INQUIRY_LENGTH = common dso_local global i32 0, align 4
@SSD_FULL_SIZE = common dso_local global i32 0, align 4
@CAM_DEV_QFRZDIS = common dso_local global i32 0, align 4
@arglist = common dso_local global i32 0, align 4
@CAM_ARG_ERR_RECOVER = common dso_local global i32 0, align 4
@CAM_PASS_ERR_RECOVER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"error sending INQUIRY command\00", align 1
@CAM_STATUS_MASK = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@CAM_ARG_VERBOSE = common dso_local global i32 0, align 4
@CAM_ESF_ALL = common dso_local global i32 0, align 4
@CAM_EPF_ALL = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"%s%d: \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_device*, i32, i32, i32)* @scsiinquiry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scsiinquiry(%struct.cam_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cam_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %union.ccb*, align 8
  %11 = alloca %struct.scsi_inquiry_data*, align 8
  %12 = alloca i32, align 4
  store %struct.cam_device* %0, %struct.cam_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %13 = load %struct.cam_device*, %struct.cam_device** %6, align 8
  %14 = call %union.ccb* @cam_getccb(%struct.cam_device* %13)
  store %union.ccb* %14, %union.ccb** %10, align 8
  %15 = load %union.ccb*, %union.ccb** %10, align 8
  %16 = icmp eq %union.ccb* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = call i32 @warnx(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %120

19:                                               ; preds = %4
  %20 = load %union.ccb*, %union.ccb** %10, align 8
  %21 = bitcast %union.ccb* %20 to i32*
  %22 = call i32 @CCB_CLEAR_ALL_EXCEPT_HDR(i32* %21)
  %23 = call i64 @malloc(i32 4)
  %24 = inttoptr i64 %23 to %struct.scsi_inquiry_data*
  store %struct.scsi_inquiry_data* %24, %struct.scsi_inquiry_data** %11, align 8
  %25 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %11, align 8
  %26 = icmp eq %struct.scsi_inquiry_data* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  %28 = load %union.ccb*, %union.ccb** %10, align 8
  %29 = call i32 @cam_freeccb(%union.ccb* %28)
  %30 = call i32 @warnx(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %120

31:                                               ; preds = %19
  %32 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %11, align 8
  %33 = call i32 @bzero(%struct.scsi_inquiry_data* %32, i32 4)
  %34 = load %union.ccb*, %union.ccb** %10, align 8
  %35 = bitcast %union.ccb* %34 to i32*
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %11, align 8
  %39 = bitcast %struct.scsi_inquiry_data* %38 to i32*
  %40 = load i32, i32* @SHORT_INQUIRY_LENGTH, align 4
  %41 = load i32, i32* @SSD_FULL_SIZE, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %31
  %45 = load i32, i32* %9, align 4
  br label %47

46:                                               ; preds = %31
  br label %47

47:                                               ; preds = %46, %44
  %48 = phi i32 [ %45, %44 ], [ 5000, %46 ]
  %49 = call i32 @scsi_inquiry(i32* %35, i32 %36, i32* null, i32 %37, i32* %39, i32 %40, i32 0, i32 0, i32 %41, i32 %48)
  %50 = load i32, i32* @CAM_DEV_QFRZDIS, align 4
  %51 = load %union.ccb*, %union.ccb** %10, align 8
  %52 = bitcast %union.ccb* %51 to %struct.TYPE_2__*
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %50
  store i32 %55, i32* %53, align 4
  %56 = load i32, i32* @arglist, align 4
  %57 = load i32, i32* @CAM_ARG_ERR_RECOVER, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %47
  %61 = load i32, i32* @CAM_PASS_ERR_RECOVER, align 4
  %62 = load %union.ccb*, %union.ccb** %10, align 8
  %63 = bitcast %union.ccb* %62 to %struct.TYPE_2__*
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %61
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %60, %47
  %68 = load %struct.cam_device*, %struct.cam_device** %6, align 8
  %69 = load %union.ccb*, %union.ccb** %10, align 8
  %70 = call i64 @cam_send_ccb(%struct.cam_device* %68, %union.ccb* %69)
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = call i32 @warn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %74 = load %union.ccb*, %union.ccb** %10, align 8
  %75 = call i32 @cam_freeccb(%union.ccb* %74)
  store i32 1, i32* %5, align 4
  br label %120

76:                                               ; preds = %67
  %77 = load %union.ccb*, %union.ccb** %10, align 8
  %78 = bitcast %union.ccb* %77 to %struct.TYPE_2__*
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @CAM_STATUS_MASK, align 4
  %82 = and i32 %80, %81
  %83 = load i32, i32* @CAM_REQ_CMP, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %98

85:                                               ; preds = %76
  store i32 1, i32* %12, align 4
  %86 = load i32, i32* @arglist, align 4
  %87 = load i32, i32* @CAM_ARG_VERBOSE, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %85
  %91 = load %struct.cam_device*, %struct.cam_device** %6, align 8
  %92 = load %union.ccb*, %union.ccb** %10, align 8
  %93 = load i32, i32* @CAM_ESF_ALL, align 4
  %94 = load i32, i32* @CAM_EPF_ALL, align 4
  %95 = load i32, i32* @stderr, align 4
  %96 = call i32 @cam_error_print(%struct.cam_device* %91, %union.ccb* %92, i32 %93, i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %90, %85
  br label %98

98:                                               ; preds = %97, %76
  %99 = load %union.ccb*, %union.ccb** %10, align 8
  %100 = call i32 @cam_freeccb(%union.ccb* %99)
  %101 = load i32, i32* %12, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %98
  %104 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %11, align 8
  %105 = call i32 @free(%struct.scsi_inquiry_data* %104)
  %106 = load i32, i32* %12, align 4
  store i32 %106, i32* %5, align 4
  br label %120

107:                                              ; preds = %98
  %108 = load i32, i32* @stdout, align 4
  %109 = load %struct.cam_device*, %struct.cam_device** %6, align 8
  %110 = getelementptr inbounds %struct.cam_device, %struct.cam_device* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = load %struct.cam_device*, %struct.cam_device** %6, align 8
  %113 = getelementptr inbounds %struct.cam_device, %struct.cam_device* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @fprintf(i32 %108, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %111, i32 %114)
  %116 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %11, align 8
  %117 = call i32 @scsi_print_inquiry(%struct.scsi_inquiry_data* %116)
  %118 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %11, align 8
  %119 = call i32 @free(%struct.scsi_inquiry_data* %118)
  store i32 0, i32* %5, align 4
  br label %120

120:                                              ; preds = %107, %103, %72, %27, %17
  %121 = load i32, i32* %5, align 4
  ret i32 %121
}

declare dso_local %union.ccb* @cam_getccb(%struct.cam_device*) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local i32 @CCB_CLEAR_ALL_EXCEPT_HDR(i32*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @cam_freeccb(%union.ccb*) #1

declare dso_local i32 @bzero(%struct.scsi_inquiry_data*, i32) #1

declare dso_local i32 @scsi_inquiry(i32*, i32, i32*, i32, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @cam_send_ccb(%struct.cam_device*, %union.ccb*) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @cam_error_print(%struct.cam_device*, %union.ccb*, i32, i32, i32) #1

declare dso_local i32 @free(%struct.scsi_inquiry_data*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i32) #1

declare dso_local i32 @scsi_print_inquiry(%struct.scsi_inquiry_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
