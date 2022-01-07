; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libiconv_modules/UES/extr_citrus_ues.c__citrus_UES_mbrtowc_priv.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libiconv_modules/UES/extr_citrus_ues.c__citrus_UES_mbrtowc_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i8* }

@ESCAPE = common dso_local global i32 0, align 4
@MODE_C99 = common dso_local global i32 0, align 4
@UCS4_MAX = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32*, i8**, i64, %struct.TYPE_7__*, i64*)* @_citrus_UES_mbrtowc_priv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_citrus_UES_mbrtowc_priv(%struct.TYPE_8__* noalias %0, i32* noalias %1, i8** noalias %2, i64 %3, %struct.TYPE_7__* noalias %4, i64* noalias %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8** %2, i8*** %10, align 8
  store i64 %3, i64* %11, align 8
  store %struct.TYPE_7__* %4, %struct.TYPE_7__** %12, align 8
  store i64* %5, i64** %13, align 8
  %21 = load i8**, i8*** %10, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %6
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %27 = call i32 @_citrus_UES_init_state(%struct.TYPE_8__* %25, %struct.TYPE_7__* %26)
  %28 = load i64*, i64** %13, align 8
  store i64 0, i64* %28, align 8
  store i32 0, i32* %7, align 4
  br label %283

29:                                               ; preds = %6
  %30 = load i8**, i8*** %10, align 8
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %14, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %18, align 4
  br label %32

32:                                               ; preds = %191, %29
  store i32 0, i32* %20, align 4
  %33 = load i32, i32* %18, align 4
  store i32 %33, i32* %16, align 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %16, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %57

39:                                               ; preds = %32
  %40 = load i64, i64* %11, align 8
  %41 = add i64 %40, -1
  store i64 %41, i64* %11, align 8
  %42 = icmp ult i64 %40, 1
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %135

44:                                               ; preds = %39
  %45 = load i8*, i8** %14, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %14, align 8
  %47 = load i8, i8* %45, align 1
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 8
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i8, i8* %50, i64 %55
  store i8 %47, i8* %56, align 1
  br label %57

57:                                               ; preds = %44, %32
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = load i32, i32* %16, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %16, align 4
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i8, i8* %60, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  store i32 %66, i32* %15, align 4
  %67 = load i32, i32* %15, align 4
  %68 = load i32, i32* @ESCAPE, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %119

70:                                               ; preds = %57
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %16, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %94

76:                                               ; preds = %70
  %77 = load i64, i64* %11, align 8
  %78 = add i64 %77, -1
  store i64 %78, i64* %11, align 8
  %79 = icmp ult i64 %77, 1
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  br label %135

81:                                               ; preds = %76
  %82 = load i8*, i8** %14, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %14, align 8
  %84 = load i8, i8* %82, align 1
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 8
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i8, i8* %87, i64 %92
  store i8 %84, i8* %93, align 1
  br label %94

94:                                               ; preds = %81, %70
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  %98 = load i32, i32* %16, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  switch i32 %102, label %115 [
    i32 129, label %103
    i32 128, label %106
  ]

103:                                              ; preds = %94
  %104 = load i32, i32* %18, align 4
  %105 = add nsw i32 %104, 6
  store i32 %105, i32* %18, align 4
  br label %116

106:                                              ; preds = %94
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @MODE_C99, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %106
  store i32 10, i32* %18, align 4
  br label %116

114:                                              ; preds = %106
  br label %115

115:                                              ; preds = %94, %114
  store i32 0, i32* %18, align 4
  br label %116

116:                                              ; preds = %115, %113, %103
  %117 = load i32, i32* %16, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %16, align 4
  br label %119

119:                                              ; preds = %116, %57
  br label %120

120:                                              ; preds = %170, %119
  %121 = load i32, i32* %16, align 4
  %122 = load i32, i32* %18, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %173

124:                                              ; preds = %120
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* %16, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %152

130:                                              ; preds = %124
  %131 = load i64, i64* %11, align 8
  %132 = add i64 %131, -1
  store i64 %132, i64* %11, align 8
  %133 = icmp ult i64 %131, 1
  br i1 %133, label %134, label %139

134:                                              ; preds = %130
  br label %135

135:                                              ; preds = %134, %80, %43
  %136 = load i8*, i8** %14, align 8
  %137 = load i8**, i8*** %10, align 8
  store i8* %136, i8** %137, align 8
  %138 = load i64*, i64** %13, align 8
  store i64 -2, i64* %138, align 8
  store i32 0, i32* %7, align 4
  br label %283

139:                                              ; preds = %130
  %140 = load i8*, i8** %14, align 8
  %141 = getelementptr inbounds i8, i8* %140, i32 1
  store i8* %141, i8** %14, align 8
  %142 = load i8, i8* %140, align 1
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 1
  %145 = load i8*, i8** %144, align 8
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %147, align 8
  %150 = sext i32 %148 to i64
  %151 = getelementptr inbounds i8, i8* %145, i64 %150
  store i8 %142, i8* %151, align 1
  br label %152

152:                                              ; preds = %139, %124
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 1
  %155 = load i8*, i8** %154, align 8
  %156 = load i32, i32* %16, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8, i8* %155, i64 %157
  %159 = load i8, i8* %158, align 1
  %160 = zext i8 %159 to i32
  %161 = call i32 @to_int(i32 %160)
  store i32 %161, i32* %17, align 4
  %162 = load i32, i32* %17, align 4
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %152
  store i32 0, i32* %18, align 4
  br label %173

165:                                              ; preds = %152
  %166 = load i32, i32* %20, align 4
  %167 = shl i32 %166, 4
  %168 = load i32, i32* %17, align 4
  %169 = or i32 %167, %168
  store i32 %169, i32* %20, align 4
  br label %170

170:                                              ; preds = %165
  %171 = load i32, i32* %16, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %16, align 4
  br label %120

173:                                              ; preds = %164, %120
  store i32 0, i32* %16, align 4
  %174 = load i32, i32* %18, align 4
  switch i32 %174, label %232 [
    i32 0, label %175
    i32 6, label %176
    i32 10, label %203
    i32 12, label %223
  ]

175:                                              ; preds = %173
  br label %232

176:                                              ; preds = %173
  %177 = load i32, i32* %19, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %176
  br label %232

180:                                              ; preds = %176
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @MODE_C99, align 4
  %185 = and i32 %183, %184
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %202

187:                                              ; preds = %180
  %188 = load i32, i32* %20, align 4
  %189 = call i32 @is_hi_surrogate(i32 %188)
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %187
  %192 = load i32, i32* %20, align 4
  store i32 %192, i32* %19, align 4
  br label %32

193:                                              ; preds = %187
  %194 = load i32, i32* %20, align 4
  %195 = icmp sle i32 %194, 127
  br i1 %195, label %200, label %196

196:                                              ; preds = %193
  %197 = load i32, i32* %20, align 4
  %198 = call i32 @is_lo_surrogate(i32 %197)
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %196, %193
  br label %232

201:                                              ; preds = %196
  br label %258

202:                                              ; preds = %180
  br label %203

203:                                              ; preds = %173, %202
  %204 = load i32, i32* %20, align 4
  %205 = call i32 @is_basic(i32 %204)
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %220

207:                                              ; preds = %203
  %208 = load i32, i32* %20, align 4
  %209 = load i32, i32* @UCS4_MAX, align 4
  %210 = icmp sle i32 %208, %209
  br i1 %210, label %211, label %220

211:                                              ; preds = %207
  %212 = load i32, i32* %20, align 4
  %213 = call i32 @is_hi_surrogate(i32 %212)
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %220

215:                                              ; preds = %211
  %216 = load i32, i32* %20, align 4
  %217 = call i32 @is_lo_surrogate(i32 %216)
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %215
  br label %258

220:                                              ; preds = %215, %211, %207, %203
  %221 = load i64*, i64** %13, align 8
  store i64 -1, i64* %221, align 8
  %222 = load i32, i32* @EILSEQ, align 4
  store i32 %222, i32* %7, align 4
  br label %283

223:                                              ; preds = %173
  %224 = load i32, i32* %20, align 4
  %225 = call i32 @is_lo_surrogate(i32 %224)
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %223
  br label %232

228:                                              ; preds = %223
  %229 = load i32, i32* %19, align 4
  %230 = load i32, i32* %20, align 4
  %231 = call i32 @surrogate_to_ucs(i32 %229, i32 %230)
  store i32 %231, i32* %20, align 4
  br label %258

232:                                              ; preds = %173, %227, %200, %179, %175
  %233 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %234 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %233, i32 0, i32 1
  %235 = load i8*, i8** %234, align 8
  %236 = getelementptr inbounds i8, i8* %235, i64 0
  %237 = load i8, i8* %236, align 1
  %238 = zext i8 %237 to i32
  store i32 %238, i32* %15, align 4
  %239 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %240 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  store i32 %241, i32* %16, align 4
  %242 = load i32, i32* %16, align 4
  %243 = add nsw i32 %242, -1
  store i32 %243, i32* %16, align 4
  %244 = icmp sgt i32 %243, 0
  br i1 %244, label %245, label %256

245:                                              ; preds = %232
  %246 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %247 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %246, i32 0, i32 1
  %248 = load i8*, i8** %247, align 8
  %249 = getelementptr inbounds i8, i8* %248, i64 0
  %250 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %251 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %250, i32 0, i32 1
  %252 = load i8*, i8** %251, align 8
  %253 = getelementptr inbounds i8, i8* %252, i64 1
  %254 = load i32, i32* %16, align 4
  %255 = call i32 @memmove(i8* %249, i8* %253, i32 %254)
  br label %256

256:                                              ; preds = %245, %232
  %257 = load i32, i32* %15, align 4
  store i32 %257, i32* %20, align 4
  br label %258

258:                                              ; preds = %256, %228, %219, %201
  %259 = load i32, i32* %16, align 4
  %260 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %261 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %260, i32 0, i32 0
  store i32 %259, i32* %261, align 8
  %262 = load i32*, i32** %9, align 8
  %263 = icmp ne i32* %262, null
  br i1 %263, label %264, label %267

264:                                              ; preds = %258
  %265 = load i32, i32* %20, align 4
  %266 = load i32*, i32** %9, align 8
  store i32 %265, i32* %266, align 4
  br label %267

267:                                              ; preds = %264, %258
  %268 = load i32, i32* %20, align 4
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %270, label %271

270:                                              ; preds = %267
  br label %278

271:                                              ; preds = %267
  %272 = load i8*, i8** %14, align 8
  %273 = load i8**, i8*** %10, align 8
  %274 = load i8*, i8** %273, align 8
  %275 = ptrtoint i8* %272 to i64
  %276 = ptrtoint i8* %274 to i64
  %277 = sub i64 %275, %276
  br label %278

278:                                              ; preds = %271, %270
  %279 = phi i64 [ 0, %270 ], [ %277, %271 ]
  %280 = load i64*, i64** %13, align 8
  store i64 %279, i64* %280, align 8
  %281 = load i8*, i8** %14, align 8
  %282 = load i8**, i8*** %10, align 8
  store i8* %281, i8** %282, align 8
  store i32 0, i32* %7, align 4
  br label %283

283:                                              ; preds = %278, %220, %135, %24
  %284 = load i32, i32* %7, align 4
  ret i32 %284
}

declare dso_local i32 @_citrus_UES_init_state(%struct.TYPE_8__*, %struct.TYPE_7__*) #1

declare dso_local i32 @to_int(i32) #1

declare dso_local i32 @is_hi_surrogate(i32) #1

declare dso_local i32 @is_lo_surrogate(i32) #1

declare dso_local i32 @is_basic(i32) #1

declare dso_local i32 @surrogate_to_ucs(i32, i32) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
