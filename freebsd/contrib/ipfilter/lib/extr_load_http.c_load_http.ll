; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ipfilter/lib/extr_load_http.c_load_http.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ipfilter/lib/extr_load_http.c_load_http.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__* }

@LOAD_BUFSIZE = common dso_local global i32 0, align 4
@MAX_URL_LEN = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"load_http has a URL > %d bytes?!\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"GET %s HTTP/1.0\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"load_http has a malformed URL '%s'\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Host: %s\0D\0A\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"URL is too large: %s\0A\00", align 1
@AF_UNSPEC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"%s:%d unrecognised content:%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @load_http(i8* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.TYPE_4__*, align 8
  %18 = alloca %struct.TYPE_4__*, align 8
  %19 = alloca %struct.TYPE_4__*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %10, align 4
  %23 = load i32, i32* @LOAD_BUFSIZE, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %14, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %15, align 8
  %27 = load i8*, i8** %3, align 8
  %28 = call i32 @strlen(i8* %27)
  %29 = load i32, i32* @MAX_URL_LEN, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %1
  %32 = load i32, i32* @stderr, align 4
  %33 = load i32, i32* @MAX_URL_LEN, align 4
  %34 = call i32 (i32, i8*, ...) @fprintf(i32 %32, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %33)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %2, align 8
  store i32 1, i32* %22, align 4
  br label %339

35:                                               ; preds = %1
  store i32 -1, i32* %4, align 4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %18, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %19, align 8
  store i64 %24, i64* %20, align 8
  %36 = load i64, i64* %20, align 8
  %37 = load i8*, i8** %3, align 8
  %38 = call i32 @snprintf(i8* %26, i64 %36, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %37)
  store i32 %38, i32* %21, align 4
  %39 = load i32, i32* %21, align 4
  %40 = sext i32 %39 to i64
  %41 = load i64, i64* %20, align 8
  %42 = sub i64 %41, %40
  store i64 %42, i64* %20, align 8
  %43 = load i8*, i8** %3, align 8
  %44 = call i8* @strdup(i8* %43)
  store i8* %44, i8** %16, align 8
  %45 = load i8*, i8** %16, align 8
  %46 = icmp eq i8* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %35
  br label %325

48:                                               ; preds = %35
  %49 = load i8*, i8** %16, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 7
  store i8* %50, i8** %11, align 8
  %51 = load i8*, i8** %11, align 8
  %52 = call i8* @strchr(i8* %51, i8 signext 47)
  store i8* %52, i8** %12, align 8
  %53 = load i8*, i8** %12, align 8
  %54 = icmp eq i8* %53, null
  br i1 %54, label %55, label %61

55:                                               ; preds = %48
  %56 = load i32, i32* @stderr, align 4
  %57 = load i8*, i8** %3, align 8
  %58 = call i32 (i32, i8*, ...) @fprintf(i32 %56, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %57)
  %59 = load i8*, i8** %16, align 8
  %60 = call i32 @free(i8* %59)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %2, align 8
  store i32 1, i32* %22, align 4
  br label %339

61:                                               ; preds = %48
  %62 = load i8*, i8** %12, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %12, align 8
  store i8 0, i8* %62, align 1
  %64 = load i8*, i8** %11, align 8
  %65 = call i32 @strlen(i8* %64)
  %66 = call i32 @strlen(i8* %26)
  %67 = add nsw i32 %65, %66
  %68 = add nsw i32 %67, 10
  %69 = sext i32 %68 to i64
  %70 = icmp ugt i64 %69, %24
  br i1 %70, label %71, label %77

71:                                               ; preds = %61
  %72 = load i32, i32* @stderr, align 4
  %73 = load i8*, i8** %3, align 8
  %74 = call i32 (i32, i8*, ...) @fprintf(i32 %72, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %73)
  %75 = load i8*, i8** %16, align 8
  %76 = call i32 @free(i8* %75)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %2, align 8
  store i32 1, i32* %22, align 4
  br label %339

