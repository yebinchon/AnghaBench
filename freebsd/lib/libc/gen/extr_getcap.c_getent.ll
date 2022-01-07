; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_getcap.c_getent.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_getcap.c_getent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 (%struct.TYPE_6__*)* }

@_POSIX_PATH_MAX = common dso_local global i32 0, align 4
@MAX_RECURSION = common dso_local global i32 0, align 4
@toprec = common dso_local global i8* null, align 8
@topreclen = common dso_local global i64 0, align 8
@BFRAG = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s.db\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@DB_HASH = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@BUFSIZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"tc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32*, i8**, i32, i8*, i32, i8*)* @getent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getent(i8** %0, i32* %1, i8** %2, i32 %3, i8* %4, i32 %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_6__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8**, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i8*, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  %30 = alloca i8*, align 8
  %31 = alloca i64, align 8
  %32 = alloca i8*, align 8
  %33 = alloca i8*, align 8
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i64, align 8
  %38 = alloca i8*, align 8
  %39 = alloca i8*, align 8
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i8*, align 8
  %46 = alloca i8*, align 8
  %47 = alloca i8*, align 8
  %48 = alloca i8*, align 8
  %49 = alloca i8*, align 8
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  %52 = alloca i32, align 4
  %53 = alloca i64, align 8
  store i8** %0, i8*** %9, align 8
  store i32* %1, i32** %10, align 8
  store i8** %2, i8*** %11, align 8
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  %54 = load i32, i32* @_POSIX_PATH_MAX, align 4
  %55 = zext i32 %54 to i64
  %56 = call i8* @llvm.stacksave()
  store i8* %56, i8** %27, align 8
  %57 = alloca i8, i64 %55, align 16
  store i64 %55, i64* %28, align 8
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* @MAX_RECURSION, align 4
  %60 = icmp sgt i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %7
  store i32 -3, i32* %8, align 4
  store i32 1, i32* %29, align 4
  br label %574

62:                                               ; preds = %7
  %63 = load i32, i32* %14, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %93

65:                                               ; preds = %62
  %66 = load i8*, i8** @toprec, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %93

68:                                               ; preds = %65
  %69 = load i8*, i8** @toprec, align 8
  %70 = load i8*, i8** %13, align 8
  %71 = call i64 @cgetmatch(i8* %69, i8* %70)
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %93

73:                                               ; preds = %68
  %74 = load i64, i64* @topreclen, align 8
  %75 = load i64, i64* @BFRAG, align 8
  %76 = add i64 %74, %75
  %77 = call i8* @malloc(i64 %76)
  store i8* %77, i8** %24, align 8
  %78 = icmp eq i8* %77, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = load i32, i32* @ENOMEM, align 4
  store i32 %80, i32* @errno, align 4
  store i32 -2, i32* %8, align 4
  store i32 1, i32* %29, align 4
  br label %574

81:                                               ; preds = %73
  %82 = load i8*, i8** %24, align 8
  %83 = load i8*, i8** @toprec, align 8
  %84 = call i32 @strcpy(i8* %82, i8* %83)
  store i32 0, i32* %20, align 4
  %85 = load i8**, i8*** %11, align 8
  store i8** %85, i8*** %19, align 8
  %86 = load i8*, i8** %24, align 8
  %87 = load i64, i64* @topreclen, align 8
  %88 = getelementptr inbounds i8, i8* %86, i64 %87
  %89 = getelementptr inbounds i8, i8* %88, i64 1
  store i8* %89, i8** %18, align 8
  %90 = load i8*, i8** %18, align 8
  %91 = load i64, i64* @BFRAG, align 8
  %92 = getelementptr inbounds i8, i8* %90, i64 %91
  store i8* %92, i8** %17, align 8
  br label %326

93:                                               ; preds = %68, %65, %62
  %94 = load i64, i64* @BFRAG, align 8
  %95 = call i8* @malloc(i64 %94)
  store i8* %95, i8** %24, align 8
  %96 = icmp eq i8* %95, null
  br i1 %96, label %97, label %99

97:                                               ; preds = %93
  %98 = load i32, i32* @ENOMEM, align 4
  store i32 %98, i32* @errno, align 4
  store i32 -2, i32* %8, align 4
  store i32 1, i32* %29, align 4
  br label %574

