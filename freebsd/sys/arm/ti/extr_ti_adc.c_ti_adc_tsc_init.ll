; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_adc.c_ti_adc_tsc_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_adc.c_ti_adc_tsc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_adc_softc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ADC_STEP_FIFO1 = common dso_local global i32 0, align 4
@ADC_STEP_AVG_SHIFT = common dso_local global i32 0, align 4
@ADC_STEP_MODE_HW_ONESHOT = common dso_local global i32 0, align 4
@ADC_STEPS = common dso_local global i32 0, align 4
@STEPDLY_OPEN = common dso_local global i32 0, align 4
@ADC_IDLECONFIG = common dso_local global i32 0, align 4
@ADC_TC_CHARGE_STEPCONFIG = common dso_local global i32 0, align 4
@ADC_TC_CHARGE_DELAY = common dso_local global i32 0, align 4
@ADC_FIFO1THRESHOLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ti_adc_softc*)* @ti_adc_tsc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ti_adc_tsc_init(%struct.ti_adc_softc* %0) #0 {
  %2 = alloca %struct.ti_adc_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ti_adc_softc* %0, %struct.ti_adc_softc** %2, align 8
  %8 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %9 = call i32 @TI_ADC_LOCK(%struct.ti_adc_softc* %8)
  %10 = load i32, i32* @ADC_STEP_FIFO1, align 4
  %11 = load i32, i32* @ADC_STEP_AVG_SHIFT, align 4
  %12 = shl i32 4, %11
  %13 = or i32 %10, %12
  %14 = load i32, i32* @ADC_STEP_MODE_HW_ONESHOT, align 4
  %15 = or i32 %13, %14
  %16 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %17 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %15, %18
  store i32 %19, i32* %6, align 4
  %20 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %21 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 4
  br i1 %23, label %24, label %35

24:                                               ; preds = %1
  %25 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %26 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ADC_STEP_INP(i32 %27)
  %29 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %30 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %28, %31
  %33 = load i32, i32* %6, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %6, align 4
  br label %74

35:                                               ; preds = %1
  %36 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %37 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 5
  br i1 %39, label %40, label %56

40:                                               ; preds = %35
  %41 = call i32 @ADC_STEP_INP(i32 4)
  %42 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %43 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %41, %44
  %46 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %47 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %45, %48
  %50 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %51 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %49, %52
  %54 = load i32, i32* %6, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %6, align 4
  br label %73

56:                                               ; preds = %35
  %57 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %58 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 8
  br i1 %60, label %61, label %72

61:                                               ; preds = %56
  %62 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %63 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @ADC_STEP_INP(i32 %64)
  %66 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %67 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %65, %68
  %70 = load i32, i32* %6, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %6, align 4
  br label %72

72:                                               ; preds = %61, %56
  br label %73

73:                                               ; preds = %72, %40
  br label %74

74:                                               ; preds = %73, %24
  %75 = load i32, i32* @ADC_STEPS, align 4
  %76 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %77 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 4
  %79 = sub nsw i32 %75, %78
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* %4, align 4
  %82 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %83 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %82, i32 0, i32 6
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %81, %84
  %86 = sub nsw i32 %85, 1
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* %4, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %103, %74
  %89 = load i32, i32* %3, align 4
  %90 = load i32, i32* %5, align 4
  %91 = icmp sle i32 %89, %90
  br i1 %91, label %92, label %106

92:                                               ; preds = %88
  %93 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %94 = load i32, i32* %3, align 4
  %95 = call i32 @ADC_STEPCFG(i32 %94)
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @ADC_WRITE4(%struct.ti_adc_softc* %93, i32 %95, i32 %96)
  %98 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %99 = load i32, i32* %3, align 4
  %100 = call i32 @ADC_STEPDLY(i32 %99)
  %101 = load i32, i32* @STEPDLY_OPEN, align 4
  %102 = call i32 @ADC_WRITE4(%struct.ti_adc_softc* %98, i32 %100, i32 %101)
  br label %103

103:                                              ; preds = %92
  %104 = load i32, i32* %3, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %3, align 4
  br label %88

106:                                              ; preds = %88
  %107 = load i32, i32* @ADC_STEP_FIFO1, align 4
  %108 = load i32, i32* @ADC_STEP_AVG_SHIFT, align 4
  %109 = shl i32 4, %108
  %110 = or i32 %107, %109
  %111 = load i32, i32* @ADC_STEP_MODE_HW_ONESHOT, align 4
  %112 = or i32 %110, %111
  %113 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %114 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %112, %115
  %117 = call i32 @ADC_STEP_INM(i32 8)
  %118 = or i32 %116, %117
  store i32 %118, i32* %6, align 4
  %119 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %120 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = icmp eq i32 %121, 4
  br i1 %122, label %123, label %134

