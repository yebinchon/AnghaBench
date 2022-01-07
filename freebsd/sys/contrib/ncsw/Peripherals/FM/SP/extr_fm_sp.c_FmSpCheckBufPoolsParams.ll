; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/SP/extr_fm_sp.c_FmSpCheckBufPoolsParams.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/SP/extr_fm_sp.c_FmSpCheckBufPoolsParams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32* }
%struct.TYPE_10__ = type { i64, i64*, i64, i64*, i64 }

@FM_PORT_MAX_NUM_OF_EXT_POOLS = common dso_local global i32 0, align 4
@MAJOR = common dso_local global i32 0, align 4
@E_INVALID_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"numOfPoolsUsed can't be larger than %d\00", align 1
@BM_MAX_NUM_OF_POOLS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"extBufPools.extBufPool[%d].id can't be larger than %d\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"extBufPools.extBufPool[%d].size is 0\00", align 1
@.str.3 = private unnamed_addr constant [76 x i8] c"backupBmPools ot bufPoolDepletion can not be defined without external pools\00", align 1
@.str.4 = private unnamed_addr constant [64 x i8] c"p_BackupBmPools must be smaller than extBufPools.numOfPoolsUsed\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [77 x i8] c"All p_BackupBmPools.poolIds must be included in extBufPools.extBufPool[n].id\00", align 1
@.str.6 = private unnamed_addr constant [92 x i8] c"bufPoolDepletion.numOfPools can't be larger than %d and can't be larger than numOfPoolsUsed\00", align 1
@.str.7 = private unnamed_addr constant [80 x i8] c"bufPoolDepletion.numOfPoolsToConsider can not be 0 when poolsGrpModeEnable=TRUE\00", align 1
@E_INVALID_STATE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [43 x i8] c"Pools selected for depletion are not used.\00", align 1
@.str.9 = private unnamed_addr constant [72 x i8] c"bufPoolDepletion.numOfPools is larger than the number of pools defined.\00", align 1
@.str.10 = private unnamed_addr constant [56 x i8] c"No pools defined for single buffer mode pool depletion.\00", align 1
@E_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FmSpCheckBufPoolsParams(%struct.TYPE_9__* %0, %struct.TYPE_11__* %1, %struct.TYPE_10__* %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i64 0, i64* %10, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %12 = icmp ne %struct.TYPE_9__* %11, null
  br i1 %12, label %13, label %74

13:                                               ; preds = %3
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @FM_PORT_MAX_NUM_OF_EXT_POOLS, align 4
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %13
  %20 = load i32, i32* @MAJOR, align 4
  %21 = load i32, i32* @E_INVALID_VALUE, align 4
  %22 = load i32, i32* @FM_PORT_MAX_NUM_OF_EXT_POOLS, align 4
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to i8*
  %25 = call i32 @RETURN_ERROR(i32 %20, i32 %21, i8* %24)
  br label %26

26:                                               ; preds = %19, %13
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %70, %26
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %73

33:                                               ; preds = %27
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @BM_MAX_NUM_OF_POOLS, align 4
  %43 = icmp sge i32 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %33
  %45 = load i32, i32* @MAJOR, align 4
  %46 = load i32, i32* @E_INVALID_VALUE, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @BM_MAX_NUM_OF_POOLS, align 4
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to i8*
  %51 = call i32 @RETURN_ERROR(i32 %45, i32 %46, i8* %50)
  br label %52

52:                                               ; preds = %44, %33
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %52
  %63 = load i32, i32* @MAJOR, align 4
  %64 = load i32, i32* @E_INVALID_VALUE, align 4
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = inttoptr i64 %66 to i8*
  %68 = call i32 @RETURN_ERROR(i32 %63, i32 %64, i8* %67)
  br label %69

69:                                               ; preds = %62, %52
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %7, align 4
  br label %27

73:                                               ; preds = %27
  br label %74

74:                                               ; preds = %73, %3
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %76 = icmp ne %struct.TYPE_9__* %75, null
  br i1 %76, label %87, label %77

77:                                               ; preds = %74
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %79 = icmp ne %struct.TYPE_11__* %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %77
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %82 = icmp ne %struct.TYPE_10__* %81, null
  br i1 %82, label %83, label %87

83:                                               ; preds = %80, %77
  %84 = load i32, i32* @MAJOR, align 4
  %85 = load i32, i32* @E_INVALID_VALUE, align 4
  %86 = call i32 @RETURN_ERROR(i32 %84, i32 %85, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.3, i64 0, i64 0))
  br label %87

87:                                               ; preds = %83, %80, %74
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %89 = icmp ne %struct.TYPE_11__* %88, null
  br i1 %89, label %90, label %154

