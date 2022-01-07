; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_dtsec.c_UpdateStatistics.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_dtsec.c_UpdateStatistics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@CAR1_TR64 = common dso_local global i32 0, align 4
@VAL22BIT = common dso_local global i64 0, align 8
@CAR1_TR127 = common dso_local global i32 0, align 4
@CAR1_TR255 = common dso_local global i32 0, align 4
@CAR1_TR511 = common dso_local global i32 0, align 4
@CAR1_TRK1 = common dso_local global i32 0, align 4
@CAR1_TRMAX = common dso_local global i32 0, align 4
@CAR1_TRMGV = common dso_local global i32 0, align 4
@CAR1_RBYT = common dso_local global i32 0, align 4
@VAL32BIT = common dso_local global i64 0, align 8
@CAR1_RPKT = common dso_local global i32 0, align 4
@CAR1_RMCA = common dso_local global i32 0, align 4
@CAR1_RBCA = common dso_local global i32 0, align 4
@CAR1_RXPF = common dso_local global i32 0, align 4
@VAL16BIT = common dso_local global i64 0, align 8
@CAR1_RALN = common dso_local global i32 0, align 4
@CAR1_RFLR = common dso_local global i32 0, align 4
@CAR1_RCDE = common dso_local global i32 0, align 4
@CAR1_RCSE = common dso_local global i32 0, align 4
@CAR1_RUND = common dso_local global i32 0, align 4
@CAR1_ROVR = common dso_local global i32 0, align 4
@CAR1_RFRG = common dso_local global i32 0, align 4
@CAR1_RJBR = common dso_local global i32 0, align 4
@CAR1_RDRP = common dso_local global i32 0, align 4
@CAR2_TFCS = common dso_local global i32 0, align 4
@VAL12BIT = common dso_local global i64 0, align 8
@CAR2_TBYT = common dso_local global i32 0, align 4
@CAR2_TPKT = common dso_local global i32 0, align 4
@CAR2_TMCA = common dso_local global i32 0, align 4
@CAR2_TBCA = common dso_local global i32 0, align 4
@CAR2_TXPF = common dso_local global i32 0, align 4
@CAR2_TDRP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @UpdateStatistics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UpdateStatistics(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @fman_dtsec_get_clear_carry_regs(i32 %7, i32* %3, i32* %4)
  %9 = load i32, i32* %3, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %306

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @CAR1_TR64, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %11
  %17 = load i64, i64* @VAL22BIT, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 27
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %22, %17
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %20, align 4
  br label %25

25:                                               ; preds = %16, %11
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @CAR1_TR127, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %25
  %31 = load i64, i64* @VAL22BIT, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 26
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %36, %31
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %34, align 4
  br label %39

39:                                               ; preds = %30, %25
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @CAR1_TR255, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %39
  %45 = load i64, i64* @VAL22BIT, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 25
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %50, %45
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %48, align 4
  br label %53

53:                                               ; preds = %44, %39
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* @CAR1_TR511, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %53
  %59 = load i64, i64* @VAL22BIT, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 24
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %64, %59
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %62, align 4
  br label %67

67:                                               ; preds = %58, %53
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* @CAR1_TRK1, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %67
  %73 = load i64, i64* @VAL22BIT, align 8
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 23
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %78, %73
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %76, align 4
  br label %81

81:                                               ; preds = %72, %67
  %82 = load i32, i32* %3, align 4
  %83 = load i32, i32* @CAR1_TRMAX, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %81
  %87 = load i64, i64* @VAL22BIT, align 8
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 22
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %92, %87
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %90, align 4
  br label %95

95:                                               ; preds = %86, %81
  %96 = load i32, i32* %3, align 4
  %97 = load i32, i32* @CAR1_TRMGV, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %109

100:                                              ; preds = %95
  %101 = load i64, i64* @VAL22BIT, align 8
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 21
  %105 = load i32, i32* %104, align 4
  %106 = sext i32 %105 to i64
  %107 = add nsw i64 %106, %101
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %104, align 4
  br label %109

109:                                              ; preds = %100, %95
  %110 = load i32, i32* %3, align 4
  %111 = load i32, i32* @CAR1_RBYT, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %109
  %115 = load i64, i64* @VAL32BIT, align 8
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 20
  %119 = load i32, i32* %118, align 4
  %120 = sext i32 %119 to i64
  %121 = add nsw i64 %120, %115
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %118, align 4
  br label %123

123:                                              ; preds = %114, %109
  %124 = load i32, i32* %3, align 4
  %125 = load i32, i32* @CAR1_RPKT, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %137

128:                                              ; preds = %123
  %129 = load i64, i64* @VAL22BIT, align 8
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 19
  %133 = load i32, i32* %132, align 4
  %134 = sext i32 %133 to i64
  %135 = add nsw i64 %134, %129
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %132, align 4
  br label %137

137:                                              ; preds = %128, %123
  %138 = load i32, i32* %3, align 4
  %139 = load i32, i32* @CAR1_RMCA, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %151

142:                                              ; preds = %137
  %143 = load i64, i64* @VAL22BIT, align 8
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 18
  %147 = load i32, i32* %146, align 4
  %148 = sext i32 %147 to i64
  %149 = add nsw i64 %148, %143
  %150 = trunc i64 %149 to i32
  store i32 %150, i32* %146, align 4
  br label %151

151:                                              ; preds = %142, %137
  %152 = load i32, i32* %3, align 4
  %153 = load i32, i32* @CAR1_RBCA, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %165

156:                                              ; preds = %151
  %157 = load i64, i64* @VAL22BIT, align 8
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 17
  %161 = load i32, i32* %160, align 4
  %162 = sext i32 %161 to i64
  %163 = add nsw i64 %162, %157
  %164 = trunc i64 %163 to i32
  store i32 %164, i32* %160, align 4
  br label %165

165:                                              ; preds = %156, %151
  %166 = load i32, i32* %3, align 4
  %167 = load i32, i32* @CAR1_RXPF, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %179

170:                                              ; preds = %165
  %171 = load i64, i64* @VAL16BIT, align 8
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 16
  %175 = load i32, i32* %174, align 4
  %176 = sext i32 %175 to i64
  %177 = add nsw i64 %176, %171
  %178 = trunc i64 %177 to i32
  store i32 %178, i32* %174, align 4
  br label %179

179:                                              ; preds = %170, %165
  %180 = load i32, i32* %3, align 4
  %181 = load i32, i32* @CAR1_RALN, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %193

184:                                              ; preds = %179
  %185 = load i64, i64* @VAL16BIT, align 8
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 15
  %189 = load i32, i32* %188, align 4
  %190 = sext i32 %189 to i64
  %191 = add nsw i64 %190, %185
  %192 = trunc i64 %191 to i32
  store i32 %192, i32* %188, align 4
  br label %193

193:                                              ; preds = %184, %179
  %194 = load i32, i32* %3, align 4
  %195 = load i32, i32* @CAR1_RFLR, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %207

198:                                              ; preds = %193
  %199 = load i64, i64* @VAL16BIT, align 8
  %200 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 14
  %203 = load i32, i32* %202, align 4
  %204 = sext i32 %203 to i64
  %205 = add nsw i64 %204, %199
  %206 = trunc i64 %205 to i32
  store i32 %206, i32* %202, align 4
  br label %207

207:                                              ; preds = %198, %193
  %208 = load i32, i32* %3, align 4
  %209 = load i32, i32* @CAR1_RCDE, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %221

212:                                              ; preds = %207
  %213 = load i64, i64* @VAL16BIT, align 8
  %214 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 13
  %217 = load i32, i32* %216, align 4
  %218 = sext i32 %217 to i64
  %219 = add nsw i64 %218, %213
  %220 = trunc i64 %219 to i32
  store i32 %220, i32* %216, align 4
  br label %221

221:                                              ; preds = %212, %207
  %222 = load i32, i32* %3, align 4
  %223 = load i32, i32* @CAR1_RCSE, align 4
  %224 = and i32 %222, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %235

226:                                              ; preds = %221
  %227 = load i64, i64* @VAL16BIT, align 8
  %228 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %229 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i32 0, i32 12
  %231 = load i32, i32* %230, align 4
  %232 = sext i32 %231 to i64
  %233 = add nsw i64 %232, %227
  %234 = trunc i64 %233 to i32
  store i32 %234, i32* %230, align 4
  br label %235

235:                                              ; preds = %226, %221
  %236 = load i32, i32* %3, align 4
  %237 = load i32, i32* @CAR1_RUND, align 4
  %238 = and i32 %236, %237
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %249

240:                                              ; preds = %235
  %241 = load i64, i64* @VAL16BIT, align 8
  %242 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %243 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %243, i32 0, i32 11
  %245 = load i32, i32* %244, align 4
  %246 = sext i32 %245 to i64
  %247 = add nsw i64 %246, %241
  %248 = trunc i64 %247 to i32
  store i32 %248, i32* %244, align 4
  br label %249

249:                                              ; preds = %240, %235
  %250 = load i32, i32* %3, align 4
  %251 = load i32, i32* @CAR1_ROVR, align 4
  %252 = and i32 %250, %251
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %263

254:                                              ; preds = %249
  %255 = load i64, i64* @VAL16BIT, align 8
  %256 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %257 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %257, i32 0, i32 10
  %259 = load i32, i32* %258, align 4
  %260 = sext i32 %259 to i64
  %261 = add nsw i64 %260, %255
  %262 = trunc i64 %261 to i32
  store i32 %262, i32* %258, align 4
  br label %263

263:                                              ; preds = %254, %249
  %264 = load i32, i32* %3, align 4
  %265 = load i32, i32* @CAR1_RFRG, align 4
  %266 = and i32 %264, %265
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %277

268:                                              ; preds = %263
  %269 = load i64, i64* @VAL16BIT, align 8
  %270 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %271 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %271, i32 0, i32 9
  %273 = load i32, i32* %272, align 4
  %274 = sext i32 %273 to i64
  %275 = add nsw i64 %274, %269
  %276 = trunc i64 %275 to i32
  store i32 %276, i32* %272, align 4
  br label %277

277:                                              ; preds = %268, %263
  %278 = load i32, i32* %3, align 4
  %279 = load i32, i32* @CAR1_RJBR, align 4
  %280 = and i32 %278, %279
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %291

282:                                              ; preds = %277
  %283 = load i64, i64* @VAL16BIT, align 8
  %284 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %285 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %285, i32 0, i32 8
  %287 = load i32, i32* %286, align 4
  %288 = sext i32 %287 to i64
  %289 = add nsw i64 %288, %283
  %290 = trunc i64 %289 to i32
  store i32 %290, i32* %286, align 4
  br label %291

291:                                              ; preds = %282, %277
  %292 = load i32, i32* %3, align 4
  %293 = load i32, i32* @CAR1_RDRP, align 4
  %294 = and i32 %292, %293
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %305

296:                                              ; preds = %291
  %297 = load i64, i64* @VAL16BIT, align 8
  %298 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %299 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %298, i32 0, i32 0
  %300 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %299, i32 0, i32 7
  %301 = load i32, i32* %300, align 4
  %302 = sext i32 %301 to i64
  %303 = add nsw i64 %302, %297
  %304 = trunc i64 %303 to i32
  store i32 %304, i32* %300, align 4
  br label %305

305:                                              ; preds = %296, %291
  br label %306

306:                                              ; preds = %305, %1
  %307 = load i32, i32* %4, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %408

309:                                              ; preds = %306
  %310 = load i32, i32* %4, align 4
  %311 = load i32, i32* @CAR2_TFCS, align 4
  %312 = and i32 %310, %311
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %323

314:                                              ; preds = %309
  %315 = load i64, i64* @VAL12BIT, align 8
  %316 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %317 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %316, i32 0, i32 0
  %318 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %317, i32 0, i32 6
  %319 = load i32, i32* %318, align 4
  %320 = sext i32 %319 to i64
  %321 = add nsw i64 %320, %315
  %322 = trunc i64 %321 to i32
  store i32 %322, i32* %318, align 4
  br label %323

323:                                              ; preds = %314, %309
  %324 = load i32, i32* %4, align 4
  %325 = load i32, i32* @CAR2_TBYT, align 4
  %326 = and i32 %324, %325
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %337

328:                                              ; preds = %323
  %329 = load i64, i64* @VAL32BIT, align 8
  %330 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %331 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %330, i32 0, i32 0
  %332 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %331, i32 0, i32 5
  %333 = load i32, i32* %332, align 4
  %334 = sext i32 %333 to i64
  %335 = add nsw i64 %334, %329
  %336 = trunc i64 %335 to i32
  store i32 %336, i32* %332, align 4
  br label %337

337:                                              ; preds = %328, %323
  %338 = load i32, i32* %4, align 4
  %339 = load i32, i32* @CAR2_TPKT, align 4
  %340 = and i32 %338, %339
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %351

342:                                              ; preds = %337
  %343 = load i64, i64* @VAL22BIT, align 8
  %344 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %345 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %344, i32 0, i32 0
  %346 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %345, i32 0, i32 4
  %347 = load i32, i32* %346, align 4
  %348 = sext i32 %347 to i64
  %349 = add nsw i64 %348, %343
  %350 = trunc i64 %349 to i32
  store i32 %350, i32* %346, align 4
  br label %351

351:                                              ; preds = %342, %337
  %352 = load i32, i32* %4, align 4
  %353 = load i32, i32* @CAR2_TMCA, align 4
  %354 = and i32 %352, %353
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %365

356:                                              ; preds = %351
  %357 = load i64, i64* @VAL22BIT, align 8
  %358 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %359 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %358, i32 0, i32 0
  %360 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %359, i32 0, i32 3
  %361 = load i32, i32* %360, align 4
  %362 = sext i32 %361 to i64
  %363 = add nsw i64 %362, %357
  %364 = trunc i64 %363 to i32
  store i32 %364, i32* %360, align 4
  br label %365

365:                                              ; preds = %356, %351
  %366 = load i32, i32* %4, align 4
  %367 = load i32, i32* @CAR2_TBCA, align 4
  %368 = and i32 %366, %367
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %370, label %379

370:                                              ; preds = %365
  %371 = load i64, i64* @VAL22BIT, align 8
  %372 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %373 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %372, i32 0, i32 0
  %374 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %373, i32 0, i32 2
  %375 = load i32, i32* %374, align 4
  %376 = sext i32 %375 to i64
  %377 = add nsw i64 %376, %371
  %378 = trunc i64 %377 to i32
  store i32 %378, i32* %374, align 4
  br label %379

379:                                              ; preds = %370, %365
  %380 = load i32, i32* %4, align 4
  %381 = load i32, i32* @CAR2_TXPF, align 4
  %382 = and i32 %380, %381
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %393

384:                                              ; preds = %379
  %385 = load i64, i64* @VAL16BIT, align 8
  %386 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %387 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %386, i32 0, i32 0
  %388 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %387, i32 0, i32 1
  %389 = load i32, i32* %388, align 4
  %390 = sext i32 %389 to i64
  %391 = add nsw i64 %390, %385
  %392 = trunc i64 %391 to i32
  store i32 %392, i32* %388, align 4
  br label %393

393:                                              ; preds = %384, %379
  %394 = load i32, i32* %4, align 4
  %395 = load i32, i32* @CAR2_TDRP, align 4
  %396 = and i32 %394, %395
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %398, label %407

398:                                              ; preds = %393
  %399 = load i64, i64* @VAL16BIT, align 8
  %400 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %401 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %400, i32 0, i32 0
  %402 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %401, i32 0, i32 0
  %403 = load i32, i32* %402, align 4
  %404 = sext i32 %403 to i64
  %405 = add nsw i64 %404, %399
  %406 = trunc i64 %405 to i32
  store i32 %406, i32* %402, align 4
  br label %407

407:                                              ; preds = %398, %393
  br label %408

408:                                              ; preds = %407, %306
  ret void
}

declare dso_local i32 @fman_dtsec_get_clear_carry_regs(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
