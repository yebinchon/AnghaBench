; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdlib/extr_realpath.c_realpath1.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdlib/extr_realpath.c_realpath1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@MAXSYMLINKS = common dso_local global i32 0, align 4
@ELOOP = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ENOTDIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*)* @realpath1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @realpath1(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.stat, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %19 = load i32, i32* @PATH_MAX, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %14, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %15, align 8
  %23 = load i32, i32* @PATH_MAX, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %16, align 8
  %26 = load i32, i32* @PATH_MAX, align 4
  %27 = zext i32 %26 to i64
  %28 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %17, align 8
  store i32 0, i32* %12, align 4
  %29 = load i8*, i8** %4, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 47
  br i1 %33, label %34, label %51

34:                                               ; preds = %2
  %35 = load i8*, i8** %5, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  store i8 47, i8* %36, align 1
  %37 = load i8*, i8** %5, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  store i8 0, i8* %38, align 1
  %39 = load i8*, i8** %4, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %34
  %45 = load i8*, i8** %5, align 8
  store i8* %45, i8** %3, align 8
  store i32 1, i32* %18, align 4
  br label %301

46:                                               ; preds = %34
  store i64 1, i64* %10, align 8
  %47 = load i8*, i8** %4, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  %49 = trunc i64 %20 to i32
  %50 = call i64 @strlcpy(i8* %22, i8* %48, i32 %49)
  store i64 %50, i64* %9, align 8
  br label %67

51:                                               ; preds = %2
  %52 = load i8*, i8** %5, align 8
  %53 = load i32, i32* @PATH_MAX, align 4
  %54 = call i32* @getcwd(i8* %52, i32 %53)
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load i8*, i8** %5, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 0
  store i8 46, i8* %58, align 1
  %59 = load i8*, i8** %5, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 1
  store i8 0, i8* %60, align 1
  store i8* null, i8** %3, align 8
  store i32 1, i32* %18, align 4
  br label %301

61:                                               ; preds = %51
  %62 = load i8*, i8** %5, align 8
  %63 = call i64 @strlen(i8* %62)
  store i64 %63, i64* %10, align 8
  %64 = load i8*, i8** %4, align 8
  %65 = trunc i64 %20 to i32
  %66 = call i64 @strlcpy(i8* %22, i8* %64, i32 %65)
  store i64 %66, i64* %9, align 8
  br label %67

67:                                               ; preds = %61, %46
  %68 = load i64, i64* %9, align 8
  %69 = icmp uge i64 %68, %20
  br i1 %69, label %75, label %70

70:                                               ; preds = %67
  %71 = load i64, i64* %10, align 8
  %72 = load i32, i32* @PATH_MAX, align 4
  %73 = sext i32 %72 to i64
  %74 = icmp uge i64 %71, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %70, %67
  %76 = load i32, i32* @ENAMETOOLONG, align 4
  store i32 %76, i32* @errno, align 4
  store i8* null, i8** %3, align 8
  store i32 1, i32* %18, align 4
  br label %301

77:                                               ; preds = %70
  br label %78

78:                                               ; preds = %282, %166, %145, %141, %77
  %79 = load i64, i64* %9, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %283

81:                                               ; preds = %78
  %82 = call i8* @strchr(i8* %22, i8 signext 47)
  store i8* %82, i8** %7, align 8
  %83 = load i8*, i8** %7, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %90

85:                                               ; preds = %81
  %86 = load i8*, i8** %7, align 8
  %87 = ptrtoint i8* %86 to i64
  %88 = ptrtoint i8* %22 to i64
  %89 = sub i64 %87, %88
  br label %92

90:                                               ; preds = %81
  %91 = load i64, i64* %9, align 8
  br label %92

92:                                               ; preds = %90, %85
  %93 = phi i64 [ %89, %85 ], [ %91, %90 ]
  store i64 %93, i64* %11, align 8
  %94 = load i64, i64* %11, align 8
  %95 = call i32 @memcpy(i8* %25, i8* %22, i64 %94)
  %96 = load i64, i64* %11, align 8
  %97 = getelementptr inbounds i8, i8* %25, i64 %96
  store i8 0, i8* %97, align 1
  %98 = load i8*, i8** %7, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %110

100:                                              ; preds = %92
  %101 = load i64, i64* %11, align 8
  %102 = add i64 %101, 1
  %103 = load i64, i64* %9, align 8
  %104 = sub i64 %103, %102
  store i64 %104, i64* %9, align 8
  %105 = load i8*, i8** %7, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 1
  %107 = load i64, i64* %9, align 8
  %108 = add i64 %107, 1
  %109 = call i32 @memmove(i8* %22, i8* %106, i64 %108)
  br label %112

110:                                              ; preds = %92
  %111 = getelementptr inbounds i8, i8* %22, i64 0
  store i8 0, i8* %111, align 16
  store i64 0, i64* %9, align 8
  br label %112

112:                                              ; preds = %110, %100
  %113 = load i8*, i8** %5, align 8
  %114 = load i64, i64* %10, align 8
  %115 = sub i64 %114, 1
  %116 = getelementptr inbounds i8, i8* %113, i64 %115
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp ne i32 %118, 47
  br i1 %119, label %120, label %136

120:                                              ; preds = %112
  %121 = load i64, i64* %10, align 8
  %122 = add i64 %121, 1
  %123 = load i32, i32* @PATH_MAX, align 4
  %124 = sext i32 %123 to i64
  %125 = icmp uge i64 %122, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %120
  %127 = load i32, i32* @ENAMETOOLONG, align 4
  store i32 %127, i32* @errno, align 4
  store i8* null, i8** %3, align 8
  store i32 1, i32* %18, align 4
  br label %301

128:                                              ; preds = %120
  %129 = load i8*, i8** %5, align 8
  %130 = load i64, i64* %10, align 8
  %131 = add i64 %130, 1
  store i64 %131, i64* %10, align 8
  %132 = getelementptr inbounds i8, i8* %129, i64 %130
  store i8 47, i8* %132, align 1
  %133 = load i8*, i8** %5, align 8
  %134 = load i64, i64* %10, align 8
  %135 = getelementptr inbounds i8, i8* %133, i64 %134
  store i8 0, i8* %135, align 1
  br label %136

136:                                              ; preds = %128, %112
  %137 = getelementptr inbounds i8, i8* %25, i64 0
  %138 = load i8, i8* %137, align 16
  %139 = sext i8 %138 to i32
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %136
  br label %78

142:                                              ; preds = %136
  %143 = call i64 @strcmp(i8* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %142
  br label %78

146:                                              ; preds = %142
  %147 = call i64 @strcmp(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %149, label %167

149:                                              ; preds = %146
  %150 = load i64, i64* %10, align 8
  %151 = icmp ugt i64 %150, 1
  br i1 %151, label %152, label %166

152:                                              ; preds = %149
  %153 = load i8*, i8** %5, align 8
  %154 = load i64, i64* %10, align 8
  %155 = sub i64 %154, 1
  %156 = getelementptr inbounds i8, i8* %153, i64 %155
  store i8 0, i8* %156, align 1
  %157 = load i8*, i8** %5, align 8
  %158 = call i8* @strrchr(i8* %157, i8 signext 47)
  %159 = getelementptr inbounds i8, i8* %158, i64 1
  store i8* %159, i8** %8, align 8
  %160 = load i8*, i8** %8, align 8
  store i8 0, i8* %160, align 1
  %161 = load i8*, i8** %8, align 8
  %162 = load i8*, i8** %5, align 8
  %163 = ptrtoint i8* %161 to i64
  %164 = ptrtoint i8* %162 to i64
  %165 = sub i64 %163, %164
  store i64 %165, i64* %10, align 8
  br label %166

166:                                              ; preds = %152, %149
  br label %78

167:                                              ; preds = %146
  br label %168

168:                                              ; preds = %167
  br label %169

169:                                              ; preds = %168
  %170 = load i8*, i8** %5, align 8
  %171 = load i32, i32* @PATH_MAX, align 4
  %172 = call i64 @strlcat(i8* %170, i8* %25, i32 %171)
  store i64 %172, i64* %10, align 8
  %173 = load i64, i64* %10, align 8
  %174 = load i32, i32* @PATH_MAX, align 4
  %175 = sext i32 %174 to i64
  %176 = icmp uge i64 %173, %175
  br i1 %176, label %177, label %179

177:                                              ; preds = %169
  %178 = load i32, i32* @ENAMETOOLONG, align 4
  store i32 %178, i32* @errno, align 4
  store i8* null, i8** %3, align 8
  store i32 1, i32* %18, align 4
  br label %301

179:                                              ; preds = %169
  %180 = load i8*, i8** %5, align 8
  %181 = call i64 @lstat(i8* %180, %struct.stat* %6)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %179
  store i8* null, i8** %3, align 8
  store i32 1, i32* %18, align 4
  br label %301

184:                                              ; preds = %179
  %185 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = call i64 @S_ISLNK(i32 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %271

189:                                              ; preds = %184
  %190 = load i32, i32* %12, align 4
  %191 = add i32 %190, 1
  store i32 %191, i32* %12, align 4
  %192 = load i32, i32* @MAXSYMLINKS, align 4
  %193 = icmp ugt i32 %190, %192
  br i1 %193, label %194, label %196

194:                                              ; preds = %189
  %195 = load i32, i32* @ELOOP, align 4
  store i32 %195, i32* @errno, align 4
  store i8* null, i8** %3, align 8
  store i32 1, i32* %18, align 4
  br label %301

196:                                              ; preds = %189
  %197 = load i8*, i8** %5, align 8
  %198 = trunc i64 %27 to i32
  %199 = call i64 @readlink(i8* %197, i8* %28, i32 %198)
  store i64 %199, i64* %13, align 8
  %200 = load i64, i64* %13, align 8
  %201 = icmp ule i64 %200, 0
  br i1 %201, label %205, label %202

202:                                              ; preds = %196
  %203 = load i64, i64* %13, align 8
  %204 = icmp uge i64 %203, %27
  br i1 %204, label %205, label %218

205:                                              ; preds = %202, %196
  %206 = load i64, i64* %13, align 8
  %207 = icmp ult i64 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %205
  br label %217

209:                                              ; preds = %205
  %210 = load i64, i64* %13, align 8
  %211 = icmp eq i64 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %209
  %213 = load i32, i32* @ENOENT, align 4
  store i32 %213, i32* @errno, align 4
  br label %216

214:                                              ; preds = %209
  %215 = load i32, i32* @ENAMETOOLONG, align 4
  store i32 %215, i32* @errno, align 4
  br label %216

216:                                              ; preds = %214, %212
  br label %217

217:                                              ; preds = %216, %208
  store i8* null, i8** %3, align 8
  store i32 1, i32* %18, align 4
  br label %301

218:                                              ; preds = %202
  %219 = load i64, i64* %13, align 8
  %220 = getelementptr inbounds i8, i8* %28, i64 %219
  store i8 0, i8* %220, align 1
  %221 = getelementptr inbounds i8, i8* %28, i64 0
  %222 = load i8, i8* %221, align 16
  %223 = sext i8 %222 to i32
  %224 = icmp eq i32 %223, 47
  br i1 %224, label %225, label %228

225:                                              ; preds = %218
  %226 = load i8*, i8** %5, align 8
  %227 = getelementptr inbounds i8, i8* %226, i64 1
  store i8 0, i8* %227, align 1
  store i64 1, i64* %10, align 8
  br label %238

228:                                              ; preds = %218
  %229 = load i8*, i8** %5, align 8
  %230 = call i8* @strrchr(i8* %229, i8 signext 47)
  %231 = getelementptr inbounds i8, i8* %230, i64 1
  store i8* %231, i8** %8, align 8
  %232 = load i8*, i8** %8, align 8
  store i8 0, i8* %232, align 1
  %233 = load i8*, i8** %8, align 8
  %234 = load i8*, i8** %5, align 8
  %235 = ptrtoint i8* %233 to i64
  %236 = ptrtoint i8* %234 to i64
  %237 = sub i64 %235, %236
  store i64 %237, i64* %10, align 8
  br label %238

238:                                              ; preds = %228, %225
  %239 = load i8*, i8** %7, align 8
  %240 = icmp ne i8* %239, null
  br i1 %240, label %241, label %268

241:                                              ; preds = %238
  %242 = load i64, i64* %13, align 8
  %243 = sub i64 %242, 1
  %244 = getelementptr inbounds i8, i8* %28, i64 %243
  %245 = load i8, i8* %244, align 1
  %246 = sext i8 %245 to i32
  %247 = icmp ne i32 %246, 47
  br i1 %247, label %248, label %260

248:                                              ; preds = %241
  %249 = load i64, i64* %13, align 8
  %250 = add i64 %249, 1
  %251 = icmp uge i64 %250, %27
  br i1 %251, label %252, label %254

252:                                              ; preds = %248
  %253 = load i32, i32* @ENAMETOOLONG, align 4
  store i32 %253, i32* @errno, align 4
  store i8* null, i8** %3, align 8
  store i32 1, i32* %18, align 4
  br label %301

254:                                              ; preds = %248
  %255 = load i64, i64* %13, align 8
  %256 = getelementptr inbounds i8, i8* %28, i64 %255
  store i8 47, i8* %256, align 1
  %257 = load i64, i64* %13, align 8
  %258 = add i64 %257, 1
  %259 = getelementptr inbounds i8, i8* %28, i64 %258
  store i8 0, i8* %259, align 1
  br label %260

260:                                              ; preds = %254, %241
  %261 = trunc i64 %27 to i32
  %262 = call i64 @strlcat(i8* %28, i8* %22, i32 %261)
  store i64 %262, i64* %9, align 8
  %263 = load i64, i64* %9, align 8
  %264 = icmp uge i64 %263, %27
  br i1 %264, label %265, label %267

265:                                              ; preds = %260
  %266 = load i32, i32* @ENAMETOOLONG, align 4
  store i32 %266, i32* @errno, align 4
  store i8* null, i8** %3, align 8
  store i32 1, i32* %18, align 4
  br label %301

267:                                              ; preds = %260
  br label %268

268:                                              ; preds = %267, %238
  %269 = trunc i64 %20 to i32
  %270 = call i64 @strlcpy(i8* %22, i8* %28, i32 %269)
  store i64 %270, i64* %9, align 8
  br label %282

271:                                              ; preds = %184
  %272 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %273 = load i32, i32* %272, align 4
  %274 = call i32 @S_ISDIR(i32 %273)
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %281, label %276

276:                                              ; preds = %271
  %277 = load i8*, i8** %7, align 8
  %278 = icmp ne i8* %277, null
  br i1 %278, label %279, label %281

279:                                              ; preds = %276
  %280 = load i32, i32* @ENOTDIR, align 4
  store i32 %280, i32* @errno, align 4
  store i8* null, i8** %3, align 8
  store i32 1, i32* %18, align 4
  br label %301

281:                                              ; preds = %276, %271
  br label %282

282:                                              ; preds = %281, %268
  br label %78

283:                                              ; preds = %78
  %284 = load i64, i64* %10, align 8
  %285 = icmp ugt i64 %284, 1
  br i1 %285, label %286, label %299

286:                                              ; preds = %283
  %287 = load i8*, i8** %5, align 8
  %288 = load i64, i64* %10, align 8
  %289 = sub i64 %288, 1
  %290 = getelementptr inbounds i8, i8* %287, i64 %289
  %291 = load i8, i8* %290, align 1
  %292 = sext i8 %291 to i32
  %293 = icmp eq i32 %292, 47
  br i1 %293, label %294, label %299

294:                                              ; preds = %286
  %295 = load i8*, i8** %5, align 8
  %296 = load i64, i64* %10, align 8
  %297 = sub i64 %296, 1
  %298 = getelementptr inbounds i8, i8* %295, i64 %297
  store i8 0, i8* %298, align 1
  br label %299

299:                                              ; preds = %294, %286, %283
  %300 = load i8*, i8** %5, align 8
  store i8* %300, i8** %3, align 8
  store i32 1, i32* %18, align 4
  br label %301

301:                                              ; preds = %299, %279, %265, %252, %217, %194, %183, %177, %126, %75, %56, %44
  %302 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %302)
  %303 = load i8*, i8** %3, align 8
  ret i8* %303
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32* @getcwd(i8*, i32) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

declare dso_local i32 @memmove(i8*, i8*, i64) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i64 @strlcat(i8*, i8*, i32) #2

declare dso_local i64 @lstat(i8*, %struct.stat*) #2

declare dso_local i64 @S_ISLNK(i32) #2

declare dso_local i64 @readlink(i8*, i8*, i32) #2

declare dso_local i32 @S_ISDIR(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
