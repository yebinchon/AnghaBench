; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_xpt.c_scsi_scan_bus.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_xpt.c_scsi_scan_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_periph = type { i32 }
%union.ccb = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, i32, i64, void (%struct.cam_periph.0*, %union.ccb.1*)*, %struct.TYPE_19__*, i32, %struct.TYPE_17__, i32, %struct.cam_path*, i32 }
%struct.cam_periph.0 = type opaque
%union.ccb.1 = type opaque
%struct.TYPE_19__ = type { i64, i64*, %union.ccb*, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32, i32, i64, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.cam_path = type { %struct.cam_ed*, %struct.cam_et*, %struct.TYPE_14__* }
%struct.cam_ed = type { i32 }
%struct.cam_et = type { %struct.TYPE_15__*, %struct.mtx, %struct.TYPE_13__* }
%struct.TYPE_15__ = type { %struct.mtx }
%struct.mtx = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_21__ = type { i32 }

@CAM_DEBUG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"scsi_scan_bus\0A\00", align 1
@CAM_RESRC_UNAVAIL = common dso_local global i8* null, align 8
@XPT_PATH_INQ = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@PIM_NOINITIATOR = common dso_local global i32 0, align 4
@PI_WIDE_32 = common dso_local global i32 0, align 4
@PI_WIDE_16 = common dso_local global i32 0, align 4
@PI_SDTR_ABLE = common dso_local global i32 0, align 4
@PIM_NOBUSRESET = common dso_local global i32 0, align 4
@CAM_PRIORITY_NONE = common dso_local global i32 0, align 4
@XPT_RESET_BUS = common dso_local global i32 0, align 4
@M_CAMXPT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"SCAN start for %p\0A\00", align 1
@PIM_SEQSCAN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [72 x i8] c"scsi_scan_bus: xpt_create_path failed with status %#x, bus scan halted\0A\00", align 1
@CAM_UNLOCKED = common dso_local global i32 0, align 4
@PIM_EXTLUNS = common dso_local global i32 0, align 4
@CAM_DEBUG_PROBE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"next lun to try at index %u is %jx\0A\00", align 1
@links = common dso_local global i32 0, align 4
@CAM_DEV_UNCONFIGURED = common dso_local global i32 0, align 4
@CAM_QUIRK_NOLUNS = common dso_local global i32 0, align 4
@CAM_SCSI2_MAXLUN = common dso_local global i32 0, align 4
@CAM_DEV_INQUIRY_DATA_VALID = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"SCAN done for %p\0A\00", align 1
@.str.5 = private unnamed_addr constant [73 x i8] c"scsi_scan_bus: xpt_create_path failed with status %#x, halting LUN scan\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_periph*, %union.ccb*)* @scsi_scan_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scsi_scan_bus(%struct.cam_periph* %0, %union.ccb* %1) #0 {
  %3 = alloca %struct.cam_periph*, align 8
  %4 = alloca %union.ccb*, align 8
  %5 = alloca %struct.mtx*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %union.ccb*, align 8
  %8 = alloca %union.ccb*, align 8
  %9 = alloca %struct.cam_path*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.cam_path*, align 8
  %17 = alloca %struct.cam_path*, align 8
  %18 = alloca %struct.TYPE_19__*, align 8
  %19 = alloca %struct.cam_et*, align 8
  %20 = alloca %struct.cam_ed*, align 8
  %21 = alloca %struct.cam_ed*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  store %struct.cam_periph* %0, %struct.cam_periph** %3, align 8
  store %union.ccb* %1, %union.ccb** %4, align 8
  %29 = load %union.ccb*, %union.ccb** %4, align 8
  %30 = bitcast %union.ccb* %29 to %struct.TYPE_20__*
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 8
  %32 = load %struct.cam_path*, %struct.cam_path** %31, align 8
  %33 = load i32, i32* @CAM_DEBUG_TRACE, align 4
  %34 = call i32 @CAM_DEBUG(%struct.cam_path* %32, i32 %33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %35 = load %union.ccb*, %union.ccb** %4, align 8
  %36 = bitcast %union.ccb* %35 to %struct.TYPE_20__*
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  switch i32 %38, label %912 [
    i32 130, label %39
    i32 128, label %39
    i32 129, label %387
  ]

39:                                               ; preds = %2, %2
  %40 = call %union.ccb* (...) @xpt_alloc_ccb_nowait()
  store %union.ccb* %40, %union.ccb** %7, align 8
  %41 = load %union.ccb*, %union.ccb** %7, align 8
  %42 = icmp eq %union.ccb* %41, null
  br i1 %42, label %43, label %51

43:                                               ; preds = %39
  %44 = load i8*, i8** @CAM_RESRC_UNAVAIL, align 8
  %45 = ptrtoint i8* %44 to i32
  %46 = load %union.ccb*, %union.ccb** %4, align 8
  %47 = bitcast %union.ccb* %46 to %struct.TYPE_20__*
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 1
  store i32 %45, i32* %48, align 4
  %49 = load %union.ccb*, %union.ccb** %4, align 8
  %50 = call i32 @xpt_done(%union.ccb* %49)
  br label %913

51:                                               ; preds = %39
  %52 = load %union.ccb*, %union.ccb** %7, align 8
  %53 = bitcast %union.ccb* %52 to %struct.TYPE_20__*
  %54 = load %union.ccb*, %union.ccb** %4, align 8
  %55 = bitcast %union.ccb* %54 to %struct.TYPE_20__*
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 8
  %57 = load %struct.cam_path*, %struct.cam_path** %56, align 8
  %58 = load %union.ccb*, %union.ccb** %4, align 8
  %59 = bitcast %union.ccb* %58 to %struct.TYPE_20__*
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 6
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @xpt_setup_ccb(%struct.TYPE_20__* %53, %struct.cam_path* %57, i32 %62)
  %64 = load i32, i32* @XPT_PATH_INQ, align 4
  %65 = load %union.ccb*, %union.ccb** %7, align 8
  %66 = bitcast %union.ccb* %65 to %struct.TYPE_20__*
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 8
  %68 = load %union.ccb*, %union.ccb** %7, align 8
  %69 = call i32 @xpt_action(%union.ccb* %68)
  %70 = load %union.ccb*, %union.ccb** %7, align 8
  %71 = bitcast %union.ccb* %70 to %struct.TYPE_20__*
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @CAM_REQ_CMP, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %88

76:                                               ; preds = %51
  %77 = load %union.ccb*, %union.ccb** %7, align 8
  %78 = bitcast %union.ccb* %77 to %struct.TYPE_20__*
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %union.ccb*, %union.ccb** %4, align 8
  %82 = bitcast %union.ccb* %81 to %struct.TYPE_20__*
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 1
  store i32 %80, i32* %83, align 4
  %84 = load %union.ccb*, %union.ccb** %7, align 8
  %85 = call i32 @xpt_free_ccb(%union.ccb* %84)
  %86 = load %union.ccb*, %union.ccb** %4, align 8
  %87 = call i32 @xpt_done(%union.ccb* %86)
  br label %913

88:                                               ; preds = %51
  %89 = load %union.ccb*, %union.ccb** %7, align 8
  %90 = bitcast %union.ccb* %89 to %struct.TYPE_16__*
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @PIM_NOINITIATOR, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %88
  %97 = load i32, i32* @CAM_REQ_CMP, align 4
  %98 = load %union.ccb*, %union.ccb** %4, align 8
  %99 = bitcast %union.ccb* %98 to %struct.TYPE_20__*
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %99, i32 0, i32 1
  store i32 %97, i32* %100, align 4
  %101 = load %union.ccb*, %union.ccb** %7, align 8
  %102 = call i32 @xpt_free_ccb(%union.ccb* %101)
  %103 = load %union.ccb*, %union.ccb** %4, align 8
  %104 = call i32 @xpt_done(%union.ccb* %103)
  br label %913

105:                                              ; preds = %88
  %106 = load %union.ccb*, %union.ccb** %7, align 8
  %107 = bitcast %union.ccb* %106 to %struct.TYPE_16__*
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @PI_WIDE_32, align 4
  %111 = load i32, i32* @PI_WIDE_16, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* @PI_SDTR_ABLE, align 4
  %114 = or i32 %112, %113
  %115 = and i32 %109, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %176

117:                                              ; preds = %105
  %118 = load %union.ccb*, %union.ccb** %7, align 8
  %119 = bitcast %union.ccb* %118 to %struct.TYPE_16__*
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @PIM_NOBUSRESET, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %176, label %125

125:                                              ; preds = %117
  %126 = load %union.ccb*, %union.ccb** %4, align 8
  %127 = bitcast %union.ccb* %126 to %struct.TYPE_20__*
  %128 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %127, i32 0, i32 8
  %129 = load %struct.cam_path*, %struct.cam_path** %128, align 8
  %130 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %129, i32 0, i32 2
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 0
  %133 = call i32 @timevalisset(i32* %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %176, label %135

135:                                              ; preds = %125
  %136 = call %union.ccb* (...) @xpt_alloc_ccb_nowait()
  store %union.ccb* %136, %union.ccb** %8, align 8
  %137 = icmp ne %union.ccb* %136, null
  br i1 %137, label %138, label %176

138:                                              ; preds = %135
  %139 = load %union.ccb*, %union.ccb** %8, align 8
  %140 = bitcast %union.ccb* %139 to %struct.TYPE_20__*
  %141 = load %union.ccb*, %union.ccb** %4, align 8
  %142 = bitcast %union.ccb* %141 to %struct.TYPE_20__*
  %143 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %142, i32 0, i32 8
  %144 = load %struct.cam_path*, %struct.cam_path** %143, align 8
  %145 = load i32, i32* @CAM_PRIORITY_NONE, align 4
  %146 = call i32 @xpt_setup_ccb(%struct.TYPE_20__* %140, %struct.cam_path* %144, i32 %145)
  %147 = load i32, i32* @XPT_RESET_BUS, align 4
  %148 = load %union.ccb*, %union.ccb** %8, align 8
  %149 = bitcast %union.ccb* %148 to %struct.TYPE_20__*
  %150 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %149, i32 0, i32 0
  store i32 %147, i32* %150, align 8
  %151 = load %union.ccb*, %union.ccb** %8, align 8
  %152 = call i32 @xpt_action(%union.ccb* %151)
  %153 = load %union.ccb*, %union.ccb** %8, align 8
  %154 = bitcast %union.ccb* %153 to %struct.TYPE_20__*
  %155 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @CAM_REQ_CMP, align 4
  %158 = icmp ne i32 %156, %157
  br i1 %158, label %159, label %173

159:                                              ; preds = %138
  %160 = load %union.ccb*, %union.ccb** %8, align 8
  %161 = bitcast %union.ccb* %160 to %struct.TYPE_20__*
  %162 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load %union.ccb*, %union.ccb** %4, align 8
  %165 = bitcast %union.ccb* %164 to %struct.TYPE_20__*
  %166 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %165, i32 0, i32 1
  store i32 %163, i32* %166, align 4
  %167 = load %union.ccb*, %union.ccb** %8, align 8
  %168 = call i32 @xpt_free_ccb(%union.ccb* %167)
  %169 = load %union.ccb*, %union.ccb** %7, align 8
  %170 = call i32 @xpt_free_ccb(%union.ccb* %169)
  %171 = load %union.ccb*, %union.ccb** %4, align 8
  %172 = call i32 @xpt_done(%union.ccb* %171)
  br label %913

173:                                              ; preds = %138
  %174 = load %union.ccb*, %union.ccb** %8, align 8
  %175 = call i32 @xpt_free_ccb(%union.ccb* %174)
  br label %176

176:                                              ; preds = %173, %135, %125, %117, %105
  %177 = load %union.ccb*, %union.ccb** %7, align 8
  %178 = bitcast %union.ccb* %177 to %struct.TYPE_16__*
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = sext i32 %180 to i64
  %182 = mul i64 %181, 8
  %183 = add i64 32, %182
  %184 = trunc i64 %183 to i32
  %185 = load i32, i32* @M_CAMXPT, align 4
  %186 = load i32, i32* @M_ZERO, align 4
  %187 = load i32, i32* @M_NOWAIT, align 4
  %188 = or i32 %186, %187
  %189 = call i64 @malloc(i32 %184, i32 %185, i32 %188)
  %190 = inttoptr i64 %189 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %190, %struct.TYPE_19__** %6, align 8
  %191 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %192 = icmp eq %struct.TYPE_19__* %191, null
  br i1 %192, label %193, label %203

193:                                              ; preds = %176
  %194 = load i8*, i8** @CAM_RESRC_UNAVAIL, align 8
  %195 = ptrtoint i8* %194 to i32
  %196 = load %union.ccb*, %union.ccb** %4, align 8
  %197 = bitcast %union.ccb* %196 to %struct.TYPE_20__*
  %198 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %197, i32 0, i32 1
  store i32 %195, i32* %198, align 4
  %199 = load %union.ccb*, %union.ccb** %7, align 8
  %200 = call i32 @xpt_free_ccb(%union.ccb* %199)
  %201 = load %union.ccb*, %union.ccb** %4, align 8
  %202 = call i32 @xpt_done(%union.ccb* %201)
  br label %913

203:                                              ; preds = %176
  %204 = load %union.ccb*, %union.ccb** %4, align 8
  %205 = bitcast %union.ccb* %204 to %struct.TYPE_20__*
  %206 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %205, i32 0, i32 8
  %207 = load %struct.cam_path*, %struct.cam_path** %206, align 8
  %208 = load i32, i32* @CAM_DEBUG_TRACE, align 4
  %209 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %210 = bitcast %struct.TYPE_19__* %209 to i8*
  %211 = call i32 @CAM_DEBUG(%struct.cam_path* %207, i32 %208, i8* %210)
  %212 = load %union.ccb*, %union.ccb** %4, align 8
  %213 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %213, i32 0, i32 2
  store %union.ccb* %212, %union.ccb** %214, align 8
  %215 = load %union.ccb*, %union.ccb** %7, align 8
  %216 = bitcast %union.ccb* %215 to %struct.TYPE_16__*
  %217 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %217, i32 0, i32 3
  store %struct.TYPE_16__* %216, %struct.TYPE_16__** %218, align 8
  %219 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %220 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %219, i32 0, i32 3
  %221 = load %struct.TYPE_16__*, %struct.TYPE_16__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 8
  %224 = sext i32 %223 to i64
  store i64 %224, i64* %12, align 8
  store i64 0, i64* %11, align 8
  %225 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %226 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %225, i32 0, i32 3
  %227 = load %struct.TYPE_16__*, %struct.TYPE_16__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %227, i32 0, i32 3
  %229 = load i64, i64* %228, align 8
  store i64 %229, i64* %13, align 8
  %230 = load %union.ccb*, %union.ccb** %4, align 8
  %231 = bitcast %union.ccb* %230 to %struct.TYPE_20__*
  %232 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = icmp eq i32 %233, 128
  br i1 %234, label %235, label %242

235:                                              ; preds = %203
  %236 = load %union.ccb*, %union.ccb** %4, align 8
  %237 = bitcast %union.ccb* %236 to %struct.TYPE_20__*
  %238 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %237, i32 0, i32 2
  %239 = load i64, i64* %238, align 8
  store i64 %239, i64* %11, align 8
  store i64 %239, i64* %12, align 8
  %240 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %241 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %240, i32 0, i32 0
  store i64 0, i64* %241, align 8
  br label %280

242:                                              ; preds = %203
  %243 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %244 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %243, i32 0, i32 3
  %245 = load %struct.TYPE_16__*, %struct.TYPE_16__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = load i32, i32* @PIM_SEQSCAN, align 4
  %249 = and i32 %247, %248
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %254

251:                                              ; preds = %242
  store i64 0, i64* %12, align 8
  %252 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %253 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %252, i32 0, i32 0
  store i64 0, i64* %253, align 8
  br label %279

254:                                              ; preds = %242
  %255 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %256 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %255, i32 0, i32 3
  %257 = load %struct.TYPE_16__*, %struct.TYPE_16__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 8
  %260 = add nsw i32 %259, 1
  %261 = sext i32 %260 to i64
  %262 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %263 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %262, i32 0, i32 0
  store i64 %261, i64* %263, align 8
  %264 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %265 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %264, i32 0, i32 3
  %266 = load %struct.TYPE_16__*, %struct.TYPE_16__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %266, i32 0, i32 3
  %268 = load i64, i64* %267, align 8
  %269 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %270 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %269, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  %272 = icmp ult i64 %268, %271
  br i1 %272, label %273, label %278

273:                                              ; preds = %254
  %274 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %275 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = add i64 %276, -1
  store i64 %277, i64* %275, align 8
  br label %278

278:                                              ; preds = %273, %254
  br label %279

279:                                              ; preds = %278, %251
  br label %280

280:                                              ; preds = %279, %235
  %281 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %282 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %281, i32 0, i32 2
  %283 = load %union.ccb*, %union.ccb** %282, align 8
  %284 = bitcast %union.ccb* %283 to %struct.TYPE_20__*
  %285 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %284, i32 0, i32 8
  %286 = load %struct.cam_path*, %struct.cam_path** %285, align 8
  %287 = call %struct.mtx* @xpt_path_mtx(%struct.cam_path* %286)
  store %struct.mtx* %287, %struct.mtx** %5, align 8
  %288 = load %struct.mtx*, %struct.mtx** %5, align 8
  %289 = call i32 @mtx_unlock(%struct.mtx* %288)
  %290 = load i64, i64* %11, align 8
  store i64 %290, i64* %10, align 8
  br label %291

291:                                              ; preds = %381, %280
  %292 = load i64, i64* %10, align 8
  %293 = load i64, i64* %12, align 8
  %294 = icmp ule i64 %292, %293
  br i1 %294, label %295, label %384

295:                                              ; preds = %291
  %296 = load i64, i64* %10, align 8
  %297 = load i64, i64* %13, align 8
  %298 = icmp eq i64 %296, %297
  br i1 %298, label %299, label %300

299:                                              ; preds = %295
  br label %381

300:                                              ; preds = %295
  %301 = load %union.ccb*, %union.ccb** %4, align 8
  %302 = bitcast %union.ccb* %301 to %struct.TYPE_20__*
  %303 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %302, i32 0, i32 7
  %304 = load i32, i32* %303, align 8
  %305 = load i64, i64* %10, align 8
  %306 = call i32 @xpt_create_path(%struct.cam_path** %9, i32* null, i32 %304, i64 %305, i32 0)
  store i32 %306, i32* %14, align 4
  %307 = load i32, i32* %14, align 4
  %308 = load i32, i32* @CAM_REQ_CMP, align 4
  %309 = icmp ne i32 %307, %308
  br i1 %309, label %310, label %324

310:                                              ; preds = %300
  %311 = load i32, i32* %14, align 4
  %312 = call i32 @printf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.2, i64 0, i64 0), i32 %311)
  %313 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %314 = load i32, i32* @M_CAMXPT, align 4
  %315 = call i32 @free(%struct.TYPE_19__* %313, i32 %314)
  %316 = load i32, i32* %14, align 4
  %317 = load %union.ccb*, %union.ccb** %4, align 8
  %318 = bitcast %union.ccb* %317 to %struct.TYPE_20__*
  %319 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %318, i32 0, i32 1
  store i32 %316, i32* %319, align 4
  %320 = load %union.ccb*, %union.ccb** %7, align 8
  %321 = call i32 @xpt_free_ccb(%union.ccb* %320)
  %322 = load %union.ccb*, %union.ccb** %4, align 8
  %323 = call i32 @xpt_done(%union.ccb* %322)
  br label %384

324:                                              ; preds = %300
  %325 = call %union.ccb* (...) @xpt_alloc_ccb_nowait()
  store %union.ccb* %325, %union.ccb** %7, align 8
  %326 = load %union.ccb*, %union.ccb** %7, align 8
  %327 = icmp eq %union.ccb* %326, null
  br i1 %327, label %328, label %346

328:                                              ; preds = %324
  %329 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %330 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %329, i32 0, i32 3
  %331 = load %struct.TYPE_16__*, %struct.TYPE_16__** %330, align 8
  %332 = bitcast %struct.TYPE_16__* %331 to %union.ccb*
  %333 = call i32 @xpt_free_ccb(%union.ccb* %332)
  %334 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %335 = load i32, i32* @M_CAMXPT, align 4
  %336 = call i32 @free(%struct.TYPE_19__* %334, i32 %335)
  %337 = load %struct.cam_path*, %struct.cam_path** %9, align 8
  %338 = call i32 @xpt_free_path(%struct.cam_path* %337)
  %339 = load i8*, i8** @CAM_RESRC_UNAVAIL, align 8
  %340 = ptrtoint i8* %339 to i32
  %341 = load %union.ccb*, %union.ccb** %4, align 8
  %342 = bitcast %union.ccb* %341 to %struct.TYPE_20__*
  %343 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %342, i32 0, i32 1
  store i32 %340, i32* %343, align 4
  %344 = load %union.ccb*, %union.ccb** %4, align 8
  %345 = call i32 @xpt_done(%union.ccb* %344)
  br label %384

346:                                              ; preds = %324
  %347 = load %union.ccb*, %union.ccb** %7, align 8
  %348 = bitcast %union.ccb* %347 to %struct.TYPE_20__*
  %349 = load %struct.cam_path*, %struct.cam_path** %9, align 8
  %350 = load %union.ccb*, %union.ccb** %4, align 8
  %351 = bitcast %union.ccb* %350 to %struct.TYPE_20__*
  %352 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %351, i32 0, i32 6
  %353 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 4
  %355 = call i32 @xpt_setup_ccb(%struct.TYPE_20__* %348, %struct.cam_path* %349, i32 %354)
  %356 = load %union.ccb*, %union.ccb** %7, align 8
  %357 = bitcast %union.ccb* %356 to %struct.TYPE_20__*
  %358 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %357, i32 0, i32 0
  store i32 129, i32* %358, align 8
  %359 = load %union.ccb*, %union.ccb** %7, align 8
  %360 = bitcast %union.ccb* %359 to %struct.TYPE_20__*
  %361 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %360, i32 0, i32 3
  store void (%struct.cam_periph.0*, %union.ccb.1*)* bitcast (void (%struct.cam_periph*, %union.ccb*)* @scsi_scan_bus to void (%struct.cam_periph.0*, %union.ccb.1*)*), void (%struct.cam_periph.0*, %union.ccb.1*)** %361, align 8
  %362 = load i32, i32* @CAM_UNLOCKED, align 4
  %363 = load %union.ccb*, %union.ccb** %7, align 8
  %364 = bitcast %union.ccb* %363 to %struct.TYPE_20__*
  %365 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %364, i32 0, i32 5
  %366 = load i32, i32* %365, align 8
  %367 = or i32 %366, %362
  store i32 %367, i32* %365, align 8
  %368 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %369 = load %union.ccb*, %union.ccb** %7, align 8
  %370 = bitcast %union.ccb* %369 to %struct.TYPE_20__*
  %371 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %370, i32 0, i32 4
  store %struct.TYPE_19__* %368, %struct.TYPE_19__** %371, align 8
  %372 = load %union.ccb*, %union.ccb** %4, align 8
  %373 = bitcast %union.ccb* %372 to %struct.TYPE_18__*
  %374 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %373, i32 0, i32 0
  %375 = load i32, i32* %374, align 8
  %376 = load %union.ccb*, %union.ccb** %7, align 8
  %377 = bitcast %union.ccb* %376 to %struct.TYPE_18__*
  %378 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %377, i32 0, i32 0
  store i32 %375, i32* %378, align 8
  %379 = load %union.ccb*, %union.ccb** %7, align 8
  %380 = call i32 @xpt_action(%union.ccb* %379)
  br label %381

381:                                              ; preds = %346, %299
  %382 = load i64, i64* %10, align 8
  %383 = add i64 %382, 1
  store i64 %383, i64* %10, align 8
  br label %291

384:                                              ; preds = %328, %310, %291
  %385 = load %struct.mtx*, %struct.mtx** %5, align 8
  %386 = call i32 @mtx_lock(%struct.mtx* %385)
  br label %913

387:                                              ; preds = %2
  %388 = load %union.ccb*, %union.ccb** %4, align 8
  %389 = bitcast %union.ccb* %388 to %struct.TYPE_20__*
  %390 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %389, i32 0, i32 8
  %391 = load %struct.cam_path*, %struct.cam_path** %390, align 8
  store %struct.cam_path* %391, %struct.cam_path** %17, align 8
  %392 = load %union.ccb*, %union.ccb** %4, align 8
  %393 = call i32 @cam_ccb_status(%union.ccb* %392)
  store i32 %393, i32* %15, align 4
  %394 = load %union.ccb*, %union.ccb** %4, align 8
  %395 = bitcast %union.ccb* %394 to %struct.TYPE_20__*
  %396 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %395, i32 0, i32 4
  %397 = load %struct.TYPE_19__*, %struct.TYPE_19__** %396, align 8
  store %struct.TYPE_19__* %397, %struct.TYPE_19__** %18, align 8
  %398 = load %union.ccb*, %union.ccb** %4, align 8
  %399 = bitcast %union.ccb* %398 to %struct.TYPE_20__*
  %400 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %399, i32 0, i32 7
  %401 = load i32, i32* %400, align 8
  store i32 %401, i32* %23, align 4
  %402 = load %union.ccb*, %union.ccb** %4, align 8
  %403 = bitcast %union.ccb* %402 to %struct.TYPE_20__*
  %404 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %403, i32 0, i32 2
  %405 = load i64, i64* %404, align 8
  store i64 %405, i64* %24, align 8
  %406 = load %union.ccb*, %union.ccb** %4, align 8
  %407 = bitcast %union.ccb* %406 to %struct.TYPE_20__*
  %408 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %407, i32 0, i32 9
  %409 = load i32, i32* %408, align 8
  store i32 %409, i32* %25, align 4
  %410 = load %union.ccb*, %union.ccb** %4, align 8
  %411 = bitcast %union.ccb* %410 to %struct.TYPE_20__*
  %412 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %411, i32 0, i32 8
  %413 = load %struct.cam_path*, %struct.cam_path** %412, align 8
  %414 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %413, i32 0, i32 1
  %415 = load %struct.cam_et*, %struct.cam_et** %414, align 8
  store %struct.cam_et* %415, %struct.cam_et** %19, align 8
  store i32 1, i32* %22, align 4
  %416 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %417 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %416, i32 0, i32 2
  %418 = load %union.ccb*, %union.ccb** %417, align 8
  %419 = bitcast %union.ccb* %418 to %struct.TYPE_20__*
  %420 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %419, i32 0, i32 8
  %421 = load %struct.cam_path*, %struct.cam_path** %420, align 8
  %422 = call %struct.mtx* @xpt_path_mtx(%struct.cam_path* %421)
  store %struct.mtx* %422, %struct.mtx** %5, align 8
  %423 = load %struct.mtx*, %struct.mtx** %5, align 8
  %424 = call i32 @mtx_lock(%struct.mtx* %423)
  %425 = load %struct.cam_et*, %struct.cam_et** %19, align 8
  %426 = getelementptr inbounds %struct.cam_et, %struct.cam_et* %425, i32 0, i32 1
  %427 = call i32 @mtx_lock(%struct.mtx* %426)
  %428 = load %struct.cam_et*, %struct.cam_et** %19, align 8
  %429 = getelementptr inbounds %struct.cam_et, %struct.cam_et* %428, i32 0, i32 2
  %430 = load %struct.TYPE_13__*, %struct.TYPE_13__** %429, align 8
  %431 = icmp ne %struct.TYPE_13__* %430, null
  br i1 %431, label %432, label %567

432:                                              ; preds = %387
  %433 = load %struct.cam_et*, %struct.cam_et** %19, align 8
  %434 = getelementptr inbounds %struct.cam_et, %struct.cam_et* %433, i32 0, i32 2
  %435 = load %struct.TYPE_13__*, %struct.TYPE_13__** %434, align 8
  %436 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %435, i32 0, i32 0
  %437 = load i32, i32* %436, align 4
  %438 = call i32 @scsi_4btoul(i32 %437)
  %439 = sdiv i32 %438, 8
  %440 = sext i32 %439 to i64
  store i64 %440, i64* %27, align 8
  %441 = load %struct.cam_et*, %struct.cam_et** %19, align 8
  %442 = getelementptr inbounds %struct.cam_et, %struct.cam_et* %441, i32 0, i32 2
  %443 = load %struct.TYPE_13__*, %struct.TYPE_13__** %442, align 8
  %444 = load i32, i32* %26, align 4
  %445 = call i32 @CAM_GET_LUN(%struct.TYPE_13__* %443, i64 0, i32 %444)
  %446 = load i32, i32* %26, align 4
  %447 = icmp eq i32 %446, 0
  br i1 %447, label %448, label %464

448:                                              ; preds = %432
  %449 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %450 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %449, i32 0, i32 1
  %451 = load i64*, i64** %450, align 8
  %452 = load i64, i64* %24, align 8
  %453 = getelementptr inbounds i64, i64* %451, i64 %452
  %454 = load i64, i64* %453, align 8
  %455 = icmp eq i64 %454, 0
  br i1 %455, label %456, label %464

456:                                              ; preds = %448
  %457 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %458 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %457, i32 0, i32 1
  %459 = load i64*, i64** %458, align 8
  %460 = load i64, i64* %24, align 8
  %461 = getelementptr inbounds i64, i64* %459, i64 %460
  %462 = load i64, i64* %461, align 8
  %463 = add i64 %462, 1
  store i64 %463, i64* %461, align 8
  br label %464

464:                                              ; preds = %456, %448, %432
  br label %465

465:                                              ; preds = %519, %464
  %466 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %467 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %466, i32 0, i32 1
  %468 = load i64*, i64** %467, align 8
  %469 = load i64, i64* %24, align 8
  %470 = getelementptr inbounds i64, i64* %468, i64 %469
  %471 = load i64, i64* %470, align 8
  %472 = load i64, i64* %27, align 8
  %473 = icmp ult i64 %471, %472
  br i1 %473, label %474, label %527

474:                                              ; preds = %465
  %475 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %476 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %475, i32 0, i32 3
  %477 = load %struct.TYPE_16__*, %struct.TYPE_16__** %476, align 8
  %478 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %477, i32 0, i32 0
  %479 = load i32, i32* %478, align 8
  %480 = load i32, i32* @PIM_EXTLUNS, align 4
  %481 = and i32 %479, %480
  %482 = icmp ne i32 %481, 0
  br i1 %482, label %483, label %495

483:                                              ; preds = %474
  %484 = load %struct.cam_et*, %struct.cam_et** %19, align 8
  %485 = getelementptr inbounds %struct.cam_et, %struct.cam_et* %484, i32 0, i32 2
  %486 = load %struct.TYPE_13__*, %struct.TYPE_13__** %485, align 8
  %487 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %488 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %487, i32 0, i32 1
  %489 = load i64*, i64** %488, align 8
  %490 = load i64, i64* %24, align 8
  %491 = getelementptr inbounds i64, i64* %489, i64 %490
  %492 = load i64, i64* %491, align 8
  %493 = load i32, i32* %25, align 4
  %494 = call i32 @CAM_GET_LUN(%struct.TYPE_13__* %486, i64 %492, i32 %493)
  br label %527

495:                                              ; preds = %474
  %496 = load %struct.cam_et*, %struct.cam_et** %19, align 8
  %497 = getelementptr inbounds %struct.cam_et, %struct.cam_et* %496, i32 0, i32 2
  %498 = load %struct.TYPE_13__*, %struct.TYPE_13__** %497, align 8
  %499 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %500 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %499, i32 0, i32 1
  %501 = load i64*, i64** %500, align 8
  %502 = load i64, i64* %24, align 8
  %503 = getelementptr inbounds i64, i64* %501, i64 %502
  %504 = load i64, i64* %503, align 8
  %505 = call i32 @CAM_CAN_GET_SIMPLE_LUN(%struct.TYPE_13__* %498, i64 %504)
  %506 = icmp ne i32 %505, 0
  br i1 %506, label %507, label %519

507:                                              ; preds = %495
  %508 = load %struct.cam_et*, %struct.cam_et** %19, align 8
  %509 = getelementptr inbounds %struct.cam_et, %struct.cam_et* %508, i32 0, i32 2
  %510 = load %struct.TYPE_13__*, %struct.TYPE_13__** %509, align 8
  %511 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %512 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %511, i32 0, i32 1
  %513 = load i64*, i64** %512, align 8
  %514 = load i64, i64* %24, align 8
  %515 = getelementptr inbounds i64, i64* %513, i64 %514
  %516 = load i64, i64* %515, align 8
  %517 = load i32, i32* %25, align 4
  %518 = call i32 @CAM_GET_SIMPLE_LUN(%struct.TYPE_13__* %510, i64 %516, i32 %517)
  br label %527

519:                                              ; preds = %495
  %520 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %521 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %520, i32 0, i32 1
  %522 = load i64*, i64** %521, align 8
  %523 = load i64, i64* %24, align 8
  %524 = getelementptr inbounds i64, i64* %522, i64 %523
  %525 = load i64, i64* %524, align 8
  %526 = add i64 %525, 1
  store i64 %526, i64* %524, align 8
  br label %465

527:                                              ; preds = %507, %483, %465
  %528 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %529 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %528, i32 0, i32 1
  %530 = load i64*, i64** %529, align 8
  %531 = load i64, i64* %24, align 8
  %532 = getelementptr inbounds i64, i64* %530, i64 %531
  %533 = load i64, i64* %532, align 8
  %534 = load i64, i64* %27, align 8
  %535 = icmp ult i64 %533, %534
  br i1 %535, label %536, label %562

536:                                              ; preds = %527
  %537 = load %struct.cam_et*, %struct.cam_et** %19, align 8
  %538 = getelementptr inbounds %struct.cam_et, %struct.cam_et* %537, i32 0, i32 1
  %539 = call i32 @mtx_unlock(%struct.mtx* %538)
  store i32 0, i32* %22, align 4
  %540 = load %union.ccb*, %union.ccb** %4, align 8
  %541 = bitcast %union.ccb* %540 to %struct.TYPE_20__*
  %542 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %541, i32 0, i32 8
  %543 = load %struct.cam_path*, %struct.cam_path** %542, align 8
  %544 = load i32, i32* @CAM_DEBUG_PROBE, align 4
  %545 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %546 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %545, i32 0, i32 1
  %547 = load i64*, i64** %546, align 8
  %548 = load i64, i64* %24, align 8
  %549 = getelementptr inbounds i64, i64* %547, i64 %548
  %550 = load i64, i64* %549, align 8
  %551 = load i32, i32* %25, align 4
  %552 = sext i32 %551 to i64
  %553 = inttoptr i64 %552 to i8*
  %554 = call i32 @CAM_DEBUG(%struct.cam_path* %543, i32 %544, i8* %553)
  %555 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %556 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %555, i32 0, i32 1
  %557 = load i64*, i64** %556, align 8
  %558 = load i64, i64* %24, align 8
  %559 = getelementptr inbounds i64, i64* %557, i64 %558
  %560 = load i64, i64* %559, align 8
  %561 = add i64 %560, 1
  store i64 %561, i64* %559, align 8
  br label %566

562:                                              ; preds = %527
  %563 = load %struct.cam_et*, %struct.cam_et** %19, align 8
  %564 = getelementptr inbounds %struct.cam_et, %struct.cam_et* %563, i32 0, i32 1
  %565 = call i32 @mtx_unlock(%struct.mtx* %564)
  br label %566

566:                                              ; preds = %562, %536
  br label %670

567:                                              ; preds = %387
  %568 = load %struct.cam_et*, %struct.cam_et** %19, align 8
  %569 = getelementptr inbounds %struct.cam_et, %struct.cam_et* %568, i32 0, i32 1
  %570 = call i32 @mtx_unlock(%struct.mtx* %569)
  %571 = load %union.ccb*, %union.ccb** %4, align 8
  %572 = bitcast %union.ccb* %571 to %struct.TYPE_20__*
  %573 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %572, i32 0, i32 8
  %574 = load %struct.cam_path*, %struct.cam_path** %573, align 8
  %575 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %574, i32 0, i32 0
  %576 = load %struct.cam_ed*, %struct.cam_ed** %575, align 8
  store %struct.cam_ed* %576, %struct.cam_ed** %20, align 8
  %577 = load %struct.cam_et*, %struct.cam_et** %19, align 8
  %578 = getelementptr inbounds %struct.cam_et, %struct.cam_et* %577, i32 0, i32 0
  %579 = load %struct.TYPE_15__*, %struct.TYPE_15__** %578, align 8
  %580 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %579, i32 0, i32 0
  %581 = call i32 @mtx_lock(%struct.mtx* %580)
  %582 = load %struct.cam_ed*, %struct.cam_ed** %20, align 8
  store %struct.cam_ed* %582, %struct.cam_ed** %21, align 8
  br label %583

583:                                              ; preds = %596, %567
  %584 = load %struct.cam_ed*, %struct.cam_ed** %21, align 8
  %585 = load i32, i32* @links, align 4
  %586 = call %struct.cam_ed* @TAILQ_NEXT(%struct.cam_ed* %584, i32 %585)
  store %struct.cam_ed* %586, %struct.cam_ed** %21, align 8
  %587 = icmp ne %struct.cam_ed* %586, null
  br i1 %587, label %588, label %597

588:                                              ; preds = %583
  %589 = load %struct.cam_ed*, %struct.cam_ed** %21, align 8
  %590 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %589, i32 0, i32 0
  %591 = load i32, i32* %590, align 4
  %592 = load i32, i32* @CAM_DEV_UNCONFIGURED, align 4
  %593 = and i32 %591, %592
  %594 = icmp eq i32 %593, 0
  br i1 %594, label %595, label %596

595:                                              ; preds = %588
  br label %597

596:                                              ; preds = %588
  br label %583

597:                                              ; preds = %595, %583
  %598 = load %struct.cam_et*, %struct.cam_et** %19, align 8
  %599 = getelementptr inbounds %struct.cam_et, %struct.cam_et* %598, i32 0, i32 0
  %600 = load %struct.TYPE_15__*, %struct.TYPE_15__** %599, align 8
  %601 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %600, i32 0, i32 0
  %602 = call i32 @mtx_unlock(%struct.mtx* %601)
  %603 = load %struct.cam_ed*, %struct.cam_ed** %21, align 8
  %604 = icmp ne %struct.cam_ed* %603, null
  br i1 %604, label %605, label %606

605:                                              ; preds = %597
  store i32 0, i32* %22, align 4
  br label %654

606:                                              ; preds = %597
  %607 = load %struct.cam_ed*, %struct.cam_ed** %20, align 8
  %608 = call %struct.TYPE_21__* @SCSI_QUIRK(%struct.cam_ed* %607)
  %609 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %608, i32 0, i32 0
  %610 = load i32, i32* %609, align 4
  %611 = load i32, i32* @CAM_QUIRK_NOLUNS, align 4
  %612 = and i32 %610, %611
  %613 = icmp ne i32 %612, 0
  br i1 %613, label %614, label %615

614:                                              ; preds = %606
  store i32 1, i32* %22, align 4
  br label %653

615:                                              ; preds = %606
  %616 = load %struct.cam_ed*, %struct.cam_ed** %20, align 8
  %617 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %616, i32 0, i32 0
  %618 = load i32, i32* %617, align 4
  %619 = load i32, i32* @CAM_DEV_UNCONFIGURED, align 4
  %620 = and i32 %618, %619
  %621 = icmp eq i32 %620, 0
  br i1 %621, label %622, label %633

622:                                              ; preds = %615
  %623 = load i32, i32* %25, align 4
  %624 = load i32, i32* @CAM_SCSI2_MAXLUN, align 4
  %625 = sub nsw i32 %624, 1
  %626 = icmp slt i32 %623, %625
  br i1 %626, label %631, label %627

627:                                              ; preds = %622
  %628 = load %struct.cam_ed*, %struct.cam_ed** %20, align 8
  %629 = call i32 @CAN_SRCH_HI_DENSE(%struct.cam_ed* %628)
  %630 = icmp ne i32 %629, 0
  br i1 %630, label %631, label %632

631:                                              ; preds = %627, %622
  store i32 0, i32* %22, align 4
  br label %632

632:                                              ; preds = %631, %627
  br label %652

633:                                              ; preds = %615
  %634 = load %struct.cam_ed*, %struct.cam_ed** %20, align 8
  %635 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %634, i32 0, i32 0
  %636 = load i32, i32* %635, align 4
  %637 = load i32, i32* @CAM_DEV_INQUIRY_DATA_VALID, align 4
  %638 = and i32 %636, %637
  %639 = icmp ne i32 %638, 0
  br i1 %639, label %640, label %651

640:                                              ; preds = %633
  %641 = load i32, i32* %25, align 4
  %642 = load i32, i32* @CAM_SCSI2_MAXLUN, align 4
  %643 = sub nsw i32 %642, 1
  %644 = icmp slt i32 %641, %643
  br i1 %644, label %649, label %645

645:                                              ; preds = %640
  %646 = load %struct.cam_ed*, %struct.cam_ed** %20, align 8
  %647 = call i32 @CAN_SRCH_HI_SPARSE(%struct.cam_ed* %646)
  %648 = icmp ne i32 %647, 0
  br i1 %648, label %649, label %650

649:                                              ; preds = %645, %640
  store i32 0, i32* %22, align 4
  br label %650

650:                                              ; preds = %649, %645
  br label %651

651:                                              ; preds = %650, %633
  br label %652

652:                                              ; preds = %651, %632
  br label %653

653:                                              ; preds = %652, %614
  br label %654

654:                                              ; preds = %653, %605
  %655 = load i32, i32* %22, align 4
  %656 = icmp eq i32 %655, 0
  br i1 %656, label %657, label %669

657:                                              ; preds = %654
  %658 = load i32, i32* %25, align 4
  %659 = add nsw i32 %658, 1
  store i32 %659, i32* %25, align 4
  %660 = load i32, i32* %25, align 4
  %661 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %662 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %661, i32 0, i32 3
  %663 = load %struct.TYPE_16__*, %struct.TYPE_16__** %662, align 8
  %664 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %663, i32 0, i32 4
  %665 = load i32, i32* %664, align 8
  %666 = icmp sgt i32 %660, %665
  br i1 %666, label %667, label %668

667:                                              ; preds = %657
  store i32 1, i32* %22, align 4
  br label %668

668:                                              ; preds = %667, %657
  br label %669

669:                                              ; preds = %668, %654
  br label %670

670:                                              ; preds = %669, %566
  %671 = load i32, i32* %22, align 4
  %672 = icmp ne i32 %671, 0
  br i1 %672, label %673, label %859

673:                                              ; preds = %670
  %674 = load %struct.cam_path*, %struct.cam_path** %17, align 8
  %675 = call i32 @xpt_free_path(%struct.cam_path* %674)
  br label %676

676:                                              ; preds = %869, %673
  store i32 0, i32* %28, align 4
  %677 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %678 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %677, i32 0, i32 2
  %679 = load %union.ccb*, %union.ccb** %678, align 8
  %680 = bitcast %union.ccb* %679 to %struct.TYPE_20__*
  %681 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %680, i32 0, i32 0
  %682 = load i32, i32* %681, align 8
  %683 = icmp eq i32 %682, 128
  br i1 %683, label %684, label %685

684:                                              ; preds = %676
  store i32 1, i32* %28, align 4
  br label %739

685:                                              ; preds = %676
  %686 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %687 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %686, i32 0, i32 3
  %688 = load %struct.TYPE_16__*, %struct.TYPE_16__** %687, align 8
  %689 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %688, i32 0, i32 0
  %690 = load i32, i32* %689, align 8
  %691 = load i32, i32* @PIM_SEQSCAN, align 4
  %692 = and i32 %690, %691
  %693 = icmp ne i32 %692, 0
  br i1 %693, label %694, label %727

694:                                              ; preds = %685
  %695 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %696 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %695, i32 0, i32 0
  %697 = load i64, i64* %696, align 8
  %698 = add i64 %697, 1
  store i64 %698, i64* %696, align 8
  %699 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %700 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %699, i32 0, i32 0
  %701 = load i64, i64* %700, align 8
  %702 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %703 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %702, i32 0, i32 3
  %704 = load %struct.TYPE_16__*, %struct.TYPE_16__** %703, align 8
  %705 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %704, i32 0, i32 3
  %706 = load i64, i64* %705, align 8
  %707 = icmp eq i64 %701, %706
  br i1 %707, label %708, label %713

708:                                              ; preds = %694
  %709 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %710 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %709, i32 0, i32 0
  %711 = load i64, i64* %710, align 8
  %712 = add i64 %711, 1
  store i64 %712, i64* %710, align 8
  br label %713

713:                                              ; preds = %708, %694
  %714 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %715 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %714, i32 0, i32 0
  %716 = load i64, i64* %715, align 8
  %717 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %718 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %717, i32 0, i32 3
  %719 = load %struct.TYPE_16__*, %struct.TYPE_16__** %718, align 8
  %720 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %719, i32 0, i32 2
  %721 = load i32, i32* %720, align 8
  %722 = add nsw i32 %721, 1
  %723 = sext i32 %722 to i64
  %724 = icmp uge i64 %716, %723
  br i1 %724, label %725, label %726

725:                                              ; preds = %713
  store i32 1, i32* %28, align 4
  br label %726

726:                                              ; preds = %725, %713
  br label %738

727:                                              ; preds = %685
  %728 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %729 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %728, i32 0, i32 0
  %730 = load i64, i64* %729, align 8
  %731 = add i64 %730, -1
  store i64 %731, i64* %729, align 8
  %732 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %733 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %732, i32 0, i32 0
  %734 = load i64, i64* %733, align 8
  %735 = icmp eq i64 %734, 0
  br i1 %735, label %736, label %737

736:                                              ; preds = %727
  store i32 1, i32* %28, align 4
  br label %737

737:                                              ; preds = %736, %727
  br label %738

738:                                              ; preds = %737, %726
  br label %739

739:                                              ; preds = %738, %684
  %740 = load i32, i32* %28, align 4
  %741 = icmp ne i32 %740, 0
  br i1 %741, label %742, label %772

742:                                              ; preds = %739
  %743 = load %struct.mtx*, %struct.mtx** %5, align 8
  %744 = call i32 @mtx_unlock(%struct.mtx* %743)
  %745 = load %union.ccb*, %union.ccb** %4, align 8
  %746 = call i32 @xpt_free_ccb(%union.ccb* %745)
  %747 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %748 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %747, i32 0, i32 3
  %749 = load %struct.TYPE_16__*, %struct.TYPE_16__** %748, align 8
  %750 = bitcast %struct.TYPE_16__* %749 to %union.ccb*
  %751 = call i32 @xpt_free_ccb(%union.ccb* %750)
  %752 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %753 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %752, i32 0, i32 2
  %754 = load %union.ccb*, %union.ccb** %753, align 8
  store %union.ccb* %754, %union.ccb** %4, align 8
  %755 = load %union.ccb*, %union.ccb** %4, align 8
  %756 = bitcast %union.ccb* %755 to %struct.TYPE_20__*
  %757 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %756, i32 0, i32 8
  %758 = load %struct.cam_path*, %struct.cam_path** %757, align 8
  %759 = load i32, i32* @CAM_DEBUG_TRACE, align 4
  %760 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %761 = bitcast %struct.TYPE_19__* %760 to i8*
  %762 = call i32 @CAM_DEBUG(%struct.cam_path* %758, i32 %759, i8* %761)
  %763 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %764 = load i32, i32* @M_CAMXPT, align 4
  %765 = call i32 @free(%struct.TYPE_19__* %763, i32 %764)
  %766 = load i32, i32* @CAM_REQ_CMP, align 4
  %767 = load %union.ccb*, %union.ccb** %4, align 8
  %768 = bitcast %union.ccb* %767 to %struct.TYPE_20__*
  %769 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %768, i32 0, i32 1
  store i32 %766, i32* %769, align 4
  %770 = load %union.ccb*, %union.ccb** %4, align 8
  %771 = call i32 @xpt_done(%union.ccb* %770)
  br label %913

772:                                              ; preds = %739
  %773 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %774 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %773, i32 0, i32 3
  %775 = load %struct.TYPE_16__*, %struct.TYPE_16__** %774, align 8
  %776 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %775, i32 0, i32 0
  %777 = load i32, i32* %776, align 8
  %778 = load i32, i32* @PIM_SEQSCAN, align 4
  %779 = and i32 %777, %778
  %780 = icmp eq i32 %779, 0
  br i1 %780, label %781, label %786

781:                                              ; preds = %772
  %782 = load %struct.mtx*, %struct.mtx** %5, align 8
  %783 = call i32 @mtx_unlock(%struct.mtx* %782)
  %784 = load %union.ccb*, %union.ccb** %4, align 8
  %785 = call i32 @xpt_free_ccb(%union.ccb* %784)
  br label %913

786:                                              ; preds = %772
  %787 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %788 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %787, i32 0, i32 2
  %789 = load %union.ccb*, %union.ccb** %788, align 8
  %790 = bitcast %union.ccb* %789 to %struct.TYPE_20__*
  %791 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %790, i32 0, i32 7
  %792 = load i32, i32* %791, align 8
  %793 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %794 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %793, i32 0, i32 0
  %795 = load i64, i64* %794, align 8
  %796 = call i32 @xpt_create_path(%struct.cam_path** %16, i32* null, i32 %792, i64 %795, i32 0)
  store i32 %796, i32* %15, align 4
  %797 = load i32, i32* %15, align 4
  %798 = load i32, i32* @CAM_REQ_CMP, align 4
  %799 = icmp ne i32 %797, %798
  br i1 %799, label %800, label %824

800:                                              ; preds = %786
  %801 = load %struct.mtx*, %struct.mtx** %5, align 8
  %802 = call i32 @mtx_unlock(%struct.mtx* %801)
  %803 = load i32, i32* %15, align 4
  %804 = call i32 @printf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.2, i64 0, i64 0), i32 %803)
  %805 = load %union.ccb*, %union.ccb** %4, align 8
  %806 = call i32 @xpt_free_ccb(%union.ccb* %805)
  %807 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %808 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %807, i32 0, i32 3
  %809 = load %struct.TYPE_16__*, %struct.TYPE_16__** %808, align 8
  %810 = bitcast %struct.TYPE_16__* %809 to %union.ccb*
  %811 = call i32 @xpt_free_ccb(%union.ccb* %810)
  %812 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %813 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %812, i32 0, i32 2
  %814 = load %union.ccb*, %union.ccb** %813, align 8
  store %union.ccb* %814, %union.ccb** %4, align 8
  %815 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %816 = load i32, i32* @M_CAMXPT, align 4
  %817 = call i32 @free(%struct.TYPE_19__* %815, i32 %816)
  %818 = load i32, i32* %15, align 4
  %819 = load %union.ccb*, %union.ccb** %4, align 8
  %820 = bitcast %union.ccb* %819 to %struct.TYPE_20__*
  %821 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %820, i32 0, i32 1
  store i32 %818, i32* %821, align 4
  %822 = load %union.ccb*, %union.ccb** %4, align 8
  %823 = call i32 @xpt_done(%union.ccb* %822)
  br label %913

