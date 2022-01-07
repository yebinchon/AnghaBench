; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/nvme/extr_nvme_xpt.c_nvme_scan_lun.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/nvme/extr_nvme_xpt.c_nvme_scan_lun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.cam_periph = type { i32, i64 }
%struct.cam_path = type { i32 }
%union.ccb = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32 }
%struct.ccb_pathinq = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32, i32 }

@CAM_DEBUG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"nvme_scan_lun\0A\00", align 1
@CAM_REQ_CMP = common dso_local global i64 0, align 8
@CAM_LUN_WILDCARD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"nvme_scan_lun ignoring bus\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"nvme_probe\00", align 1
@CAM_PERIPH_INVALID = common dso_local global i32 0, align 4
@periph_links = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"restarting nvme_probe device\0A\00", align 1
@CAM_REQ_CMP_ERR = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [38 x i8] c"Failing to restart nvme_probe device\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Adding nvme_probe device\0A\00", align 1
@nvme_probe_register = common dso_local global i32 0, align 4
@nvme_probe_cleanup = common dso_local global i32 0, align 4
@nvme_probe_start = common dso_local global i32 0, align 4
@CAM_PERIPH_BIO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [72 x i8] c"xpt_scan_lun: cam_alloc_periph returned an error, can't continue probe\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_periph*, %struct.cam_path*, i32, %union.ccb*)* @nvme_scan_lun to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_scan_lun(%struct.cam_periph* %0, %struct.cam_path* %1, i32 %2, %union.ccb* %3) #0 {
  %5 = alloca %struct.cam_periph*, align 8
  %6 = alloca %struct.cam_path*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %union.ccb*, align 8
  %9 = alloca %struct.ccb_pathinq, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.cam_periph*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_6__*, align 8
  store %struct.cam_periph* %0, %struct.cam_periph** %5, align 8
  store %struct.cam_path* %1, %struct.cam_path** %6, align 8
  store i32 %2, i32* %7, align 4
  store %union.ccb* %3, %union.ccb** %8, align 8
  %14 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %15 = load i32, i32* @CAM_DEBUG_TRACE, align 4
  %16 = call i32 @CAM_DEBUG(%struct.cam_path* %14, i32 %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %18 = call i32 @xpt_path_inq(%struct.ccb_pathinq* %9, %struct.cam_path* %17)
  %19 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %9, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @CAM_REQ_CMP, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %4
  %25 = load %union.ccb*, %union.ccb** %8, align 8
  %26 = icmp ne %union.ccb* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %9, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %union.ccb*, %union.ccb** %8, align 8
  %32 = bitcast %union.ccb* %31 to %struct.TYPE_8__*
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  store i64 %30, i64* %33, align 8
  %34 = load %union.ccb*, %union.ccb** %8, align 8
  %35 = call i32 @xpt_done(%union.ccb* %34)
  br label %36

36:                                               ; preds = %27, %24
  br label %133

37:                                               ; preds = %4
  %38 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %39 = call i64 @xpt_path_lun_id(%struct.cam_path* %38)
  %40 = load i64, i64* @CAM_LUN_WILDCARD, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %37
  %43 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %44 = load i32, i32* @CAM_DEBUG_TRACE, align 4
  %45 = call i32 @CAM_DEBUG(%struct.cam_path* %43, i32 %44, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i64, i64* @CAM_REQ_CMP, align 8
  %47 = load %union.ccb*, %union.ccb** %8, align 8
  %48 = bitcast %union.ccb* %47 to %struct.TYPE_8__*
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  store i64 %46, i64* %49, align 8
  %50 = load %union.ccb*, %union.ccb** %8, align 8
  %51 = call i32 @xpt_done(%union.ccb* %50)
  br label %133

52:                                               ; preds = %37
  %53 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %54 = call i64 @xpt_path_owned(%struct.cam_path* %53)
  %55 = icmp eq i64 %54, 0
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %61 = call i32 @xpt_path_lock(%struct.cam_path* %60)
  br label %62

62:                                               ; preds = %59, %52
  %63 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %64 = call %struct.cam_periph* @cam_periph_find(%struct.cam_path* %63, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store %struct.cam_periph* %64, %struct.cam_periph** %11, align 8
  %65 = icmp ne %struct.cam_periph* %64, null
  br i1 %65, label %66, label %100

66:                                               ; preds = %62
  %67 = load %struct.cam_periph*, %struct.cam_periph** %11, align 8
  %68 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @CAM_PERIPH_INVALID, align 4
  %71 = and i32 %69, %70
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %89

73:                                               ; preds = %66
  %74 = load %struct.cam_periph*, %struct.cam_periph** %11, align 8
  %75 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = inttoptr i64 %76 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %77, %struct.TYPE_6__** %13, align 8
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load %union.ccb*, %union.ccb** %8, align 8
  %81 = bitcast %union.ccb* %80 to %struct.TYPE_8__*
  %82 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @periph_links, i32 0, i32 0), align 4
  %83 = call i32 @TAILQ_INSERT_TAIL(i32* %79, %struct.TYPE_8__* %81, i32 %82)
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  store i32 1, i32* %85, align 4
  %86 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %87 = load i32, i32* @CAM_DEBUG_TRACE, align 4
  %88 = call i32 @CAM_DEBUG(%struct.cam_path* %86, i32 %87, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %99

89:                                               ; preds = %66
  %90 = load i64, i64* @CAM_REQ_CMP_ERR, align 8
  %91 = load %union.ccb*, %union.ccb** %8, align 8
  %92 = bitcast %union.ccb* %91 to %struct.TYPE_8__*
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  store i64 %90, i64* %93, align 8
  %94 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %95 = load i32, i32* @CAM_DEBUG_TRACE, align 4
  %96 = call i32 @CAM_DEBUG(%struct.cam_path* %94, i32 %95, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %97 = load %union.ccb*, %union.ccb** %8, align 8
  %98 = call i32 @xpt_done(%union.ccb* %97)
  br label %99

99:                                               ; preds = %89, %73
  br label %127

100:                                              ; preds = %62
  %101 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %102 = load i32, i32* @CAM_DEBUG_TRACE, align 4
  %103 = call i32 @CAM_DEBUG(%struct.cam_path* %101, i32 %102, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %104 = load i32, i32* @nvme_probe_register, align 4
  %105 = load i32, i32* @nvme_probe_cleanup, align 4
  %106 = load i32, i32* @nvme_probe_start, align 4
  %107 = load i32, i32* @CAM_PERIPH_BIO, align 4
  %108 = load %union.ccb*, %union.ccb** %8, align 8
  %109 = bitcast %union.ccb* %108 to %struct.TYPE_8__*
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load %union.ccb*, %union.ccb** %8, align 8
  %113 = call i64 @cam_periph_alloc(i32 %104, i32* null, i32 %105, i32 %106, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %107, i32 %111, i32* null, i32 0, %union.ccb* %112)
  store i64 %113, i64* %10, align 8
  %114 = load i64, i64* %10, align 8
  %115 = load i64, i64* @CAM_REQ_CMP, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %126

117:                                              ; preds = %100
  %118 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %119 = call i32 @xpt_print(%struct.cam_path* %118, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.6, i64 0, i64 0))
  %120 = load i64, i64* %10, align 8
  %121 = load %union.ccb*, %union.ccb** %8, align 8
  %122 = bitcast %union.ccb* %121 to %struct.TYPE_8__*
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  store i64 %120, i64* %123, align 8
  %124 = load %union.ccb*, %union.ccb** %8, align 8
  %125 = call i32 @xpt_done(%union.ccb* %124)
  br label %126

126:                                              ; preds = %117, %100
  br label %127

127:                                              ; preds = %126, %99
  %128 = load i32, i32* %12, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  %131 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %132 = call i32 @xpt_path_unlock(%struct.cam_path* %131)
  br label %133

133:                                              ; preds = %36, %42, %130, %127
  ret void
}

declare dso_local i32 @CAM_DEBUG(%struct.cam_path*, i32, i8*) #1

declare dso_local i32 @xpt_path_inq(%struct.ccb_pathinq*, %struct.cam_path*) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

declare dso_local i64 @xpt_path_lun_id(%struct.cam_path*) #1

declare dso_local i64 @xpt_path_owned(%struct.cam_path*) #1

declare dso_local i32 @xpt_path_lock(%struct.cam_path*) #1

declare dso_local %struct.cam_periph* @cam_periph_find(%struct.cam_path*, i8*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i64 @cam_periph_alloc(i32, i32*, i32, i32, i8*, i32, i32, i32*, i32, %union.ccb*) #1

declare dso_local i32 @xpt_print(%struct.cam_path*, i8*) #1

declare dso_local i32 @xpt_path_unlock(%struct.cam_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
