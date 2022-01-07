; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_kg.c_FmPcdKgBuildClsPlanGrp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_kg.c_FmPcdKgBuildClsPlanGrp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32*, i32*, i32, i8* }
%struct.TYPE_16__ = type { i32, i32*, i8* }
%struct.TYPE_20__ = type { i64, i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_18__*, i8* }
%struct.TYPE_18__ = type { i32, i32*, i8*, i64, i32, i64 }
%struct.TYPE_19__ = type { i64, i32, i64, i64, i32, i32 }

@E_OK = common dso_local global i64 0, align 8
@FM_PCD_MAX_NUM_OF_CLS_PLANS = common dso_local global i32 0, align 4
@MAJOR = common dso_local global i32 0, align 4
@E_INVALID_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"Too many classification plan basic options selected.\00", align 1
@FM_MAX_NUM_OF_PORTS = common dso_local global i32 0, align 4
@E_FULL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"No classification plan groups available.\00", align 1
@TRUE = common dso_local global i64 0, align 8
@CLS_PLAN_NUM_PER_GRP = common dso_local global i32 0, align 4
@NCSW_MASTER_ID = common dso_local global i64 0, align 8
@MINOR = common dso_local global i32 0, align 4
@E_INVALID_STATE = common dso_local global i64 0, align 8
@NO_MSG = common dso_local global i8* null, align 8
@FM_PCD_ALLOC_KG_CLSPLAN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"IPC reply length mismatch\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FmPcdKgBuildClsPlanGrp(i64 %0, %struct.TYPE_17__* %1, %struct.TYPE_16__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_19__, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_19__, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_19__, align 8
  store i64 %0, i64* %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %6, align 8
  %17 = load i64, i64* %4, align 8
  %18 = inttoptr i64 %17 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %18, %struct.TYPE_20__** %7, align 8
  %19 = load i64, i64* @E_OK, align 8
  store i64 %19, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @FM_PCD_MAX_NUM_OF_CLS_PLANS, align 4
  %24 = call i32 @FM_PCD_MAX_NUM_OF_OPTIONS(i32 %23)
  %25 = icmp sge i32 %22, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %3
  %27 = load i32, i32* @MAJOR, align 4
  %28 = load i64, i64* @E_INVALID_VALUE, align 8
  %29 = call i32 @RETURN_ERROR(i32 %27, i64 %28, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %26, %3
  store i32 0, i32* %12, align 4
  br label %31

31:                                               ; preds = %49, %30
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* @FM_MAX_NUM_OF_PORTS, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %52

35:                                               ; preds = %31
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %39, align 8
  %41 = load i32, i32* %12, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 5
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %35
  br label %52

48:                                               ; preds = %35
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %12, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %12, align 4
  br label %31

52:                                               ; preds = %47, %31
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* @FM_MAX_NUM_OF_PORTS, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load i32, i32* @MAJOR, align 4
  %58 = load i64, i64* @E_FULL, align 8
  %59 = call i32 @RETURN_ERROR(i32 %57, i64 %58, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %60

60:                                               ; preds = %56, %52
  %61 = load i64, i64* @TRUE, align 8
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %65, align 8
  %67 = load i32, i32* %12, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 5
  store i64 %61, i64* %70, align 8
  %71 = load i32, i32* %12, align 4
  %72 = sext i32 %71 to i64
  %73 = inttoptr i64 %72 to i8*
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 4
  store i8* %73, i8** %75, align 8
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %60
  %81 = load i32, i32* %12, align 4
  %82 = sext i32 %81 to i64
  %83 = inttoptr i64 %82 to i8*
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 1
  store i8* %83, i8** %87, align 8
  br label %88

88:                                               ; preds = %80, %60
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 2
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %92, align 8
  %94 = load i32, i32* %12, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i64 %95
  store %struct.TYPE_18__* %96, %struct.TYPE_18__** %8, align 8
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 4
  store i32 %99, i32* %101, align 8
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 3
  store i64 0, i64* %103, align 8
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 4
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 @FmPcdSetClsPlanGrpId(%struct.TYPE_20__* %104, i32 %107, i8* %110)
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %88
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @FmPcdIncNetEnvOwners(%struct.TYPE_20__* %117, i32 %120)
  br label %122

122:                                              ; preds = %116, %88
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = shl i32 1, %125
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 8
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @CLS_PLAN_NUM_PER_GRP, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %138

134:                                              ; preds = %122
  %135 = load i32, i32* @CLS_PLAN_NUM_PER_GRP, align 4
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 8
  br label %138

138:                                              ; preds = %134, %122
  %139 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @NCSW_MASTER_ID, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %163

144:                                              ; preds = %138
  %145 = load i64, i64* %4, align 8
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %152, i32 0, i32 2
  %154 = call i64 @KgAllocClsPlanEntries(i64 %145, i32 %148, i64 %151, i8** %153)
  store i64 %154, i64* %10, align 8
  %155 = load i64, i64* %10, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %144
  %158 = load i32, i32* @MINOR, align 4
  %159 = load i64, i64* @E_INVALID_STATE, align 8
  %160 = load i8*, i8** @NO_MSG, align 8
  %161 = call i32 @RETURN_ERROR(i32 %158, i64 %159, i8* %160)
  br label %162

162:                                              ; preds = %157, %144
  br label %219

163:                                              ; preds = %138
  %164 = call i32 @memset(%struct.TYPE_19__* %16, i32 0, i32 40)
  %165 = call i32 @memset(%struct.TYPE_19__* %14, i32 0, i32 40)
  %166 = call i32 @memset(%struct.TYPE_19__* %9, i32 0, i32 40)
  %167 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 0
  store i64 %169, i64* %170, align 8
  %171 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 1
  store i32 %173, i32* %174, align 8
  %175 = load i32, i32* @FM_PCD_ALLOC_KG_CLSPLAN, align 4
  %176 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 5
  store i32 %175, i32* %176, align 4
  %177 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 4
  %178 = load i32, i32* %177, align 8
  %179 = call i32 @memcpy(i32 %178, %struct.TYPE_19__* %9, i32 40)
  store i32 12, i32* %15, align 4
  %180 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = bitcast %struct.TYPE_19__* %14 to i8**
  %184 = bitcast %struct.TYPE_19__* %16 to i8**
  %185 = call i64 @XX_IpcSendMessage(i32 %182, i8** %183, i32 44, i8** %184, i32* %15, i32* null, i32* null)
  store i64 %185, i64* %10, align 8
  %186 = load i64, i64* @E_OK, align 8
  %187 = icmp ne i64 %185, %186
  br i1 %187, label %188, label %193

188:                                              ; preds = %163
  %189 = load i32, i32* @MAJOR, align 4
  %190 = load i64, i64* %10, align 8
  %191 = load i8*, i8** @NO_MSG, align 8
  %192 = call i32 @RETURN_ERROR(i32 %189, i64 %190, i8* %191)
  br label %193

193:                                              ; preds = %188, %163
  %194 = load i32, i32* %15, align 4
  %195 = sext i32 %194 to i64
  %196 = icmp ne i64 %195, 12
  br i1 %196, label %197, label %201

197:                                              ; preds = %193
  %198 = load i32, i32* @MAJOR, align 4
  %199 = load i64, i64* @E_INVALID_VALUE, align 8
  %200 = call i32 @RETURN_ERROR(i32 %198, i64 %199, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %201

201:                                              ; preds = %197, %193
  %202 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 3
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @E_OK, align 8
  %205 = icmp ne i64 %203, %204
  br i1 %205, label %206, label %212

206:                                              ; preds = %201
  %207 = load i32, i32* @MINOR, align 4
  %208 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 3
  %209 = load i64, i64* %208, align 8
  %210 = load i8*, i8** @NO_MSG, align 8
  %211 = call i32 @RETURN_ERROR(i32 %207, i64 %209, i8* %210)
  br label %212

212:                                              ; preds = %206, %201
  %213 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 2
  %214 = load i64, i64* %213, align 8
  %215 = inttoptr i64 %214 to i8**
  %216 = load i8*, i8** %215, align 8
  %217 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %218 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %217, i32 0, i32 2
  store i8* %216, i8** %218, align 8
  br label %219

219:                                              ; preds = %212, %162
  %220 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %221 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %220, i32 0, i32 2
  %222 = load i8*, i8** %221, align 8
  %223 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %224 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %223, i32 0, i32 2
  store i8* %222, i8** %224, align 8
  %225 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %226 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %229 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %228, i32 0, i32 0
  store i32 %227, i32* %229, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %230

230:                                              ; preds = %259, %219
  %231 = load i32, i32* %12, align 4
  %232 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = icmp slt i32 %231, %234
  br i1 %235, label %236, label %262

236:                                              ; preds = %230
  %237 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %237, i32 0, i32 1
  %239 = load i32*, i32** %238, align 8
  %240 = load i32, i32* %12, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %239, i64 %241
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* %11, align 4
  %245 = or i32 %244, %243
  store i32 %245, i32* %11, align 4
  %246 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %247 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %246, i32 0, i32 2
  %248 = load i32*, i32** %247, align 8
  %249 = load i32, i32* %12, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %248, i64 %250
  %252 = load i32, i32* %251, align 4
  %253 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %254 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %253, i32 0, i32 1
  %255 = load i32*, i32** %254, align 8
  %256 = load i32, i32* %12, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %255, i64 %257
  store i32 %252, i32* %258, align 4
  br label %259

259:                                              ; preds = %236
  %260 = load i32, i32* %12, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %12, align 4
  br label %230

262:                                              ; preds = %230
  store i32 0, i32* %13, align 4
  br label %263

263:                                              ; preds = %278, %262
  %264 = load i32, i32* %13, align 4
  %265 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %266 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = icmp slt i32 %264, %267
  br i1 %268, label %269, label %281

269:                                              ; preds = %263
  %270 = load i32, i32* %11, align 4
  %271 = xor i32 %270, -1
  %272 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %273 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %272, i32 0, i32 1
  %274 = load i32*, i32** %273, align 8
  %275 = load i32, i32* %13, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i32, i32* %274, i64 %276
  store i32 %271, i32* %277, align 4
  br label %278

278:                                              ; preds = %269
  %279 = load i32, i32* %13, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %13, align 4
  br label %263

281:                                              ; preds = %263
  store i32 0, i32* %12, align 4
  br label %282

282:                                              ; preds = %322, %281
  %283 = load i32, i32* %12, align 4
  %284 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %285 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = icmp slt i32 %283, %286
  br i1 %287, label %288, label %325

288:                                              ; preds = %282
  store i32 0, i32* %13, align 4
  br label %289

289:                                              ; preds = %318, %288
  %290 = load i32, i32* %13, align 4
  %291 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %292 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = icmp slt i32 %290, %293
  br i1 %294, label %295, label %321

295:                                              ; preds = %289
  %296 = load i32, i32* %13, align 4
  %297 = load i32, i32* %12, align 4
  %298 = shl i32 1, %297
  %299 = and i32 %296, %298
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %317

301:                                              ; preds = %295
  %302 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %303 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %302, i32 0, i32 1
  %304 = load i32*, i32** %303, align 8
  %305 = load i32, i32* %12, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i32, i32* %304, i64 %306
  %308 = load i32, i32* %307, align 4
  %309 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %310 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %309, i32 0, i32 1
  %311 = load i32*, i32** %310, align 8
  %312 = load i32, i32* %13, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i32, i32* %311, i64 %313
  %315 = load i32, i32* %314, align 4
  %316 = or i32 %315, %308
  store i32 %316, i32* %314, align 4
  br label %317

317:                                              ; preds = %301, %295
  br label %318

318:                                              ; preds = %317
  %319 = load i32, i32* %13, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %13, align 4
  br label %289

321:                                              ; preds = %289
  br label %322

322:                                              ; preds = %321
  %323 = load i32, i32* %12, align 4
  %324 = add nsw i32 %323, 1
  store i32 %324, i32* %12, align 4
  br label %282

325:                                              ; preds = %282
  %326 = load i64, i64* @E_OK, align 8
  ret i64 %326
}

declare dso_local i32 @FM_PCD_MAX_NUM_OF_OPTIONS(i32) #1

declare dso_local i32 @RETURN_ERROR(i32, i64, i8*) #1

declare dso_local i32 @FmPcdSetClsPlanGrpId(%struct.TYPE_20__*, i32, i8*) #1

declare dso_local i32 @FmPcdIncNetEnvOwners(%struct.TYPE_20__*, i32) #1

declare dso_local i64 @KgAllocClsPlanEntries(i64, i32, i64, i8**) #1

declare dso_local i32 @memset(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @memcpy(i32, %struct.TYPE_19__*, i32) #1

declare dso_local i64 @XX_IpcSendMessage(i32, i8**, i32, i8**, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