77:                                               ; preds = %61
  %78 = load i8*, i8** %11, align 8
  %79 = call i8* @strchr(i8* %78, i8 signext 64)
  store i8* %79, i8** %13, align 8
  %80 = load i8*, i8** %13, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load i8*, i8** %13, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 1
  store i8* %84, i8** %11, align 8
  br label %85

85:                                               ; preds = %82, %77
  %86 = call i32 @strlen(i8* %26)
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %26, i64 %87
  %89 = load i64, i64* %20, align 8
  %90 = load i8*, i8** %11, align 8
  %91 = call i32 @snprintf(i8* %88, i64 %89, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %90)
  store i32 %91, i32* %21, align 4
  %92 = load i32, i32* %21, align 4
  %93 = sext i32 %92 to i64
  %94 = load i64, i64* %20, align 8
  %95 = icmp uge i64 %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %85
  %97 = load i32, i32* @stderr, align 4
  %98 = load i8*, i8** %3, align 8
  %99 = call i32 (i32, i8*, ...) @fprintf(i32 %97, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* %98)
  br label %325

100:                                              ; preds = %85
  %101 = load i8*, i8** %11, align 8
  %102 = call i8* @strchr(i8* %101, i8 signext 58)
  store i8* %102, i8** %13, align 8
  %103 = load i8*, i8** %13, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %105, label %117

105:                                              ; preds = %100
  %106 = load i8*, i8** %13, align 8
  %107 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %107, i8** %13, align 8
  store i8 0, i8* %106, align 1
  %108 = load i8*, i8** %13, align 8
  %109 = call i32 @atoi(i8* %108)
  store i32 %109, i32* %7, align 4
  %110 = load i32, i32* %7, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %105
  %113 = load i32, i32* %7, align 4
  %114 = icmp sgt i32 %113, 65535
  br i1 %114, label %115, label %116

115:                                              ; preds = %112, %105
  br label %325

116:                                              ; preds = %112
  br label %118

117:                                              ; preds = %100
  store i32 80, i32* %7, align 4
  br label %118

118:                                              ; preds = %117, %116
  %119 = load i8*, i8** %11, align 8
  %120 = load i32, i32* %7, align 4
  %121 = call i32 @connecttcp(i8* %119, i32 %120)
  store i32 %121, i32* %4, align 4
  %122 = load i32, i32* %4, align 4
  %123 = icmp eq i32 %122, -1
  br i1 %123, label %124, label %125

124:                                              ; preds = %118
  br label %325

125:                                              ; preds = %118
  %126 = call i32 @strlen(i8* %26)
  store i32 %126, i32* %5, align 4
  %127 = load i32, i32* %4, align 4
  %128 = load i32, i32* %5, align 4
  %129 = call i32 @write(i32 %127, i8* %26, i32 %128)
  %130 = load i32, i32* %5, align 4
  %131 = icmp ne i32 %129, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %125
  br label %325

133:                                              ; preds = %125
  store i8* %26, i8** %11, align 8
  store i32 0, i32* %8, align 4
  %134 = sub i64 %24, 1
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %6, align 4
  br label %136

136:                                              ; preds = %323, %214, %163, %133
  %137 = load i32, i32* %4, align 4
  %138 = load i8*, i8** %11, align 8
  %139 = load i32, i32* %6, align 4
  %140 = call i32 @read(i32 %137, i8* %138, i32 %139)
  store i32 %140, i32* %5, align 4
  %141 = icmp sgt i32 %140, 0
  br i1 %141, label %142, label %324

142:                                              ; preds = %136
  %143 = load i8*, i8** %11, align 8
  %144 = load i32, i32* %5, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %143, i64 %145
  store i8 0, i8* %146, align 1
  %147 = load i32, i32* %5, align 4
  %148 = load i32, i32* %6, align 4
  %149 = sub nsw i32 %148, %147
  store i32 %149, i32* %6, align 4
  %150 = load i32, i32* %5, align 4
  %151 = load i8*, i8** %11, align 8
  %152 = sext i32 %150 to i64
  %153 = getelementptr inbounds i8, i8* %151, i64 %152
  store i8* %153, i8** %11, align 8
  %154 = load i32, i32* %8, align 4
  %155 = icmp sge i32 %154, 0
  br i1 %155, label %156, label %239

