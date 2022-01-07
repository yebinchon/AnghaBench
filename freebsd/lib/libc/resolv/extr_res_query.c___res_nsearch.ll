; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_query.c___res_nsearch.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_query.c___res_nsearch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32, i64 }
%struct.TYPE_9__ = type { i32 }

@NS_MAXDNAME = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ECONNREFUSED = common dso_local global i64 0, align 8
@SERVFAIL = common dso_local global i32 0, align 4
@RES_DEFNAMES = common dso_local global i32 0, align 4
@RES_DNSRCH = common dso_local global i32 0, align 4
@RES_NOTLDQUERY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @res_nsearch(%struct.TYPE_8__* %0, i8* %1, i32 %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca %struct.TYPE_9__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %30 = load i32*, i32** %12, align 8
  %31 = bitcast i32* %30 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %31, %struct.TYPE_9__** %16, align 8
  %32 = load i32, i32* @NS_MAXDNAME, align 4
  %33 = zext i32 %32 to i64
  %34 = call i8* @llvm.stacksave()
  store i8* %34, i8** %17, align 8
  %35 = alloca i8, i64 %33, align 16
  store i64 %33, i64* %18, align 8
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  store i32 0, i32* %27, align 4
  store i64 0, i64* @errno, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %37 = call i32 @RES_SET_H_ERRNO(%struct.TYPE_8__* %36, i32 130)
  store i64 0, i64* %19, align 8
  %38 = load i8*, i8** %9, align 8
  store i8* %38, i8** %14, align 8
  br label %39

39:                                               ; preds = %53, %6
  %40 = load i8*, i8** %14, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %39
  %45 = load i8*, i8** %14, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 46
  %49 = zext i1 %48 to i32
  %50 = sext i32 %49 to i64
  %51 = load i64, i64* %19, align 8
  %52 = add nsw i64 %51, %50
  store i64 %52, i64* %19, align 8
  br label %53

53:                                               ; preds = %44
  %54 = load i8*, i8** %14, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %14, align 8
  br label %39

56:                                               ; preds = %39
  store i32 0, i32* %20, align 4
  %57 = load i8*, i8** %14, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = icmp ugt i8* %57, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %56
  %61 = load i8*, i8** %14, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 -1
  store i8* %62, i8** %14, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 46
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = load i32, i32* %20, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %20, align 4
  br label %69

69:                                               ; preds = %66, %60, %56
  %70 = load i64, i64* %19, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %86, label %72

72:                                               ; preds = %69
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %74 = load i8*, i8** %9, align 8
  %75 = trunc i64 %33 to i32
  %76 = call i8* @res_hostalias(%struct.TYPE_8__* %73, i8* %74, i8* %35, i32 %75)
  store i8* %76, i8** %14, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %86

78:                                               ; preds = %72
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %80 = load i8*, i8** %14, align 8
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %11, align 4
  %83 = load i32*, i32** %12, align 8
  %84 = load i32, i32* %13, align 4
  %85 = call i32 @res_nquery(%struct.TYPE_8__* %79, i8* %80, i32 %81, i32 %82, i32* %83, i32 %84)
  store i32 %85, i32* %7, align 4
  store i32 1, i32* %28, align 4
  br label %335

86:                                               ; preds = %72, %69
  store i32 -1, i32* %22, align 4
  %87 = load i64, i64* %19, align 8
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp sge i64 %87, %90
  br i1 %91, label %95, label %92

92:                                               ; preds = %86
  %93 = load i32, i32* %20, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %137

95:                                               ; preds = %92, %86
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %97 = load i8*, i8** %9, align 8
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* %11, align 4
  %100 = load i32*, i32** %12, align 8
  %101 = load i32, i32* %13, align 4
  %102 = call i32 @res_nquerydomain(%struct.TYPE_8__* %96, i8* %97, i8* null, i32 %98, i32 %99, i32* %100, i32 %101)
  store i32 %102, i32* %21, align 4
  %103 = load i32, i32* %21, align 4
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %95
  %106 = load i32, i32* %20, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %105, %95
  %109 = load i32, i32* %21, align 4
  store i32 %109, i32* %7, align 4
  store i32 1, i32* %28, align 4
  br label %335

110:                                              ; preds = %105
  %111 = load i64, i64* @errno, align 8
  %112 = load i64, i64* @ECONNREFUSED, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %110
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %116 = call i32 @RES_SET_H_ERRNO(%struct.TYPE_8__* %115, i32 128)
  store i32 -1, i32* %7, align 4
  store i32 1, i32* %28, align 4
  br label %335

117:                                              ; preds = %110
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  switch i32 %120, label %130 [
    i32 129, label %121
    i32 130, label %121
    i32 128, label %122
  ]

121:                                              ; preds = %117, %117
  br label %131

122:                                              ; preds = %117
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @SERVFAIL, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %122
  br label %131

129:                                              ; preds = %122
  br label %130

130:                                              ; preds = %117, %129
  store i32 -1, i32* %7, align 4
  store i32 1, i32* %28, align 4
  br label %335

131:                                              ; preds = %128, %121
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  store i32 %134, i32* %22, align 4
  %135 = load i32, i32* %26, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %26, align 4
  br label %137

137:                                              ; preds = %131, %92
  %138 = load i64, i64* %19, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %147, label %140

140:                                              ; preds = %137
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @RES_DEFNAMES, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %160, label %147

147:                                              ; preds = %140, %137
  %148 = load i64, i64* %19, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %266

150:                                              ; preds = %147
  %151 = load i32, i32* %20, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %266, label %153

153:                                              ; preds = %150
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @RES_DNSRCH, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %266

160:                                              ; preds = %153, %140
  store i32 0, i32* %29, align 4
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 3
  %163 = load i64, i64* %162, align 8
  %164 = inttoptr i64 %163 to i8**
  store i8** %164, i8*** %15, align 8
  br label %165

165:                                              ; preds = %262, %160
  %166 = load i8**, i8*** %15, align 8
  %167 = load i8*, i8** %166, align 8
  %168 = icmp ne i8* %167, null
  br i1 %168, label %169, label %173

169:                                              ; preds = %165
  %170 = load i32, i32* %29, align 4
  %171 = icmp ne i32 %170, 0
  %172 = xor i1 %171, true
  br label %173

173:                                              ; preds = %169, %165
  %174 = phi i1 [ false, %165 ], [ %172, %169 ]
  br i1 %174, label %175, label %265

175:                                              ; preds = %173
  store i32 1, i32* %27, align 4
  %176 = load i8**, i8*** %15, align 8
  %177 = getelementptr inbounds i8*, i8** %176, i64 0
  %178 = load i8*, i8** %177, align 8
  %179 = getelementptr inbounds i8, i8* %178, i64 0
  %180 = load i8, i8* %179, align 1
  %181 = sext i8 %180 to i32
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %199, label %183

183:                                              ; preds = %175
  %184 = load i8**, i8*** %15, align 8
  %185 = getelementptr inbounds i8*, i8** %184, i64 0
  %186 = load i8*, i8** %185, align 8
  %187 = getelementptr inbounds i8, i8* %186, i64 0
  %188 = load i8, i8* %187, align 1
  %189 = sext i8 %188 to i32
  %190 = icmp eq i32 %189, 46
  br i1 %190, label %191, label %202

191:                                              ; preds = %183
  %192 = load i8**, i8*** %15, align 8
  %193 = getelementptr inbounds i8*, i8** %192, i64 0
  %194 = load i8*, i8** %193, align 8
  %195 = getelementptr inbounds i8, i8* %194, i64 1
  %196 = load i8, i8* %195, align 1
  %197 = sext i8 %196 to i32
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %191, %175
  %200 = load i32, i32* %25, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %25, align 4
  br label %202

202:                                              ; preds = %199, %191, %183
  %203 = load i32, i32* %25, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %209

205:                                              ; preds = %202
  %206 = load i32, i32* %26, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %205
  br label %262

209:                                              ; preds = %205, %202
  %210 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %211 = load i8*, i8** %9, align 8
  %212 = load i8**, i8*** %15, align 8
  %213 = load i8*, i8** %212, align 8
  %214 = load i32, i32* %10, align 4
  %215 = load i32, i32* %11, align 4
  %216 = load i32*, i32** %12, align 8
  %217 = load i32, i32* %13, align 4
  %218 = call i32 @res_nquerydomain(%struct.TYPE_8__* %210, i8* %211, i8* %213, i32 %214, i32 %215, i32* %216, i32 %217)
  store i32 %218, i32* %21, align 4
  %219 = load i32, i32* %21, align 4
  %220 = icmp sgt i32 %219, 0
  br i1 %220, label %221, label %223

221:                                              ; preds = %209
  %222 = load i32, i32* %21, align 4
  store i32 %222, i32* %7, align 4
  store i32 1, i32* %28, align 4
  br label %335

223:                                              ; preds = %209
  %224 = load i64, i64* @errno, align 8
  %225 = load i64, i64* @ECONNREFUSED, align 8
  %226 = icmp eq i64 %224, %225
  br i1 %226, label %227, label %230

227:                                              ; preds = %223
  %228 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %229 = call i32 @RES_SET_H_ERRNO(%struct.TYPE_8__* %228, i32 128)
  store i32 -1, i32* %7, align 4
  store i32 1, i32* %28, align 4
  br label %335

230:                                              ; preds = %223
  %231 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 8
  switch i32 %233, label %248 [
    i32 129, label %234
    i32 130, label %237
    i32 128, label %238
  ]

234:                                              ; preds = %230
  %235 = load i32, i32* %23, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %23, align 4
  br label %237

237:                                              ; preds = %230, %234
  br label %251

238:                                              ; preds = %230
  %239 = load i32, i32* %24, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %24, align 4
  %241 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %242 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* @SERVFAIL, align 4
  %245 = icmp eq i32 %243, %244
  br i1 %245, label %246, label %247

246:                                              ; preds = %238
  br label %251

247:                                              ; preds = %238
  br label %248

248:                                              ; preds = %230, %247
  %249 = load i32, i32* %29, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %29, align 4
  br label %251

251:                                              ; preds = %248, %246, %237
  %252 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i32 0, i32 2
  %254 = load i32, i32* %253, align 4
  %255 = load i32, i32* @RES_DNSRCH, align 4
  %256 = and i32 %254, %255
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %258, label %261

258:                                              ; preds = %251
  %259 = load i32, i32* %29, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %29, align 4
  br label %261

261:                                              ; preds = %258, %251
  br label %262

262:                                              ; preds = %261, %208
  %263 = load i8**, i8*** %15, align 8
  %264 = getelementptr inbounds i8*, i8** %263, i32 1
  store i8** %264, i8*** %15, align 8
  br label %165

265:                                              ; preds = %173
  br label %266

266:                                              ; preds = %265, %153, %150, %147
  %267 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %268 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 8
  switch i32 %269, label %279 [
    i32 129, label %270
    i32 130, label %270
    i32 128, label %271
  ]

270:                                              ; preds = %266, %266
  br label %280

271:                                              ; preds = %266
  %272 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %273 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 4
  %275 = load i32, i32* @SERVFAIL, align 4
  %276 = icmp eq i32 %274, %275
  br i1 %276, label %277, label %278

277:                                              ; preds = %271
  br label %280

278:                                              ; preds = %271
  br label %279

279:                                              ; preds = %266, %278
  br label %313

280:                                              ; preds = %277, %270
  %281 = load i64, i64* %19, align 8
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %293, label %283

283:                                              ; preds = %280
  %284 = load i32, i32* %27, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %293

286:                                              ; preds = %283
  %287 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %288 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %287, i32 0, i32 2
  %289 = load i32, i32* %288, align 4
  %290 = load i32, i32* @RES_NOTLDQUERY, align 4
  %291 = and i32 %289, %290
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %293, label %312

293:                                              ; preds = %286, %283, %280
  %294 = load i32, i32* %26, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %312, label %296

296:                                              ; preds = %293
  %297 = load i32, i32* %25, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %312, label %299

299:                                              ; preds = %296
  %300 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %301 = load i8*, i8** %9, align 8
  %302 = load i32, i32* %10, align 4
  %303 = load i32, i32* %11, align 4
  %304 = load i32*, i32** %12, align 8
  %305 = load i32, i32* %13, align 4
  %306 = call i32 @res_nquerydomain(%struct.TYPE_8__* %300, i8* %301, i8* null, i32 %302, i32 %303, i32* %304, i32 %305)
  store i32 %306, i32* %21, align 4
  %307 = load i32, i32* %21, align 4
  %308 = icmp sgt i32 %307, 0
  br i1 %308, label %309, label %311

309:                                              ; preds = %299
  %310 = load i32, i32* %21, align 4
  store i32 %310, i32* %7, align 4
  store i32 1, i32* %28, align 4
  br label %335

311:                                              ; preds = %299
  br label %312

312:                                              ; preds = %311, %296, %293, %286
  br label %313

313:                                              ; preds = %312, %279
  %314 = load i32, i32* %22, align 4
  %315 = icmp ne i32 %314, -1
  br i1 %315, label %316, label %320

316:                                              ; preds = %313
  %317 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %318 = load i32, i32* %22, align 4
  %319 = call i32 @RES_SET_H_ERRNO(%struct.TYPE_8__* %317, i32 %318)
  br label %334

320:                                              ; preds = %313
  %321 = load i32, i32* %23, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %326

323:                                              ; preds = %320
  %324 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %325 = call i32 @RES_SET_H_ERRNO(%struct.TYPE_8__* %324, i32 129)
  br label %333

326:                                              ; preds = %320
  %327 = load i32, i32* %24, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %332

329:                                              ; preds = %326
  %330 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %331 = call i32 @RES_SET_H_ERRNO(%struct.TYPE_8__* %330, i32 128)
  br label %332

332:                                              ; preds = %329, %326
  br label %333

333:                                              ; preds = %332, %323
  br label %334

334:                                              ; preds = %333, %316
  store i32 -1, i32* %7, align 4
  store i32 1, i32* %28, align 4
  br label %335

335:                                              ; preds = %334, %309, %227, %221, %130, %114, %108, %78
  %336 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %336)
  %337 = load i32, i32* %7, align 4
  ret i32 %337
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @RES_SET_H_ERRNO(%struct.TYPE_8__*, i32) #2

declare dso_local i8* @res_hostalias(%struct.TYPE_8__*, i8*, i8*, i32) #2

declare dso_local i32 @res_nquery(%struct.TYPE_8__*, i8*, i32, i32, i32*, i32) #2

declare dso_local i32 @res_nquerydomain(%struct.TYPE_8__*, i8*, i8*, i32, i32, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
