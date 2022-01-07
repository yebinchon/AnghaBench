; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libedit/extr_readline.c__history_expand_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libedit/extr_readline.c__history_expand_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_history_expand_command.from = internal global i8* null, align 8
@_history_expand_command.to = internal global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c":^*$\00", align 1
@last_search_match = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"^*$-0123456789\00", align 1
@rl_outstream = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"%s: Bad word specifier\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i64, i8**)* @_history_expand_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_history_expand_command(i8* %0, i64 %1, i64 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca [4 x i8], align 1
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8, align 1
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i8** %3, i8*** %9, align 8
  store i8* null, i8** %11, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %31 = load i8**, i8*** %9, align 8
  store i8* null, i8** %31, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i32 0, i32* %17, align 4
  %32 = load i8*, i8** %6, align 8
  %33 = load i64, i64* %7, align 8
  %34 = add i64 %33, 1
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = call i64 @strchr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8 signext %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %4
  %40 = getelementptr inbounds [4 x i8], [4 x i8]* %21, i64 0, i64 1
  store i8 33, i8* %40, align 1
  %41 = getelementptr inbounds [4 x i8], [4 x i8]* %21, i64 0, i64 0
  store i8 33, i8* %41, align 1
  %42 = getelementptr inbounds [4 x i8], [4 x i8]* %21, i64 0, i64 2
  store i8 48, i8* %42, align 1
  %43 = getelementptr inbounds [4 x i8], [4 x i8]* %21, i64 0, i64 0
  %44 = call i8* @get_history_event(i8* %43, i32* %17, i32 0)
  store i8* %44, i8** %13, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = load i64, i64* %7, align 8
  %47 = add i64 %46, 1
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 58
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 1, i32 0
  store i32 %53, i32* %17, align 4
  store i32 1, i32* %18, align 4
  br label %107

54:                                               ; preds = %4
  %55 = load i8*, i8** %6, align 8
  %56 = load i64, i64* %7, align 8
  %57 = add i64 %56, 1
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 35
  br i1 %61, label %62, label %76

62:                                               ; preds = %54
  %63 = load i64, i64* %7, align 8
  %64 = add i64 %63, 1
  %65 = call i8* @el_calloc(i64 %64, i32 1)
  store i8* %65, i8** %12, align 8
  %66 = icmp eq i8* %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  store i32 -1, i32* %5, align 4
  br label %716

68:                                               ; preds = %62
  %69 = load i8*, i8** %12, align 8
  %70 = load i8*, i8** %6, align 8
  %71 = load i64, i64* %7, align 8
  %72 = call i32 @strncpy(i8* %69, i8* %70, i64 %71)
  %73 = load i8*, i8** %12, align 8
  %74 = load i64, i64* %7, align 8
  %75 = getelementptr inbounds i8, i8* %73, i64 %74
  store i8 0, i8* %75, align 1
  store i32 1, i32* %17, align 4
  br label %96

76:                                               ; preds = %54
  %77 = load i64, i64* %7, align 8
  %78 = icmp ugt i64 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %76
  %80 = load i8*, i8** %6, align 8
  %81 = load i64, i64* %7, align 8
  %82 = sub i64 %81, 1
  %83 = getelementptr inbounds i8, i8* %80, i64 %82
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 34
  br label %87

87:                                               ; preds = %79, %76
  %88 = phi i1 [ false, %76 ], [ %86, %79 ]
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i32 34, i32 0
  store i32 %90, i32* %22, align 4
  %91 = load i8*, i8** %6, align 8
  %92 = load i64, i64* %7, align 8
  %93 = getelementptr inbounds i8, i8* %91, i64 %92
  %94 = load i32, i32* %22, align 4
  %95 = call i8* @get_history_event(i8* %93, i32* %17, i32 %94)
  store i8* %95, i8** %13, align 8
  br label %96

96:                                               ; preds = %87, %68
  %97 = load i8*, i8** %6, align 8
  %98 = load i64, i64* %7, align 8
  %99 = load i32, i32* %17, align 4
  %100 = sext i32 %99 to i64
  %101 = add i64 %98, %100
  %102 = getelementptr inbounds i8, i8* %97, i64 %101
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 %104, 58
  %106 = zext i1 %105 to i32
  store i32 %106, i32* %18, align 4
  br label %107

107:                                              ; preds = %96, %39
  %108 = load i8*, i8** %13, align 8
  %109 = icmp eq i8* %108, null
  br i1 %109, label %110, label %114

110:                                              ; preds = %107
  %111 = load i8*, i8** %12, align 8
  %112 = icmp eq i8* %111, null
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  store i32 -1, i32* %5, align 4
  br label %716

114:                                              ; preds = %110, %107
  %115 = load i32, i32* %18, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %139, label %117

117:                                              ; preds = %114
  %118 = load i8*, i8** %12, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %120, label %122

120:                                              ; preds = %117
  %121 = load i8*, i8** %12, align 8
  br label %124

122:                                              ; preds = %117
  %123 = load i8*, i8** %13, align 8
  br label %124

