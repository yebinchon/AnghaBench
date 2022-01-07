; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xptplistperiphfunc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xptplistperiphfunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.periph_driver = type { i32, i32 }
%struct.cam_periph = type { i32, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__*, %struct.TYPE_12__*, %struct.TYPE_11__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.ccb_dev_match = type { i32, i32, %struct.TYPE_17__*, i8*, %struct.TYPE_18__, i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i32, i32*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.cam_periph*, %struct.periph_driver** }

@DM_RET_ACTION_MASK = common dso_local global i32 0, align 4
@DM_RET_ERROR = common dso_local global i32 0, align 4
@CAM_DEV_MATCH_ERROR = common dso_local global i8* null, align 8
@DM_RET_COPY = common dso_local global i32 0, align 4
@CAM_DEV_POS_PDRV = common dso_local global i32 0, align 4
@CAM_DEV_POS_PDPTR = common dso_local global i32 0, align 4
@CAM_DEV_POS_PERIPH = common dso_local global i32 0, align 4
@periph_drivers = common dso_local global %struct.periph_driver** null, align 8
@CAM_PERIPH_GENERATION = common dso_local global i64 0, align 8
@CAM_DEV_MATCH_MORE = common dso_local global i8* null, align 8
@DEV_MATCH_PERIPH = common dso_local global i32 0, align 4
@CAM_TARGET_WILDCARD = common dso_local global i32 0, align 4
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_periph*, i8*)* @xptplistperiphfunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xptplistperiphfunc(%struct.cam_periph* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cam_periph*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ccb_dev_match*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.periph_driver**, align 8
  store %struct.cam_periph* %0, %struct.cam_periph** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.ccb_dev_match*
  store %struct.ccb_dev_match* %13, %struct.ccb_dev_match** %6, align 8
  %14 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %6, align 8
  %15 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %6, align 8
  %18 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %21 = call i32 @xptperiphmatch(i32 %16, i32 %19, %struct.cam_periph* %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @DM_RET_ACTION_MASK, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @DM_RET_ERROR, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  %28 = load i8*, i8** @CAM_DEV_MATCH_ERROR, align 8
  %29 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %6, align 8
  %30 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %29, i32 0, i32 3
  store i8* %28, i8** %30, align 8
  store i32 0, i32* %3, align 4
  br label %245

31:                                               ; preds = %2
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @DM_RET_COPY, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %244

36:                                               ; preds = %31
  %37 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %6, align 8
  %38 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %6, align 8
  %42 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = mul i64 %44, 4
  %46 = sub i64 %40, %45
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = icmp ult i64 %49, 4
  br i1 %50, label %51, label %115

51:                                               ; preds = %36
  store %struct.periph_driver** null, %struct.periph_driver*** %11, align 8
  %52 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %6, align 8
  %53 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %52, i32 0, i32 4
  %54 = call i32 @bzero(%struct.TYPE_18__* %53, i32 32)
  %55 = load i32, i32* @CAM_DEV_POS_PDRV, align 4
  %56 = load i32, i32* @CAM_DEV_POS_PDPTR, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @CAM_DEV_POS_PERIPH, align 4
  %59 = or i32 %57, %58
  %60 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %6, align 8
  %61 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %60, i32 0, i32 4
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 8
  %63 = load %struct.periph_driver**, %struct.periph_driver*** @periph_drivers, align 8
  store %struct.periph_driver** %63, %struct.periph_driver*** %11, align 8
  br label %64

64:                                               ; preds = %80, %51
  %65 = load %struct.periph_driver**, %struct.periph_driver*** %11, align 8
  %66 = load %struct.periph_driver*, %struct.periph_driver** %65, align 8
  %67 = icmp ne %struct.periph_driver* %66, null
  br i1 %67, label %68, label %83

68:                                               ; preds = %64
  %69 = load %struct.periph_driver**, %struct.periph_driver*** %11, align 8
  %70 = load %struct.periph_driver*, %struct.periph_driver** %69, align 8
  %71 = getelementptr inbounds %struct.periph_driver, %struct.periph_driver* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %74 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i64 @strcmp(i32 %72, i32 %75)
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %68
  br label %83

79:                                               ; preds = %68
  br label %80

80:                                               ; preds = %79
  %81 = load %struct.periph_driver**, %struct.periph_driver*** %11, align 8
  %82 = getelementptr inbounds %struct.periph_driver*, %struct.periph_driver** %81, i32 1
  store %struct.periph_driver** %82, %struct.periph_driver*** %11, align 8
  br label %64

83:                                               ; preds = %78, %64
  %84 = load %struct.periph_driver**, %struct.periph_driver*** %11, align 8
  %85 = load %struct.periph_driver*, %struct.periph_driver** %84, align 8
  %86 = icmp eq %struct.periph_driver* %85, null
  br i1 %86, label %87, label %91

87:                                               ; preds = %83
  %88 = load i8*, i8** @CAM_DEV_MATCH_ERROR, align 8
  %89 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %6, align 8
  %90 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %89, i32 0, i32 3
  store i8* %88, i8** %90, align 8
  store i32 0, i32* %3, align 4
  br label %245

91:                                               ; preds = %83
  %92 = load %struct.periph_driver**, %struct.periph_driver*** %11, align 8
  %93 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %6, align 8
  %94 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %93, i32 0, i32 4
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 1
  store %struct.periph_driver** %92, %struct.periph_driver*** %96, align 8
  %97 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %98 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %6, align 8
  %99 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %98, i32 0, i32 4
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  store %struct.cam_periph* %97, %struct.cam_periph** %101, align 8
  %102 = load %struct.periph_driver**, %struct.periph_driver*** %11, align 8
  %103 = load %struct.periph_driver*, %struct.periph_driver** %102, align 8
  %104 = getelementptr inbounds %struct.periph_driver, %struct.periph_driver* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %6, align 8
  %107 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %106, i32 0, i32 4
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = load i64, i64* @CAM_PERIPH_GENERATION, align 8
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  store i32 %105, i32* %111, align 4
  %112 = load i8*, i8** @CAM_DEV_MATCH_MORE, align 8
  %113 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %6, align 8
  %114 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %113, i32 0, i32 3
  store i8* %112, i8** %114, align 8
  store i32 0, i32* %3, align 4
  br label %245

115:                                              ; preds = %36
  %116 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %6, align 8
  %117 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %9, align 4
  %119 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %6, align 8
  %120 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 4
  %123 = load i32, i32* @DEV_MATCH_PERIPH, align 4
  %124 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %6, align 8
  %125 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %124, i32 0, i32 2
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %125, align 8
  %127 = load i32, i32* %9, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 1
  store i32 %123, i32* %130, align 4
  %131 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %132 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %131, i32 0, i32 2
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 2
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %6, align 8
  %139 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %138, i32 0, i32 2
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %139, align 8
  %141 = load i32, i32* %9, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 4
  store i32 %137, i32* %146, align 4
  %147 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %148 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %147, i32 0, i32 2
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %150, align 8
  %152 = icmp ne %struct.TYPE_12__* %151, null
  br i1 %152, label %153, label %170

153:                                              ; preds = %115
  %154 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %155 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %154, i32 0, i32 2
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 1
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %6, align 8
  %162 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %161, i32 0, i32 2
  %163 = load %struct.TYPE_17__*, %struct.TYPE_17__** %162, align 8
  %164 = load i32, i32* %9, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 3
  store i32 %160, i32* %169, align 4
  br label %181

170:                                              ; preds = %115
  %171 = load i32, i32* @CAM_TARGET_WILDCARD, align 4
  %172 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %6, align 8
  %173 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %172, i32 0, i32 2
  %174 = load %struct.TYPE_17__*, %struct.TYPE_17__** %173, align 8
  %175 = load i32, i32* %9, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 3
  store i32 %171, i32* %180, align 4
  br label %181

181:                                              ; preds = %170, %153
  %182 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %183 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %182, i32 0, i32 2
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 0
  %186 = load %struct.TYPE_13__*, %struct.TYPE_13__** %185, align 8
  %187 = icmp ne %struct.TYPE_13__* %186, null
  br i1 %187, label %188, label %205

188:                                              ; preds = %181
  %189 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %190 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %189, i32 0, i32 2
  %191 = load %struct.TYPE_14__*, %struct.TYPE_14__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %191, i32 0, i32 0
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %6, align 8
  %197 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %196, i32 0, i32 2
  %198 = load %struct.TYPE_17__*, %struct.TYPE_17__** %197, align 8
  %199 = load i32, i32* %9, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %198, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %203, i32 0, i32 2
  store i32 %195, i32* %204, align 4
  br label %216

205:                                              ; preds = %181
  %206 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %207 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %6, align 8
  %208 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %207, i32 0, i32 2
  %209 = load %struct.TYPE_17__*, %struct.TYPE_17__** %208, align 8
  %210 = load i32, i32* %9, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %209, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %214, i32 0, i32 2
  store i32 %206, i32* %215, align 4
  br label %216

216:                                              ; preds = %205, %188
  %217 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %218 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %6, align 8
  %221 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %220, i32 0, i32 2
  %222 = load %struct.TYPE_17__*, %struct.TYPE_17__** %221, align 8
  %223 = load i32, i32* %9, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %222, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %227, i32 0, i32 1
  store i32 %219, i32* %228, align 4
  store i64 4, i64* %10, align 8
  %229 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %6, align 8
  %230 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %229, i32 0, i32 2
  %231 = load %struct.TYPE_17__*, %struct.TYPE_17__** %230, align 8
  %232 = load i32, i32* %9, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %231, i64 %233
  %235 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %240 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = load i64, i64* %10, align 8
  %243 = call i32 @strlcpy(i32 %238, i32 %241, i64 %242)
  br label %244

244:                                              ; preds = %216, %31
  store i32 1, i32* %3, align 4
  br label %245

245:                                              ; preds = %244, %91, %87, %27
  %246 = load i32, i32* %3, align 4
  ret i32 %246
}

declare dso_local i32 @xptperiphmatch(i32, i32, %struct.cam_periph*) #1

declare dso_local i32 @bzero(%struct.TYPE_18__*, i32) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
