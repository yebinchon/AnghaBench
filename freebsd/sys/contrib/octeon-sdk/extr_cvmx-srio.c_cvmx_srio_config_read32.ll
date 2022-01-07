; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-srio.c_cvmx_srio_config_read32.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-srio.c_cvmx_srio_config_read32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@__cvmx_srio_state = common dso_local global %struct.TYPE_2__* null, align 8
@CVMX_SRIO_INITIALIZE_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"SRIO%d: Local read [0x%06x] <= 0x%08x\0A\00", align 1
@OCTEON_CN63XX_PASS1_X = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"SRIO%d: Remote read [id=0x%04x hop=%3d offset=0x%06x] <= \00", align 1
@CVMX_SRIO_CONFIG_PRIORITY = common dso_local global i32 0, align 4
@CVMX_CLOCK_CORE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"timeout\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"0x%08x\0A\00", align 1
@CVMX_SRIO_WRITE_MODE_MAINTENANCE = common dso_local global i32 0, align 4
@CVMX_SRIO_READ_MODE_MAINTENANCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_srio_config_read32(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca [64 x i8], align 16
  %22 = alloca i64, align 8
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %23 = load i32, i32* %11, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %50

25:                                               ; preds = %7
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %14, align 4
  %28 = load i32*, i32** %15, align 8
  %29 = call i32 @__cvmx_srio_local_read32(i32 %26, i32 %27, i32* %28)
  store i32 %29, i32* %16, align 4
  %30 = load i32, i32* %16, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %25
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__cvmx_srio_state, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @CVMX_SRIO_INITIALIZE_DEBUG, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %32
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %14, align 4
  %45 = load i32*, i32** %15, align 8
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i8*, ...) @cvmx_dprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %44, i32 %46)
  br label %48

48:                                               ; preds = %42, %32, %25
  %49 = load i32, i32* %16, align 4
  store i32 %49, i32* %8, align 4
  br label %348

