; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdtoa/extr_printf.c0_bround.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdtoa/extr_printf.c0_bround.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@FPI_Round_down = common dso_local global i32 0, align 4
@FPI_Round_zero = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i32)* @bround to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bround(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 3
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %8, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %6, align 4
  %22 = sub nsw i32 %20, %21
  store i32 %22, i32* %15, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %9, align 8
  store i32 0, i32* %12, align 4
  %26 = load i32, i32* %15, align 4
  %27 = sub nsw i32 %26, 1
  store i32 %27, i32* %14, align 4
  %28 = load i32*, i32** %9, align 8
  %29 = load i32, i32* %14, align 4
  %30 = ashr i32 %29, 3
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %14, align 4
  %35 = and i32 %34, 7
  %36 = mul nsw i32 %35, 4
  store i32 %36, i32* %13, align 4
  %37 = ashr i32 %33, %36
  store i32 %37, i32* %10, align 4
  %38 = and i32 %37, 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %78

40:                                               ; preds = %3
  %41 = load i32, i32* %10, align 4
  %42 = and i32 %41, 7
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %75

45:                                               ; preds = %40
  %46 = load i32, i32* %13, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %45
  %49 = load i32*, i32** %9, align 8
  %50 = load i32, i32* %14, align 4
  %51 = ashr i32 %50, 3
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %13, align 4
  %56 = sub nsw i32 32, %55
  %57 = shl i32 %54, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %48
  br label %75

60:                                               ; preds = %48, %45
  br label %61

61:                                               ; preds = %76, %60
  %62 = load i32, i32* %14, align 4
  %63 = icmp sge i32 %62, 8
  br i1 %63, label %64, label %77

64:                                               ; preds = %61
  %65 = load i32, i32* %14, align 4
  %66 = sub nsw i32 %65, 8
  store i32 %66, i32* %14, align 4
  %67 = load i32*, i32** %9, align 8
  %68 = load i32, i32* %14, align 4
  %69 = ashr i32 %68, 3
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %67, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %64
  br label %75

75:                                               ; preds = %74, %59, %44
  store i32 1, i32* %12, align 4
  br label %79

76:                                               ; preds = %64
  br label %61

77:                                               ; preds = %61
  br label %78

78:                                               ; preds = %77, %3
  br label %79

79:                                               ; preds = %78, %75
  %80 = load i32, i32* %15, align 4
  %81 = mul nsw i32 %80, 4
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = add nsw i32 %84, %81
  store i32 %85, i32* %83, align 8
  %86 = load i32, i32* %15, align 4
  %87 = ashr i32 %86, 3
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %7, align 4
  %89 = ashr i32 %88, 3
  store i32 %89, i32* %14, align 4
  %90 = load i32, i32* %11, align 4
  store i32 %90, i32* %13, align 4
  %91 = load i32, i32* %15, align 4
  %92 = and i32 %91, 7
  %93 = mul nsw i32 4, %92
  store i32 %93, i32* %16, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %136

95:                                               ; preds = %79
  br label %96

96:                                               ; preds = %132, %95
  %97 = load i32*, i32** %9, align 8
  %98 = load i32, i32* %13, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %16, align 4
  %103 = ashr i32 %101, %102
  %104 = load i32*, i32** %9, align 8
  %105 = load i32, i32* %13, align 4
  %106 = load i32, i32* %11, align 4
  %107 = sub nsw i32 %105, %106
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %104, i64 %108
  store i32 %103, i32* %109, align 4
  %110 = load i32, i32* %13, align 4
  %111 = load i32, i32* %14, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %96
  br label %135

114:                                              ; preds = %96
  %115 = load i32*, i32** %9, align 8
  %116 = load i32, i32* %13, align 4
  %117 = add nsw i32 %116, 1
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %115, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %16, align 4
  %122 = sub nsw i32 32, %121
  %123 = shl i32 %120, %122
  %124 = load i32*, i32** %9, align 8
  %125 = load i32, i32* %13, align 4
  %126 = load i32, i32* %11, align 4
  %127 = sub nsw i32 %125, %126
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %124, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = or i32 %130, %123
  store i32 %131, i32* %129, align 4
  br label %132

132:                                              ; preds = %114
  %133 = load i32, i32* %13, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %13, align 4
  br label %96

135:                                              ; preds = %113
  br label %158

136:                                              ; preds = %79
  br label %137

137:                                              ; preds = %154, %136
  %138 = load i32*, i32** %9, align 8
  %139 = load i32, i32* %13, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = load i32*, i32** %9, align 8
  %144 = load i32, i32* %13, align 4
  %145 = load i32, i32* %11, align 4
  %146 = sub nsw i32 %144, %145
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %143, i64 %147
  store i32 %142, i32* %148, align 4
  %149 = load i32, i32* %13, align 4
  %150 = load i32, i32* %14, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %137
  br label %157

153:                                              ; preds = %137
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %13, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %13, align 4
  br label %137

157:                                              ; preds = %152
  br label %158

158:                                              ; preds = %157, %135
  %159 = load i32, i32* %6, align 4
  %160 = ashr i32 %159, 3
  store i32 %160, i32* %14, align 4
  %161 = load i32, i32* %12, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %208

163:                                              ; preds = %158
  store i32 0, i32* %13, align 4
  br label %164

164:                                              ; preds = %174, %163
  %165 = load i32*, i32** %9, align 8
  %166 = load i32, i32* %13, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %168, align 4
  %171 = icmp ne i32 %170, 0
  %172 = xor i1 %171, true
  br i1 %172, label %173, label %177

173:                                              ; preds = %164
  br label %174

174:                                              ; preds = %173
  %175 = load i32, i32* %13, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %13, align 4
  br label %164

177:                                              ; preds = %164
  %178 = load i32, i32* %13, align 4
  %179 = load i32, i32* %14, align 4
  %180 = icmp sgt i32 %178, %179
  br i1 %180, label %181, label %191

181:                                              ; preds = %177
  br label %182

182:                                              ; preds = %206, %181
  %183 = load i32*, i32** %9, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 0
  store i32 1, i32* %184, align 4
  %185 = load i32, i32* %6, align 4
  %186 = mul nsw i32 4, %185
  %187 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = add nsw i32 %189, %186
  store i32 %190, i32* %188, align 8
  store i32 1, i32* %4, align 4
  br label %289

191:                                              ; preds = %177
  %192 = load i32, i32* %6, align 4
  %193 = and i32 %192, 7
  store i32 %193, i32* %13, align 4
  %194 = icmp slt i32 %193, 7
  br i1 %194, label %195, label %207

195:                                              ; preds = %191
  %196 = load i32*, i32** %9, align 8
  %197 = load i32, i32* %14, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %196, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* %13, align 4
  %202 = add nsw i32 %201, 1
  %203 = mul nsw i32 %202, 4
  %204 = ashr i32 %200, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %195
  br label %182

207:                                              ; preds = %195, %191
  br label %208

208:                                              ; preds = %207, %158
  store i32 0, i32* %11, align 4
  br label %209

209:                                              ; preds = %224, %208
  %210 = load i32*, i32** %9, align 8
  %211 = load i32, i32* %11, align 4
  %212 = ashr i32 %211, 3
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %210, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* %11, align 4
  %217 = and i32 %216, 7
  %218 = mul nsw i32 4, %217
  %219 = shl i32 15, %218
  %220 = and i32 %215, %219
  %221 = icmp ne i32 %220, 0
  %222 = xor i1 %221, true
  br i1 %222, label %223, label %227

223:                                              ; preds = %209
  br label %224

224:                                              ; preds = %223
  %225 = load i32, i32* %11, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %11, align 4
  br label %209

227:                                              ; preds = %209
  %228 = load i32, i32* %11, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %287

230:                                              ; preds = %227
  %231 = load i32, i32* %11, align 4
  %232 = mul nsw i32 4, %231
  %233 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %234 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 8
  %236 = add nsw i32 %235, %232
  store i32 %236, i32* %234, align 8
  %237 = load i32, i32* %11, align 4
  %238 = load i32, i32* %6, align 4
  %239 = sub nsw i32 %238, %237
  store i32 %239, i32* %6, align 4
  %240 = load i32, i32* %11, align 4
  %241 = ashr i32 %240, 3
  store i32 %241, i32* %13, align 4
  %242 = load i32, i32* %11, align 4
  %243 = and i32 %242, 7
  store i32 %243, i32* %11, align 4
  %244 = load i32, i32* %11, align 4
  %245 = mul nsw i32 %244, 4
  store i32 %245, i32* %11, align 4
  %246 = load i32, i32* %13, align 4
  store i32 %246, i32* %15, align 4
  br label %247

247:                                              ; preds = %283, %230
  %248 = load i32*, i32** %9, align 8
  %249 = load i32, i32* %15, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %248, i64 %250
  %252 = load i32, i32* %251, align 4
  %253 = load i32, i32* %11, align 4
  %254 = ashr i32 %252, %253
  %255 = load i32*, i32** %9, align 8
  %256 = load i32, i32* %15, align 4
  %257 = load i32, i32* %13, align 4
  %258 = sub nsw i32 %256, %257
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %255, i64 %259
  store i32 %254, i32* %260, align 4
  %261 = load i32, i32* %15, align 4
  %262 = load i32, i32* %14, align 4
  %263 = icmp eq i32 %261, %262
  br i1 %263, label %264, label %265

264:                                              ; preds = %247
  br label %286

265:                                              ; preds = %247
  %266 = load i32*, i32** %9, align 8
  %267 = load i32, i32* %15, align 4
  %268 = add nsw i32 %267, 1
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i32, i32* %266, i64 %269
  %271 = load i32, i32* %270, align 4
  %272 = load i32, i32* %11, align 4
  %273 = sub nsw i32 32, %272
  %274 = shl i32 %271, %273
  %275 = load i32*, i32** %9, align 8
  %276 = load i32, i32* %15, align 4
  %277 = load i32, i32* %13, align 4
  %278 = sub nsw i32 %276, %277
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32, i32* %275, i64 %279
  %281 = load i32, i32* %280, align 4
  %282 = or i32 %281, %274
  store i32 %282, i32* %280, align 4
  br label %283

283:                                              ; preds = %265
  %284 = load i32, i32* %15, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %15, align 4
  br label %247

286:                                              ; preds = %264
  br label %287

287:                                              ; preds = %286, %227
  %288 = load i32, i32* %6, align 4
  store i32 %288, i32* %4, align 4
  br label %289

289:                                              ; preds = %287, %182
  %290 = load i32, i32* %4, align 4
  ret i32 %290
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
