; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libiconv_modules/HZ/extr_citrus_hz.c__citrus_HZ_mbrtowc_priv.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libiconv_modules/HZ/extr_citrus_hz.c__citrus_HZ_mbrtowc_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32*, i32* }
%struct.TYPE_10__ = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@MB_LEN_MAX = common dso_local global i32 0, align 4
@ESCAPE_CHAR = common dso_local global i32 0, align 4
@ranges = common dso_local global %struct.TYPE_9__* null, align 8
@GB2312 = common dso_local global i64 0, align 8
@EILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8**, i64, %struct.TYPE_11__*, i64*)* @_citrus_HZ_mbrtowc_priv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_citrus_HZ_mbrtowc_priv(i32* noalias %0, i32* noalias %1, i8** noalias %2, i64 %3, %struct.TYPE_11__* noalias %4, i64* noalias %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_10__*, align 8
  %17 = alloca %struct.TYPE_9__*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8** %2, i8*** %10, align 8
  store i64 %3, i64* %11, align 8
  store %struct.TYPE_11__* %4, %struct.TYPE_11__** %12, align 8
  store i64* %5, i64** %13, align 8
  %25 = load i8**, i8*** %10, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %6
  %29 = load i32*, i32** %8, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %31 = call i32 @_citrus_HZ_init_state(i32* %29, %struct.TYPE_11__* %30)
  %32 = load i64*, i64** %13, align 8
  store i64 1, i64* %32, align 8
  store i32 0, i32* %7, align 4
  br label %340

33:                                               ; preds = %6
  %34 = load i8**, i8*** %10, align 8
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %18, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %33
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %40, %33
  %46 = load i32, i32* @EINVAL, align 4
  store i32 %46, i32* %7, align 4
  br label %340

47:                                               ; preds = %40
  store i32 0, i32* %19, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %20, align 4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %16, align 8
  store i32 0, i32* %23, align 4
  br label %48

48:                                               ; preds = %308, %226, %172, %128, %47
  %49 = load i32, i32* %23, align 4
  %50 = load i32, i32* @MB_LEN_MAX, align 4
  %51 = icmp sle i32 %49, %50
  br i1 %51, label %52, label %309

52:                                               ; preds = %48
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %24, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %82

58:                                               ; preds = %52
  %59 = load i64, i64* %11, align 8
  %60 = add i64 %59, -1
  store i64 %60, i64* %11, align 8
  %61 = icmp ult i64 %59, 1
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load i8*, i8** %18, align 8
  %64 = load i8**, i8*** %10, align 8
  store i8* %63, i8** %64, align 8
  %65 = load i64*, i64** %13, align 8
  store i64 -2, i64* %65, align 8
  store i32 0, i32* %7, align 4
  br label %340

66:                                               ; preds = %58
  %67 = load i8*, i8** %18, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %18, align 8
  %69 = load i8, i8* %67, align 1
  %70 = sext i8 %69 to i32
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 8
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i32, i32* %73, i64 %78
  store i32 %70, i32* %79, align 4
  %80 = load i32, i32* %23, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %23, align 4
  br label %82

82:                                               ; preds = %66, %52
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %24, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %24, align 4
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds i32, i32* %85, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = trunc i32 %90 to i8
  %92 = zext i8 %91 to i32
  store i32 %92, i32* %21, align 4
  %93 = load i32, i32* %24, align 4
  %94 = icmp eq i32 %93, 1
  br i1 %94, label %95, label %135

95:                                               ; preds = %82
  %96 = load i32, i32* %21, align 4
  %97 = and i32 %96, -129
  %98 = icmp sle i32 %97, 31
  br i1 %98, label %99, label %109

99:                                               ; preds = %95
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = load i32*, i32** %8, align 8
  %104 = call i32* @INIT0(i32* %103)
  %105 = icmp ne i32* %102, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %99
  br label %309

107:                                              ; preds = %99
  %108 = load i32, i32* %21, align 4
  store i32 %108, i32* %19, align 4
  br label %312

109:                                              ; preds = %95
  %110 = load i32, i32* %21, align 4
  %111 = and i32 %110, 128
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %120

113:                                              ; preds = %109
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 2
  %116 = load i32*, i32** %115, align 8
  %117 = call %struct.TYPE_10__* @GR(i32* %116)
  store %struct.TYPE_10__* %117, %struct.TYPE_10__** %16, align 8
  store i32 128, i32* %20, align 4
  %118 = load i32, i32* %21, align 4
  %119 = and i32 %118, -129
  store i32 %119, i32* %21, align 4
  br label %130

120:                                              ; preds = %109
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 2
  %123 = load i32*, i32** %122, align 8
  %124 = call %struct.TYPE_10__* @GL(i32* %123)
  store %struct.TYPE_10__* %124, %struct.TYPE_10__** %16, align 8
  %125 = load i32, i32* %21, align 4
  %126 = load i32, i32* @ESCAPE_CHAR, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %120
  br label %48

129:                                              ; preds = %120
  store i32 0, i32* %20, align 4
  br label %130

130:                                              ; preds = %129, %113
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %132 = icmp eq %struct.TYPE_10__* %131, null
  br i1 %132, label %133, label %134

133:                                              ; preds = %130
  br label %309

134:                                              ; preds = %130
  br label %259

135:                                              ; preds = %82
  %136 = load i32, i32* %24, align 4
  %137 = icmp eq i32 %136, 2
  br i1 %137, label %138, label %233

138:                                              ; preds = %135
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 1
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @ESCAPE_CHAR, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %233

146:                                              ; preds = %138
  %147 = load i32, i32* %24, align 4
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = icmp slt i32 %147, %150
  br i1 %151, label %152, label %154

152:                                              ; preds = %146
  %153 = load i32, i32* @EINVAL, align 4
  store i32 %153, i32* %7, align 4
  br label %340

154:                                              ; preds = %146
  %155 = load i32, i32* %21, align 4
  %156 = load i32, i32* @ESCAPE_CHAR, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %161

158:                                              ; preds = %154
  %159 = load i32, i32* %22, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %22, align 4
  br label %232

161:                                              ; preds = %154
  %162 = load i32, i32* %21, align 4
  %163 = icmp eq i32 %162, 10
  br i1 %163, label %164, label %175

164:                                              ; preds = %161
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 2
  %167 = load i32*, i32** %166, align 8
  %168 = load i32*, i32** %8, align 8
  %169 = call i32* @INIT0(i32* %168)
  %170 = icmp ne i32* %167, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %164
  br label %309

172:                                              ; preds = %164
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 0
  store i32 0, i32* %174, align 8
  store i32 0, i32* %24, align 4
  br label %48

175:                                              ; preds = %161
  store i32* null, i32** %14, align 8
  %176 = load i32*, i32** %8, align 8
  %177 = call i32* @INIT0(i32* %176)
  store i32* %177, i32** %15, align 8
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 2
  %180 = load i32*, i32** %179, align 8
  %181 = load i32*, i32** %15, align 8
  %182 = icmp eq i32* %180, %181
  br i1 %182, label %183, label %186

183:                                              ; preds = %175
  %184 = load i32*, i32** %8, align 8
  %185 = call i32* @INIT1(i32* %184)
  store i32* %185, i32** %15, align 8
  br label %202

186:                                              ; preds = %175
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 2
  %189 = load i32*, i32** %188, align 8
  %190 = call i32* @INIT(i32* %189)
  %191 = load i32*, i32** %15, align 8
  %192 = icmp eq i32* %190, %191
  br i1 %192, label %193, label %201

193:                                              ; preds = %186
  %194 = load i32*, i32** %15, align 8
  %195 = call i32 @ESC(i32* %194)
  %196 = load i32, i32* %21, align 4
  %197 = icmp ne i32 %195, %196
  br i1 %197, label %198, label %199

198:                                              ; preds = %193
  br label %309

199:                                              ; preds = %193
  %200 = load i32*, i32** %15, align 8
  store i32* %200, i32** %14, align 8
  br label %201

201:                                              ; preds = %199, %186
  br label %202

202:                                              ; preds = %201, %183
  %203 = load i32*, i32** %14, align 8
  %204 = icmp eq i32* %203, null
  br i1 %204, label %205, label %226

205:                                              ; preds = %202
  %206 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 2
  %208 = load i32*, i32** %207, align 8
  %209 = call i32 @SET(i32* %208)
  %210 = load i32, i32* %21, align 4
  %211 = call i32* @find_escape(i32 %209, i32 %210)
  store i32* %211, i32** %14, align 8
  %212 = load i32*, i32** %14, align 8
  %213 = icmp eq i32* %212, null
  br i1 %213, label %214, label %225

214:                                              ; preds = %205
  %215 = load i32*, i32** %15, align 8
  %216 = icmp eq i32* %215, null
  br i1 %216, label %222, label %217

217:                                              ; preds = %214
  %218 = load i32*, i32** %15, align 8
  %219 = call i32 @ESC(i32* %218)
  %220 = load i32, i32* %21, align 4
  %221 = icmp ne i32 %219, %220
  br i1 %221, label %222, label %223

222:                                              ; preds = %217, %214
  br label %309

223:                                              ; preds = %217
  %224 = load i32*, i32** %15, align 8
  store i32* %224, i32** %14, align 8
  br label %225

225:                                              ; preds = %223, %205
  br label %226

226:                                              ; preds = %225, %202
  %227 = load i32*, i32** %14, align 8
  %228 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %229 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %228, i32 0, i32 2
  store i32* %227, i32** %229, align 8
  %230 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %231 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %230, i32 0, i32 0
  store i32 0, i32* %231, align 8
  store i32 0, i32* %24, align 4
  br label %48

232:                                              ; preds = %158
  br label %258

233:                                              ; preds = %138, %135
  %234 = load i32, i32* %21, align 4
  %235 = and i32 %234, 128
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %248

237:                                              ; preds = %233
  %238 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %239 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %240 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %239, i32 0, i32 2
  %241 = load i32*, i32** %240, align 8
  %242 = call %struct.TYPE_10__* @GR(i32* %241)
  %243 = icmp ne %struct.TYPE_10__* %238, %242
  br i1 %243, label %244, label %245

244:                                              ; preds = %237
  br label %309

245:                                              ; preds = %237
  %246 = load i32, i32* %21, align 4
  %247 = and i32 %246, -129
  store i32 %247, i32* %21, align 4
  br label %257

248:                                              ; preds = %233
  %249 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %250 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %251 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %250, i32 0, i32 2
  %252 = load i32*, i32** %251, align 8
  %253 = call %struct.TYPE_10__* @GL(i32* %252)
  %254 = icmp ne %struct.TYPE_10__* %249, %253
  br i1 %254, label %255, label %256

255:                                              ; preds = %248
  br label %309

256:                                              ; preds = %248
  br label %257

257:                                              ; preds = %256, %245
  br label %258

258:                                              ; preds = %257, %232
  br label %259

259:                                              ; preds = %258, %134
  %260 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ranges, align 8
  %261 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %262 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %260, i64 %263
  store %struct.TYPE_9__* %264, %struct.TYPE_9__** %17, align 8
  %265 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %266 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = load i32, i32* %21, align 4
  %269 = icmp sgt i32 %267, %268
  br i1 %269, label %276, label %270

270:                                              ; preds = %259
  %271 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %272 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = load i32, i32* %21, align 4
  %275 = icmp slt i32 %273, %274
  br i1 %275, label %276, label %277

276:                                              ; preds = %270, %259
  br label %309

277:                                              ; preds = %270
  %278 = load i32, i32* %19, align 4
  %279 = shl i32 %278, 8
  store i32 %279, i32* %19, align 4
  %280 = load i32, i32* %21, align 4
  %281 = load i32, i32* %19, align 4
  %282 = or i32 %281, %280
  store i32 %282, i32* %19, align 4
  %283 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %284 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 8
  %286 = load i32, i32* %24, align 4
  %287 = load i32, i32* %22, align 4
  %288 = sub nsw i32 %286, %287
  %289 = icmp eq i32 %285, %288
  br i1 %289, label %290, label %308

290:                                              ; preds = %277
  %291 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %292 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %291, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  %294 = load i64, i64* @GB2312, align 8
  %295 = icmp sgt i64 %293, %294
  br i1 %295, label %296, label %304

296:                                              ; preds = %290
  %297 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %298 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %297, i32 0, i32 2
  %299 = load i32*, i32** %298, align 8
  %300 = call i32 @ESC(i32* %299)
  %301 = shl i32 %300, 24
  %302 = load i32, i32* %20, align 4
  %303 = or i32 %302, %301
  store i32 %303, i32* %20, align 4
  br label %304

304:                                              ; preds = %296, %290
  %305 = load i32, i32* %20, align 4
  %306 = load i32, i32* %19, align 4
  %307 = or i32 %306, %305
  store i32 %307, i32* %19, align 4
  br label %312

308:                                              ; preds = %277
  br label %48

309:                                              ; preds = %276, %255, %244, %222, %198, %171, %133, %106, %48
  %310 = load i64*, i64** %13, align 8
  store i64 -1, i64* %310, align 8
  %311 = load i32, i32* @EILSEQ, align 4
  store i32 %311, i32* %7, align 4
  br label %340

312:                                              ; preds = %304, %107
  %313 = load i32, i32* %24, align 4
  %314 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %315 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 8
  %317 = icmp slt i32 %313, %316
  br i1 %317, label %318, label %320

318:                                              ; preds = %312
  %319 = load i32, i32* @EINVAL, align 4
  store i32 %319, i32* %7, align 4
  br label %340

320:                                              ; preds = %312
  %321 = load i8*, i8** %18, align 8
  %322 = load i8**, i8*** %10, align 8
  store i8* %321, i8** %322, align 8
  %323 = load i32*, i32** %9, align 8
  %324 = icmp ne i32* %323, null
  br i1 %324, label %325, label %328

325:                                              ; preds = %320
  %326 = load i32, i32* %19, align 4
  %327 = load i32*, i32** %9, align 8
  store i32 %326, i32* %327, align 4
  br label %328

328:                                              ; preds = %325, %320
  %329 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %330 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %329, i32 0, i32 0
  store i32 0, i32* %330, align 8
  %331 = load i32, i32* %19, align 4
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %333, label %334

333:                                              ; preds = %328
  br label %336

334:                                              ; preds = %328
  %335 = load i32, i32* %23, align 4
  br label %336

336:                                              ; preds = %334, %333
  %337 = phi i32 [ 0, %333 ], [ %335, %334 ]
  %338 = sext i32 %337 to i64
  %339 = load i64*, i64** %13, align 8
  store i64 %338, i64* %339, align 8
  store i32 0, i32* %7, align 4
  br label %340

340:                                              ; preds = %336, %318, %309, %152, %62, %45, %28
  %341 = load i32, i32* %7, align 4
  ret i32 %341
}

declare dso_local i32 @_citrus_HZ_init_state(i32*, %struct.TYPE_11__*) #1

declare dso_local i32* @INIT0(i32*) #1

declare dso_local %struct.TYPE_10__* @GR(i32*) #1

declare dso_local %struct.TYPE_10__* @GL(i32*) #1

declare dso_local i32* @INIT1(i32*) #1

declare dso_local i32* @INIT(i32*) #1

declare dso_local i32 @ESC(i32*) #1

declare dso_local i32* @find_escape(i32, i32) #1

declare dso_local i32 @SET(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
