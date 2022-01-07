; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libutil/extr_fparseln.c_fparseln.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libutil/extr_fparseln.c_fparseln.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fparseln.dstr = internal constant [3 x i8] c"\\\\#", align 1
@FPARSELN_UNESCALL = common dso_local global i32 0, align 4
@FPARSELN_UNESCCOMM = common dso_local global i32 0, align 4
@FPARSELN_UNESCCONT = common dso_local global i32 0, align 4
@FPARSELN_UNESCESC = common dso_local global i32 0, align 4
@FPARSELN_UNESCREST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @fparseln(i32* %0, i64* %1, i64* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8, align 1
  %19 = alloca i8, align 1
  %20 = alloca i8, align 1
  %21 = alloca i8, align 1
  %22 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i64* %1, i64** %8, align 8
  store i64* %2, i64** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i64 0, i64* %13, align 8
  store i8* null, i8** %14, align 8
  store i32 1, i32* %17, align 4
  %23 = load i8*, i8** %10, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %5
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @fparseln.dstr, i64 0, i64 0), i8** %10, align 8
  br label %26

26:                                               ; preds = %25, %5
  %27 = load i8*, i8** %10, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  %29 = load i8, i8* %28, align 1
  store i8 %29, i8* %18, align 1
  %30 = load i8*, i8** %10, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  %32 = load i8, i8* %31, align 1
  store i8 %32, i8* %19, align 1
  %33 = load i8*, i8** %10, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 2
  %35 = load i8, i8* %34, align 1
  store i8 %35, i8* %21, align 1
  store i8 10, i8* %20, align 1
  br label %36

36:                                               ; preds = %170, %157, %26
  %37 = load i32, i32* %17, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %184

39:                                               ; preds = %36
  store i32 0, i32* %17, align 4
  %40 = load i64*, i64** %9, align 8
  %41 = icmp ne i64* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load i64*, i64** %9, align 8
  %44 = load i64, i64* %43, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %43, align 8
  br label %46

46:                                               ; preds = %42, %39
  %47 = load i32*, i32** %7, align 8
  %48 = call i8* @fgetln(i32* %47, i64* %12)
  store i8* %48, i8** %15, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %184

51:                                               ; preds = %46
  %52 = load i64, i64* %12, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %98

54:                                               ; preds = %51
  %55 = load i8, i8* %21, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %98

58:                                               ; preds = %54
  %59 = load i8*, i8** %15, align 8
  store i8* %59, i8** %16, align 8
  br label %60

60:                                               ; preds = %94, %58
  %61 = load i8*, i8** %16, align 8
  %62 = load i8*, i8** %15, align 8
  %63 = load i64, i64* %12, align 8
  %64 = getelementptr inbounds i8, i8* %62, i64 %63
  %65 = icmp ult i8* %61, %64
  br i1 %65, label %66, label %97

66:                                               ; preds = %60
  %67 = load i8*, i8** %16, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = load i8, i8* %21, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %69, %71
  br i1 %72, label %73, label %93