50:                                               ; preds = %7
  %51 = load i32, i32* @OCTEON_CN63XX_PASS1_X, align 4
  %52 = call i64 @OCTEON_IS_MODEL(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %294

54:                                               ; preds = %50
  store i32 0, i32* %18, align 4
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__cvmx_srio_state, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @CVMX_SRIO_INITIALIZE_DEBUG, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %54
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* %14, align 4
  %69 = call i32 (i8*, ...) @cvmx_dprintf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %65, i32 %66, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %64, %54
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %70
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @CVMX_SRIOMAINTX_SEC_DEV_ID(i32 %75)
  %77 = call i32 @__cvmx_srio_local_read32(i32 %74, i32 %76, i32* %19)
  br label %83

78:                                               ; preds = %70
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @CVMX_SRIOMAINTX_PRI_DEV_ID(i32 %80)
  %82 = call i32 @__cvmx_srio_local_read32(i32 %79, i32 %81, i32* %19)
  br label %83

83:                                               ; preds = %78, %73
  %84 = load i32, i32* %12, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %140

86:                                               ; preds = %83
  %87 = load i32, i32* %19, align 4
  %88 = and i32 %87, 65535
  store i32 %88, i32* %19, align 4
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @CVMX_SRIOMAINTX_IR_SP_TX_CTRL(i32 %90)
  %92 = call i32 @__cvmx_srio_local_write32(i32 %89, i32 %91, i32 720896)
  %93 = load i32, i32* @CVMX_SRIO_CONFIG_PRIORITY, align 4
  %94 = shl i32 %93, 30
  %95 = load i32, i32* %18, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %18, align 4
  %97 = load i32, i32* %18, align 4
  %98 = or i32 %97, 268435456
  store i32 %98, i32* %18, align 4
  %99 = load i32, i32* %18, align 4
  %100 = or i32 %99, 134217728
  store i32 %100, i32* %18, align 4
  %101 = load i32, i32* %11, align 4
  %102 = shl i32 %101, 8
  %103 = load i32, i32* %18, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %18, align 4
  %105 = load i32, i32* %19, align 4
  %106 = ashr i32 %105, 8
  %107 = load i32, i32* %18, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %18, align 4
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* %9, align 4
  %111 = call i32 @CVMX_SRIOMAINTX_IR_SP_TX_DATA(i32 %110)
  %112 = load i32, i32* %18, align 4
  %113 = call i32 @__cvmx_srio_local_write32(i32 %109, i32 %111, i32 %112)
  store i32 0, i32* %18, align 4
  %114 = load i32, i32* %19, align 4
  %115 = shl i32 %114, 24
  %116 = load i32, i32* %18, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %18, align 4
  %118 = load i32, i32* %18, align 4
  store i32 %118, i32* %18, align 4
  %119 = load i32, i32* %18, align 4
  %120 = or i32 %119, 524288
  store i32 %120, i32* %18, align 4
  %121 = load i32, i32* %18, align 4
  %122 = or i32 %121, 49152
  store i32 %122, i32* %18, align 4
  %123 = load i32, i32* %13, align 4
  %124 = load i32, i32* %18, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %18, align 4
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* %9, align 4
  %128 = call i32 @CVMX_SRIOMAINTX_IR_SP_TX_DATA(i32 %127)
  %129 = load i32, i32* %18, align 4
  %130 = call i32 @__cvmx_srio_local_write32(i32 %126, i32 %128, i32 %129)
  store i32 0, i32* %18, align 4
  %131 = load i32, i32* %14, align 4
  %132 = shl i32 %131, 8
  %133 = load i32, i32* %18, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %18, align 4
  %135 = load i32, i32* %9, align 4
  %136 = load i32, i32* %9, align 4
  %137 = call i32 @CVMX_SRIOMAINTX_IR_SP_TX_DATA(i32 %136)
  %138 = load i32, i32* %18, align 4
  %139 = call i32 @__cvmx_srio_local_write32(i32 %135, i32 %137, i32 %138)
  br label %195

140:                                              ; preds = %83
  %141 = load i32, i32* %19, align 4
  %142 = ashr i32 %141, 16
  %143 = and i32 %142, 255
  store i32 %143, i32* %19, align 4
  %144 = load i32, i32* %9, align 4
  %145 = load i32, i32* %9, align 4
  %146 = call i32 @CVMX_SRIOMAINTX_IR_SP_TX_CTRL(i32 %145)
  %147 = call i32 @__cvmx_srio_local_write32(i32 %144, i32 %146, i32 589824)
  %148 = load i32, i32* @CVMX_SRIO_CONFIG_PRIORITY, align 4
  %149 = shl i32 %148, 30
  %150 = load i32, i32* %18, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %18, align 4
  %152 = load i32, i32* %18, align 4
  store i32 %152, i32* %18, align 4
  %153 = load i32, i32* %18, align 4
  %154 = or i32 %153, 134217728
  store i32 %154, i32* %18, align 4
  %155 = load i32, i32* %11, align 4
  %156 = shl i32 %155, 16
  %157 = load i32, i32* %18, align 4
  %158 = or i32 %157, %156
  store i32 %158, i32* %18, align 4
  %159 = load i32, i32* %19, align 4
  %160 = shl i32 %159, 8
  %161 = load i32, i32* %18, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %18, align 4
  %163 = load i32, i32* %18, align 4
  store i32 %163, i32* %18, align 4
  %164 = load i32, i32* %18, align 4
  %165 = or i32 %164, 8
  store i32 %165, i32* %18, align 4
  %166 = load i32, i32* %9, align 4
  %167 = load i32, i32* %9, align 4
  %168 = call i32 @CVMX_SRIOMAINTX_IR_SP_TX_DATA(i32 %167)
  %169 = load i32, i32* %18, align 4
  %170 = call i32 @__cvmx_srio_local_write32(i32 %166, i32 %168, i32 %169)
  store i32 0, i32* %18, align 4
  %171 = load i32, i32* %18, align 4
  %172 = or i32 %171, -1073741824
  store i32 %172, i32* %18, align 4
  %173 = load i32, i32* %13, align 4
  %174 = shl i32 %173, 16
  %175 = load i32, i32* %18, align 4
  %176 = or i32 %175, %174
  store i32 %176, i32* %18, align 4
  %177 = load i32, i32* %14, align 4
  %178 = ashr i32 %177, 8
  %179 = load i32, i32* %18, align 4
  %180 = or i32 %179, %178
  store i32 %180, i32* %18, align 4
  %181 = load i32, i32* %9, align 4
  %182 = load i32, i32* %9, align 4
  %183 = call i32 @CVMX_SRIOMAINTX_IR_SP_TX_DATA(i32 %182)
  %184 = load i32, i32* %18, align 4
  %185 = call i32 @__cvmx_srio_local_write32(i32 %181, i32 %183, i32 %184)
  store i32 0, i32* %18, align 4
  %186 = load i32, i32* %14, align 4
  %187 = shl i32 %186, 24
  %188 = load i32, i32* %18, align 4
  %189 = or i32 %188, %187
  store i32 %189, i32* %18, align 4
  %190 = load i32, i32* %9, align 4
  %191 = load i32, i32* %9, align 4
  %192 = call i32 @CVMX_SRIOMAINTX_IR_SP_TX_DATA(i32 %191)
  %193 = load i32, i32* %18, align 4
  %194 = call i32 @__cvmx_srio_local_write32(i32 %190, i32 %192, i32 %193)
  br label %195

195:                                              ; preds = %140, %86
  %196 = load i32, i32* @CVMX_CLOCK_CORE, align 4
  %197 = call i32 @cvmx_clock_get_rate(i32 %196)
  %198 = sdiv i32 %197, 10
  %199 = sext i32 %198 to i64
  %200 = load i32, i32* @CVMX_CLOCK_CORE, align 4
  %201 = call i64 @cvmx_clock_get_count(i32 %200)
  %202 = add nsw i64 %199, %201
  store i64 %202, i64* %20, align 8
  br label %203

203:                                              ; preds = %228, %195
  %204 = load i32, i32* %9, align 4
  %205 = getelementptr inbounds [64 x i8], [64 x i8]* %21, i64 0, i64 0
  %206 = call i32 @cvmx_srio_receive_spf(i32 %204, i8* %205, i32 64)
  store i32 %206, i32* %17, align 4
  %207 = load i32, i32* %17, align 4
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %227

209:                                              ; preds = %203
  %210 = load i32, i32* @CVMX_CLOCK_CORE, align 4
  %211 = call i64 @cvmx_clock_get_count(i32 %210)
  %212 = load i64, i64* %20, align 8
  %213 = icmp sgt i64 %211, %212
  br i1 %213, label %214, label %227

214:                                              ; preds = %209
  %215 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__cvmx_srio_state, align 8
  %216 = load i32, i32* %9, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %215, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* @CVMX_SRIO_INITIALIZE_DEBUG, align 4
  %222 = and i32 %220, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %226

224:                                              ; preds = %214
  %225 = call i32 (i8*, ...) @cvmx_dprintf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %226

226:                                              ; preds = %224, %214
  store i32 -1, i32* %17, align 4
  br label %227

227:                                              ; preds = %226, %209, %203
  br label %228

228:                                              ; preds = %227
  %229 = load i32, i32* %17, align 4
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %203, label %231

231:                                              ; preds = %228
  %232 = load i32, i32* %17, align 4
  %233 = load i32, i32* %12, align 4
  %234 = icmp ne i32 %233, 0
  %235 = zext i1 %234 to i64
  %236 = select i1 %234, i32 23, i32 19
  %237 = icmp eq i32 %232, %236
  br i1 %237, label %238, label %290

238:                                              ; preds = %231
  %239 = load i32, i32* %12, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %258

241:                                              ; preds = %238
  %242 = load i32, i32* %14, align 4
  %243 = and i32 %242, 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %251

245:                                              ; preds = %241
  %246 = getelementptr inbounds [64 x i8], [64 x i8]* %21, i64 0, i64 0
  %247 = getelementptr inbounds i8, i8* %246, i64 15
  %248 = bitcast i8* %247 to i32*
  %249 = load i32, i32* %248, align 4
  %250 = load i32*, i32** %15, align 8
  store i32 %249, i32* %250, align 4
  br label %257

251:                                              ; preds = %241
  %252 = getelementptr inbounds [64 x i8], [64 x i8]* %21, i64 0, i64 0
  %253 = getelementptr inbounds i8, i8* %252, i64 11
  %254 = bitcast i8* %253 to i32*
  %255 = load i32, i32* %254, align 4
  %256 = load i32*, i32** %15, align 8
  store i32 %255, i32* %256, align 4
  br label %257

257:                                              ; preds = %251, %245
  br label %275

258:                                              ; preds = %238
  %259 = load i32, i32* %14, align 4
  %260 = and i32 %259, 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %268

262:                                              ; preds = %258
  %263 = getelementptr inbounds [64 x i8], [64 x i8]* %21, i64 0, i64 0
  %264 = getelementptr inbounds i8, i8* %263, i64 13
  %265 = bitcast i8* %264 to i32*
  %266 = load i32, i32* %265, align 4
  %267 = load i32*, i32** %15, align 8
  store i32 %266, i32* %267, align 4
  br label %274

268:                                              ; preds = %258
  %269 = getelementptr inbounds [64 x i8], [64 x i8]* %21, i64 0, i64 0
  %270 = getelementptr inbounds i8, i8* %269, i64 9
  %271 = bitcast i8* %270 to i32*
  %272 = load i32, i32* %271, align 4
  %273 = load i32*, i32** %15, align 8
  store i32 %272, i32* %273, align 4
  br label %274

274:                                              ; preds = %268, %262
  br label %275

275:                                              ; preds = %274, %257
  %276 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__cvmx_srio_state, align 8
  %277 = load i32, i32* %9, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %276, i64 %278
  %280 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  %282 = load i32, i32* @CVMX_SRIO_INITIALIZE_DEBUG, align 4
  %283 = and i32 %281, %282
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %289

285:                                              ; preds = %275
  %286 = load i32*, i32** %15, align 8
  %287 = load i32, i32* %286, align 4
  %288 = call i32 (i8*, ...) @cvmx_dprintf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %287)
  br label %289

