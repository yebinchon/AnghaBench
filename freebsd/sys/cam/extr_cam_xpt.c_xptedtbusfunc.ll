; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xptedtbusfunc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xptedtbusfunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64 }
%struct.cam_eb = type { i64, i32, %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.ccb_dev_match = type { i32, i32, %struct.TYPE_14__, i32, %struct.TYPE_10__*, i32, i32 }
%struct.TYPE_14__ = type { i32, i64*, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32*, %struct.cam_eb* }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.cam_et = type { i32 }

@CAM_DEV_POS_BUS = common dso_local global i32 0, align 4
@CAM_DEV_POS_TARGET = common dso_local global i32 0, align 4
@DM_RET_DESCEND = common dso_local global i32 0, align 4
@DM_RET_ACTION_MASK = common dso_local global i32 0, align 4
@DM_RET_ERROR = common dso_local global i32 0, align 4
@CAM_DEV_MATCH_ERROR = common dso_local global i32 0, align 4
@DM_RET_COPY = common dso_local global i32 0, align 4
@CAM_DEV_POS_EDT = common dso_local global i32 0, align 4
@xsoftc = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@CAM_BUS_GENERATION = common dso_local global i64 0, align 8
@CAM_DEV_MATCH_MORE = common dso_local global i32 0, align 4
@DEV_MATCH_BUS = common dso_local global i32 0, align 4
@DM_RET_STOP = common dso_local global i32 0, align 4
@CAM_TARGET_GENERATION = common dso_local global i64 0, align 8
@CAM_DEV_MATCH_LIST_CHANGED = common dso_local global i32 0, align 4
@xptedttargetfunc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_eb*, i8*)* @xptedtbusfunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xptedtbusfunc(%struct.cam_eb* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cam_eb*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ccb_dev_match*, align 8
  %7 = alloca %struct.cam_et*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cam_eb* %0, %struct.cam_eb** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.ccb_dev_match*
  store %struct.ccb_dev_match* %12, %struct.ccb_dev_match** %6, align 8
  %13 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %6, align 8
  %14 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @CAM_DEV_POS_BUS, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %45

20:                                               ; preds = %2
  %21 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %6, align 8
  %22 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 1
  %25 = load %struct.cam_eb*, %struct.cam_eb** %24, align 8
  %26 = load %struct.cam_eb*, %struct.cam_eb** %4, align 8
  %27 = icmp eq %struct.cam_eb* %25, %26
  br i1 %27, label %28, label %45

28:                                               ; preds = %20
  %29 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %6, align 8
  %30 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @CAM_DEV_POS_TARGET, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %28
  %37 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %6, align 8
  %38 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i32, i32* @DM_RET_DESCEND, align 4
  store i32 %44, i32* %8, align 4
  br label %54

45:                                               ; preds = %36, %28, %20, %2
  %46 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %6, align 8
  %47 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %46, i32 0, i32 6
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %6, align 8
  %50 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.cam_eb*, %struct.cam_eb** %4, align 8
  %53 = call i32 @xptbusmatch(i32 %48, i32 %51, %struct.cam_eb* %52)
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %45, %43
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @DM_RET_ACTION_MASK, align 4
  %57 = and i32 %55, %56
  %58 = load i32, i32* @DM_RET_ERROR, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load i32, i32* @CAM_DEV_MATCH_ERROR, align 4
  %62 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %6, align 8
  %63 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 8
  store i32 0, i32* %3, align 4
  br label %262

64:                                               ; preds = %54
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @DM_RET_COPY, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %181

69:                                               ; preds = %64
  %70 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %6, align 8
  %71 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %6, align 8
  %75 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = mul i64 %77, 4
  %79 = sub i64 %73, %78
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = icmp ult i64 %82, 4
  br i1 %83, label %84, label %109

84:                                               ; preds = %69
  %85 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %6, align 8
  %86 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %85, i32 0, i32 2
  %87 = call i32 @bzero(%struct.TYPE_14__* %86, i32 32)
  %88 = load i32, i32* @CAM_DEV_POS_EDT, align 4
  %89 = load i32, i32* @CAM_DEV_POS_BUS, align 4
  %90 = or i32 %88, %89
  %91 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %6, align 8
  %92 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 0
  store i32 %90, i32* %93, align 8
  %94 = load %struct.cam_eb*, %struct.cam_eb** %4, align 8
  %95 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %6, align 8
  %96 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 1
  store %struct.cam_eb* %94, %struct.cam_eb** %98, align 8
  %99 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @xsoftc, i32 0, i32 0), align 8
  %100 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %6, align 8
  %101 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 1
  %103 = load i64*, i64** %102, align 8
  %104 = load i64, i64* @CAM_BUS_GENERATION, align 8
  %105 = getelementptr inbounds i64, i64* %103, i64 %104
  store i64 %99, i64* %105, align 8
  %106 = load i32, i32* @CAM_DEV_MATCH_MORE, align 4
  %107 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %6, align 8
  %108 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %107, i32 0, i32 3
  store i32 %106, i32* %108, align 8
  store i32 0, i32* %3, align 4
  br label %262

