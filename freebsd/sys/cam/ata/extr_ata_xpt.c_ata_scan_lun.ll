; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ata/extr_ata_xpt.c_ata_scan_lun.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ata/extr_ata_xpt.c_ata_scan_lun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.cam_periph = type { i32, i64 }
%struct.cam_path = type { %struct.TYPE_13__*, %struct.TYPE_12__*, %struct.TYPE_11__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%union.ccb = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64, i32, i32, i32, i32 }
%struct.ccb_pathinq = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32 }

@CAM_DEBUG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"xpt_scan_lun\0A\00", align 1
@CAM_REQ_CMP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"xpt_scan_lun: can't allocate CCB, can't continue\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"xpt_scan_lun: can't create path, can't continue\0A\00", align 1
@CAM_PRIORITY_XPT = common dso_local global i32 0, align 4
@xptscandone = common dso_local global i32 0, align 4
@CAM_UNLOCKED = common dso_local global i32 0, align 4
@XPT_SCAN_LUN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"aprobe\00", align 1
@CAM_PERIPH_INVALID = common dso_local global i32 0, align 4
@periph_links = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4
@CAM_REQ_CMP_ERR = common dso_local global i64 0, align 8
@proberegister = common dso_local global i32 0, align 4
@probecleanup = common dso_local global i32 0, align 4
@probestart = common dso_local global i32 0, align 4
@CAM_PERIPH_BIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [72 x i8] c"xpt_scan_lun: cam_alloc_periph returned an error, can't continue probe\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_periph*, %struct.cam_path*, i32, %union.ccb*)* @ata_scan_lun to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ata_scan_lun(%struct.cam_periph* %0, %struct.cam_path* %1, i32 %2, %union.ccb* %3) #0 {
  %5 = alloca %struct.cam_periph*, align 8
  %6 = alloca %struct.cam_path*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %union.ccb*, align 8
  %9 = alloca %struct.ccb_pathinq, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.cam_path*, align 8
  %12 = alloca %struct.cam_periph*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_15__*, align 8
  store %struct.cam_periph* %0, %struct.cam_periph** %5, align 8
  store %struct.cam_path* %1, %struct.cam_path** %6, align 8
  store i32 %2, i32* %7, align 4
  store %union.ccb* %3, %union.ccb** %8, align 8
  %15 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %16 = load i32, i32* @CAM_DEBUG_TRACE, align 4
  %17 = call i32 @CAM_DEBUG(%struct.cam_path* %15, i32 %16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %19 = call i32 @xpt_path_inq(%struct.ccb_pathinq* %9, %struct.cam_path* %18)
  %20 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %9, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @CAM_REQ_CMP, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %4
  %26 = load %union.ccb*, %union.ccb** %8, align 8
  %27 = icmp ne %union.ccb* %26, null
  br i1 %27, label %28, label %37

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %9, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %union.ccb*, %union.ccb** %8, align 8
  %33 = bitcast %union.ccb* %32 to %struct.TYPE_16__*
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 0
  store i64 %31, i64* %34, align 8
  %35 = load %union.ccb*, %union.ccb** %8, align 8
  %36 = call i32 @xpt_done(%union.ccb* %35)
  br label %37

37:                                               ; preds = %28, %25
  br label %169

38:                                               ; preds = %4
  %39 = load %union.ccb*, %union.ccb** %8, align 8
  %40 = icmp eq %union.ccb* %39, null
  br i1 %40, label %41, label %97

41:                                               ; preds = %38
  %42 = call %union.ccb* (...) @xpt_alloc_ccb_nowait()
  store %union.ccb* %42, %union.ccb** %8, align 8
  %43 = load %union.ccb*, %union.ccb** %8, align 8
  %44 = icmp eq %union.ccb* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %47 = call i32 @xpt_print(%struct.cam_path* %46, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  br label %169

48:                                               ; preds = %41
  %49 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %50 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %49, i32 0, i32 2
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %55 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %54, i32 0, i32 1
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %60 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %59, i32 0, i32 0
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @xpt_create_path(%struct.cam_path** %11, i32* null, i32 %53, i32 %58, i32 %63)
  store i64 %64, i64* %10, align 8
  %65 = load i64, i64* %10, align 8
  %66 = load i64, i64* @CAM_REQ_CMP, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %48
  %69 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %70 = call i32 @xpt_print(%struct.cam_path* %69, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  %71 = load %union.ccb*, %union.ccb** %8, align 8
  %72 = call i32 @xpt_free_ccb(%union.ccb* %71)
  br label %169

73:                                               ; preds = %48
  %74 = load %union.ccb*, %union.ccb** %8, align 8
  %75 = bitcast %union.ccb* %74 to %struct.TYPE_16__*
  %76 = load %struct.cam_path*, %struct.cam_path** %11, align 8
  %77 = load i32, i32* @CAM_PRIORITY_XPT, align 4
  %78 = call i32 @xpt_setup_ccb(%struct.TYPE_16__* %75, %struct.cam_path* %76, i32 %77)
  %79 = load i32, i32* @xptscandone, align 4
  %80 = load %union.ccb*, %union.ccb** %8, align 8
  %81 = bitcast %union.ccb* %80 to %struct.TYPE_16__*
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 4
  store i32 %79, i32* %82, align 4
  %83 = load i32, i32* @CAM_UNLOCKED, align 4
  %84 = load %union.ccb*, %union.ccb** %8, align 8
  %85 = bitcast %union.ccb* %84 to %struct.TYPE_16__*
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = or i32 %87, %83
  store i32 %88, i32* %86, align 8
  %89 = load i32, i32* @XPT_SCAN_LUN, align 4
  %90 = load %union.ccb*, %union.ccb** %8, align 8
  %91 = bitcast %union.ccb* %90 to %struct.TYPE_16__*
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 2
  store i32 %89, i32* %92, align 4
  %93 = load i32, i32* %7, align 4
  %94 = load %union.ccb*, %union.ccb** %8, align 8
  %95 = bitcast %union.ccb* %94 to %struct.TYPE_14__*
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 0
  store i32 %93, i32* %96, align 8
  br label %97

97:                                               ; preds = %73, %38
  %98 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %99 = call i64 @xpt_path_owned(%struct.cam_path* %98)
  %100 = icmp eq i64 %99, 0
  %101 = zext i1 %100 to i32
  store i32 %101, i32* %13, align 4
  %102 = load i32, i32* %13, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %97
  %105 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %106 = call i32 @xpt_path_lock(%struct.cam_path* %105)
  br label %107

107:                                              ; preds = %104, %97
  %108 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %109 = call %struct.cam_periph* @cam_periph_find(%struct.cam_path* %108, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store %struct.cam_periph* %109, %struct.cam_periph** %12, align 8
  %110 = icmp ne %struct.cam_periph* %109, null
  br i1 %110, label %111, label %139

111:                                              ; preds = %107
  %112 = load %struct.cam_periph*, %struct.cam_periph** %12, align 8
  %113 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @CAM_PERIPH_INVALID, align 4
  %116 = and i32 %114, %115
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %131

118:                                              ; preds = %111
  %119 = load %struct.cam_periph*, %struct.cam_periph** %12, align 8
  %120 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = inttoptr i64 %121 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %122, %struct.TYPE_15__** %14, align 8
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 1
  %125 = load %union.ccb*, %union.ccb** %8, align 8
  %126 = bitcast %union.ccb* %125 to %struct.TYPE_16__*
  %127 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @periph_links, i32 0, i32 0), align 4
  %128 = call i32 @TAILQ_INSERT_TAIL(i32* %124, %struct.TYPE_16__* %126, i32 %127)
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 0
  store i32 1, i32* %130, align 4
  br label %138

131:                                              ; preds = %111
  %132 = load i64, i64* @CAM_REQ_CMP_ERR, align 8
  %133 = load %union.ccb*, %union.ccb** %8, align 8
  %134 = bitcast %union.ccb* %133 to %struct.TYPE_16__*
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 0
  store i64 %132, i64* %135, align 8
  %136 = load %union.ccb*, %union.ccb** %8, align 8
  %137 = call i32 @xpt_done(%union.ccb* %136)
  br label %138

138:                                              ; preds = %131, %118
  br label %163

139:                                              ; preds = %107
  %140 = load i32, i32* @proberegister, align 4
  %141 = load i32, i32* @probecleanup, align 4
  %142 = load i32, i32* @probestart, align 4
  %143 = load i32, i32* @CAM_PERIPH_BIO, align 4
  %144 = load %union.ccb*, %union.ccb** %8, align 8
  %145 = bitcast %union.ccb* %144 to %struct.TYPE_16__*
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = load %union.ccb*, %union.ccb** %8, align 8
  %149 = call i64 @cam_periph_alloc(i32 %140, i32* null, i32 %141, i32 %142, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %143, i32 %147, i32* null, i32 0, %union.ccb* %148)
  store i64 %149, i64* %10, align 8
  %150 = load i64, i64* %10, align 8
  %151 = load i64, i64* @CAM_REQ_CMP, align 8
  %152 = icmp ne i64 %150, %151
  br i1 %152, label %153, label %162

153:                                              ; preds = %139
  %154 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %155 = call i32 @xpt_print(%struct.cam_path* %154, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.4, i64 0, i64 0))
  %156 = load i64, i64* %10, align 8
  %157 = load %union.ccb*, %union.ccb** %8, align 8
  %158 = bitcast %union.ccb* %157 to %struct.TYPE_16__*
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 0
  store i64 %156, i64* %159, align 8
  %160 = load %union.ccb*, %union.ccb** %8, align 8
  %161 = call i32 @xpt_done(%union.ccb* %160)
  br label %162

162:                                              ; preds = %153, %139
  br label %163

163:                                              ; preds = %162, %138
  %164 = load i32, i32* %13, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %163
  %167 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %168 = call i32 @xpt_path_unlock(%struct.cam_path* %167)
  br label %169

169:                                              ; preds = %37, %45, %68, %166, %163
  ret void
}

declare dso_local i32 @CAM_DEBUG(%struct.cam_path*, i32, i8*) #1

declare dso_local i32 @xpt_path_inq(%struct.ccb_pathinq*, %struct.cam_path*) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

declare dso_local %union.ccb* @xpt_alloc_ccb_nowait(...) #1

declare dso_local i32 @xpt_print(%struct.cam_path*, i8*) #1

declare dso_local i64 @xpt_create_path(%struct.cam_path**, i32*, i32, i32, i32) #1

declare dso_local i32 @xpt_free_ccb(%union.ccb*) #1

declare dso_local i32 @xpt_setup_ccb(%struct.TYPE_16__*, %struct.cam_path*, i32) #1

declare dso_local i64 @xpt_path_owned(%struct.cam_path*) #1

declare dso_local i32 @xpt_path_lock(%struct.cam_path*) #1

declare dso_local %struct.cam_periph* @cam_periph_find(%struct.cam_path*, i8*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.TYPE_16__*, i32) #1

declare dso_local i64 @cam_periph_alloc(i32, i32*, i32, i32, i8*, i32, i32, i32*, i32, %union.ccb*) #1

declare dso_local i32 @xpt_path_unlock(%struct.cam_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