99:                                               ; preds = %93
  %100 = load i8*, i8** %24, align 8
  %101 = load i64, i64* @BFRAG, align 8
  %102 = getelementptr inbounds i8, i8* %100, i64 %101
  store i8* %102, i8** %17, align 8
  store i32 0, i32* %22, align 4
  %103 = load i8**, i8*** %11, align 8
  store i8** %103, i8*** %19, align 8
  br label %104

104:                                              ; preds = %316, %99
  %105 = load i8**, i8*** %19, align 8
  %106 = load i8*, i8** %105, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %319

108:                                              ; preds = %104
  store i32 0, i32* %21, align 4
  %109 = load i32, i32* %12, align 4
  %110 = icmp sge i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %108
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* @SEEK_SET, align 4
  %114 = call i32 @lseek(i32 %112, i32 0, i32 %113)
  store i32 0, i32* %20, align 4
  br label %175

115:                                              ; preds = %108
  %116 = trunc i64 %55 to i32
  %117 = load i8**, i8*** %19, align 8
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 @snprintf(i8* %57, i32 %116, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %118)
  %120 = load i32, i32* @O_RDONLY, align 4
  %121 = load i32, i32* @DB_HASH, align 4
  %122 = call %struct.TYPE_6__* @dbopen(i8* %57, i32 %120, i32 0, i32 %121, i32 0)
  store %struct.TYPE_6__* %122, %struct.TYPE_6__** %16, align 8
  %123 = icmp ne %struct.TYPE_6__* %122, null
  br i1 %123, label %124, label %163

124:                                              ; preds = %115
  %125 = load i8*, i8** %24, align 8
  %126 = call i32 @free(i8* %125)
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %128 = load i8*, i8** %13, align 8
  %129 = call i32 @cdbget(%struct.TYPE_6__* %127, i8** %24, i8* %128)
  store i32 %129, i32* %23, align 4
  %130 = load i32, i32* %23, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %124
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = load i64 (%struct.TYPE_6__*)*, i64 (%struct.TYPE_6__*)** %134, align 8
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %137 = call i64 %135(%struct.TYPE_6__* %136)
  %138 = load i32, i32* %23, align 4
  store i32 %138, i32* %8, align 4
  store i32 1, i32* %29, align 4
  br label %574

139:                                              ; preds = %124
  %140 = load i8*, i8** %24, align 8
  %141 = call i8* @strdup(i8* %140)
  store i8* %141, i8** %25, align 8
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  %144 = load i64 (%struct.TYPE_6__*)*, i64 (%struct.TYPE_6__*)** %143, align 8
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %146 = call i64 %144(%struct.TYPE_6__* %145)
  %147 = icmp slt i64 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %139
  %149 = load i8*, i8** %25, align 8
  %150 = call i32 @free(i8* %149)
  store i32 -2, i32* %8, align 4
  store i32 1, i32* %29, align 4
  br label %574

151:                                              ; preds = %139
  %152 = load i8*, i8** %25, align 8
  %153 = icmp eq i8* %152, null
  br i1 %153, label %154, label %156

154:                                              ; preds = %151
  %155 = load i32, i32* @ENOMEM, align 4
  store i32 %155, i32* @errno, align 4
  store i32 -2, i32* %8, align 4
  store i32 1, i32* %29, align 4
  br label %574

156:                                              ; preds = %151
  %157 = load i8*, i8** %25, align 8
  %158 = call i32 @strlen(i8* %157)
  %159 = load i32*, i32** %10, align 8
  store i32 %158, i32* %159, align 4
  %160 = load i8*, i8** %25, align 8
  %161 = load i8**, i8*** %9, align 8
  store i8* %160, i8** %161, align 8
  %162 = load i32, i32* %23, align 4
  store i32 %162, i32* %8, align 4
  store i32 1, i32* %29, align 4
  br label %574

163:                                              ; preds = %115
  %164 = load i8**, i8*** %19, align 8
  %165 = load i8*, i8** %164, align 8
  %166 = load i32, i32* @O_RDONLY, align 4
  %167 = load i32, i32* @O_CLOEXEC, align 4
  %168 = or i32 %166, %167
  %169 = call i32 @_open(i8* %165, i32 %168, i32 0)
  store i32 %169, i32* %12, align 4
  %170 = load i32, i32* %12, align 4
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %163
  br label %316

