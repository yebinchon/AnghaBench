; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_periph.c_cam_periph_unmapmem.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_periph.c_cam_periph_unmapmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ccb = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64, i64, i32*, i32* }
%struct.cam_periph_map_info = type { i64, i32**, i64* }
%struct.TYPE_20__ = type { i32, i64 }
%struct.TYPE_12__ = type { i64, i64, i32, i32 }
%struct.TYPE_13__ = type { i64, i32* }
%struct.TYPE_14__ = type { i64, i32* }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, i32 }
%struct.TYPE_19__ = type { i64, i32* }
%struct.TYPE_11__ = type { i64, i32 }

@CAM_PERIPH_MAXMAPS = common dso_local global i32 0, align 4
@CAM_DIR_OUT = common dso_local global i64 0, align 8
@CAM_DIR_IN = common dso_local global i64 0, align 8
@CAM_DIR_MASK = common dso_local global i64 0, align 8
@curproc = common dso_local global i32 0, align 4
@pbuf_zone = common dso_local global i32 0, align 4
@M_CAMPERIPH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cam_periph_unmapmem(%union.ccb* %0, %struct.cam_periph_map_info* %1) #0 {
  %3 = alloca %union.ccb*, align 8
  %4 = alloca %struct.cam_periph_map_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %union.ccb* %0, %union.ccb** %3, align 8
  store %struct.cam_periph_map_info* %1, %struct.cam_periph_map_info** %4, align 8
  %12 = load i32, i32* @CAM_PERIPH_MAXMAPS, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i32**, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = load i32, i32* @CAM_PERIPH_MAXMAPS, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i64, i64 %17, align 16
  store i64 %17, i64* %9, align 8
  %19 = load i32, i32* @CAM_PERIPH_MAXMAPS, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i64, i64 %20, align 16
  store i64 %20, i64* %10, align 8
  %22 = load %struct.cam_periph_map_info*, %struct.cam_periph_map_info** %4, align 8
  %23 = getelementptr inbounds %struct.cam_periph_map_info, %struct.cam_periph_map_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sle i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  store i32 1, i32* %11, align 4
  br label %288

27:                                               ; preds = %2
  %28 = load %union.ccb*, %union.ccb** %3, align 8
  %29 = bitcast %union.ccb* %28 to %struct.TYPE_20__*
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  switch i32 %31, label %202 [
    i32 133, label %32
    i32 129, label %77
    i32 135, label %77
    i32 136, label %94
    i32 132, label %111
    i32 128, label %149
    i32 130, label %172
    i32 131, label %172
    i32 134, label %189
  ]

32:                                               ; preds = %27
  %33 = load %union.ccb*, %union.ccb** %3, align 8
  %34 = bitcast %union.ccb* %33 to %struct.TYPE_12__*
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %36, 0
  br i1 %37, label %38, label %63

38:                                               ; preds = %32
  %39 = load %union.ccb*, %union.ccb** %3, align 8
  %40 = bitcast %union.ccb* %39 to %struct.TYPE_12__*
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 3
  %42 = bitcast i32* %41 to i32**
  %43 = getelementptr inbounds i32**, i32*** %15, i64 0
  store i32** %42, i32*** %43, align 16
  %44 = load %union.ccb*, %union.ccb** %3, align 8
  %45 = bitcast %union.ccb* %44 to %struct.TYPE_12__*
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds i64, i64* %18, i64 0
  store i64 %47, i64* %48, align 16
  %49 = load i64, i64* @CAM_DIR_OUT, align 8
  %50 = getelementptr inbounds i64, i64* %21, i64 0
  store i64 %49, i64* %50, align 16
  %51 = load %union.ccb*, %union.ccb** %3, align 8
  %52 = bitcast %union.ccb* %51 to %struct.TYPE_12__*
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 2
  %54 = bitcast i32* %53 to i32**
  %55 = getelementptr inbounds i32**, i32*** %15, i64 1
  store i32** %54, i32*** %55, align 8
  %56 = load %union.ccb*, %union.ccb** %3, align 8
  %57 = bitcast %union.ccb* %56 to %struct.TYPE_12__*
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds i64, i64* %18, i64 1
  store i64 %59, i64* %60, align 8
  %61 = load i64, i64* @CAM_DIR_IN, align 8
  %62 = getelementptr inbounds i64, i64* %21, i64 1
  store i64 %61, i64* %62, align 8
  store i32 2, i32* %5, align 4
  br label %76

