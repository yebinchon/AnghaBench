; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_getcwd.c_getcwd.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_getcwd.c_getcwd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i64, i8*, i32 }
%struct.stat = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@PATH_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@AT_FDCWD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@AT_SYMLINK_NOFOLLOW = common dso_local global i32 0, align 4
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
  %12 = alloca %struct.stat, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8, align 1
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* null, i32** %7, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %38

24:                                               ; preds = %2
  store i64 0, i64* %15, align 8
  %25 = load i64, i64* %5, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* @EINVAL, align 4
  store i32 %28, i32* @errno, align 4
  store i8* null, i8** %3, align 8
  br label %344

29:                                               ; preds = %24
  %30 = load i64, i64* %5, align 8
  %31 = icmp eq i64 %30, 1
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i32, i32* @ERANGE, align 4
  store i32 %33, i32* @errno, align 4
  store i8* null, i8** %3, align 8
  br label %344

34:                                               ; preds = %29
  %35 = load i8*, i8** %4, align 8
  %36 = load i64, i64* %5, align 8
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  store i8* %37, i8** %17, align 8
  br label %47

38:                                               ; preds = %2
  %39 = load i64, i64* @PATH_MAX, align 8
  store i64 %39, i64* %15, align 8
  %40 = call i8* @malloc(i64 %39)
  store i8* %40, i8** %4, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i8* null, i8** %3, align 8
  br label %344

43:                                               ; preds = %38
  %44 = load i8*, i8** %4, align 8
  %45 = load i64, i64* %15, align 8
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  store i8* %46, i8** %17, align 8
  br label %47

47:                                               ; preds = %43, %34
  %48 = load i8*, i8** %4, align 8
  %49 = load i8*, i8** %17, align 8
  %50 = load i8*, i8** %4, align 8
  %51 = ptrtoint i8* %49 to i64
  %52 = ptrtoint i8* %50 to i64
  %53 = sub i64 %51, %52
  %54 = trunc i64 %53 to i32
  %55 = call i64 @__getcwd(i8* %48, i32 %54)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %87

57:                                               ; preds = %47
  %58 = load i8*, i8** %4, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp ne i32 %60, 47
  br i1 %61, label %62, label %85

62:                                               ; preds = %57
  %63 = load i8*, i8** %4, align 8
  store i8* %63, i8** %11, align 8
  %64 = load i8*, i8** %4, align 8
  %65 = load i8*, i8** %4, align 8
  %66 = call i32 @strlen(i8* %65)
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %64, i64 %67
  %69 = getelementptr inbounds i8, i8* %68, i64 -1
  store i8* %69, i8** %17, align 8
  br label %70

70:                                               ; preds = %74, %62
  %71 = load i8*, i8** %11, align 8
  %72 = load i8*, i8** %17, align 8
  %73 = icmp ult i8* %71, %72
  br i1 %73, label %74, label %84

74:                                               ; preds = %70
  %75 = load i8*, i8** %11, align 8
  %76 = load i8, i8* %75, align 1
  store i8 %76, i8* %18, align 1
  %77 = load i8*, i8** %17, align 8
  %78 = load i8, i8* %77, align 1
  %79 = load i8*, i8** %11, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %11, align 8
  store i8 %78, i8* %79, align 1
  %81 = load i8, i8* %18, align 1
  %82 = load i8*, i8** %17, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 -1
  store i8* %83, i8** %17, align 8
  store i8 %81, i8* %82, align 1
  br label %70

84:                                               ; preds = %70
  br label %85

85:                                               ; preds = %84, %57
  %86 = load i8*, i8** %4, align 8
  store i8* %86, i8** %3, align 8
  br label %344

87:                                               ; preds = %47
  %88 = load i8*, i8** %17, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 -1
  store i8* %89, i8** %11, align 8
  %90 = load i8*, i8** %11, align 8
  store i8 0, i8* %90, align 1
  %91 = call i64 @stat(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), %struct.stat* %12)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  br label %329

94:                                               ; preds = %87
  %95 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %13, align 8
  %97 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  store i64 %98, i64* %14, align 8
  store i32 0, i32* @errno, align 4
  store i32 1, i32* %10, align 4
  br label %99

99:                                               ; preds = %315, %94
  %100 = load i32*, i32** %7, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %107

102:                                              ; preds = %99
  %103 = load i32*, i32** %7, align 8
  %104 = call i32 @_dirfd(i32* %103)
  %105 = call i64 @_fstat(i32 %104, %struct.stat* %12)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %110, label %111

107:                                              ; preds = %99
  %108 = call i64 @lstat(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %struct.stat* %12)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %107, %102
  br label %329