156:                                              ; preds = %142
  %157 = load i32, i32* %8, align 4
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %173

159:                                              ; preds = %156
  %160 = call i8* @strchr(i8* %26, i8 signext 32)
  store i8* %160, i8** %12, align 8
  %161 = load i8*, i8** %12, align 8
  %162 = icmp eq i8* %161, null
  br i1 %162, label %163, label %164

163:                                              ; preds = %159
  br label %136

164:                                              ; preds = %159
  %165 = load i8*, i8** %12, align 8
  %166 = getelementptr inbounds i8, i8* %165, i32 1
  store i8* %166, i8** %12, align 8
  %167 = load i8*, i8** %12, align 8
  %168 = load i8, i8* %167, align 1
  %169 = sext i8 %168 to i32
  %170 = icmp ne i32 %169, 50
  br i1 %170, label %171, label %172

171:                                              ; preds = %164
  br label %324

172:                                              ; preds = %164
  br label %173

173:                                              ; preds = %172, %156
  store i8* %26, i8** %13, align 8
  br label %174

174:                                              ; preds = %210, %173
  %175 = load i8*, i8** %13, align 8
  %176 = call i8* @strchr(i8* %175, i8 signext 13)
  store i8* %176, i8** %12, align 8
  %177 = icmp ne i8* %176, null
  br i1 %177, label %178, label %211

178:                                              ; preds = %174
  %179 = load i8*, i8** %12, align 8
  %180 = load i8*, i8** %13, align 8
  %181 = icmp eq i8* %179, %180
  br i1 %181, label %182, label %195

182:                                              ; preds = %178
  %183 = load i8*, i8** %12, align 8
  %184 = getelementptr inbounds i8, i8* %183, i64 1
  %185 = load i8, i8* %184, align 1
  %186 = sext i8 %185 to i32
  %187 = icmp eq i32 %186, 10
  br i1 %187, label %188, label %191

188:                                              ; preds = %182
  %189 = load i8*, i8** %12, align 8
  %190 = getelementptr inbounds i8, i8* %189, i64 2
  store i8* %190, i8** %13, align 8
  store i32 -1, i32* %8, align 4
  br label %211

191:                                              ; preds = %182
  %192 = load i8*, i8** %12, align 8
  %193 = getelementptr inbounds i8, i8* %192, i32 1
  store i8* %193, i8** %12, align 8
  br label %194

194:                                              ; preds = %191
  br label %210

195:                                              ; preds = %178
  %196 = load i8*, i8** %12, align 8
  %197 = getelementptr inbounds i8, i8* %196, i64 1
  %198 = load i8, i8* %197, align 1
  %199 = sext i8 %198 to i32
  %200 = icmp eq i32 %199, 10
  br i1 %200, label %201, label %206

201:                                              ; preds = %195
  %202 = load i32, i32* %8, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %8, align 4
  %204 = load i8*, i8** %12, align 8
  %205 = getelementptr inbounds i8, i8* %204, i64 2
  store i8* %205, i8** %13, align 8
  br label %209

206:                                              ; preds = %195
  %207 = load i8*, i8** %12, align 8
  %208 = getelementptr inbounds i8, i8* %207, i64 1
  store i8* %208, i8** %13, align 8
  br label %209

209:                                              ; preds = %206, %201
  br label %210

210:                                              ; preds = %209, %194
  br label %174

211:                                              ; preds = %188, %174
  %212 = load i32, i32* %8, align 4
  %213 = icmp sge i32 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %211
  br label %136

