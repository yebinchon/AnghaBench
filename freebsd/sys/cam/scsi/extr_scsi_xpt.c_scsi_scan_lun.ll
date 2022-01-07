; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_xpt.c_scsi_scan_lun.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_xpt.c_scsi_scan_lun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.cam_periph = type { i32, i64 }
%struct.cam_path = type { %struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%union.ccb = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, i32, i32, i32, i32 }
%struct.ccb_pathinq = type { i32, %struct.TYPE_14__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@CAM_DEBUG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"scsi_scan_lun\0A\00", align 1
@CAM_PRIORITY_NONE = common dso_local global i32 0, align 4
@XPT_PATH_INQ = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i64 0, align 8
@PIM_NOINITIATOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"scsi_scan_lun: can't allocate CCB, can't continue\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"scsi_scan_lun: can't create path, can't continue\0A\00", align 1
@CAM_PRIORITY_XPT = common dso_local global i32 0, align 4
@xptscandone = common dso_local global i32 0, align 4
@XPT_SCAN_LUN = common dso_local global i32 0, align 4
@CAM_UNLOCKED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"probe\00", align 1
@CAM_PERIPH_INVALID = common dso_local global i32 0, align 4
@periph_links = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@CAM_REQ_CMP_ERR = common dso_local global i64 0, align 8
@proberegister = common dso_local global i32 0, align 4
@probecleanup = common dso_local global i32 0, align 4
@probestart = common dso_local global i32 0, align 4
@CAM_PERIPH_BIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [73 x i8] c"scsi_scan_lun: cam_alloc_periph returned an error, can't continue probe\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_periph*, %struct.cam_path*, i32, %union.ccb*)* @scsi_scan_lun to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scsi_scan_lun(%struct.cam_periph* %0, %struct.cam_path* %1, i32 %2, %union.ccb* %3) #0 {
  %5 = alloca %struct.cam_periph*, align 8
  %6 = alloca %struct.cam_path*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %union.ccb*, align 8
  %9 = alloca %struct.ccb_pathinq, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.cam_path*, align 8
  %12 = alloca %struct.cam_periph*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_13__*, align 8
  store %struct.cam_periph* %0, %struct.cam_periph** %5, align 8
  store %struct.cam_path* %1, %struct.cam_path** %6, align 8
  store i32 %2, i32* %7, align 4
  store %union.ccb* %3, %union.ccb** %8, align 8
  %15 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %16 = load i32, i32* @CAM_DEBUG_TRACE, align 4
  %17 = call i32 @CAM_DEBUG(%struct.cam_path* %15, i32 %16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %18 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %9, i32 0, i32 1
  %19 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %20 = load i32, i32* @CAM_PRIORITY_NONE, align 4
  %21 = call i32 @xpt_setup_ccb(%struct.TYPE_14__* %18, %struct.cam_path* %19, i32 %20)
  %22 = load i32, i32* @XPT_PATH_INQ, align 4
  %23 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %9, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 8
  %25 = bitcast %struct.ccb_pathinq* %9 to %union.ccb*
  %26 = call i32 @xpt_action(%union.ccb* %25)
  %27 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %9, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @CAM_REQ_CMP, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %4
  %33 = load %union.ccb*, %union.ccb** %8, align 8
  %34 = icmp ne %union.ccb* %33, null
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %9, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %union.ccb*, %union.ccb** %8, align 8
  %40 = bitcast %union.ccb* %39 to %struct.TYPE_14__*
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  store i64 %38, i64* %41, align 8
  %42 = load %union.ccb*, %union.ccb** %8, align 8
  %43 = call i32 @xpt_done(%union.ccb* %42)
  br label %44

44:                                               ; preds = %35, %32
  br label %191

45:                                               ; preds = %4
  %46 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %9, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @PIM_NOINITIATOR, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %45
  %52 = load %union.ccb*, %union.ccb** %8, align 8
  %53 = icmp ne %union.ccb* %52, null
  br i1 %53, label %54, label %61

54:                                               ; preds = %51
  %55 = load i64, i64* @CAM_REQ_CMP, align 8
  %56 = load %union.ccb*, %union.ccb** %8, align 8
  %57 = bitcast %union.ccb* %56 to %struct.TYPE_14__*
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  store i64 %55, i64* %58, align 8
  %59 = load %union.ccb*, %union.ccb** %8, align 8
  %60 = call i32 @xpt_done(%union.ccb* %59)
  br label %61

61:                                               ; preds = %54, %51
  br label %191

62:                                               ; preds = %45
  %63 = load %union.ccb*, %union.ccb** %8, align 8
  %64 = icmp eq %union.ccb* %63, null
  br i1 %64, label %65, label %121

65:                                               ; preds = %62
  %66 = call %union.ccb* (...) @xpt_alloc_ccb_nowait()
  store %union.ccb* %66, %union.ccb** %8, align 8
  %67 = load %union.ccb*, %union.ccb** %8, align 8
  %68 = icmp eq %union.ccb* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %71 = call i32 @xpt_print(%struct.cam_path* %70, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  br label %191

72:                                               ; preds = %65
  %73 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %74 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %73, i32 0, i32 2
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %79 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %78, i32 0, i32 1
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %84 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %83, i32 0, i32 0
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @xpt_create_path(%struct.cam_path** %11, i32* null, i32 %77, i32 %82, i32 %87)
  store i64 %88, i64* %10, align 8
  %89 = load i64, i64* %10, align 8
  %90 = load i64, i64* @CAM_REQ_CMP, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %72
  %93 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %94 = call i32 @xpt_print(%struct.cam_path* %93, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  %95 = load %union.ccb*, %union.ccb** %8, align 8
  %96 = call i32 @xpt_free_ccb(%union.ccb* %95)
  br label %191

97:                                               ; preds = %72
  %98 = load %union.ccb*, %union.ccb** %8, align 8
  %99 = bitcast %union.ccb* %98 to %struct.TYPE_14__*
  %100 = load %struct.cam_path*, %struct.cam_path** %11, align 8
  %101 = load i32, i32* @CAM_PRIORITY_XPT, align 4
  %102 = call i32 @xpt_setup_ccb(%struct.TYPE_14__* %99, %struct.cam_path* %100, i32 %101)
  %103 = load i32, i32* @xptscandone, align 4
  %104 = load %union.ccb*, %union.ccb** %8, align 8
  %105 = bitcast %union.ccb* %104 to %struct.TYPE_14__*
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 4
  store i32 %103, i32* %106, align 4
  %107 = load i32, i32* @XPT_SCAN_LUN, align 4
  %108 = load %union.ccb*, %union.ccb** %8, align 8
  %109 = bitcast %union.ccb* %108 to %struct.TYPE_14__*
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 3
  store i32 %107, i32* %110, align 8
  %111 = load i32, i32* @CAM_UNLOCKED, align 4
  %112 = load %union.ccb*, %union.ccb** %8, align 8
  %113 = bitcast %union.ccb* %112 to %struct.TYPE_14__*
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %115, %111
  store i32 %116, i32* %114, align 4
  %117 = load i32, i32* %7, align 4
  %118 = load %union.ccb*, %union.ccb** %8, align 8
  %119 = bitcast %union.ccb* %118 to %struct.TYPE_12__*
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 0
  store i32 %117, i32* %120, align 8
  br label %121

121:                                              ; preds = %97, %62
  %122 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %123 = call i64 @xpt_path_owned(%struct.cam_path* %122)
  %124 = icmp eq i64 %123, 0
  %125 = zext i1 %124 to i32
  store i32 %125, i32* %13, align 4
  %126 = load i32, i32* %13, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %121
  %129 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %130 = call i32 @xpt_path_lock(%struct.cam_path* %129)
  br label %131

131:                                              ; preds = %128, %121
  %132 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %133 = call %struct.cam_periph* @cam_periph_find(%struct.cam_path* %132, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store %struct.cam_periph* %133, %struct.cam_periph** %12, align 8
  %134 = icmp ne %struct.cam_periph* %133, null
  br i1 %134, label %135, label %161

135:                                              ; preds = %131
  %136 = load %struct.cam_periph*, %struct.cam_periph** %12, align 8
  %137 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @CAM_PERIPH_INVALID, align 4
  %140 = and i32 %138, %139
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %153

142:                                              ; preds = %135
  %143 = load %struct.cam_periph*, %struct.cam_periph** %12, align 8
  %144 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = inttoptr i64 %145 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %146, %struct.TYPE_13__** %14, align 8
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 0
  %149 = load %union.ccb*, %union.ccb** %8, align 8
  %150 = bitcast %union.ccb* %149 to %struct.TYPE_14__*
  %151 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @periph_links, i32 0, i32 0), align 4
  %152 = call i32 @TAILQ_INSERT_TAIL(i32* %148, %struct.TYPE_14__* %150, i32 %151)
  br label %160

153:                                              ; preds = %135
  %154 = load i64, i64* @CAM_REQ_CMP_ERR, align 8
  %155 = load %union.ccb*, %union.ccb** %8, align 8
  %156 = bitcast %union.ccb* %155 to %struct.TYPE_14__*
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 0
  store i64 %154, i64* %157, align 8
  %158 = load %union.ccb*, %union.ccb** %8, align 8
  %159 = call i32 @xpt_done(%union.ccb* %158)
  br label %160

160:                                              ; preds = %153, %142
  br label %185

161:                                              ; preds = %131
  %162 = load i32, i32* @proberegister, align 4
  %163 = load i32, i32* @probecleanup, align 4
  %164 = load i32, i32* @probestart, align 4
  %165 = load i32, i32* @CAM_PERIPH_BIO, align 4
  %166 = load %union.ccb*, %union.ccb** %8, align 8
  %167 = bitcast %union.ccb* %166 to %struct.TYPE_14__*
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = load %union.ccb*, %union.ccb** %8, align 8
  %171 = call i64 @cam_periph_alloc(i32 %162, i32* null, i32 %163, i32 %164, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %165, i32 %169, i32* null, i32 0, %union.ccb* %170)
  store i64 %171, i64* %10, align 8
  %172 = load i64, i64* %10, align 8
  %173 = load i64, i64* @CAM_REQ_CMP, align 8
  %174 = icmp ne i64 %172, %173
  br i1 %174, label %175, label %184

175:                                              ; preds = %161
  %176 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %177 = call i32 @xpt_print(%struct.cam_path* %176, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.4, i64 0, i64 0))
  %178 = load i64, i64* %10, align 8
  %179 = load %union.ccb*, %union.ccb** %8, align 8
  %180 = bitcast %union.ccb* %179 to %struct.TYPE_14__*
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 0
  store i64 %178, i64* %181, align 8
  %182 = load %union.ccb*, %union.ccb** %8, align 8
  %183 = call i32 @xpt_done(%union.ccb* %182)
  br label %184

184:                                              ; preds = %175, %161
  br label %185

185:                                              ; preds = %184, %160
  %186 = load i32, i32* %13, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %185
  %189 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %190 = call i32 @xpt_path_unlock(%struct.cam_path* %189)
  br label %191

191:                                              ; preds = %44, %61, %69, %92, %188, %185
  ret void
}

declare dso_local i32 @CAM_DEBUG(%struct.cam_path*, i32, i8*) #1

declare dso_local i32 @xpt_setup_ccb(%struct.TYPE_14__*, %struct.cam_path*, i32) #1

declare dso_local i32 @xpt_action(%union.ccb*) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

declare dso_local %union.ccb* @xpt_alloc_ccb_nowait(...) #1

declare dso_local i32 @xpt_print(%struct.cam_path*, i8*) #1

declare dso_local i64 @xpt_create_path(%struct.cam_path**, i32*, i32, i32, i32) #1

declare dso_local i32 @xpt_free_ccb(%union.ccb*) #1

declare dso_local i64 @xpt_path_owned(%struct.cam_path*) #1

declare dso_local i32 @xpt_path_lock(%struct.cam_path*) #1

declare dso_local %struct.cam_periph* @cam_periph_find(%struct.cam_path*, i8*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.TYPE_14__*, i32) #1

declare dso_local i64 @cam_periph_alloc(i32, i32*, i32, i32, i8*, i32, i32, i32*, i32, %union.ccb*) #1

declare dso_local i32 @xpt_path_unlock(%struct.cam_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
