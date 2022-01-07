; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_source.c_add_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_source.c_add_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@DIRNAME_SEPARATOR = common dso_local global i8 0, align 1
@current_directory = common dso_local global i8* null, align 8
@SLASH_STRING = common dso_local global i8* null, align 8
@errno = common dso_local global i32 0, align 4
@gdb_stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"Warning: \00", align 1
@S_IFMT = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"%s is not a directory.\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_path(i8* %0, i8** %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.stat, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [2 x i8], align 1
  %18 = alloca i8*, align 8
  %19 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 %2, i32* %6, align 4
  %20 = load i8**, i8*** %5, align 8
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %22 = load i8*, i8** %4, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  br label %389

25:                                               ; preds = %3
  %26 = load i8*, i8** %4, align 8
  %27 = call i8* @xstrdup(i8* %26)
  store i8* %27, i8** %4, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 @make_cleanup(i32 (i8*)* @xfree, i8* %28)
  br label %30

30:                                               ; preds = %384, %25
  %31 = load i8*, i8** %4, align 8
  store i8* %31, i8** %9, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %30
  %35 = load i8*, i8** %9, align 8
  %36 = load i8, i8* @DIRNAME_SEPARATOR, align 1
  %37 = call i8* @strchr(i8* %35, i8 signext %36)
  store i8* %37, i8** %12, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = call i8* @strchr(i8* %38, i8 signext 32)
  store i8* %39, i8** %13, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = call i8* @strchr(i8* %40, i8 signext 9)
  store i8* %41, i8** %14, align 8
  br label %42

42:                                               ; preds = %34, %30
  %43 = load i8*, i8** %12, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %45, label %57

45:                                               ; preds = %42
  %46 = load i8*, i8** %13, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %57

48:                                               ; preds = %45
  %49 = load i8*, i8** %14, align 8
  %50 = icmp eq i8* %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = load i8*, i8** %9, align 8
  %53 = load i8*, i8** %9, align 8
  %54 = call i32 @strlen(i8* %53)
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %52, i64 %55
  store i8* %56, i8** %4, align 8
  store i8* %56, i8** %10, align 8
  br label %119

57:                                               ; preds = %48, %45, %42
  store i8* null, i8** %10, align 8
  %58 = load i8*, i8** %12, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %69

60:                                               ; preds = %57
  %61 = load i8*, i8** %10, align 8
  %62 = icmp eq i8* %61, null
  br i1 %62, label %67, label %63

63:                                               ; preds = %60
  %64 = load i8*, i8** %12, align 8
  %65 = load i8*, i8** %10, align 8
  %66 = icmp ult i8* %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %63, %60
  %68 = load i8*, i8** %12, align 8
  store i8* %68, i8** %10, align 8
  br label %69

69:                                               ; preds = %67, %63, %57
  %70 = load i8*, i8** %13, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %81

72:                                               ; preds = %69
  %73 = load i8*, i8** %10, align 8
  %74 = icmp eq i8* %73, null
  br i1 %74, label %79, label %75

75:                                               ; preds = %72
  %76 = load i8*, i8** %13, align 8
  %77 = load i8*, i8** %10, align 8
  %78 = icmp ult i8* %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %75, %72
  %80 = load i8*, i8** %13, align 8
  store i8* %80, i8** %10, align 8
  br label %81

81:                                               ; preds = %79, %75, %69
  %82 = load i8*, i8** %14, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %93

84:                                               ; preds = %81
  %85 = load i8*, i8** %10, align 8
  %86 = icmp eq i8* %85, null
  br i1 %86, label %91, label %87

87:                                               ; preds = %84
  %88 = load i8*, i8** %14, align 8
  %89 = load i8*, i8** %10, align 8
  %90 = icmp ult i8* %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %87, %84
  %92 = load i8*, i8** %14, align 8
  store i8* %92, i8** %10, align 8
  br label %93

93:                                               ; preds = %91, %87, %81
  %94 = load i8*, i8** %10, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 1
  store i8* %95, i8** %4, align 8
  br label %96

