; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_unwind.c_unwind_exec_insn.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_unwind.c_unwind_exec_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unwind_state = type { i32*, i64, i32 }

@SP = common dso_local global i64 0, align 8
@INSN_VSP_MASK = common dso_local global i32 0, align 4
@INSN_VSP_INC = common dso_local global i32 0, align 4
@INSN_VSP_SIZE_MASK = common dso_local global i32 0, align 4
@INSN_VSP_DEC = common dso_local global i32 0, align 4
@INSN_STD_MASK = common dso_local global i32 0, align 4
@INSN_POP_MASKED = common dso_local global i32 0, align 4
@INSN_STD_DATA_MASK = common dso_local global i32 0, align 4
@INSN_VSP_REG = common dso_local global i32 0, align 4
@INSN_POP_COUNT = common dso_local global i32 0, align 4
@INSN_POP_COUNT_MASK = common dso_local global i32 0, align 4
@INSN_POP_TYPE_MASK = common dso_local global i32 0, align 4
@INSN_FINISH = common dso_local global i32 0, align 4
@INSN_POP_REGS = common dso_local global i32 0, align 4
@INSN_VSP_LARGE_INC_MASK = common dso_local global i32 0, align 4
@INSN_VSP_LARGE_INC = common dso_local global i32 0, align 4
@FP = common dso_local global i64 0, align 8
@LR = common dso_local global i64 0, align 8
@PC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.unwind_state*)* @unwind_exec_insn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unwind_exec_insn(%struct.unwind_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.unwind_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.unwind_state* %0, %struct.unwind_state** %3, align 8
  %14 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %15 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i64, i64* @SP, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = zext i32 %19 to i64
  %21 = inttoptr i64 %20 to i32*
  store i32* %21, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %22 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %23 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %302

27:                                               ; preds = %1
  %28 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %29 = call i32 @unwind_exec_read_byte(%struct.unwind_state* %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @INSN_VSP_MASK, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* @INSN_VSP_INC, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %27
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @INSN_VSP_SIZE_MASK, align 4
  %38 = and i32 %36, %37
  %39 = shl i32 %38, 2
  %40 = add i32 %39, 4
  %41 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %42 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* @SP, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = add i32 %46, %40
  store i32 %47, i32* %45, align 4
  br label %290

48:                                               ; preds = %27
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @INSN_VSP_MASK, align 4
  %51 = and i32 %49, %50
  %52 = load i32, i32* @INSN_VSP_DEC, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %67

54:                                               ; preds = %48
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @INSN_VSP_SIZE_MASK, align 4
  %57 = and i32 %55, %56
  %58 = shl i32 %57, 2
  %59 = add i32 %58, 4
  %60 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %61 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i64, i64* @SP, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = sub i32 %65, %59
  store i32 %66, i32* %64, align 4
  br label %289

67:                                               ; preds = %48
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @INSN_STD_MASK, align 4
  %70 = and i32 %68, %69
  %71 = load i32, i32* @INSN_POP_MASKED, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %127

73:                                               ; preds = %67
  %74 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %75 = call i32 @unwind_exec_read_byte(%struct.unwind_state* %74)
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @INSN_STD_DATA_MASK, align 4
  %78 = and i32 %76, %77
  %79 = shl i32 %78, 8
  %80 = load i32, i32* %7, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %73
  store i32 1, i32* %2, align 4
  br label %302

85:                                               ; preds = %73
  store i32 1, i32* %6, align 4
  store i32 4, i32* %8, align 4
  br label %86

86:                                               ; preds = %121, %85
  %87 = load i32, i32* %7, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load i32, i32* %8, align 4
  %91 = icmp ult i32 %90, 16
  br label %92

92:                                               ; preds = %89, %86
  %93 = phi i1 [ false, %86 ], [ %91, %89 ]
  br i1 %93, label %94, label %126

94:                                               ; preds = %92
  %95 = load i32, i32* %7, align 4
  %96 = and i32 %95, 1
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %120

98:                                               ; preds = %94
  %99 = load i32*, i32** %5, align 8
  %100 = getelementptr inbounds i32, i32* %99, i32 1
  store i32* %100, i32** %5, align 8
  %101 = load i32, i32* %99, align 4
  %102 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %103 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %8, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  store i32 %101, i32* %107, align 4
  %108 = load i32, i32* %8, align 4
  %109 = shl i32 1, %108
  %110 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %111 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = or i32 %112, %109
  store i32 %113, i32* %111, align 8
  %114 = load i32, i32* %8, align 4
  %115 = zext i32 %114 to i64
  %116 = load i64, i64* @SP, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %98
  store i32 0, i32* %6, align 4
  br label %119

119:                                              ; preds = %118, %98
  br label %120

120:                                              ; preds = %119, %94
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %7, align 4
  %123 = lshr i32 %122, 1
  store i32 %123, i32* %7, align 4
  %124 = load i32, i32* %8, align 4
  %125 = add i32 %124, 1
  store i32 %125, i32* %8, align 4
  br label %86

126:                                              ; preds = %92
  br label %288

127:                                              ; preds = %67
  %128 = load i32, i32* %4, align 4
  %129 = load i32, i32* @INSN_STD_MASK, align 4
  %130 = and i32 %128, %129
  %131 = load i32, i32* @INSN_VSP_REG, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %158

133:                                              ; preds = %127
  %134 = load i32, i32* %4, align 4
  %135 = load i32, i32* @INSN_STD_DATA_MASK, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 13
  br i1 %137, label %138, label %158

138:                                              ; preds = %133
  %139 = load i32, i32* %4, align 4
  %140 = load i32, i32* @INSN_STD_DATA_MASK, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 15
  br i1 %142, label %143, label %158

143:                                              ; preds = %138
  %144 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %145 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* %4, align 4
  %148 = load i32, i32* @INSN_STD_DATA_MASK, align 4
  %149 = and i32 %147, %148
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %146, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %154 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %153, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = load i64, i64* @SP, align 8
  %157 = getelementptr inbounds i32, i32* %155, i64 %156
  store i32 %152, i32* %157, align 4
  br label %287

158:                                              ; preds = %138, %133, %127
  %159 = load i32, i32* %4, align 4
  %160 = load i32, i32* @INSN_STD_MASK, align 4
  %161 = and i32 %159, %160
  %162 = load i32, i32* @INSN_POP_COUNT, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %206

164:                                              ; preds = %158
  %165 = load i32, i32* %4, align 4
  %166 = load i32, i32* @INSN_POP_COUNT_MASK, align 4
  %167 = and i32 %165, %166
  store i32 %167, i32* %9, align 4
  store i32 1, i32* %6, align 4
  store i32 4, i32* %10, align 4
  br label %168

168:                                              ; preds = %189, %164
  %169 = load i32, i32* %10, align 4
  %170 = load i32, i32* %9, align 4
  %171 = add i32 4, %170
  %172 = icmp ule i32 %169, %171
  br i1 %172, label %173, label %192

173:                                              ; preds = %168
  %174 = load i32*, i32** %5, align 8
  %175 = getelementptr inbounds i32, i32* %174, i32 1
  store i32* %175, i32** %5, align 8
  %176 = load i32, i32* %174, align 4
  %177 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %178 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %177, i32 0, i32 0
  %179 = load i32*, i32** %178, align 8
  %180 = load i32, i32* %10, align 4
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  store i32 %176, i32* %182, align 4
  %183 = load i32, i32* %10, align 4
  %184 = shl i32 1, %183
  %185 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %186 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = or i32 %187, %184
  store i32 %188, i32* %186, align 8
  br label %189

189:                                              ; preds = %173
  %190 = load i32, i32* %10, align 4
  %191 = add i32 %190, 1
  store i32 %191, i32* %10, align 4
  br label %168

192:                                              ; preds = %168
  %193 = load i32, i32* %4, align 4
  %194 = load i32, i32* @INSN_POP_TYPE_MASK, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %205

197:                                              ; preds = %192
  %198 = load i32*, i32** %5, align 8
  %199 = getelementptr inbounds i32, i32* %198, i32 1
  store i32* %199, i32** %5, align 8
  %200 = load i32, i32* %198, align 4
  %201 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %202 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %201, i32 0, i32 0
  %203 = load i32*, i32** %202, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 14
  store i32 %200, i32* %204, align 4
  br label %205

205:                                              ; preds = %197, %192
  br label %286

206:                                              ; preds = %158
  %207 = load i32, i32* %4, align 4
  %208 = load i32, i32* @INSN_FINISH, align 4
  %209 = icmp eq i32 %207, %208
  br i1 %209, label %210, label %213

210:                                              ; preds = %206
  %211 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %212 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %211, i32 0, i32 1
  store i64 0, i64* %212, align 8
  br label %285

213:                                              ; preds = %206
  %214 = load i32, i32* %4, align 4
  %215 = load i32, i32* @INSN_POP_REGS, align 4
  %216 = icmp eq i32 %214, %215
  br i1 %216, label %217, label %263

217:                                              ; preds = %213
  %218 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %219 = call i32 @unwind_exec_read_byte(%struct.unwind_state* %218)
  store i32 %219, i32* %11, align 4
  %220 = load i32, i32* %11, align 4
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %226, label %222

222:                                              ; preds = %217
  %223 = load i32, i32* %11, align 4
  %224 = and i32 %223, 240
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %222, %217
  store i32 1, i32* %2, align 4
  br label %302

227:                                              ; preds = %222
  store i32 1, i32* %6, align 4
  store i32 0, i32* %12, align 4
  br label %228

228:                                              ; preds = %257, %227
  %229 = load i32, i32* %11, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %234

231:                                              ; preds = %228
  %232 = load i32, i32* %12, align 4
  %233 = icmp ult i32 %232, 4
  br label %234

234:                                              ; preds = %231, %228
  %235 = phi i1 [ false, %228 ], [ %233, %231 ]
  br i1 %235, label %236, label %262

236:                                              ; preds = %234
  %237 = load i32, i32* %11, align 4
  %238 = and i32 %237, 1
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %256

240:                                              ; preds = %236
  %241 = load i32*, i32** %5, align 8
  %242 = getelementptr inbounds i32, i32* %241, i32 1
  store i32* %242, i32** %5, align 8
  %243 = load i32, i32* %241, align 4
  %244 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %245 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %244, i32 0, i32 0
  %246 = load i32*, i32** %245, align 8
  %247 = load i32, i32* %12, align 4
  %248 = zext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %246, i64 %248
  store i32 %243, i32* %249, align 4
  %250 = load i32, i32* %12, align 4
  %251 = shl i32 1, %250
  %252 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %253 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %252, i32 0, i32 2
  %254 = load i32, i32* %253, align 8
  %255 = or i32 %254, %251
  store i32 %255, i32* %253, align 8
  br label %256

256:                                              ; preds = %240, %236
  br label %257

257:                                              ; preds = %256
  %258 = load i32, i32* %11, align 4
  %259 = lshr i32 %258, 1
  store i32 %259, i32* %11, align 4
  %260 = load i32, i32* %12, align 4
  %261 = add i32 %260, 1
  store i32 %261, i32* %12, align 4
  br label %228

262:                                              ; preds = %234
  br label %284

263:                                              ; preds = %213
  %264 = load i32, i32* %4, align 4
  %265 = load i32, i32* @INSN_VSP_LARGE_INC_MASK, align 4
  %266 = and i32 %264, %265
  %267 = load i32, i32* @INSN_VSP_LARGE_INC, align 4
  %268 = icmp eq i32 %266, %267
  br i1 %268, label %269, label %282

269:                                              ; preds = %263
  %270 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %271 = call i32 @unwind_exec_read_byte(%struct.unwind_state* %270)
  store i32 %271, i32* %13, align 4
  %272 = load i32, i32* %13, align 4
  %273 = shl i32 %272, 2
  %274 = add i32 516, %273
  %275 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %276 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %275, i32 0, i32 0
  %277 = load i32*, i32** %276, align 8
  %278 = load i64, i64* @SP, align 8
  %279 = getelementptr inbounds i32, i32* %277, i64 %278
  %280 = load i32, i32* %279, align 4
  %281 = add i32 %280, %274
  store i32 %281, i32* %279, align 4
  br label %283

282:                                              ; preds = %263
  store i32 1, i32* %2, align 4
  br label %302

283:                                              ; preds = %269
  br label %284

284:                                              ; preds = %283, %262
  br label %285

285:                                              ; preds = %284, %210
  br label %286

286:                                              ; preds = %285, %205
  br label %287

287:                                              ; preds = %286, %143
  br label %288

288:                                              ; preds = %287, %126
  br label %289

289:                                              ; preds = %288, %54
  br label %290

290:                                              ; preds = %289, %35
  %291 = load i32, i32* %6, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %301

293:                                              ; preds = %290
  %294 = load i32*, i32** %5, align 8
  %295 = ptrtoint i32* %294 to i32
  %296 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %297 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %296, i32 0, i32 0
  %298 = load i32*, i32** %297, align 8
  %299 = load i64, i64* @SP, align 8
  %300 = getelementptr inbounds i32, i32* %298, i64 %299
  store i32 %295, i32* %300, align 4
  br label %301

301:                                              ; preds = %293, %290
  store i32 0, i32* %2, align 4
  br label %302

302:                                              ; preds = %301, %282, %226, %84, %26
  %303 = load i32, i32* %2, align 4
  ret i32 %303
}

declare dso_local i32 @unwind_exec_read_byte(%struct.unwind_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