289:                                              ; preds = %285, %275
  store i32 0, i32* %17, align 4
  br label %292

290:                                              ; preds = %231
  %291 = load i32*, i32** %15, align 8
  store i32 -1, i32* %291, align 4
  store i32 -1, i32* %17, align 4
  br label %292

292:                                              ; preds = %290, %289
  %293 = load i32, i32* %17, align 4
  store i32 %293, i32* %8, align 4
  br label %348

294:                                              ; preds = %50
  %295 = load i32, i32* %9, align 4
  %296 = load i32, i32* @CVMX_SRIO_WRITE_MODE_MAINTENANCE, align 4
  %297 = load i32, i32* @CVMX_SRIO_CONFIG_PRIORITY, align 4
  %298 = load i32, i32* @CVMX_SRIO_READ_MODE_MAINTENANCE, align 4
  %299 = load i32, i32* @CVMX_SRIO_CONFIG_PRIORITY, align 4
  %300 = load i32, i32* %10, align 4
  %301 = load i32, i32* %11, align 4
  %302 = load i32, i32* %12, align 4
  %303 = load i32, i32* %14, align 4
  %304 = load i32, i32* %13, align 4
  %305 = shl i32 %304, 24
  %306 = add nsw i32 %303, %305
  %307 = call i64 @cvmx_srio_physical_map(i32 %295, i32 %296, i32 %297, i32 %298, i32 %299, i32 %300, i32 %301, i32 %302, i32 %306, i32 4)
  store i64 %307, i64* %22, align 8
  %308 = load i64, i64* %22, align 8
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %311, label %310

