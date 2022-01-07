; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-srio.c_cvmx_srio_config_write32.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-srio.c_cvmx_srio_config_write32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@__cvmx_srio_state = common dso_local global %struct.TYPE_2__* null, align 8
@CVMX_SRIO_INITIALIZE_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"SRIO%d: Local write[0x%06x] => 0x%08x\0A\00", align 1
@OCTEON_CN63XX_PASS1_X = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"SRIO%d: Remote write[id=0x%04x hop=%3d offset=0x%06x] => 0x%08x\0A\00", align 1
@CVMX_SRIO_CONFIG_PRIORITY = common dso_local global i32 0, align 4
@CVMX_CLOCK_CORE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"timeout\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"SRIO%d: Remote write failed\0A\00", align 1
@CVMX_SRIO_WRITE_MODE_MAINTENANCE = common dso_local global i32 0, align 4
@CVMX_SRIO_READ_MODE_MAINTENANCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_srio_config_write32(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca [64 x i8], align 16
  %21 = alloca i64, align 8
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %44

24:                                               ; preds = %7
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__cvmx_srio_state, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @CVMX_SRIO_INITIALIZE_DEBUG, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %24
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %14, align 4
  %37 = load i32, i32* %15, align 4
  %38 = call i32 (i8*, ...) @cvmx_dprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %34, %24
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %14, align 4
  %42 = load i32, i32* %15, align 4
  %43 = call i32 @__cvmx_srio_local_write32(i32 %40, i32 %41, i32 %42)
  store i32 %43, i32* %8, align 4
  br label %364

44:                                               ; preds = %7
  %45 = load i32, i32* @OCTEON_CN63XX_PASS1_X, align 4
  %46 = call i64 @OCTEON_IS_MODEL(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %323

48:                                               ; preds = %44
  store i32 0, i32* %17, align 4
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__cvmx_srio_state, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @CVMX_SRIO_INITIALIZE_DEBUG, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %48
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* %15, align 4
  %64 = call i32 (i8*, ...) @cvmx_dprintf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %59, i32 %60, i32 %61, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %58, %48
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %65
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @CVMX_SRIOMAINTX_SEC_DEV_ID(i32 %70)
  %72 = call i32 @__cvmx_srio_local_read32(i32 %69, i32 %71, i32* %18)
  br label %78

73:                                               ; preds = %65
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @CVMX_SRIOMAINTX_PRI_DEV_ID(i32 %75)
  %77 = call i32 @__cvmx_srio_local_read32(i32 %74, i32 %76, i32* %18)
  br label %78

78:                                               ; preds = %73, %68
  %79 = load i32, i32* %12, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %178

81:                                               ; preds = %78
  %82 = load i32, i32* %18, align 4
  %83 = and i32 %82, 65535
  store i32 %83, i32* %18, align 4
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @CVMX_SRIOMAINTX_IR_SP_TX_CTRL(i32 %85)
  %87 = call i32 @__cvmx_srio_local_write32(i32 %84, i32 %86, i32 1245184)
  %88 = load i32, i32* @CVMX_SRIO_CONFIG_PRIORITY, align 4
  %89 = shl i32 %88, 30
  %90 = load i32, i32* %17, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %17, align 4
  %92 = load i32, i32* %17, align 4
  %93 = or i32 %92, 268435456
  store i32 %93, i32* %17, align 4
  %94 = load i32, i32* %17, align 4
  %95 = or i32 %94, 134217728
  store i32 %95, i32* %17, align 4
  %96 = load i32, i32* %11, align 4
  %97 = shl i32 %96, 8
  %98 = load i32, i32* %17, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %17, align 4
  %100 = load i32, i32* %18, align 4
  %101 = ashr i32 %100, 8
  %102 = load i32, i32* %17, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %17, align 4
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* %9, align 4
  %106 = call i32 @CVMX_SRIOMAINTX_IR_SP_TX_DATA(i32 %105)
  %107 = load i32, i32* %17, align 4
  %108 = call i32 @__cvmx_srio_local_write32(i32 %104, i32 %106, i32 %107)
  store i32 0, i32* %17, align 4
  %109 = load i32, i32* %18, align 4
  %110 = shl i32 %109, 24
  %111 = load i32, i32* %17, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %17, align 4
  %113 = load i32, i32* %17, align 4
  %114 = or i32 %113, 1048576
  store i32 %114, i32* %17, align 4
  %115 = load i32, i32* %17, align 4
  %116 = or i32 %115, 524288
  store i32 %116, i32* %17, align 4
  %117 = load i32, i32* %17, align 4
  %118 = or i32 %117, 49152
  store i32 %118, i32* %17, align 4
  %119 = load i32, i32* %13, align 4
  %120 = load i32, i32* %17, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %17, align 4
  %122 = load i32, i32* %9, align 4
  %123 = load i32, i32* %9, align 4
  %124 = call i32 @CVMX_SRIOMAINTX_IR_SP_TX_DATA(i32 %123)
  %125 = load i32, i32* %17, align 4
  %126 = call i32 @__cvmx_srio_local_write32(i32 %122, i32 %124, i32 %125)
  store i32 0, i32* %17, align 4
  %127 = load i32, i32* %14, align 4
  %128 = shl i32 %127, 8
  %129 = load i32, i32* %17, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %17, align 4
  %131 = load i32, i32* %14, align 4
  %132 = and i32 %131, 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %81
  %135 = load i32, i32* %15, align 4
  %136 = ashr i32 %135, 24
  %137 = and i32 255, %136
  %138 = load i32, i32* %17, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %17, align 4
  br label %140

140:                                              ; preds = %134, %81
  %141 = load i32, i32* %9, align 4
  %142 = load i32, i32* %9, align 4
  %143 = call i32 @CVMX_SRIOMAINTX_IR_SP_TX_DATA(i32 %142)
  %144 = load i32, i32* %17, align 4
  %145 = call i32 @__cvmx_srio_local_write32(i32 %141, i32 %143, i32 %144)
  %146 = load i32, i32* %14, align 4
  %147 = and i32 %146, 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %165

149:                                              ; preds = %140
  %150 = load i32, i32* %15, align 4
  %151 = ashr i32 %150, 24
  %152 = and i32 255, %151
  store i32 %152, i32* %17, align 4
  %153 = load i32, i32* %9, align 4
  %154 = load i32, i32* %9, align 4
  %155 = call i32 @CVMX_SRIOMAINTX_IR_SP_TX_DATA(i32 %154)
  %156 = load i32, i32* %17, align 4
  %157 = call i32 @__cvmx_srio_local_write32(i32 %153, i32 %155, i32 %156)
  %158 = load i32, i32* %15, align 4
  %159 = shl i32 %158, 8
  store i32 %159, i32* %17, align 4
  %160 = load i32, i32* %9, align 4
  %161 = load i32, i32* %9, align 4
  %162 = call i32 @CVMX_SRIOMAINTX_IR_SP_TX_DATA(i32 %161)
  %163 = load i32, i32* %17, align 4
  %164 = call i32 @__cvmx_srio_local_write32(i32 %160, i32 %162, i32 %163)
  br label %177

165:                                              ; preds = %140
  %166 = load i32, i32* %15, align 4
  %167 = shl i32 %166, 8
  store i32 %167, i32* %17, align 4
  %168 = load i32, i32* %9, align 4
  %169 = load i32, i32* %9, align 4
  %170 = call i32 @CVMX_SRIOMAINTX_IR_SP_TX_DATA(i32 %169)
  %171 = load i32, i32* %17, align 4
  %172 = call i32 @__cvmx_srio_local_write32(i32 %168, i32 %170, i32 %171)
  %173 = load i32, i32* %9, align 4
  %174 = load i32, i32* %9, align 4
  %175 = call i32 @CVMX_SRIOMAINTX_IR_SP_TX_DATA(i32 %174)
  %176 = call i32 @__cvmx_srio_local_write32(i32 %173, i32 %175, i32 0)
  br label %177

177:                                              ; preds = %165, %149
  br label %274

178:                                              ; preds = %78
  %179 = load i32, i32* %18, align 4
  %180 = ashr i32 %179, 16
  %181 = and i32 %180, 255
  store i32 %181, i32* %18, align 4
  %182 = load i32, i32* %9, align 4
  %183 = load i32, i32* %9, align 4
  %184 = call i32 @CVMX_SRIOMAINTX_IR_SP_TX_CTRL(i32 %183)
  %185 = call i32 @__cvmx_srio_local_write32(i32 %182, i32 %184, i32 1114112)
  %186 = load i32, i32* @CVMX_SRIO_CONFIG_PRIORITY, align 4
  %187 = shl i32 %186, 30
  %188 = load i32, i32* %17, align 4
  %189 = or i32 %188, %187
  store i32 %189, i32* %17, align 4
  %190 = load i32, i32* %17, align 4
  store i32 %190, i32* %17, align 4
  %191 = load i32, i32* %17, align 4
  %192 = or i32 %191, 134217728
  store i32 %192, i32* %17, align 4
  %193 = load i32, i32* %11, align 4
  %194 = shl i32 %193, 16
  %195 = load i32, i32* %17, align 4
  %196 = or i32 %195, %194
  store i32 %196, i32* %17, align 4
  %197 = load i32, i32* %18, align 4
  %198 = shl i32 %197, 8
  %199 = load i32, i32* %17, align 4
  %200 = or i32 %199, %198
  store i32 %200, i32* %17, align 4
  %201 = load i32, i32* %17, align 4
  %202 = or i32 %201, 16
  store i32 %202, i32* %17, align 4
  %203 = load i32, i32* %17, align 4
  %204 = or i32 %203, 8
  store i32 %204, i32* %17, align 4
  %205 = load i32, i32* %9, align 4
  %206 = load i32, i32* %9, align 4
  %207 = call i32 @CVMX_SRIOMAINTX_IR_SP_TX_DATA(i32 %206)
  %208 = load i32, i32* %17, align 4
  %209 = call i32 @__cvmx_srio_local_write32(i32 %205, i32 %207, i32 %208)
  store i32 0, i32* %17, align 4
  %210 = load i32, i32* %17, align 4
  %211 = or i32 %210, -1073741824
  store i32 %211, i32* %17, align 4
  %212 = load i32, i32* %13, align 4
  %213 = shl i32 %212, 16
  %214 = load i32, i32* %17, align 4
  %215 = or i32 %214, %213
  store i32 %215, i32* %17, align 4
  %216 = load i32, i32* %14, align 4
  %217 = ashr i32 %216, 8
  %218 = load i32, i32* %17, align 4
  %219 = or i32 %218, %217
  store i32 %219, i32* %17, align 4
  %220 = load i32, i32* %9, align 4
  %221 = load i32, i32* %9, align 4
  %222 = call i32 @CVMX_SRIOMAINTX_IR_SP_TX_DATA(i32 %221)
  %223 = load i32, i32* %17, align 4
  %224 = call i32 @__cvmx_srio_local_write32(i32 %220, i32 %222, i32 %223)
  store i32 0, i32* %17, align 4
  %225 = load i32, i32* %14, align 4
  %226 = shl i32 %225, 24
  %227 = load i32, i32* %17, align 4
  %228 = or i32 %227, %226
  store i32 %228, i32* %17, align 4
  %229 = load i32, i32* %14, align 4
  %230 = and i32 %229, 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %252

232:                                              ; preds = %178
  %233 = load i32, i32* %9, align 4
  %234 = load i32, i32* %9, align 4
  %235 = call i32 @CVMX_SRIOMAINTX_IR_SP_TX_DATA(i32 %234)
  %236 = load i32, i32* %17, align 4
  %237 = call i32 @__cvmx_srio_local_write32(i32 %233, i32 %235, i32 %236)
  %238 = load i32, i32* %15, align 4
  %239 = ashr i32 %238, 8
  store i32 %239, i32* %17, align 4
  %240 = load i32, i32* %9, align 4
  %241 = load i32, i32* %9, align 4
  %242 = call i32 @CVMX_SRIOMAINTX_IR_SP_TX_DATA(i32 %241)
  %243 = load i32, i32* %17, align 4
  %244 = call i32 @__cvmx_srio_local_write32(i32 %240, i32 %242, i32 %243)
  %245 = load i32, i32* %15, align 4
  %246 = shl i32 %245, 24
  store i32 %246, i32* %17, align 4
  %247 = load i32, i32* %9, align 4
  %248 = load i32, i32* %9, align 4
  %249 = call i32 @CVMX_SRIOMAINTX_IR_SP_TX_DATA(i32 %248)
  %250 = load i32, i32* %17, align 4
  %251 = call i32 @__cvmx_srio_local_write32(i32 %247, i32 %249, i32 %250)
  br label %273

252:                                              ; preds = %178
  %253 = load i32, i32* %15, align 4
  %254 = ashr i32 %253, 8
  %255 = load i32, i32* %17, align 4
  %256 = or i32 %255, %254
  store i32 %256, i32* %17, align 4
  %257 = load i32, i32* %9, align 4
  %258 = load i32, i32* %9, align 4
  %259 = call i32 @CVMX_SRIOMAINTX_IR_SP_TX_DATA(i32 %258)
  %260 = load i32, i32* %17, align 4
  %261 = call i32 @__cvmx_srio_local_write32(i32 %257, i32 %259, i32 %260)
  %262 = load i32, i32* %15, align 4
  %263 = shl i32 %262, 24
  store i32 %263, i32* %17, align 4
  %264 = load i32, i32* %9, align 4
  %265 = load i32, i32* %9, align 4
  %266 = call i32 @CVMX_SRIOMAINTX_IR_SP_TX_DATA(i32 %265)
  %267 = load i32, i32* %17, align 4
  %268 = call i32 @__cvmx_srio_local_write32(i32 %264, i32 %266, i32 %267)
  %269 = load i32, i32* %9, align 4
  %270 = load i32, i32* %9, align 4
  %271 = call i32 @CVMX_SRIOMAINTX_IR_SP_TX_DATA(i32 %270)
  %272 = call i32 @__cvmx_srio_local_write32(i32 %269, i32 %271, i32 0)
  br label %273

273:                                              ; preds = %252, %232
  br label %274

274:                                              ; preds = %273, %177
  %275 = load i32, i32* @CVMX_CLOCK_CORE, align 4
  %276 = call i32 @cvmx_clock_get_rate(i32 %275)
  %277 = sdiv i32 %276, 10
  %278 = sext i32 %277 to i64
  %279 = load i32, i32* @CVMX_CLOCK_CORE, align 4
  %280 = call i64 @cvmx_clock_get_count(i32 %279)
  %281 = add nsw i64 %278, %280
  store i64 %281, i64* %19, align 8
  br label %282

282:                                              ; preds = %307, %274
  %283 = load i32, i32* %9, align 4
  %284 = getelementptr inbounds [64 x i8], [64 x i8]* %20, i64 0, i64 0
  %285 = call i32 @cvmx_srio_receive_spf(i32 %283, i8* %284, i32 64)
  store i32 %285, i32* %16, align 4
  %286 = load i32, i32* %16, align 4
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %288, label %306

288:                                              ; preds = %282
  %289 = load i32, i32* @CVMX_CLOCK_CORE, align 4
  %290 = call i64 @cvmx_clock_get_count(i32 %289)
  %291 = load i64, i64* %19, align 8
  %292 = icmp sgt i64 %290, %291
  br i1 %292, label %293, label %306

293:                                              ; preds = %288
  %294 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__cvmx_srio_state, align 8
  %295 = load i32, i32* %9, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %294, i64 %296
  %298 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 4
  %300 = load i32, i32* @CVMX_SRIO_INITIALIZE_DEBUG, align 4
  %301 = and i32 %299, %300
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %305

303:                                              ; preds = %293
  %304 = call i32 (i8*, ...) @cvmx_dprintf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %305

305:                                              ; preds = %303, %293
  store i32 -1, i32* %16, align 4
  br label %306

306:                                              ; preds = %305, %288, %282
  br label %307

307:                                              ; preds = %306
  %308 = load i32, i32* %16, align 4
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %282, label %310

310:                                              ; preds = %307
  %311 = load i32, i32* %16, align 4
  %312 = load i32, i32* %12, align 4
  %313 = icmp ne i32 %312, 0
  %314 = zext i1 %313 to i64
  %315 = select i1 %313, i32 15, i32 11
  %316 = icmp eq i32 %311, %315
  br i1 %316, label %317, label %318

317:                                              ; preds = %310
  store i32 0, i32* %16, align 4
  br label %321

318:                                              ; preds = %310
  %319 = load i32, i32* %9, align 4
  %320 = call i32 (i8*, ...) @cvmx_dprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %319)
  store i32 -1, i32* %16, align 4
  br label %321

321:                                              ; preds = %318, %317
  %322 = load i32, i32* %16, align 4
  store i32 %322, i32* %8, align 4
  br label %364

323:                                              ; preds = %44
  %324 = load i32, i32* %9, align 4
  %325 = load i32, i32* @CVMX_SRIO_WRITE_MODE_MAINTENANCE, align 4
  %326 = load i32, i32* @CVMX_SRIO_CONFIG_PRIORITY, align 4
  %327 = load i32, i32* @CVMX_SRIO_READ_MODE_MAINTENANCE, align 4
  %328 = load i32, i32* @CVMX_SRIO_CONFIG_PRIORITY, align 4
  %329 = load i32, i32* %10, align 4
  %330 = load i32, i32* %11, align 4
  %331 = load i32, i32* %12, align 4
  %332 = load i32, i32* %14, align 4
  %333 = load i32, i32* %13, align 4
  %334 = shl i32 %333, 24
  %335 = add nsw i32 %332, %334
  %336 = call i64 @cvmx_srio_physical_map(i32 %324, i32 %325, i32 %326, i32 %327, i32 %328, i32 %329, i32 %330, i32 %331, i32 %335, i32 4)
  store i64 %336, i64* %21, align 8
  %337 = load i64, i64* %21, align 8
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %340, label %339

339:                                              ; preds = %323
  store i32 -1, i32* %8, align 4
  br label %364

340:                                              ; preds = %323
  %341 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__cvmx_srio_state, align 8
  %342 = load i32, i32* %9, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %341, i64 %343
  %345 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 4
  %347 = load i32, i32* @CVMX_SRIO_INITIALIZE_DEBUG, align 4
  %348 = and i32 %346, %347
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %357

350:                                              ; preds = %340
  %351 = load i32, i32* %9, align 4
  %352 = load i32, i32* %11, align 4
  %353 = load i32, i32* %13, align 4
  %354 = load i32, i32* %14, align 4
  %355 = load i32, i32* %15, align 4
  %356 = call i32 (i8*, ...) @cvmx_dprintf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %351, i32 %352, i32 %353, i32 %354, i32 %355)
  br label %357

