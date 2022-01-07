; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_getaddrinfo.c_res_searchN.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_getaddrinfo.c_res_searchN.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.res_target = type { i64 }
%struct.TYPE_8__ = type { i64, i32, i32, i64 }
%struct.TYPE_9__ = type { i32 }

@MAXDNAME = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ECONNREFUSED = common dso_local global i64 0, align 8
@SERVFAIL = common dso_local global i32 0, align 4
@RES_DEFNAMES = common dso_local global i32 0, align 4
@RES_DNSRCH = common dso_local global i32 0, align 4
@RES_NOTLDQUERY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.res_target*, %struct.TYPE_8__*)* @res_searchN to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @res_searchN(i8* %0, %struct.res_target* %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.res_target*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.res_target* %1, %struct.res_target** %6, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  %24 = load %struct.res_target*, %struct.res_target** %6, align 8
  %25 = getelementptr inbounds %struct.res_target, %struct.res_target* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i8*
  %28 = bitcast i8* %27 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %28, %struct.TYPE_9__** %10, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %29 = load i32, i32* @MAXDNAME, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %20, align 8
  %32 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %21, align 8
  store i64 0, i64* @errno, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %34 = call i32 @RES_SET_H_ERRNO(%struct.TYPE_8__* %33, i32 130)
  store i64 0, i64* %11, align 8
  %35 = load i8*, i8** %5, align 8
  store i8* %35, i8** %8, align 8
  br label %36

36:                                               ; preds = %49, %3
  %37 = load i8*, i8** %8, align 8
  %38 = load i8, i8* %37, align 1
  %39 = icmp ne i8 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %36
  %41 = load i8*, i8** %8, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 46
  %45 = zext i1 %44 to i32
  %46 = sext i32 %45 to i64
  %47 = load i64, i64* %11, align 8
  %48 = add nsw i64 %47, %46
  store i64 %48, i64* %11, align 8
  br label %49

49:                                               ; preds = %40
  %50 = load i8*, i8** %8, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %8, align 8
  br label %36

52:                                               ; preds = %36
  store i32 0, i32* %12, align 4
  %53 = load i8*, i8** %8, align 8
  %54 = load i8*, i8** %5, align 8
  %55 = icmp ugt i8* %53, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %52
  %57 = load i8*, i8** %8, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 -1
  store i8* %58, i8** %8, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 46
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load i32, i32* %12, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %12, align 4
  br label %65

65:                                               ; preds = %62, %56, %52
  %66 = load i64, i64* %11, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %79, label %68

68:                                               ; preds = %65
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %70 = load i8*, i8** %5, align 8
  %71 = trunc i64 %30 to i32
  %72 = call i8* @res_hostalias(%struct.TYPE_8__* %69, i8* %70, i8* %32, i32 %71)
  store i8* %72, i8** %8, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %79

74:                                               ; preds = %68
  %75 = load i8*, i8** %8, align 8
  %76 = load %struct.res_target*, %struct.res_target** %6, align 8
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %78 = call i32 @res_queryN(i8* %75, %struct.res_target* %76, %struct.TYPE_8__* %77)
  store i32 %78, i32* %4, align 4
  store i32 1, i32* %22, align 4
  br label %319

79:                                               ; preds = %68, %65
  store i32 -1, i32* %14, align 4
  %80 = load i64, i64* %11, align 8
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp sge i64 %80, %83
  br i1 %84, label %88, label %85

85:                                               ; preds = %79
  %86 = load i32, i32* %12, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %127

88:                                               ; preds = %85, %79
  %89 = load i8*, i8** %5, align 8
  %90 = load %struct.res_target*, %struct.res_target** %6, align 8
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %92 = call i32 @res_querydomainN(i8* %89, i8* null, %struct.res_target* %90, %struct.TYPE_8__* %91)
  store i32 %92, i32* %13, align 4
  %93 = load i32, i32* %13, align 4
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %88
  %96 = load i32, i32* %12, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %95, %88
  %99 = load i32, i32* %13, align 4
  store i32 %99, i32* %4, align 4
  store i32 1, i32* %22, align 4
  br label %319

100:                                              ; preds = %95
  %101 = load i64, i64* @errno, align 8
  %102 = load i64, i64* @ECONNREFUSED, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %100
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %106 = call i32 @RES_SET_H_ERRNO(%struct.TYPE_8__* %105, i32 128)
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %22, align 4
  br label %319

107:                                              ; preds = %100
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  switch i32 %110, label %120 [
    i32 129, label %111
    i32 130, label %111
    i32 128, label %112
  ]

111:                                              ; preds = %107, %107
  br label %121

112:                                              ; preds = %107
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @SERVFAIL, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %112
  br label %121

119:                                              ; preds = %112
  br label %120

120:                                              ; preds = %107, %119
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %22, align 4
  br label %319

121:                                              ; preds = %118, %111
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  store i32 %124, i32* %14, align 4
  %125 = load i32, i32* %18, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %18, align 4
  br label %127

127:                                              ; preds = %121, %85
  %128 = load i64, i64* %11, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %137, label %130

130:                                              ; preds = %127
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @RES_DEFNAMES, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %150, label %137

137:                                              ; preds = %130, %127
  %138 = load i64, i64* %11, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %253

140:                                              ; preds = %137
  %141 = load i32, i32* %12, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %253, label %143

143:                                              ; preds = %140
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @RES_DNSRCH, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %253

150:                                              ; preds = %143, %130
  store i32 0, i32* %23, align 4
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 3
  %153 = load i64, i64* %152, align 8
  %154 = inttoptr i64 %153 to i8**
  store i8** %154, i8*** %9, align 8
  br label %155

155:                                              ; preds = %249, %150
  %156 = load i8**, i8*** %9, align 8
  %157 = load i8*, i8** %156, align 8
  %158 = icmp ne i8* %157, null
  br i1 %158, label %159, label %163

159:                                              ; preds = %155
  %160 = load i32, i32* %23, align 4
  %161 = icmp ne i32 %160, 0
  %162 = xor i1 %161, true
  br label %163

163:                                              ; preds = %159, %155
  %164 = phi i1 [ false, %155 ], [ %162, %159 ]
  br i1 %164, label %165, label %252

165:                                              ; preds = %163
  store i32 1, i32* %19, align 4
  %166 = load i8**, i8*** %9, align 8
  %167 = getelementptr inbounds i8*, i8** %166, i64 0
  %168 = load i8*, i8** %167, align 8
  %169 = getelementptr inbounds i8, i8* %168, i64 0
  %170 = load i8, i8* %169, align 1
  %171 = sext i8 %170 to i32
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %189, label %173

173:                                              ; preds = %165
  %174 = load i8**, i8*** %9, align 8
  %175 = getelementptr inbounds i8*, i8** %174, i64 0
  %176 = load i8*, i8** %175, align 8
  %177 = getelementptr inbounds i8, i8* %176, i64 0
  %178 = load i8, i8* %177, align 1
  %179 = sext i8 %178 to i32
  %180 = icmp eq i32 %179, 46
  br i1 %180, label %181, label %192

181:                                              ; preds = %173
  %182 = load i8**, i8*** %9, align 8
  %183 = getelementptr inbounds i8*, i8** %182, i64 0
  %184 = load i8*, i8** %183, align 8
  %185 = getelementptr inbounds i8, i8* %184, i64 1
  %186 = load i8, i8* %185, align 1
  %187 = sext i8 %186 to i32
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %181, %165
  %190 = load i32, i32* %17, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %17, align 4
  br label %192

192:                                              ; preds = %189, %181, %173
  %193 = load i32, i32* %17, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %199

195:                                              ; preds = %192
  %196 = load i32, i32* %18, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %195
  br label %249

199:                                              ; preds = %195, %192
  %200 = load i8*, i8** %5, align 8
  %201 = load i8**, i8*** %9, align 8
  %202 = load i8*, i8** %201, align 8
  %203 = load %struct.res_target*, %struct.res_target** %6, align 8
  %204 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %205 = call i32 @res_querydomainN(i8* %200, i8* %202, %struct.res_target* %203, %struct.TYPE_8__* %204)
  store i32 %205, i32* %13, align 4
  %206 = load i32, i32* %13, align 4
  %207 = icmp sgt i32 %206, 0
  br i1 %207, label %208, label %210

208:                                              ; preds = %199
  %209 = load i32, i32* %13, align 4
  store i32 %209, i32* %4, align 4
  store i32 1, i32* %22, align 4
  br label %319

210:                                              ; preds = %199
  %211 = load i64, i64* @errno, align 8
  %212 = load i64, i64* @ECONNREFUSED, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %214, label %217

214:                                              ; preds = %210
  %215 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %216 = call i32 @RES_SET_H_ERRNO(%struct.TYPE_8__* %215, i32 128)
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %22, align 4
  br label %319

217:                                              ; preds = %210
  %218 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 8
  switch i32 %220, label %235 [
    i32 129, label %221
    i32 130, label %224
    i32 128, label %225
  ]

221:                                              ; preds = %217
  %222 = load i32, i32* %15, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %15, align 4
  br label %224

224:                                              ; preds = %217, %221
  br label %238

225:                                              ; preds = %217
  %226 = load i32, i32* %16, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %16, align 4
  %228 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %229 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* @SERVFAIL, align 4
  %232 = icmp eq i32 %230, %231
  br i1 %232, label %233, label %234

233:                                              ; preds = %225
  br label %238

234:                                              ; preds = %225
  br label %235

235:                                              ; preds = %217, %234
  %236 = load i32, i32* %23, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %23, align 4
  br label %238

238:                                              ; preds = %235, %233, %224
  %239 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* @RES_DNSRCH, align 4
  %243 = and i32 %241, %242
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %248, label %245

245:                                              ; preds = %238
  %246 = load i32, i32* %23, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %23, align 4
  br label %248

248:                                              ; preds = %245, %238
  br label %249

249:                                              ; preds = %248, %198
  %250 = load i8**, i8*** %9, align 8
  %251 = getelementptr inbounds i8*, i8** %250, i32 1
  store i8** %251, i8*** %9, align 8
  br label %155

252:                                              ; preds = %163
  br label %253

253:                                              ; preds = %252, %143, %140, %137
  %254 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 8
  switch i32 %256, label %266 [
    i32 129, label %257
    i32 130, label %257
    i32 128, label %258
  ]

257:                                              ; preds = %253, %253
  br label %267

258:                                              ; preds = %253
  %259 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %260 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = load i32, i32* @SERVFAIL, align 4
  %263 = icmp eq i32 %261, %262
  br i1 %263, label %264, label %265

264:                                              ; preds = %258
  br label %267

265:                                              ; preds = %258
  br label %266

266:                                              ; preds = %253, %265
  br label %297

267:                                              ; preds = %264, %257
  %268 = load i64, i64* %11, align 8
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %280, label %270

270:                                              ; preds = %267
  %271 = load i32, i32* %19, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %280

273:                                              ; preds = %270
  %274 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %275 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %274, i32 0, i32 2
  %276 = load i32, i32* %275, align 4
  %277 = load i32, i32* @RES_NOTLDQUERY, align 4
  %278 = and i32 %276, %277
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %296, label %280

280:                                              ; preds = %273, %270, %267
  %281 = load i32, i32* %18, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %296, label %283

283:                                              ; preds = %280
  %284 = load i32, i32* %17, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %296, label %286

286:                                              ; preds = %283
  %287 = load i8*, i8** %5, align 8
  %288 = load %struct.res_target*, %struct.res_target** %6, align 8
  %289 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %290 = call i32 @res_querydomainN(i8* %287, i8* null, %struct.res_target* %288, %struct.TYPE_8__* %289)
  store i32 %290, i32* %13, align 4
  %291 = load i32, i32* %13, align 4
  %292 = icmp sgt i32 %291, 0
  br i1 %292, label %293, label %295

293:                                              ; preds = %286
  %294 = load i32, i32* %13, align 4
  store i32 %294, i32* %4, align 4
  store i32 1, i32* %22, align 4
  br label %319

295:                                              ; preds = %286
  br label %296

296:                                              ; preds = %295, %283, %280, %273
  br label %297

297:                                              ; preds = %296, %266
  %298 = load i32, i32* %14, align 4
  %299 = icmp ne i32 %298, -1
  br i1 %299, label %300, label %304

300:                                              ; preds = %297
  %301 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %302 = load i32, i32* %14, align 4
  %303 = call i32 @RES_SET_H_ERRNO(%struct.TYPE_8__* %301, i32 %302)
  br label %318

304:                                              ; preds = %297
  %305 = load i32, i32* %15, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %310

307:                                              ; preds = %304
  %308 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %309 = call i32 @RES_SET_H_ERRNO(%struct.TYPE_8__* %308, i32 129)
  br label %317

310:                                              ; preds = %304
  %311 = load i32, i32* %16, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %316

313:                                              ; preds = %310
  %314 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %315 = call i32 @RES_SET_H_ERRNO(%struct.TYPE_8__* %314, i32 128)
  br label %316

316:                                              ; preds = %313, %310
  br label %317

317:                                              ; preds = %316, %307
  br label %318

318:                                              ; preds = %317, %300
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %22, align 4
  br label %319

319:                                              ; preds = %318, %293, %214, %208, %120, %104, %98, %74
  %320 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %320)
  %321 = load i32, i32* %4, align 4
  ret i32 %321
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @RES_SET_H_ERRNO(%struct.TYPE_8__*, i32) #2

declare dso_local i8* @res_hostalias(%struct.TYPE_8__*, i8*, i8*, i32) #2

declare dso_local i32 @res_queryN(i8*, %struct.res_target*, %struct.TYPE_8__*) #2

declare dso_local i32 @res_querydomainN(i8*, i8*, %struct.res_target*, %struct.TYPE_8__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