90:                                               ; preds = %87
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp sge i32 %93, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %90
  %99 = load i32, i32* @MAJOR, align 4
  %100 = load i32, i32* @E_INVALID_VALUE, align 4
  %101 = call i32 @RETURN_ERROR(i32 %99, i32 %100, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.4, i64 0, i64 0))
  br label %102

102:                                              ; preds = %98, %90
  %103 = load i32, i32* @FALSE, align 4
  store i32 %103, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %104

104:                                              ; preds = %150, %102
  %105 = load i32, i32* %7, align 4
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp slt i32 %105, %108
  br i1 %109, label %110, label %153

110:                                              ; preds = %104
  store i32 0, i32* %8, align 4
  br label %111

111:                                              ; preds = %137, %110
  %112 = load i32, i32* %8, align 4
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp slt i32 %112, %115
  br i1 %116, label %117, label %140

117:                                              ; preds = %111
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %7, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %126, align 8
  %128 = load i32, i32* %8, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = icmp eq i32 %124, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %117
  %135 = load i32, i32* @TRUE, align 4
  store i32 %135, i32* %9, align 4
  br label %140

136:                                              ; preds = %117
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %8, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %8, align 4
  br label %111

140:                                              ; preds = %134, %111
  %141 = load i32, i32* %9, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %147, label %143

143:                                              ; preds = %140
  %144 = load i32, i32* @MAJOR, align 4
  %145 = load i32, i32* @E_INVALID_VALUE, align 4
  %146 = call i32 @RETURN_ERROR(i32 %144, i32 %145, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.5, i64 0, i64 0))
  br label %149

147:                                              ; preds = %140
  %148 = load i32, i32* @FALSE, align 4
  store i32 %148, i32* %9, align 4
  br label %149

149:                                              ; preds = %147, %143
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %7, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %7, align 4
  br label %104

153:                                              ; preds = %104
  br label %154

154:                                              ; preds = %153, %87
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %156 = icmp ne %struct.TYPE_10__* %155, null
  br i1 %156, label %157, label %253

157:                                              ; preds = %154
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 4
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %253

162:                                              ; preds = %157
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = sext i32 %168 to i64
  %170 = icmp sgt i64 %165, %169
  br i1 %170, label %171, label %178

171:                                              ; preds = %162
  %172 = load i32, i32* @MAJOR, align 4
  %173 = load i32, i32* @E_INVALID_VALUE, align 4
  %174 = load i32, i32* @FM_PORT_MAX_NUM_OF_EXT_POOLS, align 4
  %175 = sext i32 %174 to i64
  %176 = inttoptr i64 %175 to i8*
  %177 = call i32 @RETURN_ERROR(i32 %172, i32 %173, i8* %176)
  br label %178

178:                                              ; preds = %171, %162
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %187, label %183

183:                                              ; preds = %178
  %184 = load i32, i32* @MAJOR, align 4
  %185 = load i32, i32* @E_INVALID_VALUE, align 4
  %186 = call i32 @RETURN_ERROR(i32 %184, i32 %185, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.7, i64 0, i64 0))
  br label %187

187:                                              ; preds = %183, %178
  %188 = load i32, i32* @FALSE, align 4
  store i32 %188, i32* %9, align 4
  store i64 0, i64* %10, align 8
  store i32 0, i32* %7, align 4
  br label %189

189:                                              ; preds = %239, %187
  %190 = load i32, i32* %7, align 4
  %191 = load i32, i32* @BM_MAX_NUM_OF_POOLS, align 4
  %192 = icmp slt i32 %190, %191
  br i1 %192, label %193, label %242

193:                                              ; preds = %189
  %194 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 3
  %196 = load i64*, i64** %195, align 8
  %197 = load i32, i32* %7, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i64, i64* %196, i64 %198
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %238

202:                                              ; preds = %193
  store i32 0, i32* %8, align 4
  br label %203

203:                                              ; preds = %225, %202
  %204 = load i32, i32* %8, align 4
  %205 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = icmp slt i32 %204, %207
  br i1 %208, label %209, label %228

209:                                              ; preds = %203
  %210 = load i32, i32* %7, align 4
  %211 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %211, i32 0, i32 1
  %213 = load %struct.TYPE_8__*, %struct.TYPE_8__** %212, align 8
  %214 = load i32, i32* %8, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = icmp eq i32 %210, %218
  br i1 %219, label %220, label %224

220:                                              ; preds = %209
  %221 = load i32, i32* @TRUE, align 4
  store i32 %221, i32* %9, align 4
  %222 = load i64, i64* %10, align 8
  %223 = add nsw i64 %222, 1
  store i64 %223, i64* %10, align 8
  br label %228

224:                                              ; preds = %209
  br label %225

225:                                              ; preds = %224
  %226 = load i32, i32* %8, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %8, align 4
  br label %203

228:                                              ; preds = %220, %203
  %229 = load i32, i32* %9, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %235, label %231

