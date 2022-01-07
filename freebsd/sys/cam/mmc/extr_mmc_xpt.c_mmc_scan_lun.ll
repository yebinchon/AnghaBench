; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/mmc/extr_mmc_xpt.c_mmc_scan_lun.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/mmc/extr_mmc_xpt.c_mmc_scan_lun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_periph = type { i32 }
%struct.cam_path = type { i32 }
%union.ccb = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.ccb_pathinq = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@CAM_DEBUG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"mmc_scan_lun\0A\00", align 1
@CAM_REQ_CMP = common dso_local global i64 0, align 8
@CAM_LUN_WILDCARD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"mmd_scan_lun ignoring bus\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"mmcprobe\00", align 1
@CAM_PERIPH_INVALID = common dso_local global i32 0, align 4
@CAM_DEBUG_INFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"Got scan request, but mmcprobe already exists\0A\00", align 1
@CAM_REQ_CMP_ERR = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [32 x i8] c" Set up the mmcprobe device...\0A\00", align 1
@mmcprobe_register = common dso_local global i32 0, align 4
@mmcprobe_cleanup = common dso_local global i32 0, align 4
@mmcprobe_start = common dso_local global i32 0, align 4
@CAM_PERIPH_BIO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [72 x i8] c"xpt_scan_lun: cam_alloc_periph returned an error, can't continue probe\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_periph*, %struct.cam_path*, i32, %union.ccb*)* @mmc_scan_lun to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_scan_lun(%struct.cam_periph* %0, %struct.cam_path* %1, i32 %2, %union.ccb* %3) #0 {
  %5 = alloca %struct.cam_periph*, align 8
  %6 = alloca %struct.cam_path*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %union.ccb*, align 8
  %9 = alloca %struct.ccb_pathinq, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.cam_periph*, align 8
  %12 = alloca i32, align 4
  store %struct.cam_periph* %0, %struct.cam_periph** %5, align 8
  store %struct.cam_path* %1, %struct.cam_path** %6, align 8
  store i32 %2, i32* %7, align 4
  store %union.ccb* %3, %union.ccb** %8, align 8
  %13 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %14 = load i32, i32* @CAM_DEBUG_TRACE, align 4
  %15 = call i32 @CAM_DEBUG(%struct.cam_path* %13, i32 %14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %17 = call i32 @xpt_path_inq(%struct.ccb_pathinq* %9, %struct.cam_path* %16)
  %18 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %9, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @CAM_REQ_CMP, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %4
  %24 = load %union.ccb*, %union.ccb** %8, align 8
  %25 = icmp ne %union.ccb* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %9, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %union.ccb*, %union.ccb** %8, align 8
  %31 = bitcast %union.ccb* %30 to %struct.TYPE_4__*
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i64 %29, i64* %32, align 8
  %33 = load %union.ccb*, %union.ccb** %8, align 8
  %34 = call i32 @xpt_done(%union.ccb* %33)
  br label %35

35:                                               ; preds = %26, %23
  br label %121

36:                                               ; preds = %4
  %37 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %38 = call i64 @xpt_path_lun_id(%struct.cam_path* %37)
  %39 = load i64, i64* @CAM_LUN_WILDCARD, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %36
  %42 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %43 = load i32, i32* @CAM_DEBUG_TRACE, align 4
  %44 = call i32 @CAM_DEBUG(%struct.cam_path* %42, i32 %43, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i64, i64* @CAM_REQ_CMP, align 8
  %46 = load %union.ccb*, %union.ccb** %8, align 8
  %47 = bitcast %union.ccb* %46 to %struct.TYPE_4__*
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store i64 %45, i64* %48, align 8
  %49 = load %union.ccb*, %union.ccb** %8, align 8
  %50 = call i32 @xpt_done(%union.ccb* %49)
  br label %121

51:                                               ; preds = %36
  %52 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %53 = call i64 @xpt_path_owned(%struct.cam_path* %52)
  %54 = icmp eq i64 %53, 0
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %60 = call i32 @xpt_path_lock(%struct.cam_path* %59)
  br label %61

61:                                               ; preds = %58, %51
  %62 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %63 = call %struct.cam_periph* @cam_periph_find(%struct.cam_path* %62, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store %struct.cam_periph* %63, %struct.cam_periph** %11, align 8
  %64 = icmp ne %struct.cam_periph* %63, null
  br i1 %64, label %65, label %92

65:                                               ; preds = %61
  %66 = load %struct.cam_periph*, %struct.cam_periph** %11, align 8
  %67 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @CAM_PERIPH_INVALID, align 4
  %70 = and i32 %68, %69
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %65
  %73 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %74 = load i32, i32* @CAM_DEBUG_INFO, align 4
  %75 = call i32 @CAM_DEBUG(%struct.cam_path* %73, i32 %74, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  %76 = load i8*, i8** @CAM_REQ_CMP_ERR, align 8
  %77 = ptrtoint i8* %76 to i64
  %78 = load %union.ccb*, %union.ccb** %8, align 8
  %79 = bitcast %union.ccb* %78 to %struct.TYPE_4__*
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  store i64 %77, i64* %80, align 8
  %81 = load %union.ccb*, %union.ccb** %8, align 8
  %82 = call i32 @xpt_done(%union.ccb* %81)
  br label %91

83:                                               ; preds = %65
  %84 = load i8*, i8** @CAM_REQ_CMP_ERR, align 8
  %85 = ptrtoint i8* %84 to i64
  %86 = load %union.ccb*, %union.ccb** %8, align 8
  %87 = bitcast %union.ccb* %86 to %struct.TYPE_4__*
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  store i64 %85, i64* %88, align 8
  %89 = load %union.ccb*, %union.ccb** %8, align 8
  %90 = call i32 @xpt_done(%union.ccb* %89)
  br label %91

91:                                               ; preds = %83, %72
  br label %115

92:                                               ; preds = %61
  %93 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %94 = call i32 @xpt_print(%struct.cam_path* %93, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %95 = load i32, i32* @mmcprobe_register, align 4
  %96 = load i32, i32* @mmcprobe_cleanup, align 4
  %97 = load i32, i32* @mmcprobe_start, align 4
  %98 = load i32, i32* @CAM_PERIPH_BIO, align 4
  %99 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %100 = load %union.ccb*, %union.ccb** %8, align 8
  %101 = call i64 @cam_periph_alloc(i32 %95, i32* null, i32 %96, i32 %97, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %98, %struct.cam_path* %99, i32* null, i32 0, %union.ccb* %100)
  store i64 %101, i64* %10, align 8
  %102 = load i64, i64* %10, align 8
  %103 = load i64, i64* @CAM_REQ_CMP, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %92
  %106 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %107 = call i32 @xpt_print(%struct.cam_path* %106, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.5, i64 0, i64 0))
  br label %108

108:                                              ; preds = %105, %92
  %109 = load i64, i64* %10, align 8
  %110 = load %union.ccb*, %union.ccb** %8, align 8
  %111 = bitcast %union.ccb* %110 to %struct.TYPE_4__*
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  store i64 %109, i64* %112, align 8
  %113 = load %union.ccb*, %union.ccb** %8, align 8
  %114 = call i32 @xpt_done(%union.ccb* %113)
  br label %115

115:                                              ; preds = %108, %91
  %116 = load i32, i32* %12, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %120 = call i32 @xpt_path_unlock(%struct.cam_path* %119)
  br label %121

121:                                              ; preds = %35, %41, %118, %115
  ret void
}

declare dso_local i32 @CAM_DEBUG(%struct.cam_path*, i32, i8*) #1

declare dso_local i32 @xpt_path_inq(%struct.ccb_pathinq*, %struct.cam_path*) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

declare dso_local i64 @xpt_path_lun_id(%struct.cam_path*) #1

declare dso_local i64 @xpt_path_owned(%struct.cam_path*) #1

declare dso_local i32 @xpt_path_lock(%struct.cam_path*) #1

declare dso_local %struct.cam_periph* @cam_periph_find(%struct.cam_path*, i8*) #1

declare dso_local i32 @xpt_print(%struct.cam_path*, i8*) #1

declare dso_local i64 @cam_periph_alloc(i32, i32*, i32, i32, i8*, i32, %struct.cam_path*, i32*, i32, %union.ccb*) #1

declare dso_local i32 @xpt_path_unlock(%struct.cam_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