63:                                               ; preds = %32
  %64 = load %union.ccb*, %union.ccb** %3, align 8
  %65 = bitcast %union.ccb* %64 to %struct.TYPE_12__*
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 2
  %67 = bitcast i32* %66 to i32**
  %68 = getelementptr inbounds i32**, i32*** %15, i64 0
  store i32** %67, i32*** %68, align 16
  %69 = load %union.ccb*, %union.ccb** %3, align 8
  %70 = bitcast %union.ccb* %69 to %struct.TYPE_12__*
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds i64, i64* %18, i64 0
  store i64 %72, i64* %73, align 16
  %74 = load i64, i64* @CAM_DIR_IN, align 8
  %75 = getelementptr inbounds i64, i64* %21, i64 0
  store i64 %74, i64* %75, align 16
  store i32 1, i32* %5, align 4
  br label %76

76:                                               ; preds = %63, %38
  br label %205

77:                                               ; preds = %27, %27
  %78 = load %union.ccb*, %union.ccb** %3, align 8
  %79 = bitcast %union.ccb* %78 to %struct.TYPE_13__*
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 1
  %81 = getelementptr inbounds i32**, i32*** %15, i64 0
  store i32** %80, i32*** %81, align 16
  %82 = load %union.ccb*, %union.ccb** %3, align 8
  %83 = bitcast %union.ccb* %82 to %struct.TYPE_13__*
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds i64, i64* %18, i64 0
  store i64 %85, i64* %86, align 16
  %87 = load %union.ccb*, %union.ccb** %3, align 8
  %88 = bitcast %union.ccb* %87 to %struct.TYPE_20__*
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @CAM_DIR_MASK, align 8
  %92 = and i64 %90, %91
  %93 = getelementptr inbounds i64, i64* %21, i64 0
  store i64 %92, i64* %93, align 16
  store i32 1, i32* %5, align 4
  br label %205

94:                                               ; preds = %27
  %95 = load %union.ccb*, %union.ccb** %3, align 8
  %96 = bitcast %union.ccb* %95 to %struct.TYPE_14__*
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 1
  %98 = getelementptr inbounds i32**, i32*** %15, i64 0
  store i32** %97, i32*** %98, align 16
  %99 = load %union.ccb*, %union.ccb** %3, align 8
  %100 = bitcast %union.ccb* %99 to %struct.TYPE_14__*
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds i64, i64* %18, i64 0
  store i64 %102, i64* %103, align 16
  %104 = load %union.ccb*, %union.ccb** %3, align 8
  %105 = bitcast %union.ccb* %104 to %struct.TYPE_20__*
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @CAM_DIR_MASK, align 8
  %109 = and i64 %107, %108
  %110 = getelementptr inbounds i64, i64* %21, i64 0
  store i64 %109, i64* %110, align 16
  store i32 1, i32* %5, align 4
  br label %205

111:                                              ; preds = %27
  %112 = load %union.ccb*, %union.ccb** %3, align 8
  %113 = bitcast %union.ccb* %112 to %struct.TYPE_17__*
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 0
  %116 = bitcast %struct.TYPE_15__** %115 to i32**
  %117 = getelementptr inbounds i32**, i32*** %15, i64 0
  store i32** %116, i32*** %117, align 16
  %118 = getelementptr inbounds i64, i64* %18, i64 0
  store i64 8, i64* %118, align 16
  %119 = load %union.ccb*, %union.ccb** %3, align 8
  %120 = bitcast %union.ccb* %119 to %struct.TYPE_20__*
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @CAM_DIR_MASK, align 8
  %124 = and i64 %122, %123
  %125 = getelementptr inbounds i64, i64* %21, i64 0
  store i64 %124, i64* %125, align 16
  %126 = load %union.ccb*, %union.ccb** %3, align 8
  %127 = bitcast %union.ccb* %126 to %struct.TYPE_17__*
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 1
  %132 = bitcast i32* %131 to i32**
  %133 = getelementptr inbounds i32**, i32*** %15, i64 1
  store i32** %132, i32*** %133, align 8
  %134 = load %union.ccb*, %union.ccb** %3, align 8
  %135 = bitcast %union.ccb* %134 to %struct.TYPE_17__*
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = getelementptr inbounds i64, i64* %18, i64 1
  store i64 %140, i64* %141, align 8
  %142 = load %union.ccb*, %union.ccb** %3, align 8
  %143 = bitcast %union.ccb* %142 to %struct.TYPE_20__*
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @CAM_DIR_MASK, align 8
  %147 = and i64 %145, %146
  %148 = getelementptr inbounds i64, i64* %21, i64 1
  store i64 %147, i64* %148, align 8
  store i32 2, i32* %5, align 4
  br label %205