824:                                              ; preds = %786
  %825 = load %union.ccb*, %union.ccb** %4, align 8
  %826 = bitcast %union.ccb* %825 to %struct.TYPE_20__*
  %827 = load %struct.cam_path*, %struct.cam_path** %16, align 8
  %828 = load %union.ccb*, %union.ccb** %4, align 8
  %829 = bitcast %union.ccb* %828 to %struct.TYPE_20__*
  %830 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %829, i32 0, i32 6
  %831 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %830, i32 0, i32 0
  %832 = load i32, i32* %831, align 4
  %833 = call i32 @xpt_setup_ccb(%struct.TYPE_20__* %826, %struct.cam_path* %827, i32 %832)
  %834 = load %union.ccb*, %union.ccb** %4, align 8
  %835 = bitcast %union.ccb* %834 to %struct.TYPE_20__*
  %836 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %835, i32 0, i32 0
  store i32 129, i32* %836, align 8
  %837 = load %union.ccb*, %union.ccb** %4, align 8
  %838 = bitcast %union.ccb* %837 to %struct.TYPE_20__*
  %839 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %838, i32 0, i32 3
  store void (%struct.cam_periph.0*, %union.ccb.1*)* bitcast (void (%struct.cam_periph*, %union.ccb*)* @scsi_scan_bus to void (%struct.cam_periph.0*, %union.ccb.1*)*), void (%struct.cam_periph.0*, %union.ccb.1*)** %839, align 8
  %840 = load i32, i32* @CAM_UNLOCKED, align 4
  %841 = load %union.ccb*, %union.ccb** %4, align 8
  %842 = bitcast %union.ccb* %841 to %struct.TYPE_20__*
  %843 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %842, i32 0, i32 5
  %844 = load i32, i32* %843, align 8
  %845 = or i32 %844, %840
  store i32 %845, i32* %843, align 8
  %846 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %847 = load %union.ccb*, %union.ccb** %4, align 8
  %848 = bitcast %union.ccb* %847 to %struct.TYPE_20__*
  %849 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %848, i32 0, i32 4
  store %struct.TYPE_19__* %846, %struct.TYPE_19__** %849, align 8
  %850 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %851 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %850, i32 0, i32 2
  %852 = load %union.ccb*, %union.ccb** %851, align 8
  %853 = bitcast %union.ccb* %852 to %struct.TYPE_18__*
  %854 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %853, i32 0, i32 0
  %855 = load i32, i32* %854, align 8
  %856 = load %union.ccb*, %union.ccb** %4, align 8
  %857 = bitcast %union.ccb* %856 to %struct.TYPE_18__*
  %858 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %857, i32 0, i32 0
  store i32 %855, i32* %858, align 8
  br label %907

