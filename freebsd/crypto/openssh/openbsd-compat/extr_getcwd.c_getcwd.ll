; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_getcwd.c_getcwd.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_getcwd.c_getcwd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i64, i32, i32 }
%struct.stat = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@MAXPATHLEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@MAXNAMLEN = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @getcwd(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.dirent*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.stat, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* null, i32** %7, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %2
  store i64 0, i64* %16, align 8
  %28 = load i64, i64* %5, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* @EINVAL, align 4
  store i32 %31, i32* @errno, align 4
  store i8* null, i8** %3, align 8
  br label %321

32:                                               ; preds = %27
  %33 = load i8*, i8** %4, align 8
  %34 = load i64, i64* %5, align 8
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  store i8* %35, i8** %19, align 8
  br label %45

36:                                               ; preds = %2
  %37 = load i64, i64* @MAXPATHLEN, align 8
  store i64 %37, i64* %16, align 8
  %38 = call i8* @malloc(i64 %37)
  store i8* %38, i8** %4, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i8* null, i8** %3, align 8
  br label %321

41:                                               ; preds = %36
  %42 = load i8*, i8** %4, align 8
  %43 = load i64, i64* %16, align 8
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  store i8* %44, i8** %19, align 8
  br label %45

45:                                               ; preds = %41, %32
  %46 = load i8*, i8** %19, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 -1
  store i8* %47, i8** %11, align 8
  %48 = load i8*, i8** %11, align 8
  store i8 0, i8* %48, align 1
  %49 = load i64, i64* @MAXPATHLEN, align 8
  store i64 %49, i64* %17, align 8
  %50 = call i8* @malloc(i64 %49)
  store i8* %50, i8** %21, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %304

53:                                               ; preds = %45
  %54 = load i8*, i8** %21, align 8
  %55 = load i64, i64* %17, align 8
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  store i8* %56, i8** %20, align 8
  %57 = load i8*, i8** %21, align 8
  store i8* %57, i8** %12, align 8
  %58 = load i8*, i8** %21, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 0
  store i8 46, i8* %59, align 1
  %60 = load i8*, i8** %21, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 1
  store i8 0, i8* %61, align 1
  %62 = call i64 @stat(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), %struct.stat* %13)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %53
  br label %304

65:                                               ; preds = %53
  %66 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %14, align 8
  %68 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %15, align 8
  store i32 0, i32* @errno, align 4
  store i32 1, i32* %10, align 4
  br label %70

70:                                               ; preds = %290, %65
  %71 = load i8*, i8** %21, align 8
  %72 = call i64 @lstat(i8* %71, %struct.stat* %13)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  br label %304

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %9, align 8
  %78 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %8, align 8
  %80 = load i64, i64* %14, align 8
  %81 = load i64, i64* %8, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %101

83:                                               ; preds = %75
  %84 = load i64, i64* %15, align 8
  %85 = load i64, i64* %9, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %101

87:                                               ; preds = %83
  %88 = load i8*, i8** %11, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 -1
  store i8* %89, i8** %11, align 8
  store i8 47, i8* %89, align 1
  %90 = load i8*, i8** %4, align 8
  %91 = load i8*, i8** %11, align 8
  %92 = load i8*, i8** %19, align 8
  %93 = load i8*, i8** %11, align 8
  %94 = ptrtoint i8* %92 to i64
  %95 = ptrtoint i8* %93 to i64
  %96 = sub i64 %94, %95
  %97 = call i32 @memmove(i8* %90, i8* %91, i64 %96)
  %98 = load i8*, i8** %21, align 8
  %99 = call i32 @free(i8* %98)
  %100 = load i8*, i8** %4, align 8
  store i8* %100, i8** %3, align 8
  br label %321

101:                                              ; preds = %83, %75
  %102 = load i8*, i8** %12, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 3
  %104 = load i32, i32* @MAXNAMLEN, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  %107 = getelementptr inbounds i8, i8* %106, i64 1
  %108 = load i8*, i8** %20, align 8
  %109 = icmp uge i8* %107, %108
  br i1 %109, label %110, label %129