123:                                              ; preds = %106
  %124 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %125 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %124, i32 0, i32 7
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @ADC_STEP_INP(i32 %126)
  %128 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %129 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 4
  %131 = or i32 %127, %130
  %132 = load i32, i32* %6, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %6, align 4
  br label %173

134:                                              ; preds = %106
  %135 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %136 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = icmp eq i32 %137, 5
  br i1 %138, label %139, label %155

139:                                              ; preds = %134
  %140 = call i32 @ADC_STEP_INP(i32 4)
  %141 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %142 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = or i32 %140, %143
  %145 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %146 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = or i32 %144, %147
  %149 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %150 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 4
  %152 = or i32 %148, %151
  %153 = load i32, i32* %6, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %6, align 4
  br label %172

155:                                              ; preds = %134
  %156 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %157 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = icmp eq i32 %158, 8
  br i1 %159, label %160, label %171

160:                                              ; preds = %155
  %161 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %162 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %161, i32 0, i32 7
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @ADC_STEP_INP(i32 %163)
  %165 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %166 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %165, i32 0, i32 5
  %167 = load i32, i32* %166, align 4
  %168 = or i32 %164, %167
  %169 = load i32, i32* %6, align 4
  %170 = or i32 %169, %168
  store i32 %170, i32* %6, align 4
  br label %171

171:                                              ; preds = %160, %155
  br label %172

172:                                              ; preds = %171, %139
  br label %173

173:                                              ; preds = %172, %123
  %174 = load i32, i32* @ADC_STEPS, align 4
  %175 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %176 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %175, i32 0, i32 6
  %177 = load i32, i32* %176, align 4
  %178 = mul nsw i32 %177, 2
  %179 = add nsw i32 %178, 2
  %180 = sub nsw i32 %174, %179
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %4, align 4
  %182 = load i32, i32* %4, align 4
  %183 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %184 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %183, i32 0, i32 6
  %185 = load i32, i32* %184, align 4
  %186 = add nsw i32 %182, %185
  %187 = sub nsw i32 %186, 1
  store i32 %187, i32* %5, align 4
  %188 = load i32, i32* %4, align 4
  store i32 %188, i32* %3, align 4
  br label %189

189:                                              ; preds = %204, %173
  %190 = load i32, i32* %3, align 4
  %191 = load i32, i32* %5, align 4
  %192 = icmp sle i32 %190, %191
  br i1 %192, label %193, label %207

193:                                              ; preds = %189
  %194 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %195 = load i32, i32* %3, align 4
  %196 = call i32 @ADC_STEPCFG(i32 %195)
  %197 = load i32, i32* %6, align 4
  %198 = call i32 @ADC_WRITE4(%struct.ti_adc_softc* %194, i32 %196, i32 %197)
  %199 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %200 = load i32, i32* %3, align 4
  %201 = call i32 @ADC_STEPDLY(i32 %200)
  %202 = load i32, i32* @STEPDLY_OPEN, align 4
  %203 = call i32 @ADC_WRITE4(%struct.ti_adc_softc* %199, i32 %201, i32 %202)
  br label %204

204:                                              ; preds = %193
  %205 = load i32, i32* %3, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %3, align 4
  br label %189

