; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_parser.c_ucl_maybe_parse_number.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_parser.c_ucl_maybe_parse_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { double, double }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i64 0, align 8
@UCL_CHARACTER_WHITESPACE = common dso_local global i32 0, align 4
@UCL_FLOAT = common dso_local global i32 0, align 4
@UCL_TIME = common dso_local global i32 0, align 4
@UCL_INT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ucl_maybe_parse_number(%struct.TYPE_5__* %0, i8* %1, i8* %2, i8** %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8** %3, i8*** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %28 = load i8*, i8** %10, align 8
  store i8* %28, i8** %16, align 8
  %29 = load i8*, i8** %10, align 8
  store i8* %29, i8** %17, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  store double 0.000000e+00, double* %26, align 8
  store double 0.000000e+00, double* %27, align 8
  %30 = load i8*, i8** %16, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 45
  br i1 %33, label %34, label %39

34:                                               ; preds = %7
  store i32 1, i32* %25, align 4
  %35 = load i8*, i8** %17, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %17, align 8
  %37 = load i8*, i8** %16, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %16, align 8
  br label %39

39:                                               ; preds = %34, %7
  br label %40

40:                                               ; preds = %165, %39
  %41 = load i8*, i8** %16, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = icmp ult i8* %41, %42
  br i1 %43, label %44, label %166

44:                                               ; preds = %40
  %45 = load i32, i32* %24, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %44
  %48 = load i8*, i8** %16, align 8
  %49 = load i8, i8* %48, align 1
  %50 = call i64 @isxdigit(i8 signext %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i8*, i8** %16, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %16, align 8
  br label %165

55:                                               ; preds = %47, %44
  %56 = load i8*, i8** %16, align 8
  %57 = load i8, i8* %56, align 1
  %58 = call i64 @isdigit(i8 signext %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  store i32 1, i32* %23, align 4
  %61 = load i8*, i8** %16, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %16, align 8
  br label %164

63:                                               ; preds = %55
  %64 = load i32, i32* %24, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %79, label %66

66:                                               ; preds = %63
  %67 = load i8*, i8** %16, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 120
  br i1 %70, label %76, label %71

71:                                               ; preds = %66
  %72 = load i8*, i8** %16, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 88
  br i1 %75, label %76, label %79

76:                                               ; preds = %71, %66
  store i32 1, i32* %24, align 4
  store i32 0, i32* %13, align 4
  %77 = load i8*, i8** %16, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 1
  store i8* %78, i8** %17, align 8
  br label %163

79:                                               ; preds = %71, %63
  %80 = load i32, i32* %13, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %161

82:                                               ; preds = %79
  %83 = load i8*, i8** %16, align 8
  %84 = load i8*, i8** %17, align 8
  %85 = icmp eq i8* %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %82
  %87 = load i8*, i8** %10, align 8
  %88 = load i8**, i8*** %12, align 8
  store i8* %87, i8** %88, align 8
  %89 = load i32, i32* @EINVAL, align 4
  store i32 %89, i32* %8, align 4
  br label %535

90:                                               ; preds = %82
  %91 = load i8*, i8** %16, align 8
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 46
  br i1 %94, label %95, label %106

95:                                               ; preds = %90
  %96 = load i32, i32* %19, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %95
  %99 = load i8*, i8** %10, align 8
  %100 = load i8**, i8*** %12, align 8
  store i8* %99, i8** %100, align 8
  %101 = load i32, i32* @EINVAL, align 4
  store i32 %101, i32* %8, align 4
  br label %535

102:                                              ; preds = %95
  store i32 1, i32* %19, align 4
  store i32 1, i32* %21, align 4
  %103 = load i8*, i8** %16, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %16, align 8
  br label %105

105:                                              ; preds = %102
  br label %159

106:                                              ; preds = %90
  %107 = load i8*, i8** %16, align 8
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 %109, 101
  br i1 %110, label %116, label %111

111:                                              ; preds = %106
  %112 = load i8*, i8** %16, align 8
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp eq i32 %114, 69
  br i1 %115, label %116, label %157

116:                                              ; preds = %111, %106
  %117 = load i32, i32* %20, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %116
  %120 = load i8*, i8** %10, align 8
  %121 = load i8**, i8*** %12, align 8
  store i8* %120, i8** %121, align 8
  %122 = load i32, i32* @EINVAL, align 4
  store i32 %122, i32* %8, align 4
  br label %535

123:                                              ; preds = %116
  store i32 1, i32* %20, align 4
  store i32 1, i32* %21, align 4
  %124 = load i8*, i8** %16, align 8
  %125 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %125, i8** %16, align 8
  %126 = load i8*, i8** %16, align 8
  %127 = load i8*, i8** %11, align 8
  %128 = icmp uge i8* %126, %127
  br i1 %128, label %129, label %133

129:                                              ; preds = %123
  %130 = load i8*, i8** %10, align 8
  %131 = load i8**, i8*** %12, align 8
  store i8* %130, i8** %131, align 8
  %132 = load i32, i32* @EINVAL, align 4
  store i32 %132, i32* %8, align 4
  br label %535

133:                                              ; preds = %123
  %134 = load i8*, i8** %16, align 8
  %135 = load i8, i8* %134, align 1
  %136 = call i64 @isdigit(i8 signext %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %152, label %138

138:                                              ; preds = %133
  %139 = load i8*, i8** %16, align 8
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp ne i32 %141, 43
  br i1 %142, label %143, label %152

143:                                              ; preds = %138
  %144 = load i8*, i8** %16, align 8
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  %147 = icmp ne i32 %146, 45
  br i1 %147, label %148, label %152

148:                                              ; preds = %143
  %149 = load i8*, i8** %10, align 8
  %150 = load i8**, i8*** %12, align 8
  store i8* %149, i8** %150, align 8
  %151 = load i32, i32* @EINVAL, align 4
  store i32 %151, i32* %8, align 4
  br label %535

152:                                              ; preds = %143, %138, %133
  %153 = load i8*, i8** %16, align 8
  %154 = getelementptr inbounds i8, i8* %153, i32 1
  store i8* %154, i8** %16, align 8
  br label %155

155:                                              ; preds = %152
  br label %156

156:                                              ; preds = %155
  br label %158

157:                                              ; preds = %111
  br label %166

158:                                              ; preds = %156
  br label %159

159:                                              ; preds = %158, %105
  br label %160

160:                                              ; preds = %159
  br label %162

161:                                              ; preds = %79
  br label %166

162:                                              ; preds = %160
  br label %163

163:                                              ; preds = %162, %76
  br label %164

164:                                              ; preds = %163, %60
  br label %165

165:                                              ; preds = %164, %52
  br label %40

166:                                              ; preds = %161, %157, %40
  %167 = load i32, i32* %23, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %173, label %169

169:                                              ; preds = %166
  %170 = load i8*, i8** %10, align 8
  %171 = load i8**, i8*** %12, align 8
  store i8* %170, i8** %171, align 8
  %172 = load i32, i32* @EINVAL, align 4
  store i32 %172, i32* %8, align 4
  br label %535

173:                                              ; preds = %166
  store i64 0, i64* @errno, align 8
  %174 = load i32, i32* %21, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %173
  %177 = load i8*, i8** %17, align 8
  %178 = call double @strtod(i8* %177, i8** %18)
  store double %178, double* %26, align 8
  br label %189

179:                                              ; preds = %173
  %180 = load i32, i32* %24, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %179
  %183 = load i8*, i8** %17, align 8
  %184 = call double @strtoimax(i8* %183, i8** %18, i32 16)
  store double %184, double* %27, align 8
  br label %188

185:                                              ; preds = %179
  %186 = load i8*, i8** %17, align 8
  %187 = call double @strtoimax(i8* %186, i8** %18, i32 10)
  store double %187, double* %27, align 8
  br label %188

188:                                              ; preds = %185, %182
  br label %189

189:                                              ; preds = %188, %176
  %190 = load i64, i64* @errno, align 8
  %191 = load i64, i64* @ERANGE, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %198

193:                                              ; preds = %189
  %194 = load i8*, i8** %10, align 8
  %195 = load i8**, i8*** %12, align 8
  store i8* %194, i8** %195, align 8
  %196 = load i64, i64* @ERANGE, align 8
  %197 = trunc i64 %196 to i32
  store i32 %197, i32* %8, align 4
  br label %535

198:                                              ; preds = %189
  %199 = load i8*, i8** %18, align 8
  %200 = icmp eq i8* %199, null
  br i1 %200, label %211, label %201

201:                                              ; preds = %198
  %202 = load i8*, i8** %18, align 8
  %203 = load i8, i8* %202, align 1
  %204 = call i64 @ucl_lex_is_atom_end(i8 signext %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %211, label %206

206:                                              ; preds = %201
  %207 = load i8*, i8** %18, align 8
  %208 = load i8, i8* %207, align 1
  %209 = sext i8 %208 to i32
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %213

211:                                              ; preds = %206, %201, %198
  %212 = load i8*, i8** %18, align 8
  store i8* %212, i8** %16, align 8
  br label %479

213:                                              ; preds = %206
  %214 = load i8*, i8** %18, align 8
  %215 = load i8*, i8** %11, align 8
  %216 = icmp ult i8* %214, %215
  br i1 %216, label %217, label %468

217:                                              ; preds = %213
  %218 = load i8*, i8** %18, align 8
  %219 = load i8*, i8** %10, align 8
  %220 = icmp ne i8* %218, %219
  br i1 %220, label %221, label %468

221:                                              ; preds = %217
  %222 = load i8*, i8** %18, align 8
  store i8* %222, i8** %16, align 8
  %223 = load i8*, i8** %16, align 8
  %224 = load i8, i8* %223, align 1
  %225 = sext i8 %224 to i32
  switch i32 %225, label %467 [
    i32 109, label %226
    i32 77, label %226
    i32 103, label %226
    i32 71, label %226
    i32 107, label %226
    i32 75, label %226
    i32 83, label %393
    i32 115, label %393
    i32 104, label %416
    i32 72, label %416
    i32 100, label %416
    i32 68, label %416
    i32 119, label %416
    i32 87, label %416
    i32 89, label %416
    i32 121, label %416
    i32 9, label %444
    i32 32, label %444
  ]

226:                                              ; preds = %221, %221, %221, %221, %221, %221
  %227 = load i8*, i8** %11, align 8
  %228 = load i8*, i8** %16, align 8
  %229 = ptrtoint i8* %227 to i64
  %230 = ptrtoint i8* %228 to i64
  %231 = sub i64 %229, %230
  %232 = icmp sge i64 %231, 2
  br i1 %232, label %233, label %373

233:                                              ; preds = %226
  %234 = load i8*, i8** %16, align 8
  %235 = getelementptr inbounds i8, i8* %234, i64 1
  %236 = load i8, i8* %235, align 1
  %237 = sext i8 %236 to i32
  %238 = icmp eq i32 %237, 115
  br i1 %238, label %245, label %239

239:                                              ; preds = %233
  %240 = load i8*, i8** %16, align 8
  %241 = getelementptr inbounds i8, i8* %240, i64 1
  %242 = load i8, i8* %241, align 1
  %243 = sext i8 %242 to i32
  %244 = icmp eq i32 %243, 83
  br i1 %244, label %245, label %274

245:                                              ; preds = %239, %233
  %246 = load i32, i32* %21, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %250, label %248

248:                                              ; preds = %245
  store i32 1, i32* %21, align 4
  %249 = load double, double* %27, align 8
  store double %249, double* %26, align 8
  br label %250

250:                                              ; preds = %248, %245
  store i32 1, i32* %22, align 4
  %251 = load i8*, i8** %16, align 8
  %252 = getelementptr inbounds i8, i8* %251, i64 0
  %253 = load i8, i8* %252, align 1
  %254 = sext i8 %253 to i32
  %255 = icmp eq i32 %254, 109
  br i1 %255, label %262, label %256

256:                                              ; preds = %250
  %257 = load i8*, i8** %16, align 8
  %258 = getelementptr inbounds i8, i8* %257, i64 0
  %259 = load i8, i8* %258, align 1
  %260 = sext i8 %259 to i32
  %261 = icmp eq i32 %260, 77
  br i1 %261, label %262, label %265

262:                                              ; preds = %256, %250
  %263 = load double, double* %26, align 8
  %264 = fdiv double %263, 1.000000e+03
  store double %264, double* %26, align 8
  br label %271

265:                                              ; preds = %256
  %266 = load i8*, i8** %16, align 8
  %267 = load i8, i8* %266, align 1
  %268 = call double @ucl_lex_num_multiplier(i8 signext %267, i32 0)
  %269 = load double, double* %26, align 8
  %270 = fmul double %269, %268
  store double %270, double* %26, align 8
  br label %271

271:                                              ; preds = %265, %262
  %272 = load i8*, i8** %16, align 8
  %273 = getelementptr inbounds i8, i8* %272, i64 2
  store i8* %273, i8** %16, align 8
  br label %479

274:                                              ; preds = %239
  %275 = load i32, i32* %14, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %289, label %277

277:                                              ; preds = %274
  %278 = load i8*, i8** %16, align 8
  %279 = getelementptr inbounds i8, i8* %278, i64 1
  %280 = load i8, i8* %279, align 1
  %281 = sext i8 %280 to i32
  %282 = icmp eq i32 %281, 98
  br i1 %282, label %289, label %283

283:                                              ; preds = %277
  %284 = load i8*, i8** %16, align 8
  %285 = getelementptr inbounds i8, i8* %284, i64 1
  %286 = load i8, i8* %285, align 1
  %287 = sext i8 %286 to i32
  %288 = icmp eq i32 %287, 66
  br i1 %288, label %289, label %302

289:                                              ; preds = %283, %277, %274
  %290 = load i32, i32* %21, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %294

292:                                              ; preds = %289
  store i32 0, i32* %21, align 4
  %293 = load double, double* %26, align 8
  store double %293, double* %27, align 8
  br label %294

294:                                              ; preds = %292, %289
  %295 = load i8*, i8** %16, align 8
  %296 = load i8, i8* %295, align 1
  %297 = call double @ucl_lex_num_multiplier(i8 signext %296, i32 1)
  %298 = load double, double* %27, align 8
  %299 = fmul double %298, %297
  store double %299, double* %27, align 8
  %300 = load i8*, i8** %16, align 8
  %301 = getelementptr inbounds i8, i8* %300, i64 2
  store i8* %301, i8** %16, align 8
  br label %479

302:                                              ; preds = %283
  %303 = load i8*, i8** %16, align 8
  %304 = getelementptr inbounds i8, i8* %303, i64 1
  %305 = load i8, i8* %304, align 1
  %306 = call i64 @ucl_lex_is_atom_end(i8 signext %305)
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %308, label %327

308:                                              ; preds = %302
  %309 = load i32, i32* %21, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %317

311:                                              ; preds = %308
  %312 = load i8*, i8** %16, align 8
  %313 = load i8, i8* %312, align 1
  %314 = call double @ucl_lex_num_multiplier(i8 signext %313, i32 0)
  %315 = load double, double* %26, align 8
  %316 = fmul double %315, %314
  store double %316, double* %26, align 8
  br label %324

317:                                              ; preds = %308
  %318 = load i8*, i8** %16, align 8
  %319 = load i8, i8* %318, align 1
  %320 = load i32, i32* %14, align 4
  %321 = call double @ucl_lex_num_multiplier(i8 signext %319, i32 %320)
  %322 = load double, double* %27, align 8
  %323 = fmul double %322, %321
  store double %323, double* %27, align 8
  br label %324

324:                                              ; preds = %317, %311
  %325 = load i8*, i8** %16, align 8
  %326 = getelementptr inbounds i8, i8* %325, i32 1
  store i8* %326, i8** %16, align 8
  br label %479

327:                                              ; preds = %302
  %328 = load i32, i32* %15, align 4
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %369

330:                                              ; preds = %327
  %331 = load i8*, i8** %11, align 8
  %332 = load i8*, i8** %16, align 8
  %333 = ptrtoint i8* %331 to i64
  %334 = ptrtoint i8* %332 to i64
  %335 = sub i64 %333, %334
  %336 = icmp sge i64 %335, 3
  br i1 %336, label %337, label %369

337:                                              ; preds = %330
  %338 = load i8*, i8** %16, align 8
  %339 = getelementptr inbounds i8, i8* %338, i64 0
  %340 = load i8, i8* %339, align 1
  %341 = call signext i8 @tolower(i8 signext %340)
  %342 = sext i8 %341 to i32
  %343 = icmp eq i32 %342, 109
  br i1 %343, label %344, label %368

344:                                              ; preds = %337
  %345 = load i8*, i8** %16, align 8
  %346 = getelementptr inbounds i8, i8* %345, i64 1
  %347 = load i8, i8* %346, align 1
  %348 = call signext i8 @tolower(i8 signext %347)
  %349 = sext i8 %348 to i32
  %350 = icmp eq i32 %349, 105
  br i1 %350, label %351, label %368

351:                                              ; preds = %344
  %352 = load i8*, i8** %16, align 8
  %353 = getelementptr inbounds i8, i8* %352, i64 2
  %354 = load i8, i8* %353, align 1
  %355 = call signext i8 @tolower(i8 signext %354)
  %356 = sext i8 %355 to i32
  %357 = icmp eq i32 %356, 110
  br i1 %357, label %358, label %368

358:                                              ; preds = %351
  %359 = load i32, i32* %21, align 4
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %363, label %361

361:                                              ; preds = %358
  store i32 1, i32* %21, align 4
  %362 = load double, double* %27, align 8
  store double %362, double* %26, align 8
  br label %363

363:                                              ; preds = %361, %358
  store i32 1, i32* %22, align 4
  %364 = load double, double* %26, align 8
  %365 = fmul double %364, 6.000000e+01
  store double %365, double* %26, align 8
  %366 = load i8*, i8** %16, align 8
  %367 = getelementptr inbounds i8, i8* %366, i64 3
  store i8* %367, i8** %16, align 8
  br label %479

368:                                              ; preds = %351, %344, %337
  br label %369

369:                                              ; preds = %368, %330, %327
  br label %370

370:                                              ; preds = %369
  br label %371

371:                                              ; preds = %370
  br label %372

372:                                              ; preds = %371
  br label %392

373:                                              ; preds = %226
  %374 = load i32, i32* %21, align 4
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %382

376:                                              ; preds = %373
  %377 = load i8*, i8** %16, align 8
  %378 = load i8, i8* %377, align 1
  %379 = call double @ucl_lex_num_multiplier(i8 signext %378, i32 0)
  %380 = load double, double* %26, align 8
  %381 = fmul double %380, %379
  store double %381, double* %26, align 8
  br label %389

382:                                              ; preds = %373
  %383 = load i8*, i8** %16, align 8
  %384 = load i8, i8* %383, align 1
  %385 = load i32, i32* %14, align 4
  %386 = call double @ucl_lex_num_multiplier(i8 signext %384, i32 %385)
  %387 = load double, double* %27, align 8
  %388 = fmul double %387, %386
  store double %388, double* %27, align 8
  br label %389

389:                                              ; preds = %382, %376
  %390 = load i8*, i8** %16, align 8
  %391 = getelementptr inbounds i8, i8* %390, i32 1
  store i8* %391, i8** %16, align 8
  br label %479

392:                                              ; preds = %372
  br label %467

393:                                              ; preds = %221, %221
  %394 = load i32, i32* %15, align 4
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %415

396:                                              ; preds = %393
  %397 = load i8*, i8** %16, align 8
  %398 = load i8*, i8** %11, align 8
  %399 = getelementptr inbounds i8, i8* %398, i64 -1
  %400 = icmp eq i8* %397, %399
  br i1 %400, label %407, label %401

401:                                              ; preds = %396
  %402 = load i8*, i8** %16, align 8
  %403 = getelementptr inbounds i8, i8* %402, i64 1
  %404 = load i8, i8* %403, align 1
  %405 = call i64 @ucl_lex_is_atom_end(i8 signext %404)
  %406 = icmp ne i64 %405, 0
  br i1 %406, label %407, label %415

407:                                              ; preds = %401, %396
  %408 = load i32, i32* %21, align 4
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %412, label %410

410:                                              ; preds = %407
  store i32 1, i32* %21, align 4
  %411 = load double, double* %27, align 8
  store double %411, double* %26, align 8
  br label %412

412:                                              ; preds = %410, %407
  %413 = load i8*, i8** %16, align 8
  %414 = getelementptr inbounds i8, i8* %413, i32 1
  store i8* %414, i8** %16, align 8
  store i32 1, i32* %22, align 4
  br label %479

415:                                              ; preds = %401, %393
  br label %467

416:                                              ; preds = %221, %221, %221, %221, %221, %221, %221, %221
  %417 = load i32, i32* %15, align 4
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %419, label %443

419:                                              ; preds = %416
  %420 = load i8*, i8** %16, align 8
  %421 = load i8*, i8** %11, align 8
  %422 = getelementptr inbounds i8, i8* %421, i64 -1
  %423 = icmp eq i8* %420, %422
  br i1 %423, label %430, label %424

424:                                              ; preds = %419
  %425 = load i8*, i8** %16, align 8
  %426 = getelementptr inbounds i8, i8* %425, i64 1
  %427 = load i8, i8* %426, align 1
  %428 = call i64 @ucl_lex_is_atom_end(i8 signext %427)
  %429 = icmp ne i64 %428, 0
  br i1 %429, label %430, label %443

430:                                              ; preds = %424, %419
  %431 = load i32, i32* %21, align 4
  %432 = icmp ne i32 %431, 0
  br i1 %432, label %435, label %433

433:                                              ; preds = %430
  store i32 1, i32* %21, align 4
  %434 = load double, double* %27, align 8
  store double %434, double* %26, align 8
  br label %435

435:                                              ; preds = %433, %430
  store i32 1, i32* %22, align 4
  %436 = load i8*, i8** %16, align 8
  %437 = load i8, i8* %436, align 1
  %438 = call double @ucl_lex_time_multiplier(i8 signext %437)
  %439 = load double, double* %26, align 8
  %440 = fmul double %439, %438
  store double %440, double* %26, align 8
  %441 = load i8*, i8** %16, align 8
  %442 = getelementptr inbounds i8, i8* %441, i32 1
  store i8* %442, i8** %16, align 8
  br label %479

443:                                              ; preds = %424, %416
  br label %467

444:                                              ; preds = %221, %221
  br label %445

445:                                              ; preds = %457, %444
  %446 = load i8*, i8** %16, align 8
  %447 = load i8*, i8** %11, align 8
  %448 = icmp ult i8* %446, %447
  br i1 %448, label %449, label %455

449:                                              ; preds = %445
  %450 = load i8*, i8** %16, align 8
  %451 = load i8, i8* %450, align 1
  %452 = load i32, i32* @UCL_CHARACTER_WHITESPACE, align 4
  %453 = call i32 @ucl_test_character(i8 signext %451, i32 %452)
  %454 = icmp ne i32 %453, 0
  br label %455

455:                                              ; preds = %449, %445
  %456 = phi i1 [ false, %445 ], [ %454, %449 ]
  br i1 %456, label %457, label %460

457:                                              ; preds = %455
  %458 = load i8*, i8** %16, align 8
  %459 = getelementptr inbounds i8, i8* %458, i32 1
  store i8* %459, i8** %16, align 8
  br label %445

460:                                              ; preds = %455
  %461 = load i8*, i8** %16, align 8
  %462 = load i8, i8* %461, align 1
  %463 = call i64 @ucl_lex_is_atom_end(i8 signext %462)
  %464 = icmp ne i64 %463, 0
  br i1 %464, label %465, label %466

465:                                              ; preds = %460
  br label %479

466:                                              ; preds = %460
  br label %467

467:                                              ; preds = %221, %466, %443, %415, %392
  br label %475

468:                                              ; preds = %217, %213
  %469 = load i8*, i8** %18, align 8
  %470 = load i8*, i8** %11, align 8
  %471 = icmp eq i8* %469, %470
  br i1 %471, label %472, label %474

472:                                              ; preds = %468
  %473 = load i8*, i8** %18, align 8
  store i8* %473, i8** %16, align 8
  br label %479

474:                                              ; preds = %468
  br label %475

475:                                              ; preds = %474, %467
  %476 = load i8*, i8** %17, align 8
  %477 = load i8**, i8*** %12, align 8
  store i8* %476, i8** %477, align 8
  %478 = load i32, i32* @EINVAL, align 4
  store i32 %478, i32* %8, align 4
  br label %535

479:                                              ; preds = %472, %465, %435, %412, %389, %363, %324, %294, %271, %211
  %480 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %481 = icmp ne %struct.TYPE_5__* %480, null
  br i1 %481, label %482, label %532

482:                                              ; preds = %479
  %483 = load i32, i32* %13, align 4
  %484 = icmp ne i32 %483, 0
  br i1 %484, label %485, label %515

485:                                              ; preds = %482
  %486 = load i32, i32* %21, align 4
  %487 = icmp ne i32 %486, 0
  br i1 %487, label %491, label %488

488:                                              ; preds = %485
  %489 = load i32, i32* %22, align 4
  %490 = icmp ne i32 %489, 0
  br i1 %490, label %491, label %515

491:                                              ; preds = %488, %485
  %492 = load i32, i32* %22, align 4
  %493 = icmp ne i32 %492, 0
  br i1 %493, label %498, label %494

494:                                              ; preds = %491
  %495 = load i32, i32* @UCL_FLOAT, align 4
  %496 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %497 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %496, i32 0, i32 1
  store i32 %495, i32* %497, align 8
  br label %502

498:                                              ; preds = %491
  %499 = load i32, i32* @UCL_TIME, align 4
  %500 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %501 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %500, i32 0, i32 1
  store i32 %499, i32* %501, align 8
  br label %502

502:                                              ; preds = %498, %494
  %503 = load i32, i32* %25, align 4
  %504 = icmp ne i32 %503, 0
  br i1 %504, label %505, label %508

505:                                              ; preds = %502
  %506 = load double, double* %26, align 8
  %507 = fneg double %506
  br label %510

508:                                              ; preds = %502
  %509 = load double, double* %26, align 8
  br label %510

510:                                              ; preds = %508, %505
  %511 = phi double [ %507, %505 ], [ %509, %508 ]
  %512 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %513 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %512, i32 0, i32 0
  %514 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %513, i32 0, i32 0
  store double %511, double* %514, align 8
  br label %531

515:                                              ; preds = %488, %482
  %516 = load i32, i32* @UCL_INT, align 4
  %517 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %518 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %517, i32 0, i32 1
  store i32 %516, i32* %518, align 8
  %519 = load i32, i32* %25, align 4
  %520 = icmp ne i32 %519, 0
  br i1 %520, label %521, label %524

521:                                              ; preds = %515
  %522 = load double, double* %27, align 8
  %523 = fneg double %522
  br label %526

524:                                              ; preds = %515
  %525 = load double, double* %27, align 8
  br label %526

526:                                              ; preds = %524, %521
  %527 = phi double [ %523, %521 ], [ %525, %524 ]
  %528 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %529 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %528, i32 0, i32 0
  %530 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %529, i32 0, i32 1
  store double %527, double* %530, align 8
  br label %531

531:                                              ; preds = %526, %510
  br label %532

532:                                              ; preds = %531, %479
  %533 = load i8*, i8** %16, align 8
  %534 = load i8**, i8*** %12, align 8
  store i8* %533, i8** %534, align 8
  store i32 0, i32* %8, align 4
  br label %535

535:                                              ; preds = %532, %475, %193, %169, %148, %129, %119, %98, %86
  %536 = load i32, i32* %8, align 4
  ret i32 %536
}

declare dso_local i64 @isxdigit(i8 signext) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local double @strtod(i8*, i8**) #1

declare dso_local double @strtoimax(i8*, i8**, i32) #1

declare dso_local i64 @ucl_lex_is_atom_end(i8 signext) #1

declare dso_local double @ucl_lex_num_multiplier(i8 signext, i32) #1

declare dso_local signext i8 @tolower(i8 signext) #1

declare dso_local double @ucl_lex_time_multiplier(i8 signext) #1

declare dso_local i32 @ucl_test_character(i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