110:                                              ; preds = %101
  %111 = load i8*, i8** %21, align 8
  %112 = load i64, i64* %17, align 8
  %113 = mul i64 %112, 2
  store i64 %113, i64* %17, align 8
  %114 = call i8* @realloc(i8* %111, i64 %113)
  store i8* %114, i8** %22, align 8
  %115 = icmp eq i8* %114, null
  br i1 %115, label %116, label %117

116:                                              ; preds = %110
  br label %304

117:                                              ; preds = %110
  %118 = load i8*, i8** %22, align 8
  %119 = load i8*, i8** %12, align 8
  %120 = load i8*, i8** %21, align 8
  %121 = ptrtoint i8* %119 to i64
  %122 = ptrtoint i8* %120 to i64
  %123 = sub i64 %121, %122
  %124 = getelementptr inbounds i8, i8* %118, i64 %123
  store i8* %124, i8** %12, align 8
  %125 = load i8*, i8** %22, align 8
  store i8* %125, i8** %21, align 8
  %126 = load i8*, i8** %21, align 8
  %127 = load i64, i64* %17, align 8
  %128 = getelementptr inbounds i8, i8* %126, i64 %127
  store i8* %128, i8** %20, align 8
  br label %129

129:                                              ; preds = %117, %101
  %130 = load i8*, i8** %12, align 8
  %131 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %131, i8** %12, align 8
  store i8 46, i8* %130, align 1
  %132 = load i8*, i8** %12, align 8
  %133 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %133, i8** %12, align 8
  store i8 46, i8* %132, align 1
  %134 = load i8*, i8** %12, align 8
  store i8 0, i8* %134, align 1
  %135 = load i8*, i8** %21, align 8
  %136 = call i32* @opendir(i8* %135)
  store i32* %136, i32** %7, align 8
  %137 = icmp ne i32* %136, null
  br i1 %137, label %138, label %143

138:                                              ; preds = %129
  %139 = load i32*, i32** %7, align 8
  %140 = call i32 @dirfd(i32* %139)
  %141 = call i64 @fstat(i32 %140, %struct.stat* %13)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %138, %129
  br label %304

144:                                              ; preds = %138
  %145 = load i8*, i8** %12, align 8
  %146 = getelementptr inbounds i8, i8* %145, i32 1
  store i8* %146, i8** %12, align 8
  store i8 47, i8* %145, align 1
  store i32 0, i32* %18, align 4
  %147 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* %8, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %166

151:                                              ; preds = %144
  br label %152

152:                                              ; preds = %164, %151
  %153 = load i32*, i32** %7, align 8
  %154 = call %struct.dirent* @readdir(i32* %153)
  store %struct.dirent* %154, %struct.dirent** %6, align 8
  %155 = icmp ne %struct.dirent* %154, null
  br i1 %155, label %157, label %156

156:                                              ; preds = %152
  br label %291

157:                                              ; preds = %152
  %158 = load %struct.dirent*, %struct.dirent** %6, align 8
  %159 = getelementptr inbounds %struct.dirent, %struct.dirent* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* %9, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %164

163:                                              ; preds = %157
  br label %165

164:                                              ; preds = %157
  br label %152

165:                                              ; preds = %163
  br label %209

166:                                              ; preds = %144
  br label %167

167:                                              ; preds = %207, %195, %176, %166
  %168 = load i32*, i32** %7, align 8
  %169 = call %struct.dirent* @readdir(i32* %168)
  store %struct.dirent* %169, %struct.dirent** %6, align 8
  %170 = icmp ne %struct.dirent* %169, null
  br i1 %170, label %172, label %171

171:                                              ; preds = %167
  br label %291