149:                                              ; preds = %27
  %150 = load %union.ccb*, %union.ccb** %3, align 8
  %151 = bitcast %union.ccb* %150 to %struct.TYPE_18__*
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 3
  %153 = getelementptr inbounds i32**, i32*** %15, i64 0
  store i32** %152, i32*** %153, align 16
  %154 = load %union.ccb*, %union.ccb** %3, align 8
  %155 = bitcast %union.ccb* %154 to %struct.TYPE_18__*
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = getelementptr inbounds i64, i64* %18, i64 0
  store i64 %157, i64* %158, align 16
  %159 = load i64, i64* @CAM_DIR_OUT, align 8
  %160 = getelementptr inbounds i64, i64* %21, i64 0
  store i64 %159, i64* %160, align 16
  %161 = load %union.ccb*, %union.ccb** %3, align 8
  %162 = bitcast %union.ccb* %161 to %struct.TYPE_18__*
  %163 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %162, i32 0, i32 2
  %164 = getelementptr inbounds i32**, i32*** %15, i64 1
  store i32** %163, i32*** %164, align 8
  %165 = load %union.ccb*, %union.ccb** %3, align 8
  %166 = bitcast %union.ccb* %165 to %struct.TYPE_18__*
  %167 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = getelementptr inbounds i64, i64* %18, i64 1
  store i64 %168, i64* %169, align 8
  %170 = load i64, i64* @CAM_DIR_IN, align 8
  %171 = getelementptr inbounds i64, i64* %21, i64 1
  store i64 %170, i64* %171, align 8
  store i32 2, i32* %5, align 4
  br label %205

172:                                              ; preds = %27, %27
  %173 = load %union.ccb*, %union.ccb** %3, align 8
  %174 = bitcast %union.ccb* %173 to %struct.TYPE_19__*
  %175 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %174, i32 0, i32 1
  %176 = getelementptr inbounds i32**, i32*** %15, i64 0
  store i32** %175, i32*** %176, align 16
  %177 = load %union.ccb*, %union.ccb** %3, align 8
  %178 = bitcast %union.ccb* %177 to %struct.TYPE_19__*
  %179 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = getelementptr inbounds i64, i64* %18, i64 0
  store i64 %180, i64* %181, align 16
  %182 = load %union.ccb*, %union.ccb** %3, align 8
  %183 = bitcast %union.ccb* %182 to %struct.TYPE_20__*
  %184 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @CAM_DIR_MASK, align 8
  %187 = and i64 %185, %186
  %188 = getelementptr inbounds i64, i64* %21, i64 0
  store i64 %187, i64* %188, align 16
  store i32 1, i32* %5, align 4
  br label %205

189:                                              ; preds = %27
  %190 = load %union.ccb*, %union.ccb** %3, align 8
  %191 = bitcast %union.ccb* %190 to %struct.TYPE_11__*
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i32 0, i32 1
  %193 = bitcast i32* %192 to i32**
  %194 = getelementptr inbounds i32**, i32*** %15, i64 0
  store i32** %193, i32*** %194, align 16
  %195 = load %union.ccb*, %union.ccb** %3, align 8
  %196 = bitcast %union.ccb* %195 to %struct.TYPE_11__*
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = getelementptr inbounds i64, i64* %18, i64 0
  store i64 %198, i64* %199, align 16
  %200 = load i64, i64* @CAM_DIR_IN, align 8
  %201 = getelementptr inbounds i64, i64* %21, i64 0
  store i64 %200, i64* %201, align 16
  store i32 1, i32* %5, align 4
  br label %205

202:                                              ; preds = %27
  %203 = load i32, i32* @curproc, align 4
  %204 = call i32 @PRELE(i32 %203)
  store i32 1, i32* %11, align 4
  br label %288

205:                                              ; preds = %189, %172, %149, %111, %94, %77, %76
  store i32 0, i32* %6, align 4
  br label %206

206:                                              ; preds = %282, %205
  %207 = load i32, i32* %6, align 4
  %208 = load i32, i32* %5, align 4
  %209 = icmp slt i32 %207, %208
  br i1 %209, label %210, label %285

