; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Port/extr_fm_port.c_FM_PORT_AnalyzePerformanceParams.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Port/extr_fm_port.c_FM_PORT_AnalyzePerformanceParams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_16__ = type { i32, i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@E_INVALID_HANDLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Analyzing Performance parameters for port (type %d, id%d)\0A\00", align 1
@e_FM_PORT_TYPE_OH_OFFLINE_PARSING = common dso_local global i64 0, align 8
@e_FM_PORT_TYPE_OH_HOST_COMMAND = common dso_local global i64 0, align 8
@E_OK = common dso_local global i32 0, align 4
@MAJOR = common dso_local global i32 0, align 4
@NO_MSG = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@e_FM_PORT_COUNTERS_TASK_UTIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"Max num of defined port tasks (%d) utilized - Please enlarge\0A\00", align 1
@e_FM_PORT_COUNTERS_DMA_UTIL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [65 x i8] c"Max num of defined port openDmas (%d) utilized - Please enlarge\0A\00", align 1
@e_FM_PORT_COUNTERS_FIFO_UTIL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [62 x i8] c"Max size of defined port fifo (%d) utilized - Please enlarge\0A\00", align 1
@E_INVALID_STATE = common dso_local global i32 0, align 4
@BMI_FIFO_UNITS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"best vals: tasks %d, dmas %d, fifos %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FM_PORT_AnalyzePerformanceParams(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_16__, align 4
  %5 = alloca %struct.TYPE_16__, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %9 = load i64, i64* %2, align 8
  %10 = inttoptr i64 %9 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %10, %struct.TYPE_17__** %3, align 8
  %11 = load i32, i32* @FALSE, align 4
  store i32 %11, i32* %8, align 4
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %13 = load i32, i32* @E_INVALID_HANDLE, align 4
  %14 = call i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_17__* %12, i32 %13)
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = trunc i64 %17 to i32
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = call i32 (i8*, i32, ...) @XX_Print(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %21)
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i8*
  %28 = ptrtoint i8* %27 to i32
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %4, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @e_FM_PORT_TYPE_OH_OFFLINE_PARSING, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %1
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @e_FM_PORT_TYPE_OH_HOST_COMMAND, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %35, %1
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %4, i32 0, i32 1
  store i32 0, i32* %42, align 4
  br label %45

