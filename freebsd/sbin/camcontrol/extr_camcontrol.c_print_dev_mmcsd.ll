; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_print_dev_mmcsd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_print_dev_mmcsd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_match_result = type { i32, i32, i32 }
%union.ccb = type { %struct.ccb_dev_advinfo }
%struct.ccb_dev_advinfo = type { i32, i32*, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.cam_device = type { i32 }
%struct.mmc_params = type { i8*, i32 }

@O_RDWR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@cam_errbuf = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"couldn't allocate CCB\00", align 1
@CAM_DIR_IN = common dso_local global i32 0, align 4
@XPT_DEV_ADVINFO = common dso_local global i32 0, align 4
@CDAI_FLAG_NONE = common dso_local global i32 0, align 4
@CDAI_TYPE_MMC_PARAMS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"error sending XPT_DEV_ADVINFO CCB\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"<%s>\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"<%s card>\00", align 1
@CARD_FEATURE_SDIO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"SDIO\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_match_result*, i8*)* @print_dev_mmcsd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_dev_mmcsd(%struct.device_match_result* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device_match_result*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %union.ccb*, align 8
  %7 = alloca %struct.ccb_dev_advinfo*, align 8
  %8 = alloca %struct.cam_device*, align 8
  %9 = alloca %struct.mmc_params, align 8
  store %struct.device_match_result* %0, %struct.device_match_result** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.device_match_result*, %struct.device_match_result** %4, align 8
  %11 = getelementptr inbounds %struct.device_match_result, %struct.device_match_result* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.device_match_result*, %struct.device_match_result** %4, align 8
  %14 = getelementptr inbounds %struct.device_match_result, %struct.device_match_result* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.device_match_result*, %struct.device_match_result** %4, align 8
  %17 = getelementptr inbounds %struct.device_match_result, %struct.device_match_result* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @O_RDWR, align 4
  %20 = call %struct.cam_device* @cam_open_btl(i32 %12, i32 %15, i32 %18, i32 %19, i32* null)
  store %struct.cam_device* %20, %struct.cam_device** %8, align 8
  %21 = load %struct.cam_device*, %struct.cam_device** %8, align 8
  %22 = icmp eq %struct.cam_device* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @cam_errbuf, align 4
  %25 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %24)
  store i32 1, i32* %3, align 4
  br label %92

26:                                               ; preds = %2
  %27 = load %struct.cam_device*, %struct.cam_device** %8, align 8
  %28 = call %union.ccb* @cam_getccb(%struct.cam_device* %27)
  store %union.ccb* %28, %union.ccb** %6, align 8
  %29 = load %union.ccb*, %union.ccb** %6, align 8
  %30 = icmp eq %union.ccb* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %33 = load %struct.cam_device*, %struct.cam_device** %8, align 8
  %34 = call i32 @cam_close_device(%struct.cam_device* %33)
  store i32 1, i32* %3, align 4
  br label %92

35:                                               ; preds = %26
  %36 = load %union.ccb*, %union.ccb** %6, align 8
  %37 = bitcast %union.ccb* %36 to %struct.ccb_dev_advinfo*
  store %struct.ccb_dev_advinfo* %37, %struct.ccb_dev_advinfo** %7, align 8
  %38 = load i32, i32* @CAM_DIR_IN, align 4
  %39 = load %struct.ccb_dev_advinfo*, %struct.ccb_dev_advinfo** %7, align 8
  %40 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 4
  %42 = load i32, i32* @XPT_DEV_ADVINFO, align 4
  %43 = load %struct.ccb_dev_advinfo*, %struct.ccb_dev_advinfo** %7, align 8
  %44 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 8
  %46 = load i32, i32* @CDAI_FLAG_NONE, align 4
  %47 = load %struct.ccb_dev_advinfo*, %struct.ccb_dev_advinfo** %7, align 8
  %48 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @CDAI_TYPE_MMC_PARAMS, align 4
  %50 = load %struct.ccb_dev_advinfo*, %struct.ccb_dev_advinfo** %7, align 8
  %51 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load %struct.ccb_dev_advinfo*, %struct.ccb_dev_advinfo** %7, align 8
  %53 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %52, i32 0, i32 0
  store i32 16, i32* %53, align 8
  %54 = bitcast %struct.mmc_params* %9 to i32*
  %55 = load %struct.ccb_dev_advinfo*, %struct.ccb_dev_advinfo** %7, align 8
  %56 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %55, i32 0, i32 1
  store i32* %54, i32** %56, align 8
  %57 = load %struct.cam_device*, %struct.cam_device** %8, align 8
  %58 = load %union.ccb*, %union.ccb** %6, align 8
  %59 = call i64 @cam_send_ccb(%struct.cam_device* %57, %union.ccb* %58)
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %35
  %62 = call i32 @warn(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %63 = load %union.ccb*, %union.ccb** %6, align 8
  %64 = call i32 @cam_freeccb(%union.ccb* %63)
  %65 = load %struct.cam_device*, %struct.cam_device** %8, align 8
  %66 = call i32 @cam_close_device(%struct.cam_device* %65)
  store i32 1, i32* %3, align 4
  br label %92

67:                                               ; preds = %35
  %68 = getelementptr inbounds %struct.mmc_params, %struct.mmc_params* %9, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = call i64 @strlen(i8* %69)
  %71 = icmp sgt i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load i8*, i8** %5, align 8
  %74 = getelementptr inbounds %struct.mmc_params, %struct.mmc_params* %9, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @sprintf(i8* %73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %75)
  br label %87

77:                                               ; preds = %67
  %78 = load i8*, i8** %5, align 8
  %79 = getelementptr inbounds %struct.mmc_params, %struct.mmc_params* %9, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @CARD_FEATURE_SDIO, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0)
  %86 = call i32 @sprintf(i8* %78, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %85)
  br label %87

87:                                               ; preds = %77, %72
  %88 = load %union.ccb*, %union.ccb** %6, align 8
  %89 = call i32 @cam_freeccb(%union.ccb* %88)
  %90 = load %struct.cam_device*, %struct.cam_device** %8, align 8
  %91 = call i32 @cam_close_device(%struct.cam_device* %90)
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %87, %61, %31, %23
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local %struct.cam_device* @cam_open_btl(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local %union.ccb* @cam_getccb(%struct.cam_device*) #1

declare dso_local i32 @cam_close_device(%struct.cam_device*) #1

declare dso_local i64 @cam_send_ccb(%struct.cam_device*, %union.ccb*) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @cam_freeccb(%union.ccb*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