111:                                              ; preds = %107, %102
  %112 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  store i64 %113, i64* %9, align 8
  %114 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  store i64 %115, i64* %8, align 8
  %116 = load i64, i64* %13, align 8
  %117 = load i64, i64* %8, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %141

119:                                              ; preds = %111
  %120 = load i64, i64* %14, align 8
  %121 = load i64, i64* %9, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %141

123:                                              ; preds = %119
  %124 = load i8*, i8** %11, align 8
  %125 = getelementptr inbounds i8, i8* %124, i32 -1
  store i8* %125, i8** %11, align 8
  store i8 47, i8* %125, align 1
  %126 = load i8*, i8** %11, align 8
  %127 = load i8*, i8** %4, align 8
  %128 = load i8*, i8** %17, align 8
  %129 = load i8*, i8** %11, align 8
  %130 = ptrtoint i8* %128 to i64
  %131 = ptrtoint i8* %129 to i64
  %132 = sub i64 %130, %131
  %133 = call i32 @bcopy(i8* %126, i8* %127, i64 %132)
  %134 = load i32*, i32** %7, align 8
  %135 = icmp ne i32* %134, null
  br i1 %135, label %136, label %139

136:                                              ; preds = %123
  %137 = load i32*, i32** %7, align 8
  %138 = call i32 @closedir(i32* %137)
  br label %139

139:                                              ; preds = %136, %123
  %140 = load i8*, i8** %4, align 8
  store i8* %140, i8** %3, align 8
  br label %344

141:                                              ; preds = %119, %111
  %142 = load i32*, i32** %7, align 8
  %143 = icmp ne i32* %142, null
  br i1 %143, label %144, label %147

144:                                              ; preds = %141
  %145 = load i32*, i32** %7, align 8
  %146 = call i32 @_dirfd(i32* %145)
  br label %149

147:                                              ; preds = %141
  %148 = load i32, i32* @AT_FDCWD, align 4
  br label %149

149:                                              ; preds = %147, %144
  %150 = phi i32 [ %146, %144 ], [ %148, %147 ]
  %151 = load i32, i32* @O_RDONLY, align 4
  %152 = load i32, i32* @O_CLOEXEC, align 4
  %153 = or i32 %151, %152
  %154 = call i32 @_openat(i32 %150, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %153)
  store i32 %154, i32* %19, align 4
  %155 = load i32, i32* %19, align 4
  %156 = icmp eq i32 %155, -1
  br i1 %156, label %157, label %158

157:                                              ; preds = %149
  br label %329

158:                                              ; preds = %149
  %159 = load i32*, i32** %7, align 8
  %160 = icmp ne i32* %159, null
  br i1 %160, label %161, label %164

161:                                              ; preds = %158
  %162 = load i32*, i32** %7, align 8
  %163 = call i32 @closedir(i32* %162)
  br label %164

164:                                              ; preds = %161, %158
  %165 = load i32, i32* %19, align 4
  %166 = call i32* @fdopendir(i32 %165)
  store i32* %166, i32** %7, align 8
  %167 = icmp ne i32* %166, null
  br i1 %167, label %168, label %173

168:                                              ; preds = %164
  %169 = load i32*, i32** %7, align 8
  %170 = call i32 @_dirfd(i32* %169)
  %171 = call i64 @_fstat(i32 %170, %struct.stat* %12)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %168, %164
  %174 = load i32, i32* %19, align 4
  %175 = call i32 @_close(i32 %174)
  br label %329

176:                                              ; preds = %168
  store i32 0, i32* %16, align 4
  %177 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* %8, align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %181, label %196

181:                                              ; preds = %176
  br label %182

182:                                              ; preds = %194, %181
  %183 = load i32*, i32** %7, align 8
  %184 = call %struct.dirent* @readdir(i32* %183)
  store %struct.dirent* %184, %struct.dirent** %6, align 8
  %185 = icmp ne %struct.dirent* %184, null
  br i1 %185, label %187, label %186

186:                                              ; preds = %182
  br label %316

187:                                              ; preds = %182
  %188 = load %struct.dirent*, %struct.dirent** %6, align 8
  %189 = getelementptr inbounds %struct.dirent, %struct.dirent* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* %9, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %194

193:                                              ; preds = %187
  br label %195

194:                                              ; preds = %187
  br label %182

195:                                              ; preds = %193
  br label %235

196:                                              ; preds = %176
  br label %197

197:                                              ; preds = %233, %221, %206, %196
  %198 = load i32*, i32** %7, align 8
  %199 = call %struct.dirent* @readdir(i32* %198)
  store %struct.dirent* %199, %struct.dirent** %6, align 8
  %200 = icmp ne %struct.dirent* %199, null
  br i1 %200, label %202, label %201

