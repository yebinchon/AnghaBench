; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ata/extr_ata_xpt.c_ata_scan_bus.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ata/extr_ata_xpt.c_ata_scan_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_periph = type { i32 }
%union.ccb = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32, void (%struct.cam_periph.0*, %union.ccb.1*)*, %struct.TYPE_15__*, i32, %struct.TYPE_12__, i32, %struct.cam_path* }
%struct.cam_periph.0 = type opaque
%union.ccb.1 = type opaque
%struct.TYPE_15__ = type { i32, %union.ccb*, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.cam_path = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.mtx = type { i32 }
%struct.ccb_trans_settings = type { %struct.TYPE_11__, i32, %struct.TYPE_16__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32 }

@CAM_DEBUG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"xpt_scan_bus\0A\00", align 1
@CAM_RESRC_UNAVAIL = common dso_local global i8* null, align 8
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@PI_WIDE_32 = common dso_local global i32 0, align 4
@PI_WIDE_16 = common dso_local global i32 0, align 4
@PI_SDTR_ABLE = common dso_local global i32 0, align 4
@PIM_NOBUSRESET = common dso_local global i32 0, align 4
@CAM_PRIORITY_NONE = common dso_local global i32 0, align 4
@XPT_RESET_BUS = common dso_local global i32 0, align 4
@M_CAMXPT = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@PI_SATAPM = common dso_local global i32 0, align 4
@XPT_SET_TRAN_SETTINGS = common dso_local global i32 0, align 4
@CTS_TYPE_CURRENT_SETTINGS = common dso_local global i32 0, align 4
@CTS_SATA_VALID_PM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [71 x i8] c"xpt_scan_bus: xpt_create_path failed with status %#x, bus scan halted\0A\00", align 1
@CAM_UNLOCKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_periph*, %union.ccb*)* @ata_scan_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ata_scan_bus(%struct.cam_periph* %0, %union.ccb* %1) #0 {
  %3 = alloca %struct.cam_periph*, align 8
  %4 = alloca %union.ccb*, align 8
  %5 = alloca %struct.cam_path*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %union.ccb*, align 8
  %8 = alloca %union.ccb*, align 8
  %9 = alloca %struct.mtx*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ccb_trans_settings, align 8
  store %struct.cam_periph* %0, %struct.cam_periph** %3, align 8
  store %union.ccb* %1, %union.ccb** %4, align 8
  %12 = load %union.ccb*, %union.ccb** %4, align 8
  %13 = bitcast %union.ccb* %12 to %struct.TYPE_16__*
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 7
  %15 = load %struct.cam_path*, %struct.cam_path** %14, align 8
  %16 = load i32, i32* @CAM_DEBUG_TRACE, align 4
  %17 = call i32 @CAM_DEBUG(%struct.cam_path* %15, i32 %16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %18 = load %union.ccb*, %union.ccb** %4, align 8
  %19 = bitcast %union.ccb* %18 to %struct.TYPE_16__*
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %442 [
    i32 130, label %22
    i32 128, label %22
    i32 129, label %209
  ]

22:                                               ; preds = %2, %2
  %23 = call %union.ccb* (...) @xpt_alloc_ccb_nowait()
  store %union.ccb* %23, %union.ccb** %7, align 8
  %24 = load %union.ccb*, %union.ccb** %7, align 8
  %25 = icmp eq %union.ccb* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %22
  %27 = load i8*, i8** @CAM_RESRC_UNAVAIL, align 8
  %28 = ptrtoint i8* %27 to i32
  %29 = load %union.ccb*, %union.ccb** %4, align 8
  %30 = bitcast %union.ccb* %29 to %struct.TYPE_16__*
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 4
  %32 = load %union.ccb*, %union.ccb** %4, align 8
  %33 = call i32 @xpt_done(%union.ccb* %32)
  br label %443

34:                                               ; preds = %22
  %35 = load %union.ccb*, %union.ccb** %7, align 8
  %36 = bitcast %union.ccb* %35 to %struct.TYPE_17__*
  %37 = load %union.ccb*, %union.ccb** %4, align 8
  %38 = bitcast %union.ccb* %37 to %struct.TYPE_16__*
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 7
  %40 = load %struct.cam_path*, %struct.cam_path** %39, align 8
  %41 = call i32 @xpt_path_inq(%struct.TYPE_17__* %36, %struct.cam_path* %40)
  %42 = load %union.ccb*, %union.ccb** %7, align 8
  %43 = bitcast %union.ccb* %42 to %struct.TYPE_16__*
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @CAM_REQ_CMP, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %60

48:                                               ; preds = %34
  %49 = load %union.ccb*, %union.ccb** %7, align 8
  %50 = bitcast %union.ccb* %49 to %struct.TYPE_16__*
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %union.ccb*, %union.ccb** %4, align 8
  %54 = bitcast %union.ccb* %53 to %struct.TYPE_16__*
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 1
  store i32 %52, i32* %55, align 4
  %56 = load %union.ccb*, %union.ccb** %7, align 8
  %57 = call i32 @xpt_free_ccb(%union.ccb* %56)
  %58 = load %union.ccb*, %union.ccb** %4, align 8
  %59 = call i32 @xpt_done(%union.ccb* %58)
  br label %443

60:                                               ; preds = %34
  %61 = load %union.ccb*, %union.ccb** %7, align 8
  %62 = bitcast %union.ccb* %61 to %struct.TYPE_17__*
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @PI_WIDE_32, align 4
  %66 = load i32, i32* @PI_WIDE_16, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @PI_SDTR_ABLE, align 4
  %69 = or i32 %67, %68
  %70 = and i32 %64, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %142

72:                                               ; preds = %60
  %73 = load %union.ccb*, %union.ccb** %7, align 8
  %74 = bitcast %union.ccb* %73 to %struct.TYPE_17__*
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @PIM_NOBUSRESET, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %142, label %80

80:                                               ; preds = %72
  %81 = load %union.ccb*, %union.ccb** %4, align 8
  %82 = bitcast %union.ccb* %81 to %struct.TYPE_16__*
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 7
  %84 = load %struct.cam_path*, %struct.cam_path** %83, align 8
  %85 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %84, i32 0, i32 0
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 0
  %88 = call i32 @timevalisset(i32* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %142, label %90

90:                                               ; preds = %80
  %91 = call %union.ccb* (...) @xpt_alloc_ccb_nowait()
  store %union.ccb* %91, %union.ccb** %8, align 8
  %92 = load %union.ccb*, %union.ccb** %8, align 8
  %93 = icmp eq %union.ccb* %92, null
  br i1 %93, label %94, label %104

94:                                               ; preds = %90
  %95 = load i8*, i8** @CAM_RESRC_UNAVAIL, align 8
  %96 = ptrtoint i8* %95 to i32
  %97 = load %union.ccb*, %union.ccb** %4, align 8
  %98 = bitcast %union.ccb* %97 to %struct.TYPE_16__*
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 1
  store i32 %96, i32* %99, align 4
  %100 = load %union.ccb*, %union.ccb** %7, align 8
  %101 = call i32 @xpt_free_ccb(%union.ccb* %100)
  %102 = load %union.ccb*, %union.ccb** %4, align 8
  %103 = call i32 @xpt_done(%union.ccb* %102)
  br label %443

104:                                              ; preds = %90
  %105 = load %union.ccb*, %union.ccb** %8, align 8
  %106 = bitcast %union.ccb* %105 to %struct.TYPE_16__*
  %107 = load %union.ccb*, %union.ccb** %4, align 8
  %108 = bitcast %union.ccb* %107 to %struct.TYPE_16__*
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 7
  %110 = load %struct.cam_path*, %struct.cam_path** %109, align 8
  %111 = load i32, i32* @CAM_PRIORITY_NONE, align 4
  %112 = call i32 @xpt_setup_ccb(%struct.TYPE_16__* %106, %struct.cam_path* %110, i32 %111)
  %113 = load i32, i32* @XPT_RESET_BUS, align 4
  %114 = load %union.ccb*, %union.ccb** %8, align 8
  %115 = bitcast %union.ccb* %114 to %struct.TYPE_16__*
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 0
  store i32 %113, i32* %116, align 8
  %117 = load %union.ccb*, %union.ccb** %8, align 8
  %118 = call i32 @xpt_action(%union.ccb* %117)
  %119 = load %union.ccb*, %union.ccb** %8, align 8
  %120 = bitcast %union.ccb* %119 to %struct.TYPE_16__*
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @CAM_REQ_CMP, align 4
  %124 = icmp ne i32 %122, %123
  br i1 %124, label %125, label %139

125:                                              ; preds = %104
  %126 = load %union.ccb*, %union.ccb** %8, align 8
  %127 = bitcast %union.ccb* %126 to %struct.TYPE_16__*
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load %union.ccb*, %union.ccb** %4, align 8
  %131 = bitcast %union.ccb* %130 to %struct.TYPE_16__*
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 1
  store i32 %129, i32* %132, align 4
  %133 = load %union.ccb*, %union.ccb** %8, align 8
  %134 = call i32 @xpt_free_ccb(%union.ccb* %133)
  %135 = load %union.ccb*, %union.ccb** %7, align 8
  %136 = call i32 @xpt_free_ccb(%union.ccb* %135)
  %137 = load %union.ccb*, %union.ccb** %4, align 8
  %138 = call i32 @xpt_done(%union.ccb* %137)
  br label %443

139:                                              ; preds = %104
  %140 = load %union.ccb*, %union.ccb** %8, align 8
  %141 = call i32 @xpt_free_ccb(%union.ccb* %140)
  br label %142

142:                                              ; preds = %139, %80, %72, %60
  %143 = load i32, i32* @M_CAMXPT, align 4
  %144 = load i32, i32* @M_NOWAIT, align 4
  %145 = call i64 @malloc(i32 24, i32 %143, i32 %144)
  %146 = inttoptr i64 %145 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %146, %struct.TYPE_15__** %6, align 8
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %148 = icmp eq %struct.TYPE_15__* %147, null
  br i1 %148, label %149, label %159

149:                                              ; preds = %142
  %150 = load i8*, i8** @CAM_RESRC_UNAVAIL, align 8
  %151 = ptrtoint i8* %150 to i32
  %152 = load %union.ccb*, %union.ccb** %4, align 8
  %153 = bitcast %union.ccb* %152 to %struct.TYPE_16__*
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 1
  store i32 %151, i32* %154, align 4
  %155 = load %union.ccb*, %union.ccb** %7, align 8
  %156 = call i32 @xpt_free_ccb(%union.ccb* %155)
  %157 = load %union.ccb*, %union.ccb** %4, align 8
  %158 = call i32 @xpt_done(%union.ccb* %157)
  br label %443

159:                                              ; preds = %142
  %160 = load %union.ccb*, %union.ccb** %4, align 8
  %161 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 1
  store %union.ccb* %160, %union.ccb** %162, align 8
  %163 = load %union.ccb*, %union.ccb** %7, align 8
  %164 = bitcast %union.ccb* %163 to %struct.TYPE_17__*
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 2
  store %struct.TYPE_17__* %164, %struct.TYPE_17__** %166, align 8
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 2
  %169 = load %struct.TYPE_17__*, %struct.TYPE_17__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @PI_SATAPM, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %183

175:                                              ; preds = %159
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i32 0, i32 2
  %178 = load %struct.TYPE_17__*, %struct.TYPE_17__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %181, i32 0, i32 0
  store i32 %180, i32* %182, align 8
  br label %186

183:                                              ; preds = %159
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i32 0, i32 0
  store i32 0, i32* %185, align 8
  br label %186

186:                                              ; preds = %183, %175
  %187 = call %union.ccb* (...) @xpt_alloc_ccb_nowait()
  store %union.ccb* %187, %union.ccb** %7, align 8
  %188 = load %union.ccb*, %union.ccb** %7, align 8
  %189 = icmp eq %union.ccb* %188, null
  br i1 %189, label %190, label %201

190:                                              ; preds = %186
  %191 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %192 = load i32, i32* @M_CAMXPT, align 4
  %193 = call i32 @free(%struct.TYPE_15__* %191, i32 %192)
  %194 = load i8*, i8** @CAM_RESRC_UNAVAIL, align 8
  %195 = ptrtoint i8* %194 to i32
  %196 = load %union.ccb*, %union.ccb** %4, align 8
  %197 = bitcast %union.ccb* %196 to %struct.TYPE_16__*
  %198 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %197, i32 0, i32 1
  store i32 %195, i32* %198, align 4
  %199 = load %union.ccb*, %union.ccb** %4, align 8
  %200 = call i32 @xpt_done(%union.ccb* %199)
  br label %443

201:                                              ; preds = %186
  %202 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %202, i32 0, i32 1
  %204 = load %union.ccb*, %union.ccb** %203, align 8
  %205 = bitcast %union.ccb* %204 to %struct.TYPE_16__*
  %206 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %205, i32 0, i32 7
  %207 = load %struct.cam_path*, %struct.cam_path** %206, align 8
  %208 = call %struct.mtx* @xpt_path_mtx(%struct.cam_path* %207)
  store %struct.mtx* %208, %struct.mtx** %9, align 8
  br label %343

209:                                              ; preds = %2
  %210 = load %union.ccb*, %union.ccb** %4, align 8
  store %union.ccb* %210, %union.ccb** %7, align 8
  %211 = load %union.ccb*, %union.ccb** %7, align 8
  %212 = bitcast %union.ccb* %211 to %struct.TYPE_16__*
  %213 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %212, i32 0, i32 3
  %214 = load %struct.TYPE_15__*, %struct.TYPE_15__** %213, align 8
  store %struct.TYPE_15__* %214, %struct.TYPE_15__** %6, align 8
  %215 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %216 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %215, i32 0, i32 1
  %217 = load %union.ccb*, %union.ccb** %216, align 8
  %218 = bitcast %union.ccb* %217 to %struct.TYPE_16__*
  %219 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %218, i32 0, i32 7
  %220 = load %struct.cam_path*, %struct.cam_path** %219, align 8
  %221 = call %struct.mtx* @xpt_path_mtx(%struct.cam_path* %220)
  store %struct.mtx* %221, %struct.mtx** %9, align 8
  %222 = load %struct.mtx*, %struct.mtx** %9, align 8
  %223 = call i32 @mtx_lock(%struct.mtx* %222)
  %224 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %225 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %224, i32 0, i32 2
  %226 = load %struct.TYPE_17__*, %struct.TYPE_17__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* @PI_SATAPM, align 4
  %230 = and i32 %228, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %279

232:                                              ; preds = %209
  %233 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %234 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %236, i32 0, i32 2
  %238 = load %struct.TYPE_17__*, %struct.TYPE_17__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 4
  %241 = icmp eq i32 %235, %240
  br i1 %241, label %242, label %279

242:                                              ; preds = %232
  %243 = load %union.ccb*, %union.ccb** %7, align 8
  %244 = bitcast %union.ccb* %243 to %struct.TYPE_16__*
  %245 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* @CAM_REQ_CMP, align 4
  %248 = icmp eq i32 %246, %247
  br i1 %248, label %249, label %255

249:                                              ; preds = %242
  %250 = load %union.ccb*, %union.ccb** %7, align 8
  %251 = bitcast %union.ccb* %250 to %struct.TYPE_16__*
  %252 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %251, i32 0, i32 7
  %253 = load %struct.cam_path*, %struct.cam_path** %252, align 8
  %254 = call i32 @xpt_free_path(%struct.cam_path* %253)
  br label %307

255:                                              ; preds = %242
  %256 = call i32 @bzero(%struct.ccb_trans_settings* %11, i32 64)
  %257 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %11, i32 0, i32 2
  %258 = load %union.ccb*, %union.ccb** %7, align 8
  %259 = bitcast %union.ccb* %258 to %struct.TYPE_16__*
  %260 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %259, i32 0, i32 7
  %261 = load %struct.cam_path*, %struct.cam_path** %260, align 8
  %262 = load i32, i32* @CAM_PRIORITY_NONE, align 4
  %263 = call i32 @xpt_setup_ccb(%struct.TYPE_16__* %257, %struct.cam_path* %261, i32 %262)
  %264 = load i32, i32* @XPT_SET_TRAN_SETTINGS, align 4
  %265 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %11, i32 0, i32 2
  %266 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %265, i32 0, i32 0
  store i32 %264, i32* %266, align 8
  %267 = load i32, i32* @CTS_TYPE_CURRENT_SETTINGS, align 4
  %268 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %11, i32 0, i32 1
  store i32 %267, i32* %268, align 8
  %269 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %11, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %270, i32 0, i32 1
  store i32 0, i32* %271, align 4
  %272 = load i32, i32* @CTS_SATA_VALID_PM, align 4
  %273 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %11, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %274, i32 0, i32 0
  store i32 %272, i32* %275, align 8
  %276 = bitcast %struct.ccb_trans_settings* %11 to %union.ccb*
  %277 = call i32 @xpt_action(%union.ccb* %276)
  br label %278

278:                                              ; preds = %255
  br label %279

279:                                              ; preds = %278, %232, %209
  %280 = load %union.ccb*, %union.ccb** %7, align 8
  %281 = bitcast %union.ccb* %280 to %struct.TYPE_16__*
  %282 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %281, i32 0, i32 7
  %283 = load %struct.cam_path*, %struct.cam_path** %282, align 8
  %284 = call i32 @xpt_free_path(%struct.cam_path* %283)
  %285 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %286 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %289 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %288, i32 0, i32 2
  %290 = load %struct.TYPE_17__*, %struct.TYPE_17__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 4
  %293 = load i32, i32* @PI_SATAPM, align 4
  %294 = and i32 %292, %293
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %297

296:                                              ; preds = %279
  br label %303

297:                                              ; preds = %279
  %298 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %299 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %298, i32 0, i32 2
  %300 = load %struct.TYPE_17__*, %struct.TYPE_17__** %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %300, i32 0, i32 2
  %302 = load i32, i32* %301, align 4
  br label %303

303:                                              ; preds = %297, %296
  %304 = phi i32 [ 0, %296 ], [ %302, %297 ]
  %305 = icmp eq i32 %287, %304
  br i1 %305, label %306, label %329

306:                                              ; preds = %303
  br label %307

307:                                              ; preds = %306, %249
  %308 = load %struct.mtx*, %struct.mtx** %9, align 8
  %309 = call i32 @mtx_unlock(%struct.mtx* %308)
  %310 = load %union.ccb*, %union.ccb** %7, align 8
  %311 = call i32 @xpt_free_ccb(%union.ccb* %310)
  %312 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %313 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %312, i32 0, i32 2
  %314 = load %struct.TYPE_17__*, %struct.TYPE_17__** %313, align 8
  %315 = bitcast %struct.TYPE_17__* %314 to %union.ccb*
  %316 = call i32 @xpt_free_ccb(%union.ccb* %315)
  %317 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %318 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %317, i32 0, i32 1
  %319 = load %union.ccb*, %union.ccb** %318, align 8
  store %union.ccb* %319, %union.ccb** %4, align 8
  %320 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %321 = load i32, i32* @M_CAMXPT, align 4
  %322 = call i32 @free(%struct.TYPE_15__* %320, i32 %321)
  %323 = load i32, i32* @CAM_REQ_CMP, align 4
  %324 = load %union.ccb*, %union.ccb** %4, align 8
  %325 = bitcast %union.ccb* %324 to %struct.TYPE_16__*
  %326 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %325, i32 0, i32 1
  store i32 %323, i32* %326, align 4
  %327 = load %union.ccb*, %union.ccb** %4, align 8
  %328 = call i32 @xpt_done(%union.ccb* %327)
  br label %443

329:                                              ; preds = %303
  %330 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %331 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 8
  %333 = add nsw i32 %332, 1
  %334 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %335 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %334, i32 0, i32 2
  %336 = load %struct.TYPE_17__*, %struct.TYPE_17__** %335, align 8
  %337 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %336, i32 0, i32 2
  %338 = load i32, i32* %337, align 4
  %339 = add nsw i32 %338, 1
  %340 = srem i32 %333, %339
  %341 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %342 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %341, i32 0, i32 0
  store i32 %340, i32* %342, align 8
  br label %343

343:                                              ; preds = %329, %201
  %344 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %345 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %344, i32 0, i32 1
  %346 = load %union.ccb*, %union.ccb** %345, align 8
  %347 = bitcast %union.ccb* %346 to %struct.TYPE_16__*
  %348 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %347, i32 0, i32 6
  %349 = load i32, i32* %348, align 8
  %350 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %351 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 8
  %353 = call i32 @xpt_create_path(%struct.cam_path** %5, i32* null, i32 %349, i32 %352, i32 0)
  store i32 %353, i32* %10, align 4
  %354 = load i32, i32* %10, align 4
  %355 = load i32, i32* @CAM_REQ_CMP, align 4
  %356 = icmp ne i32 %354, %355
  br i1 %356, label %357, label %388

357:                                              ; preds = %343
  %358 = load %union.ccb*, %union.ccb** %4, align 8
  %359 = bitcast %union.ccb* %358 to %struct.TYPE_16__*
  %360 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %359, i32 0, i32 0
  %361 = load i32, i32* %360, align 8
  %362 = icmp eq i32 %361, 129
  br i1 %362, label %363, label %366

363:                                              ; preds = %357
  %364 = load %struct.mtx*, %struct.mtx** %9, align 8
  %365 = call i32 @mtx_unlock(%struct.mtx* %364)
  br label %366

366:                                              ; preds = %363, %357
  %367 = load i32, i32* %10, align 4
  %368 = call i32 @printf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 %367)
  %369 = load %union.ccb*, %union.ccb** %7, align 8
  %370 = call i32 @xpt_free_ccb(%union.ccb* %369)
  %371 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %372 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %371, i32 0, i32 2
  %373 = load %struct.TYPE_17__*, %struct.TYPE_17__** %372, align 8
  %374 = bitcast %struct.TYPE_17__* %373 to %union.ccb*
  %375 = call i32 @xpt_free_ccb(%union.ccb* %374)
  %376 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %377 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %376, i32 0, i32 1
  %378 = load %union.ccb*, %union.ccb** %377, align 8
  store %union.ccb* %378, %union.ccb** %4, align 8
  %379 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %380 = load i32, i32* @M_CAMXPT, align 4
  %381 = call i32 @free(%struct.TYPE_15__* %379, i32 %380)
  %382 = load i32, i32* %10, align 4
  %383 = load %union.ccb*, %union.ccb** %4, align 8
  %384 = bitcast %union.ccb* %383 to %struct.TYPE_16__*
  %385 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %384, i32 0, i32 1
  store i32 %382, i32* %385, align 4
  %386 = load %union.ccb*, %union.ccb** %4, align 8
  %387 = call i32 @xpt_done(%union.ccb* %386)
  br label %443

388:                                              ; preds = %343
  %389 = load %union.ccb*, %union.ccb** %7, align 8
  %390 = bitcast %union.ccb* %389 to %struct.TYPE_16__*
  %391 = load %struct.cam_path*, %struct.cam_path** %5, align 8
  %392 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %393 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %392, i32 0, i32 1
  %394 = load %union.ccb*, %union.ccb** %393, align 8
  %395 = bitcast %union.ccb* %394 to %struct.TYPE_16__*
  %396 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %395, i32 0, i32 5
  %397 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %396, i32 0, i32 0
  %398 = load i32, i32* %397, align 4
  %399 = call i32 @xpt_setup_ccb(%struct.TYPE_16__* %390, %struct.cam_path* %391, i32 %398)
  %400 = load %union.ccb*, %union.ccb** %7, align 8
  %401 = bitcast %union.ccb* %400 to %struct.TYPE_16__*
  %402 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %401, i32 0, i32 0
  store i32 129, i32* %402, align 8
  %403 = load %union.ccb*, %union.ccb** %7, align 8
  %404 = bitcast %union.ccb* %403 to %struct.TYPE_16__*
  %405 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %404, i32 0, i32 2
  store void (%struct.cam_periph.0*, %union.ccb.1*)* bitcast (void (%struct.cam_periph*, %union.ccb*)* @ata_scan_bus to void (%struct.cam_periph.0*, %union.ccb.1*)*), void (%struct.cam_periph.0*, %union.ccb.1*)** %405, align 8
  %406 = load i32, i32* @CAM_UNLOCKED, align 4
  %407 = load %union.ccb*, %union.ccb** %7, align 8
  %408 = bitcast %union.ccb* %407 to %struct.TYPE_16__*
  %409 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %408, i32 0, i32 4
  %410 = load i32, i32* %409, align 8
  %411 = or i32 %410, %406
  store i32 %411, i32* %409, align 8
  %412 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %413 = load %union.ccb*, %union.ccb** %7, align 8
  %414 = bitcast %union.ccb* %413 to %struct.TYPE_16__*
  %415 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %414, i32 0, i32 3
  store %struct.TYPE_15__* %412, %struct.TYPE_15__** %415, align 8
  %416 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %417 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %416, i32 0, i32 1
  %418 = load %union.ccb*, %union.ccb** %417, align 8
  %419 = bitcast %union.ccb* %418 to %struct.TYPE_13__*
  %420 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %419, i32 0, i32 0
  %421 = load i32, i32* %420, align 8
  %422 = load %union.ccb*, %union.ccb** %7, align 8
  %423 = bitcast %union.ccb* %422 to %struct.TYPE_13__*
  %424 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %423, i32 0, i32 0
  store i32 %421, i32* %424, align 8
  %425 = load %struct.mtx*, %struct.mtx** %9, align 8
  %426 = call i32 @mtx_unlock(%struct.mtx* %425)
  %427 = load %union.ccb*, %union.ccb** %4, align 8
  %428 = bitcast %union.ccb* %427 to %struct.TYPE_16__*
  %429 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %428, i32 0, i32 0
  %430 = load i32, i32* %429, align 8
  %431 = icmp eq i32 %430, 129
  br i1 %431, label %432, label %433

432:                                              ; preds = %388
  store %struct.mtx* null, %struct.mtx** %9, align 8
  br label %433

433:                                              ; preds = %432, %388
  %434 = load %union.ccb*, %union.ccb** %7, align 8
  %435 = call i32 @xpt_action(%union.ccb* %434)
  %436 = load %struct.mtx*, %struct.mtx** %9, align 8
  %437 = icmp ne %struct.mtx* %436, null
  br i1 %437, label %438, label %441

438:                                              ; preds = %433
  %439 = load %struct.mtx*, %struct.mtx** %9, align 8
  %440 = call i32 @mtx_lock(%struct.mtx* %439)
  br label %441

441:                                              ; preds = %438, %433
  br label %443

442:                                              ; preds = %2
  br label %443

443:                                              ; preds = %26, %48, %94, %125, %149, %442, %441, %366, %307, %190
  ret void
}

declare dso_local i32 @CAM_DEBUG(%struct.cam_path*, i32, i8*) #1

declare dso_local %union.ccb* @xpt_alloc_ccb_nowait(...) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

declare dso_local i32 @xpt_path_inq(%struct.TYPE_17__*, %struct.cam_path*) #1

declare dso_local i32 @xpt_free_ccb(%union.ccb*) #1

declare dso_local i32 @timevalisset(i32*) #1

declare dso_local i32 @xpt_setup_ccb(%struct.TYPE_16__*, %struct.cam_path*, i32) #1

declare dso_local i32 @xpt_action(%union.ccb*) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_15__*, i32) #1

declare dso_local %struct.mtx* @xpt_path_mtx(%struct.cam_path*) #1

declare dso_local i32 @mtx_lock(%struct.mtx*) #1

declare dso_local i32 @xpt_free_path(%struct.cam_path*) #1

declare dso_local i32 @bzero(%struct.ccb_trans_settings*, i32) #1

declare dso_local i32 @mtx_unlock(%struct.mtx*) #1

declare dso_local i32 @xpt_create_path(%struct.cam_path**, i32*, i32, i32, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