73:                                               ; preds = %66
  %74 = load i8*, i8** %15, align 8
  %75 = load i8*, i8** %16, align 8
  %76 = load i8, i8* %18, align 1
  %77 = call i32 @isescaped(i8* %74, i8* %75, i8 signext %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %93, label %79

79:                                               ; preds = %73
  %80 = load i8*, i8** %16, align 8
  %81 = load i8*, i8** %15, align 8
  %82 = ptrtoint i8* %80 to i64
  %83 = ptrtoint i8* %81 to i64
  %84 = sub i64 %82, %83
  store i64 %84, i64* %12, align 8
  %85 = load i64, i64* %12, align 8
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %79
  %88 = load i8*, i8** %14, align 8
  %89 = icmp eq i8* %88, null
  br label %90

90:                                               ; preds = %87, %79
  %91 = phi i1 [ false, %79 ], [ %89, %87 ]
  %92 = zext i1 %91 to i32
  store i32 %92, i32* %17, align 4
  br label %97

93:                                               ; preds = %73, %66
  br label %94

94:                                               ; preds = %93
  %95 = load i8*, i8** %16, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %16, align 8
  br label %60

97:                                               ; preds = %90, %60
  br label %98

98:                                               ; preds = %97, %54, %51
  %99 = load i64, i64* %12, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %120

101:                                              ; preds = %98
  %102 = load i8, i8* %20, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %120

105:                                              ; preds = %101
  %106 = load i8*, i8** %15, align 8
  %107 = load i64, i64* %12, align 8
  %108 = sub i64 %107, 1
  %109 = getelementptr inbounds i8, i8* %106, i64 %108
  store i8* %109, i8** %16, align 8
  %110 = load i8*, i8** %16, align 8
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = load i8, i8* %20, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp eq i32 %112, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %105
  %117 = load i64, i64* %12, align 8
  %118 = add i64 %117, -1
  store i64 %118, i64* %12, align 8
  br label %119

119:                                              ; preds = %116, %105
  br label %120

120:                                              ; preds = %119, %101, %98
  %121 = load i64, i64* %12, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %148

123:                                              ; preds = %120
  %124 = load i8, i8* %19, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %148

127:                                              ; preds = %123
  %128 = load i8*, i8** %15, align 8
  %129 = load i64, i64* %12, align 8
  %130 = sub i64 %129, 1
  %131 = getelementptr inbounds i8, i8* %128, i64 %130
  store i8* %131, i8** %16, align 8
  %132 = load i8*, i8** %16, align 8
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = load i8, i8* %19, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp eq i32 %134, %136
  br i1 %137, label %138, label %147

138:                                              ; preds = %127
  %139 = load i8*, i8** %15, align 8
  %140 = load i8*, i8** %16, align 8
  %141 = load i8, i8* %18, align 1
  %142 = call i32 @isescaped(i8* %139, i8* %140, i8 signext %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %147, label %144

144:                                              ; preds = %138
  %145 = load i64, i64* %12, align 8
  %146 = add i64 %145, -1
  store i64 %146, i64* %12, align 8
  store i32 1, i32* %17, align 4
  br label %147

147:                                              ; preds = %144, %138, %127
  br label %148

148:                                              ; preds = %147, %123, %120
  %149 = load i64, i64* %12, align 8
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %151, label %159

151:                                              ; preds = %148
  %152 = load i32, i32* %17, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %157, label %154

154:                                              ; preds = %151
  %155 = load i8*, i8** %14, align 8
  %156 = icmp ne i8* %155, null
  br i1 %156, label %157, label %158

157:                                              ; preds = %154, %151
  br label %36

158:                                              ; preds = %154
  br label %159

159:                                              ; preds = %158, %148
  %160 = load i8*, i8** %14, align 8
  %161 = load i64, i64* %13, align 8
  %162 = load i64, i64* %12, align 8
  %163 = add i64 %161, %162
  %164 = add i64 %163, 1
  %165 = call i8* @realloc(i8* %160, i64 %164)
  store i8* %165, i8** %16, align 8
  %166 = icmp eq i8* %165, null
  br i1 %166, label %167, label %170

167:                                              ; preds = %159
  %168 = load i8*, i8** %14, align 8
  %169 = call i32 @free(i8* %168)
  store i8* null, i8** %6, align 8
  br label %345

170:                                              ; preds = %159
  %171 = load i8*, i8** %16, align 8
  store i8* %171, i8** %14, align 8
  %172 = load i8*, i8** %14, align 8
  %173 = load i64, i64* %13, align 8
  %174 = getelementptr inbounds i8, i8* %172, i64 %173
  %175 = load i8*, i8** %15, align 8
  %176 = load i64, i64* %12, align 8
  %177 = call i32 @memcpy(i8* %174, i8* %175, i64 %176)
  %178 = load i64, i64* %12, align 8
  %179 = load i64, i64* %13, align 8
  %180 = add i64 %179, %178
  store i64 %180, i64* %13, align 8
  %181 = load i8*, i8** %14, align 8
  %182 = load i64, i64* %13, align 8
  %183 = getelementptr inbounds i8, i8* %181, i64 %182
  store i8 0, i8* %183, align 1
  br label %36

184:                                              ; preds = %50, %36
  %185 = load i32, i32* %11, align 4
  %186 = load i32, i32* @FPARSELN_UNESCALL, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %337

189:                                              ; preds = %184
  %190 = load i8, i8* %18, align 1
  %191 = sext i8 %190 to i32
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %337

193:                                              ; preds = %189
  %194 = load i8*, i8** %14, align 8
  %195 = icmp ne i8* %194, null
  br i1 %195, label %196, label %337

196:                                              ; preds = %193
  %197 = load i8*, i8** %14, align 8
  %198 = load i8, i8* %18, align 1
  %199 = call i32* @strchr(i8* %197, i8 signext %198)
  %200 = icmp ne i32* %199, null
  br i1 %200, label %201, label %337

201:                                              ; preds = %196
  %202 = load i8*, i8** %14, align 8
  store i8* %202, i8** %16, align 8
  store i8* %202, i8** %15, align 8
  br label %203

203:                                              ; preds = %327, %201
  %204 = load i8*, i8** %16, align 8
  %205 = getelementptr inbounds i8, i8* %204, i64 0
  %206 = load i8, i8* %205, align 1
  %207 = sext i8 %206 to i32
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %333

209:                                              ; preds = %203
  br label %210

210:                                              ; preds = %226, %209
  %211 = load i8*, i8** %16, align 8
  %212 = getelementptr inbounds i8, i8* %211, i64 0
  %213 = load i8, i8* %212, align 1
  %214 = sext i8 %213 to i32
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %224

216:                                              ; preds = %210
  %217 = load i8*, i8** %16, align 8
  %218 = getelementptr inbounds i8, i8* %217, i64 0
  %219 = load i8, i8* %218, align 1
  %220 = sext i8 %219 to i32
  %221 = load i8, i8* %18, align 1
  %222 = sext i8 %221 to i32
  %223 = icmp ne i32 %220, %222
  br label %224

224:                                              ; preds = %216, %210
  %225 = phi i1 [ false, %210 ], [ %223, %216 ]
  br i1 %225, label %226, label %232

226:                                              ; preds = %224
  %227 = load i8*, i8** %16, align 8
  %228 = getelementptr inbounds i8, i8* %227, i32 1
  store i8* %228, i8** %16, align 8
  %229 = load i8, i8* %227, align 1
  %230 = load i8*, i8** %15, align 8
  %231 = getelementptr inbounds i8, i8* %230, i32 1
  store i8* %231, i8** %15, align 8
  store i8 %229, i8* %230, align 1
  br label %210

232:                                              ; preds = %224
  %233 = load i8*, i8** %16, align 8
  %234 = getelementptr inbounds i8, i8* %233, i64 0
  %235 = load i8, i8* %234, align 1
  %236 = sext i8 %235 to i32
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %244, label %238

238:                                              ; preds = %232
  %239 = load i8*, i8** %16, align 8
  %240 = getelementptr inbounds i8, i8* %239, i64 1
  %241 = load i8, i8* %240, align 1
  %242 = sext i8 %241 to i32
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %244, label %245

244:                                              ; preds = %238, %232
  br label %333

245:                                              ; preds = %238
  store i32 0, i32* %22, align 4
  %246 = load i8*, i8** %16, align 8
  %247 = getelementptr inbounds i8, i8* %246, i64 1
  %248 = load i8, i8* %247, align 1
  %249 = sext i8 %248 to i32
  %250 = load i8, i8* %21, align 1
  %251 = sext i8 %250 to i32
  %252 = icmp eq i32 %249, %251
  br i1 %252, label %253, label %259

253:                                              ; preds = %245
  %254 = load i32, i32* %11, align 4
  %255 = load i32, i32* @FPARSELN_UNESCCOMM, align 4
  %256 = and i32 %254, %255
  %257 = load i32, i32* %22, align 4
  %258 = add nsw i32 %257, %256
  store i32 %258, i32* %22, align 4
  br label %259

259:                                              ; preds = %253, %245
  %260 = load i8*, i8** %16, align 8
  %261 = getelementptr inbounds i8, i8* %260, i64 1
  %262 = load i8, i8* %261, align 1
  %263 = sext i8 %262 to i32
  %264 = load i8, i8* %19, align 1
  %265 = sext i8 %264 to i32
  %266 = icmp eq i32 %263, %265
  br i1 %266, label %267, label %273

267:                                              ; preds = %259
  %268 = load i32, i32* %11, align 4
  %269 = load i32, i32* @FPARSELN_UNESCCONT, align 4
  %270 = and i32 %268, %269
  %271 = load i32, i32* %22, align 4
  %272 = add nsw i32 %271, %270
  store i32 %272, i32* %22, align 4
  br label %273

273:                                              ; preds = %267, %259
  %274 = load i8*, i8** %16, align 8
  %275 = getelementptr inbounds i8, i8* %274, i64 1
  %276 = load i8, i8* %275, align 1
  %277 = sext i8 %276 to i32
  %278 = load i8, i8* %18, align 1
  %279 = sext i8 %278 to i32
  %280 = icmp eq i32 %277, %279
  br i1 %280, label %281, label %287

281:                                              ; preds = %273
  %282 = load i32, i32* %11, align 4
  %283 = load i32, i32* @FPARSELN_UNESCESC, align 4
  %284 = and i32 %282, %283
  %285 = load i32, i32* %22, align 4
  %286 = add nsw i32 %285, %284
  store i32 %286, i32* %22, align 4
  br label %287

287:                                              ; preds = %281, %273
  %288 = load i8*, i8** %16, align 8
  %289 = getelementptr inbounds i8, i8* %288, i64 1
  %290 = load i8, i8* %289, align 1
  %291 = sext i8 %290 to i32
  %292 = load i8, i8* %21, align 1
  %293 = sext i8 %292 to i32
  %294 = icmp ne i32 %291, %293
  br i1 %294, label %295, label %315

295:                                              ; preds = %287
  %296 = load i8*, i8** %16, align 8
  %297 = getelementptr inbounds i8, i8* %296, i64 1
  %298 = load i8, i8* %297, align 1
  %299 = sext i8 %298 to i32
  %300 = load i8, i8* %19, align 1
  %301 = sext i8 %300 to i32
  %302 = icmp ne i32 %299, %301
  br i1 %302, label %303, label %315

303:                                              ; preds = %295
  %304 = load i8*, i8** %16, align 8
  %305 = getelementptr inbounds i8, i8* %304, i64 1
  %306 = load i8, i8* %305, align 1
  %307 = sext i8 %306 to i32
  %308 = load i8, i8* %18, align 1
  %309 = sext i8 %308 to i32
  %310 = icmp ne i32 %307, %309
  br i1 %310, label %311, label %315

311:                                              ; preds = %303
  %312 = load i32, i32* %11, align 4
  %313 = load i32, i32* @FPARSELN_UNESCREST, align 4
  %314 = and i32 %312, %313
  store i32 %314, i32* %22, align 4
  br label %315

315:                                              ; preds = %311, %303, %295, %287
  %316 = load i32, i32* %22, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %321

318:                                              ; preds = %315
  %319 = load i8*, i8** %16, align 8
  %320 = getelementptr inbounds i8, i8* %319, i32 1
  store i8* %320, i8** %16, align 8
  br label %327

321:                                              ; preds = %315
  %322 = load i8*, i8** %16, align 8
  %323 = getelementptr inbounds i8, i8* %322, i32 1
  store i8* %323, i8** %16, align 8
  %324 = load i8, i8* %322, align 1
  %325 = load i8*, i8** %15, align 8
  %326 = getelementptr inbounds i8, i8* %325, i32 1
  store i8* %326, i8** %15, align 8
  store i8 %324, i8* %325, align 1
  br label %327

327:                                              ; preds = %321, %318
  %328 = load i8*, i8** %16, align 8
  %329 = getelementptr inbounds i8, i8* %328, i32 1
  store i8* %329, i8** %16, align 8
  %330 = load i8, i8* %328, align 1
  %331 = load i8*, i8** %15, align 8
  %332 = getelementptr inbounds i8, i8* %331, i32 1
  store i8* %332, i8** %15, align 8
  store i8 %330, i8* %331, align 1
  br label %203

333:                                              ; preds = %244, %203
  %334 = load i8*, i8** %15, align 8
  store i8 0, i8* %334, align 1
  %335 = load i8*, i8** %14, align 8
  %336 = call i64 @strlen(i8* %335)
  store i64 %336, i64* %13, align 8
  br label %337

337:                                              ; preds = %333, %196, %193, %189, %184
  %338 = load i64*, i64** %8, align 8
  %339 = icmp ne i64* %338, null
  br i1 %339, label %340, label %343

340:                                              ; preds = %337
  %341 = load i64, i64* %13, align 8
  %342 = load i64*, i64** %8, align 8
  store i64 %341, i64* %342, align 8
  br label %343

343:                                              ; preds = %340, %337
  %344 = load i8*, i8** %14, align 8
  store i8* %344, i8** %6, align 8
  br label %345

345:                                              ; preds = %343, %167
  %346 = load i8*, i8** %6, align 8
  ret i8* %346
}

declare dso_local i8* @fgetln(i32*, i64*) #1

declare dso_local i32 @isescaped(i8*, i8*, i8 signext) #1

declare dso_local i8* @realloc(i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