96:                                               ; preds = %115, %93
  %97 = load i8*, i8** %4, align 8
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = load i8, i8* @DIRNAME_SEPARATOR, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 %99, %101
  br i1 %102, label %113, label %103

103:                                              ; preds = %96
  %104 = load i8*, i8** %4, align 8
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp eq i32 %106, 32
  br i1 %107, label %113, label %108

108:                                              ; preds = %103
  %109 = load i8*, i8** %4, align 8
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %111, 9
  br label %113

113:                                              ; preds = %108, %103, %96
  %114 = phi i1 [ true, %103 ], [ true, %96 ], [ %112, %108 ]
  br i1 %114, label %115, label %118

115:                                              ; preds = %113
  %116 = load i8*, i8** %4, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %4, align 8
  br label %96

118:                                              ; preds = %113
  br label %119

119:                                              ; preds = %118, %51
  %120 = load i8*, i8** %9, align 8
  %121 = load i8, i8* %120, align 1
  %122 = call i64 @IS_DIR_SEPARATOR(i8 signext %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %119
  %125 = load i8*, i8** %10, align 8
  %126 = load i8*, i8** %9, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 1
  %128 = icmp ule i8* %125, %127
  br i1 %128, label %138, label %129

129:                                              ; preds = %124, %119
  %130 = load i8*, i8** %10, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 -1
  %132 = load i8, i8* %131, align 1
  %133 = call i64 @IS_DIR_SEPARATOR(i8 signext %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %129
  %136 = load i8*, i8** %10, align 8
  %137 = getelementptr inbounds i8, i8* %136, i32 -1
  store i8* %137, i8** %10, align 8
  br label %138

138:                                              ; preds = %135, %129, %124
  %139 = load i8*, i8** %10, align 8
  store i8 0, i8* %139, align 1
  br label %140

140:                                              ; preds = %182, %138
  %141 = load i8*, i8** %10, align 8
  %142 = load i8*, i8** %9, align 8
  %143 = icmp ugt i8* %141, %142
  br i1 %143, label %144, label %150

144:                                              ; preds = %140
  %145 = load i8*, i8** %10, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 -1
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp eq i32 %148, 46
  br label %150

150:                                              ; preds = %144, %140
  %151 = phi i1 [ false, %140 ], [ %149, %144 ]
  br i1 %151, label %152, label %187

152:                                              ; preds = %150
  %153 = load i8*, i8** %10, align 8
  %154 = load i8*, i8** %9, align 8
  %155 = ptrtoint i8* %153 to i64
  %156 = ptrtoint i8* %154 to i64
  %157 = sub i64 %155, %156
  %158 = icmp eq i64 %157, 1
  br i1 %158, label %159, label %161

159:                                              ; preds = %152
  %160 = load i8*, i8** @current_directory, align 8
  store i8* %160, i8** %9, align 8
  br label %253

161:                                              ; preds = %152
  %162 = load i8*, i8** %10, align 8
  %163 = load i8*, i8** %9, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 1
  %165 = icmp ugt i8* %162, %164
  br i1 %165, label %166, label %186

166:                                              ; preds = %161
  %167 = load i8*, i8** %10, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 -2
  %169 = load i8, i8* %168, align 1
  %170 = call i64 @IS_DIR_SEPARATOR(i8 signext %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %186

172:                                              ; preds = %166
  %173 = load i8*, i8** %10, align 8
  %174 = load i8*, i8** %9, align 8
  %175 = ptrtoint i8* %173 to i64
  %176 = ptrtoint i8* %174 to i64
  %177 = sub i64 %175, %176
  %178 = icmp eq i64 %177, 2
  br i1 %178, label %179, label %182

179:                                              ; preds = %172
  %180 = load i8*, i8** %10, align 8
  %181 = getelementptr inbounds i8, i8* %180, i32 -1
  store i8* %181, i8** %10, align 8
  store i8 0, i8* %181, align 1
  br label %253

182:                                              ; preds = %172
  %183 = load i8*, i8** %10, align 8
  %184 = getelementptr inbounds i8, i8* %183, i64 -2
  store i8* %184, i8** %10, align 8
  %185 = load i8*, i8** %10, align 8
  store i8 0, i8* %185, align 1
  br label %140

186:                                              ; preds = %166, %161
  br label %187

187:                                              ; preds = %186, %150
  %188 = load i8*, i8** %9, align 8
  %189 = getelementptr inbounds i8, i8* %188, i64 0
  %190 = load i8, i8* %189, align 1
  %191 = sext i8 %190 to i32
  %192 = icmp eq i32 %191, 126
  br i1 %192, label %193, label %196

193:                                              ; preds = %187
  %194 = load i8*, i8** %9, align 8
  %195 = call i8* @tilde_expand(i8* %194)
  store i8* %195, i8** %9, align 8
  br label %221

196:                                              ; preds = %187
  %197 = load i8*, i8** %9, align 8
  %198 = call i64 @IS_ABSOLUTE_PATH(i8* %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %211, label %200

200:                                              ; preds = %196
  %201 = load i8*, i8** %9, align 8
  %202 = getelementptr inbounds i8, i8* %201, i64 0
  %203 = load i8, i8* %202, align 1
  %204 = sext i8 %203 to i32
  %205 = icmp ne i32 %204, 36
  br i1 %205, label %206, label %211

206:                                              ; preds = %200
  %207 = load i8*, i8** @current_directory, align 8
  %208 = load i8*, i8** @SLASH_STRING, align 8
  %209 = load i8*, i8** %9, align 8
  %210 = call i8* (i8*, i8*, i8*, ...) @concat(i8* %207, i8* %208, i8* %209, i8* null)
  store i8* %210, i8** %9, align 8
  br label %220

211:                                              ; preds = %200, %196
  %212 = load i8*, i8** %9, align 8
  %213 = load i8*, i8** %10, align 8
  %214 = load i8*, i8** %9, align 8
  %215 = ptrtoint i8* %213 to i64
  %216 = ptrtoint i8* %214 to i64
  %217 = sub i64 %215, %216
  %218 = trunc i64 %217 to i32
  %219 = call i8* @savestring(i8* %212, i32 %218)
  store i8* %219, i8** %9, align 8
  br label %220

220:                                              ; preds = %211, %206
  br label %221

221:                                              ; preds = %220, %193
  %222 = load i8*, i8** %9, align 8
  %223 = call i32 @make_cleanup(i32 (i8*)* @xfree, i8* %222)
  %224 = load i8*, i8** %9, align 8
  %225 = getelementptr inbounds i8, i8* %224, i64 0
  %226 = load i8, i8* %225, align 1
  %227 = sext i8 %226 to i32
  %228 = icmp ne i32 %227, 36
  br i1 %228, label %229, label %252

229:                                              ; preds = %221
  %230 = load i8*, i8** %9, align 8
  %231 = call i64 @stat(i8* %230, %struct.stat* %11)
  %232 = icmp slt i64 %231, 0
  br i1 %232, label %233, label %240

233:                                              ; preds = %229
  %234 = load i32, i32* @errno, align 4
  store i32 %234, i32* %15, align 4
  %235 = load i32, i32* @gdb_stderr, align 4
  %236 = call i32 @fprintf_unfiltered(i32 %235, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %237 = load i8*, i8** %9, align 8
  %238 = load i32, i32* %15, align 4
  %239 = call i32 @print_sys_errmsg(i8* %237, i32 %238)
  br label %251

240:                                              ; preds = %229
  %241 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* @S_IFMT, align 4
  %244 = and i32 %242, %243
  %245 = load i32, i32* @S_IFDIR, align 4
  %246 = icmp ne i32 %244, %245
  br i1 %246, label %247, label %250

247:                                              ; preds = %240
  %248 = load i8*, i8** %9, align 8
  %249 = call i32 @warning(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %248)
  br label %250

250:                                              ; preds = %247, %240
  br label %251

251:                                              ; preds = %250, %233
  br label %252

252:                                              ; preds = %251, %221
  br label %253

253:                                              ; preds = %252, %179, %159
  %254 = load i8*, i8** %9, align 8
  %255 = call i32 @strlen(i8* %254)
  store i32 %255, i32* %16, align 4
  %256 = load i8**, i8*** %5, align 8
  %257 = load i8*, i8** %256, align 8
  store i8* %257, i8** %10, align 8
  br label %258

258:                                              ; preds = %253, %319
  %259 = load i8*, i8** %10, align 8
  %260 = load i8*, i8** %9, align 8
  %261 = load i32, i32* %16, align 4
  %262 = call i32 @strncmp(i8* %259, i8* %260, i32 %261)
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %309, label %264

264:                                              ; preds = %258
  %265 = load i8*, i8** %10, align 8
  %266 = load i32, i32* %16, align 4
  %267 = zext i32 %266 to i64
  %268 = getelementptr inbounds i8, i8* %265, i64 %267
  %269 = load i8, i8* %268, align 1
  %270 = sext i8 %269 to i32
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %282, label %272

272:                                              ; preds = %264
  %273 = load i8*, i8** %10, align 8
  %274 = load i32, i32* %16, align 4
  %275 = zext i32 %274 to i64
  %276 = getelementptr inbounds i8, i8* %273, i64 %275
  %277 = load i8, i8* %276, align 1
  %278 = sext i8 %277 to i32
  %279 = load i8, i8* @DIRNAME_SEPARATOR, align 1
  %280 = sext i8 %279 to i32
  %281 = icmp eq i32 %278, %280
  br i1 %281, label %282, label %309

282:                                              ; preds = %272, %264
  %283 = load i8*, i8** %10, align 8
  %284 = load i8**, i8*** %5, align 8
  %285 = load i8*, i8** %284, align 8
  %286 = icmp ugt i8* %283, %285
  br i1 %286, label %287, label %290

287:                                              ; preds = %282
  %288 = load i8*, i8** %10, align 8
  %289 = getelementptr inbounds i8, i8* %288, i32 -1
  store i8* %289, i8** %10, align 8
  br label %290

290:                                              ; preds = %287, %282
  %291 = load i32, i32* %8, align 4
  %292 = sext i32 %291 to i64
  %293 = load i8*, i8** %10, align 8
  %294 = load i8**, i8*** %5, align 8
  %295 = load i8*, i8** %294, align 8
  %296 = ptrtoint i8* %293 to i64
  %297 = ptrtoint i8* %295 to i64
  %298 = sub i64 %296, %297
  %299 = icmp sgt i64 %292, %298
  br i1 %299, label %300, label %301

300:                                              ; preds = %290
  br label %383

301:                                              ; preds = %290
  %302 = load i8*, i8** %10, align 8
  %303 = load i8*, i8** %10, align 8
  %304 = load i32, i32* %16, align 4
  %305 = add i32 %304, 1
  %306 = zext i32 %305 to i64
  %307 = getelementptr inbounds i8, i8* %303, i64 %306
  %308 = call i32 @strcpy(i8* %302, i8* %307)
  br label %309

309:                                              ; preds = %301, %272, %258
  %310 = load i8*, i8** %10, align 8
  %311 = load i8, i8* @DIRNAME_SEPARATOR, align 1
  %312 = call i8* @strchr(i8* %310, i8 signext %311)
  store i8* %312, i8** %10, align 8
  %313 = load i8*, i8** %10, align 8
  %314 = icmp ne i8* %313, null
  br i1 %314, label %315, label %318

315:                                              ; preds = %309
  %316 = load i8*, i8** %10, align 8
  %317 = getelementptr inbounds i8, i8* %316, i32 1
  store i8* %317, i8** %10, align 8
  br label %319

318:                                              ; preds = %309
  br label %320

319:                                              ; preds = %315
  br label %258

320:                                              ; preds = %318
  %321 = load i8*, i8** %10, align 8
  %322 = icmp eq i8* %321, null
  br i1 %322, label %323, label %382

323:                                              ; preds = %320
  %324 = load i8, i8* @DIRNAME_SEPARATOR, align 1
  %325 = getelementptr inbounds [2 x i8], [2 x i8]* %17, i64 0, i64 0
  store i8 %324, i8* %325, align 1
  %326 = getelementptr inbounds [2 x i8], [2 x i8]* %17, i64 0, i64 1
  store i8 0, i8* %326, align 1
  %327 = load i32, i32* %8, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %359

329:                                              ; preds = %323
  %330 = load i8*, i8** %7, align 8
  %331 = load i32, i32* %8, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds i8, i8* %330, i64 %332
  %334 = load i8, i8* %333, align 1
  store i8 %334, i8* %19, align 1
  %335 = load i8*, i8** %7, align 8
  %336 = load i32, i32* %8, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds i8, i8* %335, i64 %337
  store i8 0, i8* %338, align 1
  %339 = load i8*, i8** %7, align 8
  %340 = getelementptr inbounds [2 x i8], [2 x i8]* %17, i64 0, i64 0
  %341 = load i8*, i8** %9, align 8
  %342 = call i8* (i8*, i8*, i8*, ...) @concat(i8* %339, i8* %340, i8* %341, i8* null)
  store i8* %342, i8** %18, align 8
  %343 = load i8, i8* %19, align 1
  %344 = load i8*, i8** %7, align 8
  %345 = load i32, i32* %8, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds i8, i8* %344, i64 %346
  store i8 %343, i8* %347, align 1
  %348 = load i8*, i8** %18, align 8
  %349 = load i8*, i8** %7, align 8
  %350 = load i32, i32* %8, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds i8, i8* %349, i64 %351
  %353 = call i8* (i8*, i8*, i8*, ...) @concat(i8* %348, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* %352, i8* null)
  %354 = load i8**, i8*** %5, align 8
  store i8* %353, i8** %354, align 8
  %355 = load i8*, i8** %18, align 8
  %356 = call i32 @strlen(i8* %355)
  store i32 %356, i32* %8, align 4
  %357 = load i8*, i8** %18, align 8
  %358 = call i32 @xfree(i8* %357)
  br label %377

359:                                              ; preds = %323
  %360 = load i8*, i8** %9, align 8
  %361 = load i8*, i8** %7, align 8
  %362 = getelementptr inbounds i8, i8* %361, i64 0
  %363 = load i8, i8* %362, align 1
  %364 = sext i8 %363 to i32
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %368

366:                                              ; preds = %359
  %367 = getelementptr inbounds [2 x i8], [2 x i8]* %17, i64 0, i64 0
  br label %370

368:                                              ; preds = %359
  %369 = load i8*, i8** %7, align 8
  br label %370

370:                                              ; preds = %368, %366
  %371 = phi i8* [ %367, %366 ], [ %369, %368 ]
  %372 = load i8*, i8** %7, align 8
  %373 = call i8* (i8*, i8*, i8*, ...) @concat(i8* %360, i8* %371, i8* %372, i8* null)
  %374 = load i8**, i8*** %5, align 8
  store i8* %373, i8** %374, align 8
  %375 = load i8*, i8** %9, align 8
  %376 = call i32 @strlen(i8* %375)
  store i32 %376, i32* %8, align 4
  br label %377

377:                                              ; preds = %370, %329
  %378 = load i8*, i8** %7, align 8
  %379 = call i32 @xfree(i8* %378)
  %380 = load i8**, i8*** %5, align 8
  %381 = load i8*, i8** %380, align 8
  store i8* %381, i8** %7, align 8
  br label %382

382:                                              ; preds = %377, %320
  br label %383

383:                                              ; preds = %382, %300
  br label %384

384:                                              ; preds = %383
  %385 = load i8*, i8** %4, align 8
  %386 = load i8, i8* %385, align 1
  %387 = sext i8 %386 to i32
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %30, label %389

389:                                              ; preds = %24, %384
  ret void
}

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32 @make_cleanup(i32 (i8*)*, i8*) #1

declare dso_local i32 @xfree(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @IS_DIR_SEPARATOR(i8 signext) #1

declare dso_local i8* @tilde_expand(i8*) #1

declare dso_local i64 @IS_ABSOLUTE_PATH(i8*) #1

declare dso_local i8* @concat(i8*, i8*, i8*, ...) #1

declare dso_local i8* @savestring(i8*, i32) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @fprintf_unfiltered(i32, i8*) #1

declare dso_local i32 @print_sys_errmsg(i8*, i32) #1

declare dso_local i32 @warning(i8*, i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
