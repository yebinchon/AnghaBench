; ModuleID = '/home/carl/AnghaBench/freebsd/stand/common/extr_interp_parse.c_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/common/extr_interp_parse.c_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PARSE_BUFSIZE = common dso_local global i64 0, align 8
@args = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse(i32* %0, i8*** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8***, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i8*** %1, i8**** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* null, i8** %12, align 8
  store i64 0, i64* %13, align 8
  %21 = load i32*, i32** %5, align 8
  store i32 0, i32* %21, align 4
  store i32 0, i32* %8, align 4
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %22 = load i8*, i8** %7, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = load i8*, i8** %7, align 8
  %26 = call i8* @backslash(i8* %25)
  store i8* %26, i8** %12, align 8
  store i8* %26, i8** %10, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %24, %3
  store i32 1, i32* %4, align 4
  br label %336

29:                                               ; preds = %24
  %30 = call i32 (...) @clean()
  store i32 0, i32* %19, align 4
  %31 = load i64, i64* @PARSE_BUFSIZE, align 8
  %32 = trunc i64 %31 to i32
  %33 = call i64 @malloc(i32 %32)
  %34 = inttoptr i64 %33 to i8*
  store i8* %34, i8** %18, align 8
  store i8 0, i8* %14, align 1
  br label %35

35:                                               ; preds = %283, %29
  %36 = load i8*, i8** %10, align 8
  %37 = load i8, i8* %36, align 1
  %38 = icmp ne i8 %37, 0
  br i1 %38, label %39, label %284

39:                                               ; preds = %35
  %40 = load i32, i32* %19, align 4
  switch i32 %40, label %283 [
    i32 0, label %41
    i32 2, label %207
    i32 1, label %217
  ]

41:                                               ; preds = %39
  %42 = load i8*, i8** %10, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 92
  br i1 %45, label %46, label %68

46:                                               ; preds = %41
  %47 = load i8*, i8** %10, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %68

52:                                               ; preds = %46
  %53 = load i8*, i8** %10, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %10, align 8
  %55 = load i64, i64* %13, align 8
  %56 = load i64, i64* @PARSE_BUFSIZE, align 8
  %57 = sub i64 %56, 1
  %58 = icmp eq i64 %55, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @PARSE_FAIL(i32 %59)
  %61 = load i8*, i8** %10, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %10, align 8
  %63 = load i8, i8* %61, align 1
  %64 = load i8*, i8** %18, align 8
  %65 = load i64, i64* %13, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %13, align 8
  %67 = getelementptr inbounds i8, i8* %64, i64 %65
  store i8 %63, i8* %67, align 1
  br label %206

68:                                               ; preds = %46, %41
  %69 = load i8*, i8** %10, align 8
  %70 = load i8, i8* %69, align 1
  %71 = call i32 @isquote(i8 signext %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %105

73:                                               ; preds = %68
  %74 = load i8, i8* %16, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  br label %82

78:                                               ; preds = %73
  %79 = load i8*, i8** %10, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  br label %82

82:                                               ; preds = %78, %77
  %83 = phi i32 [ 0, %77 ], [ %81, %78 ]
  %84 = trunc i32 %83 to i8
  store i8 %84, i8* %16, align 1
  %85 = load i8, i8* %17, align 1
  %86 = icmp ne i8 %85, 0
  br i1 %86, label %87, label %101

87:                                               ; preds = %82
  %88 = load i64, i64* %13, align 8
  %89 = load i64, i64* @PARSE_BUFSIZE, align 8
  %90 = sub i64 %89, 1
  %91 = icmp eq i64 %88, %90
  %92 = zext i1 %91 to i32
  %93 = call i32 @PARSE_FAIL(i32 %92)
  %94 = load i8*, i8** %10, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %10, align 8
  %96 = load i8, i8* %94, align 1
  %97 = load i8*, i8** %18, align 8
  %98 = load i64, i64* %13, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %13, align 8
  %100 = getelementptr inbounds i8, i8* %97, i64 %98
  store i8 %96, i8* %100, align 1
  br label %104

101:                                              ; preds = %82
  %102 = load i8*, i8** %10, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %10, align 8
  br label %104

104:                                              ; preds = %101, %87
  br label %205

105:                                              ; preds = %68
  %106 = load i8*, i8** %10, align 8
  %107 = load i8, i8* %106, align 1
  %108 = call i32 @isdquote(i8 signext %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %142

110:                                              ; preds = %105
  %111 = load i8, i8* %17, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %110
  br label %119

115:                                              ; preds = %110
  %116 = load i8*, i8** %10, align 8
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  br label %119

119:                                              ; preds = %115, %114
  %120 = phi i32 [ 0, %114 ], [ %118, %115 ]
  %121 = trunc i32 %120 to i8
  store i8 %121, i8* %17, align 1
  %122 = load i8, i8* %16, align 1
  %123 = icmp ne i8 %122, 0
  br i1 %123, label %124, label %138

124:                                              ; preds = %119
  %125 = load i64, i64* %13, align 8
  %126 = load i64, i64* @PARSE_BUFSIZE, align 8
  %127 = sub i64 %126, 1
  %128 = icmp eq i64 %125, %127
  %129 = zext i1 %128 to i32
  %130 = call i32 @PARSE_FAIL(i32 %129)
  %131 = load i8*, i8** %10, align 8
  %132 = getelementptr inbounds i8, i8* %131, i32 1
  store i8* %132, i8** %10, align 8
  %133 = load i8, i8* %131, align 1
  %134 = load i8*, i8** %18, align 8
  %135 = load i64, i64* %13, align 8
  %136 = add i64 %135, 1
  store i64 %136, i64* %13, align 8
  %137 = getelementptr inbounds i8, i8* %134, i64 %135
  store i8 %133, i8* %137, align 1
  br label %141

138:                                              ; preds = %119
  %139 = load i8*, i8** %10, align 8
  %140 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %140, i8** %10, align 8
  br label %141

141:                                              ; preds = %138, %124
  br label %204

142:                                              ; preds = %105
  %143 = load i8*, i8** %10, align 8
  %144 = load i8, i8* %143, align 1
  %145 = call i32 @isspace(i8 signext %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %166

147:                                              ; preds = %142
  %148 = load i8, i8* %16, align 1
  %149 = icmp ne i8 %148, 0
  br i1 %149, label %166, label %150

150:                                              ; preds = %147
  %151 = load i8, i8* %17, align 1
  %152 = icmp ne i8 %151, 0
  br i1 %152, label %166, label %153

153:                                              ; preds = %150
  store i32 2, i32* %19, align 4
  %154 = load i64, i64* %13, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %163

156:                                              ; preds = %153
  %157 = load i8*, i8** %18, align 8
  %158 = load i64, i64* %13, align 8
  %159 = getelementptr inbounds i8, i8* %157, i64 %158
  store i8 0, i8* %159, align 1
  %160 = load i8*, i8** %18, align 8
  %161 = call i32 @insert(i32* %8, i8* %160)
  %162 = call i32 @PARSE_FAIL(i32 %161)
  store i64 0, i64* %13, align 8
  br label %163

163:                                              ; preds = %156, %153
  %164 = load i8*, i8** %10, align 8
  %165 = getelementptr inbounds i8, i8* %164, i32 1
  store i8* %165, i8** %10, align 8
  br label %203

166:                                              ; preds = %150, %147, %142
  %167 = load i8*, i8** %10, align 8
  %168 = load i8, i8* %167, align 1
  %169 = sext i8 %168 to i32
  %170 = icmp eq i32 %169, 36
  br i1 %170, label %171, label %188

171:                                              ; preds = %166
  %172 = load i8, i8* %16, align 1
  %173 = icmp ne i8 %172, 0
  br i1 %173, label %188, label %174

174:                                              ; preds = %171
  %175 = load i8*, i8** %10, align 8
  %176 = getelementptr inbounds i8, i8* %175, i64 1
  %177 = load i8, i8* %176, align 1
  %178 = call signext i8 @isdelim(i8 signext %177)
  store i8 %178, i8* %14, align 1
  %179 = load i8, i8* %14, align 1
  %180 = icmp ne i8 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %174
  %182 = load i8*, i8** %10, align 8
  %183 = getelementptr inbounds i8, i8* %182, i64 2
  store i8* %183, i8** %10, align 8
  br label %187

184:                                              ; preds = %174
  %185 = load i8*, i8** %10, align 8
  %186 = getelementptr inbounds i8, i8* %185, i32 1
  store i8* %186, i8** %10, align 8
  br label %187

187:                                              ; preds = %184, %181
  store i32 1, i32* %19, align 4
  br label %202

188:                                              ; preds = %171, %166
  %189 = load i64, i64* %13, align 8
  %190 = load i64, i64* @PARSE_BUFSIZE, align 8
  %191 = sub i64 %190, 1
  %192 = icmp eq i64 %189, %191
  %193 = zext i1 %192 to i32
  %194 = call i32 @PARSE_FAIL(i32 %193)
  %195 = load i8*, i8** %10, align 8
  %196 = getelementptr inbounds i8, i8* %195, i32 1
  store i8* %196, i8** %10, align 8
  %197 = load i8, i8* %195, align 1
  %198 = load i8*, i8** %18, align 8
  %199 = load i64, i64* %13, align 8
  %200 = add i64 %199, 1
  store i64 %200, i64* %13, align 8
  %201 = getelementptr inbounds i8, i8* %198, i64 %199
  store i8 %197, i8* %201, align 1
  br label %202

202:                                              ; preds = %188, %187
  br label %203

203:                                              ; preds = %202, %163
  br label %204

204:                                              ; preds = %203, %141
  br label %205

205:                                              ; preds = %204, %104
  br label %206

206:                                              ; preds = %205, %52
  br label %283

207:                                              ; preds = %39
  %208 = load i8*, i8** %10, align 8
  %209 = load i8, i8* %208, align 1
  %210 = call i32 @isspace(i8 signext %209)
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %215

212:                                              ; preds = %207
  %213 = load i8*, i8** %10, align 8
  %214 = getelementptr inbounds i8, i8* %213, i32 1
  store i8* %214, i8** %10, align 8
  br label %216

215:                                              ; preds = %207
  store i32 0, i32* %19, align 4
  br label %216

216:                                              ; preds = %215, %212
  br label %283

217:                                              ; preds = %39
  %218 = load i8, i8* %14, align 1
  %219 = icmp ne i8 %218, 0
  br i1 %219, label %220, label %227

220:                                              ; preds = %217
  %221 = load i8*, i8** %10, align 8
  %222 = load i8, i8* %14, align 1
  %223 = call i8* @strchr(i8* %221, i8 signext %222)
  store i8* %223, i8** %11, align 8
  %224 = icmp eq i8* %223, null
  %225 = zext i1 %224 to i32
  %226 = call i32 @PARSE_FAIL(i32 %225)
  br label %246

227:                                              ; preds = %217
  %228 = load i8*, i8** %10, align 8
  store i8* %228, i8** %11, align 8
  br label %229

229:                                              ; preds = %242, %227
  %230 = load i8*, i8** %11, align 8
  %231 = load i8, i8* %230, align 1
  %232 = sext i8 %231 to i32
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %240

234:                                              ; preds = %229
  %235 = load i8*, i8** %11, align 8
  %236 = load i8, i8* %235, align 1
  %237 = call i32 @isspace(i8 signext %236)
  %238 = icmp ne i32 %237, 0
  %239 = xor i1 %238, true
  br label %240

240:                                              ; preds = %234, %229
  %241 = phi i1 [ false, %229 ], [ %239, %234 ]
  br i1 %241, label %242, label %245

242:                                              ; preds = %240
  %243 = load i8*, i8** %11, align 8
  %244 = getelementptr inbounds i8, i8* %243, i32 1
  store i8* %244, i8** %11, align 8
  br label %229

245:                                              ; preds = %240
  br label %246

246:                                              ; preds = %245, %220
  %247 = load i8*, i8** %11, align 8
  %248 = load i8, i8* %247, align 1
  store i8 %248, i8* %15, align 1
  %249 = load i8*, i8** %11, align 8
  store i8 0, i8* %249, align 1
  %250 = load i8*, i8** %10, align 8
  %251 = call i8* @variable_lookup(i8* %250)
  store i8* %251, i8** %9, align 8
  %252 = icmp ne i8* %251, null
  br i1 %252, label %253, label %272

253:                                              ; preds = %246
  %254 = load i8*, i8** %9, align 8
  %255 = call i64 @strlen(i8* %254)
  store i64 %255, i64* %20, align 8
  %256 = load i8*, i8** %18, align 8
  %257 = load i64, i64* %13, align 8
  %258 = getelementptr inbounds i8, i8* %256, i64 %257
  %259 = load i8*, i8** %9, align 8
  %260 = load i64, i64* @PARSE_BUFSIZE, align 8
  %261 = load i64, i64* %13, align 8
  %262 = add i64 %261, 1
  %263 = sub i64 %260, %262
  %264 = call i32 @strncpy(i8* %258, i8* %259, i64 %263)
  %265 = load i64, i64* %20, align 8
  %266 = load i64, i64* @PARSE_BUFSIZE, align 8
  %267 = sub i64 %266, 1
  %268 = trunc i64 %267 to i32
  %269 = call i64 @min(i64 %265, i32 %268)
  %270 = load i64, i64* %13, align 8
  %271 = add i64 %270, %269
  store i64 %271, i64* %13, align 8
  br label %272

272:                                              ; preds = %253, %246
  %273 = load i8, i8* %15, align 1
  %274 = load i8*, i8** %11, align 8
  store i8 %273, i8* %274, align 1
  %275 = load i8*, i8** %11, align 8
  %276 = load i8, i8* %14, align 1
  %277 = sext i8 %276 to i32
  %278 = icmp ne i32 %277, 0
  %279 = zext i1 %278 to i64
  %280 = select i1 %278, i32 1, i32 0
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i8, i8* %275, i64 %281
  store i8* %282, i8** %10, align 8
  store i32 0, i32* %19, align 4
  br label %283

283:                                              ; preds = %39, %272, %216, %206
  br label %35

284:                                              ; preds = %35
  %285 = load i8, i8* %16, align 1
  %286 = sext i8 %285 to i32
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %292, label %288

288:                                              ; preds = %284
  %289 = load i8, i8* %17, align 1
  %290 = sext i8 %289 to i32
  %291 = icmp ne i32 %290, 0
  br label %292

292:                                              ; preds = %288, %284
  %293 = phi i1 [ true, %284 ], [ %291, %288 ]
  %294 = zext i1 %293 to i32
  %295 = call i32 @PARSE_FAIL(i32 %294)
  %296 = load i64, i64* %13, align 8
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %308

298:                                              ; preds = %292
  %299 = load i32, i32* %19, align 4
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %301, label %308

301:                                              ; preds = %298
  %302 = load i8*, i8** %18, align 8
  %303 = load i64, i64* %13, align 8
  %304 = getelementptr inbounds i8, i8* %302, i64 %303
  store i8 0, i8* %304, align 1
  %305 = load i8*, i8** %18, align 8
  %306 = call i32 @insert(i32* %8, i8* %305)
  %307 = call i32 @PARSE_FAIL(i32 %306)
  br label %308

308:                                              ; preds = %301, %298, %292
  %309 = load i32**, i32*** @args, align 8
  %310 = load i32, i32* %8, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i32*, i32** %309, i64 %311
  store i32* null, i32** %312, align 8
  %313 = load i32, i32* %8, align 4
  %314 = load i32*, i32** %5, align 8
  store i32 %313, i32* %314, align 4
  %315 = load i32, i32* %8, align 4
  %316 = sext i32 %315 to i64
  %317 = mul i64 8, %316
  %318 = add i64 %317, 1
  %319 = trunc i64 %318 to i32
  %320 = call i64 @malloc(i32 %319)
  %321 = inttoptr i64 %320 to i8**
  %322 = load i8***, i8**** %6, align 8
  store i8** %321, i8*** %322, align 8
  %323 = load i32**, i32*** @args, align 8
  %324 = load i8***, i8**** %6, align 8
  %325 = load i8**, i8*** %324, align 8
  %326 = load i32, i32* %8, align 4
  %327 = sext i32 %326 to i64
  %328 = mul i64 8, %327
  %329 = add i64 %328, 1
  %330 = trunc i64 %329 to i32
  %331 = call i32 @bcopy(i32** %323, i8** %325, i32 %330)
  %332 = load i8*, i8** %18, align 8
  %333 = call i32 @free(i8* %332)
  %334 = load i8*, i8** %12, align 8
  %335 = call i32 @free(i8* %334)
  store i32 0, i32* %4, align 4
  br label %336

336:                                              ; preds = %308, %28
  %337 = load i32, i32* %4, align 4
  ret i32 %337
}

declare dso_local i8* @backslash(i8*) #1

declare dso_local i32 @clean(...) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @PARSE_FAIL(i32) #1

declare dso_local i32 @isquote(i8 signext) #1

declare dso_local i32 @isdquote(i8 signext) #1

declare dso_local i32 @isspace(i8 signext) #1

declare dso_local i32 @insert(i32*, i8*) #1

declare dso_local signext i8 @isdelim(i8 signext) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @variable_lookup(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i64) #1

declare dso_local i64 @min(i64, i32) #1

declare dso_local i32 @bcopy(i32**, i8**, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
