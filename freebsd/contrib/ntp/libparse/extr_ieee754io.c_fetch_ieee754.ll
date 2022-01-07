; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libparse/extr_ieee754io.c_fetch_ieee754.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libparse/extr_ieee754io.c_fetch_ieee754.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@IEEE_BADCALL = common dso_local global i32 0, align 4
@IEEE_NAN = common dso_local global i32 0, align 4
@IEEE_NEGINFINITY = common dso_local global i32 0, align 4
@IEEE_POSINFINITY = common dso_local global i32 0, align 4
@IEEE_NEGOVERFLOW = common dso_local global i32 0, align 4
@IEEE_POSOVERFLOW = common dso_local global i32 0, align 4
@IEEE_OK = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fetch_ieee754(i8** %0, i32 %1, %struct.TYPE_5__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i8, align 1
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i8** %0, i8*** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %8, align 8
  store i32* %3, i32** %9, align 8
  %22 = load i8**, i8*** %6, align 8
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %10, align 8
  store i32 0, i32* %20, align 4
  %24 = load i32, i32* %7, align 4
  switch i32 %24, label %27 [
    i32 129, label %25
    i32 128, label %26
  ]

25:                                               ; preds = %4
  store i32 52, i32* %14, align 4
  store i32 1023, i32* %12, align 4
  store i32 2047, i32* %13, align 4
  br label %29

26:                                               ; preds = %4
  store i32 23, i32* %14, align 4
  store i32 127, i32* %12, align 4
  store i32 255, i32* %13, align 4
  br label %29

27:                                               ; preds = %4
  %28 = load i32, i32* @IEEE_BADCALL, align 4
  store i32 %28, i32* %5, align 4
  br label %294

29:                                               ; preds = %26, %25
  %30 = load i8*, i8** %10, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = call i32 @get_byte(i8* %30, i32* %31, i32* %20)
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* %19, align 1
  %34 = load i8, i8* %19, align 1
  %35 = zext i8 %34 to i32
  %36 = and i32 %35, 128
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %11, align 4
  %39 = load i8, i8* %19, align 1
  %40 = zext i8 %39 to i32
  %41 = and i32 %40, 127
  store i32 %41, i32* %17, align 4
  %42 = load i8*, i8** %10, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = call i32 @get_byte(i8* %42, i32* %43, i32* %20)
  %45 = trunc i32 %44 to i8
  store i8 %45, i8* %19, align 1
  %46 = load i32, i32* %7, align 4
  switch i32 %46, label %117 [
    i32 128, label %47
    i32 129, label %72
  ]

47:                                               ; preds = %29
  %48 = load i32, i32* %17, align 4
  %49 = shl i32 %48, 1
  store i32 %49, i32* %17, align 4
  %50 = load i8, i8* %19, align 1
  %51 = zext i8 %50 to i32
  %52 = and i32 %51, 128
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i32
  %55 = load i32, i32* %17, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %17, align 4
  store i32 0, i32* %16, align 4
  %57 = load i8, i8* %19, align 1
  %58 = zext i8 %57 to i32
  %59 = and i32 %58, 127
  %60 = shl i32 %59, 16
  store i32 %60, i32* %15, align 4
  %61 = load i8*, i8** %10, align 8
  %62 = load i32*, i32** %9, align 8
  %63 = call i32 @get_byte(i8* %61, i32* %62, i32* %20)
  %64 = shl i32 %63, 8
  %65 = load i32, i32* %15, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %15, align 4
  %67 = load i8*, i8** %10, align 8
  %68 = load i32*, i32** %9, align 8
  %69 = call i32 @get_byte(i8* %67, i32* %68, i32* %20)
  %70 = load i32, i32* %15, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %15, align 4
  br label %119

72:                                               ; preds = %29
  %73 = load i32, i32* %17, align 4
  %74 = shl i32 %73, 4
  store i32 %74, i32* %17, align 4
  %75 = load i8, i8* %19, align 1
  %76 = zext i8 %75 to i32
  %77 = and i32 %76, 240
  %78 = ashr i32 %77, 4
  %79 = load i32, i32* %17, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %17, align 4
  %81 = load i8, i8* %19, align 1
  %82 = zext i8 %81 to i32
  %83 = and i32 %82, 15
  %84 = shl i32 %83, 16
  store i32 %84, i32* %16, align 4
  %85 = load i8*, i8** %10, align 8
  %86 = load i32*, i32** %9, align 8
  %87 = call i32 @get_byte(i8* %85, i32* %86, i32* %20)
  %88 = shl i32 %87, 8
  %89 = load i32, i32* %16, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %16, align 4
  %91 = load i8*, i8** %10, align 8
  %92 = load i32*, i32** %9, align 8
  %93 = call i32 @get_byte(i8* %91, i32* %92, i32* %20)
  %94 = load i32, i32* %16, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %16, align 4
  %96 = load i8*, i8** %10, align 8
  %97 = load i32*, i32** %9, align 8
  %98 = call i32 @get_byte(i8* %96, i32* %97, i32* %20)
  %99 = shl i32 %98, 24
  store i32 %99, i32* %15, align 4
  %100 = load i8*, i8** %10, align 8
  %101 = load i32*, i32** %9, align 8
  %102 = call i32 @get_byte(i8* %100, i32* %101, i32* %20)
  %103 = shl i32 %102, 16
  %104 = load i32, i32* %15, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %15, align 4
  %106 = load i8*, i8** %10, align 8
  %107 = load i32*, i32** %9, align 8
  %108 = call i32 @get_byte(i8* %106, i32* %107, i32* %20)
  %109 = shl i32 %108, 8
  %110 = load i32, i32* %15, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %15, align 4
  %112 = load i8*, i8** %10, align 8
  %113 = load i32*, i32** %9, align 8
  %114 = call i32 @get_byte(i8* %112, i32* %113, i32* %20)
  %115 = load i32, i32* %15, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %15, align 4
  br label %119

117:                                              ; preds = %29
  %118 = load i32, i32* @IEEE_BADCALL, align 4
  store i32 %118, i32* %5, align 4
  br label %294

119:                                              ; preds = %72, %47
  %120 = load i32, i32* %20, align 4
  %121 = load i8**, i8*** %6, align 8
  %122 = load i8*, i8** %121, align 8
  %123 = sext i32 %120 to i64
  %124 = getelementptr inbounds i8, i8* %122, i64 %123
  store i8* %124, i8** %121, align 8
  %125 = load i32, i32* %17, align 4
  %126 = load i32, i32* %13, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %145

128:                                              ; preds = %119
  %129 = load i32, i32* %15, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %134, label %131

131:                                              ; preds = %128
  %132 = load i32, i32* %16, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %131, %128
  %135 = load i32, i32* @IEEE_NAN, align 4
  store i32 %135, i32* %5, align 4
  br label %294

136:                                              ; preds = %131
  %137 = load i32, i32* %11, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %136
  %140 = load i32, i32* @IEEE_NEGINFINITY, align 4
  br label %143

141:                                              ; preds = %136
  %142 = load i32, i32* @IEEE_POSINFINITY, align 4
  br label %143

143:                                              ; preds = %141, %139
  %144 = phi i32 [ %140, %139 ], [ %142, %141 ]
  store i32 %144, i32* %5, align 4
  br label %294

145:                                              ; preds = %119
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %147 = call i32 @L_CLR(%struct.TYPE_5__* %146)
  %148 = load i32, i32* %17, align 4
  %149 = load i32, i32* %12, align 4
  %150 = sub i32 %148, %149
  %151 = zext i32 %150 to i64
  store i64 %151, i64* %18, align 8
  %152 = load i64, i64* %18, align 8
  %153 = icmp sgt i64 %152, 31
  br i1 %153, label %154, label %163

154:                                              ; preds = %145
  %155 = load i32, i32* %11, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %154
  %158 = load i32, i32* @IEEE_NEGOVERFLOW, align 4
  br label %161

159:                                              ; preds = %154
  %160 = load i32, i32* @IEEE_POSOVERFLOW, align 4
  br label %161

161:                                              ; preds = %159, %157
  %162 = phi i32 [ %158, %157 ], [ %160, %159 ]
  store i32 %162, i32* %5, align 4
  br label %294

163:                                              ; preds = %145
  %164 = load i32, i32* %14, align 4
  %165 = sext i32 %164 to i64
  %166 = load i64, i64* %18, align 8
  %167 = sub nsw i64 %165, %166
  %168 = trunc i64 %167 to i32
  store i32 %168, i32* %21, align 4
  %169 = load i32, i32* %17, align 4
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %163
  %172 = load i32, i32* @IEEE_OK, align 4
  store i32 %172, i32* %5, align 4
  br label %294

173:                                              ; preds = %163
  %174 = load i32, i32* %14, align 4
  %175 = icmp sgt i32 %174, 31
  br i1 %175, label %176, label %182

176:                                              ; preds = %173
  %177 = load i32, i32* %14, align 4
  %178 = sub nsw i32 %177, 32
  %179 = shl i32 1, %178
  %180 = load i32, i32* %16, align 4
  %181 = or i32 %180, %179
  store i32 %181, i32* %16, align 4
  br label %187

182:                                              ; preds = %173
  %183 = load i32, i32* %14, align 4
  %184 = shl i32 1, %183
  %185 = load i32, i32* %15, align 4
  %186 = or i32 %185, %184
  store i32 %186, i32* %15, align 4
  br label %187

187:                                              ; preds = %182, %176
  %188 = load i32, i32* %21, align 4
  %189 = load i32, i32* %14, align 4
  %190 = icmp sgt i32 %188, %189
  br i1 %190, label %191, label %227

191:                                              ; preds = %187
  %192 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 0
  store i32 0, i32* %193, align 4
  %194 = load i32, i32* %14, align 4
  %195 = add nsw i32 %194, 1
  %196 = load i32, i32* %21, align 4
  %197 = sub nsw i32 %196, %195
  store i32 %197, i32* %21, align 4
  %198 = load i32, i32* %14, align 4
  %199 = icmp sgt i32 %198, 31
  br i1 %199, label %200, label %220

200:                                              ; preds = %191
  %201 = load i32, i32* %16, align 4
  %202 = load i32, i32* %14, align 4
  %203 = sub nsw i32 63, %202
  %204 = shl i32 %201, %203
  %205 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 1
  store i32 %204, i32* %206, align 4
  %207 = load i32, i32* %15, align 4
  %208 = load i32, i32* %14, align 4
  %209 = sub nsw i32 %208, 33
  %210 = ashr i32 %207, %209
  %211 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %212 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = or i32 %213, %210
  store i32 %214, i32* %212, align 4
  %215 = load i32, i32* %21, align 4
  %216 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %217 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = ashr i32 %218, %215
  store i32 %219, i32* %217, align 4
  br label %226

220:                                              ; preds = %191
  %221 = load i32, i32* %15, align 4
  %222 = load i32, i32* %21, align 4
  %223 = ashr i32 %221, %222
  %224 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i32 0, i32 1
  store i32 %223, i32* %225, align 4
  br label %226

226:                                              ; preds = %220, %200
  br label %286

227:                                              ; preds = %187
  %228 = load i32, i32* %21, align 4
  %229 = icmp sgt i32 %228, 32
  br i1 %229, label %230, label %256

230:                                              ; preds = %227
  %231 = load i32, i32* %16, align 4
  %232 = load i32, i32* %21, align 4
  %233 = sub nsw i32 %232, 32
  %234 = ashr i32 %231, %233
  %235 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %236 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %235, i32 0, i32 0
  store i32 %234, i32* %236, align 4
  %237 = load i32, i32* %16, align 4
  %238 = load i32, i32* %21, align 4
  %239 = sub nsw i32 %238, 32
  %240 = shl i32 1, %239
  %241 = sub nsw i32 %240, 1
  %242 = and i32 %237, %241
  %243 = load i32, i32* %21, align 4
  %244 = sub nsw i32 64, %243
  %245 = shl i32 %242, %244
  %246 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %247 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %246, i32 0, i32 1
  store i32 %245, i32* %247, align 4
  %248 = load i32, i32* %15, align 4
  %249 = load i32, i32* %21, align 4
  %250 = sub nsw i32 %249, 32
  %251 = ashr i32 %248, %250
  %252 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %253 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = or i32 %254, %251
  store i32 %255, i32* %253, align 4
  br label %285

256:                                              ; preds = %227
  %257 = load i32, i32* %16, align 4
  %258 = load i32, i32* %21, align 4
  %259 = sub nsw i32 32, %258
  %260 = shl i32 %257, %259
  %261 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %262 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %261, i32 0, i32 0
  store i32 %260, i32* %262, align 4
  %263 = load i32, i32* %15, align 4
  %264 = load i32, i32* %21, align 4
  %265 = ashr i32 %263, %264
  %266 = load i32, i32* %21, align 4
  %267 = sub nsw i32 32, %266
  %268 = shl i32 1, %267
  %269 = sub nsw i32 %268, 1
  %270 = and i32 %265, %269
  %271 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %272 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 4
  %274 = or i32 %273, %270
  store i32 %274, i32* %272, align 4
  %275 = load i32, i32* %15, align 4
  %276 = load i32, i32* %21, align 4
  %277 = shl i32 1, %276
  %278 = sub nsw i32 %277, 1
  %279 = and i32 %275, %278
  %280 = load i32, i32* %21, align 4
  %281 = sub nsw i32 32, %280
  %282 = shl i32 %279, %281
  %283 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %284 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %283, i32 0, i32 1
  store i32 %282, i32* %284, align 4
  br label %285

285:                                              ; preds = %256, %230
  br label %286

286:                                              ; preds = %285, %226
  %287 = load i32, i32* %11, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %292

289:                                              ; preds = %286
  %290 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %291 = call i32 @L_NEG(%struct.TYPE_5__* %290)
  br label %292

292:                                              ; preds = %289, %286
  %293 = load i32, i32* @IEEE_OK, align 4
  store i32 %293, i32* %5, align 4
  br label %294

294:                                              ; preds = %292, %171, %161, %143, %134, %117, %27
  %295 = load i32, i32* %5, align 4
  ret i32 %295
}

declare dso_local i32 @get_byte(i8*, i32*, i32*) #1

declare dso_local i32 @L_CLR(%struct.TYPE_5__*) #1

declare dso_local i32 @L_NEG(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