173:                                              ; preds = %163
  store i32 1, i32* %20, align 4
  br label %174

174:                                              ; preds = %173
  br label %175

175:                                              ; preds = %174, %111
  %176 = load i32, i32* @BUFSIZ, align 4
  %177 = zext i32 %176 to i64
  %178 = call i8* @llvm.stacksave()
  store i8* %178, i8** %30, align 8
  %179 = alloca i8, i64 %177, align 16
  store i64 %177, i64* %31, align 8
  store i8* %179, i8** %32, align 8
  store i8* %179, i8** %33, align 8
  br label %180

180:                                              ; preds = %306, %290, %175
  %181 = load i8*, i8** %24, align 8
  store i8* %181, i8** %18, align 8
  br label %182

182:                                              ; preds = %273, %226, %180
  %183 = load i8*, i8** %33, align 8
  %184 = load i8*, i8** %32, align 8
  %185 = icmp uge i8* %183, %184
  br i1 %185, label %186, label %209

186:                                              ; preds = %182
  %187 = load i32, i32* %12, align 4
  %188 = trunc i64 %177 to i32
  %189 = call i32 @_read(i32 %187, i8* %179, i32 %188)
  store i32 %189, i32* %35, align 4
  %190 = load i32, i32* %35, align 4
  %191 = icmp sle i32 %190, 0
  br i1 %191, label %192, label %205

192:                                              ; preds = %186
  %193 = load i32, i32* %20, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %192
  %196 = load i32, i32* %12, align 4
  %197 = call i32 @_close(i32 %196)
  br label %198

198:                                              ; preds = %195, %192
  %199 = load i32, i32* %35, align 4
  %200 = icmp slt i32 %199, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %198
  %202 = load i8*, i8** %24, align 8
  %203 = call i32 @free(i8* %202)
  store i32 -2, i32* %8, align 4
  store i32 1, i32* %29, align 4
  br label %308

204:                                              ; preds = %198
  store i32 -1, i32* %12, align 4
  store i32 1, i32* %21, align 4
  br label %274

205:                                              ; preds = %186
  %206 = load i32, i32* %35, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i8, i8* %179, i64 %207
  store i8* %208, i8** %32, align 8
  store i8* %179, i8** %33, align 8
  br label %209

209:                                              ; preds = %205, %182
  %210 = load i8*, i8** %33, align 8
  %211 = getelementptr inbounds i8, i8* %210, i32 1
  store i8* %211, i8** %33, align 8
  %212 = load i8, i8* %210, align 1
  %213 = sext i8 %212 to i32
  store i32 %213, i32* %34, align 4
  %214 = load i32, i32* %34, align 4
  %215 = icmp eq i32 %214, 10
  br i1 %215, label %216, label %230

216:                                              ; preds = %209
  %217 = load i8*, i8** %18, align 8
  %218 = load i8*, i8** %24, align 8
  %219 = icmp ugt i8* %217, %218
  br i1 %219, label %220, label %229

220:                                              ; preds = %216
  %221 = load i8*, i8** %18, align 8
  %222 = getelementptr inbounds i8, i8* %221, i64 -1
  %223 = load i8, i8* %222, align 1
  %224 = sext i8 %223 to i32
  %225 = icmp eq i32 %224, 92
  br i1 %225, label %226, label %229

226:                                              ; preds = %220
  %227 = load i8*, i8** %18, align 8
  %228 = getelementptr inbounds i8, i8* %227, i32 -1
  store i8* %228, i8** %18, align 8
  br label %182

229:                                              ; preds = %220, %216
  br label %274

230:                                              ; preds = %209
  %231 = load i32, i32* %34, align 4
  %232 = trunc i32 %231 to i8
  %233 = load i8*, i8** %18, align 8
  %234 = getelementptr inbounds i8, i8* %233, i32 1
  store i8* %234, i8** %18, align 8
  store i8 %232, i8* %233, align 1
  %235 = load i8*, i8** %18, align 8
  %236 = load i8*, i8** %17, align 8
  %237 = icmp uge i8* %235, %236
  br i1 %237, label %238, label %273

