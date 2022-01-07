; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xptedtdevicefunc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xptedtdevicefunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64 }
%struct.cam_ed = type { i32, i64, %struct.TYPE_9__*, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i64, i32, %struct.cam_eb* }
%struct.cam_eb = type { i64, i32, i32 }
%struct.cam_periph = type { i32 }
%struct.ccb_dev_match = type { i32, i32, %struct.TYPE_14__, i32, %struct.TYPE_12__*, i32, i32 }
%struct.TYPE_14__ = type { i32, i64*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32*, %struct.cam_ed*, %struct.TYPE_9__*, %struct.cam_eb* }
%struct.TYPE_12__ = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32 }

@CAM_DEV_POS_DEVICE = common dso_local global i32 0, align 4
@CAM_DEV_POS_PERIPH = common dso_local global i32 0, align 4
@DM_RET_DESCEND = common dso_local global i32 0, align 4
@DM_RET_ACTION_MASK = common dso_local global i32 0, align 4
@DM_RET_ERROR = common dso_local global i32 0, align 4
@CAM_DEV_MATCH_ERROR = common dso_local global i32 0, align 4
@DM_RET_COPY = common dso_local global i32 0, align 4
@CAM_DEV_POS_EDT = common dso_local global i32 0, align 4
@CAM_DEV_POS_BUS = common dso_local global i32 0, align 4
@CAM_DEV_POS_TARGET = common dso_local global i32 0, align 4
@xsoftc = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@CAM_BUS_GENERATION = common dso_local global i64 0, align 8
@CAM_TARGET_GENERATION = common dso_local global i64 0, align 8
@CAM_DEV_GENERATION = common dso_local global i64 0, align 8
@CAM_DEV_MATCH_MORE = common dso_local global i32 0, align 4
@DEV_MATCH_DEVICE = common dso_local global i32 0, align 4
@CAM_DEV_UNCONFIGURED = common dso_local global i32 0, align 4
@DEV_RESULT_UNCONFIGURED = common dso_local global i32 0, align 4
@DEV_RESULT_NOFLAG = common dso_local global i32 0, align 4
@DM_RET_STOP = common dso_local global i32 0, align 4
@CAM_PERIPH_GENERATION = common dso_local global i64 0, align 8
@CAM_DEV_MATCH_LIST_CHANGED = common dso_local global i32 0, align 4
@xptedtperiphfunc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_ed*, i8*)* @xptedtdevicefunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xptedtdevicefunc(%struct.cam_ed* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cam_ed*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cam_eb*, align 8
  %7 = alloca %struct.cam_periph*, align 8
  %8 = alloca %struct.ccb_dev_match*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cam_ed* %0, %struct.cam_ed** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.ccb_dev_match*
  store %struct.ccb_dev_match* %13, %struct.ccb_dev_match** %8, align 8
  %14 = load %struct.cam_ed*, %struct.cam_ed** %4, align 8
  %15 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %14, i32 0, i32 2
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 2
  %18 = load %struct.cam_eb*, %struct.cam_eb** %17, align 8
  store %struct.cam_eb* %18, %struct.cam_eb** %6, align 8
  %19 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %8, align 8
  %20 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @CAM_DEV_POS_DEVICE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %51

26:                                               ; preds = %2
  %27 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %8, align 8
  %28 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load %struct.cam_ed*, %struct.cam_ed** %30, align 8
  %32 = load %struct.cam_ed*, %struct.cam_ed** %4, align 8
  %33 = icmp eq %struct.cam_ed* %31, %32
  br i1 %33, label %34, label %51

34:                                               ; preds = %26
  %35 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %8, align 8
  %36 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @CAM_DEV_POS_PERIPH, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %34
  %43 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %8, align 8
  %44 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i32, i32* @DM_RET_DESCEND, align 4
  store i32 %50, i32* %9, align 4
  br label %60

51:                                               ; preds = %42, %34, %26, %2
  %52 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %8, align 8
  %53 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %8, align 8
  %56 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.cam_ed*, %struct.cam_ed** %4, align 8
  %59 = call i32 @xptdevicematch(i32 %54, i32 %57, %struct.cam_ed* %58)
  store i32 %59, i32* %9, align 4
  br label %60

60:                                               ; preds = %51, %49
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @DM_RET_ACTION_MASK, align 4
  %63 = and i32 %61, %62
  %64 = load i32, i32* @DM_RET_ERROR, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load i32, i32* @CAM_DEV_MATCH_ERROR, align 4
  %68 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %8, align 8
  %69 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 8
  store i32 0, i32* %3, align 4
  br label %400

70:                                               ; preds = %60
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* @DM_RET_COPY, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %282

75:                                               ; preds = %70
  %76 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %8, align 8
  %77 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = sext i32 %78 to i64
  %80 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %8, align 8
  %81 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = mul i64 %83, 4
  %85 = sub i64 %79, %84
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = icmp ult i64 %88, 4
  br i1 %89, label %90, label %159

90:                                               ; preds = %75
  %91 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %8, align 8
  %92 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %91, i32 0, i32 2
  %93 = call i32 @bzero(%struct.TYPE_14__* %92, i32 48)
  %94 = load i32, i32* @CAM_DEV_POS_EDT, align 4
  %95 = load i32, i32* @CAM_DEV_POS_BUS, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @CAM_DEV_POS_TARGET, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @CAM_DEV_POS_DEVICE, align 4
  %100 = or i32 %98, %99
  %101 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %8, align 8
  %102 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 0
  store i32 %100, i32* %103, align 8
  %104 = load %struct.cam_ed*, %struct.cam_ed** %4, align 8
  %105 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %104, i32 0, i32 2
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 2
  %108 = load %struct.cam_eb*, %struct.cam_eb** %107, align 8
  %109 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %8, align 8
  %110 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 3
  store %struct.cam_eb* %108, %struct.cam_eb** %112, align 8
  %113 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @xsoftc, i32 0, i32 0), align 8
  %114 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %8, align 8
  %115 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 1
  %117 = load i64*, i64** %116, align 8
  %118 = load i64, i64* @CAM_BUS_GENERATION, align 8
  %119 = getelementptr inbounds i64, i64* %117, i64 %118
  store i64 %113, i64* %119, align 8
  %120 = load %struct.cam_ed*, %struct.cam_ed** %4, align 8
  %121 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %120, i32 0, i32 2
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %121, align 8
  %123 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %8, align 8
  %124 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 2
  store %struct.TYPE_9__* %122, %struct.TYPE_9__** %126, align 8
  %127 = load %struct.cam_ed*, %struct.cam_ed** %4, align 8
  %128 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %127, i32 0, i32 2
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 2
  %131 = load %struct.cam_eb*, %struct.cam_eb** %130, align 8
  %132 = getelementptr inbounds %struct.cam_eb, %struct.cam_eb* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %8, align 8
  %135 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 1
  %137 = load i64*, i64** %136, align 8
  %138 = load i64, i64* @CAM_TARGET_GENERATION, align 8
  %139 = getelementptr inbounds i64, i64* %137, i64 %138
  store i64 %133, i64* %139, align 8
  %140 = load %struct.cam_ed*, %struct.cam_ed** %4, align 8
  %141 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %8, align 8
  %142 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 1
  store %struct.cam_ed* %140, %struct.cam_ed** %144, align 8
  %145 = load %struct.cam_ed*, %struct.cam_ed** %4, align 8
  %146 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %145, i32 0, i32 2
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %8, align 8
  %151 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 1
  %153 = load i64*, i64** %152, align 8
  %154 = load i64, i64* @CAM_DEV_GENERATION, align 8
  %155 = getelementptr inbounds i64, i64* %153, i64 %154
  store i64 %149, i64* %155, align 8
  %156 = load i32, i32* @CAM_DEV_MATCH_MORE, align 4
  %157 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %8, align 8
  %158 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %157, i32 0, i32 3
  store i32 %156, i32* %158, align 8
  store i32 0, i32* %3, align 4
  br label %400