357:                                              ; preds = %350, %340
  %358 = load i64, i64* %21, align 8
  %359 = call i32 @CVMX_ADD_IO_SEG(i64 %358)
  %360 = load i32, i32* %15, align 4
  %361 = call i32 @cvmx_write64_uint32(i32 %359, i32 %360)
  %362 = load i64, i64* %21, align 8
  %363 = call i32 @cvmx_srio_physical_unmap(i64 %362, i32 4)
  store i32 %363, i32* %8, align 4
  br label %364

364:                                              ; preds = %357, %339, %321, %39
  %365 = load i32, i32* %8, align 4
  ret i32 %365
}

declare dso_local i32 @cvmx_dprintf(i8*, ...) #1

declare dso_local i32 @__cvmx_srio_local_write32(i32, i32, i32) #1

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

declare dso_local i32 @__cvmx_srio_local_read32(i32, i32, i32*) #1

declare dso_local i32 @CVMX_SRIOMAINTX_SEC_DEV_ID(i32) #1

declare dso_local i32 @CVMX_SRIOMAINTX_PRI_DEV_ID(i32) #1

declare dso_local i32 @CVMX_SRIOMAINTX_IR_SP_TX_CTRL(i32) #1

declare dso_local i32 @CVMX_SRIOMAINTX_IR_SP_TX_DATA(i32) #1

declare dso_local i32 @cvmx_clock_get_rate(i32) #1

declare dso_local i64 @cvmx_clock_get_count(i32) #1

declare dso_local i32 @cvmx_srio_receive_spf(i32, i8*, i32) #1

declare dso_local i64 @cvmx_srio_physical_map(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @cvmx_write64_uint32(i32, i32) #1

declare dso_local i32 @CVMX_ADD_IO_SEG(i64) #1

declare dso_local i32 @cvmx_srio_physical_unmap(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