238:                                              ; preds = %230
  %239 = load i8*, i8** %18, align 8
  %240 = load i8*, i8** %24, align 8
  %241 = ptrtoint i8* %239 to i64
  %242 = ptrtoint i8* %240 to i64
  %243 = sub i64 %241, %242
  %244 = trunc i64 %243 to i32
  store i32 %244, i32* %36, align 4
  %245 = load i8*, i8** %17, align 8
  %246 = load i8*, i8** %24, align 8
  %247 = ptrtoint i8* %245 to i64
  %248 = ptrtoint i8* %246 to i64
  %249 = sub i64 %247, %248
  %250 = load i64, i64* @BFRAG, align 8
  %251 = add i64 %249, %250
  store i64 %251, i64* %37, align 8
  %252 = load i8*, i8** %24, align 8
  %253 = load i64, i64* %37, align 8
  %254 = call i8* @reallocf(i8* %252, i64 %253)
  store i8* %254, i8** %24, align 8
  %255 = load i8*, i8** %24, align 8
  %256 = icmp eq i8* %255, null
  br i1 %256, label %257, label %265

257:                                              ; preds = %238
  %258 = load i32, i32* @ENOMEM, align 4
  store i32 %258, i32* @errno, align 4
  %259 = load i32, i32* %20, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %264

261:                                              ; preds = %257
  %262 = load i32, i32* %12, align 4
  %263 = call i32 @_close(i32 %262)
  br label %264

264:                                              ; preds = %261, %257
  store i32 -2, i32* %8, align 4
  store i32 1, i32* %29, align 4
  br label %308

265:                                              ; preds = %238
  %266 = load i8*, i8** %24, align 8
  %267 = load i64, i64* %37, align 8
  %268 = getelementptr inbounds i8, i8* %266, i64 %267
  store i8* %268, i8** %17, align 8
  %269 = load i8*, i8** %24, align 8
  %270 = load i32, i32* %36, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i8, i8* %269, i64 %271
  store i8* %272, i8** %18, align 8
  br label %273

273:                                              ; preds = %265, %230
  br label %182

274:                                              ; preds = %229, %204
  %275 = load i8*, i8** %18, align 8
  %276 = getelementptr inbounds i8, i8* %275, i32 1
  store i8* %276, i8** %18, align 8
  store i8 0, i8* %275, align 1
  %277 = load i32, i32* %21, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %280

279:                                              ; preds = %274
  br label %307

280:                                              ; preds = %274
  %281 = load i8*, i8** %24, align 8
  %282 = load i8, i8* %281, align 1
  %283 = sext i8 %282 to i32
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %290, label %285

285:                                              ; preds = %280
  %286 = load i8*, i8** %24, align 8
  %287 = load i8, i8* %286, align 1
  %288 = sext i8 %287 to i32
  %289 = icmp eq i32 %288, 35
  br i1 %289, label %290, label %291

290:                                              ; preds = %285, %280
  br label %180

291:                                              ; preds = %285
  %292 = load i8*, i8** %24, align 8
  %293 = load i8*, i8** %13, align 8
  %294 = call i64 @cgetmatch(i8* %292, i8* %293)
  %295 = icmp eq i64 %294, 0
  br i1 %295, label %296, label %306

296:                                              ; preds = %291
  %297 = load i8*, i8** %15, align 8
  %298 = icmp eq i8* %297, null
  br i1 %298, label %304, label %299

299:                                              ; preds = %296
  %300 = load i8*, i8** %15, align 8
  %301 = load i8*, i8** %24, align 8
  %302 = call i32 @nfcmp(i8* %300, i8* %301)
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %305, label %304

304:                                              ; preds = %299, %296
  store i32 1, i32* %22, align 4
  br label %307

305:                                              ; preds = %299
  br label %306

306:                                              ; preds = %305, %291
  br label %180

307:                                              ; preds = %304, %279
  store i32 0, i32* %29, align 4
  br label %308

308:                                              ; preds = %307, %264, %201
  %309 = load i8*, i8** %30, align 8
  call void @llvm.stackrestore(i8* %309)
  %310 = load i32, i32* %29, align 4
  switch i32 %310, label %574 [
    i32 0, label %311
  ]

