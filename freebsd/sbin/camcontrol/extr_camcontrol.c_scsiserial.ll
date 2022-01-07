; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_scsiserial.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_scsiserial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_device = type { i8*, i32 }
%union.ccb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.scsi_vpd_unit_serial_number = type { i64, i32 }

@SVPD_SERIAL_NUM_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"couldn't allocate CCB\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"can't malloc memory for serial number\00", align 1
@SVPD_UNIT_SERIAL_NUMBER = common dso_local global i32 0, align 4
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
@CAM_ARG_GET_STDINQ = common dso_local global i32 0, align 4
@CAM_ARG_GET_XFERRATE = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"%s%d: Serial Number \00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"%.60s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_device*, i32, i32, i32)* @scsiserial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scsiserial(%struct.cam_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cam_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %union.ccb*, align 8
  %11 = alloca %struct.scsi_vpd_unit_serial_number*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.cam_device* %0, %struct.cam_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* @SVPD_SERIAL_NUM_SIZE, align 4
  %17 = add nsw i32 %16, 1
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %12, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %13, align 8
  store i32 0, i32* %14, align 4
  %21 = load %struct.cam_device*, %struct.cam_device** %6, align 8
  %22 = call %union.ccb* @cam_getccb(%struct.cam_device* %21)
  store %union.ccb* %22, %union.ccb** %10, align 8
  %23 = load %union.ccb*, %union.ccb** %10, align 8
  %24 = icmp eq %union.ccb* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = call i32 @warnx(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %150

27:                                               ; preds = %4
  %28 = load %union.ccb*, %union.ccb** %10, align 8
  %29 = bitcast %union.ccb* %28 to i32*
  %30 = call i32 @CCB_CLEAR_ALL_EXCEPT_HDR(i32* %29)
  %31 = call i64 @malloc(i32 16)
  %32 = inttoptr i64 %31 to %struct.scsi_vpd_unit_serial_number*
  store %struct.scsi_vpd_unit_serial_number* %32, %struct.scsi_vpd_unit_serial_number** %11, align 8
  %33 = load %struct.scsi_vpd_unit_serial_number*, %struct.scsi_vpd_unit_serial_number** %11, align 8
  %34 = icmp eq %struct.scsi_vpd_unit_serial_number* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %27
  %36 = load %union.ccb*, %union.ccb** %10, align 8
  %37 = call i32 @cam_freeccb(%union.ccb* %36)
  %38 = call i32 @warnx(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %150

39:                                               ; preds = %27
  %40 = load %union.ccb*, %union.ccb** %10, align 8
  %41 = bitcast %union.ccb* %40 to i32*
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.scsi_vpd_unit_serial_number*, %struct.scsi_vpd_unit_serial_number** %11, align 8
  %45 = bitcast %struct.scsi_vpd_unit_serial_number* %44 to i32*
  %46 = load i32, i32* @SVPD_UNIT_SERIAL_NUMBER, align 4
  %47 = load i32, i32* @SSD_FULL_SIZE, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %39
  %51 = load i32, i32* %9, align 4
  br label %53

52:                                               ; preds = %39
  br label %53

53:                                               ; preds = %52, %50
  %54 = phi i32 [ %51, %50 ], [ 5000, %52 ]
  %55 = call i32 @scsi_inquiry(i32* %41, i32 %42, i32* null, i32 %43, i32* %45, i32 16, i32 1, i32 %46, i32 %47, i32 %54)
  %56 = load i32, i32* @CAM_DEV_QFRZDIS, align 4
  %57 = load %union.ccb*, %union.ccb** %10, align 8
  %58 = bitcast %union.ccb* %57 to %struct.TYPE_2__*
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %56
  store i32 %61, i32* %59, align 4
  %62 = load i32, i32* @arglist, align 4
  %63 = load i32, i32* @CAM_ARG_ERR_RECOVER, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %53
  %67 = load i32, i32* @CAM_PASS_ERR_RECOVER, align 4
  %68 = load %union.ccb*, %union.ccb** %10, align 8
  %69 = bitcast %union.ccb* %68 to %struct.TYPE_2__*
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %67
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %66, %53
  %74 = load %struct.cam_device*, %struct.cam_device** %6, align 8
  %75 = load %union.ccb*, %union.ccb** %10, align 8
  %76 = call i64 @cam_send_ccb(%struct.cam_device* %74, %union.ccb* %75)
  %77 = icmp slt i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %73
  %79 = call i32 @warn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %80 = load %union.ccb*, %union.ccb** %10, align 8
  %81 = call i32 @cam_freeccb(%union.ccb* %80)
  %82 = load %struct.scsi_vpd_unit_serial_number*, %struct.scsi_vpd_unit_serial_number** %11, align 8
  %83 = call i32 @free(%struct.scsi_vpd_unit_serial_number* %82)
  store i32 1, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %150

84:                                               ; preds = %73
  %85 = load %union.ccb*, %union.ccb** %10, align 8
  %86 = bitcast %union.ccb* %85 to %struct.TYPE_2__*
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @CAM_STATUS_MASK, align 4
  %90 = and i32 %88, %89
  %91 = load i32, i32* @CAM_REQ_CMP, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %106

93:                                               ; preds = %84
  store i32 1, i32* %14, align 4
  %94 = load i32, i32* @arglist, align 4
  %95 = load i32, i32* @CAM_ARG_VERBOSE, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %93
  %99 = load %struct.cam_device*, %struct.cam_device** %6, align 8
  %100 = load %union.ccb*, %union.ccb** %10, align 8
  %101 = load i32, i32* @CAM_ESF_ALL, align 4
  %102 = load i32, i32* @CAM_EPF_ALL, align 4
  %103 = load i32, i32* @stderr, align 4
  %104 = call i32 @cam_error_print(%struct.cam_device* %99, %union.ccb* %100, i32 %101, i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %98, %93
  br label %106

106:                                              ; preds = %105, %84
  %107 = load %union.ccb*, %union.ccb** %10, align 8
  %108 = call i32 @cam_freeccb(%union.ccb* %107)
  %109 = load i32, i32* %14, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %106
  %112 = load %struct.scsi_vpd_unit_serial_number*, %struct.scsi_vpd_unit_serial_number** %11, align 8
  %113 = call i32 @free(%struct.scsi_vpd_unit_serial_number* %112)
  %114 = load i32, i32* %14, align 4
  store i32 %114, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %150

115:                                              ; preds = %106
  %116 = load %struct.scsi_vpd_unit_serial_number*, %struct.scsi_vpd_unit_serial_number** %11, align 8
  %117 = getelementptr inbounds %struct.scsi_vpd_unit_serial_number, %struct.scsi_vpd_unit_serial_number* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.scsi_vpd_unit_serial_number*, %struct.scsi_vpd_unit_serial_number** %11, align 8
  %120 = getelementptr inbounds %struct.scsi_vpd_unit_serial_number, %struct.scsi_vpd_unit_serial_number* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = call i32 @bcopy(i32 %118, i8* %20, i64 %121)
  %123 = load %struct.scsi_vpd_unit_serial_number*, %struct.scsi_vpd_unit_serial_number** %11, align 8
  %124 = getelementptr inbounds %struct.scsi_vpd_unit_serial_number, %struct.scsi_vpd_unit_serial_number* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = getelementptr inbounds i8, i8* %20, i64 %125
  store i8 0, i8* %126, align 1
  %127 = load i32, i32* @arglist, align 4
  %128 = load i32, i32* @CAM_ARG_GET_STDINQ, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %136, label %131

131:                                              ; preds = %115
  %132 = load i32, i32* @arglist, align 4
  %133 = load i32, i32* @CAM_ARG_GET_XFERRATE, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %145

136:                                              ; preds = %131, %115
  %137 = load i32, i32* @stdout, align 4
  %138 = load %struct.cam_device*, %struct.cam_device** %6, align 8
  %139 = getelementptr inbounds %struct.cam_device, %struct.cam_device* %138, i32 0, i32 0
  %140 = load i8*, i8** %139, align 8
  %141 = load %struct.cam_device*, %struct.cam_device** %6, align 8
  %142 = getelementptr inbounds %struct.cam_device, %struct.cam_device* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %137, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %140, i32 %143)
  br label %145

145:                                              ; preds = %136, %131
  %146 = load i32, i32* @stdout, align 4
  %147 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %146, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %20)
  %148 = load %struct.scsi_vpd_unit_serial_number*, %struct.scsi_vpd_unit_serial_number** %11, align 8
  %149 = call i32 @free(%struct.scsi_vpd_unit_serial_number* %148)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %150

150:                                              ; preds = %145, %111, %78, %35, %25
  %151 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %151)
  %152 = load i32, i32* %5, align 4
  ret i32 %152
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %union.ccb* @cam_getccb(%struct.cam_device*) #2

declare dso_local i32 @warnx(i8*) #2

declare dso_local i32 @CCB_CLEAR_ALL_EXCEPT_HDR(i32*) #2

declare dso_local i64 @malloc(i32) #2

declare dso_local i32 @cam_freeccb(%union.ccb*) #2

declare dso_local i32 @scsi_inquiry(i32*, i32, i32*, i32, i32*, i32, i32, i32, i32, i32) #2

declare dso_local i64 @cam_send_ccb(%struct.cam_device*, %union.ccb*) #2

declare dso_local i32 @warn(i8*) #2

declare dso_local i32 @free(%struct.scsi_vpd_unit_serial_number*) #2

declare dso_local i32 @cam_error_print(%struct.cam_device*, %union.ccb*, i32, i32, i32) #2

declare dso_local i32 @bcopy(i32, i8*, i64) #2

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