159:                                              ; preds = %75
  %160 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %8, align 8
  %161 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  store i32 %162, i32* %11, align 4
  %163 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %8, align 8
  %164 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %164, align 4
  %167 = load i32, i32* @DEV_MATCH_DEVICE, align 4
  %168 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %8, align 8
  %169 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %168, i32 0, i32 4
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %169, align 8
  %171 = load i32, i32* %11, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 1
  store i32 %167, i32* %174, align 4
  %175 = load %struct.cam_ed*, %struct.cam_ed** %4, align 8
  %176 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %175, i32 0, i32 2
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 2
  %179 = load %struct.cam_eb*, %struct.cam_eb** %178, align 8
  %180 = getelementptr inbounds %struct.cam_eb, %struct.cam_eb* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %8, align 8
  %183 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %182, i32 0, i32 4
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %183, align 8
  %185 = load i32, i32* %11, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 6
  store i32 %181, i32* %190, align 4
  %191 = load %struct.cam_ed*, %struct.cam_ed** %4, align 8
  %192 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %191, i32 0, i32 2
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 8
  %196 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %8, align 8
  %197 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %196, i32 0, i32 4
  %198 = load %struct.TYPE_12__*, %struct.TYPE_12__** %197, align 8
  %199 = load i32, i32* %11, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 5
  store i32 %195, i32* %204, align 4
  %205 = load %struct.cam_ed*, %struct.cam_ed** %4, align 8
  %206 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %205, i32 0, i32 6
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %8, align 8
  %209 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %208, i32 0, i32 4
  %210 = load %struct.TYPE_12__*, %struct.TYPE_12__** %209, align 8
  %211 = load i32, i32* %11, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %210, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i32 0, i32 4
  store i32 %207, i32* %216, align 4
  %217 = load %struct.cam_ed*, %struct.cam_ed** %4, align 8
  %218 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %217, i32 0, i32 5
  %219 = load i32, i32* %218, align 8
  %220 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %8, align 8
  %221 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %220, i32 0, i32 4
  %222 = load %struct.TYPE_12__*, %struct.TYPE_12__** %221, align 8
  %223 = load i32, i32* %11, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %222, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i32 0, i32 3
  store i32 %219, i32* %228, align 4
  %229 = load %struct.cam_ed*, %struct.cam_ed** %4, align 8
  %230 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %229, i32 0, i32 4
  %231 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %8, align 8
  %232 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %231, i32 0, i32 4
  %233 = load %struct.TYPE_12__*, %struct.TYPE_12__** %232, align 8
  %234 = load i32, i32* %11, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %238, i32 0, i32 2
  %240 = call i32 @bcopy(i32* %230, i32* %239, i32 4)
  %241 = load %struct.cam_ed*, %struct.cam_ed** %4, align 8
  %242 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %241, i32 0, i32 3
  %243 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %8, align 8
  %244 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %243, i32 0, i32 4
  %245 = load %struct.TYPE_12__*, %struct.TYPE_12__** %244, align 8
  %246 = load i32, i32* %11, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %245, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %250, i32 0, i32 1
  %252 = call i32 @bcopy(i32* %242, i32* %251, i32 4)
  %253 = load %struct.cam_ed*, %struct.cam_ed** %4, align 8
  %254 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = load i32, i32* @CAM_DEV_UNCONFIGURED, align 4
  %257 = and i32 %255, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %270