311:                                              ; preds = %308
  %312 = load i32, i32* %22, align 4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %315

314:                                              ; preds = %311
  br label %319

315:                                              ; preds = %311
  br label %316

316:                                              ; preds = %315, %172
  %317 = load i8**, i8*** %19, align 8
  %318 = getelementptr inbounds i8*, i8** %317, i32 1
  store i8** %318, i8*** %19, align 8
  br label %104

319:                                              ; preds = %314, %104
  %320 = load i32, i32* %22, align 4
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %325, label %322

322:                                              ; preds = %319
  %323 = load i8*, i8** %24, align 8
  %324 = call i32 @free(i8* %323)
  store i32 -1, i32* %8, align 4
  store i32 1, i32* %29, align 4
  br label %574

325:                                              ; preds = %319
  br label %326

326:                                              ; preds = %325, %81
  %327 = load i8*, i8** %24, align 8
  store i8* %327, i8** %46, align 8
  store i32 0, i32* %26, align 4
  br label %328

328:                                              ; preds = %511, %392, %326
  %329 = load i8*, i8** %46, align 8
  %330 = call i8* @cgetcap(i8* %329, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8 signext 61)
  store i8* %330, i8** %47, align 8
  %331 = icmp eq i8* %330, null
  br i1 %331, label %332, label %333

332:                                              ; preds = %328
  br label %537

333:                                              ; preds = %328
  %334 = load i8*, i8** %47, align 8
  store i8* %334, i8** %39, align 8
  br label %335

335:                                              ; preds = %351, %333
  %336 = load i8*, i8** %39, align 8
  %337 = load i8, i8* %336, align 1
  %338 = sext i8 %337 to i32
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %340, label %341

340:                                              ; preds = %335
  br label %352

341:                                              ; preds = %335
  %342 = load i8*, i8** %39, align 8
  %343 = getelementptr inbounds i8, i8* %342, i32 1
  store i8* %343, i8** %39, align 8
  %344 = load i8, i8* %342, align 1
  %345 = sext i8 %344 to i32
  %346 = icmp eq i32 %345, 58
  br i1 %346, label %347, label %350

347:                                              ; preds = %341
  %348 = load i8*, i8** %39, align 8
  %349 = getelementptr inbounds i8, i8* %348, i64 -1
  store i8 0, i8* %349, align 1
  br label %352

350:                                              ; preds = %341
  br label %351

351:                                              ; preds = %350
  br label %335

352:                                              ; preds = %347, %340
  %353 = load i8*, i8** %47, align 8
  %354 = getelementptr inbounds i8, i8* %353, i64 -3
  store i8* %354, i8** %48, align 8
  %355 = load i8*, i8** %39, align 8
  %356 = load i8*, i8** %48, align 8
  %357 = ptrtoint i8* %355 to i64
  %358 = ptrtoint i8* %356 to i64
  %359 = sub i64 %357, %358
  %360 = trunc i64 %359 to i32
  store i32 %360, i32* %44, align 4
  %361 = load i8*, i8** %39, align 8
  store i8* %361, i8** %49, align 8
  %362 = load i8**, i8*** %19, align 8
  %363 = load i32, i32* %12, align 4
  %364 = load i8*, i8** %47, align 8
  %365 = load i32, i32* %14, align 4
  %366 = add nsw i32 %365, 1
  %367 = call i32 @getent(i8** %45, i32* %41, i8** %362, i32 %363, i8* %364, i32 %366, i8* null)
  store i32 %367, i32* %43, align 4
  %368 = load i8*, i8** %45, align 8
  store i8* %368, i8** %38, align 8
  %369 = load i32, i32* %41, align 4
  store i32 %369, i32* %40, align 4
  %370 = load i32, i32* %43, align 4
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %372, label %398

372:                                              ; preds = %352
  %373 = load i32, i32* %43, align 4
  %374 = icmp slt i32 %373, -1
  br i1 %374, label %375, label %385

375:                                              ; preds = %372
  %376 = load i32, i32* %20, align 4
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %381

378:                                              ; preds = %375
  %379 = load i32, i32* %12, align 4
  %380 = call i32 @_close(i32 %379)
  br label %381

