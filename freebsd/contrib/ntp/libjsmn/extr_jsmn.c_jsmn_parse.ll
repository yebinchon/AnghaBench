; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libjsmn/extr_jsmn.c_jsmn_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libjsmn/extr_jsmn.c_jsmn_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32, i32 }
%struct.TYPE_12__ = type { i32, i8*, i32, i32, i32 }

@JSMN_ERROR_NOMEM = common dso_local global i32 0, align 4
@JSMN_OBJECT = common dso_local global i8* null, align 8
@JSMN_ARRAY = common dso_local global i8* null, align 8
@JSMN_ERROR_INVAL = common dso_local global i32 0, align 4
@JSMN_ERROR_PART = common dso_local global i32 0, align 4
@JSMN_STRING = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jsmn_parse(%struct.TYPE_13__* %0, i8* %1, i64 %2, %struct.TYPE_12__* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  %17 = alloca i8*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %15, align 4
  br label %18

18:                                               ; preds = %338, %5
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %9, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %18
  %25 = load i8*, i8** %8, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i8, i8* %25, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 0
  br label %33

33:                                               ; preds = %24, %18
  %34 = phi i1 [ false, %18 ], [ %32, %24 ]
  br i1 %34, label %35, label %343

35:                                               ; preds = %33
  %36 = load i8*, i8** %8, align 8
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i8, i8* %36, i64 %39
  %41 = load i8, i8* %40, align 1
  store i8 %41, i8* %16, align 1
  %42 = load i8, i8* %16, align 1
  %43 = sext i8 %42 to i32
  switch i32 %43, label %305 [
    i32 123, label %44
    i32 91, label %44
    i32 125, label %98
    i32 93, label %98
    i32 34, label %187
    i32 9, label %219
    i32 13, label %219
    i32 10, label %219
    i32 32, label %219
    i32 58, label %220
    i32 44, label %227
  ]

44:                                               ; preds = %35, %35
  %45 = load i32, i32* %15, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %15, align 4
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %48 = icmp eq %struct.TYPE_12__* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %337

50:                                               ; preds = %44
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %53 = load i32, i32* %11, align 4
  %54 = call %struct.TYPE_12__* @jsmn_alloc_token(%struct.TYPE_13__* %51, %struct.TYPE_12__* %52, i32 %53)
  store %struct.TYPE_12__* %54, %struct.TYPE_12__** %14, align 8
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %56 = icmp eq %struct.TYPE_12__* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i32, i32* @JSMN_ERROR_NOMEM, align 4
  store i32 %58, i32* %6, align 4
  br label %379

59:                                               ; preds = %50
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, -1
  br i1 %63, label %64, label %74

64:                                               ; preds = %59
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 8
  br label %74

74:                                               ; preds = %64, %59
  %75 = load i8, i8* %16, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 123
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = load i8*, i8** @JSMN_OBJECT, align 8
  br label %82

80:                                               ; preds = %74
  %81 = load i8*, i8** @JSMN_ARRAY, align 8
  br label %82

82:                                               ; preds = %80, %78
  %83 = phi i8* [ %79, %78 ], [ %81, %80 ]
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 1
  store i8* %83, i8** %85, align 8
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = trunc i64 %88 to i32
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 8
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = sub nsw i32 %94, 1
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 8
  br label %337

98:                                               ; preds = %35, %35
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %100 = icmp eq %struct.TYPE_12__* %99, null
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  br label %337

102:                                              ; preds = %98
  %103 = load i8, i8* %16, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 %104, 125
  br i1 %105, label %106, label %108

106:                                              ; preds = %102
  %107 = load i8*, i8** @JSMN_OBJECT, align 8
  br label %110

108:                                              ; preds = %102
  %109 = load i8*, i8** @JSMN_ARRAY, align 8
  br label %110

110:                                              ; preds = %108, %106
  %111 = phi i8* [ %107, %106 ], [ %109, %108 ]
  store i8* %111, i8** %17, align 8
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = sub nsw i32 %114, 1
  store i32 %115, i32* %13, align 4
  br label %116

116:                                              ; preds = %152, %110
  %117 = load i32, i32* %13, align 4
  %118 = icmp sge i32 %117, 0
  br i1 %118, label %119, label %155

119:                                              ; preds = %116
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %121 = load i32, i32* %13, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i64 %122
  store %struct.TYPE_12__* %123, %struct.TYPE_12__** %14, align 8
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = icmp ne i32 %126, -1
  br i1 %127, label %128, label %151

128:                                              ; preds = %119
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = icmp eq i32 %131, -1
  br i1 %132, label %133, label %151

133:                                              ; preds = %128
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 1
  %136 = load i8*, i8** %135, align 8
  %137 = load i8*, i8** %17, align 8
  %138 = icmp ne i8* %136, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %133
  %140 = load i32, i32* @JSMN_ERROR_INVAL, align 4
  store i32 %140, i32* %6, align 4
  br label %379

141:                                              ; preds = %133
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 1
  store i32 -1, i32* %143, align 8
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = add i64 %146, 1
  %148 = trunc i64 %147 to i32
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 3
  store i32 %148, i32* %150, align 4
  br label %155

151:                                              ; preds = %128, %119
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %13, align 4
  %154 = add nsw i32 %153, -1
  store i32 %154, i32* %13, align 4
  br label %116

155:                                              ; preds = %141, %116
  %156 = load i32, i32* %13, align 4
  %157 = icmp eq i32 %156, -1
  br i1 %157, label %158, label %160

158:                                              ; preds = %155
  %159 = load i32, i32* @JSMN_ERROR_INVAL, align 4
  store i32 %159, i32* %6, align 4
  br label %379

160:                                              ; preds = %155
  br label %161

161:                                              ; preds = %183, %160
  %162 = load i32, i32* %13, align 4
  %163 = icmp sge i32 %162, 0
  br i1 %163, label %164, label %186

164:                                              ; preds = %161
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %166 = load i32, i32* %13, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i64 %167
  store %struct.TYPE_12__* %168, %struct.TYPE_12__** %14, align 8
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = icmp ne i32 %171, -1
  br i1 %172, label %173, label %182

173:                                              ; preds = %164
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 4
  %177 = icmp eq i32 %176, -1
  br i1 %177, label %178, label %182

178:                                              ; preds = %173
  %179 = load i32, i32* %13, align 4
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 1
  store i32 %179, i32* %181, align 8
  br label %186

182:                                              ; preds = %173, %164
  br label %183

183:                                              ; preds = %182
  %184 = load i32, i32* %13, align 4
  %185 = add nsw i32 %184, -1
  store i32 %185, i32* %13, align 4
  br label %161

186:                                              ; preds = %178, %161
  br label %337

187:                                              ; preds = %35
  %188 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %189 = load i8*, i8** %8, align 8
  %190 = load i64, i64* %9, align 8
  %191 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %192 = load i32, i32* %11, align 4
  %193 = call i32 @jsmn_parse_string(%struct.TYPE_13__* %188, i8* %189, i64 %190, %struct.TYPE_12__* %191, i32 %192)
  store i32 %193, i32* %12, align 4
  %194 = load i32, i32* %12, align 4
  %195 = icmp slt i32 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %187
  %197 = load i32, i32* %12, align 4
  store i32 %197, i32* %6, align 4
  br label %379

198:                                              ; preds = %187
  %199 = load i32, i32* %15, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %15, align 4
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 8
  %204 = icmp ne i32 %203, -1
  br i1 %204, label %205, label %218

205:                                              ; preds = %198
  %206 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %207 = icmp ne %struct.TYPE_12__* %206, null
  br i1 %207, label %208, label %218

208:                                              ; preds = %205
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %210 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 8
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %214, i32 0, i32 4
  %216 = load i32, i32* %215, align 8
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %215, align 8
  br label %218

218:                                              ; preds = %208, %205, %198
  br label %337

219:                                              ; preds = %35, %35, %35, %35
  br label %337

220:                                              ; preds = %35
  %221 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %222 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 4
  %224 = sub nsw i32 %223, 1
  %225 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %226 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %225, i32 0, i32 1
  store i32 %224, i32* %226, align 8
  br label %337

227:                                              ; preds = %35
  %228 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %229 = icmp ne %struct.TYPE_12__* %228, null
  br i1 %229, label %230, label %304

230:                                              ; preds = %227
  %231 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %232 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %233 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 8
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %231, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %236, i32 0, i32 1
  %238 = load i8*, i8** %237, align 8
  %239 = load i8*, i8** @JSMN_ARRAY, align 8
  %240 = icmp ne i8* %238, %239
  br i1 %240, label %241, label %304

241:                                              ; preds = %230
  %242 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %243 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %244 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 8
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %242, i64 %246
  %248 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %247, i32 0, i32 1
  %249 = load i8*, i8** %248, align 8
  %250 = load i8*, i8** @JSMN_OBJECT, align 8
  %251 = icmp ne i8* %249, %250
  br i1 %251, label %252, label %304

252:                                              ; preds = %241
  %253 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %254 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 4
  %256 = sub nsw i32 %255, 1
  store i32 %256, i32* %13, align 4
  br label %257

257:                                              ; preds = %300, %252
  %258 = load i32, i32* %13, align 4
  %259 = icmp sge i32 %258, 0
  br i1 %259, label %260, label %303

260:                                              ; preds = %257
  %261 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %262 = load i32, i32* %13, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %261, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %264, i32 0, i32 1
  %266 = load i8*, i8** %265, align 8
  %267 = load i8*, i8** @JSMN_ARRAY, align 8
  %268 = icmp eq i8* %266, %267
  br i1 %268, label %278, label %269

269:                                              ; preds = %260
  %270 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %271 = load i32, i32* %13, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %270, i64 %272
  %274 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %273, i32 0, i32 1
  %275 = load i8*, i8** %274, align 8
  %276 = load i8*, i8** @JSMN_OBJECT, align 8
  %277 = icmp eq i8* %275, %276
  br i1 %277, label %278, label %299

278:                                              ; preds = %269, %260
  %279 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %280 = load i32, i32* %13, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %279, i64 %281
  %283 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %282, i32 0, i32 2
  %284 = load i32, i32* %283, align 8
  %285 = icmp ne i32 %284, -1
  br i1 %285, label %286, label %298

286:                                              ; preds = %278
  %287 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %288 = load i32, i32* %13, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %287, i64 %289
  %291 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %290, i32 0, i32 3
  %292 = load i32, i32* %291, align 4
  %293 = icmp eq i32 %292, -1
  br i1 %293, label %294, label %298

294:                                              ; preds = %286
  %295 = load i32, i32* %13, align 4
  %296 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %297 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %296, i32 0, i32 1
  store i32 %295, i32* %297, align 8
  br label %303

298:                                              ; preds = %286, %278
  br label %299

299:                                              ; preds = %298, %269
  br label %300

300:                                              ; preds = %299
  %301 = load i32, i32* %13, align 4
  %302 = add nsw i32 %301, -1
  store i32 %302, i32* %13, align 4
  br label %257

303:                                              ; preds = %294, %257
  br label %304

304:                                              ; preds = %303, %241, %230, %227
  br label %337

305:                                              ; preds = %35
  %306 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %307 = load i8*, i8** %8, align 8
  %308 = load i64, i64* %9, align 8
  %309 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %310 = load i32, i32* %11, align 4
  %311 = call i32 @jsmn_parse_primitive(%struct.TYPE_13__* %306, i8* %307, i64 %308, %struct.TYPE_12__* %309, i32 %310)
  store i32 %311, i32* %12, align 4
  %312 = load i32, i32* %12, align 4
  %313 = icmp slt i32 %312, 0
  br i1 %313, label %314, label %316

314:                                              ; preds = %305
  %315 = load i32, i32* %12, align 4
  store i32 %315, i32* %6, align 4
  br label %379

316:                                              ; preds = %305
  %317 = load i32, i32* %15, align 4
  %318 = add nsw i32 %317, 1
  store i32 %318, i32* %15, align 4
  %319 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %320 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %319, i32 0, i32 1
  %321 = load i32, i32* %320, align 8
  %322 = icmp ne i32 %321, -1
  br i1 %322, label %323, label %336

323:                                              ; preds = %316
  %324 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %325 = icmp ne %struct.TYPE_12__* %324, null
  br i1 %325, label %326, label %336

326:                                              ; preds = %323
  %327 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %328 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %329 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %328, i32 0, i32 1
  %330 = load i32, i32* %329, align 8
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %327, i64 %331
  %333 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %332, i32 0, i32 4
  %334 = load i32, i32* %333, align 8
  %335 = add nsw i32 %334, 1
  store i32 %335, i32* %333, align 8
  br label %336

336:                                              ; preds = %326, %323, %316
  br label %337

337:                                              ; preds = %336, %304, %220, %219, %218, %186, %101, %82, %49
  br label %338

338:                                              ; preds = %337
  %339 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %340 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %339, i32 0, i32 0
  %341 = load i64, i64* %340, align 8
  %342 = add i64 %341, 1
  store i64 %342, i64* %340, align 8
  br label %18

343:                                              ; preds = %33
  %344 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %345 = icmp ne %struct.TYPE_12__* %344, null
  br i1 %345, label %346, label %377

346:                                              ; preds = %343
  %347 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %348 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %347, i32 0, i32 2
  %349 = load i32, i32* %348, align 4
  %350 = sub nsw i32 %349, 1
  store i32 %350, i32* %13, align 4
  br label %351

351:                                              ; preds = %373, %346
  %352 = load i32, i32* %13, align 4
  %353 = icmp sge i32 %352, 0
  br i1 %353, label %354, label %376

354:                                              ; preds = %351
  %355 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %356 = load i32, i32* %13, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %355, i64 %357
  %359 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %358, i32 0, i32 2
  %360 = load i32, i32* %359, align 8
  %361 = icmp ne i32 %360, -1
  br i1 %361, label %362, label %372

362:                                              ; preds = %354
  %363 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %364 = load i32, i32* %13, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %363, i64 %365
  %367 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %366, i32 0, i32 3
  %368 = load i32, i32* %367, align 4
  %369 = icmp eq i32 %368, -1
  br i1 %369, label %370, label %372

370:                                              ; preds = %362
  %371 = load i32, i32* @JSMN_ERROR_PART, align 4
  store i32 %371, i32* %6, align 4
  br label %379

372:                                              ; preds = %362, %354
  br label %373

373:                                              ; preds = %372
  %374 = load i32, i32* %13, align 4
  %375 = add nsw i32 %374, -1
  store i32 %375, i32* %13, align 4
  br label %351

376:                                              ; preds = %351
  br label %377

377:                                              ; preds = %376, %343
  %378 = load i32, i32* %15, align 4
  store i32 %378, i32* %6, align 4
  br label %379

379:                                              ; preds = %377, %370, %314, %196, %158, %139, %57
  %380 = load i32, i32* %6, align 4
  ret i32 %380
}

declare dso_local %struct.TYPE_12__* @jsmn_alloc_token(%struct.TYPE_13__*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @jsmn_parse_string(%struct.TYPE_13__*, i8*, i64, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @jsmn_parse_primitive(%struct.TYPE_13__*, i8*, i64, %struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