231:                                              ; preds = %228
  %232 = load i32, i32* @MAJOR, align 4
  %233 = load i32, i32* @E_INVALID_STATE, align 4
  %234 = call i32 @RETURN_ERROR(i32 %232, i32 %233, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0))
  br label %237

235:                                              ; preds = %228
  %236 = load i32, i32* @FALSE, align 4
  store i32 %236, i32* %9, align 4
  br label %237

237:                                              ; preds = %235, %231
  br label %238

238:                                              ; preds = %237, %193
  br label %239

239:                                              ; preds = %238
  %240 = load i32, i32* %7, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %7, align 4
  br label %189

242:                                              ; preds = %189
  %243 = load i64, i64* %10, align 8
  %244 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %245 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = icmp ne i64 %243, %246
  br i1 %247, label %248, label %252

248:                                              ; preds = %242
  %249 = load i32, i32* @MAJOR, align 4
  %250 = load i32, i32* @E_INVALID_VALUE, align 4
  %251 = call i32 @RETURN_ERROR(i32 %249, i32 %250, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.9, i64 0, i64 0))
  br label %252

252:                                              ; preds = %248, %242
  br label %253

253:                                              ; preds = %252, %157, %154
  %254 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %255 = icmp ne %struct.TYPE_10__* %254, null
  br i1 %255, label %256, label %324

256:                                              ; preds = %253
  %257 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %258 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %257, i32 0, i32 2
  %259 = load i64, i64* %258, align 8
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %324

261:                                              ; preds = %256
  %262 = load i32, i32* @FALSE, align 4
  store i32 %262, i32* %9, align 4
  store i64 0, i64* %10, align 8
  store i32 0, i32* %7, align 4
  br label %263

263:                                              ; preds = %313, %261
  %264 = load i32, i32* %7, align 4
  %265 = load i32, i32* @BM_MAX_NUM_OF_POOLS, align 4
  %266 = icmp slt i32 %264, %265
  br i1 %266, label %267, label %316

267:                                              ; preds = %263
  %268 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %269 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %268, i32 0, i32 1
  %270 = load i64*, i64** %269, align 8
  %271 = load i32, i32* %7, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i64, i64* %270, i64 %272
  %274 = load i64, i64* %273, align 8
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %312

276:                                              ; preds = %267
  store i32 0, i32* %8, align 4
  br label %277

277:                                              ; preds = %299, %276
  %278 = load i32, i32* %8, align 4
  %279 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %280 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = icmp slt i32 %278, %281
  br i1 %282, label %283, label %302

283:                                              ; preds = %277
  %284 = load i32, i32* %7, align 4
  %285 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %286 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %285, i32 0, i32 1
  %287 = load %struct.TYPE_8__*, %struct.TYPE_8__** %286, align 8
  %288 = load i32, i32* %8, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %287, i64 %289
  %291 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 4
  %293 = icmp eq i32 %284, %292
  br i1 %293, label %294, label %298

294:                                              ; preds = %283
  %295 = load i32, i32* @TRUE, align 4
  store i32 %295, i32* %9, align 4
  %296 = load i64, i64* %10, align 8
  %297 = add nsw i64 %296, 1
  store i64 %297, i64* %10, align 8
  br label %302

298:                                              ; preds = %283
  br label %299

299:                                              ; preds = %298
  %300 = load i32, i32* %8, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %8, align 4
  br label %277

302:                                              ; preds = %294, %277
  %303 = load i32, i32* %9, align 4
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %309, label %305

305:                                              ; preds = %302
  %306 = load i32, i32* @MAJOR, align 4
  %307 = load i32, i32* @E_INVALID_STATE, align 4
  %308 = call i32 @RETURN_ERROR(i32 %306, i32 %307, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0))
  br label %311

309:                                              ; preds = %302
  %310 = load i32, i32* @FALSE, align 4
  store i32 %310, i32* %9, align 4
  br label %311

311:                                              ; preds = %309, %305
  br label %312

312:                                              ; preds = %311, %267
  br label %313

313:                                              ; preds = %312
  %314 = load i32, i32* %7, align 4
  %315 = add nsw i32 %314, 1
  store i32 %315, i32* %7, align 4
  br label %263

316:                                              ; preds = %263
  %317 = load i64, i64* %10, align 8
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %323, label %319

319:                                              ; preds = %316
  %320 = load i32, i32* @MAJOR, align 4
  %321 = load i32, i32* @E_INVALID_VALUE, align 4
  %322 = call i32 @RETURN_ERROR(i32 %320, i32 %321, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.10, i64 0, i64 0))
  br label %323

323:                                              ; preds = %319, %316
  br label %324

324:                                              ; preds = %323, %256, %253
  %325 = load i32, i32* @E_OK, align 4
  ret i32 %325
}

declare dso_local i32 @RETURN_ERROR(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
