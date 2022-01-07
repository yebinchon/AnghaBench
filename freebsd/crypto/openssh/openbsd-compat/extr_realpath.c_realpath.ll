; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_realpath.c_realpath.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_realpath.c_realpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@ENAMETOOLONG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@SYMLOOP_MAX = common dso_local global i32 0, align 4
@ELOOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @realpath(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.stat, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %21 = load i32, i32* @PATH_MAX, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %16, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %17, align 8
  %25 = load i32, i32* @PATH_MAX, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %18, align 8
  %28 = load i32, i32* @PATH_MAX, align 4
  %29 = zext i32 %28 to i64
  %30 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %19, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %2
  %37 = load i32, i32* @ENOENT, align 4
  store i32 %37, i32* @errno, align 4
  store i8* null, i8** %3, align 8
  store i32 1, i32* %20, align 4
  br label %349

38:                                               ; preds = %2
  %39 = load i32, i32* @errno, align 4
  store i32 %39, i32* %13, align 4
  %40 = load i8*, i8** %5, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %49

42:                                               ; preds = %38
  %43 = load i32, i32* @PATH_MAX, align 4
  %44 = call i8* @malloc(i32 %43)
  store i8* %44, i8** %5, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = icmp eq i8* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store i8* null, i8** %3, align 8
  store i32 1, i32* %20, align 4
  br label %349

48:                                               ; preds = %42
  store i32 1, i32* %15, align 4
  br label %50

49:                                               ; preds = %38
  store i32 0, i32* %15, align 4
  br label %50

50:                                               ; preds = %49, %48
  store i32 0, i32* %12, align 4
  %51 = load i8*, i8** %4, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 0
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 47
  br i1 %55, label %56, label %73

56:                                               ; preds = %50
  %57 = load i8*, i8** %5, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 0
  store i8 47, i8* %58, align 1
  %59 = load i8*, i8** %5, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 1
  store i8 0, i8* %60, align 1
  %61 = load i8*, i8** %4, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 1
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %56
  %67 = load i8*, i8** %5, align 8
  store i8* %67, i8** %3, align 8
  store i32 1, i32* %20, align 4
  br label %349

68:                                               ; preds = %56
  store i64 1, i64* %11, align 8
  %69 = load i8*, i8** %4, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 1
  %71 = trunc i64 %22 to i32
  %72 = call i64 @strlcpy(i8* %24, i8* %70, i32 %71)
  store i64 %72, i64* %10, align 8
  br label %95

73:                                               ; preds = %50
  %74 = load i8*, i8** %5, align 8
  %75 = load i32, i32* @PATH_MAX, align 4
  %76 = call i32* @getcwd(i8* %74, i32 %75)
  %77 = icmp eq i32* %76, null
  br i1 %77, label %78, label %89

78:                                               ; preds = %73
  %79 = load i32, i32* %15, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i8*, i8** %5, align 8
  %83 = call i32 @free(i8* %82)
  br label %88

84:                                               ; preds = %78
  %85 = load i8*, i8** %5, align 8
  %86 = load i32, i32* @PATH_MAX, align 4
  %87 = call i64 @strlcpy(i8* %85, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %86)
  br label %88

88:                                               ; preds = %84, %81
  store i8* null, i8** %3, align 8
  store i32 1, i32* %20, align 4
  br label %349

89:                                               ; preds = %73
  %90 = load i8*, i8** %5, align 8
  %91 = call i64 @strlen(i8* %90)
  store i64 %91, i64* %11, align 8
  %92 = load i8*, i8** %4, align 8
  %93 = trunc i64 %22 to i32
  %94 = call i64 @strlcpy(i8* %24, i8* %92, i32 %93)
  store i64 %94, i64* %10, align 8
  br label %95

95:                                               ; preds = %89, %68
  %96 = load i64, i64* %10, align 8
  %97 = icmp uge i64 %96, %22
  br i1 %97, label %103, label %98

98:                                               ; preds = %95
  %99 = load i64, i64* %11, align 8
  %100 = load i32, i32* @PATH_MAX, align 4
  %101 = sext i32 %100 to i64
  %102 = icmp uge i64 %99, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %98, %95
  %104 = load i32, i32* @ENAMETOOLONG, align 4
  store i32 %104, i32* @errno, align 4
  br label %342

105:                                              ; preds = %98
  br label %106

106:                                              ; preds = %323, %209, %188, %184, %105
  %107 = load i64, i64* %10, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %324

109:                                              ; preds = %106
  %110 = call i8* @strchr(i8* %24, i8 signext 47)
  store i8* %110, i8** %7, align 8
  %111 = load i8*, i8** %7, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %113, label %115

113:                                              ; preds = %109
  %114 = load i8*, i8** %7, align 8
  br label %118

115:                                              ; preds = %109
  %116 = load i64, i64* %10, align 8
  %117 = getelementptr inbounds i8, i8* %24, i64 %116
  br label %118

118:                                              ; preds = %115, %113
  %119 = phi i8* [ %114, %113 ], [ %117, %115 ]
  store i8* %119, i8** %9, align 8
  %120 = load i8*, i8** %9, align 8
  %121 = ptrtoint i8* %120 to i64
  %122 = ptrtoint i8* %24 to i64
  %123 = sub i64 %121, %122
  %124 = trunc i64 %26 to i32
  %125 = sext i32 %124 to i64
  %126 = icmp sge i64 %123, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %118
  %128 = load i32, i32* @ENAMETOOLONG, align 4
  store i32 %128, i32* @errno, align 4
  br label %342

129:                                              ; preds = %118
  %130 = load i8*, i8** %9, align 8
  %131 = ptrtoint i8* %130 to i64
  %132 = ptrtoint i8* %24 to i64
  %133 = sub i64 %131, %132
  %134 = trunc i64 %133 to i32
  %135 = call i32 @memcpy(i8* %27, i8* %24, i32 %134)
  %136 = load i8*, i8** %9, align 8
  %137 = ptrtoint i8* %136 to i64
  %138 = ptrtoint i8* %24 to i64
  %139 = sub i64 %137, %138
  %140 = getelementptr inbounds i8, i8* %27, i64 %139
  store i8 0, i8* %140, align 1
  %141 = load i8*, i8** %9, align 8
  %142 = ptrtoint i8* %141 to i64
  %143 = ptrtoint i8* %24 to i64
  %144 = sub i64 %142, %143
  %145 = load i64, i64* %10, align 8
  %146 = sub i64 %145, %144
  store i64 %146, i64* %10, align 8
  %147 = load i8*, i8** %7, align 8
  %148 = icmp ne i8* %147, null
  br i1 %148, label %149, label %155

149:                                              ; preds = %129
  %150 = load i8*, i8** %9, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 1
  %152 = load i64, i64* %10, align 8
  %153 = add i64 %152, 1
  %154 = call i32 @memmove(i8* %24, i8* %151, i64 %153)
  br label %155

155:                                              ; preds = %149, %129
  %156 = load i8*, i8** %5, align 8
  %157 = load i64, i64* %11, align 8
  %158 = sub i64 %157, 1
  %159 = getelementptr inbounds i8, i8* %156, i64 %158
  %160 = load i8, i8* %159, align 1
  %161 = sext i8 %160 to i32
  %162 = icmp ne i32 %161, 47
  br i1 %162, label %163, label %179

163:                                              ; preds = %155
  %164 = load i64, i64* %11, align 8
  %165 = add i64 %164, 1
  %166 = load i32, i32* @PATH_MAX, align 4
  %167 = sext i32 %166 to i64
  %168 = icmp uge i64 %165, %167
  br i1 %168, label %169, label %171

169:                                              ; preds = %163
  %170 = load i32, i32* @ENAMETOOLONG, align 4
  store i32 %170, i32* @errno, align 4
  br label %342

171:                                              ; preds = %163
  %172 = load i8*, i8** %5, align 8
  %173 = load i64, i64* %11, align 8
  %174 = add i64 %173, 1
  store i64 %174, i64* %11, align 8
  %175 = getelementptr inbounds i8, i8* %172, i64 %173
  store i8 47, i8* %175, align 1
  %176 = load i8*, i8** %5, align 8
  %177 = load i64, i64* %11, align 8
  %178 = getelementptr inbounds i8, i8* %176, i64 %177
  store i8 0, i8* %178, align 1
  br label %179

179:                                              ; preds = %171, %155
  %180 = getelementptr inbounds i8, i8* %27, i64 0
  %181 = load i8, i8* %180, align 16
  %182 = sext i8 %181 to i32
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %179
  br label %106

185:                                              ; preds = %179
  %186 = call i64 @strcmp(i8* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %187 = icmp eq i64 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %185
  br label %106

189:                                              ; preds = %185
  %190 = call i64 @strcmp(i8* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %191 = icmp eq i64 %190, 0
  br i1 %191, label %192, label %210

192:                                              ; preds = %189
  %193 = load i64, i64* %11, align 8
  %194 = icmp ugt i64 %193, 1
  br i1 %194, label %195, label %209

195:                                              ; preds = %192
  %196 = load i8*, i8** %5, align 8
  %197 = load i64, i64* %11, align 8
  %198 = sub i64 %197, 1
  %199 = getelementptr inbounds i8, i8* %196, i64 %198
  store i8 0, i8* %199, align 1
  %200 = load i8*, i8** %5, align 8
  %201 = call i8* @strrchr(i8* %200, i8 signext 47)
  %202 = getelementptr inbounds i8, i8* %201, i64 1
  store i8* %202, i8** %8, align 8
  %203 = load i8*, i8** %8, align 8
  store i8 0, i8* %203, align 1
  %204 = load i8*, i8** %8, align 8
  %205 = load i8*, i8** %5, align 8
  %206 = ptrtoint i8* %204 to i64
  %207 = ptrtoint i8* %205 to i64
  %208 = sub i64 %206, %207
  store i64 %208, i64* %11, align 8
  br label %209

209:                                              ; preds = %195, %192
  br label %106

210:                                              ; preds = %189
  br label %211

211:                                              ; preds = %210
  br label %212

212:                                              ; preds = %211
  %213 = load i8*, i8** %5, align 8
  %214 = load i32, i32* @PATH_MAX, align 4
  %215 = call i64 @strlcat(i8* %213, i8* %27, i32 %214)
  store i64 %215, i64* %11, align 8
  %216 = load i64, i64* %11, align 8
  %217 = load i32, i32* @PATH_MAX, align 4
  %218 = sext i32 %217 to i64
  %219 = icmp uge i64 %216, %218
  br i1 %219, label %220, label %222

220:                                              ; preds = %212
  %221 = load i32, i32* @ENAMETOOLONG, align 4
  store i32 %221, i32* @errno, align 4
  br label %342

222:                                              ; preds = %212
  %223 = load i8*, i8** %5, align 8
  %224 = call i64 @lstat(i8* %223, %struct.stat* %6)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %237

226:                                              ; preds = %222
  %227 = load i32, i32* @errno, align 4
  %228 = load i32, i32* @ENOENT, align 4
  %229 = icmp eq i32 %227, %228
  br i1 %229, label %230, label %236

230:                                              ; preds = %226
  %231 = load i8*, i8** %7, align 8
  %232 = icmp eq i8* %231, null
  br i1 %232, label %233, label %236

233:                                              ; preds = %230
  %234 = load i32, i32* %13, align 4
  store i32 %234, i32* @errno, align 4
  %235 = load i8*, i8** %5, align 8
  store i8* %235, i8** %3, align 8
  store i32 1, i32* %20, align 4
  br label %349

236:                                              ; preds = %230, %226
  br label %342

237:                                              ; preds = %222
  %238 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = call i64 @S_ISLNK(i32 %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %323

242:                                              ; preds = %237
  %243 = load i32, i32* %12, align 4
  %244 = add i32 %243, 1
  store i32 %244, i32* %12, align 4
  %245 = load i32, i32* @SYMLOOP_MAX, align 4
  %246 = icmp ugt i32 %243, %245
  br i1 %246, label %247, label %249

247:                                              ; preds = %242
  %248 = load i32, i32* @ELOOP, align 4
  store i32 %248, i32* @errno, align 4
  br label %342

249:                                              ; preds = %242
  %250 = load i8*, i8** %5, align 8
  %251 = sub i64 %29, 1
  %252 = trunc i64 %251 to i32
  %253 = call i32 @readlink(i8* %250, i8* %30, i32 %252)
  store i32 %253, i32* %14, align 4
  %254 = load i32, i32* %14, align 4
  %255 = icmp slt i32 %254, 0
  br i1 %255, label %256, label %257

256:                                              ; preds = %249
  br label %342

257:                                              ; preds = %249
  %258 = load i32, i32* %14, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i8, i8* %30, i64 %259
  store i8 0, i8* %260, align 1
  %261 = getelementptr inbounds i8, i8* %30, i64 0
  %262 = load i8, i8* %261, align 16
  %263 = sext i8 %262 to i32
  %264 = icmp eq i32 %263, 47
  br i1 %264, label %265, label %268

265:                                              ; preds = %257
  %266 = load i8*, i8** %5, align 8
  %267 = getelementptr inbounds i8, i8* %266, i64 1
  store i8 0, i8* %267, align 1
  store i64 1, i64* %11, align 8
  br label %286

268:                                              ; preds = %257
  %269 = load i64, i64* %11, align 8
  %270 = icmp ugt i64 %269, 1
  br i1 %270, label %271, label %285

271:                                              ; preds = %268
  %272 = load i8*, i8** %5, align 8
  %273 = load i64, i64* %11, align 8
  %274 = sub i64 %273, 1
  %275 = getelementptr inbounds i8, i8* %272, i64 %274
  store i8 0, i8* %275, align 1
  %276 = load i8*, i8** %5, align 8
  %277 = call i8* @strrchr(i8* %276, i8 signext 47)
  %278 = getelementptr inbounds i8, i8* %277, i64 1
  store i8* %278, i8** %8, align 8
  %279 = load i8*, i8** %8, align 8
  store i8 0, i8* %279, align 1
  %280 = load i8*, i8** %8, align 8
  %281 = load i8*, i8** %5, align 8
  %282 = ptrtoint i8* %280 to i64
  %283 = ptrtoint i8* %281 to i64
  %284 = sub i64 %282, %283
  store i64 %284, i64* %11, align 8
  br label %285

285:                                              ; preds = %271, %268
  br label %286

286:                                              ; preds = %285, %265
  %287 = load i8*, i8** %7, align 8
  %288 = icmp ne i8* %287, null
  br i1 %288, label %289, label %320

289:                                              ; preds = %286
  %290 = load i32, i32* %14, align 4
  %291 = sub nsw i32 %290, 1
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i8, i8* %30, i64 %292
  %294 = load i8, i8* %293, align 1
  %295 = sext i8 %294 to i32
  %296 = icmp ne i32 %295, 47
  br i1 %296, label %297, label %312

297:                                              ; preds = %289
  %298 = load i32, i32* %14, align 4
  %299 = add nsw i32 %298, 1
  %300 = trunc i64 %29 to i32
  %301 = icmp sge i32 %299, %300
  br i1 %301, label %302, label %304

302:                                              ; preds = %297
  %303 = load i32, i32* @ENAMETOOLONG, align 4
  store i32 %303, i32* @errno, align 4
  br label %342

304:                                              ; preds = %297
  %305 = load i32, i32* %14, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i8, i8* %30, i64 %306
  store i8 47, i8* %307, align 1
  %308 = load i32, i32* %14, align 4
  %309 = add nsw i32 %308, 1
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i8, i8* %30, i64 %310
  store i8 0, i8* %311, align 1
  br label %312

312:                                              ; preds = %304, %289
  %313 = trunc i64 %29 to i32
  %314 = call i64 @strlcat(i8* %30, i8* %24, i32 %313)
  store i64 %314, i64* %10, align 8
  %315 = load i64, i64* %10, align 8
  %316 = icmp uge i64 %315, %29
  br i1 %316, label %317, label %319

317:                                              ; preds = %312
  %318 = load i32, i32* @ENAMETOOLONG, align 4
  store i32 %318, i32* @errno, align 4
  br label %342

319:                                              ; preds = %312
  br label %320

320:                                              ; preds = %319, %286
  %321 = trunc i64 %22 to i32
  %322 = call i64 @strlcpy(i8* %24, i8* %30, i32 %321)
  store i64 %322, i64* %10, align 8
  br label %323

323:                                              ; preds = %320, %237
  br label %106

324:                                              ; preds = %106
  %325 = load i64, i64* %11, align 8
  %326 = icmp ugt i64 %325, 1
  br i1 %326, label %327, label %340

327:                                              ; preds = %324
  %328 = load i8*, i8** %5, align 8
  %329 = load i64, i64* %11, align 8
  %330 = sub i64 %329, 1
  %331 = getelementptr inbounds i8, i8* %328, i64 %330
  %332 = load i8, i8* %331, align 1
  %333 = sext i8 %332 to i32
  %334 = icmp eq i32 %333, 47
  br i1 %334, label %335, label %340

335:                                              ; preds = %327
  %336 = load i8*, i8** %5, align 8
  %337 = load i64, i64* %11, align 8
  %338 = sub i64 %337, 1
  %339 = getelementptr inbounds i8, i8* %336, i64 %338
  store i8 0, i8* %339, align 1
  br label %340

340:                                              ; preds = %335, %327, %324
  %341 = load i8*, i8** %5, align 8
  store i8* %341, i8** %3, align 8
  store i32 1, i32* %20, align 4
  br label %349

342:                                              ; preds = %317, %302, %256, %247, %236, %220, %169, %127, %103
  %343 = load i32, i32* %15, align 4
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %348

345:                                              ; preds = %342
  %346 = load i8*, i8** %5, align 8
  %347 = call i32 @free(i8* %346)
  br label %348

348:                                              ; preds = %345, %342
  store i8* null, i8** %3, align 8
  store i32 1, i32* %20, align 4
  br label %349

349:                                              ; preds = %348, %340, %233, %88, %66, %47, %36
  %350 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %350)
  %351 = load i8*, i8** %3, align 8
  ret i8* %351
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @malloc(i32) #2

declare dso_local i64 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32* @getcwd(i8*, i32) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @memmove(i8*, i8*, i64) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i64 @strlcat(i8*, i8*, i32) #2

declare dso_local i64 @lstat(i8*, %struct.stat*) #2

declare dso_local i64 @S_ISLNK(i32) #2

declare dso_local i32 @readlink(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