381:                                              ; preds = %378, %375
  %382 = load i8*, i8** %24, align 8
  %383 = call i32 @free(i8* %382)
  %384 = load i32, i32* %43, align 4
  store i32 %384, i32* %8, align 4
  store i32 1, i32* %29, align 4
  br label %574

385:                                              ; preds = %372
  %386 = load i32, i32* %43, align 4
  %387 = icmp eq i32 %386, 1
  br i1 %387, label %388, label %389

388:                                              ; preds = %385
  store i32 1, i32* %26, align 4
  br label %389

389:                                              ; preds = %388, %385
  %390 = load i32, i32* %43, align 4
  %391 = icmp eq i32 %390, -1
  br i1 %391, label %392, label %397

392:                                              ; preds = %389
  %393 = load i8*, i8** %39, align 8
  %394 = getelementptr inbounds i8, i8* %393, i64 -1
  store i8 58, i8* %394, align 1
  %395 = load i8*, i8** %39, align 8
  %396 = getelementptr inbounds i8, i8* %395, i64 -1
  store i8* %396, i8** %46, align 8
  store i32 1, i32* %26, align 4
  br label %328

397:                                              ; preds = %389
  br label %398

398:                                              ; preds = %397, %352
  %399 = load i8*, i8** %38, align 8
  store i8* %399, i8** %39, align 8
  br label %400

400:                                              ; preds = %414, %398
  %401 = load i8*, i8** %39, align 8
  %402 = load i8, i8* %401, align 1
  %403 = sext i8 %402 to i32
  %404 = icmp eq i32 %403, 0
  br i1 %404, label %405, label %406

405:                                              ; preds = %400
  br label %415

406:                                              ; preds = %400
  %407 = load i8*, i8** %39, align 8
  %408 = getelementptr inbounds i8, i8* %407, i32 1
  store i8* %408, i8** %39, align 8
  %409 = load i8, i8* %407, align 1
  %410 = sext i8 %409 to i32
  %411 = icmp eq i32 %410, 58
  br i1 %411, label %412, label %413

412:                                              ; preds = %406
  br label %415

413:                                              ; preds = %406
  br label %414

414:                                              ; preds = %413
  br label %400

415:                                              ; preds = %412, %405
  %416 = load i8*, i8** %39, align 8
  %417 = load i8*, i8** %38, align 8
  %418 = ptrtoint i8* %416 to i64
  %419 = ptrtoint i8* %417 to i64
  %420 = sub i64 %418, %419
  %421 = load i32, i32* %40, align 4
  %422 = sext i32 %421 to i64
  %423 = sub nsw i64 %422, %420
  %424 = trunc i64 %423 to i32
  store i32 %424, i32* %40, align 4
  %425 = load i8*, i8** %39, align 8
  store i8* %425, i8** %38, align 8
  %426 = load i32, i32* %40, align 4
  %427 = load i8*, i8** %39, align 8
  %428 = sext i32 %426 to i64
  %429 = getelementptr inbounds i8, i8* %427, i64 %428
  store i8* %429, i8** %39, align 8
  %430 = load i8*, i8** %39, align 8
  %431 = getelementptr inbounds i8, i8* %430, i64 -1
  %432 = load i8, i8* %431, align 1
  %433 = sext i8 %432 to i32
  %434 = icmp ne i32 %433, 58
  br i1 %434, label %435, label %439

435:                                              ; preds = %415
  %436 = load i8*, i8** %39, align 8
  store i8 58, i8* %436, align 1
  %437 = load i32, i32* %40, align 4
  %438 = add nsw i32 %437, 1
  store i32 %438, i32* %40, align 4
  br label %439

439:                                              ; preds = %435, %415
  %440 = load i32, i32* %40, align 4
  %441 = load i32, i32* %44, align 4
  %442 = sub nsw i32 %440, %441
  store i32 %442, i32* %42, align 4
  %443 = load i32, i32* %42, align 4
  %444 = sext i32 %443 to i64
  %445 = load i8*, i8** %17, align 8
  %446 = load i8*, i8** %18, align 8
  %447 = ptrtoint i8* %445 to i64
  %448 = ptrtoint i8* %446 to i64
  %449 = sub i64 %447, %448
  %450 = icmp sge i64 %444, %449
  br i1 %450, label %451, label %511

