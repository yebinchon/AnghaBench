; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xptedtperiphfunc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xptedtperiphfunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32 }
%struct.cam_periph = type { i32, i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__*, %struct.TYPE_14__*, %struct.TYPE_13__* }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.ccb_dev_match = type { i32, i32, %struct.TYPE_19__*, i32, %struct.TYPE_11__, i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32*, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.cam_periph*, %struct.TYPE_15__*, %struct.TYPE_14__*, %struct.TYPE_13__* }

@DM_RET_ACTION_MASK = common dso_local global i32 0, align 4
@DM_RET_ERROR = common dso_local global i32 0, align 4
@CAM_DEV_MATCH_ERROR = common dso_local global i32 0, align 4
@DM_RET_COPY = common dso_local global i32 0, align 4
@CAM_DEV_POS_EDT = common dso_local global i32 0, align 4
@CAM_DEV_POS_BUS = common dso_local global i32 0, align 4
@CAM_DEV_POS_TARGET = common dso_local global i32 0, align 4
@CAM_DEV_POS_DEVICE = common dso_local global i32 0, align 4
@CAM_DEV_POS_PERIPH = common dso_local global i32 0, align 4
@xsoftc = common dso_local global %struct.TYPE_20__ zeroinitializer, align 4
@CAM_BUS_GENERATION = common dso_local global i64 0, align 8
@CAM_TARGET_GENERATION = common dso_local global i64 0, align 8
@CAM_DEV_GENERATION = common dso_local global i64 0, align 8
@CAM_PERIPH_GENERATION = common dso_local global i64 0, align 8
@CAM_DEV_MATCH_MORE = common dso_local global i32 0, align 4
@DEV_MATCH_PERIPH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_periph*, i8*)* @xptedtperiphfunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xptedtperiphfunc(%struct.cam_periph* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cam_periph*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ccb_dev_match*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.cam_periph* %0, %struct.cam_periph** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.ccb_dev_match*
  store %struct.ccb_dev_match* %12, %struct.ccb_dev_match** %6, align 8
  %13 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %6, align 8
  %14 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %6, align 8
  %17 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %20 = call i32 @xptperiphmatch(i32 %15, i32 %18, %struct.cam_periph* %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @DM_RET_ACTION_MASK, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* @DM_RET_ERROR, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = load i32, i32* @CAM_DEV_MATCH_ERROR, align 4
  %28 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %6, align 8
  %29 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 8
  store i32 0, i32* %3, align 4
  br label %239

30:                                               ; preds = %2
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @DM_RET_COPY, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %238

35:                                               ; preds = %30
  %36 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %6, align 8
  %37 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %6, align 8
  %41 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = mul i64 %43, 4
  %45 = sub i64 %39, %44
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = icmp ult i64 %48, 4
  br i1 %49, label %50, label %147

50:                                               ; preds = %35
  %51 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %6, align 8
  %52 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %51, i32 0, i32 4
  %53 = call i32 @bzero(%struct.TYPE_11__* %52, i32 48)
  %54 = load i32, i32* @CAM_DEV_POS_EDT, align 4
  %55 = load i32, i32* @CAM_DEV_POS_BUS, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @CAM_DEV_POS_TARGET, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @CAM_DEV_POS_DEVICE, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @CAM_DEV_POS_PERIPH, align 4
  %62 = or i32 %60, %61
  %63 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %6, align 8
  %64 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  store i32 %62, i32* %65, align 8
  %66 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %67 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %66, i32 0, i32 2
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %69, align 8
  %71 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %6, align 8
  %72 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %71, i32 0, i32 4
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 3
  store %struct.TYPE_13__* %70, %struct.TYPE_13__** %74, align 8
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @xsoftc, i32 0, i32 0), align 4
  %76 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %6, align 8
  %77 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %76, i32 0, i32 4
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = load i64, i64* @CAM_BUS_GENERATION, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  store i32 %75, i32* %81, align 4
  %82 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %83 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %82, i32 0, i32 2
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %85, align 8
  %87 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %6, align 8
  %88 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %87, i32 0, i32 4
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 2
  store %struct.TYPE_14__* %86, %struct.TYPE_14__** %90, align 8
  %91 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %92 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %91, i32 0, i32 2
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 2
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %6, align 8
  %99 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %98, i32 0, i32 4
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = load i64, i64* @CAM_TARGET_GENERATION, align 8
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  store i32 %97, i32* %103, align 4
  %104 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %105 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %104, i32 0, i32 2
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %107, align 8
  %109 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %6, align 8
  %110 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %109, i32 0, i32 4
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 1
  store %struct.TYPE_15__* %108, %struct.TYPE_15__** %112, align 8
  %113 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %114 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %113, i32 0, i32 2
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %6, align 8
  %121 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %120, i32 0, i32 4
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = load i64, i64* @CAM_DEV_GENERATION, align 8
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  store i32 %119, i32* %125, align 4
  %126 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %127 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %6, align 8
  %128 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %127, i32 0, i32 4
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 0
  store %struct.cam_periph* %126, %struct.cam_periph** %130, align 8
  %131 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %132 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %131, i32 0, i32 2
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %6, align 8
  %139 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %138, i32 0, i32 4
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 1
  %141 = load i32*, i32** %140, align 8
  %142 = load i64, i64* @CAM_PERIPH_GENERATION, align 8
  %143 = getelementptr inbounds i32, i32* %141, i64 %142
  store i32 %137, i32* %143, align 4
  %144 = load i32, i32* @CAM_DEV_MATCH_MORE, align 4
  %145 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %6, align 8
  %146 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %145, i32 0, i32 3
  store i32 %144, i32* %146, align 8
  store i32 0, i32* %3, align 4
  br label %239

147:                                              ; preds = %35
  %148 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %6, align 8
  %149 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  store i32 %150, i32* %9, align 4
  %151 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %6, align 8
  %152 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %152, align 4
  %155 = load i32, i32* @DEV_MATCH_PERIPH, align 4
  %156 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %6, align 8
  %157 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %156, i32 0, i32 2
  %158 = load %struct.TYPE_19__*, %struct.TYPE_19__** %157, align 8
  %159 = load i32, i32* %9, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %161, i32 0, i32 1
  store i32 %155, i32* %162, align 4
  %163 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %164 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %163, i32 0, i32 2
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 2
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %6, align 8
  %171 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %170, i32 0, i32 2
  %172 = load %struct.TYPE_19__*, %struct.TYPE_19__** %171, align 8
  %173 = load i32, i32* %9, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %177, i32 0, i32 4
  store i32 %169, i32* %178, align 4
  %179 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %180 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %179, i32 0, i32 2
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 1
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %6, align 8
  %187 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %186, i32 0, i32 2
  %188 = load %struct.TYPE_19__*, %struct.TYPE_19__** %187, align 8
  %189 = load i32, i32* %9, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %193, i32 0, i32 3
  store i32 %185, i32* %194, align 4
  %195 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %196 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %195, i32 0, i32 2
  %197 = load %struct.TYPE_16__*, %struct.TYPE_16__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %197, i32 0, i32 0
  %199 = load %struct.TYPE_15__*, %struct.TYPE_15__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %6, align 8
  %203 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %202, i32 0, i32 2
  %204 = load %struct.TYPE_19__*, %struct.TYPE_19__** %203, align 8
  %205 = load i32, i32* %9, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %204, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %209, i32 0, i32 2
  store i32 %201, i32* %210, align 4
  %211 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %212 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %6, align 8
  %215 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %214, i32 0, i32 2
  %216 = load %struct.TYPE_19__*, %struct.TYPE_19__** %215, align 8
  %217 = load i32, i32* %9, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %216, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %221, i32 0, i32 1
  store i32 %213, i32* %222, align 4
  store i64 4, i64* %10, align 8
  %223 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %6, align 8
  %224 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %223, i32 0, i32 2
  %225 = load %struct.TYPE_19__*, %struct.TYPE_19__** %224, align 8
  %226 = load i32, i32* %9, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %225, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %234 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = load i64, i64* %10, align 8
  %237 = call i32 @strlcpy(i32 %232, i32 %235, i64 %236)
  br label %238

238:                                              ; preds = %147, %30
  store i32 1, i32* %3, align 4
  br label %239

239:                                              ; preds = %238, %50, %26
  %240 = load i32, i32* %3, align 4
  ret i32 %240
}

declare dso_local i32 @xptperiphmatch(i32, i32, %struct.cam_periph*) #1

declare dso_local i32 @bzero(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
