; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_vhpet.c_vhpet_mmio_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_vhpet.c_vhpet_mmio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhpet = type { i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@VHPET_BASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"hpet invalid mmio write: offset 0x%08x, size %d\00", align 1
@HPET_CONFIG = common dso_local global i32 0, align 4
@HPET_CNF_LEG_RT = common dso_local global i32 0, align 4
@HPET_CNF_ENABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"hpet enabled\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"hpet disabled\00", align 1
@HPET_ISR = common dso_local global i32 0, align 4
@VHPET_NUM_TIMERS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"hpet t%d isr cleared\00", align 1
@HPET_MAIN_COUNTER = common dso_local global i32 0, align 4
@HPET_TCNF_VAL_SET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"vhpet one-shot timer %d has invalid rate %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vhpet_mmio_write(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.vhpet*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = call %struct.vhpet* @vm_hpet(i8* %26)
  store %struct.vhpet* %27, %struct.vhpet** %13, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @VHPET_BASE, align 4
  %30 = sub nsw i32 %28, %29
  store i32 %30, i32* %25, align 4
  %31 = load %struct.vhpet*, %struct.vhpet** %13, align 8
  %32 = call i32 @VHPET_LOCK(%struct.vhpet* %31)
  %33 = load i32, i32* %11, align 4
  switch i32 %33, label %47 [
    i32 8, label %34
    i32 4, label %36
  ]

34:                                               ; preds = %6
  store i32 -1, i32* %15, align 4
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %14, align 4
  br label %54

36:                                               ; preds = %6
  store i32 -1, i32* %15, align 4
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %25, align 4
  %39 = and i32 %38, 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load i32, i32* %15, align 4
  %43 = shl i32 %42, 32
  store i32 %43, i32* %15, align 4
  %44 = load i32, i32* %14, align 4
  %45 = shl i32 %44, 32
  store i32 %45, i32* %14, align 4
  br label %46

46:                                               ; preds = %41, %36
  br label %54

47:                                               ; preds = %6
  %48 = load %struct.vhpet*, %struct.vhpet** %13, align 8
  %49 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %25, align 4
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @VM_CTR2(i32 %50, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %52)
  br label %405

54:                                               ; preds = %46, %34
  %55 = load i32, i32* %25, align 4
  %56 = load i32, i32* %11, align 4
  %57 = sub nsw i32 %56, 1
  %58 = and i32 %55, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %54
  %61 = load %struct.vhpet*, %struct.vhpet** %13, align 8
  %62 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %25, align 4
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @VM_CTR2(i32 %63, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %65)
  br label %405

67:                                               ; preds = %54
  %68 = load i32, i32* %25, align 4
  %69 = load i32, i32* @HPET_CONFIG, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %76, label %71

71:                                               ; preds = %67
  %72 = load i32, i32* %25, align 4
  %73 = load i32, i32* @HPET_CONFIG, align 4
  %74 = add nsw i32 %73, 4
  %75 = icmp eq i32 %72, %74
  br i1 %75, label %76, label %131

76:                                               ; preds = %71, %67
  %77 = load %struct.vhpet*, %struct.vhpet** %13, align 8
  %78 = call i64 @vhpet_counter_enabled(%struct.vhpet* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  br label %82

81:                                               ; preds = %76
  br label %82

82:                                               ; preds = %81, %80
  %83 = phi i32* [ %22, %80 ], [ null, %81 ]
  store i32* %83, i32** %23, align 8
  %84 = load %struct.vhpet*, %struct.vhpet** %13, align 8
  %85 = load i32*, i32** %23, align 8
  %86 = call i32 @vhpet_counter(%struct.vhpet* %84, i32* %85)
  store i32 %86, i32* %21, align 4
  %87 = load %struct.vhpet*, %struct.vhpet** %13, align 8
  %88 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  store i32 %89, i32* %16, align 4
  %90 = load %struct.vhpet*, %struct.vhpet** %13, align 8
  %91 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %90, i32 0, i32 0
  %92 = load i32, i32* %14, align 4
  %93 = load i32, i32* %15, align 4
  %94 = call i32 @update_register(i32* %91, i32 %92, i32 %93)
  %95 = load i32, i32* @HPET_CNF_LEG_RT, align 4
  %96 = xor i32 %95, -1
  %97 = load %struct.vhpet*, %struct.vhpet** %13, align 8
  %98 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = and i32 %99, %96
  store i32 %100, i32* %98, align 8
  %101 = load i32, i32* %16, align 4
  %102 = load %struct.vhpet*, %struct.vhpet** %13, align 8
  %103 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = xor i32 %101, %104
  %106 = load i32, i32* @HPET_CNF_ENABLE, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %130

109:                                              ; preds = %82
  %110 = load %struct.vhpet*, %struct.vhpet** %13, align 8
  %111 = call i64 @vhpet_counter_enabled(%struct.vhpet* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %120

113:                                              ; preds = %109
  %114 = load %struct.vhpet*, %struct.vhpet** %13, align 8
  %115 = call i32 @vhpet_start_counting(%struct.vhpet* %114)
  %116 = load %struct.vhpet*, %struct.vhpet** %13, align 8
  %117 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @VM_CTR0(i32 %118, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %129

120:                                              ; preds = %109
  %121 = load %struct.vhpet*, %struct.vhpet** %13, align 8
  %122 = load i32, i32* %21, align 4
  %123 = load i32, i32* %22, align 4
  %124 = call i32 @vhpet_stop_counting(%struct.vhpet* %121, i32 %122, i32 %123)
  %125 = load %struct.vhpet*, %struct.vhpet** %13, align 8
  %126 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @VM_CTR0(i32 %127, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %129

129:                                              ; preds = %120, %113
  br label %130

130:                                              ; preds = %129, %82
  br label %405

131:                                              ; preds = %71
  %132 = load i32, i32* %25, align 4
  %133 = load i32, i32* @HPET_ISR, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %140, label %135

135:                                              ; preds = %131
  %136 = load i32, i32* %25, align 4
  %137 = load i32, i32* @HPET_ISR, align 4
  %138 = add nsw i32 %137, 4
  %139 = icmp eq i32 %136, %138
  br i1 %139, label %140, label %170

140:                                              ; preds = %135, %131
  %141 = load %struct.vhpet*, %struct.vhpet** %13, align 8
  %142 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %14, align 4
  %145 = and i32 %143, %144
  store i32 %145, i32* %18, align 4
  store i32 0, i32* %24, align 4
  br label %146

146:                                              ; preds = %166, %140
  %147 = load i32, i32* %24, align 4
  %148 = load i32, i32* @VHPET_NUM_TIMERS, align 4
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %150, label %169

150:                                              ; preds = %146
  %151 = load i32, i32* %18, align 4
  %152 = load i32, i32* %24, align 4
  %153 = shl i32 1, %152
  %154 = and i32 %151, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %165

156:                                              ; preds = %150
  %157 = load %struct.vhpet*, %struct.vhpet** %13, align 8
  %158 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* %24, align 4
  %161 = call i32 @VM_CTR1(i32 %159, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %160)
  %162 = load %struct.vhpet*, %struct.vhpet** %13, align 8
  %163 = load i32, i32* %24, align 4
  %164 = call i32 @vhpet_timer_clear_isr(%struct.vhpet* %162, i32 %163)
  br label %165

165:                                              ; preds = %156, %150
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %24, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %24, align 4
  br label %146

169:                                              ; preds = %146
  br label %405

170:                                              ; preds = %135
  %171 = load i32, i32* %25, align 4
  %172 = load i32, i32* @HPET_MAIN_COUNTER, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %179, label %174

174:                                              ; preds = %170
  %175 = load i32, i32* %25, align 4
  %176 = load i32, i32* @HPET_MAIN_COUNTER, align 4
  %177 = add nsw i32 %176, 4
  %178 = icmp eq i32 %175, %177
  br i1 %178, label %179, label %195

179:                                              ; preds = %174, %170
  %180 = load %struct.vhpet*, %struct.vhpet** %13, align 8
  %181 = call i32 @vhpet_counter(%struct.vhpet* %180, i32* null)
  store i32 %181, i32* %17, align 4
  %182 = load i32, i32* %14, align 4
  %183 = load i32, i32* %15, align 4
  %184 = call i32 @update_register(i32* %17, i32 %182, i32 %183)
  %185 = load i32, i32* %17, align 4
  %186 = load %struct.vhpet*, %struct.vhpet** %13, align 8
  %187 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %186, i32 0, i32 2
  store i32 %185, i32* %187, align 8
  %188 = load %struct.vhpet*, %struct.vhpet** %13, align 8
  %189 = call i64 @vhpet_counter_enabled(%struct.vhpet* %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %179
  %192 = load %struct.vhpet*, %struct.vhpet** %13, align 8
  %193 = call i32 @vhpet_start_counting(%struct.vhpet* %192)
  br label %194

194:                                              ; preds = %191, %179
  br label %405

195:                                              ; preds = %174
  store i32 0, i32* %24, align 4
  br label %196

196:                                              ; preds = %401, %195
  %197 = load i32, i32* %24, align 4
  %198 = load i32, i32* @VHPET_NUM_TIMERS, align 4
  %199 = icmp slt i32 %197, %198
  br i1 %199, label %200, label %404

200:                                              ; preds = %196
  %201 = load i32, i32* %25, align 4
  %202 = load i32, i32* %24, align 4
  %203 = call i32 @HPET_TIMER_CAP_CNF(i32 %202)
  %204 = icmp eq i32 %201, %203
  br i1 %204, label %211, label %205

205:                                              ; preds = %200
  %206 = load i32, i32* %25, align 4
  %207 = load i32, i32* %24, align 4
  %208 = call i32 @HPET_TIMER_CAP_CNF(i32 %207)
  %209 = add nsw i32 %208, 4
  %210 = icmp eq i32 %206, %209
  br i1 %210, label %211, label %217

211:                                              ; preds = %205, %200
  %212 = load %struct.vhpet*, %struct.vhpet** %13, align 8
  %213 = load i32, i32* %24, align 4
  %214 = load i32, i32* %14, align 4
  %215 = load i32, i32* %15, align 4
  %216 = call i32 @vhpet_timer_update_config(%struct.vhpet* %212, i32 %213, i32 %214, i32 %215)
  br label %404

217:                                              ; preds = %205
  %218 = load i32, i32* %25, align 4
  %219 = load i32, i32* %24, align 4
  %220 = call i32 @HPET_TIMER_COMPARATOR(i32 %219)
  %221 = icmp eq i32 %218, %220
  br i1 %221, label %228, label %222

222:                                              ; preds = %217
  %223 = load i32, i32* %25, align 4
  %224 = load i32, i32* %24, align 4
  %225 = call i32 @HPET_TIMER_COMPARATOR(i32 %224)
  %226 = add nsw i32 %225, 4
  %227 = icmp eq i32 %223, %226
  br i1 %227, label %228, label %379

228:                                              ; preds = %222, %217
  %229 = load %struct.vhpet*, %struct.vhpet** %13, align 8
  %230 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %229, i32 0, i32 3
  %231 = load %struct.TYPE_2__*, %struct.TYPE_2__** %230, align 8
  %232 = load i32, i32* %24, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %231, i64 %233
  %235 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  store i32 %236, i32* %19, align 4
  %237 = load %struct.vhpet*, %struct.vhpet** %13, align 8
  %238 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %237, i32 0, i32 3
  %239 = load %struct.TYPE_2__*, %struct.TYPE_2__** %238, align 8
  %240 = load i32, i32* %24, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %239, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  store i32 %244, i32* %20, align 4
  %245 = load %struct.vhpet*, %struct.vhpet** %13, align 8
  %246 = load i32, i32* %24, align 4
  %247 = call i64 @vhpet_periodic_timer(%struct.vhpet* %245, i32 %246)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %290

249:                                              ; preds = %228
  %250 = load %struct.vhpet*, %struct.vhpet** %13, align 8
  %251 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %250, i32 0, i32 3
  %252 = load %struct.TYPE_2__*, %struct.TYPE_2__** %251, align 8
  %253 = load i32, i32* %24, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %252, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  store i32 %257, i32* %17, align 4
  %258 = load i32, i32* %14, align 4
  %259 = load i32, i32* %15, align 4
  %260 = call i32 @update_register(i32* %17, i32 %258, i32 %259)
  %261 = load i32, i32* %17, align 4
  %262 = load %struct.vhpet*, %struct.vhpet** %13, align 8
  %263 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %262, i32 0, i32 3
  %264 = load %struct.TYPE_2__*, %struct.TYPE_2__** %263, align 8
  %265 = load i32, i32* %24, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %264, i64 %266
  %268 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %267, i32 0, i32 1
  store i32 %261, i32* %268, align 4
  %269 = load %struct.vhpet*, %struct.vhpet** %13, align 8
  %270 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %269, i32 0, i32 3
  %271 = load %struct.TYPE_2__*, %struct.TYPE_2__** %270, align 8
  %272 = load i32, i32* %24, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %271, i64 %273
  %275 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %274, i32 0, i32 2
  %276 = load i32, i32* %275, align 4
  %277 = load i32, i32* @HPET_TCNF_VAL_SET, align 4
  %278 = and i32 %276, %277
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %289

280:                                              ; preds = %249
  %281 = load i32, i32* %17, align 4
  %282 = load %struct.vhpet*, %struct.vhpet** %13, align 8
  %283 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %282, i32 0, i32 3
  %284 = load %struct.TYPE_2__*, %struct.TYPE_2__** %283, align 8
  %285 = load i32, i32* %24, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %284, i64 %286
  %288 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %287, i32 0, i32 0
  store i32 %281, i32* %288, align 4
  br label %289

289:                                              ; preds = %280, %249
  br label %332

290:                                              ; preds = %228
  %291 = load %struct.vhpet*, %struct.vhpet** %13, align 8
  %292 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %291, i32 0, i32 3
  %293 = load %struct.TYPE_2__*, %struct.TYPE_2__** %292, align 8
  %294 = load i32, i32* %24, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %293, i64 %295
  %297 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 4
  %299 = icmp eq i32 %298, 0
  %300 = zext i1 %299 to i32
  %301 = load i32, i32* %24, align 4
  %302 = load %struct.vhpet*, %struct.vhpet** %13, align 8
  %303 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %302, i32 0, i32 3
  %304 = load %struct.TYPE_2__*, %struct.TYPE_2__** %303, align 8
  %305 = load i32, i32* %24, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %304, i64 %306
  %308 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 4
  %310 = sext i32 %309 to i64
  %311 = inttoptr i64 %310 to i8*
  %312 = call i32 @KASSERT(i32 %300, i8* %311)
  %313 = load %struct.vhpet*, %struct.vhpet** %13, align 8
  %314 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %313, i32 0, i32 3
  %315 = load %struct.TYPE_2__*, %struct.TYPE_2__** %314, align 8
  %316 = load i32, i32* %24, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %315, i64 %317
  %319 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 4
  store i32 %320, i32* %17, align 4
  %321 = load i32, i32* %14, align 4
  %322 = load i32, i32* %15, align 4
  %323 = call i32 @update_register(i32* %17, i32 %321, i32 %322)
  %324 = load i32, i32* %17, align 4
  %325 = load %struct.vhpet*, %struct.vhpet** %13, align 8
  %326 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %325, i32 0, i32 3
  %327 = load %struct.TYPE_2__*, %struct.TYPE_2__** %326, align 8
  %328 = load i32, i32* %24, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %327, i64 %329
  %331 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %330, i32 0, i32 0
  store i32 %324, i32* %331, align 4
  br label %332

332:                                              ; preds = %290, %289
  %333 = load i32, i32* @HPET_TCNF_VAL_SET, align 4
  %334 = xor i32 %333, -1
  %335 = load %struct.vhpet*, %struct.vhpet** %13, align 8
  %336 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %335, i32 0, i32 3
  %337 = load %struct.TYPE_2__*, %struct.TYPE_2__** %336, align 8
  %338 = load i32, i32* %24, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %337, i64 %339
  %341 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %340, i32 0, i32 2
  %342 = load i32, i32* %341, align 4
  %343 = and i32 %342, %334
  store i32 %343, i32* %341, align 4
  %344 = load %struct.vhpet*, %struct.vhpet** %13, align 8
  %345 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %344, i32 0, i32 3
  %346 = load %struct.TYPE_2__*, %struct.TYPE_2__** %345, align 8
  %347 = load i32, i32* %24, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %346, i64 %348
  %350 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 4
  %352 = load i32, i32* %19, align 4
  %353 = icmp ne i32 %351, %352
  br i1 %353, label %365, label %354

354:                                              ; preds = %332
  %355 = load %struct.vhpet*, %struct.vhpet** %13, align 8
  %356 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %355, i32 0, i32 3
  %357 = load %struct.TYPE_2__*, %struct.TYPE_2__** %356, align 8
  %358 = load i32, i32* %24, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %357, i64 %359
  %361 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %360, i32 0, i32 1
  %362 = load i32, i32* %361, align 4
  %363 = load i32, i32* %20, align 4
  %364 = icmp ne i32 %362, %363
  br i1 %364, label %365, label %378

365:                                              ; preds = %354, %332
  %366 = load %struct.vhpet*, %struct.vhpet** %13, align 8
  %367 = call i64 @vhpet_counter_enabled(%struct.vhpet* %366)
  %368 = icmp ne i64 %367, 0
  br i1 %368, label %369, label %377

369:                                              ; preds = %365
  %370 = load %struct.vhpet*, %struct.vhpet** %13, align 8
  %371 = call i32 @vhpet_counter(%struct.vhpet* %370, i32* %22)
  store i32 %371, i32* %21, align 4
  %372 = load %struct.vhpet*, %struct.vhpet** %13, align 8
  %373 = load i32, i32* %24, align 4
  %374 = load i32, i32* %21, align 4
  %375 = load i32, i32* %22, align 4
  %376 = call i32 @vhpet_start_timer(%struct.vhpet* %372, i32 %373, i32 %374, i32 %375)
  br label %377

377:                                              ; preds = %369, %365
  br label %378

378:                                              ; preds = %377, %354
  br label %404

379:                                              ; preds = %222
  %380 = load i32, i32* %25, align 4
  %381 = load i32, i32* %24, align 4
  %382 = call i32 @HPET_TIMER_FSB_VAL(i32 %381)
  %383 = icmp eq i32 %380, %382
  br i1 %383, label %389, label %384

384:                                              ; preds = %379
  %385 = load i32, i32* %25, align 4
  %386 = load i32, i32* %24, align 4
  %387 = call i32 @HPET_TIMER_FSB_ADDR(i32 %386)
  %388 = icmp eq i32 %385, %387
  br i1 %388, label %389, label %400

389:                                              ; preds = %384, %379
  %390 = load %struct.vhpet*, %struct.vhpet** %13, align 8
  %391 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %390, i32 0, i32 3
  %392 = load %struct.TYPE_2__*, %struct.TYPE_2__** %391, align 8
  %393 = load i32, i32* %24, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %392, i64 %394
  %396 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %395, i32 0, i32 3
  %397 = load i32, i32* %14, align 4
  %398 = load i32, i32* %15, align 4
  %399 = call i32 @update_register(i32* %396, i32 %397, i32 %398)
  br label %404

400:                                              ; preds = %384
  br label %401

401:                                              ; preds = %400
  %402 = load i32, i32* %24, align 4
  %403 = add nsw i32 %402, 1
  store i32 %403, i32* %24, align 4
  br label %196

404:                                              ; preds = %389, %378, %211, %196
  br label %405

405:                                              ; preds = %404, %194, %169, %130, %60, %47
  %406 = load %struct.vhpet*, %struct.vhpet** %13, align 8
  %407 = call i32 @VHPET_UNLOCK(%struct.vhpet* %406)
  ret i32 0
}

declare dso_local %struct.vhpet* @vm_hpet(i8*) #1

declare dso_local i32 @VHPET_LOCK(%struct.vhpet*) #1

declare dso_local i32 @VM_CTR2(i32, i8*, i32, i32) #1

declare dso_local i64 @vhpet_counter_enabled(%struct.vhpet*) #1

declare dso_local i32 @vhpet_counter(%struct.vhpet*, i32*) #1

declare dso_local i32 @update_register(i32*, i32, i32) #1

declare dso_local i32 @vhpet_start_counting(%struct.vhpet*) #1

declare dso_local i32 @VM_CTR0(i32, i8*) #1

declare dso_local i32 @vhpet_stop_counting(%struct.vhpet*, i32, i32) #1

declare dso_local i32 @VM_CTR1(i32, i8*, i32) #1

declare dso_local i32 @vhpet_timer_clear_isr(%struct.vhpet*, i32) #1

declare dso_local i32 @HPET_TIMER_CAP_CNF(i32) #1

declare dso_local i32 @vhpet_timer_update_config(%struct.vhpet*, i32, i32, i32) #1

declare dso_local i32 @HPET_TIMER_COMPARATOR(i32) #1

declare dso_local i64 @vhpet_periodic_timer(%struct.vhpet*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @vhpet_start_timer(%struct.vhpet*, i32, i32, i32) #1

declare dso_local i32 @HPET_TIMER_FSB_VAL(i32) #1

declare dso_local i32 @HPET_TIMER_FSB_ADDR(i32) #1

declare dso_local i32 @VHPET_UNLOCK(%struct.vhpet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