859:                                              ; preds = %670
  %860 = load i32, i32* %23, align 4
  %861 = load i64, i64* %24, align 8
  %862 = load i32, i32* %25, align 4
  %863 = call i32 @xpt_create_path(%struct.cam_path** %16, i32* null, i32 %860, i64 %861, i32 %862)
  store i32 %863, i32* %15, align 4
  %864 = load %struct.cam_path*, %struct.cam_path** %17, align 8
  %865 = call i32 @xpt_free_path(%struct.cam_path* %864)
  %866 = load i32, i32* %15, align 4
  %867 = load i32, i32* @CAM_REQ_CMP, align 4
  %868 = icmp ne i32 %866, %867
  br i1 %868, label %869, label %872

869:                                              ; preds = %859
  %870 = load i32, i32* %15, align 4
  %871 = call i32 @printf(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.5, i64 0, i64 0), i32 %870)
  br label %676

872:                                              ; preds = %859
  %873 = load %union.ccb*, %union.ccb** %4, align 8
  %874 = bitcast %union.ccb* %873 to %struct.TYPE_20__*
  %875 = load %struct.cam_path*, %struct.cam_path** %16, align 8
  %876 = load %union.ccb*, %union.ccb** %4, align 8
  %877 = bitcast %union.ccb* %876 to %struct.TYPE_20__*
  %878 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %877, i32 0, i32 6
  %879 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %878, i32 0, i32 0
  %880 = load i32, i32* %879, align 4
  %881 = call i32 @xpt_setup_ccb(%struct.TYPE_20__* %874, %struct.cam_path* %875, i32 %880)
  %882 = load %union.ccb*, %union.ccb** %4, align 8
  %883 = bitcast %union.ccb* %882 to %struct.TYPE_20__*
  %884 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %883, i32 0, i32 0
  store i32 129, i32* %884, align 8
  %885 = load %union.ccb*, %union.ccb** %4, align 8
  %886 = bitcast %union.ccb* %885 to %struct.TYPE_20__*
  %887 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %886, i32 0, i32 3
  store void (%struct.cam_periph.0*, %union.ccb.1*)* bitcast (void (%struct.cam_periph*, %union.ccb*)* @scsi_scan_bus to void (%struct.cam_periph.0*, %union.ccb.1*)*), void (%struct.cam_periph.0*, %union.ccb.1*)** %887, align 8
  %888 = load i32, i32* @CAM_UNLOCKED, align 4
  %889 = load %union.ccb*, %union.ccb** %4, align 8
  %890 = bitcast %union.ccb* %889 to %struct.TYPE_20__*
  %891 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %890, i32 0, i32 5
  %892 = load i32, i32* %891, align 8
  %893 = or i32 %892, %888
  store i32 %893, i32* %891, align 8
  %894 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %895 = load %union.ccb*, %union.ccb** %4, align 8
  %896 = bitcast %union.ccb* %895 to %struct.TYPE_20__*
  %897 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %896, i32 0, i32 4
  store %struct.TYPE_19__* %894, %struct.TYPE_19__** %897, align 8
  %898 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %899 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %898, i32 0, i32 2
  %900 = load %union.ccb*, %union.ccb** %899, align 8
  %901 = bitcast %union.ccb* %900 to %struct.TYPE_18__*
  %902 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %901, i32 0, i32 0
  %903 = load i32, i32* %902, align 8
  %904 = load %union.ccb*, %union.ccb** %4, align 8
  %905 = bitcast %union.ccb* %904 to %struct.TYPE_18__*
  %906 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %905, i32 0, i32 0
  store i32 %903, i32* %906, align 8
  br label %907

