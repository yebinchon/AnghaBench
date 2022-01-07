; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sftp.c_complete_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sftp.c_complete_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sftp_conn = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i8* }

@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s*\00", align 1
@LOCAL = common dso_local global i32 0, align 4
@GLOB_DOOFFS = common dso_local global i32 0, align 4
@GLOB_MARK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"invalid multibyte character\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"el_insertstr failed.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.sftp_conn*, i8*, i8*, i32, i32, i8, i32)* @complete_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @complete_match(i32* %0, %struct.sftp_conn* %1, i8* %2, i8* %3, i32 %4, i32 %5, i8 signext %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca %struct.sftp_conn*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_8__, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca [8 x i8], align 1
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i32, align 4
  %31 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %9, align 8
  store %struct.sftp_conn* %1, %struct.sftp_conn** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i8 %6, i8* %15, align 1
  store i32 %7, i32* %16, align 4
  %32 = load i8*, i8** %12, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %8
  %35 = call i8* @xstrdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %35, i8** %18, align 8
  br label %39

36:                                               ; preds = %8
  %37 = load i8*, i8** %12, align 8
  %38 = call i32 @xasprintf(i8** %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %37)
  br label %39

39:                                               ; preds = %36, %34
  %40 = load i8*, i8** %18, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 47
  %45 = zext i1 %44 to i32
  %46 = sext i32 %45 to i64
  store i64 %46, i64* %29, align 8
  %47 = call i32 @memset(%struct.TYPE_8__* %17, i32 0, i32 8)
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* @LOCAL, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %39
  %52 = load i8*, i8** %18, align 8
  %53 = load i8*, i8** %11, align 8
  %54 = call i8* @make_absolute(i8* %52, i8* %53)
  store i8* %54, i8** %18, align 8
  %55 = load %struct.sftp_conn*, %struct.sftp_conn** %10, align 8
  %56 = load i8*, i8** %18, align 8
  %57 = load i32, i32* @GLOB_DOOFFS, align 4
  %58 = load i32, i32* @GLOB_MARK, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @remote_glob(%struct.sftp_conn* %55, i8* %56, i32 %59, i32* null, %struct.TYPE_8__* %17)
  br label %67

61:                                               ; preds = %39
  %62 = load i8*, i8** %18, align 8
  %63 = load i32, i32* @GLOB_DOOFFS, align 4
  %64 = load i32, i32* @GLOB_MARK, align 4
  %65 = or i32 %63, %64
  %66 = call i32 @glob(i8* %62, i32 %65, i32* null, %struct.TYPE_8__* %17)
  br label %67

67:                                               ; preds = %61, %51
  store i64 0, i64* %23, align 8
  store i64 0, i64* %25, align 8
  store i64 0, i64* %22, align 8
  br label %68

68:                                               ; preds = %135, %67
  %69 = load i8*, i8** %18, align 8
  %70 = load i64, i64* %25, align 8
  %71 = getelementptr inbounds i8, i8* %69, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %138

75:                                               ; preds = %68
  %76 = load i8*, i8** %18, align 8
  %77 = load i64, i64* %25, align 8
  %78 = getelementptr inbounds i8, i8* %76, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 42
  br i1 %81, label %89, label %82

82:                                               ; preds = %75
  %83 = load i8*, i8** %18, align 8
  %84 = load i64, i64* %25, align 8
  %85 = getelementptr inbounds i8, i8* %83, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 63
  br i1 %88, label %89, label %106

89:                                               ; preds = %82, %75
  %90 = load i8*, i8** %18, align 8
  %91 = load i64, i64* %25, align 8
  %92 = getelementptr inbounds i8, i8* %90, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp ne i32 %94, 42
  br i1 %95, label %104, label %96

96:                                               ; preds = %89
  %97 = load i8*, i8** %18, align 8
  %98 = load i64, i64* %25, align 8
  %99 = add i64 %98, 1
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %96, %89
  store i64 1, i64* %22, align 8
  br label %105

105:                                              ; preds = %104, %96
  br label %138

106:                                              ; preds = %82
  %107 = load i8*, i8** %18, align 8
  %108 = load i64, i64* %25, align 8
  %109 = getelementptr inbounds i8, i8* %107, i64 %108
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %111, 92
  br i1 %112, label %113, label %124

113:                                              ; preds = %106
  %114 = load i8*, i8** %18, align 8
  %115 = load i64, i64* %25, align 8
  %116 = add i64 %115, 1
  %117 = getelementptr inbounds i8, i8* %114, i64 %116
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %113
  %122 = load i64, i64* %25, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %25, align 8
  br label %124

124:                                              ; preds = %121, %113, %106
  %125 = load i8*, i8** %18, align 8
  %126 = load i64, i64* %25, align 8
  %127 = getelementptr inbounds i8, i8* %125, i64 %126
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp eq i32 %129, 47
  br i1 %130, label %131, label %134

131:                                              ; preds = %124
  %132 = load i64, i64* %25, align 8
  %133 = add i64 %132, 1
  store i64 %133, i64* %23, align 8
  br label %134

134:                                              ; preds = %131, %124
  br label %135

135:                                              ; preds = %134
  %136 = load i64, i64* %25, align 8
  %137 = add i64 %136, 1
  store i64 %137, i64* %25, align 8
  br label %68

138:                                              ; preds = %105, %68
  %139 = load i8*, i8** %18, align 8
  %140 = call i32 @free(i8* %139)
  store i8* null, i8** %18, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %138
  br label %360

145:                                              ; preds = %138
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = icmp sgt i32 %147, 1
  br i1 %148, label %149, label %154

149:                                              ; preds = %145
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load i64, i64* %23, align 8
  %153 = call i32 @complete_display(i32 %151, i64 %152)
  br label %154

154:                                              ; preds = %149, %145
  %155 = load i8*, i8** %12, align 8
  %156 = icmp eq i8* %155, null
  br i1 %156, label %160, label %157

157:                                              ; preds = %154
  %158 = load i64, i64* %22, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %157, %154
  br label %360

161:                                              ; preds = %157
  %162 = load i8*, i8** %12, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i8* @complete_ambiguous(i8* %162, i32 %164, i32 %166)
  store i8* %167, i8** %19, align 8
  %168 = load i8*, i8** %19, align 8
  %169 = load i64, i64* %29, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %161
  br label %174

172:                                              ; preds = %161
  %173 = load i8*, i8** %11, align 8
  br label %174

174:                                              ; preds = %172, %171
  %175 = phi i8* [ null, %171 ], [ %173, %172 ]
  %176 = call i8* @path_strip(i8* %168, i8* %175)
  store i8* %176, i8** %18, align 8
  %177 = load i8*, i8** %19, align 8
  %178 = call i32 @free(i8* %177)
  %179 = load i8*, i8** %18, align 8
  %180 = icmp eq i8* %179, null
  br i1 %180, label %181, label %182

181:                                              ; preds = %174
  br label %360

182:                                              ; preds = %174
  %183 = load i8*, i8** %18, align 8
  %184 = call i64 @strlen(i8* %183)
  store i64 %184, i64* %25, align 8
  %185 = load i8*, i8** %12, align 8
  %186 = call i64 @strlen(i8* %185)
  store i64 %186, i64* %26, align 8
  store i64 0, i64* %28, align 8
  store i64 0, i64* %27, align 8
  store i64 0, i64* %21, align 8
  br label %187

187:                                              ; preds = %211, %182
  %188 = load i64, i64* %21, align 8
  %189 = load i64, i64* %26, align 8
  %190 = icmp ult i64 %188, %189
  br i1 %190, label %191, label %214

191:                                              ; preds = %187
  %192 = load i64, i64* %28, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %209, label %194

194:                                              ; preds = %191
  %195 = load i8*, i8** %12, align 8
  %196 = load i64, i64* %21, align 8
  %197 = getelementptr inbounds i8, i8* %195, i64 %196
  %198 = load i8, i8* %197, align 1
  %199 = sext i8 %198 to i32
  %200 = icmp eq i32 %199, 92
  br i1 %200, label %201, label %209

201:                                              ; preds = %194
  %202 = load i64, i64* %21, align 8
  %203 = add i64 %202, 1
  %204 = load i64, i64* %26, align 8
  %205 = icmp ult i64 %203, %204
  br i1 %205, label %206, label %209

206:                                              ; preds = %201
  store i64 1, i64* %28, align 8
  %207 = load i64, i64* %27, align 8
  %208 = add i64 %207, 1
  store i64 %208, i64* %27, align 8
  br label %210

209:                                              ; preds = %201, %194, %191
  store i64 0, i64* %28, align 8
  br label %210

210:                                              ; preds = %209, %206
  br label %211

211:                                              ; preds = %210
  %212 = load i64, i64* %21, align 8
  %213 = add i64 %212, 1
  store i64 %213, i64* %21, align 8
  br label %187

214:                                              ; preds = %187
  %215 = load i64, i64* %25, align 8
  %216 = load i64, i64* %26, align 8
  %217 = load i64, i64* %27, align 8
  %218 = sub i64 %216, %217
  %219 = icmp ugt i64 %215, %218
  br i1 %219, label %220, label %304

220:                                              ; preds = %214
  %221 = load i8*, i8** %18, align 8
  %222 = load i64, i64* %26, align 8
  %223 = getelementptr inbounds i8, i8* %221, i64 %222
  %224 = load i64, i64* %27, align 8
  %225 = sub i64 0, %224
  %226 = getelementptr inbounds i8, i8* %223, i64 %225
  store i8* %226, i8** %19, align 8
  %227 = load i8*, i8** %19, align 8
  %228 = call i64 @strlen(i8* %227)
  store i64 %228, i64* %24, align 8
  store i64 0, i64* %21, align 8
  br label %229

229:                                              ; preds = %298, %220
  %230 = load i64, i64* %21, align 8
  %231 = load i64, i64* %24, align 8
  %232 = icmp ult i64 %230, %231
  br i1 %232, label %233, label %303

233:                                              ; preds = %229
  %234 = load i8*, i8** %19, align 8
  %235 = load i64, i64* %21, align 8
  %236 = getelementptr inbounds i8, i8* %234, i64 %235
  %237 = load i64, i64* %24, align 8
  %238 = load i64, i64* %21, align 8
  %239 = sub i64 %237, %238
  %240 = call i32 @mblen(i8* %236, i64 %239)
  store i32 %240, i32* %30, align 4
  %241 = icmp slt i32 %240, 0
  br i1 %241, label %246, label %242

242:                                              ; preds = %233
  %243 = load i32, i32* %30, align 4
  %244 = sext i32 %243 to i64
  %245 = icmp ugt i64 %244, 6
  br i1 %245, label %246, label %248

246:                                              ; preds = %242, %233
  %247 = call i32 @fatal(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %248

248:                                              ; preds = %246, %242
  %249 = getelementptr inbounds [8 x i8], [8 x i8]* %20, i64 0, i64 0
  store i8 92, i8* %249, align 1
  %250 = getelementptr inbounds [8 x i8], [8 x i8]* %20, i64 0, i64 0
  %251 = getelementptr inbounds i8, i8* %250, i64 1
  %252 = load i8*, i8** %19, align 8
  %253 = load i64, i64* %21, align 8
  %254 = getelementptr inbounds i8, i8* %252, i64 %253
  %255 = load i32, i32* %30, align 4
  %256 = call i32 @memcpy(i8* %251, i8* %254, i32 %255)
  %257 = load i32, i32* %30, align 4
  %258 = add nsw i32 %257, 1
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds [8 x i8], [8 x i8]* %20, i64 0, i64 %259
  store i8 0, i8* %260, align 1
  %261 = load i8*, i8** %19, align 8
  %262 = load i64, i64* %21, align 8
  %263 = getelementptr inbounds i8, i8* %261, i64 %262
  %264 = load i8, i8* %263, align 1
  %265 = sext i8 %264 to i32
  switch i32 %265, label %288 [
    i32 39, label %266
    i32 34, label %266
    i32 92, label %266
    i32 9, label %266
    i32 91, label %266
    i32 32, label %266
    i32 35, label %266
    i32 42, label %266
  ]

266:                                              ; preds = %248, %248, %248, %248, %248, %248, %248, %248
  %267 = load i8, i8* %15, align 1
  %268 = sext i8 %267 to i32
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %279, label %270

270:                                              ; preds = %266
  %271 = load i8*, i8** %19, align 8
  %272 = load i64, i64* %21, align 8
  %273 = getelementptr inbounds i8, i8* %271, i64 %272
  %274 = load i8, i8* %273, align 1
  %275 = sext i8 %274 to i32
  %276 = load i8, i8* %15, align 1
  %277 = sext i8 %276 to i32
  %278 = icmp eq i32 %275, %277
  br i1 %278, label %279, label %287

279:                                              ; preds = %270, %266
  %280 = load i32*, i32** %9, align 8
  %281 = getelementptr inbounds [8 x i8], [8 x i8]* %20, i64 0, i64 0
  %282 = call i32 @el_insertstr(i32* %280, i8* %281)
  %283 = icmp eq i32 %282, -1
  br i1 %283, label %284, label %286

284:                                              ; preds = %279
  %285 = call i32 @fatal(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %286

286:                                              ; preds = %284, %279
  br label %297

287:                                              ; preds = %270
  br label %288

288:                                              ; preds = %248, %287
  %289 = load i32*, i32** %9, align 8
  %290 = getelementptr inbounds [8 x i8], [8 x i8]* %20, i64 0, i64 0
  %291 = getelementptr inbounds i8, i8* %290, i64 1
  %292 = call i32 @el_insertstr(i32* %289, i8* %291)
  %293 = icmp eq i32 %292, -1
  br i1 %293, label %294, label %296

294:                                              ; preds = %288
  %295 = call i32 @fatal(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %296

296:                                              ; preds = %294, %288
  br label %297

297:                                              ; preds = %296, %286
  br label %298

298:                                              ; preds = %297
  %299 = load i32, i32* %30, align 4
  %300 = sext i32 %299 to i64
  %301 = load i64, i64* %21, align 8
  %302 = add i64 %301, %300
  store i64 %302, i64* %21, align 8
  br label %229

303:                                              ; preds = %229
  br label %304

304:                                              ; preds = %303, %214
  %305 = load i32*, i32** %9, align 8
  %306 = call %struct.TYPE_9__* @el_line(i32* %305)
  store %struct.TYPE_9__* %306, %struct.TYPE_9__** %31, align 8
  %307 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %308 = load i32, i32* %307, align 4
  %309 = icmp eq i32 %308, 1
  br i1 %309, label %310, label %357

310:                                              ; preds = %304
  store i64 0, i64* %21, align 8
  %311 = load i32, i32* %16, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %322, label %313

313:                                              ; preds = %310
  %314 = load i8, i8* %15, align 1
  %315 = sext i8 %314 to i32
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %322

317:                                              ; preds = %313
  %318 = load i8, i8* %15, align 1
  %319 = load i64, i64* %21, align 8
  %320 = add i64 %319, 1
  store i64 %320, i64* %21, align 8
  %321 = getelementptr inbounds [8 x i8], [8 x i8]* %20, i64 0, i64 %319
  store i8 %318, i8* %321, align 1
  br label %322

322:                                              ; preds = %317, %313, %310
  %323 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %324 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %323, i32 0, i32 0
  %325 = load i8*, i8** %324, align 8
  %326 = getelementptr inbounds i8, i8* %325, i64 -1
  %327 = load i8, i8* %326, align 1
  %328 = sext i8 %327 to i32
  %329 = icmp ne i32 %328, 47
  br i1 %329, label %330, label %344

330:                                              ; preds = %322
  %331 = load i32, i32* %14, align 4
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %340, label %333

333:                                              ; preds = %330
  %334 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %335 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %334, i32 0, i32 0
  %336 = load i8*, i8** %335, align 8
  %337 = load i8, i8* %336, align 1
  %338 = sext i8 %337 to i32
  %339 = icmp ne i32 %338, 32
  br i1 %339, label %340, label %344

340:                                              ; preds = %333, %330
  %341 = load i64, i64* %21, align 8
  %342 = add i64 %341, 1
  store i64 %342, i64* %21, align 8
  %343 = getelementptr inbounds [8 x i8], [8 x i8]* %20, i64 0, i64 %341
  store i8 32, i8* %343, align 1
  br label %344

344:                                              ; preds = %340, %333, %322
  %345 = load i64, i64* %21, align 8
  %346 = getelementptr inbounds [8 x i8], [8 x i8]* %20, i64 0, i64 %345
  store i8 0, i8* %346, align 1
  %347 = load i64, i64* %21, align 8
  %348 = icmp ugt i64 %347, 0
  br i1 %348, label %349, label %356

349:                                              ; preds = %344
  %350 = load i32*, i32** %9, align 8
  %351 = getelementptr inbounds [8 x i8], [8 x i8]* %20, i64 0, i64 0
  %352 = call i32 @el_insertstr(i32* %350, i8* %351)
  %353 = icmp eq i32 %352, -1
  br i1 %353, label %354, label %356

354:                                              ; preds = %349
  %355 = call i32 @fatal(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %356

356:                                              ; preds = %354, %349, %344
  br label %357

357:                                              ; preds = %356, %304
  %358 = load i8*, i8** %18, align 8
  %359 = call i32 @free(i8* %358)
  br label %360

360:                                              ; preds = %357, %181, %160, %144
  %361 = call i32 @globfree(%struct.TYPE_8__* %17)
  %362 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %363 = load i32, i32* %362, align 4
  ret i32 %363
}

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32 @xasprintf(i8**, i8*, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i8* @make_absolute(i8*, i8*) #1

declare dso_local i32 @remote_glob(%struct.sftp_conn*, i8*, i32, i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @glob(i8*, i32, i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @complete_display(i32, i64) #1

declare dso_local i8* @complete_ambiguous(i8*, i32, i32) #1

declare dso_local i8* @path_strip(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @mblen(i8*, i64) #1

declare dso_local i32 @fatal(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @el_insertstr(i32*, i8*) #1

declare dso_local %struct.TYPE_9__* @el_line(i32*) #1

declare dso_local i32 @globfree(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