259:                                              ; preds = %159
  %260 = load i32, i32* @DEV_RESULT_UNCONFIGURED, align 4
  %261 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %8, align 8
  %262 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %261, i32 0, i32 4
  %263 = load %struct.TYPE_12__*, %struct.TYPE_12__** %262, align 8
  %264 = load i32, i32* %11, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %263, i64 %265
  %267 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %268, i32 0, i32 0
  store i32 %260, i32* %269, align 4
  br label %281

270:                                              ; preds = %159
  %271 = load i32, i32* @DEV_RESULT_NOFLAG, align 4
  %272 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %8, align 8
  %273 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %272, i32 0, i32 4
  %274 = load %struct.TYPE_12__*, %struct.TYPE_12__** %273, align 8
  %275 = load i32, i32* %11, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %274, i64 %276
  %278 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %278, i32 0, i32 0
  %280 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %279, i32 0, i32 0
  store i32 %271, i32* %280, align 4
  br label %281

281:                                              ; preds = %270, %259
  br label %282

282:                                              ; preds = %281, %70
  %283 = load i32, i32* %9, align 4
  %284 = load i32, i32* @DM_RET_ACTION_MASK, align 4
  %285 = and i32 %283, %284
  %286 = load i32, i32* @DM_RET_STOP, align 4
  %287 = icmp eq i32 %285, %286
  br i1 %287, label %288, label %289

