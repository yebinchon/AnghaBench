; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libiconv_modules/UTF7/extr_citrus_utf7.c__citrus_UTF7_mbtoutf16.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libiconv_modules/UTF7/extr_citrus_utf7.c__citrus_UTF7_mbtoutf16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i64* }

@EINVAL = common dso_local global i32 0, align 4
@BASE64_IN = common dso_local global i64 0, align 8
@BASE64_OUT = common dso_local global i64 0, align 8
@BASE64_BIT = common dso_local global i32 0, align 4
@UTF16_BIT = common dso_local global i32 0, align 4
@UTF16_MAX = common dso_local global i64 0, align 8
@EILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64*, i8**, i64, %struct.TYPE_3__*, i64*)* @_citrus_UTF7_mbtoutf16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_citrus_UTF7_mbtoutf16(i32* noalias %0, i64* noalias %1, i8** noalias %2, i64 %3, %struct.TYPE_3__* noalias %4, i64* noalias %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_3__*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i64* %1, i64** %9, align 8
  store i8** %2, i8*** %10, align 8
  store i64 %3, i64* %11, align 8
  store %struct.TYPE_3__* %4, %struct.TYPE_3__** %12, align 8
  store i64* %5, i64** %13, align 8
  %18 = load i64*, i64** %13, align 8
  store i64 0, i64* %18, align 8
  %19 = load i8**, i8*** %10, align 8
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %14, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %21

21:                                               ; preds = %247, %6
  %22 = load i32, i32* %15, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %250

24:                                               ; preds = %21
  %25 = load i32, i32* %16, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %25, %28
  br i1 %29, label %30, label %52

30:                                               ; preds = %24
  %31 = load i64, i64* %11, align 8
  %32 = add i64 %31, -1
  store i64 %32, i64* %11, align 8
  %33 = icmp ult i64 %31, 1
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i64*, i64** %13, align 8
  store i64 -2, i64* %35, align 8
  %36 = load i8*, i8** %14, align 8
  %37 = load i8**, i8*** %10, align 8
  store i8* %36, i8** %37, align 8
  store i32 0, i32* %7, align 4
  br label %280

38:                                               ; preds = %30
  %39 = load i8*, i8** %14, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %14, align 8
  %41 = load i8, i8* %39, align 1
  %42 = sext i8 %41 to i64
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 4
  %45 = load i64*, i64** %44, align 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 8
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i64, i64* %45, i64 %50
  store i64 %42, i64* %51, align 8
  br label %52

52:                                               ; preds = %38, %24
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 4
  %55 = load i64*, i64** %54, align 8
  %56 = load i32, i32* %16, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = trunc i64 %59 to i32
  %61 = call i64 @SHIFT7BIT(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %52
  br label %277

64:                                               ; preds = %52
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %117, label %69

69:                                               ; preds = %64
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %69
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %74, %69
  %80 = load i32, i32* @EINVAL, align 4
  store i32 %80, i32* %7, align 4
  br label %280

81:                                               ; preds = %74
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 4
  %84 = load i64*, i64** %83, align 8
  %85 = load i32, i32* %16, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %84, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @BASE64_IN, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %81
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 1
  store i32 1, i32* %93, align 4
  br label %116

94:                                               ; preds = %81
  %95 = load i32*, i32** %8, align 8
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 4
  %98 = load i64*, i64** %97, align 8
  %99 = load i32, i32* %16, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i64, i64* %98, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = trunc i64 %102 to i32
  %104 = call i32 @ISDIRECT(i32* %95, i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %94
  br label %277

107:                                              ; preds = %94
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 4
  %110 = load i64*, i64** %109, align 8
  %111 = load i32, i32* %16, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i64, i64* %110, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = load i64*, i64** %9, align 8
  store i64 %114, i64* %115, align 8
  store i32 1, i32* %15, align 4
  br label %247

116:                                              ; preds = %91
  br label %246

117:                                              ; preds = %64
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 4
  %120 = load i64*, i64** %119, align 8
  %121 = load i32, i32* %16, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i64, i64* %120, i64 %122
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @BASE64_OUT, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %137

127:                                              ; preds = %117
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %127
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 1
  store i32 0, i32* %134, align 4
  %135 = load i64, i64* @BASE64_IN, align 8
  %136 = load i64*, i64** %9, align 8
  store i64 %135, i64* %136, align 8
  store i32 1, i32* %15, align 4
  br label %247

137:                                              ; preds = %127, %117
  %138 = load i32*, i32** %8, align 8
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 4
  %141 = load i64*, i64** %140, align 8
  %142 = load i32, i32* %16, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i64, i64* %141, i64 %143
  %145 = load i64, i64* %144, align 8
  %146 = trunc i64 %145 to i32
  %147 = call i32 @FINDLEN(i32* %138, i32 %146)
  store i32 %147, i32* %17, align 4
  %148 = load i32, i32* %17, align 4
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %204

150:                                              ; preds = %137
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @BASE64_BIT, align 4
  %155 = icmp sge i32 %153, %154
  br i1 %155, label %156, label %158

156:                                              ; preds = %150
  %157 = load i32, i32* @EINVAL, align 4
  store i32 %157, i32* %7, align 4
  br label %280

158:                                              ; preds = %150
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 1
  store i32 0, i32* %160, align 4
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 3
  store i32 0, i32* %162, align 4
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 2
  store i32 0, i32* %164, align 8
  %165 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 4
  %167 = load i64*, i64** %166, align 8
  %168 = load i32, i32* %16, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i64, i64* %167, i64 %169
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @BASE64_OUT, align 8
  %173 = icmp ne i64 %171, %172
  br i1 %173, label %174, label %196

174:                                              ; preds = %158
  %175 = load i32*, i32** %8, align 8
  %176 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 4
  %178 = load i64*, i64** %177, align 8
  %179 = load i32, i32* %16, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i64, i64* %178, i64 %180
  %182 = load i64, i64* %181, align 8
  %183 = trunc i64 %182 to i32
  %184 = call i32 @ISDIRECT(i32* %175, i32 %183)
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %187, label %186

186:                                              ; preds = %174
  br label %277

187:                                              ; preds = %174
  %188 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 4
  %190 = load i64*, i64** %189, align 8
  %191 = load i32, i32* %16, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i64, i64* %190, i64 %192
  %194 = load i64, i64* %193, align 8
  %195 = load i64*, i64** %9, align 8
  store i64 %194, i64* %195, align 8
  store i32 1, i32* %15, align 4
  br label %203

196:                                              ; preds = %158
  %197 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = add nsw i32 %199, -1
  store i32 %200, i32* %198, align 8
  %201 = load i32, i32* %16, align 4
  %202 = add nsw i32 %201, -1
  store i32 %202, i32* %16, align 4
  br label %203

203:                                              ; preds = %196, %187
  br label %245

204:                                              ; preds = %137
  %205 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* @BASE64_BIT, align 4
  %209 = shl i32 %207, %208
  %210 = load i32, i32* %17, align 4
  %211 = or i32 %209, %210
  %212 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i32 0, i32 3
  store i32 %211, i32* %213, align 4
  %214 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %215 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 8
  switch i32 %216, label %242 [
    i32 0, label %217
    i32 2, label %217
    i32 4, label %217
    i32 6, label %217
    i32 8, label %217
    i32 10, label %223
    i32 12, label %223
    i32 14, label %223
  ]

217:                                              ; preds = %204, %204, %204, %204, %204
  %218 = load i32, i32* @BASE64_BIT, align 4
  %219 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %220 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 8
  %222 = add nsw i32 %221, %218
  store i32 %222, i32* %220, align 8
  br label %244

223:                                              ; preds = %204, %204, %204
  %224 = load i32, i32* @UTF16_BIT, align 4
  %225 = load i32, i32* @BASE64_BIT, align 4
  %226 = sub nsw i32 %224, %225
  %227 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %228 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 8
  %230 = sub nsw i32 %229, %226
  store i32 %230, i32* %228, align 8
  %231 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %232 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %231, i32 0, i32 3
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %235 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 8
  %237 = ashr i32 %233, %236
  %238 = sext i32 %237 to i64
  %239 = load i64, i64* @UTF16_MAX, align 8
  %240 = and i64 %238, %239
  %241 = load i64*, i64** %9, align 8
  store i64 %240, i64* %241, align 8
  store i32 1, i32* %15, align 4
  br label %244

242:                                              ; preds = %204
  %243 = load i32, i32* @EINVAL, align 4
  store i32 %243, i32* %7, align 4
  br label %280

244:                                              ; preds = %223, %217
  br label %245

245:                                              ; preds = %244, %203
  br label %246

246:                                              ; preds = %245, %116
  br label %247

247:                                              ; preds = %246, %132, %107
  %248 = load i32, i32* %16, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %16, align 4
  br label %21

250:                                              ; preds = %21
  %251 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %252 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = load i32, i32* %16, align 4
  %255 = icmp sgt i32 %253, %254
  br i1 %255, label %256, label %258

256:                                              ; preds = %250
  %257 = load i32, i32* @EINVAL, align 4
  store i32 %257, i32* %7, align 4
  br label %280

258:                                              ; preds = %250
  %259 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %260 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %259, i32 0, i32 0
  store i32 0, i32* %260, align 8
  %261 = load i64*, i64** %9, align 8
  %262 = load i64, i64* %261, align 8
  %263 = icmp eq i64 %262, 0
  br i1 %263, label %264, label %265

264:                                              ; preds = %258
  br label %272

265:                                              ; preds = %258
  %266 = load i8*, i8** %14, align 8
  %267 = load i8**, i8*** %10, align 8
  %268 = load i8*, i8** %267, align 8
  %269 = ptrtoint i8* %266 to i64
  %270 = ptrtoint i8* %268 to i64
  %271 = sub i64 %269, %270
  br label %272

272:                                              ; preds = %265, %264
  %273 = phi i64 [ 0, %264 ], [ %271, %265 ]
  %274 = load i64*, i64** %13, align 8
  store i64 %273, i64* %274, align 8
  %275 = load i8*, i8** %14, align 8
  %276 = load i8**, i8*** %10, align 8
  store i8* %275, i8** %276, align 8
  store i32 0, i32* %7, align 4
  br label %280

277:                                              ; preds = %186, %106, %63
  %278 = load i64*, i64** %13, align 8
  store i64 -1, i64* %278, align 8
  %279 = load i32, i32* @EILSEQ, align 4
  store i32 %279, i32* %7, align 4
  br label %280

280:                                              ; preds = %277, %272, %256, %242, %156, %79, %34
  %281 = load i32, i32* %7, align 4
  ret i32 %281
}

declare dso_local i64 @SHIFT7BIT(i32) #1

declare dso_local i32 @ISDIRECT(i32*, i32) #1

declare dso_local i32 @FINDLEN(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