201:                                              ; preds = %197
  br label %316

202:                                              ; preds = %197
  %203 = load %struct.dirent*, %struct.dirent** %6, align 8
  %204 = call i64 @ISDOT(%struct.dirent* %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %202
  br label %197

207:                                              ; preds = %202
  %208 = load i32*, i32** %7, align 8
  %209 = call i32 @_dirfd(i32* %208)
  %210 = load %struct.dirent*, %struct.dirent** %6, align 8
  %211 = getelementptr inbounds %struct.dirent, %struct.dirent* %210, i32 0, i32 1
  %212 = load i8*, i8** %211, align 8
  %213 = load i32, i32* @AT_SYMLINK_NOFOLLOW, align 4
  %214 = call i64 @fstatat(i32 %209, i8* %212, %struct.stat* %12, i32 %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %222

216:                                              ; preds = %207
  %217 = load i32, i32* %16, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %221, label %219

219:                                              ; preds = %216
  %220 = load i32, i32* @errno, align 4
  store i32 %220, i32* %16, align 4
  br label %221

221:                                              ; preds = %219, %216
  store i32 0, i32* @errno, align 4
  br label %197

222:                                              ; preds = %207
  %223 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = load i64, i64* %8, align 8
  %226 = icmp eq i64 %224, %225
  br i1 %226, label %227, label %233

227:                                              ; preds = %222
  %228 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 1
  %229 = load i64, i64* %228, align 8
  %230 = load i64, i64* %9, align 8
  %231 = icmp eq i64 %229, %230
  br i1 %231, label %232, label %233

232:                                              ; preds = %227
  br label %234

233:                                              ; preds = %227, %222
  br label %197

234:                                              ; preds = %232
  br label %235

235:                                              ; preds = %234, %195
  br label %236

236:                                              ; preds = %274, %235
  %237 = load i8*, i8** %11, align 8
  %238 = load i8*, i8** %4, align 8
  %239 = ptrtoint i8* %237 to i64
  %240 = ptrtoint i8* %238 to i64
  %241 = sub i64 %239, %240
  %242 = load %struct.dirent*, %struct.dirent** %6, align 8
  %243 = getelementptr inbounds %struct.dirent, %struct.dirent* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 8
  %245 = load i32, i32* %10, align 4
  %246 = icmp ne i32 %245, 0
  %247 = zext i1 %246 to i64
  %248 = select i1 %246, i32 1, i32 2
  %249 = add nsw i32 %244, %248
  %250 = sext i32 %249 to i64
  %251 = icmp slt i64 %241, %250
  br i1 %251, label %252, label %292

252:                                              ; preds = %236
  %253 = load i64, i64* %15, align 8
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %257, label %255

255:                                              ; preds = %252
  %256 = load i32, i32* @ERANGE, align 4
  store i32 %256, i32* @errno, align 4
  br label %329

257:                                              ; preds = %252
  %258 = load i8*, i8** %11, align 8
  %259 = load i8*, i8** %4, align 8
  %260 = ptrtoint i8* %258 to i64
  %261 = ptrtoint i8* %259 to i64
  %262 = sub i64 %260, %261
  store i64 %262, i64* %21, align 8
  %263 = load i8*, i8** %17, align 8
  %264 = load i8*, i8** %11, align 8
  %265 = ptrtoint i8* %263 to i64
  %266 = ptrtoint i8* %264 to i64
  %267 = sub i64 %265, %266
  store i64 %267, i64* %20, align 8
  %268 = load i8*, i8** %4, align 8
  %269 = load i64, i64* %15, align 8
  %270 = mul i64 %269, 2
  store i64 %270, i64* %15, align 8
  %271 = call i8* @reallocf(i8* %268, i64 %270)
  store i8* %271, i8** %4, align 8
  %272 = icmp eq i8* %271, null
  br i1 %272, label %273, label %274

273:                                              ; preds = %257
  br label %329

274:                                              ; preds = %257
  %275 = load i8*, i8** %4, align 8
  %276 = load i64, i64* %21, align 8
  %277 = getelementptr inbounds i8, i8* %275, i64 %276
  store i8* %277, i8** %11, align 8
  %278 = load i8*, i8** %4, align 8
  %279 = load i64, i64* %15, align 8
  %280 = getelementptr inbounds i8, i8* %278, i64 %279
  store i8* %280, i8** %17, align 8
  %281 = load i8*, i8** %11, align 8
  %282 = load i8*, i8** %17, align 8
  %283 = load i64, i64* %20, align 8
  %284 = sub i64 0, %283
  %285 = getelementptr inbounds i8, i8* %282, i64 %284
  %286 = load i64, i64* %20, align 8
  %287 = call i32 @bcopy(i8* %281, i8* %285, i64 %286)
  %288 = load i8*, i8** %17, align 8
  %289 = load i64, i64* %20, align 8
  %290 = sub i64 0, %289
  %291 = getelementptr inbounds i8, i8* %288, i64 %290
  store i8* %291, i8** %11, align 8
  br label %236

292:                                              ; preds = %236
  %293 = load i32, i32* %10, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %298, label %295

295:                                              ; preds = %292
  %296 = load i8*, i8** %11, align 8
  %297 = getelementptr inbounds i8, i8* %296, i32 -1
  store i8* %297, i8** %11, align 8
  store i8 47, i8* %297, align 1
  br label %298

298:                                              ; preds = %295, %292
  %299 = load %struct.dirent*, %struct.dirent** %6, align 8
  %300 = getelementptr inbounds %struct.dirent, %struct.dirent* %299, i32 0, i32 2
  %301 = load i32, i32* %300, align 8
  %302 = load i8*, i8** %11, align 8
  %303 = sext i32 %301 to i64
  %304 = sub i64 0, %303
  %305 = getelementptr inbounds i8, i8* %302, i64 %304
  store i8* %305, i8** %11, align 8
  %306 = load %struct.dirent*, %struct.dirent** %6, align 8
  %307 = getelementptr inbounds %struct.dirent, %struct.dirent* %306, i32 0, i32 1
  %308 = load i8*, i8** %307, align 8
  %309 = load i8*, i8** %11, align 8
  %310 = load %struct.dirent*, %struct.dirent** %6, align 8
  %311 = getelementptr inbounds %struct.dirent, %struct.dirent* %310, i32 0, i32 2
  %312 = load i32, i32* %311, align 8
  %313 = sext i32 %312 to i64
  %314 = call i32 @bcopy(i8* %308, i8* %309, i64 %313)
  br label %315

315:                                              ; preds = %298
  store i32 0, i32* %10, align 4
  br label %99

316:                                              ; preds = %201, %186
  %317 = load i32, i32* @errno, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %328, label %319

319:                                              ; preds = %316
  %320 = load i32, i32* %16, align 4
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %324

322:                                              ; preds = %319
  %323 = load i32, i32* %16, align 4
  br label %326

324:                                              ; preds = %319
  %325 = load i32, i32* @ENOENT, align 4
  br label %326

326:                                              ; preds = %324, %322
  %327 = phi i32 [ %323, %322 ], [ %325, %324 ]
  store i32 %327, i32* @errno, align 4
  br label %328

328:                                              ; preds = %326, %316
  br label %329

329:                                              ; preds = %328, %273, %255, %173, %157, %110, %93
  %330 = load i32, i32* @errno, align 4
  store i32 %330, i32* %16, align 4
  %331 = load i64, i64* %15, align 8
  %332 = icmp ne i64 %331, 0
  br i1 %332, label %333, label %336

333:                                              ; preds = %329
  %334 = load i8*, i8** %4, align 8
  %335 = call i32 @free(i8* %334)
  br label %336

336:                                              ; preds = %333, %329
  %337 = load i32*, i32** %7, align 8
  %338 = icmp ne i32* %337, null
  br i1 %338, label %339, label %342

339:                                              ; preds = %336
  %340 = load i32*, i32** %7, align 8
  %341 = call i32 @closedir(i32* %340)
  br label %342

342:                                              ; preds = %339, %336
  %343 = load i32, i32* %16, align 4
  store i32 %343, i32* @errno, align 4
  store i8* null, i8** %3, align 8
  br label %344

344:                                              ; preds = %342, %139, %85, %42, %32, %27
  %345 = load i8*, i8** %3, align 8
  ret i8* %345
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @__getcwd(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i64 @_fstat(i32, %struct.stat*) #1

declare dso_local i32 @_dirfd(i32*) #1

declare dso_local i64 @lstat(i8*, %struct.stat*) #1

declare dso_local i32 @bcopy(i8*, i8*, i64) #1

declare dso_local i32 @closedir(i32*) #1

declare dso_local i32 @_openat(i32, i8*, i32) #1

declare dso_local i32* @fdopendir(i32) #1

declare dso_local i32 @_close(i32) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i64 @ISDOT(%struct.dirent*) #1

declare dso_local i64 @fstatat(i32, i8*, %struct.stat*, i32) #1

declare dso_local i8* @reallocf(i8*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