451:                                              ; preds = %439
  %452 = load i8*, i8** %18, align 8
  %453 = load i8*, i8** %24, align 8
  %454 = ptrtoint i8* %452 to i64
  %455 = ptrtoint i8* %453 to i64
  %456 = sub i64 %454, %455
  %457 = trunc i64 %456 to i32
  store i32 %457, i32* %50, align 4
  %458 = load i8*, i8** %17, align 8
  %459 = load i8*, i8** %24, align 8
  %460 = ptrtoint i8* %458 to i64
  %461 = ptrtoint i8* %459 to i64
  %462 = sub i64 %460, %461
  %463 = load i32, i32* %42, align 4
  %464 = sext i32 %463 to i64
  %465 = add nsw i64 %462, %464
  %466 = load i64, i64* @BFRAG, align 8
  %467 = add i64 %465, %466
  store i64 %467, i64* %53, align 8
  %468 = load i8*, i8** %48, align 8
  %469 = load i8*, i8** %24, align 8
  %470 = ptrtoint i8* %468 to i64
  %471 = ptrtoint i8* %469 to i64
  %472 = sub i64 %470, %471
  %473 = trunc i64 %472 to i32
  store i32 %473, i32* %51, align 4
  %474 = load i8*, i8** %49, align 8
  %475 = load i8*, i8** %24, align 8
  %476 = ptrtoint i8* %474 to i64
  %477 = ptrtoint i8* %475 to i64
  %478 = sub i64 %476, %477
  %479 = trunc i64 %478 to i32
  store i32 %479, i32* %52, align 4
  %480 = load i8*, i8** %24, align 8
  %481 = load i64, i64* %53, align 8
  %482 = call i8* @reallocf(i8* %480, i64 %481)
  store i8* %482, i8** %24, align 8
  %483 = load i8*, i8** %24, align 8
  %484 = icmp eq i8* %483, null
  br i1 %484, label %485, label %495

485:                                              ; preds = %451
  %486 = load i32, i32* @ENOMEM, align 4
  store i32 %486, i32* @errno, align 4
  %487 = load i32, i32* %20, align 4
  %488 = icmp ne i32 %487, 0
  br i1 %488, label %489, label %492

489:                                              ; preds = %485
  %490 = load i32, i32* %12, align 4
  %491 = call i32 @_close(i32 %490)
  br label %492

492:                                              ; preds = %489, %485
  %493 = load i8*, i8** %45, align 8
  %494 = call i32 @free(i8* %493)
  store i32 -2, i32* %8, align 4
  store i32 1, i32* %29, align 4
  br label %574

495:                                              ; preds = %451
  %496 = load i8*, i8** %24, align 8
  %497 = load i64, i64* %53, align 8
  %498 = getelementptr inbounds i8, i8* %496, i64 %497
  store i8* %498, i8** %17, align 8
  %499 = load i8*, i8** %24, align 8
  %500 = load i32, i32* %50, align 4
  %501 = sext i32 %500 to i64
  %502 = getelementptr inbounds i8, i8* %499, i64 %501
  store i8* %502, i8** %18, align 8
  %503 = load i8*, i8** %24, align 8
  %504 = load i32, i32* %51, align 4
  %505 = sext i32 %504 to i64
  %506 = getelementptr inbounds i8, i8* %503, i64 %505
  store i8* %506, i8** %48, align 8
  %507 = load i8*, i8** %24, align 8
  %508 = load i32, i32* %52, align 4
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds i8, i8* %507, i64 %509
  store i8* %510, i8** %49, align 8
  br label %511