210:                                              ; preds = %206
  %211 = load %struct.cam_periph_map_info*, %struct.cam_periph_map_info** %4, align 8
  %212 = getelementptr inbounds %struct.cam_periph_map_info, %struct.cam_periph_map_info* %211, i32 0, i32 2
  %213 = load i64*, i64** %212, align 8
  %214 = load i32, i32* %6, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i64, i64* %213, i64 %215
  %217 = load i64, i64* %216, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %237

219:                                              ; preds = %210
  %220 = load %struct.cam_periph_map_info*, %struct.cam_periph_map_info** %4, align 8
  %221 = getelementptr inbounds %struct.cam_periph_map_info, %struct.cam_periph_map_info* %220, i32 0, i32 2
  %222 = load i64*, i64** %221, align 8
  %223 = load i32, i32* %6, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i64, i64* %222, i64 %224
  %226 = load i64, i64* %225, align 8
  %227 = call i32 @vunmapbuf(i64 %226)
  %228 = load i32, i32* @pbuf_zone, align 4
  %229 = load %struct.cam_periph_map_info*, %struct.cam_periph_map_info** %4, align 8
  %230 = getelementptr inbounds %struct.cam_periph_map_info, %struct.cam_periph_map_info* %229, i32 0, i32 2
  %231 = load i64*, i64** %230, align 8
  %232 = load i32, i32* %6, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i64, i64* %231, i64 %233
  %235 = load i64, i64* %234, align 8
  %236 = call i32 @uma_zfree(i32 %228, i64 %235)
  br label %270

237:                                              ; preds = %210
  %238 = load i32, i32* %6, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i64, i64* %21, i64 %239
  %241 = load i64, i64* %240, align 8
  %242 = load i64, i64* @CAM_DIR_OUT, align 8
  %243 = icmp ne i64 %241, %242
  br i1 %243, label %244, label %262

244:                                              ; preds = %237
  %245 = load i32, i32* %6, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32**, i32*** %15, i64 %246
  %248 = load i32**, i32*** %247, align 8
  %249 = load i32*, i32** %248, align 8
  %250 = load %struct.cam_periph_map_info*, %struct.cam_periph_map_info** %4, align 8
  %251 = getelementptr inbounds %struct.cam_periph_map_info, %struct.cam_periph_map_info* %250, i32 0, i32 1
  %252 = load i32**, i32*** %251, align 8
  %253 = load i32, i32* %6, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32*, i32** %252, i64 %254
  %256 = load i32*, i32** %255, align 8
  %257 = load i32, i32* %6, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i64, i64* %18, i64 %258
  %260 = load i64, i64* %259, align 8
  %261 = call i32 @copyout(i32* %249, i32* %256, i64 %260)
  br label %262

262:                                              ; preds = %244, %237
  %263 = load i32, i32* %6, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32**, i32*** %15, i64 %264
  %266 = load i32**, i32*** %265, align 8
  %267 = load i32*, i32** %266, align 8
  %268 = load i32, i32* @M_CAMPERIPH, align 4
  %269 = call i32 @free(i32* %267, i32 %268)
  br label %270

270:                                              ; preds = %262, %219
  %271 = load %struct.cam_periph_map_info*, %struct.cam_periph_map_info** %4, align 8
  %272 = getelementptr inbounds %struct.cam_periph_map_info, %struct.cam_periph_map_info* %271, i32 0, i32 1
  %273 = load i32**, i32*** %272, align 8
  %274 = load i32, i32* %6, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i32*, i32** %273, i64 %275
  %277 = load i32*, i32** %276, align 8
  %278 = load i32, i32* %6, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32**, i32*** %15, i64 %279
  %281 = load i32**, i32*** %280, align 8
  store i32* %277, i32** %281, align 8
  br label %282

282:                                              ; preds = %270
  %283 = load i32, i32* %6, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %6, align 4
  br label %206

285:                                              ; preds = %206
  %286 = load i32, i32* @curproc, align 4
  %287 = call i32 @PRELE(i32 %286)
  store i32 0, i32* %11, align 4
  br label %288

288:                                              ; preds = %285, %202, %26
  %289 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %289)
  %290 = load i32, i32* %11, align 4
  switch i32 %290, label %292 [
    i32 0, label %291
    i32 1, label %291
  ]

291:                                              ; preds = %288, %288
  ret void

292:                                              ; preds = %288
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @PRELE(i32) #2

declare dso_local i32 @vunmapbuf(i64) #2

declare dso_local i32 @uma_zfree(i32, i64) #2

declare dso_local i32 @copyout(i32*, i32*, i64) #2

declare dso_local i32 @free(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
