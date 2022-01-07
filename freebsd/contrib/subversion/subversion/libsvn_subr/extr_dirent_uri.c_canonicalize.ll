; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_dirent_uri.c_canonicalize.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_dirent_uri.c_canonicalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@type_uri = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@TRUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"http:\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"https:\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"svn:\00", align 1
@type_relpath = common dso_local global i64 0, align 8
@svn_uri__char_validity = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"%%%02X\00", align 1
@type_dirent = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64, i8*, i32*)* @canonicalize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @canonicalize(i64 %0, i8* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca [3 x i8], align 1
  %22 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %23 = load i64, i64* @FALSE, align 8
  store i64 %23, i64* %14, align 8
  store i8* null, i8** %15, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = call i64 @SVN_PATH_IS_EMPTY(i8* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %3
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* @type_uri, align 8
  %30 = icmp ne i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %785

33:                                               ; preds = %3
  %34 = load i32*, i32** %7, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = call i64 @strlen(i8* %35)
  %37 = add nsw i64 %36, 1
  %38 = call i8* @apr_pcalloc(i32* %34, i64 %37)
  store i8* %38, i8** %8, align 8
  store i8* %38, i8** %9, align 8
  %39 = load i8*, i8** %6, align 8
  store i8* %39, i8** %10, align 8
  %40 = load i64, i64* %5, align 8
  %41 = load i64, i64* @type_uri, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %426

43:                                               ; preds = %33
  %44 = load i8*, i8** %10, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 47
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  br label %50

50:                                               ; preds = %67, %43
  %51 = load i8*, i8** %10, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %50
  %56 = load i8*, i8** %10, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp ne i32 %58, 47
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load i8*, i8** %10, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 58
  br label %65

65:                                               ; preds = %60, %55, %50
  %66 = phi i1 [ false, %55 ], [ false, %50 ], [ %64, %60 ]
  br i1 %66, label %67, label %70

67:                                               ; preds = %65
  %68 = load i8*, i8** %10, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %10, align 8
  br label %50

70:                                               ; preds = %65
  %71 = load i8*, i8** %10, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 58
  br i1 %74, label %75, label %425

75:                                               ; preds = %70
  %76 = load i8*, i8** %10, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 1
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 47
  br i1 %80, label %81, label %425

81:                                               ; preds = %75
  %82 = load i8*, i8** %10, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 2
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 47
  br i1 %86, label %87, label %425

87:                                               ; preds = %81
  %88 = load i64, i64* @TRUE, align 8
  store i64 %88, i64* %14, align 8
  %89 = load i8*, i8** %6, align 8
  store i8* %89, i8** %10, align 8
  br label %90

90:                                               ; preds = %95, %87
  %91 = load i8*, i8** %10, align 8
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp ne i32 %93, 58
  br i1 %94, label %95, label %105

95:                                               ; preds = %90
  %96 = load i8*, i8** %10, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %10, align 8
  %98 = load i8, i8* %96, align 1
  %99 = call i8* @canonicalize_to_lower(i8 signext %98)
  %100 = ptrtoint i8* %99 to i8
  %101 = load i8*, i8** %9, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %9, align 8
  store i8 %100, i8* %101, align 1
  %103 = load i32, i32* %12, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %12, align 4
  br label %90

105:                                              ; preds = %90
  %106 = load i8*, i8** %9, align 8
  %107 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %107, i8** %9, align 8
  store i8 58, i8* %106, align 1
  %108 = load i8*, i8** %9, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %9, align 8
  store i8 47, i8* %108, align 1
  %110 = load i8*, i8** %9, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %9, align 8
  store i8 47, i8* %110, align 1
  %112 = load i8*, i8** %10, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 3
  store i8* %113, i8** %10, align 8
  %114 = load i32, i32* %12, align 4
  %115 = add nsw i32 %114, 3
  store i32 %115, i32* %12, align 4
  %116 = load i8*, i8** %10, align 8
  store i8* %116, i8** %16, align 8
  br label %117

117:                                              ; preds = %134, %105
  %118 = load i8*, i8** %10, align 8
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %132

122:                                              ; preds = %117
  %123 = load i8*, i8** %10, align 8
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp ne i32 %125, 47
  br i1 %126, label %127, label %132

127:                                              ; preds = %122
  %128 = load i8*, i8** %10, align 8
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp ne i32 %130, 64
  br label %132

132:                                              ; preds = %127, %122, %117
  %133 = phi i1 [ false, %122 ], [ false, %117 ], [ %131, %127 ]
  br i1 %133, label %134, label %137

134:                                              ; preds = %132
  %135 = load i8*, i8** %10, align 8
  %136 = getelementptr inbounds i8, i8* %135, i32 1
  store i8* %136, i8** %10, align 8
  br label %117

137:                                              ; preds = %132
  %138 = load i8*, i8** %10, align 8
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp eq i32 %140, 64
  br i1 %141, label %142, label %160

142:                                              ; preds = %137
  %143 = load i8*, i8** %10, align 8
  %144 = load i8*, i8** %16, align 8
  %145 = ptrtoint i8* %143 to i64
  %146 = ptrtoint i8* %144 to i64
  %147 = sub i64 %145, %146
  %148 = add nsw i64 %147, 1
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* %11, align 4
  %150 = load i8*, i8** %9, align 8
  %151 = load i8*, i8** %16, align 8
  %152 = load i32, i32* %11, align 4
  %153 = call i32 @memcpy(i8* %150, i8* %151, i32 %152)
  %154 = load i32, i32* %11, align 4
  %155 = load i8*, i8** %9, align 8
  %156 = sext i32 %154 to i64
  %157 = getelementptr inbounds i8, i8* %155, i64 %156
  store i8* %157, i8** %9, align 8
  %158 = load i8*, i8** %10, align 8
  %159 = getelementptr inbounds i8, i8* %158, i32 1
  store i8* %159, i8** %10, align 8
  br label %162

160:                                              ; preds = %137
  %161 = load i8*, i8** %16, align 8
  store i8* %161, i8** %10, align 8
  br label %162

162:                                              ; preds = %160, %142
  %163 = load i8*, i8** %10, align 8
  %164 = load i8, i8* %163, align 1
  %165 = sext i8 %164 to i32
  %166 = icmp eq i32 %165, 91
  br i1 %166, label %167, label %232

167:                                              ; preds = %162
  %168 = load i8*, i8** %10, align 8
  %169 = getelementptr inbounds i8, i8* %168, i32 1
  store i8* %169, i8** %10, align 8
  %170 = load i8, i8* %168, align 1
  %171 = load i8*, i8** %9, align 8
  %172 = getelementptr inbounds i8, i8* %171, i32 1
  store i8* %172, i8** %9, align 8
  store i8 %170, i8* %171, align 1
  br label %173

173:                                              ; preds = %212, %167
  %174 = load i8*, i8** %10, align 8
  %175 = load i8, i8* %174, align 1
  %176 = sext i8 %175 to i32
  %177 = icmp eq i32 %176, 58
  br i1 %177, label %210, label %178

178:                                              ; preds = %173
  %179 = load i8*, i8** %10, align 8
  %180 = load i8, i8* %179, align 1
  %181 = sext i8 %180 to i32
  %182 = icmp sge i32 %181, 48
  br i1 %182, label %183, label %188

183:                                              ; preds = %178
  %184 = load i8*, i8** %10, align 8
  %185 = load i8, i8* %184, align 1
  %186 = sext i8 %185 to i32
  %187 = icmp sle i32 %186, 57
  br i1 %187, label %210, label %188

188:                                              ; preds = %183, %178
  %189 = load i8*, i8** %10, align 8
  %190 = load i8, i8* %189, align 1
  %191 = sext i8 %190 to i32
  %192 = icmp sge i32 %191, 97
  br i1 %192, label %193, label %198

193:                                              ; preds = %188
  %194 = load i8*, i8** %10, align 8
  %195 = load i8, i8* %194, align 1
  %196 = sext i8 %195 to i32
  %197 = icmp sle i32 %196, 102
  br i1 %197, label %210, label %198

198:                                              ; preds = %193, %188
  %199 = load i8*, i8** %10, align 8
  %200 = load i8, i8* %199, align 1
  %201 = sext i8 %200 to i32
  %202 = icmp sge i32 %201, 65
  br i1 %202, label %203, label %208

203:                                              ; preds = %198
  %204 = load i8*, i8** %10, align 8
  %205 = load i8, i8* %204, align 1
  %206 = sext i8 %205 to i32
  %207 = icmp sle i32 %206, 70
  br label %208

208:                                              ; preds = %203, %198
  %209 = phi i1 [ false, %198 ], [ %207, %203 ]
  br label %210

210:                                              ; preds = %208, %193, %183, %173
  %211 = phi i1 [ true, %193 ], [ true, %183 ], [ true, %173 ], [ %209, %208 ]
  br i1 %211, label %212, label %220

212:                                              ; preds = %210
  %213 = load i8*, i8** %10, align 8
  %214 = getelementptr inbounds i8, i8* %213, i32 1
  store i8* %214, i8** %10, align 8
  %215 = load i8, i8* %213, align 1
  %216 = call i8* @canonicalize_to_lower(i8 signext %215)
  %217 = ptrtoint i8* %216 to i8
  %218 = load i8*, i8** %9, align 8
  %219 = getelementptr inbounds i8, i8* %218, i32 1
  store i8* %219, i8** %9, align 8
  store i8 %217, i8* %218, align 1
  br label %173

220:                                              ; preds = %210
  %221 = load i8*, i8** %10, align 8
  %222 = load i8, i8* %221, align 1
  %223 = sext i8 %222 to i32
  %224 = icmp eq i32 %223, 93
  br i1 %224, label %225, label %231

225:                                              ; preds = %220
  %226 = load i8*, i8** %10, align 8
  %227 = getelementptr inbounds i8, i8* %226, i32 1
  store i8* %227, i8** %10, align 8
  %228 = load i8, i8* %226, align 1
  %229 = load i8*, i8** %9, align 8
  %230 = getelementptr inbounds i8, i8* %229, i32 1
  store i8* %230, i8** %9, align 8
  store i8 %228, i8* %229, align 1
  br label %231

231:                                              ; preds = %225, %220
  br label %259

232:                                              ; preds = %162
  br label %233

233:                                              ; preds = %250, %232
  %234 = load i8*, i8** %10, align 8
  %235 = load i8, i8* %234, align 1
  %236 = sext i8 %235 to i32
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %248

238:                                              ; preds = %233
  %239 = load i8*, i8** %10, align 8
  %240 = load i8, i8* %239, align 1
  %241 = sext i8 %240 to i32
  %242 = icmp ne i32 %241, 47
  br i1 %242, label %243, label %248

243:                                              ; preds = %238
  %244 = load i8*, i8** %10, align 8
  %245 = load i8, i8* %244, align 1
  %246 = sext i8 %245 to i32
  %247 = icmp ne i32 %246, 58
  br label %248

248:                                              ; preds = %243, %238, %233
  %249 = phi i1 [ false, %238 ], [ false, %233 ], [ %247, %243 ]
  br i1 %249, label %250, label %258

250:                                              ; preds = %248
  %251 = load i8*, i8** %10, align 8
  %252 = getelementptr inbounds i8, i8* %251, i32 1
  store i8* %252, i8** %10, align 8
  %253 = load i8, i8* %251, align 1
  %254 = call i8* @canonicalize_to_lower(i8 signext %253)
  %255 = ptrtoint i8* %254 to i8
  %256 = load i8*, i8** %9, align 8
  %257 = getelementptr inbounds i8, i8* %256, i32 1
  store i8* %257, i8** %9, align 8
  store i8 %255, i8* %256, align 1
  br label %233

258:                                              ; preds = %248
  br label %259

259:                                              ; preds = %258, %231
  %260 = load i8*, i8** %10, align 8
  %261 = load i8, i8* %260, align 1
  %262 = sext i8 %261 to i32
  %263 = icmp eq i32 %262, 58
  br i1 %263, label %264, label %411

264:                                              ; preds = %259
  %265 = load i8*, i8** %10, align 8
  %266 = getelementptr inbounds i8, i8* %265, i64 1
  %267 = load i8, i8* %266, align 1
  %268 = sext i8 %267 to i32
  %269 = icmp eq i32 %268, 56
  br i1 %269, label %270, label %294

270:                                              ; preds = %264
  %271 = load i8*, i8** %10, align 8
  %272 = getelementptr inbounds i8, i8* %271, i64 2
  %273 = load i8, i8* %272, align 1
  %274 = sext i8 %273 to i32
  %275 = icmp eq i32 %274, 48
  br i1 %275, label %276, label %294

276:                                              ; preds = %270
  %277 = load i8*, i8** %10, align 8
  %278 = getelementptr inbounds i8, i8* %277, i64 3
  %279 = load i8, i8* %278, align 1
  %280 = sext i8 %279 to i32
  %281 = icmp eq i32 %280, 47
  br i1 %281, label %287, label %282

282:                                              ; preds = %276
  %283 = load i8*, i8** %10, align 8
  %284 = getelementptr inbounds i8, i8* %283, i64 3
  %285 = load i8, i8* %284, align 1
  %286 = icmp ne i8 %285, 0
  br i1 %286, label %294, label %287

287:                                              ; preds = %282, %276
  %288 = load i8*, i8** %8, align 8
  %289 = call i64 @strncmp(i8* %288, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %294, label %291

291:                                              ; preds = %287
  %292 = load i8*, i8** %10, align 8
  %293 = getelementptr inbounds i8, i8* %292, i64 3
  store i8* %293, i8** %10, align 8
  br label %389

294:                                              ; preds = %287, %282, %270, %264
  %295 = load i8*, i8** %10, align 8
  %296 = getelementptr inbounds i8, i8* %295, i64 1
  %297 = load i8, i8* %296, align 1
  %298 = sext i8 %297 to i32
  %299 = icmp eq i32 %298, 52
  br i1 %299, label %300, label %330

300:                                              ; preds = %294
  %301 = load i8*, i8** %10, align 8
  %302 = getelementptr inbounds i8, i8* %301, i64 2
  %303 = load i8, i8* %302, align 1
  %304 = sext i8 %303 to i32
  %305 = icmp eq i32 %304, 52
  br i1 %305, label %306, label %330

306:                                              ; preds = %300
  %307 = load i8*, i8** %10, align 8
  %308 = getelementptr inbounds i8, i8* %307, i64 3
  %309 = load i8, i8* %308, align 1
  %310 = sext i8 %309 to i32
  %311 = icmp eq i32 %310, 51
  br i1 %311, label %312, label %330

312:                                              ; preds = %306
  %313 = load i8*, i8** %10, align 8
  %314 = getelementptr inbounds i8, i8* %313, i64 4
  %315 = load i8, i8* %314, align 1
  %316 = sext i8 %315 to i32
  %317 = icmp eq i32 %316, 47
  br i1 %317, label %323, label %318

318:                                              ; preds = %312
  %319 = load i8*, i8** %10, align 8
  %320 = getelementptr inbounds i8, i8* %319, i64 4
  %321 = load i8, i8* %320, align 1
  %322 = icmp ne i8 %321, 0
  br i1 %322, label %330, label %323

323:                                              ; preds = %318, %312
  %324 = load i8*, i8** %8, align 8
  %325 = call i64 @strncmp(i8* %324, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 6)
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %330, label %327

327:                                              ; preds = %323
  %328 = load i8*, i8** %10, align 8
  %329 = getelementptr inbounds i8, i8* %328, i64 4
  store i8* %329, i8** %10, align 8
  br label %388

330:                                              ; preds = %323, %318, %306, %300, %294
  %331 = load i8*, i8** %10, align 8
  %332 = getelementptr inbounds i8, i8* %331, i64 1
  %333 = load i8, i8* %332, align 1
  %334 = sext i8 %333 to i32
  %335 = icmp eq i32 %334, 51
  br i1 %335, label %336, label %372

336:                                              ; preds = %330
  %337 = load i8*, i8** %10, align 8
  %338 = getelementptr inbounds i8, i8* %337, i64 2
  %339 = load i8, i8* %338, align 1
  %340 = sext i8 %339 to i32
  %341 = icmp eq i32 %340, 54
  br i1 %341, label %342, label %372

342:                                              ; preds = %336
  %343 = load i8*, i8** %10, align 8
  %344 = getelementptr inbounds i8, i8* %343, i64 3
  %345 = load i8, i8* %344, align 1
  %346 = sext i8 %345 to i32
  %347 = icmp eq i32 %346, 57
  br i1 %347, label %348, label %372

348:                                              ; preds = %342
  %349 = load i8*, i8** %10, align 8
  %350 = getelementptr inbounds i8, i8* %349, i64 4
  %351 = load i8, i8* %350, align 1
  %352 = sext i8 %351 to i32
  %353 = icmp eq i32 %352, 48
  br i1 %353, label %354, label %372

354:                                              ; preds = %348
  %355 = load i8*, i8** %10, align 8
  %356 = getelementptr inbounds i8, i8* %355, i64 5
  %357 = load i8, i8* %356, align 1
  %358 = sext i8 %357 to i32
  %359 = icmp eq i32 %358, 47
  br i1 %359, label %365, label %360

360:                                              ; preds = %354
  %361 = load i8*, i8** %10, align 8
  %362 = getelementptr inbounds i8, i8* %361, i64 5
  %363 = load i8, i8* %362, align 1
  %364 = icmp ne i8 %363, 0
  br i1 %364, label %372, label %365

365:                                              ; preds = %360, %354
  %366 = load i8*, i8** %8, align 8
  %367 = call i64 @strncmp(i8* %366, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %368 = icmp ne i64 %367, 0
  br i1 %368, label %372, label %369

369:                                              ; preds = %365
  %370 = load i8*, i8** %10, align 8
  %371 = getelementptr inbounds i8, i8* %370, i64 5
  store i8* %371, i8** %10, align 8
  br label %387

372:                                              ; preds = %365, %360, %348, %342, %336, %330
  %373 = load i8*, i8** %10, align 8
  %374 = getelementptr inbounds i8, i8* %373, i64 1
  %375 = load i8, i8* %374, align 1
  %376 = sext i8 %375 to i32
  %377 = icmp eq i32 %376, 47
  br i1 %377, label %383, label %378

378:                                              ; preds = %372
  %379 = load i8*, i8** %10, align 8
  %380 = getelementptr inbounds i8, i8* %379, i64 1
  %381 = load i8, i8* %380, align 1
  %382 = icmp ne i8 %381, 0
  br i1 %382, label %386, label %383

383:                                              ; preds = %378, %372
  %384 = load i8*, i8** %10, align 8
  %385 = getelementptr inbounds i8, i8* %384, i64 1
  store i8* %385, i8** %10, align 8
  br label %386

386:                                              ; preds = %383, %378
  br label %387

387:                                              ; preds = %386, %369
  br label %388

388:                                              ; preds = %387, %327
  br label %389

389:                                              ; preds = %388, %291
  br label %390

390:                                              ; preds = %402, %389
  %391 = load i8*, i8** %10, align 8
  %392 = load i8, i8* %391, align 1
  %393 = sext i8 %392 to i32
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %400

395:                                              ; preds = %390
  %396 = load i8*, i8** %10, align 8
  %397 = load i8, i8* %396, align 1
  %398 = sext i8 %397 to i32
  %399 = icmp ne i32 %398, 47
  br label %400

400:                                              ; preds = %395, %390
  %401 = phi i1 [ false, %390 ], [ %399, %395 ]
  br i1 %401, label %402, label %410

402:                                              ; preds = %400
  %403 = load i8*, i8** %10, align 8
  %404 = getelementptr inbounds i8, i8* %403, i32 1
  store i8* %404, i8** %10, align 8
  %405 = load i8, i8* %403, align 1
  %406 = call i8* @canonicalize_to_lower(i8 signext %405)
  %407 = ptrtoint i8* %406 to i8
  %408 = load i8*, i8** %9, align 8
  %409 = getelementptr inbounds i8, i8* %408, i32 1
  store i8* %409, i8** %9, align 8
  store i8 %407, i8* %408, align 1
  br label %390

410:                                              ; preds = %400
  br label %411

411:                                              ; preds = %410, %259
  %412 = load i8*, i8** %10, align 8
  %413 = load i8, i8* %412, align 1
  %414 = load i8*, i8** %9, align 8
  store i8 %413, i8* %414, align 1
  %415 = load i8*, i8** %10, align 8
  %416 = load i8, i8* %415, align 1
  %417 = icmp ne i8 %416, 0
  br i1 %417, label %418, label %424

418:                                              ; preds = %411
  %419 = load i8*, i8** %10, align 8
  %420 = getelementptr inbounds i8, i8* %419, i32 1
  store i8* %420, i8** %10, align 8
  %421 = load i8*, i8** %9, align 8
  %422 = getelementptr inbounds i8, i8* %421, i32 1
  store i8* %422, i8** %9, align 8
  %423 = load i8*, i8** %9, align 8
  store i8* %423, i8** %15, align 8
  br label %424

424:                                              ; preds = %418, %411
  store i32 1, i32* %13, align 4
  br label %425

425:                                              ; preds = %424, %81, %75, %70
  br label %426

426:                                              ; preds = %425, %33
  %427 = load i64, i64* %14, align 8
  %428 = icmp ne i64 %427, 0
  br i1 %428, label %446, label %429

429:                                              ; preds = %426
  %430 = load i64, i64* %5, align 8
  %431 = load i64, i64* @type_relpath, align 8
  %432 = icmp ne i64 %430, %431
  br i1 %432, label %433, label %446

433:                                              ; preds = %429
  %434 = load i8*, i8** %6, align 8
  store i8* %434, i8** %10, align 8
  %435 = load i8*, i8** %10, align 8
  %436 = load i8, i8* %435, align 1
  %437 = sext i8 %436 to i32
  %438 = icmp eq i32 %437, 47
  br i1 %438, label %439, label %445

439:                                              ; preds = %433
  %440 = load i8*, i8** %10, align 8
  %441 = getelementptr inbounds i8, i8* %440, i32 1
  store i8* %441, i8** %10, align 8
  %442 = load i8, i8* %440, align 1
  %443 = load i8*, i8** %9, align 8
  %444 = getelementptr inbounds i8, i8* %443, i32 1
  store i8* %444, i8** %9, align 8
  store i8 %442, i8* %443, align 1
  br label %445

445:                                              ; preds = %439, %433
  br label %446

446:                                              ; preds = %445, %429, %426
  br label %447

447:                                              ; preds = %576, %446
  %448 = load i8*, i8** %10, align 8
  %449 = load i8, i8* %448, align 1
  %450 = icmp ne i8 %449, 0
  br i1 %450, label %451, label %581

451:                                              ; preds = %447
  %452 = load i8*, i8** %10, align 8
  store i8* %452, i8** %17, align 8
  store i32 0, i32* %18, align 4
  br label %453

453:                                              ; preds = %492, %451
  %454 = load i8*, i8** %17, align 8
  %455 = load i8, i8* %454, align 1
  %456 = sext i8 %455 to i32
  %457 = icmp ne i32 %456, 0
  br i1 %457, label %458, label %490

458:                                              ; preds = %453
  %459 = load i8*, i8** %17, align 8
  %460 = getelementptr inbounds i8, i8* %459, i64 0
  %461 = load i8, i8* %460, align 1
  %462 = sext i8 %461 to i32
  %463 = icmp ne i32 %462, 47
  br i1 %463, label %464, label %490

464:                                              ; preds = %458
  %465 = load i64, i64* %5, align 8
  %466 = load i64, i64* @type_uri, align 8
  %467 = icmp eq i64 %465, %466
  br i1 %467, label %468, label %487

468:                                              ; preds = %464
  %469 = load i8*, i8** %17, align 8
  %470 = getelementptr inbounds i8, i8* %469, i64 0
  %471 = load i8, i8* %470, align 1
  %472 = sext i8 %471 to i32
  %473 = icmp eq i32 %472, 37
  br i1 %473, label %474, label %487

474:                                              ; preds = %468
  %475 = load i8*, i8** %17, align 8
  %476 = getelementptr inbounds i8, i8* %475, i64 1
  %477 = load i8, i8* %476, align 1
  %478 = sext i8 %477 to i32
  %479 = icmp eq i32 %478, 50
  br i1 %479, label %480, label %487

480:                                              ; preds = %474
  %481 = load i8*, i8** %17, align 8
  %482 = getelementptr inbounds i8, i8* %481, i64 2
  %483 = load i8, i8* %482, align 1
  %484 = call signext i8 @canonicalize_to_upper(i8 signext %483)
  %485 = sext i8 %484 to i32
  %486 = icmp eq i32 %485, 70
  br label %487

487:                                              ; preds = %480, %474, %468, %464
  %488 = phi i1 [ false, %474 ], [ false, %468 ], [ false, %464 ], [ %486, %480 ]
  %489 = xor i1 %488, true
  br label %490

490:                                              ; preds = %487, %458, %453
  %491 = phi i1 [ false, %458 ], [ false, %453 ], [ %489, %487 ]
  br i1 %491, label %492, label %495

492:                                              ; preds = %490
  %493 = load i8*, i8** %17, align 8
  %494 = getelementptr inbounds i8, i8* %493, i32 1
  store i8* %494, i8** %17, align 8
  br label %453

495:                                              ; preds = %490
  %496 = load i8*, i8** %17, align 8
  %497 = getelementptr inbounds i8, i8* %496, i64 0
  %498 = load i8, i8* %497, align 1
  %499 = sext i8 %498 to i32
  %500 = icmp eq i32 %499, 47
  br i1 %500, label %501, label %502

501:                                              ; preds = %495
  store i32 1, i32* %18, align 4
  br label %514

502:                                              ; preds = %495
  %503 = load i64, i64* %5, align 8
  %504 = load i64, i64* @type_uri, align 8
  %505 = icmp eq i64 %503, %504
  br i1 %505, label %506, label %513

506:                                              ; preds = %502
  %507 = load i8*, i8** %17, align 8
  %508 = getelementptr inbounds i8, i8* %507, i64 0
  %509 = load i8, i8* %508, align 1
  %510 = sext i8 %509 to i32
  %511 = icmp eq i32 %510, 37
  br i1 %511, label %512, label %513

512:                                              ; preds = %506
  store i32 3, i32* %18, align 4
  br label %513

513:                                              ; preds = %512, %506, %502
  br label %514

514:                                              ; preds = %513, %501
  %515 = load i8*, i8** %17, align 8
  %516 = load i8*, i8** %10, align 8
  %517 = ptrtoint i8* %515 to i64
  %518 = ptrtoint i8* %516 to i64
  %519 = sub i64 %517, %518
  %520 = trunc i64 %519 to i32
  store i32 %520, i32* %11, align 4
  %521 = load i32, i32* %11, align 4
  %522 = icmp eq i32 %521, 0
  br i1 %522, label %558, label %523

523:                                              ; preds = %514
  %524 = load i32, i32* %11, align 4
  %525 = icmp eq i32 %524, 1
  br i1 %525, label %526, label %532

526:                                              ; preds = %523
  %527 = load i8*, i8** %10, align 8
  %528 = getelementptr inbounds i8, i8* %527, i64 0
  %529 = load i8, i8* %528, align 1
  %530 = sext i8 %529 to i32
  %531 = icmp eq i32 %530, 46
  br i1 %531, label %558, label %532

532:                                              ; preds = %526, %523
  %533 = load i64, i64* %5, align 8
  %534 = load i64, i64* @type_uri, align 8
  %535 = icmp eq i64 %533, %534
  br i1 %535, label %536, label %559

536:                                              ; preds = %532
  %537 = load i32, i32* %11, align 4
  %538 = icmp eq i32 %537, 3
  br i1 %538, label %539, label %559

539:                                              ; preds = %536
  %540 = load i8*, i8** %10, align 8
  %541 = getelementptr inbounds i8, i8* %540, i64 0
  %542 = load i8, i8* %541, align 1
  %543 = sext i8 %542 to i32
  %544 = icmp eq i32 %543, 37
  br i1 %544, label %545, label %559

545:                                              ; preds = %539
  %546 = load i8*, i8** %10, align 8
  %547 = getelementptr inbounds i8, i8* %546, i64 1
  %548 = load i8, i8* %547, align 1
  %549 = sext i8 %548 to i32
  %550 = icmp eq i32 %549, 50
  br i1 %550, label %551, label %559

551:                                              ; preds = %545
  %552 = load i8*, i8** %10, align 8
  %553 = getelementptr inbounds i8, i8* %552, i64 2
  %554 = load i8, i8* %553, align 1
  %555 = call signext i8 @canonicalize_to_upper(i8 signext %554)
  %556 = sext i8 %555 to i32
  %557 = icmp eq i32 %556, 69
  br i1 %557, label %558, label %559

558:                                              ; preds = %551, %526, %514
  br label %576

559:                                              ; preds = %551, %545, %539, %536, %532
  %560 = load i8*, i8** %9, align 8
  %561 = load i8*, i8** %10, align 8
  %562 = load i32, i32* %11, align 4
  %563 = call i32 @memcpy(i8* %560, i8* %561, i32 %562)
  %564 = load i32, i32* %11, align 4
  %565 = load i8*, i8** %9, align 8
  %566 = sext i32 %564 to i64
  %567 = getelementptr inbounds i8, i8* %565, i64 %566
  store i8* %567, i8** %9, align 8
  %568 = load i32, i32* %18, align 4
  %569 = icmp ne i32 %568, 0
  br i1 %569, label %570, label %573

570:                                              ; preds = %559
  %571 = load i8*, i8** %9, align 8
  %572 = getelementptr inbounds i8, i8* %571, i32 1
  store i8* %572, i8** %9, align 8
  store i8 47, i8* %571, align 1
  br label %573

573:                                              ; preds = %570, %559
  %574 = load i32, i32* %13, align 4
  %575 = add nsw i32 %574, 1
  store i32 %575, i32* %13, align 4
  br label %576

576:                                              ; preds = %573, %558
  %577 = load i8*, i8** %17, align 8
  %578 = load i32, i32* %18, align 4
  %579 = sext i32 %578 to i64
  %580 = getelementptr inbounds i8, i8* %577, i64 %579
  store i8* %580, i8** %10, align 8
  br label %447

581:                                              ; preds = %447
  %582 = load i32, i32* %13, align 4
  %583 = icmp sgt i32 %582, 0
  br i1 %583, label %584, label %604

584:                                              ; preds = %581
  %585 = load i8*, i8** %9, align 8
  %586 = getelementptr inbounds i8, i8* %585, i64 -1
  %587 = load i8, i8* %586, align 1
  %588 = sext i8 %587 to i32
  %589 = icmp eq i32 %588, 47
  br i1 %589, label %590, label %604

590:                                              ; preds = %584
  %591 = load i64, i64* %14, align 8
  %592 = icmp ne i64 %591, 0
  br i1 %592, label %593, label %601

593:                                              ; preds = %590
  %594 = load i8*, i8** %6, align 8
  %595 = load i32, i32* %12, align 4
  %596 = sext i32 %595 to i64
  %597 = getelementptr inbounds i8, i8* %594, i64 %596
  %598 = load i8, i8* %597, align 1
  %599 = sext i8 %598 to i32
  %600 = icmp eq i32 %599, 0
  br i1 %600, label %604, label %601

601:                                              ; preds = %593, %590
  %602 = load i8*, i8** %9, align 8
  %603 = getelementptr inbounds i8, i8* %602, i32 -1
  store i8* %603, i8** %9, align 8
  br label %604

604:                                              ; preds = %601, %593, %584, %581
  %605 = load i8*, i8** %9, align 8
  store i8 0, i8* %605, align 1
  %606 = load i8*, i8** %15, align 8
  %607 = icmp ne i8* %606, null
  br i1 %607, label %608, label %783

608:                                              ; preds = %604
  store i32 0, i32* %19, align 4
  %609 = load i8*, i8** %15, align 8
  store i8* %609, i8** %10, align 8
  br label %610

610:                                              ; preds = %650, %608
  %611 = load i8*, i8** %10, align 8
  %612 = load i8, i8* %611, align 1
  %613 = icmp ne i8 %612, 0
  br i1 %613, label %614, label %653

614:                                              ; preds = %610
  %615 = load i8*, i8** %10, align 8
  %616 = load i8, i8* %615, align 1
  %617 = sext i8 %616 to i32
  switch i32 %617, label %638 [
    i32 47, label %618
    i32 37, label %619
  ]

618:                                              ; preds = %614
  br label %650

619:                                              ; preds = %614
  %620 = load i8*, i8** %10, align 8
  %621 = getelementptr inbounds i8, i8* %620, i64 1
  %622 = load i8, i8* %621, align 1
  %623 = call i32 @svn_ctype_isxdigit(i8 signext %622)
  %624 = icmp ne i32 %623, 0
  br i1 %624, label %625, label %631

625:                                              ; preds = %619
  %626 = load i8*, i8** %10, align 8
  %627 = getelementptr inbounds i8, i8* %626, i64 2
  %628 = load i8, i8* %627, align 1
  %629 = call i32 @svn_ctype_isxdigit(i8 signext %628)
  %630 = icmp ne i32 %629, 0
  br i1 %630, label %634, label %631

631:                                              ; preds = %625, %619
  %632 = load i32, i32* %19, align 4
  %633 = add nsw i32 %632, 2
  store i32 %633, i32* %19, align 4
  br label %637

634:                                              ; preds = %625
  %635 = load i8*, i8** %10, align 8
  %636 = getelementptr inbounds i8, i8* %635, i64 2
  store i8* %636, i8** %10, align 8
  br label %637

637:                                              ; preds = %634, %631
  br label %650

638:                                              ; preds = %614
  %639 = load i32*, i32** @svn_uri__char_validity, align 8
  %640 = load i8*, i8** %10, align 8
  %641 = load i8, i8* %640, align 1
  %642 = zext i8 %641 to i64
  %643 = getelementptr inbounds i32, i32* %639, i64 %642
  %644 = load i32, i32* %643, align 4
  %645 = icmp ne i32 %644, 0
  br i1 %645, label %649, label %646

646:                                              ; preds = %638
  %647 = load i32, i32* %19, align 4
  %648 = add nsw i32 %647, 2
  store i32 %648, i32* %19, align 4
  br label %649

649:                                              ; preds = %646, %638
  br label %650

650:                                              ; preds = %649, %637, %618
  %651 = load i8*, i8** %10, align 8
  %652 = getelementptr inbounds i8, i8* %651, i32 1
  store i8* %652, i8** %10, align 8
  br label %610

653:                                              ; preds = %610
  %654 = load i32, i32* %19, align 4
  %655 = icmp sgt i32 %654, 0
  br i1 %655, label %656, label %683

656:                                              ; preds = %653
  %657 = load i8*, i8** %15, align 8
  %658 = load i8*, i8** %8, align 8
  %659 = ptrtoint i8* %657 to i64
  %660 = ptrtoint i8* %658 to i64
  %661 = sub i64 %659, %660
  %662 = trunc i64 %661 to i32
  store i32 %662, i32* %20, align 4
  %663 = load i32*, i32** %7, align 8
  %664 = load i8*, i8** %10, align 8
  %665 = load i8*, i8** %8, align 8
  %666 = ptrtoint i8* %664 to i64
  %667 = ptrtoint i8* %665 to i64
  %668 = sub i64 %666, %667
  %669 = trunc i64 %668 to i32
  %670 = load i32, i32* %19, align 4
  %671 = add nsw i32 %669, %670
  %672 = add nsw i32 %671, 1
  %673 = call i8* @apr_palloc(i32* %663, i32 %672)
  store i8* %673, i8** %9, align 8
  %674 = load i8*, i8** %9, align 8
  %675 = load i8*, i8** %8, align 8
  %676 = load i32, i32* %20, align 4
  %677 = call i32 @memcpy(i8* %674, i8* %675, i32 %676)
  %678 = load i8*, i8** %9, align 8
  store i8* %678, i8** %8, align 8
  %679 = load i32, i32* %20, align 4
  %680 = load i8*, i8** %9, align 8
  %681 = sext i32 %679 to i64
  %682 = getelementptr inbounds i8, i8* %680, i64 %681
  store i8* %682, i8** %9, align 8
  br label %685

683:                                              ; preds = %653
  %684 = load i8*, i8** %15, align 8
  store i8* %684, i8** %9, align 8
  br label %685

685:                                              ; preds = %683, %656
  %686 = load i8*, i8** %15, align 8
  store i8* %686, i8** %10, align 8
  br label %687

687:                                              ; preds = %778, %685
  %688 = load i8*, i8** %10, align 8
  %689 = load i8, i8* %688, align 1
  %690 = icmp ne i8 %689, 0
  br i1 %690, label %691, label %781

691:                                              ; preds = %687
  %692 = load i8*, i8** %10, align 8
  %693 = load i8, i8* %692, align 1
  %694 = sext i8 %693 to i32
  switch i32 %694, label %757 [
    i32 47, label %695
    i32 37, label %698
  ]

695:                                              ; preds = %691
  %696 = load i8*, i8** %9, align 8
  %697 = getelementptr inbounds i8, i8* %696, i32 1
  store i8* %697, i8** %9, align 8
  store i8 47, i8* %696, align 1
  br label %778

698:                                              ; preds = %691
  %699 = load i8*, i8** %10, align 8
  %700 = getelementptr inbounds i8, i8* %699, i64 1
  %701 = load i8, i8* %700, align 1
  %702 = call i32 @svn_ctype_isxdigit(i8 signext %701)
  %703 = icmp ne i32 %702, 0
  br i1 %703, label %704, label %710

704:                                              ; preds = %698
  %705 = load i8*, i8** %10, align 8
  %706 = getelementptr inbounds i8, i8* %705, i64 2
  %707 = load i8, i8* %706, align 1
  %708 = call i32 @svn_ctype_isxdigit(i8 signext %707)
  %709 = icmp ne i32 %708, 0
  br i1 %709, label %717, label %710

710:                                              ; preds = %704, %698
  %711 = load i8*, i8** %9, align 8
  %712 = getelementptr inbounds i8, i8* %711, i32 1
  store i8* %712, i8** %9, align 8
  store i8 37, i8* %711, align 1
  %713 = load i8*, i8** %9, align 8
  %714 = getelementptr inbounds i8, i8* %713, i32 1
  store i8* %714, i8** %9, align 8
  store i8 50, i8* %713, align 1
  %715 = load i8*, i8** %9, align 8
  %716 = getelementptr inbounds i8, i8* %715, i32 1
  store i8* %716, i8** %9, align 8
  store i8 53, i8* %715, align 1
  br label %756

717:                                              ; preds = %704
  %718 = load i8*, i8** %10, align 8
  %719 = getelementptr inbounds i8, i8* %718, i32 1
  store i8* %719, i8** %10, align 8
  %720 = load i8, i8* %719, align 1
  %721 = getelementptr inbounds [3 x i8], [3 x i8]* %21, i64 0, i64 0
  store i8 %720, i8* %721, align 1
  %722 = load i8*, i8** %10, align 8
  %723 = getelementptr inbounds i8, i8* %722, i32 1
  store i8* %723, i8** %10, align 8
  %724 = load i8, i8* %723, align 1
  %725 = getelementptr inbounds [3 x i8], [3 x i8]* %21, i64 0, i64 1
  store i8 %724, i8* %725, align 1
  %726 = getelementptr inbounds [3 x i8], [3 x i8]* %21, i64 0, i64 2
  store i8 0, i8* %726, align 1
  %727 = getelementptr inbounds [3 x i8], [3 x i8]* %21, i64 0, i64 0
  %728 = call i64 @strtol(i8* %727, i32* null, i32 16)
  %729 = trunc i64 %728 to i32
  store i32 %729, i32* %22, align 4
  %730 = load i32*, i32** @svn_uri__char_validity, align 8
  %731 = load i32, i32* %22, align 4
  %732 = trunc i32 %731 to i8
  %733 = zext i8 %732 to i64
  %734 = getelementptr inbounds i32, i32* %730, i64 %733
  %735 = load i32, i32* %734, align 4
  %736 = icmp ne i32 %735, 0
  br i1 %736, label %737, label %742

737:                                              ; preds = %717
  %738 = load i32, i32* %22, align 4
  %739 = trunc i32 %738 to i8
  %740 = load i8*, i8** %9, align 8
  %741 = getelementptr inbounds i8, i8* %740, i32 1
  store i8* %741, i8** %9, align 8
  store i8 %739, i8* %740, align 1
  br label %755

742:                                              ; preds = %717
  %743 = load i8*, i8** %9, align 8
  %744 = getelementptr inbounds i8, i8* %743, i32 1
  store i8* %744, i8** %9, align 8
  store i8 37, i8* %743, align 1
  %745 = getelementptr inbounds [3 x i8], [3 x i8]* %21, i64 0, i64 0
  %746 = load i8, i8* %745, align 1
  %747 = call signext i8 @canonicalize_to_upper(i8 signext %746)
  %748 = load i8*, i8** %9, align 8
  %749 = getelementptr inbounds i8, i8* %748, i32 1
  store i8* %749, i8** %9, align 8
  store i8 %747, i8* %748, align 1
  %750 = getelementptr inbounds [3 x i8], [3 x i8]* %21, i64 0, i64 1
  %751 = load i8, i8* %750, align 1
  %752 = call signext i8 @canonicalize_to_upper(i8 signext %751)
  %753 = load i8*, i8** %9, align 8
  %754 = getelementptr inbounds i8, i8* %753, i32 1
  store i8* %754, i8** %9, align 8
  store i8 %752, i8* %753, align 1
  br label %755

755:                                              ; preds = %742, %737
  br label %756

756:                                              ; preds = %755, %710
  br label %778

757:                                              ; preds = %691
  %758 = load i32*, i32** @svn_uri__char_validity, align 8
  %759 = load i8*, i8** %10, align 8
  %760 = load i8, i8* %759, align 1
  %761 = zext i8 %760 to i64
  %762 = getelementptr inbounds i32, i32* %758, i64 %761
  %763 = load i32, i32* %762, align 4
  %764 = icmp ne i32 %763, 0
  br i1 %764, label %772, label %765

765:                                              ; preds = %757
  %766 = load i8*, i8** %9, align 8
  %767 = load i8*, i8** %10, align 8
  %768 = load i8, i8* %767, align 1
  %769 = call i32 @apr_snprintf(i8* %766, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8 zeroext %768)
  %770 = load i8*, i8** %9, align 8
  %771 = getelementptr inbounds i8, i8* %770, i64 3
  store i8* %771, i8** %9, align 8
  br label %777

772:                                              ; preds = %757
  %773 = load i8*, i8** %10, align 8
  %774 = load i8, i8* %773, align 1
  %775 = load i8*, i8** %9, align 8
  %776 = getelementptr inbounds i8, i8* %775, i32 1
  store i8* %776, i8** %9, align 8
  store i8 %774, i8* %775, align 1
  br label %777

777:                                              ; preds = %772, %765
  br label %778

778:                                              ; preds = %777, %756, %695
  %779 = load i8*, i8** %10, align 8
  %780 = getelementptr inbounds i8, i8* %779, i32 1
  store i8* %780, i8** %10, align 8
  br label %687

781:                                              ; preds = %687
  %782 = load i8*, i8** %9, align 8
  store i8 0, i8* %782, align 1
  br label %783

783:                                              ; preds = %781, %604
  %784 = load i8*, i8** %8, align 8
  store i8* %784, i8** %4, align 8
  br label %785

785:                                              ; preds = %783, %27
  %786 = load i8*, i8** %4, align 8
  ret i8* %786
}

declare dso_local i64 @SVN_PATH_IS_EMPTY(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @apr_pcalloc(i32*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @canonicalize_to_lower(i8 signext) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local signext i8 @canonicalize_to_upper(i8 signext) #1

declare dso_local i32 @svn_ctype_isxdigit(i8 signext) #1

declare dso_local i8* @apr_palloc(i32*, i32) #1

declare dso_local i64 @strtol(i8*, i32*, i32) #1

declare dso_local i32 @apr_snprintf(i8*, i32, i8*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