511:                                              ; preds = %495, %439
  %512 = load i8*, i8** %48, align 8
  %513 = load i32, i32* %40, align 4
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds i8, i8* %512, i64 %514
  store i8* %515, i8** %39, align 8
  %516 = load i8*, i8** %49, align 8
  %517 = load i8*, i8** %39, align 8
  %518 = load i8*, i8** %18, align 8
  %519 = load i8*, i8** %49, align 8
  %520 = ptrtoint i8* %518 to i64
  %521 = ptrtoint i8* %519 to i64
  %522 = sub i64 %520, %521
  %523 = trunc i64 %522 to i32
  %524 = call i32 @bcopy(i8* %516, i8* %517, i32 %523)
  %525 = load i8*, i8** %38, align 8
  %526 = load i8*, i8** %48, align 8
  %527 = load i32, i32* %40, align 4
  %528 = call i32 @bcopy(i8* %525, i8* %526, i32 %527)
  %529 = load i32, i32* %42, align 4
  %530 = load i8*, i8** %18, align 8
  %531 = sext i32 %529 to i64
  %532 = getelementptr inbounds i8, i8* %530, i64 %531
  store i8* %532, i8** %18, align 8
  %533 = load i8*, i8** %45, align 8
  %534 = call i32 @free(i8* %533)
  %535 = load i8*, i8** %39, align 8
  %536 = getelementptr inbounds i8, i8* %535, i64 -1
  store i8* %536, i8** %46, align 8
  br label %328

537:                                              ; preds = %332
  %538 = load i32, i32* %20, align 4
  %539 = icmp ne i32 %538, 0
  br i1 %539, label %540, label %543

540:                                              ; preds = %537
  %541 = load i32, i32* %12, align 4
  %542 = call i32 @_close(i32 %541)
  br label %543

543:                                              ; preds = %540, %537
  %544 = load i8*, i8** %18, align 8
  %545 = load i8*, i8** %24, align 8
  %546 = ptrtoint i8* %544 to i64
  %547 = ptrtoint i8* %545 to i64
  %548 = sub i64 %546, %547
  %549 = sub nsw i64 %548, 1
  %550 = trunc i64 %549 to i32
  %551 = load i32*, i32** %10, align 8
  store i32 %550, i32* %551, align 4
  %552 = load i8*, i8** %17, align 8
  %553 = load i8*, i8** %18, align 8
  %554 = icmp ugt i8* %552, %553
  br i1 %554, label %555, label %567

555:                                              ; preds = %543
  %556 = load i8*, i8** %24, align 8
  %557 = load i8*, i8** %18, align 8
  %558 = load i8*, i8** %24, align 8
  %559 = ptrtoint i8* %557 to i64
  %560 = ptrtoint i8* %558 to i64
  %561 = sub i64 %559, %560
  %562 = call i8* @reallocf(i8* %556, i64 %561)
  store i8* %562, i8** %24, align 8
  %563 = icmp eq i8* %562, null
  br i1 %563, label %564, label %566

564:                                              ; preds = %555
  %565 = load i32, i32* @ENOMEM, align 4
  store i32 %565, i32* @errno, align 4
  store i32 -2, i32* %8, align 4
  store i32 1, i32* %29, align 4
  br label %574

566:                                              ; preds = %555
  br label %567

567:                                              ; preds = %566, %543
  %568 = load i8*, i8** %24, align 8
  %569 = load i8**, i8*** %9, align 8
  store i8* %568, i8** %569, align 8
  %570 = load i32, i32* %26, align 4
  %571 = icmp ne i32 %570, 0
  br i1 %571, label %572, label %573

572:                                              ; preds = %567
  store i32 1, i32* %8, align 4
  store i32 1, i32* %29, align 4
  br label %574

573:                                              ; preds = %567
  store i32 0, i32* %8, align 4
  store i32 1, i32* %29, align 4
  br label %574

574:                                              ; preds = %573, %572, %564, %492, %381, %322, %308, %156, %154, %148, %132, %97, %79, %61
  %575 = load i8*, i8** %27, align 8
  call void @llvm.stackrestore(i8* %575)
  %576 = load i32, i32* %8, align 4
  ret i32 %576
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @cgetmatch(i8*, i8*) #2

declare dso_local i8* @malloc(i64) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @lseek(i32, i32, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local %struct.TYPE_6__* @dbopen(i8*, i32, i32, i32, i32) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @cdbget(%struct.TYPE_6__*, i8**, i8*) #2

declare dso_local i8* @strdup(i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @_open(i8*, i32, i32) #2

declare dso_local i32 @_read(i32, i8*, i32) #2

declare dso_local i32 @_close(i32) #2

declare dso_local i8* @reallocf(i8*, i64) #2

declare dso_local i32 @nfcmp(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i8* @cgetcap(i8*, i8*, i8 signext) #2

declare dso_local i32 @bcopy(i8*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