907:                                              ; preds = %872, %824
  %908 = load %struct.mtx*, %struct.mtx** %5, align 8
  %909 = call i32 @mtx_unlock(%struct.mtx* %908)
  %910 = load %union.ccb*, %union.ccb** %4, align 8
  %911 = call i32 @xpt_action(%union.ccb* %910)
  br label %913

912:                                              ; preds = %2
  br label %913

913:                                              ; preds = %43, %76, %96, %159, %193, %912, %907, %800, %781, %742, %384
  ret void
}

declare dso_local i32 @CAM_DEBUG(%struct.cam_path*, i32, i8*) #1

declare dso_local %union.ccb* @xpt_alloc_ccb_nowait(...) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

declare dso_local i32 @xpt_setup_ccb(%struct.TYPE_20__*, %struct.cam_path*, i32) #1

declare dso_local i32 @xpt_action(%union.ccb*) #1

declare dso_local i32 @xpt_free_ccb(%union.ccb*) #1

declare dso_local i32 @timevalisset(i32*) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local %struct.mtx* @xpt_path_mtx(%struct.cam_path*) #1

declare dso_local i32 @mtx_unlock(%struct.mtx*) #1

declare dso_local i32 @xpt_create_path(%struct.cam_path**, i32*, i32, i64, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @free(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @xpt_free_path(%struct.cam_path*) #1

declare dso_local i32 @mtx_lock(%struct.mtx*) #1

declare dso_local i32 @cam_ccb_status(%union.ccb*) #1

declare dso_local i32 @scsi_4btoul(i32) #1

declare dso_local i32 @CAM_GET_LUN(%struct.TYPE_13__*, i64, i32) #1

declare dso_local i32 @CAM_CAN_GET_SIMPLE_LUN(%struct.TYPE_13__*, i64) #1

declare dso_local i32 @CAM_GET_SIMPLE_LUN(%struct.TYPE_13__*, i64, i32) #1

declare dso_local %struct.cam_ed* @TAILQ_NEXT(%struct.cam_ed*, i32) #1

declare dso_local %struct.TYPE_21__* @SCSI_QUIRK(%struct.cam_ed*) #1

declare dso_local i32 @CAN_SRCH_HI_DENSE(%struct.cam_ed*) #1

declare dso_local i32 @CAN_SRCH_HI_SPARSE(%struct.cam_ed*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
