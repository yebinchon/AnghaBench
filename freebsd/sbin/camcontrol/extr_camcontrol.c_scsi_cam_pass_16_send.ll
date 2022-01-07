; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_scsi_cam_pass_16_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_scsi_cam_pass_16_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_device = type { i32 }
%union.ccb = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.ata_pass_16 = type { i32, i32, i32, i32 }
%struct.ata_cmd = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@arglist = common dso_local global i32 0, align 4
@CAM_ARG_VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"sending ATA %s via pass_16 with timeout of %u msecs\00", align 1
@CAM_DEV_QFRZDIS = common dso_local global i32 0, align 4
@CAM_ARG_ERR_RECOVER = common dso_local global i32 0, align 4
@CAM_PASS_ERR_RECOVER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"error sending ATA %s via pass_16\00", align 1
@AP_FLAG_CHK_COND = common dso_local global i32 0, align 4
@CAM_STATUS_MASK = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"ATA %s via pass_16 failed\00", align 1
@CAM_ESF_ALL = common dso_local global i32 0, align 4
@CAM_EPF_ALL = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_device*, %union.ccb*)* @scsi_cam_pass_16_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scsi_cam_pass_16_send(%struct.cam_device* %0, %union.ccb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cam_device*, align 8
  %5 = alloca %union.ccb*, align 8
  %6 = alloca %struct.ata_pass_16*, align 8
  %7 = alloca %struct.ata_cmd, align 4
  store %struct.cam_device* %0, %struct.cam_device** %4, align 8
  store %union.ccb* %1, %union.ccb** %5, align 8
  %8 = load %union.ccb*, %union.ccb** %5, align 8
  %9 = bitcast %union.ccb* %8 to %struct.TYPE_7__*
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.ata_pass_16*
  store %struct.ata_pass_16* %13, %struct.ata_pass_16** %6, align 8
  %14 = load %struct.ata_pass_16*, %struct.ata_pass_16** %6, align 8
  %15 = getelementptr inbounds %struct.ata_pass_16, %struct.ata_pass_16* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.ata_cmd, %struct.ata_cmd* %7, i32 0, i32 2
  store i32 %16, i32* %17, align 4
  %18 = load %struct.ata_pass_16*, %struct.ata_pass_16** %6, align 8
  %19 = getelementptr inbounds %struct.ata_pass_16, %struct.ata_pass_16* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.ata_cmd, %struct.ata_cmd* %7, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = load %struct.ata_pass_16*, %struct.ata_pass_16** %6, align 8
  %23 = getelementptr inbounds %struct.ata_pass_16, %struct.ata_pass_16* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.ata_cmd, %struct.ata_cmd* %7, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* @arglist, align 4
  %27 = load i32, i32* @CAM_ARG_VERBOSE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %2
  %31 = call i32 @ata_op_string(%struct.ata_cmd* %7)
  %32 = load %union.ccb*, %union.ccb** %5, align 8
  %33 = bitcast %union.ccb* %32 to %struct.TYPE_7__*
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 (i8*, i32, ...) @warnx(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %36)
  br label %38

38:                                               ; preds = %30, %2
  %39 = load i32, i32* @CAM_DEV_QFRZDIS, align 4
  %40 = load %union.ccb*, %union.ccb** %5, align 8
  %41 = bitcast %union.ccb* %40 to %struct.TYPE_8__*
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %39
  store i32 %44, i32* %42, align 4
  %45 = load i32, i32* @arglist, align 4
  %46 = load i32, i32* @CAM_ARG_ERR_RECOVER, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %38
  %50 = load i32, i32* @CAM_PASS_ERR_RECOVER, align 4
  %51 = load %union.ccb*, %union.ccb** %5, align 8
  %52 = bitcast %union.ccb* %51 to %struct.TYPE_8__*
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %50
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %49, %38
  %57 = load %struct.cam_device*, %struct.cam_device** %4, align 8
  %58 = load %union.ccb*, %union.ccb** %5, align 8
  %59 = call i64 @cam_send_ccb(%struct.cam_device* %57, %union.ccb* %58)
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = call i32 @ata_op_string(%struct.ata_cmd* %7)
  %63 = call i32 @warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  store i32 1, i32* %3, align 4
  br label %96

64:                                               ; preds = %56
  %65 = load %struct.ata_pass_16*, %struct.ata_pass_16** %6, align 8
  %66 = getelementptr inbounds %struct.ata_pass_16, %struct.ata_pass_16* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @AP_FLAG_CHK_COND, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %95, label %71

71:                                               ; preds = %64
  %72 = load %union.ccb*, %union.ccb** %5, align 8
  %73 = bitcast %union.ccb* %72 to %struct.TYPE_8__*
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @CAM_STATUS_MASK, align 4
  %77 = and i32 %75, %76
  %78 = load i32, i32* @CAM_REQ_CMP, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %95

80:                                               ; preds = %71
  %81 = call i32 @ata_op_string(%struct.ata_cmd* %7)
  %82 = call i32 (i8*, i32, ...) @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* @arglist, align 4
  %84 = load i32, i32* @CAM_ARG_VERBOSE, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %80
  %88 = load %struct.cam_device*, %struct.cam_device** %4, align 8
  %89 = load %union.ccb*, %union.ccb** %5, align 8
  %90 = load i32, i32* @CAM_ESF_ALL, align 4
  %91 = load i32, i32* @CAM_EPF_ALL, align 4
  %92 = load i32, i32* @stderr, align 4
  %93 = call i32 @cam_error_print(%struct.cam_device* %88, %union.ccb* %89, i32 %90, i32 %91, i32 %92)
  br label %94

94:                                               ; preds = %87, %80
  store i32 1, i32* %3, align 4
  br label %96

95:                                               ; preds = %71, %64
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %95, %94, %61
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @warnx(i8*, i32, ...) #1

declare dso_local i32 @ata_op_string(%struct.ata_cmd*) #1

declare dso_local i64 @cam_send_ccb(%struct.cam_device*, %union.ccb*) #1

declare dso_local i32 @warn(i8*, i32) #1

declare dso_local i32 @cam_error_print(%struct.cam_device*, %union.ccb*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
