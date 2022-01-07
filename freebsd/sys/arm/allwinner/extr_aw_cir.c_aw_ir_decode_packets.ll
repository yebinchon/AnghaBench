; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_cir.c_aw_ir_decode_packets.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_cir.c_aw_ir_decode_packets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aw_ir_softc = type { i32, i8*, i32 }

@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"sc->dcnt = %d\0A\00", align 1
@AW_IR_ACTIVE_T = common dso_local global i32 0, align 4
@AW_IR_ACTIVE_T_C = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"Initial len: %ld\0A\00", align 1
@VAL_MASK = common dso_local global i8 0, align 1
@PERIOD_MASK = common dso_local global i8 0, align 1
@AW_IR_L1_MIN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"len = %ld\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Bit separator error\0A\00", align 1
@AW_IR_L0_MIN = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [18 x i8] c"Bit length error\0A\00", align 1
@AW_IR_PMAX = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [13 x i8] c"Pulse error\0A\00", align 1
@AW_IR_DMAX = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [15 x i8] c"Distant error\0A\00", align 1
@AW_IR_DMID = common dso_local global i64 0, align 8
@AW_IR_ERROR_CODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.aw_ir_softc*)* @aw_ir_decode_packets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @aw_ir_decode_packets(%struct.aw_ir_softc* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.aw_ir_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.aw_ir_softc* %0, %struct.aw_ir_softc** %3, align 8
  %11 = load i64, i64* @bootverbose, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = load %struct.aw_ir_softc*, %struct.aw_ir_softc** %3, align 8
  %15 = getelementptr inbounds %struct.aw_ir_softc, %struct.aw_ir_softc* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.aw_ir_softc*, %struct.aw_ir_softc** %3, align 8
  %18 = getelementptr inbounds %struct.aw_ir_softc, %struct.aw_ir_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 (i32, i8*, ...) @device_printf(i32 %16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %13, %1
  %22 = load i32, i32* @AW_IR_ACTIVE_T, align 4
  %23 = add nsw i32 %22, 1
  %24 = load i64, i64* @AW_IR_ACTIVE_T_C, align 8
  %25 = icmp ne i64 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 128, i32 1
  %28 = mul nsw i32 %23, %27
  store i32 %28, i32* %8, align 4
  store i64 0, i64* %4, align 8
  %29 = load i32, i32* %8, align 4
  %30 = lshr i32 %29, 1
  %31 = zext i32 %30 to i64
  %32 = load i64, i64* %4, align 8
  %33 = add i64 %32, %31
  store i64 %33, i64* %4, align 8
  %34 = load i64, i64* @bootverbose, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %21
  %37 = load %struct.aw_ir_softc*, %struct.aw_ir_softc** %3, align 8
  %38 = getelementptr inbounds %struct.aw_ir_softc, %struct.aw_ir_softc* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i64, i64* %4, align 8
  %41 = call i32 (i32, i8*, ...) @device_printf(i32 %39, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i64 %40)
  br label %42

42:                                               ; preds = %36, %21
  store i32 0, i32* %9, align 4
  br label %43

43:                                               ; preds = %79, %42
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.aw_ir_softc*, %struct.aw_ir_softc** %3, align 8
  %46 = getelementptr inbounds %struct.aw_ir_softc, %struct.aw_ir_softc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %82

49:                                               ; preds = %43
  %50 = load %struct.aw_ir_softc*, %struct.aw_ir_softc** %3, align 8
  %51 = getelementptr inbounds %struct.aw_ir_softc, %struct.aw_ir_softc* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = load i8, i8* %55, align 1
  store i8 %56, i8* %6, align 1
  %57 = load i8, i8* %6, align 1
  %58 = zext i8 %57 to i32
  %59 = load i8, i8* @VAL_MASK, align 1
  %60 = zext i8 %59 to i32
  %61 = and i32 %58, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %49
  %64 = load i8, i8* %6, align 1
  %65 = zext i8 %64 to i32
  %66 = load i8, i8* @PERIOD_MASK, align 1
  %67 = zext i8 %66 to i32
  %68 = and i32 %65, %67
  %69 = sext i32 %68 to i64
  %70 = load i64, i64* %4, align 8
  %71 = add i64 %70, %69
  store i64 %71, i64* %4, align 8
  br label %78

72:                                               ; preds = %49
  %73 = load i64, i64* %4, align 8
  %74 = load i64, i64* @AW_IR_L1_MIN, align 8
  %75 = icmp ugt i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  br label %82

77:                                               ; preds = %72
  store i64 0, i64* %4, align 8
  br label %78

78:                                               ; preds = %77, %63
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %9, align 4
  br label %43

82:                                               ; preds = %76, %43
  %83 = load i64, i64* @bootverbose, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %82
  %86 = load %struct.aw_ir_softc*, %struct.aw_ir_softc** %3, align 8
  %87 = getelementptr inbounds %struct.aw_ir_softc, %struct.aw_ir_softc* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load i64, i64* %4, align 8
  %90 = call i32 (i32, i8*, ...) @device_printf(i32 %88, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i64 %89)
  br label %91

91:                                               ; preds = %85, %82
  %92 = load i8, i8* %6, align 1
  %93 = zext i8 %92 to i32
  %94 = load i8, i8* @VAL_MASK, align 1
  %95 = zext i8 %94 to i32
  %96 = and i32 %93, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %91
  %99 = load i64, i64* %4, align 8
  %100 = load i64, i64* @AW_IR_L1_MIN, align 8
  %101 = icmp ule i64 %99, %100
  br i1 %101, label %102, label %111

102:                                              ; preds = %98, %91
  %103 = load i64, i64* @bootverbose, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %102
  %106 = load %struct.aw_ir_softc*, %struct.aw_ir_softc** %3, align 8
  %107 = getelementptr inbounds %struct.aw_ir_softc, %struct.aw_ir_softc* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = call i32 (i32, i8*, ...) @device_printf(i32 %108, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %110

110:                                              ; preds = %105, %102
  br label %285

111:                                              ; preds = %98
  store i64 0, i64* %4, align 8
  br label %112

112:                                              ; preds = %148, %111
  %113 = load i32, i32* %9, align 4
  %114 = load %struct.aw_ir_softc*, %struct.aw_ir_softc** %3, align 8
  %115 = getelementptr inbounds %struct.aw_ir_softc, %struct.aw_ir_softc* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp slt i32 %113, %116
  br i1 %117, label %118, label %151

118:                                              ; preds = %112
  %119 = load %struct.aw_ir_softc*, %struct.aw_ir_softc** %3, align 8
  %120 = getelementptr inbounds %struct.aw_ir_softc, %struct.aw_ir_softc* %119, i32 0, i32 1
  %121 = load i8*, i8** %120, align 8
  %122 = load i32, i32* %9, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %121, i64 %123
  %125 = load i8, i8* %124, align 1
  store i8 %125, i8* %6, align 1
  %126 = load i8, i8* %6, align 1
  %127 = zext i8 %126 to i32
  %128 = load i8, i8* @VAL_MASK, align 1
  %129 = zext i8 %128 to i32
  %130 = and i32 %127, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %118
  %133 = load i64, i64* %4, align 8
  %134 = load i64, i64* @AW_IR_L0_MIN, align 8
  %135 = icmp ugt i64 %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %132
  br label %151

137:                                              ; preds = %132
  store i64 0, i64* %4, align 8
  br label %147

138:                                              ; preds = %118
  %139 = load i8, i8* %6, align 1
  %140 = zext i8 %139 to i32
  %141 = load i8, i8* @PERIOD_MASK, align 1
  %142 = zext i8 %141 to i32
  %143 = and i32 %140, %142
  %144 = sext i32 %143 to i64
  %145 = load i64, i64* %4, align 8
  %146 = add i64 %145, %144
  store i64 %146, i64* %4, align 8
  br label %147

147:                                              ; preds = %138, %137
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %9, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %9, align 4
  br label %112

151:                                              ; preds = %136, %112
  %152 = load i8, i8* %6, align 1
  %153 = zext i8 %152 to i32
  %154 = load i8, i8* @VAL_MASK, align 1
  %155 = zext i8 %154 to i32
  %156 = and i32 %153, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %151
  %159 = load i64, i64* %4, align 8
  %160 = load i64, i64* @AW_IR_L0_MIN, align 8
  %161 = icmp ule i64 %159, %160
  br i1 %161, label %162, label %171

162:                                              ; preds = %158, %151
  %163 = load i64, i64* @bootverbose, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %162
  %166 = load %struct.aw_ir_softc*, %struct.aw_ir_softc** %3, align 8
  %167 = getelementptr inbounds %struct.aw_ir_softc, %struct.aw_ir_softc* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = call i32 (i32, i8*, ...) @device_printf(i32 %168, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %170

170:                                              ; preds = %165, %162
  br label %285

171:                                              ; preds = %158
  store i64 0, i64* %5, align 8
  store i32 0, i32* %10, align 4
  store i8 1, i8* %7, align 1
  store i64 0, i64* %4, align 8
  br label %172

172:                                              ; preds = %280, %171
  %173 = load i32, i32* %9, align 4
  %174 = load %struct.aw_ir_softc*, %struct.aw_ir_softc** %3, align 8
  %175 = getelementptr inbounds %struct.aw_ir_softc, %struct.aw_ir_softc* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = icmp slt i32 %173, %176
  br i1 %177, label %178, label %283

178:                                              ; preds = %172
  %179 = load %struct.aw_ir_softc*, %struct.aw_ir_softc** %3, align 8
  %180 = getelementptr inbounds %struct.aw_ir_softc, %struct.aw_ir_softc* %179, i32 0, i32 1
  %181 = load i8*, i8** %180, align 8
  %182 = load i32, i32* %9, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i8, i8* %181, i64 %183
  %185 = load i8, i8* %184, align 1
  store i8 %185, i8* %6, align 1
  %186 = load i8, i8* %7, align 1
  %187 = icmp ne i8 %186, 0
  br i1 %187, label %188, label %225

188:                                              ; preds = %178
  %189 = load i8, i8* %6, align 1
  %190 = zext i8 %189 to i32
  %191 = load i8, i8* @VAL_MASK, align 1
  %192 = zext i8 %191 to i32
  %193 = and i32 %190, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %204

195:                                              ; preds = %188
  %196 = load i8, i8* %6, align 1
  %197 = zext i8 %196 to i32
  %198 = load i8, i8* @PERIOD_MASK, align 1
  %199 = zext i8 %198 to i32
  %200 = and i32 %197, %199
  %201 = sext i32 %200 to i64
  %202 = load i64, i64* %4, align 8
  %203 = add i64 %202, %201
  store i64 %203, i64* %4, align 8
  br label %224

204:                                              ; preds = %188
  %205 = load i64, i64* %4, align 8
  %206 = load i64, i64* @AW_IR_PMAX, align 8
  %207 = icmp ugt i64 %205, %206
  br i1 %207, label %208, label %217

208:                                              ; preds = %204
  %209 = load i64, i64* @bootverbose, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %216

211:                                              ; preds = %208
  %212 = load %struct.aw_ir_softc*, %struct.aw_ir_softc** %3, align 8
  %213 = getelementptr inbounds %struct.aw_ir_softc, %struct.aw_ir_softc* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = call i32 (i32, i8*, ...) @device_printf(i32 %214, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  br label %216

216:                                              ; preds = %211, %208
  br label %285

217:                                              ; preds = %204
  store i8 0, i8* %7, align 1
  %218 = load i8, i8* %6, align 1
  %219 = zext i8 %218 to i32
  %220 = load i8, i8* @PERIOD_MASK, align 1
  %221 = zext i8 %220 to i32
  %222 = and i32 %219, %221
  %223 = sext i32 %222 to i64
  store i64 %223, i64* %4, align 8
  br label %224

224:                                              ; preds = %217, %195
  br label %279

225:                                              ; preds = %178
  %226 = load i8, i8* %6, align 1
  %227 = zext i8 %226 to i32
  %228 = load i8, i8* @VAL_MASK, align 1
  %229 = zext i8 %228 to i32
  %230 = and i32 %227, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %269

232:                                              ; preds = %225
  %233 = load i64, i64* %4, align 8
  %234 = load i64, i64* @AW_IR_DMAX, align 8
  %235 = icmp ugt i64 %233, %234
  br i1 %235, label %236, label %245

236:                                              ; preds = %232
  %237 = load i64, i64* @bootverbose, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %244

239:                                              ; preds = %236
  %240 = load %struct.aw_ir_softc*, %struct.aw_ir_softc** %3, align 8
  %241 = getelementptr inbounds %struct.aw_ir_softc, %struct.aw_ir_softc* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 8
  %243 = call i32 (i32, i8*, ...) @device_printf(i32 %242, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  br label %244

244:                                              ; preds = %239, %236
  br label %285

245:                                              ; preds = %232
  %246 = load i64, i64* %4, align 8
  %247 = load i64, i64* @AW_IR_DMID, align 8
  %248 = icmp ugt i64 %246, %247
  br i1 %248, label %249, label %255

249:                                              ; preds = %245
  %250 = load i32, i32* %10, align 4
  %251 = shl i32 1, %250
  %252 = sext i32 %251 to i64
  %253 = load i64, i64* %5, align 8
  %254 = or i64 %253, %252
  store i64 %254, i64* %5, align 8
  br label %255

255:                                              ; preds = %249, %245
  %256 = load i32, i32* %10, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %10, align 4
  %258 = load i32, i32* %10, align 4
  %259 = icmp eq i32 %258, 32
  br i1 %259, label %260, label %261

260:                                              ; preds = %255
  br label %283

261:                                              ; preds = %255
  br label %262

262:                                              ; preds = %261
  store i8 1, i8* %7, align 1
  %263 = load i8, i8* %6, align 1
  %264 = zext i8 %263 to i32
  %265 = load i8, i8* @PERIOD_MASK, align 1
  %266 = zext i8 %265 to i32
  %267 = and i32 %264, %266
  %268 = sext i32 %267 to i64
  store i64 %268, i64* %4, align 8
  br label %278

269:                                              ; preds = %225
  %270 = load i8, i8* %6, align 1
  %271 = zext i8 %270 to i32
  %272 = load i8, i8* @PERIOD_MASK, align 1
  %273 = zext i8 %272 to i32
  %274 = and i32 %271, %273
  %275 = sext i32 %274 to i64
  %276 = load i64, i64* %4, align 8
  %277 = add i64 %276, %275
  store i64 %277, i64* %4, align 8
  br label %278

278:                                              ; preds = %269, %262
  br label %279

279:                                              ; preds = %278, %224
  br label %280

280:                                              ; preds = %279
  %281 = load i32, i32* %9, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %9, align 4
  br label %172

283:                                              ; preds = %260, %172
  %284 = load i64, i64* %5, align 8
  store i64 %284, i64* %2, align 8
  br label %287

285:                                              ; preds = %244, %216, %170, %110
  %286 = load i64, i64* @AW_IR_ERROR_CODE, align 8
  store i64 %286, i64* %2, align 8
  br label %287

287:                                              ; preds = %285, %283
  %288 = load i64, i64* %2, align 8
  ret i64 %288
}

declare dso_local i32 @device_printf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
