; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_ata_cam_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_ata_cam_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_device = type { i32 }
%union.ccb = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_8__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@arglist = common dso_local global i32 0, align 4
@CAM_ARG_VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"sending ATA %s with timeout of %u msecs\00", align 1
@CAM_DEV_QFRZDIS = common dso_local global i32 0, align 4
@CAM_ARG_ERR_RECOVER = common dso_local global i32 0, align 4
@CAM_PASS_ERR_RECOVER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"error sending ATA %s\00", align 1
@CAM_ATAIO_NEEDRESULT = common dso_local global i32 0, align 4
@CAM_STATUS_MASK = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"ATA %s failed\00", align 1
@CAM_ESF_ALL = common dso_local global i32 0, align 4
@CAM_EPF_ALL = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_device*, %union.ccb*)* @ata_cam_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_cam_send(%struct.cam_device* %0, %union.ccb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cam_device*, align 8
  %5 = alloca %union.ccb*, align 8
  store %struct.cam_device* %0, %struct.cam_device** %4, align 8
  store %union.ccb* %1, %union.ccb** %5, align 8
  %6 = load i32, i32* @arglist, align 4
  %7 = load i32, i32* @CAM_ARG_VERBOSE, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %2
  %11 = load %union.ccb*, %union.ccb** %5, align 8
  %12 = bitcast %union.ccb* %11 to %struct.TYPE_7__*
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = call i32 @ata_op_string(%struct.TYPE_8__* %13)
  %15 = load %union.ccb*, %union.ccb** %5, align 8
  %16 = bitcast %union.ccb* %15 to %struct.TYPE_7__*
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 (i8*, i32, ...) @warnx(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %19)
  br label %21

21:                                               ; preds = %10, %2
  %22 = load i32, i32* @CAM_DEV_QFRZDIS, align 4
  %23 = load %union.ccb*, %union.ccb** %5, align 8
  %24 = bitcast %union.ccb* %23 to %struct.TYPE_6__*
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %22
  store i32 %27, i32* %25, align 4
  %28 = load i32, i32* @arglist, align 4
  %29 = load i32, i32* @CAM_ARG_ERR_RECOVER, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %21
  %33 = load i32, i32* @CAM_PASS_ERR_RECOVER, align 4
  %34 = load %union.ccb*, %union.ccb** %5, align 8
  %35 = bitcast %union.ccb* %34 to %struct.TYPE_6__*
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %33
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %32, %21
  %40 = load %struct.cam_device*, %struct.cam_device** %4, align 8
  %41 = load %union.ccb*, %union.ccb** %5, align 8
  %42 = call i64 @cam_send_ccb(%struct.cam_device* %40, %union.ccb* %41)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load %union.ccb*, %union.ccb** %5, align 8
  %46 = bitcast %union.ccb* %45 to %struct.TYPE_7__*
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = call i32 @ata_op_string(%struct.TYPE_8__* %47)
  %49 = call i32 @warn(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  store i32 1, i32* %3, align 4
  br label %87

50:                                               ; preds = %39
  %51 = load %union.ccb*, %union.ccb** %5, align 8
  %52 = bitcast %union.ccb* %51 to %struct.TYPE_7__*
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @CAM_ATAIO_NEEDRESULT, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %86, label %59

59:                                               ; preds = %50
  %60 = load %union.ccb*, %union.ccb** %5, align 8
  %61 = bitcast %union.ccb* %60 to %struct.TYPE_6__*
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @CAM_STATUS_MASK, align 4
  %65 = and i32 %63, %64
  %66 = load i32, i32* @CAM_REQ_CMP, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %86

68:                                               ; preds = %59
  %69 = load %union.ccb*, %union.ccb** %5, align 8
  %70 = bitcast %union.ccb* %69 to %struct.TYPE_7__*
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = call i32 @ata_op_string(%struct.TYPE_8__* %71)
  %73 = call i32 (i8*, i32, ...) @warnx(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* @arglist, align 4
  %75 = load i32, i32* @CAM_ARG_VERBOSE, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %68
  %79 = load %struct.cam_device*, %struct.cam_device** %4, align 8
  %80 = load %union.ccb*, %union.ccb** %5, align 8
  %81 = load i32, i32* @CAM_ESF_ALL, align 4
  %82 = load i32, i32* @CAM_EPF_ALL, align 4
  %83 = load i32, i32* @stderr, align 4
  %84 = call i32 @cam_error_print(%struct.cam_device* %79, %union.ccb* %80, i32 %81, i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %78, %68
  store i32 1, i32* %3, align 4
  br label %87

86:                                               ; preds = %59, %50
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %86, %85, %44
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @warnx(i8*, i32, ...) #1

declare dso_local i32 @ata_op_string(%struct.TYPE_8__*) #1

declare dso_local i64 @cam_send_ccb(%struct.cam_device*, %union.ccb*) #1

declare dso_local i32 @warn(i8*, i32) #1

declare dso_local i32 @cam_error_print(%struct.cam_device*, %union.ccb*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