109:                                              ; preds = %69
  %110 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %6, align 8
  %111 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %10, align 4
  %113 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %6, align 8
  %114 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %114, align 4
  %117 = load i32, i32* @DEV_MATCH_BUS, align 4
  %118 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %6, align 8
  %119 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %118, i32 0, i32 4
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %119, align 8
  %121 = load i32, i32* %10, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 1
  store i32 %117, i32* %124, align 4
  %125 = load %struct.cam_eb*, %struct.cam_eb** %4, align 8
  %126 = getelementptr inbounds %struct.cam_eb, %struct.cam_eb* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %6, align 8
  %129 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %128, i32 0, i32 4
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %129, align 8
  %131 = load i32, i32* %10, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 3
  store i32 %127, i32* %136, align 4
  %137 = load %struct.cam_eb*, %struct.cam_eb** %4, align 8
  %138 = getelementptr inbounds %struct.cam_eb, %struct.cam_eb* %137, i32 0, i32 2
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %6, align 8
  %143 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %142, i32 0, i32 4
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %143, align 8
  %145 = load i32, i32* %10, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 2
  store i32 %141, i32* %150, align 4
  %151 = load %struct.cam_eb*, %struct.cam_eb** %4, align 8
  %152 = getelementptr inbounds %struct.cam_eb, %struct.cam_eb* %151, i32 0, i32 2
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %6, align 8
  %157 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %156, i32 0, i32 4
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %157, align 8
  %159 = load i32, i32* %10, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 1
  store i32 %155, i32* %164, align 4
  %165 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %6, align 8
  %166 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %165, i32 0, i32 4
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %166, align 8
  %168 = load i32, i32* %10, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.cam_eb*, %struct.cam_eb** %4, align 8
  %176 = getelementptr inbounds %struct.cam_eb, %struct.cam_eb* %175, i32 0, i32 2
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @strlcpy(i32 %174, i32 %179, i32 4)
  br label %181

181:                                              ; preds = %109, %64
  %182 = load i32, i32* %8, align 4
  %183 = load i32, i32* @DM_RET_ACTION_MASK, align 4
  %184 = and i32 %182, %183
  %185 = load i32, i32* @DM_RET_STOP, align 4
  %186 = icmp eq i32 %184, %185
  br i1 %186, label %187, label %188

187:                                              ; preds = %181
  store i32 1, i32* %3, align 4
  br label %262

188:                                              ; preds = %181
  %189 = load %struct.cam_eb*, %struct.cam_eb** %4, align 8
  %190 = getelementptr inbounds %struct.cam_eb, %struct.cam_eb* %189, i32 0, i32 1
  %191 = call i32 @mtx_lock(i32* %190)
  %192 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %6, align 8
  %193 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %192, i32 0, i32 2
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* @CAM_DEV_POS_BUS, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %252