124:                                              ; preds = %122, %120
  %125 = phi i8* [ %121, %120 ], [ %123, %122 ]
  %126 = call i8* @strdup(i8* %125)
  %127 = load i8**, i8*** %9, align 8
  store i8* %126, i8** %127, align 8
  %128 = load i8*, i8** %12, align 8
  %129 = icmp ne i8* %128, null
  br i1 %129, label %130, label %133

130:                                              ; preds = %124
  %131 = load i8*, i8** %12, align 8
  %132 = call i32 @el_free(i8* %131)
  br label %133

133:                                              ; preds = %130, %124
  %134 = load i8**, i8*** %9, align 8
  %135 = load i8*, i8** %134, align 8
  %136 = icmp eq i8* %135, null
  br i1 %136, label %137, label %138

137:                                              ; preds = %133
  store i32 -1, i32* %5, align 4
  br label %716

138:                                              ; preds = %133
  store i32 1, i32* %5, align 4
  br label %716

139:                                              ; preds = %114
  %140 = load i8*, i8** %6, align 8
  %141 = load i64, i64* %7, align 8
  %142 = getelementptr inbounds i8, i8* %140, i64 %141
  %143 = load i32, i32* %17, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %142, i64 %144
  %146 = getelementptr inbounds i8, i8* %145, i64 1
  store i8* %146, i8** %14, align 8
  %147 = load i8*, i8** %14, align 8
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  %150 = icmp eq i32 %149, 37
  br i1 %150, label %151, label %160

151:                                              ; preds = %139
  %152 = load i8*, i8** @last_search_match, align 8
  %153 = icmp ne i8* %152, null
  br i1 %153, label %154, label %156

154:                                              ; preds = %151
  %155 = load i8*, i8** @last_search_match, align 8
  br label %157

156:                                              ; preds = %151
  br label %157

157:                                              ; preds = %156, %154
  %158 = phi i8* [ %155, %154 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %156 ]
  %159 = call i8* @strdup(i8* %158)
  store i8* %159, i8** %10, align 8
  br label %337