215:                                              ; preds = %211
  %216 = load i8*, i8** %13, align 8
  %217 = ptrtoint i8* %216 to i64
  %218 = ptrtoint i8* %26 to i64
  %219 = sub i64 %217, %218
  %220 = add nsw i64 %219, 1
  %221 = trunc i64 %220 to i32
  store i32 %221, i32* %9, align 4
  %222 = load i8*, i8** %13, align 8
  %223 = load i32, i32* %6, align 4
  %224 = sext i32 %223 to i64
  %225 = sub i64 %24, %224
  %226 = load i32, i32* %9, align 4
  %227 = sext i32 %226 to i64
  %228 = sub i64 %225, %227
  %229 = trunc i64 %228 to i32
  %230 = call i32 @memmove(i8* %26, i8* %222, i32 %229)
  %231 = load i32, i32* %9, align 4
  %232 = load i8*, i8** %11, align 8
  %233 = sext i32 %231 to i64
  %234 = sub i64 0, %233
  %235 = getelementptr inbounds i8, i8* %232, i64 %234
  store i8* %235, i8** %11, align 8
  %236 = load i32, i32* %9, align 4
  %237 = load i32, i32* %6, align 4
  %238 = add nsw i32 %237, %236
  store i32 %238, i32* %6, align 4
  br label %239

239:                                              ; preds = %215, %142
  br label %240

240:                                              ; preds = %322, %239
  %241 = call i8* @strchr(i8* %26, i8 signext 10)
  store i8* %241, i8** %12, align 8
  %242 = load i8*, i8** %12, align 8
  %243 = icmp eq i8* %242, null
  br i1 %243, label %244, label %245

244:                                              ; preds = %240
  br label %323

245:                                              ; preds = %240
  %246 = load i32, i32* %10, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %10, align 4
  %248 = load i8*, i8** %12, align 8
  store i8 0, i8* %248, align 1
  %249 = call i8* @strchr(i8* %26, i8 signext 35)
  store i8* %249, i8** %13, align 8
  %250 = load i8*, i8** %13, align 8
  %251 = icmp ne i8* %250, null
  br i1 %251, label %252, label %258

252:                                              ; preds = %245
  %253 = load i8*, i8** %13, align 8
  store i8 0, i8* %253, align 1
  %254 = load i8*, i8** %13, align 8
  %255 = icmp eq i8* %254, %26
  br i1 %255, label %256, label %257

256:                                              ; preds = %252
  br label %322

257:                                              ; preds = %252
  br label %258

258:                                              ; preds = %257, %245
  %259 = load i8*, i8** %12, align 8
  %260 = getelementptr inbounds i8, i8* %259, i64 -1
  store i8* %260, i8** %13, align 8
  br label %261

261:                                              ; preds = %273, %258
  %262 = load i8*, i8** %13, align 8
  %263 = icmp uge i8* %262, %26
  br i1 %263, label %264, label %269

264:                                              ; preds = %261
  %265 = load i8*, i8** %13, align 8
  %266 = load i8, i8* %265, align 1
  %267 = call i64 @ISSPACE(i8 signext %266)
  %268 = icmp ne i64 %267, 0
  br label %269

269:                                              ; preds = %264, %261
  %270 = phi i1 [ false, %261 ], [ %268, %264 ]
  br i1 %270, label %271, label %276

271:                                              ; preds = %269
  %272 = load i8*, i8** %13, align 8
  store i8 0, i8* %272, align 1
  br label %273

273:                                              ; preds = %271
  %274 = load i8*, i8** %13, align 8
  %275 = getelementptr inbounds i8, i8* %274, i32 -1
  store i8* %275, i8** %13, align 8
  br label %261

276:                                              ; preds = %269
  %277 = load i32, i32* @AF_UNSPEC, align 4
  %278 = call %struct.TYPE_4__* @alist_new(i32 %277, i8* %26)
  store %struct.TYPE_4__* %278, %struct.TYPE_4__** %17, align 8
  %279 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %280 = icmp ne %struct.TYPE_4__* %279, null
  br i1 %280, label %281, label %292

281:                                              ; preds = %276
  %282 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %283 = icmp ne %struct.TYPE_4__* %282, null
  br i1 %283, label %284, label %288

