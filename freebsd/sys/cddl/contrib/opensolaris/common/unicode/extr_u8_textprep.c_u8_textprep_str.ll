; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/common/unicode/extr_u8_textprep.c_u8_textprep_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/common/unicode/extr_u8_textprep.c_u8_textprep_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@U8_STREAM_SAFE_TEXT_MAX = common dso_local global i32 0, align 4
@U8_UNICODE_LATEST = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@U8_TEXTPREP_TOUPPER = common dso_local global i32 0, align 4
@U8_TEXTPREP_TOLOWER = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@U8_CANON_DECOMP = common dso_local global i32 0, align 4
@U8_COMPAT_DECOMP = common dso_local global i32 0, align 4
@U8_CANON_COMP = common dso_local global i32 0, align 4
@U8_TEXTPREP_NFD = common dso_local global i32 0, align 4
@U8_TEXTPREP_NFC = common dso_local global i32 0, align 4
@U8_TEXTPREP_NFKD = common dso_local global i32 0, align 4
@U8_TEXTPREP_NFKC = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@U8_TEXTPREP_IGNORE_NULL = common dso_local global i32 0, align 4
@U8_TEXTPREP_IGNORE_INVALID = common dso_local global i32 0, align 4
@u8_number_of_bytes = common dso_local global i32* null, align 8
@EILSEQ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@U8_STATE_START = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @u8_textprep_str(i8* %0, i64* %1, i8* %2, i64* %3, i32 %4, i64 %5, i32* %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i8*, align 8
  %33 = alloca i64, align 8
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i64* %1, i64** %10, align 8
  store i8* %2, i8** %11, align 8
  store i64* %3, i64** %12, align 8
  store i32 %4, i32* %13, align 4
  store i64 %5, i64* %14, align 8
  store i32* %6, i32** %15, align 8
  %36 = load i32, i32* @U8_STREAM_SAFE_TEXT_MAX, align 4
  %37 = add nsw i32 %36, 1
  %38 = zext i32 %37 to i64
  %39 = call i8* @llvm.stacksave()
  store i8* %39, i8** %32, align 8
  %40 = alloca i8, i64 %38, align 16
  store i64 %38, i64* %33, align 8
  %41 = load i64, i64* %14, align 8
  %42 = load i64, i64* @U8_UNICODE_LATEST, align 8
  %43 = icmp ugt i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %7
  %45 = load i32, i32* @ERANGE, align 4
  %46 = load i32*, i32** %15, align 8
  store i32 %45, i32* %46, align 4
  store i64 -1, i64* %8, align 8
  store i32 1, i32* %35, align 4
  br label %458

47:                                               ; preds = %7
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* @U8_TEXTPREP_TOUPPER, align 4
  %50 = load i32, i32* @U8_TEXTPREP_TOLOWER, align 4
  %51 = or i32 %49, %50
  %52 = and i32 %48, %51
  store i32 %52, i32* %16, align 4
  %53 = load i32, i32* %16, align 4
  %54 = load i32, i32* @U8_TEXTPREP_TOUPPER, align 4
  %55 = load i32, i32* @U8_TEXTPREP_TOLOWER, align 4
  %56 = or i32 %54, %55
  %57 = icmp eq i32 %53, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %47
  %59 = load i32, i32* @EBADF, align 4
  %60 = load i32*, i32** %15, align 8
  store i32 %59, i32* %60, align 4
  store i64 -1, i64* %8, align 8
  store i32 1, i32* %35, align 4
  br label %458

61:                                               ; preds = %47
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* @U8_CANON_DECOMP, align 4
  %64 = load i32, i32* @U8_COMPAT_DECOMP, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @U8_CANON_COMP, align 4
  %67 = or i32 %65, %66
  %68 = and i32 %62, %67
  store i32 %68, i32* %16, align 4
  %69 = load i32, i32* %16, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %90

71:                                               ; preds = %61
  %72 = load i32, i32* %16, align 4
  %73 = load i32, i32* @U8_TEXTPREP_NFD, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %90

75:                                               ; preds = %71
  %76 = load i32, i32* %16, align 4
  %77 = load i32, i32* @U8_TEXTPREP_NFC, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %90

79:                                               ; preds = %75
  %80 = load i32, i32* %16, align 4
  %81 = load i32, i32* @U8_TEXTPREP_NFKD, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %90

83:                                               ; preds = %79
  %84 = load i32, i32* %16, align 4
  %85 = load i32, i32* @U8_TEXTPREP_NFKC, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = load i32, i32* @EBADF, align 4
  %89 = load i32*, i32** %15, align 8
  store i32 %88, i32* %89, align 4
  store i64 -1, i64* %8, align 8
  store i32 1, i32* %35, align 4
  br label %458

90:                                               ; preds = %83, %79, %75, %71, %61
  %91 = load i8*, i8** %9, align 8
  %92 = icmp eq i8* %91, null
  br i1 %92, label %97, label %93

93:                                               ; preds = %90
  %94 = load i64*, i64** %10, align 8
  %95 = load i64, i64* %94, align 8
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %93, %90
  store i64 0, i64* %8, align 8
  store i32 1, i32* %35, align 4
  br label %458

98:                                               ; preds = %93
  %99 = load i8*, i8** %11, align 8
  %100 = icmp eq i8* %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load i32, i32* @E2BIG, align 4
  %103 = load i32*, i32** %15, align 8
  store i32 %102, i32* %103, align 4
  store i64 -1, i64* %8, align 8
  store i32 1, i32* %35, align 4
  br label %458

104:                                              ; preds = %98
  %105 = load i8*, i8** %9, align 8
  store i8* %105, i8** %18, align 8
  %106 = load i8*, i8** %11, align 8
  store i8* %106, i8** %20, align 8
  %107 = load i8*, i8** %18, align 8
  %108 = load i64*, i64** %10, align 8
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds i8, i8* %107, i64 %109
  store i8* %110, i8** %19, align 8
  %111 = load i8*, i8** %20, align 8
  %112 = load i64*, i64** %12, align 8
  %113 = load i64, i64* %112, align 8
  %114 = getelementptr inbounds i8, i8* %111, i64 %113
  store i8* %114, i8** %21, align 8
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* @U8_TEXTPREP_IGNORE_NULL, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  %119 = xor i1 %118, true
  %120 = zext i1 %119 to i32
  store i32 %120, i32* %22, align 4
  %121 = load i32, i32* %13, align 4
  %122 = load i32, i32* @U8_TEXTPREP_IGNORE_INVALID, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  %125 = xor i1 %124, true
  %126 = zext i1 %125 to i32
  store i32 %126, i32* %23, align 4
  %127 = load i32, i32* %13, align 4
  %128 = load i32, i32* @U8_TEXTPREP_TOUPPER, align 4
  %129 = and i32 %127, %128
  store i32 %129, i32* %24, align 4
  %130 = load i32, i32* %13, align 4
  %131 = load i32, i32* @U8_TEXTPREP_TOLOWER, align 4
  %132 = and i32 %130, %131
  store i32 %132, i32* %25, align 4
  store i64 0, i64* %29, align 8
  %133 = load i32, i32* %16, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %320

135:                                              ; preds = %104
  br label %136

136:                                              ; preds = %318, %135
  %137 = load i8*, i8** %18, align 8
  %138 = load i8*, i8** %19, align 8
  %139 = icmp ult i8* %137, %138
  br i1 %139, label %140, label %319

140:                                              ; preds = %136
  %141 = load i8*, i8** %18, align 8
  %142 = load i8, i8* %141, align 1
  %143 = sext i8 %142 to i32
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %140
  %146 = load i32, i32* %22, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %145
  br label %319

149:                                              ; preds = %145, %140
  %150 = load i32*, i32** @u8_number_of_bytes, align 8
  %151 = load i8*, i8** %18, align 8
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i64
  %154 = getelementptr inbounds i32, i32* %150, i64 %153
  %155 = load i32, i32* %154, align 4
  store i32 %155, i32* %17, align 4
  %156 = load i32, i32* %17, align 4
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %158, label %167

158:                                              ; preds = %149
  %159 = load i32, i32* %23, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %158
  %162 = load i32, i32* @EILSEQ, align 4
  %163 = load i32*, i32** %15, align 8
  store i32 %162, i32* %163, align 4
  store i64 -1, i64* %29, align 8
  br label %319

164:                                              ; preds = %158
  store i32 1, i32* %17, align 4
  %165 = load i64, i64* %29, align 8
  %166 = add i64 %165, 1
  store i64 %166, i64* %29, align 8
  br label %167

167:                                              ; preds = %164, %149
  %168 = load i32, i32* %17, align 4
  %169 = icmp eq i32 %168, 1
  br i1 %169, label %170, label %203

170:                                              ; preds = %167
  %171 = load i8*, i8** %20, align 8
  %172 = load i8*, i8** %21, align 8
  %173 = icmp uge i8* %171, %172
  br i1 %173, label %174, label %177

174:                                              ; preds = %170
  %175 = load i32, i32* @E2BIG, align 4
  %176 = load i32*, i32** %15, align 8
  store i32 %175, i32* %176, align 4
  store i64 -1, i64* %29, align 8
  br label %319

177:                                              ; preds = %170
  %178 = load i32, i32* %24, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %185

180:                                              ; preds = %177
  %181 = load i8*, i8** %18, align 8
  %182 = load i8, i8* %181, align 1
  %183 = call signext i8 @U8_ASCII_TOUPPER(i8 signext %182)
  %184 = load i8*, i8** %20, align 8
  store i8 %183, i8* %184, align 1
  br label %198

185:                                              ; preds = %177
  %186 = load i32, i32* %25, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %193

188:                                              ; preds = %185
  %189 = load i8*, i8** %18, align 8
  %190 = load i8, i8* %189, align 1
  %191 = call signext i8 @U8_ASCII_TOLOWER(i8 signext %190)
  %192 = load i8*, i8** %20, align 8
  store i8 %191, i8* %192, align 1
  br label %197

193:                                              ; preds = %185
  %194 = load i8*, i8** %18, align 8
  %195 = load i8, i8* %194, align 1
  %196 = load i8*, i8** %20, align 8
  store i8 %195, i8* %196, align 1
  br label %197

197:                                              ; preds = %193, %188
  br label %198

198:                                              ; preds = %197, %180
  %199 = load i8*, i8** %18, align 8
  %200 = getelementptr inbounds i8, i8* %199, i32 1
  store i8* %200, i8** %18, align 8
  %201 = load i8*, i8** %20, align 8
  %202 = getelementptr inbounds i8, i8* %201, i32 1
  store i8* %202, i8** %20, align 8
  br label %318

203:                                              ; preds = %167
  %204 = load i8*, i8** %18, align 8
  %205 = load i32, i32* %17, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i8, i8* %204, i64 %206
  %208 = load i8*, i8** %19, align 8
  %209 = icmp ugt i8* %207, %208
  br i1 %209, label %210, label %245

210:                                              ; preds = %203
  %211 = load i32, i32* %23, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %216

213:                                              ; preds = %210
  %214 = load i32, i32* @EINVAL, align 4
  %215 = load i32*, i32** %15, align 8
  store i32 %214, i32* %215, align 4
  store i64 -1, i64* %29, align 8
  br label %319

216:                                              ; preds = %210
  %217 = load i8*, i8** %21, align 8
  %218 = load i8*, i8** %20, align 8
  %219 = ptrtoint i8* %217 to i64
  %220 = ptrtoint i8* %218 to i64
  %221 = sub i64 %219, %220
  %222 = load i8*, i8** %19, align 8
  %223 = load i8*, i8** %18, align 8
  %224 = ptrtoint i8* %222 to i64
  %225 = ptrtoint i8* %223 to i64
  %226 = sub i64 %224, %225
  %227 = icmp slt i64 %221, %226
  br i1 %227, label %228, label %231

228:                                              ; preds = %216
  %229 = load i32, i32* @E2BIG, align 4
  %230 = load i32*, i32** %15, align 8
  store i32 %229, i32* %230, align 4
  store i64 -1, i64* %29, align 8
  br label %319

231:                                              ; preds = %216
  %232 = load i64, i64* %29, align 8
  %233 = add i64 %232, 1
  store i64 %233, i64* %29, align 8
  br label %234

234:                                              ; preds = %238, %231
  %235 = load i8*, i8** %18, align 8
  %236 = load i8*, i8** %19, align 8
  %237 = icmp ult i8* %235, %236
  br i1 %237, label %238, label %244

238:                                              ; preds = %234
  %239 = load i8*, i8** %18, align 8
  %240 = getelementptr inbounds i8, i8* %239, i32 1
  store i8* %240, i8** %18, align 8
  %241 = load i8, i8* %239, align 1
  %242 = load i8*, i8** %20, align 8
  %243 = getelementptr inbounds i8, i8* %242, i32 1
  store i8* %243, i8** %20, align 8
  store i8 %241, i8* %242, align 1
  br label %234

244:                                              ; preds = %234
  br label %317

245:                                              ; preds = %203
  %246 = load i32, i32* %24, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %251, label %248

248:                                              ; preds = %245
  %249 = load i32, i32* %25, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %288

251:                                              ; preds = %248, %245
  %252 = load i64, i64* %14, align 8
  %253 = load i8*, i8** %18, align 8
  %254 = load i32, i32* %17, align 4
  %255 = load i32, i32* %24, align 4
  %256 = call i64 @do_case_conv(i64 %252, i8* %40, i8* %253, i32 %254, i32 %255)
  store i64 %256, i64* %30, align 8
  %257 = load i8*, i8** %21, align 8
  %258 = load i8*, i8** %20, align 8
  %259 = ptrtoint i8* %257 to i64
  %260 = ptrtoint i8* %258 to i64
  %261 = sub i64 %259, %260
  %262 = load i64, i64* %30, align 8
  %263 = icmp ult i64 %261, %262
  br i1 %263, label %264, label %267

264:                                              ; preds = %251
  %265 = load i32, i32* @E2BIG, align 4
  %266 = load i32*, i32** %15, align 8
  store i32 %265, i32* %266, align 4
  store i64 -1, i64* %29, align 8
  br label %319

267:                                              ; preds = %251
  %268 = load i32, i32* %17, align 4
  %269 = load i8*, i8** %18, align 8
  %270 = sext i32 %268 to i64
  %271 = getelementptr inbounds i8, i8* %269, i64 %270
  store i8* %271, i8** %18, align 8
  store i32 0, i32* %17, align 4
  br label %272

272:                                              ; preds = %284, %267
  %273 = load i32, i32* %17, align 4
  %274 = sext i32 %273 to i64
  %275 = load i64, i64* %30, align 8
  %276 = icmp ult i64 %274, %275
  br i1 %276, label %277, label %287

277:                                              ; preds = %272
  %278 = load i32, i32* %17, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i8, i8* %40, i64 %279
  %281 = load i8, i8* %280, align 1
  %282 = load i8*, i8** %20, align 8
  %283 = getelementptr inbounds i8, i8* %282, i32 1
  store i8* %283, i8** %20, align 8
  store i8 %281, i8* %282, align 1
  br label %284

284:                                              ; preds = %277
  %285 = load i32, i32* %17, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %17, align 4
  br label %272

287:                                              ; preds = %272
  br label %316

288:                                              ; preds = %248
  %289 = load i8*, i8** %21, align 8
  %290 = load i8*, i8** %20, align 8
  %291 = ptrtoint i8* %289 to i64
  %292 = ptrtoint i8* %290 to i64
  %293 = sub i64 %291, %292
  %294 = load i32, i32* %17, align 4
  %295 = sext i32 %294 to i64
  %296 = icmp slt i64 %293, %295
  br i1 %296, label %297, label %300

297:                                              ; preds = %288
  %298 = load i32, i32* @E2BIG, align 4
  %299 = load i32*, i32** %15, align 8
  store i32 %298, i32* %299, align 4
  store i64 -1, i64* %29, align 8
  br label %319

300:                                              ; preds = %288
  store i64 0, i64* %30, align 8
  br label %301

301:                                              ; preds = %312, %300
  %302 = load i64, i64* %30, align 8
  %303 = load i32, i32* %17, align 4
  %304 = sext i32 %303 to i64
  %305 = icmp ult i64 %302, %304
  br i1 %305, label %306, label %315

306:                                              ; preds = %301
  %307 = load i8*, i8** %18, align 8
  %308 = getelementptr inbounds i8, i8* %307, i32 1
  store i8* %308, i8** %18, align 8
  %309 = load i8, i8* %307, align 1
  %310 = load i8*, i8** %20, align 8
  %311 = getelementptr inbounds i8, i8* %310, i32 1
  store i8* %311, i8** %20, align 8
  store i8 %309, i8* %310, align 1
  br label %312

312:                                              ; preds = %306
  %313 = load i64, i64* %30, align 8
  %314 = add i64 %313, 1
  store i64 %314, i64* %30, align 8
  br label %301

315:                                              ; preds = %301
  br label %316

316:                                              ; preds = %315, %287
  br label %317

317:                                              ; preds = %316, %244
  br label %318

318:                                              ; preds = %317, %198
  br label %136

319:                                              ; preds = %297, %264, %228, %213, %174, %161, %148, %136
  br label %444

320:                                              ; preds = %104
  %321 = load i32, i32* %13, align 4
  %322 = load i32, i32* @U8_CANON_DECOMP, align 4
  %323 = and i32 %321, %322
  store i32 %323, i32* %26, align 4
  %324 = load i32, i32* %13, align 4
  %325 = load i32, i32* @U8_COMPAT_DECOMP, align 4
  %326 = and i32 %324, %325
  store i32 %326, i32* %27, align 4
  %327 = load i32, i32* %13, align 4
  %328 = load i32, i32* @U8_CANON_COMP, align 4
  %329 = and i32 %327, %328
  store i32 %329, i32* %28, align 4
  br label %330

330:                                              ; preds = %442, %320
  %331 = load i8*, i8** %18, align 8
  %332 = load i8*, i8** %19, align 8
  %333 = icmp ult i8* %331, %332
  br i1 %333, label %334, label %443

334:                                              ; preds = %330
  %335 = load i8*, i8** %18, align 8
  %336 = load i8, i8* %335, align 1
  %337 = sext i8 %336 to i32
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %339, label %343

339:                                              ; preds = %334
  %340 = load i32, i32* %22, align 4
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %343

342:                                              ; preds = %339
  br label %443

343:                                              ; preds = %339, %334
  %344 = load i8*, i8** %18, align 8
  %345 = load i8, i8* %344, align 1
  %346 = call i64 @U8_ISASCII(i8 signext %345)
  %347 = icmp ne i64 %346, 0
  br i1 %347, label %348, label %397

348:                                              ; preds = %343
  %349 = load i8*, i8** %18, align 8
  %350 = getelementptr inbounds i8, i8* %349, i64 1
  %351 = load i8*, i8** %19, align 8
  %352 = icmp uge i8* %350, %351
  br i1 %352, label %364, label %353

353:                                              ; preds = %348
  %354 = load i8*, i8** %18, align 8
  %355 = getelementptr inbounds i8, i8* %354, i64 1
  %356 = load i8*, i8** %19, align 8
  %357 = icmp ult i8* %355, %356
  br i1 %357, label %358, label %397

358:                                              ; preds = %353
  %359 = load i8*, i8** %18, align 8
  %360 = getelementptr inbounds i8, i8* %359, i64 1
  %361 = load i8, i8* %360, align 1
  %362 = call i64 @U8_ISASCII(i8 signext %361)
  %363 = icmp ne i64 %362, 0
  br i1 %363, label %364, label %397

364:                                              ; preds = %358, %348
  %365 = load i8*, i8** %20, align 8
  %366 = load i8*, i8** %21, align 8
  %367 = icmp uge i8* %365, %366
  br i1 %367, label %368, label %371

368:                                              ; preds = %364
  %369 = load i32, i32* @E2BIG, align 4
  %370 = load i32*, i32** %15, align 8
  store i32 %369, i32* %370, align 4
  store i64 -1, i64* %29, align 8
  br label %443

371:                                              ; preds = %364
  %372 = load i32, i32* %24, align 4
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %379

374:                                              ; preds = %371
  %375 = load i8*, i8** %18, align 8
  %376 = load i8, i8* %375, align 1
  %377 = call signext i8 @U8_ASCII_TOUPPER(i8 signext %376)
  %378 = load i8*, i8** %20, align 8
  store i8 %377, i8* %378, align 1
  br label %392

379:                                              ; preds = %371
  %380 = load i32, i32* %25, align 4
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %382, label %387

382:                                              ; preds = %379
  %383 = load i8*, i8** %18, align 8
  %384 = load i8, i8* %383, align 1
  %385 = call signext i8 @U8_ASCII_TOLOWER(i8 signext %384)
  %386 = load i8*, i8** %20, align 8
  store i8 %385, i8* %386, align 1
  br label %391

387:                                              ; preds = %379
  %388 = load i8*, i8** %18, align 8
  %389 = load i8, i8* %388, align 1
  %390 = load i8*, i8** %20, align 8
  store i8 %389, i8* %390, align 1
  br label %391

391:                                              ; preds = %387, %382
  br label %392

392:                                              ; preds = %391, %374
  %393 = load i8*, i8** %18, align 8
  %394 = getelementptr inbounds i8, i8* %393, i32 1
  store i8* %394, i8** %18, align 8
  %395 = load i8*, i8** %20, align 8
  %396 = getelementptr inbounds i8, i8* %395, i32 1
  store i8* %396, i8** %20, align 8
  br label %442

397:                                              ; preds = %358, %353, %343
  %398 = load i32*, i32** %15, align 8
  store i32 0, i32* %398, align 4
  %399 = load i32, i32* @U8_STATE_START, align 4
  store i32 %399, i32* %34, align 4
  %400 = load i64, i64* %14, align 8
  %401 = load i8*, i8** %19, align 8
  %402 = load i32, i32* %24, align 4
  %403 = load i32, i32* %25, align 4
  %404 = load i32, i32* %26, align 4
  %405 = load i32, i32* %27, align 4
  %406 = load i32, i32* %28, align 4
  %407 = load i32*, i32** %15, align 8
  %408 = call i64 @collect_a_seq(i64 %400, i8* %40, i8** %18, i8* %401, i32 %402, i32 %403, i32 %404, i32 %405, i32 %406, i32* %407, i32* %34)
  store i64 %408, i64* %31, align 8
  %409 = load i32*, i32** %15, align 8
  %410 = load i32, i32* %409, align 4
  %411 = icmp ne i32 %410, 0
  br i1 %411, label %412, label %416

412:                                              ; preds = %397
  %413 = load i32, i32* %23, align 4
  %414 = icmp ne i32 %413, 0
  br i1 %414, label %415, label %416

415:                                              ; preds = %412
  store i64 -1, i64* %29, align 8
  br label %443

416:                                              ; preds = %412, %397
  %417 = load i8*, i8** %21, align 8
  %418 = load i8*, i8** %20, align 8
  %419 = ptrtoint i8* %417 to i64
  %420 = ptrtoint i8* %418 to i64
  %421 = sub i64 %419, %420
  %422 = load i64, i64* %31, align 8
  %423 = icmp ult i64 %421, %422
  br i1 %423, label %424, label %427

424:                                              ; preds = %416
  %425 = load i32, i32* @E2BIG, align 4
  %426 = load i32*, i32** %15, align 8
  store i32 %425, i32* %426, align 4
  store i64 -1, i64* %29, align 8
  br label %443

427:                                              ; preds = %416
  store i64 0, i64* %30, align 8
  br label %428

428:                                              ; preds = %438, %427
  %429 = load i64, i64* %30, align 8
  %430 = load i64, i64* %31, align 8
  %431 = icmp ult i64 %429, %430
  br i1 %431, label %432, label %441

432:                                              ; preds = %428
  %433 = load i64, i64* %30, align 8
  %434 = getelementptr inbounds i8, i8* %40, i64 %433
  %435 = load i8, i8* %434, align 1
  %436 = load i8*, i8** %20, align 8
  %437 = getelementptr inbounds i8, i8* %436, i32 1
  store i8* %437, i8** %20, align 8
  store i8 %435, i8* %436, align 1
  br label %438

438:                                              ; preds = %432
  %439 = load i64, i64* %30, align 8
  %440 = add i64 %439, 1
  store i64 %440, i64* %30, align 8
  br label %428

441:                                              ; preds = %428
  br label %442

442:                                              ; preds = %441, %392
  br label %330

443:                                              ; preds = %424, %415, %368, %342, %330
  br label %444

444:                                              ; preds = %443, %319
  %445 = load i8*, i8** %19, align 8
  %446 = load i8*, i8** %18, align 8
  %447 = ptrtoint i8* %445 to i64
  %448 = ptrtoint i8* %446 to i64
  %449 = sub i64 %447, %448
  %450 = load i64*, i64** %10, align 8
  store i64 %449, i64* %450, align 8
  %451 = load i8*, i8** %21, align 8
  %452 = load i8*, i8** %20, align 8
  %453 = ptrtoint i8* %451 to i64
  %454 = ptrtoint i8* %452 to i64
  %455 = sub i64 %453, %454
  %456 = load i64*, i64** %12, align 8
  store i64 %455, i64* %456, align 8
  %457 = load i64, i64* %29, align 8
  store i64 %457, i64* %8, align 8
  store i32 1, i32* %35, align 4
  br label %458

458:                                              ; preds = %444, %101, %97, %87, %58, %44
  %459 = load i8*, i8** %32, align 8
  call void @llvm.stackrestore(i8* %459)
  %460 = load i64, i64* %8, align 8
  ret i64 %460
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local signext i8 @U8_ASCII_TOUPPER(i8 signext) #2

declare dso_local signext i8 @U8_ASCII_TOLOWER(i8 signext) #2

declare dso_local i64 @do_case_conv(i64, i8*, i8*, i32, i32) #2

declare dso_local i64 @U8_ISASCII(i8 signext) #2

declare dso_local i64 @collect_a_seq(i64, i8*, i8**, i8*, i32, i32, i32, i32, i32, i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