207:                                              ; preds = %189
  %208 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %209 = load i32, i32* @ADC_IDLECONFIG, align 4
  %210 = call i32 @ADC_READ4(%struct.ti_adc_softc* %208, i32 %209)
  store i32 %210, i32* %7, align 4
  %211 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %212 = load i32, i32* @ADC_TC_CHARGE_STEPCONFIG, align 4
  %213 = load i32, i32* %7, align 4
  %214 = call i32 @ADC_WRITE4(%struct.ti_adc_softc* %211, i32 %212, i32 %213)
  %215 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %216 = load i32, i32* @ADC_TC_CHARGE_DELAY, align 4
  %217 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %218 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %217, i32 0, i32 8
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @ADC_WRITE4(%struct.ti_adc_softc* %215, i32 %216, i32 %219)
  %221 = load i32, i32* @ADC_STEPS, align 4
  %222 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %223 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %222, i32 0, i32 6
  %224 = load i32, i32* %223, align 4
  %225 = add nsw i32 %224, 2
  %226 = sub nsw i32 %221, %225
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %4, align 4
  %228 = load i32, i32* @ADC_STEP_FIFO1, align 4
  %229 = load i32, i32* @ADC_STEP_AVG_SHIFT, align 4
  %230 = shl i32 4, %229
  %231 = or i32 %228, %230
  %232 = load i32, i32* @ADC_STEP_MODE_HW_ONESHOT, align 4
  %233 = or i32 %231, %232
  %234 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %235 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %234, i32 0, i32 5
  %236 = load i32, i32* %235, align 4
  %237 = or i32 %233, %236
  %238 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %239 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %238, i32 0, i32 3
  %240 = load i32, i32* %239, align 4
  %241 = or i32 %237, %240
  %242 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %243 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %242, i32 0, i32 7
  %244 = load i32, i32* %243, align 4
  %245 = call i32 @ADC_STEP_INP(i32 %244)
  %246 = or i32 %241, %245
  %247 = call i32 @ADC_STEP_INM(i32 8)
  %248 = or i32 %246, %247
  store i32 %248, i32* %6, align 4
  %249 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %250 = load i32, i32* %4, align 4
  %251 = call i32 @ADC_STEPCFG(i32 %250)
  %252 = load i32, i32* %6, align 4
  %253 = call i32 @ADC_WRITE4(%struct.ti_adc_softc* %249, i32 %251, i32 %252)
  %254 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %255 = load i32, i32* %4, align 4
  %256 = call i32 @ADC_STEPDLY(i32 %255)
  %257 = load i32, i32* @STEPDLY_OPEN, align 4
  %258 = call i32 @ADC_WRITE4(%struct.ti_adc_softc* %254, i32 %256, i32 %257)
  %259 = load i32, i32* %4, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %4, align 4
  %261 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %262 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %261, i32 0, i32 9
  %263 = load i32, i32* %262, align 4
  %264 = call i32 @ADC_STEP_INP(i32 %263)
  %265 = load i32, i32* %6, align 4
  %266 = or i32 %265, %264
  store i32 %266, i32* %6, align 4
  %267 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %268 = load i32, i32* %4, align 4
  %269 = call i32 @ADC_STEPCFG(i32 %268)
  %270 = load i32, i32* %6, align 4
  %271 = call i32 @ADC_WRITE4(%struct.ti_adc_softc* %267, i32 %269, i32 %270)
  %272 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %273 = load i32, i32* %4, align 4
  %274 = call i32 @ADC_STEPDLY(i32 %273)
  %275 = load i32, i32* @STEPDLY_OPEN, align 4
  %276 = call i32 @ADC_WRITE4(%struct.ti_adc_softc* %272, i32 %274, i32 %275)
  %277 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %278 = load i32, i32* @ADC_FIFO1THRESHOLD, align 4
  %279 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %280 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %279, i32 0, i32 6
  %281 = load i32, i32* %280, align 4
  %282 = mul nsw i32 %281, 2
  %283 = add nsw i32 %282, 2
  %284 = sub nsw i32 %283, 1
  %285 = call i32 @ADC_WRITE4(%struct.ti_adc_softc* %277, i32 %278, i32 %284)
  %286 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %287 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %286, i32 0, i32 10
  store i32 1, i32* %287, align 4
  %288 = load i32, i32* @ADC_STEPS, align 4
  %289 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %290 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %289, i32 0, i32 6
  %291 = load i32, i32* %290, align 4
  %292 = mul nsw i32 %291, 2
  %293 = add nsw i32 %292, 2
  %294 = sub nsw i32 %288, %293
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %4, align 4
  %296 = load i32, i32* @ADC_STEPS, align 4
  store i32 %296, i32* %5, align 4
  %297 = load i32, i32* %4, align 4
  store i32 %297, i32* %3, align 4
  br label %298

298:                                              ; preds = %309, %207
  %299 = load i32, i32* %3, align 4
  %300 = load i32, i32* %5, align 4
  %301 = icmp sle i32 %299, %300
  br i1 %301, label %302, label %312

302:                                              ; preds = %298
  %303 = load i32, i32* %3, align 4
  %304 = shl i32 1, %303
  %305 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %306 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %305, i32 0, i32 10
  %307 = load i32, i32* %306, align 4
  %308 = or i32 %307, %304
  store i32 %308, i32* %306, align 4
  br label %309

309:                                              ; preds = %302
  %310 = load i32, i32* %3, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %3, align 4
  br label %298

312:                                              ; preds = %298
  %313 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %314 = call i32 @TI_ADC_UNLOCK(%struct.ti_adc_softc* %313)
  ret void
}

declare dso_local i32 @TI_ADC_LOCK(%struct.ti_adc_softc*) #1

declare dso_local i32 @ADC_STEP_INP(i32) #1

declare dso_local i32 @ADC_WRITE4(%struct.ti_adc_softc*, i32, i32) #1

declare dso_local i32 @ADC_STEPCFG(i32) #1

declare dso_local i32 @ADC_STEPDLY(i32) #1

declare dso_local i32 @ADC_STEP_INM(i32) #1

declare dso_local i32 @ADC_READ4(%struct.ti_adc_softc*, i32) #1

declare dso_local i32 @TI_ADC_UNLOCK(%struct.ti_adc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