288:                                              ; preds = %282
  store i32 1, i32* %3, align 4
  br label %400

289:                                              ; preds = %282
  %290 = call i32 (...) @xpt_lock_buses()
  %291 = load %struct.cam_eb*, %struct.cam_eb** %6, align 8
  %292 = getelementptr inbounds %struct.cam_eb, %struct.cam_eb* %291, i32 0, i32 1
  %293 = call i32 @mtx_lock(i32* %292)
  %294 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %8, align 8
  %295 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %294, i32 0, i32 2
  %296 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = load i32, i32* @CAM_DEV_POS_BUS, align 4
  %299 = and i32 %297, %298
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %389

301:                                              ; preds = %289
  %302 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %8, align 8
  %303 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %302, i32 0, i32 2
  %304 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %303, i32 0, i32 2
  %305 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %304, i32 0, i32 3
  %306 = load %struct.cam_eb*, %struct.cam_eb** %305, align 8
  %307 = load %struct.cam_eb*, %struct.cam_eb** %6, align 8
  %308 = icmp eq %struct.cam_eb* %306, %307
  br i1 %308, label %309, label %389

309:                                              ; preds = %301
  %310 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %8, align 8
  %311 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %310, i32 0, i32 2
  %312 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = load i32, i32* @CAM_DEV_POS_TARGET, align 4
  %315 = and i32 %313, %314
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %389

317:                                              ; preds = %309
  %318 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %8, align 8
  %319 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %318, i32 0, i32 2
  %320 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %319, i32 0, i32 2
  %321 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %320, i32 0, i32 2
  %322 = load %struct.TYPE_9__*, %struct.TYPE_9__** %321, align 8
  %323 = load %struct.cam_ed*, %struct.cam_ed** %4, align 8
  %324 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %323, i32 0, i32 2
  %325 = load %struct.TYPE_9__*, %struct.TYPE_9__** %324, align 8
  %326 = icmp eq %struct.TYPE_9__* %322, %325
  br i1 %326, label %327, label %389

327:                                              ; preds = %317
  %328 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %8, align 8
  %329 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %328, i32 0, i32 2
  %330 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 8
  %332 = load i32, i32* @CAM_DEV_POS_DEVICE, align 4
  %333 = and i32 %331, %332
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %389

335:                                              ; preds = %327
  %336 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %8, align 8
  %337 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %336, i32 0, i32 2
  %338 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %337, i32 0, i32 2
  %339 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %338, i32 0, i32 1
  %340 = load %struct.cam_ed*, %struct.cam_ed** %339, align 8
  %341 = load %struct.cam_ed*, %struct.cam_ed** %4, align 8
  %342 = icmp eq %struct.cam_ed* %340, %341
  br i1 %342, label %343, label %389

343:                                              ; preds = %335
  %344 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %8, align 8
  %345 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %344, i32 0, i32 2
  %346 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 8
  %348 = load i32, i32* @CAM_DEV_POS_PERIPH, align 4
  %349 = and i32 %347, %348
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %389