284:                                              ; preds = %281
  %285 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %286 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %287 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %286, i32 0, i32 0
  store %struct.TYPE_4__* %285, %struct.TYPE_4__** %287, align 8
  br label %290

288:                                              ; preds = %281
  %289 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  store %struct.TYPE_4__* %289, %struct.TYPE_4__** %18, align 8
  br label %290

290:                                              ; preds = %288, %284
  %291 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  store %struct.TYPE_4__* %291, %struct.TYPE_4__** %19, align 8
  br label %297

292:                                              ; preds = %276
  %293 = load i32, i32* @stderr, align 4
  %294 = load i8*, i8** %3, align 8
  %295 = load i32, i32* %10, align 4
  %296 = call i32 (i32, i8*, ...) @fprintf(i32 %293, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i8* %294, i32 %295, i8* %26)
  br label %297

297:                                              ; preds = %292, %290
  %298 = load i8*, i8** %12, align 8
  %299 = getelementptr inbounds i8, i8* %298, i32 1
  store i8* %299, i8** %12, align 8
  %300 = load i8*, i8** %12, align 8
  %301 = ptrtoint i8* %300 to i64
  %302 = ptrtoint i8* %26 to i64
  %303 = sub i64 %301, %302
  %304 = trunc i64 %303 to i32
  store i32 %304, i32* %9, align 4
  %305 = load i8*, i8** %12, align 8
  %306 = load i32, i32* %6, align 4
  %307 = sext i32 %306 to i64
  %308 = sub i64 %24, %307
  %309 = load i32, i32* %9, align 4
  %310 = sext i32 %309 to i64
  %311 = sub i64 %308, %310
  %312 = trunc i64 %311 to i32
  %313 = call i32 @memmove(i8* %26, i8* %305, i32 %312)
  %314 = load i32, i32* %9, align 4
  %315 = load i8*, i8** %11, align 8
  %316 = sext i32 %314 to i64
  %317 = sub i64 0, %316
  %318 = getelementptr inbounds i8, i8* %315, i64 %317
  store i8* %318, i8** %11, align 8
  %319 = load i32, i32* %9, align 4
  %320 = load i32, i32* %6, align 4
  %321 = add nsw i32 %320, %319
  store i32 %321, i32* %6, align 4
  br label %322

322:                                              ; preds = %297, %256
  br i1 true, label %240, label %323

323:                                              ; preds = %322, %244
  br label %136

324:                                              ; preds = %171, %136
  br label %325

325:                                              ; preds = %324, %132, %124, %115, %96, %47
  %326 = load i8*, i8** %16, align 8
  %327 = icmp ne i8* %326, null
  br i1 %327, label %328, label %331

328:                                              ; preds = %325
  %329 = load i8*, i8** %16, align 8
  %330 = call i32 @free(i8* %329)
  br label %331

331:                                              ; preds = %328, %325
  %332 = load i32, i32* %4, align 4
  %333 = icmp ne i32 %332, -1
  br i1 %333, label %334, label %337

334:                                              ; preds = %331
  %335 = load i32, i32* %4, align 4
  %336 = call i32 @close(i32 %335)
  br label %337

337:                                              ; preds = %334, %331
  %338 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  store %struct.TYPE_4__* %338, %struct.TYPE_4__** %2, align 8
  store i32 1, i32* %22, align 4
  br label %339

339:                                              ; preds = %337, %71, %55, %31
  %340 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %340)
  %341 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  ret %struct.TYPE_4__* %341
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*) #2

declare dso_local i8* @strdup(i8*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @atoi(i8*) #2

declare dso_local i32 @connecttcp(i8*, i32) #2

declare dso_local i32 @write(i32, i8*, i32) #2

declare dso_local i32 @read(i32, i8*, i32) #2

declare dso_local i32 @memmove(i8*, i8*, i32) #2

declare dso_local i64 @ISSPACE(i8 signext) #2

declare dso_local %struct.TYPE_4__* @alist_new(i32, i8*) #2

declare dso_local i32 @close(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