160:                                              ; preds = %139
  %161 = load i8*, i8** %14, align 8
  %162 = load i8, i8* %161, align 1
  %163 = call i64 @strchr(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8 signext %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %326

165:                                              ; preds = %160
  store i32 -1, i32* %16, align 4
  store i32 -1, i32* %15, align 4
  %166 = load i8*, i8** %14, align 8
  %167 = load i8, i8* %166, align 1
  %168 = sext i8 %167 to i32
  %169 = icmp eq i32 %168, 94
  br i1 %169, label %170, label %173

170:                                              ; preds = %165
  store i32 1, i32* %16, align 4
  store i32 1, i32* %15, align 4
  %171 = load i8*, i8** %14, align 8
  %172 = getelementptr inbounds i8, i8* %171, i32 1
  store i8* %172, i8** %14, align 8
  br label %296

173:                                              ; preds = %165
  %174 = load i8*, i8** %14, align 8
  %175 = load i8, i8* %174, align 1
  %176 = sext i8 %175 to i32
  %177 = icmp eq i32 %176, 36
  br i1 %177, label %178, label %181

178:                                              ; preds = %173
  store i32 -1, i32* %15, align 4
  %179 = load i8*, i8** %14, align 8
  %180 = getelementptr inbounds i8, i8* %179, i32 1
  store i8* %180, i8** %14, align 8
  br label %295

181:                                              ; preds = %173
  %182 = load i8*, i8** %14, align 8
  %183 = load i8, i8* %182, align 1
  %184 = sext i8 %183 to i32
  %185 = icmp eq i32 %184, 42
  br i1 %185, label %186, label %189

186:                                              ; preds = %181
  store i32 1, i32* %15, align 4
  %187 = load i8*, i8** %14, align 8
  %188 = getelementptr inbounds i8, i8* %187, i32 1
  store i8* %188, i8** %14, align 8
  br label %294

189:                                              ; preds = %181
  %190 = load i8*, i8** %14, align 8
  %191 = load i8, i8* %190, align 1
  %192 = sext i8 %191 to i32
  %193 = icmp eq i32 %192, 45
  br i1 %193, label %199, label %194

194:                                              ; preds = %189
  %195 = load i8*, i8** %14, align 8
  %196 = load i8, i8* %195, align 1
  %197 = call i64 @isdigit(i8 zeroext %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %293

199:                                              ; preds = %194, %189
  store i32 0, i32* %15, align 4
  br label %200

200:                                              ; preds = %217, %199
  %201 = load i8*, i8** %14, align 8
  %202 = load i8, i8* %201, align 1
  %203 = sext i8 %202 to i32
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %215

205:                                              ; preds = %200
  %206 = load i8*, i8** %14, align 8
  %207 = load i8, i8* %206, align 1
  %208 = sext i8 %207 to i32
  %209 = icmp sle i32 48, %208
  br i1 %209, label %210, label %215

210:                                              ; preds = %205
  %211 = load i8*, i8** %14, align 8
  %212 = load i8, i8* %211, align 1
  %213 = sext i8 %212 to i32
  %214 = icmp sle i32 %213, 57
  br label %215

215:                                              ; preds = %210, %205, %200
  %216 = phi i1 [ false, %205 ], [ false, %200 ], [ %214, %210 ]
  br i1 %216, label %217, label %226

217:                                              ; preds = %215
  %218 = load i32, i32* %15, align 4
  %219 = mul nsw i32 %218, 10
  %220 = load i8*, i8** %14, align 8
  %221 = getelementptr inbounds i8, i8* %220, i32 1
  store i8* %221, i8** %14, align 8
  %222 = load i8, i8* %220, align 1
  %223 = sext i8 %222 to i32
  %224 = add nsw i32 %219, %223
  %225 = sub nsw i32 %224, 48
  store i32 %225, i32* %15, align 4
  br label %200

226:                                              ; preds = %215
  %227 = load i8*, i8** %14, align 8
  %228 = load i8, i8* %227, align 1
  %229 = sext i8 %228 to i32
  %230 = icmp eq i32 %229, 45
  br i1 %230, label %231, label %281

231:                                              ; preds = %226
  %232 = load i8*, i8** %14, align 8
  %233 = getelementptr inbounds i8, i8* %232, i64 1
  %234 = load i8, i8* %233, align 1
  %235 = call i64 @isdigit(i8 zeroext %234)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %267

237:                                              ; preds = %231
  %238 = load i8*, i8** %14, align 8
  %239 = getelementptr inbounds i8, i8* %238, i32 1
  store i8* %239, i8** %14, align 8
  store i32 0, i32* %16, align 4
  br label %240

240:                                              ; preds = %257, %237
  %241 = load i8*, i8** %14, align 8
  %242 = load i8, i8* %241, align 1
  %243 = sext i8 %242 to i32
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %255

245:                                              ; preds = %240
  %246 = load i8*, i8** %14, align 8
  %247 = load i8, i8* %246, align 1
  %248 = sext i8 %247 to i32
  %249 = icmp sle i32 48, %248
  br i1 %249, label %250, label %255

250:                                              ; preds = %245
  %251 = load i8*, i8** %14, align 8
  %252 = load i8, i8* %251, align 1
  %253 = sext i8 %252 to i32
  %254 = icmp sle i32 %253, 57
  br label %255

255:                                              ; preds = %250, %245, %240
  %256 = phi i1 [ false, %245 ], [ false, %240 ], [ %254, %250 ]
  br i1 %256, label %257, label %266

257:                                              ; preds = %255
  %258 = load i32, i32* %16, align 4
  %259 = mul nsw i32 %258, 10
  %260 = load i8*, i8** %14, align 8
  %261 = getelementptr inbounds i8, i8* %260, i32 1
  store i8* %261, i8** %14, align 8
  %262 = load i8, i8* %260, align 1
  %263 = sext i8 %262 to i32
  %264 = add nsw i32 %259, %263
  %265 = sub nsw i32 %264, 48
  store i32 %265, i32* %16, align 4
  br label %240

266:                                              ; preds = %255
  br label %280

267:                                              ; preds = %231
  %268 = load i8*, i8** %14, align 8
  %269 = getelementptr inbounds i8, i8* %268, i64 1
  %270 = load i8, i8* %269, align 1
  %271 = sext i8 %270 to i32
  %272 = icmp eq i32 %271, 36
  br i1 %272, label %273, label %276

273:                                              ; preds = %267
  %274 = load i8*, i8** %14, align 8
  %275 = getelementptr inbounds i8, i8* %274, i64 2
  store i8* %275, i8** %14, align 8
  store i32 -1, i32* %16, align 4
  br label %279

276:                                              ; preds = %267
  %277 = load i8*, i8** %14, align 8
  %278 = getelementptr inbounds i8, i8* %277, i32 1
  store i8* %278, i8** %14, align 8
  store i32 -2, i32* %16, align 4
  br label %279

279:                                              ; preds = %276, %273
  br label %280

280:                                              ; preds = %279, %266
  br label %292

281:                                              ; preds = %226
  %282 = load i8*, i8** %14, align 8
  %283 = load i8, i8* %282, align 1
  %284 = sext i8 %283 to i32
  %285 = icmp eq i32 %284, 42
  br i1 %285, label %286, label %289

286:                                              ; preds = %281
  store i32 -1, i32* %16, align 4
  %287 = load i8*, i8** %14, align 8
  %288 = getelementptr inbounds i8, i8* %287, i32 1
  store i8* %288, i8** %14, align 8
  br label %291

289:                                              ; preds = %281
  %290 = load i32, i32* %15, align 4
  store i32 %290, i32* %16, align 4
  br label %291

291:                                              ; preds = %289, %286
  br label %292

292:                                              ; preds = %291, %280
  br label %293

293:                                              ; preds = %292, %194
  br label %294

294:                                              ; preds = %293, %186
  br label %295

295:                                              ; preds = %294, %178
  br label %296

296:                                              ; preds = %295, %170
  %297 = load i32, i32* %15, align 4
  %298 = load i32, i32* %16, align 4
  %299 = load i8*, i8** %12, align 8
  %300 = icmp ne i8* %299, null
  br i1 %300, label %301, label %303

301:                                              ; preds = %296
  %302 = load i8*, i8** %12, align 8
  br label %305

303:                                              ; preds = %296
  %304 = load i8*, i8** %13, align 8
  br label %305

305:                                              ; preds = %303, %301
  %306 = phi i8* [ %302, %301 ], [ %304, %303 ]
  %307 = call i8* @history_arg_extract(i32 %297, i32 %298, i8* %306)
  store i8* %307, i8** %10, align 8
  %308 = load i8*, i8** %10, align 8
  %309 = icmp eq i8* %308, null
  br i1 %309, label %310, label %325

310:                                              ; preds = %305
  %311 = load i32, i32* @rl_outstream, align 4
  %312 = load i8*, i8** %6, align 8
  %313 = load i64, i64* %7, align 8
  %314 = getelementptr inbounds i8, i8* %312, i64 %313
  %315 = load i32, i32* %17, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i8, i8* %314, i64 %316
  %318 = call i32 @fprintf(i32 %311, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %317)
  %319 = load i8*, i8** %12, align 8
  %320 = icmp ne i8* %319, null
  br i1 %320, label %321, label %324

321:                                              ; preds = %310
  %322 = load i8*, i8** %12, align 8
  %323 = call i32 @el_free(i8* %322)
  br label %324

324:                                              ; preds = %321, %310
  store i32 -1, i32* %5, align 4
  br label %716

325:                                              ; preds = %305
  br label %336

326:                                              ; preds = %160
  %327 = load i8*, i8** %12, align 8
  %328 = icmp ne i8* %327, null
  br i1 %328, label %329, label %331

329:                                              ; preds = %326
  %330 = load i8*, i8** %12, align 8
  br label %333

331:                                              ; preds = %326
  %332 = load i8*, i8** %13, align 8
  br label %333

333:                                              ; preds = %331, %329
  %334 = phi i8* [ %330, %329 ], [ %332, %331 ]
  %335 = call i8* @strdup(i8* %334)
  store i8* %335, i8** %10, align 8
  br label %336

336:                                              ; preds = %333, %325
  br label %337

337:                                              ; preds = %336, %157
  %338 = load i8*, i8** %12, align 8
  %339 = icmp ne i8* %338, null
  br i1 %339, label %340, label %343

340:                                              ; preds = %337
  %341 = load i8*, i8** %12, align 8
  %342 = call i32 @el_free(i8* %341)
  br label %343

343:                                              ; preds = %340, %337
  %344 = load i8*, i8** %14, align 8
  %345 = load i8, i8* %344, align 1
  %346 = sext i8 %345 to i32
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %358, label %348

348:                                              ; preds = %343
  %349 = load i8*, i8** %14, align 8
  %350 = load i8*, i8** %6, align 8
  %351 = load i64, i64* %7, align 8
  %352 = getelementptr inbounds i8, i8* %350, i64 %351
  %353 = ptrtoint i8* %349 to i64
  %354 = ptrtoint i8* %352 to i64
  %355 = sub i64 %353, %354
  %356 = load i64, i64* %8, align 8
  %357 = icmp uge i64 %355, %356
  br i1 %357, label %358, label %361

358:                                              ; preds = %348, %343
  %359 = load i8*, i8** %10, align 8
  %360 = load i8**, i8*** %9, align 8
  store i8* %359, i8** %360, align 8
  store i32 1, i32* %5, align 4
  br label %716

361:                                              ; preds = %348
  br label %362

362:                                              ; preds = %706, %361
  %363 = load i8*, i8** %14, align 8
  %364 = load i8, i8* %363, align 1
  %365 = icmp ne i8 %364, 0
  br i1 %365, label %366, label %709

366:                                              ; preds = %362
  %367 = load i8*, i8** %14, align 8
  %368 = load i8, i8* %367, align 1
  %369 = sext i8 %368 to i32
  %370 = icmp eq i32 %369, 58
  br i1 %370, label %371, label %372

371:                                              ; preds = %366
  br label %706

372:                                              ; preds = %366
  %373 = load i8*, i8** %14, align 8
  %374 = load i8, i8* %373, align 1
  %375 = sext i8 %374 to i32
  %376 = icmp eq i32 %375, 104
  br i1 %376, label %377, label %384

377:                                              ; preds = %372
  %378 = load i8*, i8** %10, align 8
  %379 = call i8* @strrchr(i8* %378, i8 signext 47)
  store i8* %379, i8** %12, align 8
  %380 = icmp ne i8* %379, null
  br i1 %380, label %381, label %383

381:                                              ; preds = %377
  %382 = load i8*, i8** %12, align 8
  store i8 0, i8* %382, align 1
  br label %383

383:                                              ; preds = %381, %377
  br label %704

384:                                              ; preds = %372
  %385 = load i8*, i8** %14, align 8
  %386 = load i8, i8* %385, align 1
  %387 = sext i8 %386 to i32
  %388 = icmp eq i32 %387, 116
  br i1 %388, label %389, label %401

389:                                              ; preds = %384
  %390 = load i8*, i8** %10, align 8
  %391 = call i8* @strrchr(i8* %390, i8 signext 47)
  store i8* %391, i8** %12, align 8
  %392 = icmp ne i8* %391, null
  br i1 %392, label %393, label %400

393:                                              ; preds = %389
  %394 = load i8*, i8** %12, align 8
  %395 = getelementptr inbounds i8, i8* %394, i64 1
  %396 = call i8* @strdup(i8* %395)
  store i8* %396, i8** %12, align 8
  %397 = load i8*, i8** %10, align 8
  %398 = call i32 @el_free(i8* %397)
  %399 = load i8*, i8** %12, align 8
  store i8* %399, i8** %10, align 8
  br label %400

400:                                              ; preds = %393, %389
  br label %703

401:                                              ; preds = %384
  %402 = load i8*, i8** %14, align 8
  %403 = load i8, i8* %402, align 1
  %404 = sext i8 %403 to i32
  %405 = icmp eq i32 %404, 114
  br i1 %405, label %406, label %413

406:                                              ; preds = %401
  %407 = load i8*, i8** %10, align 8
  %408 = call i8* @strrchr(i8* %407, i8 signext 46)
  store i8* %408, i8** %12, align 8
  %409 = icmp ne i8* %408, null
  br i1 %409, label %410, label %412

410:                                              ; preds = %406
  %411 = load i8*, i8** %12, align 8
  store i8 0, i8* %411, align 1
  br label %412

412:                                              ; preds = %410, %406
  br label %702

413:                                              ; preds = %401
  %414 = load i8*, i8** %14, align 8
  %415 = load i8, i8* %414, align 1
  %416 = sext i8 %415 to i32
  %417 = icmp eq i32 %416, 101
  br i1 %417, label %418, label %429

418:                                              ; preds = %413
  %419 = load i8*, i8** %10, align 8
  %420 = call i8* @strrchr(i8* %419, i8 signext 46)
  store i8* %420, i8** %12, align 8
  %421 = icmp ne i8* %420, null
  br i1 %421, label %422, label %428

422:                                              ; preds = %418
  %423 = load i8*, i8** %12, align 8
  %424 = call i8* @strdup(i8* %423)
  store i8* %424, i8** %12, align 8
  %425 = load i8*, i8** %10, align 8
  %426 = call i32 @el_free(i8* %425)
  %427 = load i8*, i8** %12, align 8
  store i8* %427, i8** %10, align 8
  br label %428

428:                                              ; preds = %422, %418
  br label %701

429:                                              ; preds = %413
  %430 = load i8*, i8** %14, align 8
  %431 = load i8, i8* %430, align 1
  %432 = sext i8 %431 to i32
  %433 = icmp eq i32 %432, 112
  br i1 %433, label %434, label %435

434:                                              ; preds = %429
  store i32 1, i32* %19, align 4
  br label %700

435:                                              ; preds = %429
  %436 = load i8*, i8** %14, align 8
  %437 = load i8, i8* %436, align 1
  %438 = sext i8 %437 to i32
  %439 = icmp eq i32 %438, 103
  br i1 %439, label %440, label %441

440:                                              ; preds = %435
  store i32 2, i32* %20, align 4
  br label %699

441:                                              ; preds = %435
  %442 = load i8*, i8** %14, align 8
  %443 = load i8, i8* %442, align 1
  %444 = sext i8 %443 to i32
  %445 = icmp eq i32 %444, 115
  br i1 %445, label %451, label %446

446:                                              ; preds = %441
  %447 = load i8*, i8** %14, align 8
  %448 = load i8, i8* %447, align 1
  %449 = sext i8 %448 to i32
  %450 = icmp eq i32 %449, 38
  br i1 %450, label %451, label %698

451:                                              ; preds = %446, %441
  %452 = load i8*, i8** %14, align 8
  %453 = load i8, i8* %452, align 1
  %454 = sext i8 %453 to i32
  %455 = icmp eq i32 %454, 38
  br i1 %455, label %456, label %463

456:                                              ; preds = %451
  %457 = load i8*, i8** @_history_expand_command.from, align 8
  %458 = icmp eq i8* %457, null
  br i1 %458, label %462, label %459

459:                                              ; preds = %456
  %460 = load i8*, i8** @_history_expand_command.to, align 8
  %461 = icmp eq i8* %460, null
  br i1 %461, label %462, label %463

462:                                              ; preds = %459, %456
  br label %706

463:                                              ; preds = %459, %451
  %464 = load i8*, i8** %14, align 8
  %465 = load i8, i8* %464, align 1
  %466 = sext i8 %465 to i32
  %467 = icmp eq i32 %466, 115
  br i1 %467, label %468, label %684

468:                                              ; preds = %463
  %469 = load i8*, i8** %14, align 8
  %470 = getelementptr inbounds i8, i8* %469, i32 1
  store i8* %470, i8** %14, align 8
  %471 = load i8, i8* %470, align 1
  store i8 %471, i8* %25, align 1
  %472 = load i8*, i8** %14, align 8
  %473 = getelementptr inbounds i8, i8* %472, i32 1
  store i8* %473, i8** %14, align 8
  store i64 16, i64* %28, align 8
  %474 = load i8*, i8** @_history_expand_command.from, align 8
  %475 = load i64, i64* %28, align 8
  %476 = mul i64 %475, 1
  %477 = call i8* @el_realloc(i8* %474, i64 %476)
  store i8* %477, i8** %23, align 8
  %478 = load i8*, i8** %23, align 8
  %479 = icmp eq i8* %478, null
  br i1 %479, label %480, label %485

480:                                              ; preds = %468
  %481 = load i8*, i8** @_history_expand_command.from, align 8
  %482 = call i32 @el_free(i8* %481)
  %483 = load i8*, i8** %10, align 8
  %484 = call i32 @el_free(i8* %483)
  store i32 0, i32* %5, align 4
  br label %716

485:                                              ; preds = %468
  store i64 0, i64* %26, align 8
  br label %486

486:                                              ; preds = %542, %485
  %487 = load i8*, i8** %14, align 8
  %488 = load i8, i8* %487, align 1
  %489 = sext i8 %488 to i32
  %490 = icmp ne i32 %489, 0
  br i1 %490, label %491, label %498

491:                                              ; preds = %486
  %492 = load i8*, i8** %14, align 8
  %493 = load i8, i8* %492, align 1
  %494 = sext i8 %493 to i32
  %495 = load i8, i8* %25, align 1
  %496 = sext i8 %495 to i32
  %497 = icmp ne i32 %494, %496
  br label %498

498:                                              ; preds = %491, %486
  %499 = phi i1 [ false, %486 ], [ %497, %491 ]
  br i1 %499, label %500, label %545

500:                                              ; preds = %498
  %501 = load i8*, i8** %14, align 8
  %502 = load i8, i8* %501, align 1
  %503 = sext i8 %502 to i32
  %504 = icmp eq i32 %503, 92
  br i1 %504, label %505, label %516

505:                                              ; preds = %500
  %506 = load i8*, i8** %14, align 8
  %507 = getelementptr inbounds i8, i8* %506, i64 1
  %508 = load i8, i8* %507, align 1
  %509 = sext i8 %508 to i32
  %510 = load i8, i8* %25, align 1
  %511 = sext i8 %510 to i32
  %512 = icmp eq i32 %509, %511
  br i1 %512, label %513, label %516

513:                                              ; preds = %505
  %514 = load i8*, i8** %14, align 8
  %515 = getelementptr inbounds i8, i8* %514, i32 1
  store i8* %515, i8** %14, align 8
  br label %516

516:                                              ; preds = %513, %505, %500
  %517 = load i64, i64* %26, align 8
  %518 = load i64, i64* %28, align 8
  %519 = icmp uge i64 %517, %518
  br i1 %519, label %520, label %535

520:                                              ; preds = %516
  %521 = load i8*, i8** %23, align 8
  %522 = load i64, i64* %28, align 8
  %523 = shl i64 %522, 1
  store i64 %523, i64* %28, align 8
  %524 = mul i64 %523, 1
  %525 = call i8* @el_realloc(i8* %521, i64 %524)
  store i8* %525, i8** %29, align 8
  %526 = load i8*, i8** %29, align 8
  %527 = icmp eq i8* %526, null
  br i1 %527, label %528, label %533

528:                                              ; preds = %520
  %529 = load i8*, i8** %23, align 8
  %530 = call i32 @el_free(i8* %529)
  %531 = load i8*, i8** %10, align 8
  %532 = call i32 @el_free(i8* %531)
  store i32 0, i32* %5, align 4
  br label %716

533:                                              ; preds = %520
  %534 = load i8*, i8** %29, align 8
  store i8* %534, i8** %23, align 8
  br label %535

535:                                              ; preds = %533, %516
  %536 = load i8*, i8** %14, align 8
  %537 = load i8, i8* %536, align 1
  %538 = load i8*, i8** %23, align 8
  %539 = load i64, i64* %26, align 8
  %540 = add i64 %539, 1
  store i64 %540, i64* %26, align 8
  %541 = getelementptr inbounds i8, i8* %538, i64 %539
  store i8 %537, i8* %541, align 1
  br label %542

542:                                              ; preds = %535
  %543 = load i8*, i8** %14, align 8
  %544 = getelementptr inbounds i8, i8* %543, i32 1
  store i8* %544, i8** %14, align 8
  br label %486

545:                                              ; preds = %498
  %546 = load i8*, i8** %23, align 8
  %547 = load i64, i64* %26, align 8
  %548 = getelementptr inbounds i8, i8* %546, i64 %547
  store i8 0, i8* %548, align 1
  %549 = load i8*, i8** %23, align 8
  store i8* %549, i8** @_history_expand_command.from, align 8
  %550 = load i8*, i8** %23, align 8
  %551 = load i8, i8* %550, align 1
  %552 = sext i8 %551 to i32
  %553 = icmp eq i32 %552, 0
  br i1 %553, label %554, label %572

554:                                              ; preds = %545
  %555 = load i8*, i8** %23, align 8
  %556 = call i32 @el_free(i8* %555)
  %557 = load i8*, i8** %11, align 8
  %558 = icmp ne i8* %557, null
  br i1 %558, label %559, label %568

559:                                              ; preds = %554
  %560 = load i8*, i8** %11, align 8
  %561 = call i8* @strdup(i8* %560)
  store i8* %561, i8** @_history_expand_command.from, align 8
  %562 = load i8*, i8** @_history_expand_command.from, align 8
  %563 = icmp eq i8* %562, null
  br i1 %563, label %564, label %567

564:                                              ; preds = %559
  %565 = load i8*, i8** %10, align 8
  %566 = call i32 @el_free(i8* %565)
  store i32 0, i32* %5, align 4
  br label %716

567:                                              ; preds = %559
  br label %571

568:                                              ; preds = %554
  store i8* null, i8** @_history_expand_command.from, align 8
  %569 = load i8*, i8** %10, align 8
  %570 = call i32 @el_free(i8* %569)
  store i32 -1, i32* %5, align 4
  br label %716

571:                                              ; preds = %567
  br label %572

572:                                              ; preds = %571, %545
  %573 = load i8*, i8** %14, align 8
  %574 = getelementptr inbounds i8, i8* %573, i32 1
  store i8* %574, i8** %14, align 8
  %575 = load i8*, i8** %14, align 8
  %576 = load i8, i8* %575, align 1
  %577 = icmp ne i8 %576, 0
  br i1 %577, label %579, label %578

578:                                              ; preds = %572
  br label %706

579:                                              ; preds = %572
  store i64 16, i64* %28, align 8
  %580 = load i8*, i8** @_history_expand_command.to, align 8
  %581 = load i64, i64* %28, align 8
  %582 = mul i64 %581, 1
  %583 = call i8* @el_realloc(i8* %580, i64 %582)
  store i8* %583, i8** %24, align 8
  %584 = load i8*, i8** %24, align 8
  %585 = icmp eq i8* %584, null
  br i1 %585, label %586, label %591

586:                                              ; preds = %579
  %587 = load i8*, i8** @_history_expand_command.to, align 8
  %588 = call i32 @el_free(i8* %587)
  %589 = load i8*, i8** %10, align 8
  %590 = call i32 @el_free(i8* %589)
  store i32 -1, i32* %5, align 4
  br label %716

591:                                              ; preds = %579
  store i64 0, i64* %26, align 8
  %592 = load i8*, i8** @_history_expand_command.from, align 8
  %593 = call i64 @strlen(i8* %592)
  store i64 %593, i64* %27, align 8
  br label %594

594:                                              ; preds = %676, %591
  %595 = load i8*, i8** %14, align 8
  %596 = load i8, i8* %595, align 1
  %597 = sext i8 %596 to i32
  %598 = icmp ne i32 %597, 0
  br i1 %598, label %599, label %606

599:                                              ; preds = %594
  %600 = load i8*, i8** %14, align 8
  %601 = load i8, i8* %600, align 1
  %602 = sext i8 %601 to i32
  %603 = load i8, i8* %25, align 1
  %604 = sext i8 %603 to i32
  %605 = icmp ne i32 %602, %604
  br label %606

606:                                              ; preds = %599, %594
  %607 = phi i1 [ false, %594 ], [ %605, %599 ]
  br i1 %607, label %608, label %679

608:                                              ; preds = %606
  %609 = load i64, i64* %26, align 8
  %610 = load i64, i64* %27, align 8
  %611 = add i64 %609, %610
  %612 = add i64 %611, 1
  %613 = load i64, i64* %28, align 8
  %614 = icmp uge i64 %612, %613
  br i1 %614, label %615, label %633

615:                                              ; preds = %608
  %616 = load i64, i64* %27, align 8
  %617 = add i64 %616, 1
  %618 = load i64, i64* %28, align 8
  %619 = add i64 %618, %617
  store i64 %619, i64* %28, align 8
  %620 = load i8*, i8** %24, align 8
  %621 = load i64, i64* %28, align 8
  %622 = mul i64 %621, 1
  %623 = call i8* @el_realloc(i8* %620, i64 %622)
  store i8* %623, i8** %30, align 8
  %624 = load i8*, i8** %30, align 8
  %625 = icmp eq i8* %624, null
  br i1 %625, label %626, label %631

626:                                              ; preds = %615
  %627 = load i8*, i8** %24, align 8
  %628 = call i32 @el_free(i8* %627)
  %629 = load i8*, i8** %10, align 8
  %630 = call i32 @el_free(i8* %629)
  store i32 -1, i32* %5, align 4
  br label %716

631:                                              ; preds = %615
  %632 = load i8*, i8** %30, align 8
  store i8* %632, i8** %24, align 8
  br label %633

633:                                              ; preds = %631, %608
  %634 = load i8*, i8** %14, align 8
  %635 = load i8, i8* %634, align 1
  %636 = sext i8 %635 to i32
  %637 = icmp eq i32 %636, 38
  br i1 %637, label %638, label %647

638:                                              ; preds = %633
  %639 = load i8*, i8** %24, align 8
  %640 = load i64, i64* %26, align 8
  %641 = getelementptr inbounds i8, i8* %639, i64 %640
  %642 = load i8*, i8** @_history_expand_command.from, align 8
  %643 = call i32 @strcpy(i8* %641, i8* %642)
  %644 = load i64, i64* %27, align 8
  %645 = load i64, i64* %26, align 8
  %646 = add i64 %645, %644
  store i64 %646, i64* %26, align 8
  br label %676

647:                                              ; preds = %633
  %648 = load i8*, i8** %14, align 8
  %649 = load i8, i8* %648, align 1
  %650 = sext i8 %649 to i32
  %651 = icmp eq i32 %650, 92
  br i1 %651, label %652, label %669

652:                                              ; preds = %647
  %653 = load i8*, i8** %14, align 8
  %654 = getelementptr inbounds i8, i8* %653, i64 1
  %655 = load i8, i8* %654, align 1
  %656 = sext i8 %655 to i32
  %657 = load i8, i8* %25, align 1
  %658 = sext i8 %657 to i32
  %659 = icmp eq i32 %656, %658
  br i1 %659, label %666, label %660

660:                                              ; preds = %652
  %661 = load i8*, i8** %14, align 8
  %662 = getelementptr inbounds i8, i8* %661, i64 1
  %663 = load i8, i8* %662, align 1
  %664 = sext i8 %663 to i32
  %665 = icmp eq i32 %664, 38
  br i1 %665, label %666, label %669

666:                                              ; preds = %660, %652
  %667 = load i8*, i8** %14, align 8
  %668 = getelementptr inbounds i8, i8* %667, i32 1
  store i8* %668, i8** %14, align 8
  br label %669

669:                                              ; preds = %666, %660, %647
  %670 = load i8*, i8** %14, align 8
  %671 = load i8, i8* %670, align 1
  %672 = load i8*, i8** %24, align 8
  %673 = load i64, i64* %26, align 8
  %674 = add i64 %673, 1
  store i64 %674, i64* %26, align 8
  %675 = getelementptr inbounds i8, i8* %672, i64 %673
  store i8 %671, i8* %675, align 1
  br label %676

676:                                              ; preds = %669, %638
  %677 = load i8*, i8** %14, align 8
  %678 = getelementptr inbounds i8, i8* %677, i32 1
  store i8* %678, i8** %14, align 8
  br label %594

679:                                              ; preds = %606
  %680 = load i8*, i8** %24, align 8
  %681 = load i64, i64* %26, align 8
  %682 = getelementptr inbounds i8, i8* %680, i64 %681
  store i8 0, i8* %682, align 1
  %683 = load i8*, i8** %24, align 8
  store i8* %683, i8** @_history_expand_command.to, align 8
  br label %684

684:                                              ; preds = %679, %463
  br label %685

685:                                              ; preds = %684
  %686 = load i8*, i8** %10, align 8
  %687 = load i8*, i8** @_history_expand_command.from, align 8
  %688 = load i8*, i8** @_history_expand_command.to, align 8
  %689 = load i32, i32* %20, align 4
  %690 = call i8* @_rl_compat_sub(i8* %686, i8* %687, i8* %688, i32 %689)
  store i8* %690, i8** %12, align 8
  %691 = load i8*, i8** %12, align 8
  %692 = icmp ne i8* %691, null
  br i1 %692, label %693, label %697

693:                                              ; preds = %685
  %694 = load i8*, i8** %10, align 8
  %695 = call i32 @el_free(i8* %694)
  %696 = load i8*, i8** %12, align 8
  store i8* %696, i8** %10, align 8
  br label %697

697:                                              ; preds = %693, %685
  store i32 0, i32* %20, align 4
  br label %698

698:                                              ; preds = %697, %446
  br label %699

699:                                              ; preds = %698, %440
  br label %700

700:                                              ; preds = %699, %434
  br label %701

701:                                              ; preds = %700, %428
  br label %702

702:                                              ; preds = %701, %412
  br label %703

703:                                              ; preds = %702, %400
  br label %704

704:                                              ; preds = %703, %383
  br label %705

705:                                              ; preds = %704
  br label %706

706:                                              ; preds = %705, %578, %462, %371
  %707 = load i8*, i8** %14, align 8
  %708 = getelementptr inbounds i8, i8* %707, i32 1
  store i8* %708, i8** %14, align 8
  br label %362

709:                                              ; preds = %362
  %710 = load i8*, i8** %10, align 8
  %711 = load i8**, i8*** %9, align 8
  store i8* %710, i8** %711, align 8
  %712 = load i32, i32* %19, align 4
  %713 = icmp ne i32 %712, 0
  %714 = zext i1 %713 to i64
  %715 = select i1 %713, i32 2, i32 1
  store i32 %715, i32* %5, align 4
  br label %716

716:                                              ; preds = %709, %626, %586, %568, %564, %528, %480, %358, %324, %138, %137, %113, %67
  %717 = load i32, i32* %5, align 4
  ret i32 %717
}

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i8* @get_history_event(i8*, i32*, i32) #1

declare dso_local i8* @el_calloc(i64, i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i64) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @el_free(i8*) #1

declare dso_local i64 @isdigit(i8 zeroext) #1

declare dso_local i8* @history_arg_extract(i32, i32, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i8* @el_realloc(i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i8* @_rl_compat_sub(i8*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