351:                                              ; preds = %343
  %352 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %8, align 8
  %353 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %352, i32 0, i32 2
  %354 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %353, i32 0, i32 2
  %355 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %354, i32 0, i32 0
  %356 = load i32*, i32** %355, align 8
  %357 = icmp ne i32* %356, null
  br i1 %357, label %358, label %389

358:                                              ; preds = %351
  %359 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %8, align 8
  %360 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %359, i32 0, i32 2
  %361 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %360, i32 0, i32 1
  %362 = load i64*, i64** %361, align 8
  %363 = load i64, i64* @CAM_PERIPH_GENERATION, align 8
  %364 = getelementptr inbounds i64, i64* %362, i64 %363
  %365 = load i64, i64* %364, align 8
  %366 = load %struct.cam_ed*, %struct.cam_ed** %4, align 8
  %367 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %366, i32 0, i32 1
  %368 = load i64, i64* %367, align 8
  %369 = icmp ne i64 %365, %368
  br i1 %369, label %370, label %378

370:                                              ; preds = %358
  %371 = load %struct.cam_eb*, %struct.cam_eb** %6, align 8
  %372 = getelementptr inbounds %struct.cam_eb, %struct.cam_eb* %371, i32 0, i32 1
  %373 = call i32 @mtx_unlock(i32* %372)
  %374 = call i32 (...) @xpt_unlock_buses()
  %375 = load i32, i32* @CAM_DEV_MATCH_LIST_CHANGED, align 4
  %376 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %8, align 8
  %377 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %376, i32 0, i32 3
  store i32 %375, i32* %377, align 8
  store i32 0, i32* %3, align 4
  br label %400

378:                                              ; preds = %358
  %379 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %8, align 8
  %380 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %379, i32 0, i32 2
  %381 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %380, i32 0, i32 2
  %382 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %381, i32 0, i32 0
  %383 = load i32*, i32** %382, align 8
  %384 = bitcast i32* %383 to %struct.cam_periph*
  store %struct.cam_periph* %384, %struct.cam_periph** %7, align 8
  %385 = load %struct.cam_periph*, %struct.cam_periph** %7, align 8
  %386 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %385, i32 0, i32 0
  %387 = load i32, i32* %386, align 4
  %388 = add nsw i32 %387, 1
  store i32 %388, i32* %386, align 4
  br label %390

389:                                              ; preds = %351, %343, %335, %327, %317, %309, %301, %289
  store %struct.cam_periph* null, %struct.cam_periph** %7, align 8
  br label %390

390:                                              ; preds = %389, %378
  %391 = load %struct.cam_eb*, %struct.cam_eb** %6, align 8
  %392 = getelementptr inbounds %struct.cam_eb, %struct.cam_eb* %391, i32 0, i32 1
  %393 = call i32 @mtx_unlock(i32* %392)
  %394 = call i32 (...) @xpt_unlock_buses()
  %395 = load %struct.cam_ed*, %struct.cam_ed** %4, align 8
  %396 = load %struct.cam_periph*, %struct.cam_periph** %7, align 8
  %397 = load i32, i32* @xptedtperiphfunc, align 4
  %398 = load i8*, i8** %5, align 8
  %399 = call i32 @xptperiphtraverse(%struct.cam_ed* %395, %struct.cam_periph* %396, i32 %397, i8* %398)
  store i32 %399, i32* %3, align 4
  br label %400

400:                                              ; preds = %390, %370, %288, %90, %66
  %401 = load i32, i32* %3, align 4
  ret i32 %401
}

declare dso_local i32 @xptdevicematch(i32, i32, %struct.cam_ed*) #1

declare dso_local i32 @bzero(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i32 @xpt_lock_buses(...) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @xpt_unlock_buses(...) #1

declare dso_local i32 @xptperiphtraverse(%struct.cam_ed*, %struct.cam_periph*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