172:                                              ; preds = %167
  %173 = load %struct.dirent*, %struct.dirent** %6, align 8
  %174 = call i64 @ISDOT(%struct.dirent* %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %172
  br label %167

177:                                              ; preds = %172
  %178 = load i8*, i8** %12, align 8
  %179 = load %struct.dirent*, %struct.dirent** %6, align 8
  %180 = getelementptr inbounds %struct.dirent, %struct.dirent* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.dirent*, %struct.dirent** %6, align 8
  %183 = getelementptr inbounds %struct.dirent, %struct.dirent* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = add nsw i32 %184, 1
  %186 = call i32 @memcpy(i8* %178, i32 %181, i32 %185)
  %187 = load i8*, i8** %21, align 8
  %188 = call i64 @lstat(i8* %187, %struct.stat* %13)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %196

190:                                              ; preds = %177
  %191 = load i32, i32* %18, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %195, label %193

193:                                              ; preds = %190
  %194 = load i32, i32* @errno, align 4
  store i32 %194, i32* %18, align 4
  br label %195

195:                                              ; preds = %193, %190
  store i32 0, i32* @errno, align 4
  br label %167

196:                                              ; preds = %177
  %197 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* %8, align 8
  %200 = icmp eq i64 %198, %199
  br i1 %200, label %201, label %207

201:                                              ; preds = %196
  %202 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* %9, align 8
  %205 = icmp eq i64 %203, %204
  br i1 %205, label %206, label %207

206:                                              ; preds = %201
  br label %208

207:                                              ; preds = %201, %196
  br label %167

208:                                              ; preds = %206
  br label %209

209:                                              ; preds = %208, %165
  %210 = load i8*, i8** %11, align 8
  %211 = load i8*, i8** %4, align 8
  %212 = ptrtoint i8* %210 to i64
  %213 = ptrtoint i8* %211 to i64
  %214 = sub i64 %212, %213
  %215 = load %struct.dirent*, %struct.dirent** %6, align 8
  %216 = getelementptr inbounds %struct.dirent, %struct.dirent* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* %10, align 4
  %219 = icmp ne i32 %218, 0
  %220 = zext i1 %219 to i64
  %221 = select i1 %219, i32 1, i32 2
  %222 = add nsw i32 %217, %221
  %223 = sext i32 %222 to i64
  %224 = icmp slt i64 %214, %223
  br i1 %224, label %225, label %265

225:                                              ; preds = %209
  %226 = load i64, i64* %16, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %230, label %228

228:                                              ; preds = %225
  %229 = load i32, i32* @ERANGE, align 4
  store i32 %229, i32* @errno, align 4
  br label %304

230:                                              ; preds = %225
  %231 = load i8*, i8** %19, align 8
  %232 = load i8*, i8** %11, align 8
  %233 = ptrtoint i8* %231 to i64
  %234 = ptrtoint i8* %232 to i64
  %235 = sub i64 %233, %234
  store i64 %235, i64* %23, align 8
  %236 = load i8*, i8** %4, align 8
  %237 = load i64, i64* %16, align 8
  %238 = mul i64 %237, 2
  store i64 %238, i64* %16, align 8
  %239 = call i8* @realloc(i8* %236, i64 %238)
  store i8* %239, i8** %24, align 8
  %240 = icmp eq i8* %239, null
  br i1 %240, label %241, label %242

241:                                              ; preds = %230
  br label %304

242:                                              ; preds = %230
  %243 = load i8*, i8** %24, align 8
  %244 = load i8*, i8** %11, align 8
  %245 = load i8*, i8** %4, align 8
  %246 = ptrtoint i8* %244 to i64
  %247 = ptrtoint i8* %245 to i64
  %248 = sub i64 %246, %247
  %249 = getelementptr inbounds i8, i8* %243, i64 %248
  store i8* %249, i8** %11, align 8
  %250 = load i8*, i8** %24, align 8
  store i8* %250, i8** %4, align 8
  %251 = load i8*, i8** %4, align 8
  %252 = load i64, i64* %16, align 8
  %253 = getelementptr inbounds i8, i8* %251, i64 %252
  store i8* %253, i8** %19, align 8
  %254 = load i8*, i8** %19, align 8
  %255 = load i64, i64* %23, align 8
  %256 = sub i64 0, %255
  %257 = getelementptr inbounds i8, i8* %254, i64 %256
  %258 = load i8*, i8** %11, align 8
  %259 = load i64, i64* %23, align 8
  %260 = call i32 @memmove(i8* %257, i8* %258, i64 %259)
  %261 = load i8*, i8** %19, align 8
  %262 = load i64, i64* %23, align 8
  %263 = sub i64 0, %262
  %264 = getelementptr inbounds i8, i8* %261, i64 %263
  store i8* %264, i8** %11, align 8
  br label %265

265:                                              ; preds = %242, %209
  %266 = load i32, i32* %10, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %271, label %268

268:                                              ; preds = %265
  %269 = load i8*, i8** %11, align 8
  %270 = getelementptr inbounds i8, i8* %269, i32 -1
  store i8* %270, i8** %11, align 8
  store i8 47, i8* %270, align 1
  br label %271

271:                                              ; preds = %268, %265
  %272 = load %struct.dirent*, %struct.dirent** %6, align 8
  %273 = getelementptr inbounds %struct.dirent, %struct.dirent* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 8
  %275 = load i8*, i8** %11, align 8
  %276 = sext i32 %274 to i64
  %277 = sub i64 0, %276
  %278 = getelementptr inbounds i8, i8* %275, i64 %277
  store i8* %278, i8** %11, align 8
  %279 = load i8*, i8** %11, align 8
  %280 = load %struct.dirent*, %struct.dirent** %6, align 8
  %281 = getelementptr inbounds %struct.dirent, %struct.dirent* %280, i32 0, i32 2
  %282 = load i32, i32* %281, align 4
  %283 = load %struct.dirent*, %struct.dirent** %6, align 8
  %284 = getelementptr inbounds %struct.dirent, %struct.dirent* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 8
  %286 = call i32 @memcpy(i8* %279, i32 %282, i32 %285)
  %287 = load i32*, i32** %7, align 8
  %288 = call i32 @closedir(i32* %287)
  %289 = load i8*, i8** %12, align 8
  store i8 0, i8* %289, align 1
  br label %290

290:                                              ; preds = %271
  store i32 0, i32* %10, align 4
  br label %70

291:                                              ; preds = %171, %156
  %292 = load i32, i32* @errno, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %303, label %294

294:                                              ; preds = %291
  %295 = load i32, i32* %18, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %299

297:                                              ; preds = %294
  %298 = load i32, i32* %18, align 4
  br label %301

299:                                              ; preds = %294
  %300 = load i32, i32* @ENOENT, align 4
  br label %301

301:                                              ; preds = %299, %297
  %302 = phi i32 [ %298, %297 ], [ %300, %299 ]
  store i32 %302, i32* @errno, align 4
  br label %303

303:                                              ; preds = %301, %291
  br label %304

304:                                              ; preds = %303, %241, %228, %143, %116, %74, %64, %52
  %305 = load i32, i32* @errno, align 4
  store i32 %305, i32* %18, align 4
  %306 = load i64, i64* %16, align 8
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %308, label %311

308:                                              ; preds = %304
  %309 = load i8*, i8** %4, align 8
  %310 = call i32 @free(i8* %309)
  br label %311

311:                                              ; preds = %308, %304
  %312 = load i8*, i8** %21, align 8
  %313 = call i32 @free(i8* %312)
  %314 = load i32*, i32** %7, align 8
  %315 = icmp ne i32* %314, null
  br i1 %315, label %316, label %319

316:                                              ; preds = %311
  %317 = load i32*, i32** %7, align 8
  %318 = call i32 @closedir(i32* %317)
  br label %319

319:                                              ; preds = %316, %311
  %320 = load i32, i32* %18, align 4
  store i32 %320, i32* @errno, align 4
  store i8* null, i8** %3, align 8
  br label %321

321:                                              ; preds = %319, %87, %40, %30
  %322 = load i8*, i8** %3, align 8
  ret i8* %322
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i64 @lstat(i8*, %struct.stat*) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @realloc(i8*, i64) #1

declare dso_local i32* @opendir(i8*) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @dirfd(i32*) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i64 @ISDOT(%struct.dirent*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @closedir(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