310:                                              ; preds = %294
  store i32 -1, i32* %8, align 4
  br label %348

311:                                              ; preds = %294
  %312 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__cvmx_srio_state, align 8
  %313 = load i32, i32* %9, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %312, i64 %314
  %316 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 4
  %318 = load i32, i32* @CVMX_SRIO_INITIALIZE_DEBUG, align 4
  %319 = and i32 %317, %318
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %327

321:                                              ; preds = %311
  %322 = load i32, i32* %9, align 4
  %323 = load i32, i32* %11, align 4
  %324 = load i32, i32* %13, align 4
  %325 = load i32, i32* %14, align 4
  %326 = call i32 (i8*, ...) @cvmx_dprintf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %322, i32 %323, i32 %324, i32 %325)
  br label %327

327:                                              ; preds = %321, %311
  %328 = load i64, i64* %22, align 8
  %329 = call i32 @CVMX_ADD_IO_SEG(i64 %328)
  %330 = call i32 @cvmx_read64_uint32(i32 %329)
  %331 = load i32*, i32** %15, align 8
  store i32 %330, i32* %331, align 4
  %332 = load i64, i64* %22, align 8
  %333 = call i32 @cvmx_srio_physical_unmap(i64 %332, i32 4)
  %334 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__cvmx_srio_state, align 8
  %335 = load i32, i32* %9, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %334, i64 %336
  %338 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 4
  %340 = load i32, i32* @CVMX_SRIO_INITIALIZE_DEBUG, align 4
  %341 = and i32 %339, %340
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %347

343:                                              ; preds = %327
  %344 = load i32*, i32** %15, align 8
  %345 = load i32, i32* %344, align 4
  %346 = call i32 (i8*, ...) @cvmx_dprintf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %345)
  br label %347

347:                                              ; preds = %343, %327
  store i32 0, i32* %8, align 4
  br label %348

348:                                              ; preds = %347, %310, %292, %48
  %349 = load i32, i32* %8, align 4
  ret i32 %349
}

declare dso_local i32 @__cvmx_srio_local_read32(i32, i32, i32*) #1

declare dso_local i32 @cvmx_dprintf(i8*, ...) #1

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

declare dso_local i32 @CVMX_SRIOMAINTX_SEC_DEV_ID(i32) #1

declare dso_local i32 @CVMX_SRIOMAINTX_PRI_DEV_ID(i32) #1

declare dso_local i32 @__cvmx_srio_local_write32(i32, i32, i32) #1

declare dso_local i32 @CVMX_SRIOMAINTX_IR_SP_TX_CTRL(i32) #1

declare dso_local i32 @CVMX_SRIOMAINTX_IR_SP_TX_DATA(i32) #1

declare dso_local i32 @cvmx_clock_get_rate(i32) #1

declare dso_local i64 @cvmx_clock_get_count(i32) #1

declare dso_local i32 @cvmx_srio_receive_spf(i32, i8*, i32) #1

declare dso_local i64 @cvmx_srio_physical_map(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @cvmx_read64_uint32(i32) #1

declare dso_local i32 @CVMX_ADD_IO_SEG(i64) #1

declare dso_local i32 @cvmx_srio_physical_unmap(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