43:                                               ; preds = %35
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %4, i32 0, i32 1
  store i32 1, i32* %44, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to i8*
  %51 = ptrtoint i8* %50 to i32
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %4, i32 0, i32 2
  store i32 %51, i32* %52, align 4
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %4, i32 0, i32 3
  store i32 %56, i32* %57, align 4
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %59 = load i32, i32* @FALSE, align 4
  %60 = call i32 @FM_PORT_SetPerformanceCounters(%struct.TYPE_17__* %58, i32 %59)
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %62 = call i32 @ClearPerfCnts(%struct.TYPE_17__* %61)
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %64 = call i32 @FM_PORT_SetPerformanceCountersParams(%struct.TYPE_17__* %63, %struct.TYPE_16__* %4)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* @E_OK, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %45
  %68 = load i32, i32* @MAJOR, align 4
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @NO_MSG, align 4
  %71 = call i32 @RETURN_ERROR(i32 %68, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %67, %45
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %74 = load i32, i32* @TRUE, align 4
  %75 = call i32 @FM_PORT_SetPerformanceCounters(%struct.TYPE_17__* %73, i32 %74)
  %76 = call i32 @XX_UDelay(i32 1000000)
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %78 = load i32, i32* @FALSE, align 4
  %79 = call i32 @FM_PORT_SetPerformanceCounters(%struct.TYPE_17__* %77, i32 %78)
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %81 = load i32, i32* @e_FM_PORT_COUNTERS_TASK_UTIL, align 4
  %82 = call i64 @FM_PORT_GetCounter(%struct.TYPE_17__* %80, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %72
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = trunc i64 %88 to i32
  %90 = call i32 (i8*, i32, ...) @XX_Print(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* @TRUE, align 4
  store i32 %91, i32* %8, align 4
  br label %92

92:                                               ; preds = %84, %72
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %94 = load i32, i32* @e_FM_PORT_COUNTERS_DMA_UTIL, align 4
  %95 = call i64 @FM_PORT_GetCounter(%struct.TYPE_17__* %93, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %92
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = trunc i64 %101 to i32
  %103 = call i32 (i8*, i32, ...) @XX_Print(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* @TRUE, align 4
  store i32 %104, i32* %8, align 4
  br label %105

105:                                              ; preds = %97, %92
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %107 = load i32, i32* @e_FM_PORT_COUNTERS_FIFO_UTIL, align 4
  %108 = call i64 @FM_PORT_GetCounter(%struct.TYPE_17__* %106, i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %105
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 (i8*, i32, ...) @XX_Print(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0), i32 %114)
  %116 = load i32, i32* @TRUE, align 4
  store i32 %116, i32* %8, align 4
  br label %117

117:                                              ; preds = %110, %105
  %118 = load i32, i32* %8, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %117
  %121 = load i32, i32* @MAJOR, align 4
  %122 = load i32, i32* @E_INVALID_STATE, align 4
  %123 = load i32, i32* @NO_MSG, align 4
  %124 = call i32 @RETURN_ERROR(i32 %121, i32 %122, i32 %123)
  br label %125

125:                                              ; preds = %120, %117
  %126 = call i32 @memset(%struct.TYPE_16__* %5, i32 0, i32 16)
  br label %127

127:                                              ; preds = %245, %125
  %128 = load i32, i32* @TRUE, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %246

130:                                              ; preds = %127
  %131 = load i32, i32* @FALSE, align 4
  store i32 %131, i32* %7, align 4
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %4, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = icmp ne i32 %133, 1
  br i1 %134, label %135, label %144

135:                                              ; preds = %130
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %144, label %139

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %4, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %141, -1
  store i32 %142, i32* %140, align 4
  %143 = load i32, i32* @TRUE, align 4
  store i32 %143, i32* %7, align 4
  br label %144

144:                                              ; preds = %139, %135, %130
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %4, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %146, 1
  br i1 %147, label %148, label %157

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %157, label %152

152:                                              ; preds = %148
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %4, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = add nsw i32 %154, -1
  store i32 %155, i32* %153, align 4
  %156 = load i32, i32* @TRUE, align 4
  store i32 %156, i32* %7, align 4
  br label %157

157:                                              ; preds = %152, %148, %144
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %4, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @BMI_FIFO_UNITS, align 4
  %161 = icmp ne i32 %159, %160
  br i1 %161, label %162, label %172

162:                                              ; preds = %157
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %172, label %166

166:                                              ; preds = %162
  %167 = load i32, i32* @BMI_FIFO_UNITS, align 4
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %4, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = sub nsw i32 %169, %167
  store i32 %170, i32* %168, align 4
  %171 = load i32, i32* @TRUE, align 4
  store i32 %171, i32* %7, align 4
  br label %172

172:                                              ; preds = %166, %162, %157
  %173 = load i32, i32* %7, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %176, label %175

175:                                              ; preds = %172
  br label %246

176:                                              ; preds = %172
  %177 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %178 = call i32 @ClearPerfCnts(%struct.TYPE_17__* %177)
  %179 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %180 = call i32 @FM_PORT_SetPerformanceCountersParams(%struct.TYPE_17__* %179, %struct.TYPE_16__* %4)
  store i32 %180, i32* %6, align 4
  %181 = load i32, i32* @E_OK, align 4
  %182 = icmp ne i32 %180, %181
  br i1 %182, label %183, label %188

183:                                              ; preds = %176
  %184 = load i32, i32* @MAJOR, align 4
  %185 = load i32, i32* %6, align 4
  %186 = load i32, i32* @NO_MSG, align 4
  %187 = call i32 @RETURN_ERROR(i32 %184, i32 %185, i32 %186)
  br label %188

188:                                              ; preds = %183, %176
  %189 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %190 = load i32, i32* @TRUE, align 4
  %191 = call i32 @FM_PORT_SetPerformanceCounters(%struct.TYPE_17__* %189, i32 %190)
  %192 = call i32 @XX_UDelay(i32 1000000)
  %193 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %194 = load i32, i32* @FALSE, align 4
  %195 = call i32 @FM_PORT_SetPerformanceCounters(%struct.TYPE_17__* %193, i32 %194)
  %196 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %212, label %199

199:                                              ; preds = %188
  %200 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %201 = load i32, i32* @e_FM_PORT_COUNTERS_TASK_UTIL, align 4
  %202 = call i64 @FM_PORT_GetCounter(%struct.TYPE_17__* %200, i32 %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %212

204:                                              ; preds = %199
  %205 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %4, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = add nsw i32 %206, 2
  %208 = sext i32 %207 to i64
  %209 = inttoptr i64 %208 to i8*
  %210 = ptrtoint i8* %209 to i32
  %211 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  store i32 %210, i32* %211, align 4
  br label %212

212:                                              ; preds = %204, %199, %188
  %213 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 2
  %214 = load i32, i32* %213, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %229, label %216

216:                                              ; preds = %212
  %217 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %218 = load i32, i32* @e_FM_PORT_COUNTERS_DMA_UTIL, align 4
  %219 = call i64 @FM_PORT_GetCounter(%struct.TYPE_17__* %217, i32 %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %229

221:                                              ; preds = %216
  %222 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %4, i32 0, i32 2
  %223 = load i32, i32* %222, align 4
  %224 = add nsw i32 %223, 2
  %225 = sext i32 %224 to i64
  %226 = inttoptr i64 %225 to i8*
  %227 = ptrtoint i8* %226 to i32
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 2
  store i32 %227, i32* %228, align 4
  br label %229

229:                                              ; preds = %221, %216, %212
  %230 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 3
  %231 = load i32, i32* %230, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %245, label %233

233:                                              ; preds = %229
  %234 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %235 = load i32, i32* @e_FM_PORT_COUNTERS_FIFO_UTIL, align 4
  %236 = call i64 @FM_PORT_GetCounter(%struct.TYPE_17__* %234, i32 %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %245

238:                                              ; preds = %233
  %239 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %4, i32 0, i32 3
  %240 = load i32, i32* %239, align 4
  %241 = load i32, i32* @BMI_FIFO_UNITS, align 4
  %242 = mul nsw i32 2, %241
  %243 = add nsw i32 %240, %242
  %244 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 3
  store i32 %243, i32* %244, align 4
  br label %245

245:                                              ; preds = %238, %233, %229
  br label %127

246:                                              ; preds = %175, %127
  %247 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 2
  %250 = load i32, i32* %249, align 4
  %251 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 3
  %252 = load i32, i32* %251, align 4
  %253 = call i32 (i8*, i32, ...) @XX_Print(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %248, i32 %250, i32 %252)
  %254 = load i32, i32* @E_OK, align 4
  ret i32 %254
}

declare dso_local i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @XX_Print(i8*, i32, ...) #1

declare dso_local i32 @FM_PORT_SetPerformanceCounters(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @ClearPerfCnts(%struct.TYPE_17__*) #1

declare dso_local i32 @FM_PORT_SetPerformanceCountersParams(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

declare dso_local i32 @RETURN_ERROR(i32, i32, i32) #1

declare dso_local i32 @XX_UDelay(i32) #1

declare dso_local i64 @FM_PORT_GetCounter(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_16__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