199:                                              ; preds = %188
  %200 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %6, align 8
  %201 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %200, i32 0, i32 2
  %202 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %201, i32 0, i32 2
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %202, i32 0, i32 1
  %204 = load %struct.cam_eb*, %struct.cam_eb** %203, align 8
  %205 = load %struct.cam_eb*, %struct.cam_eb** %4, align 8
  %206 = icmp eq %struct.cam_eb* %204, %205
  br i1 %206, label %207, label %252

207:                                              ; preds = %199
  %208 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %6, align 8
  %209 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %208, i32 0, i32 2
  %210 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* @CAM_DEV_POS_TARGET, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %252

215:                                              ; preds = %207
  %216 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %6, align 8
  %217 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %216, i32 0, i32 2
  %218 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %217, i32 0, i32 2
  %219 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %218, i32 0, i32 0
  %220 = load i32*, i32** %219, align 8
  %221 = icmp ne i32* %220, null
  br i1 %221, label %222, label %252

222:                                              ; preds = %215
  %223 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %6, align 8
  %224 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %223, i32 0, i32 2
  %225 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %224, i32 0, i32 1
  %226 = load i64*, i64** %225, align 8
  %227 = load i64, i64* @CAM_TARGET_GENERATION, align 8
  %228 = getelementptr inbounds i64, i64* %226, i64 %227
  %229 = load i64, i64* %228, align 8
  %230 = load %struct.cam_eb*, %struct.cam_eb** %4, align 8
  %231 = getelementptr inbounds %struct.cam_eb, %struct.cam_eb* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = icmp ne i64 %229, %232
  br i1 %233, label %234, label %241

234:                                              ; preds = %222
  %235 = load %struct.cam_eb*, %struct.cam_eb** %4, align 8
  %236 = getelementptr inbounds %struct.cam_eb, %struct.cam_eb* %235, i32 0, i32 1
  %237 = call i32 @mtx_unlock(i32* %236)
  %238 = load i32, i32* @CAM_DEV_MATCH_LIST_CHANGED, align 4
  %239 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %6, align 8
  %240 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %239, i32 0, i32 3
  store i32 %238, i32* %240, align 8
  store i32 0, i32* %3, align 4
  br label %262

241:                                              ; preds = %222
  %242 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %6, align 8
  %243 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %242, i32 0, i32 2
  %244 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %243, i32 0, i32 2
  %245 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %244, i32 0, i32 0
  %246 = load i32*, i32** %245, align 8
  %247 = bitcast i32* %246 to %struct.cam_et*
  store %struct.cam_et* %247, %struct.cam_et** %7, align 8
  %248 = load %struct.cam_et*, %struct.cam_et** %7, align 8
  %249 = getelementptr inbounds %struct.cam_et, %struct.cam_et* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %249, align 4
  br label %253

252:                                              ; preds = %215, %207, %199, %188
  store %struct.cam_et* null, %struct.cam_et** %7, align 8
  br label %253

253:                                              ; preds = %252, %241
  %254 = load %struct.cam_eb*, %struct.cam_eb** %4, align 8
  %255 = getelementptr inbounds %struct.cam_eb, %struct.cam_eb* %254, i32 0, i32 1
  %256 = call i32 @mtx_unlock(i32* %255)
  %257 = load %struct.cam_eb*, %struct.cam_eb** %4, align 8
  %258 = load %struct.cam_et*, %struct.cam_et** %7, align 8
  %259 = load i32, i32* @xptedttargetfunc, align 4
  %260 = load i8*, i8** %5, align 8
  %261 = call i32 @xpttargettraverse(%struct.cam_eb* %257, %struct.cam_et* %258, i32 %259, i8* %260)
  store i32 %261, i32* %3, align 4
  br label %262

262:                                              ; preds = %253, %234, %187, %84, %60
  %263 = load i32, i32* %3, align 4
  ret i32 %263
}

declare dso_local i32 @xptbusmatch(i32, i32, %struct.cam_eb*) #1

declare dso_local i32 @bzero(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @xpttargettraverse(%struct.cam_eb*, %struct.cam_et*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
