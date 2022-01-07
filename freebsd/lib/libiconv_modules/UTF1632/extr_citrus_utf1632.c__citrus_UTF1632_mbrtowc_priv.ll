; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libiconv_modules/UTF1632/extr_citrus_utf1632.c__citrus_UTF1632_mbrtowc_priv.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libiconv_modules/UTF1632/extr_citrus_utf1632.c__citrus_UTF1632_mbrtowc_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32*, i32 }

@_MODE_UTF32 = common dso_local global i32 0, align 4
@_MODE_FORCE_ENDIAN = common dso_local global i32 0, align 4
@_ENDIAN_UNKNOWN = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32*, i8**, i64, %struct.TYPE_7__*, i64*)* @_citrus_UTF1632_mbrtowc_priv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_citrus_UTF1632_mbrtowc_priv(%struct.TYPE_8__* %0, i32* %1, i8** %2, i64 %3, %struct.TYPE_7__* %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8** %2, i8*** %10, align 8
  store i64 %3, i64* %11, align 8
  store %struct.TYPE_7__* %4, %struct.TYPE_7__** %12, align 8
  store i64* %5, i64** %13, align 8
  store i32 0, i32* %16, align 4
  %20 = load i8**, i8*** %10, align 8
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %14, align 8
  %22 = load i8*, i8** %14, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %6
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %27 = call i32 @_citrus_UTF1632_init_state(%struct.TYPE_8__* %25, %struct.TYPE_7__* %26)
  %28 = load i64*, i64** %13, align 8
  store i64 0, i64* %28, align 8
  store i32 0, i32* %7, align 4
  br label %408

29:                                               ; preds = %6
  store i64 0, i64* %15, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %17, align 4
  br label %33

33:                                               ; preds = %245, %173, %142, %109, %92, %29
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @_MODE_UTF32, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %33
  %41 = load i32, i32* %17, align 4
  %42 = icmp sge i32 %41, 2
  br label %43

43:                                               ; preds = %40, %33
  %44 = phi i1 [ true, %33 ], [ %42, %40 ]
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 4, i32 2
  store i32 %46, i32* %19, align 4
  br label %47

47:                                               ; preds = %55, %43
  %48 = load i32, i32* %17, align 4
  %49 = load i32, i32* %19, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %71

51:                                               ; preds = %47
  %52 = load i64, i64* %11, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  br label %401

55:                                               ; preds = %51
  %56 = load i8*, i8** %14, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %14, align 8
  %58 = load i8, i8* %56, align 1
  %59 = sext i8 %58 to i32
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %17, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %17, align 4
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  store i32 %59, i32* %66, align 4
  %67 = load i64, i64* %11, align 8
  %68 = add i64 %67, -1
  store i64 %68, i64* %11, align 8
  %69 = load i64, i64* %15, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %15, align 8
  br label %47

71:                                               ; preds = %47
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @_MODE_UTF32, align 4
  %76 = and i32 %74, %75
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %114

78:                                               ; preds = %71
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %83, 254
  br i1 %84, label %85, label %95

85:                                               ; preds = %78
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %90, 255
  br i1 %91, label %92, label %95

92:                                               ; preds = %85
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 2
  store i32 129, i32* %94, align 8
  store i32 0, i32* %17, align 4
  br label %33

95:                                               ; preds = %85, %78
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  %100 = load i32, i32* %99, align 4
  %101 = icmp eq i32 %100, 255
  br i1 %101, label %102, label %112

102:                                              ; preds = %95
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %107, 254
  br i1 %108, label %109, label %112

109:                                              ; preds = %102
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 2
  store i32 128, i32* %111, align 8
  store i32 0, i32* %17, align 4
  br label %33

112:                                              ; preds = %102, %95
  br label %113

113:                                              ; preds = %112
  br label %178

114:                                              ; preds = %71
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 0
  %119 = load i32, i32* %118, align 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %145

121:                                              ; preds = %114
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 1
  %126 = load i32, i32* %125, align 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %145

128:                                              ; preds = %121
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 2
  %133 = load i32, i32* %132, align 4
  %134 = icmp eq i32 %133, 254
  br i1 %134, label %135, label %145

135:                                              ; preds = %128
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 3
  %140 = load i32, i32* %139, align 4
  %141 = icmp eq i32 %140, 255
  br i1 %141, label %142, label %145

142:                                              ; preds = %135
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 2
  store i32 129, i32* %144, align 8
  store i32 0, i32* %17, align 4
  br label %33

145:                                              ; preds = %135, %128, %121, %114
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 0
  %150 = load i32, i32* %149, align 4
  %151 = icmp eq i32 %150, 255
  br i1 %151, label %152, label %176

152:                                              ; preds = %145
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 1
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 1
  %157 = load i32, i32* %156, align 4
  %158 = icmp eq i32 %157, 254
  br i1 %158, label %159, label %176

159:                                              ; preds = %152
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 1
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 2
  %164 = load i32, i32* %163, align 4
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %176

166:                                              ; preds = %159
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 1
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 3
  %171 = load i32, i32* %170, align 4
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %166
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 2
  store i32 128, i32* %175, align 8
  store i32 0, i32* %17, align 4
  br label %33

176:                                              ; preds = %166, %159, %152, %145
  br label %177

177:                                              ; preds = %176
  br label %178

178:                                              ; preds = %177, %113
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @_MODE_FORCE_ENDIAN, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %191, label %185

185:                                              ; preds = %178
  %186 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @_ENDIAN_UNKNOWN, align 4
  %190 = icmp eq i32 %188, %189
  br i1 %190, label %191, label %195

191:                                              ; preds = %185, %178
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  br label %199

195:                                              ; preds = %185
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  br label %199

199:                                              ; preds = %195, %191
  %200 = phi i32 [ %194, %191 ], [ %198, %195 ]
  store i32 %200, i32* %18, align 4
  %201 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @_MODE_UTF32, align 4
  %205 = and i32 %203, %204
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %322

207:                                              ; preds = %199
  %208 = load i32, i32* %19, align 4
  %209 = icmp eq i32 %208, 2
  br i1 %209, label %210, label %247

210:                                              ; preds = %207
  %211 = load i32, i32* %18, align 4
  switch i32 %211, label %238 [
    i32 128, label %212
    i32 129, label %225
  ]

212:                                              ; preds = %210
  %213 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 1
  %215 = load i32*, i32** %214, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 0
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 1
  %220 = load i32*, i32** %219, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 1
  %222 = load i32, i32* %221, align 4
  %223 = shl i32 %222, 8
  %224 = or i32 %217, %223
  store i32 %224, i32* %16, align 4
  br label %239

225:                                              ; preds = %210
  %226 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %227 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %226, i32 0, i32 1
  %228 = load i32*, i32** %227, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 1
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i32 0, i32 1
  %233 = load i32*, i32** %232, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 0
  %235 = load i32, i32* %234, align 4
  %236 = shl i32 %235, 8
  %237 = or i32 %230, %236
  store i32 %237, i32* %16, align 4
  br label %239

238:                                              ; preds = %210
  br label %396

239:                                              ; preds = %225, %212
  %240 = load i32, i32* %16, align 4
  %241 = icmp sge i32 %240, 55296
  br i1 %241, label %242, label %246

242:                                              ; preds = %239
  %243 = load i32, i32* %16, align 4
  %244 = icmp sle i32 %243, 56319
  br i1 %244, label %245, label %246

245:                                              ; preds = %242
  store i32 4, i32* %19, align 4
  br label %33

246:                                              ; preds = %242, %239
  br label %321

247:                                              ; preds = %207
  %248 = load i32, i32* %16, align 4
  %249 = sub nsw i32 %248, 55296
  store i32 %249, i32* %16, align 4
  %250 = load i32, i32* %16, align 4
  %251 = shl i32 %250, 10
  store i32 %251, i32* %16, align 4
  %252 = load i32, i32* %18, align 4
  switch i32 %252, label %317 [
    i32 128, label %253
    i32 129, label %285
  ]

253:                                              ; preds = %247
  %254 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %255 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %254, i32 0, i32 1
  %256 = load i32*, i32** %255, align 8
  %257 = getelementptr inbounds i32, i32* %256, i64 3
  %258 = load i32, i32* %257, align 4
  %259 = icmp slt i32 %258, 220
  br i1 %259, label %267, label %260

260:                                              ; preds = %253
  %261 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %262 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %261, i32 0, i32 1
  %263 = load i32*, i32** %262, align 8
  %264 = getelementptr inbounds i32, i32* %263, i64 3
  %265 = load i32, i32* %264, align 4
  %266 = icmp sgt i32 %265, 223
  br i1 %266, label %267, label %268

267:                                              ; preds = %260, %253
  br label %396

268:                                              ; preds = %260
  %269 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %270 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %269, i32 0, i32 1
  %271 = load i32*, i32** %270, align 8
  %272 = getelementptr inbounds i32, i32* %271, i64 2
  %273 = load i32, i32* %272, align 4
  %274 = load i32, i32* %16, align 4
  %275 = or i32 %274, %273
  store i32 %275, i32* %16, align 4
  %276 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %277 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %276, i32 0, i32 1
  %278 = load i32*, i32** %277, align 8
  %279 = getelementptr inbounds i32, i32* %278, i64 3
  %280 = load i32, i32* %279, align 4
  %281 = and i32 %280, 3
  %282 = shl i32 %281, 8
  %283 = load i32, i32* %16, align 4
  %284 = or i32 %283, %282
  store i32 %284, i32* %16, align 4
  br label %318

285:                                              ; preds = %247
  %286 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %287 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %286, i32 0, i32 1
  %288 = load i32*, i32** %287, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 2
  %290 = load i32, i32* %289, align 4
  %291 = icmp slt i32 %290, 220
  br i1 %291, label %299, label %292

292:                                              ; preds = %285
  %293 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %294 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %293, i32 0, i32 1
  %295 = load i32*, i32** %294, align 8
  %296 = getelementptr inbounds i32, i32* %295, i64 2
  %297 = load i32, i32* %296, align 4
  %298 = icmp sgt i32 %297, 223
  br i1 %298, label %299, label %300

299:                                              ; preds = %292, %285
  br label %396

300:                                              ; preds = %292
  %301 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %302 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %301, i32 0, i32 1
  %303 = load i32*, i32** %302, align 8
  %304 = getelementptr inbounds i32, i32* %303, i64 3
  %305 = load i32, i32* %304, align 4
  %306 = load i32, i32* %16, align 4
  %307 = or i32 %306, %305
  store i32 %307, i32* %16, align 4
  %308 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %309 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %308, i32 0, i32 1
  %310 = load i32*, i32** %309, align 8
  %311 = getelementptr inbounds i32, i32* %310, i64 2
  %312 = load i32, i32* %311, align 4
  %313 = and i32 %312, 3
  %314 = shl i32 %313, 8
  %315 = load i32, i32* %16, align 4
  %316 = or i32 %315, %314
  store i32 %316, i32* %16, align 4
  br label %318

317:                                              ; preds = %247
  br label %396

318:                                              ; preds = %300, %268
  %319 = load i32, i32* %16, align 4
  %320 = add nsw i32 %319, 65536
  store i32 %320, i32* %16, align 4
  br label %321

321:                                              ; preds = %318, %246
  br label %387

322:                                              ; preds = %199
  %323 = load i32, i32* %18, align 4
  switch i32 %323, label %378 [
    i32 128, label %324
    i32 129, label %351
  ]

324:                                              ; preds = %322
  %325 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %326 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %325, i32 0, i32 1
  %327 = load i32*, i32** %326, align 8
  %328 = getelementptr inbounds i32, i32* %327, i64 0
  %329 = load i32, i32* %328, align 4
  %330 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %331 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %330, i32 0, i32 1
  %332 = load i32*, i32** %331, align 8
  %333 = getelementptr inbounds i32, i32* %332, i64 1
  %334 = load i32, i32* %333, align 4
  %335 = shl i32 %334, 8
  %336 = or i32 %329, %335
  %337 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %338 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %337, i32 0, i32 1
  %339 = load i32*, i32** %338, align 8
  %340 = getelementptr inbounds i32, i32* %339, i64 2
  %341 = load i32, i32* %340, align 4
  %342 = shl i32 %341, 16
  %343 = or i32 %336, %342
  %344 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %345 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %344, i32 0, i32 1
  %346 = load i32*, i32** %345, align 8
  %347 = getelementptr inbounds i32, i32* %346, i64 3
  %348 = load i32, i32* %347, align 4
  %349 = shl i32 %348, 24
  %350 = or i32 %343, %349
  store i32 %350, i32* %16, align 4
  br label %379

351:                                              ; preds = %322
  %352 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %353 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %352, i32 0, i32 1
  %354 = load i32*, i32** %353, align 8
  %355 = getelementptr inbounds i32, i32* %354, i64 3
  %356 = load i32, i32* %355, align 4
  %357 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %358 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %357, i32 0, i32 1
  %359 = load i32*, i32** %358, align 8
  %360 = getelementptr inbounds i32, i32* %359, i64 2
  %361 = load i32, i32* %360, align 4
  %362 = shl i32 %361, 8
  %363 = or i32 %356, %362
  %364 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %365 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %364, i32 0, i32 1
  %366 = load i32*, i32** %365, align 8
  %367 = getelementptr inbounds i32, i32* %366, i64 1
  %368 = load i32, i32* %367, align 4
  %369 = shl i32 %368, 16
  %370 = or i32 %363, %369
  %371 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %372 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %371, i32 0, i32 1
  %373 = load i32*, i32** %372, align 8
  %374 = getelementptr inbounds i32, i32* %373, i64 0
  %375 = load i32, i32* %374, align 4
  %376 = shl i32 %375, 24
  %377 = or i32 %370, %376
  store i32 %377, i32* %16, align 4
  br label %379

378:                                              ; preds = %322
  br label %396

379:                                              ; preds = %351, %324
  %380 = load i32, i32* %16, align 4
  %381 = icmp sge i32 %380, 55296
  br i1 %381, label %382, label %386

382:                                              ; preds = %379
  %383 = load i32, i32* %16, align 4
  %384 = icmp sle i32 %383, 57343
  br i1 %384, label %385, label %386

385:                                              ; preds = %382
  br label %396

386:                                              ; preds = %382, %379
  br label %387

387:                                              ; preds = %386, %321
  %388 = load i32, i32* %16, align 4
  %389 = load i32*, i32** %9, align 8
  store i32 %388, i32* %389, align 4
  %390 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %391 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %390, i32 0, i32 0
  store i32 0, i32* %391, align 8
  %392 = load i64, i64* %15, align 8
  %393 = load i64*, i64** %13, align 8
  store i64 %392, i64* %393, align 8
  %394 = load i8*, i8** %14, align 8
  %395 = load i8**, i8*** %10, align 8
  store i8* %394, i8** %395, align 8
  store i32 0, i32* %7, align 4
  br label %408

396:                                              ; preds = %385, %378, %317, %299, %267, %238
  %397 = load i64*, i64** %13, align 8
  store i64 -1, i64* %397, align 8
  %398 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %399 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %398, i32 0, i32 0
  store i32 0, i32* %399, align 8
  %400 = load i32, i32* @EILSEQ, align 4
  store i32 %400, i32* %7, align 4
  br label %408

401:                                              ; preds = %54
  %402 = load i64*, i64** %13, align 8
  store i64 -2, i64* %402, align 8
  %403 = load i32, i32* %17, align 4
  %404 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %405 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %404, i32 0, i32 0
  store i32 %403, i32* %405, align 8
  %406 = load i8*, i8** %14, align 8
  %407 = load i8**, i8*** %10, align 8
  store i8* %406, i8** %407, align 8
  store i32 0, i32* %7, align 4
  br label %408

408:                                              ; preds = %401, %396, %387, %24
  %409 = load i32, i32* %7, align 4
  ret i32 %409
}

declare dso_local i32 @_citrus_UTF1632_init_state(%struct.TYPE_8__*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
