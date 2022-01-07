; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tzcode/stdtime/extr_localtime.c_localsub.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tzcode/stdtime/extr_localtime.c_localsub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.state = type { i64*, i32, i32, i32*, %struct.ttinfo*, i64*, i64, i64 }
%struct.ttinfo = type { i64, i64, i32 }
%struct.tm = type { i64, i64, i32* }

@lclptr = common dso_local global %struct.state* null, align 8
@YEARSPERREPEAT = common dso_local global i64 0, align 8
@AVGSECSPERYEAR = common dso_local global i64 0, align 8
@tzname = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tm* (i64*, i64, %struct.tm*)* @localsub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tm* @localsub(i64* %0, i64 %1, %struct.tm* %2) #0 {
  %4 = alloca %struct.tm*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.tm*, align 8
  %8 = alloca %struct.state*, align 8
  %9 = alloca %struct.ttinfo*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.tm*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i64* %0, i64** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.tm* %2, %struct.tm** %7, align 8
  %21 = load i64*, i64** %5, align 8
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %12, align 8
  %23 = load %struct.state*, %struct.state** @lclptr, align 8
  store %struct.state* %23, %struct.state** %8, align 8
  %24 = load %struct.state*, %struct.state** %8, align 8
  %25 = getelementptr inbounds %struct.state, %struct.state* %24, i32 0, i32 7
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %3
  %29 = load i64, i64* %12, align 8
  %30 = load %struct.state*, %struct.state** %8, align 8
  %31 = getelementptr inbounds %struct.state, %struct.state* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp slt i64 %29, %34
  br i1 %35, label %54, label %36

36:                                               ; preds = %28, %3
  %37 = load %struct.state*, %struct.state** %8, align 8
  %38 = getelementptr inbounds %struct.state, %struct.state* %37, i32 0, i32 6
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %193

41:                                               ; preds = %36
  %42 = load i64, i64* %12, align 8
  %43 = load %struct.state*, %struct.state** %8, align 8
  %44 = getelementptr inbounds %struct.state, %struct.state* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = load %struct.state*, %struct.state** %8, align 8
  %47 = getelementptr inbounds %struct.state, %struct.state* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = sub nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %45, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = icmp sgt i64 %42, %52
  br i1 %53, label %54, label %193

54:                                               ; preds = %41, %28
  %55 = load i64, i64* %12, align 8
  store i64 %55, i64* %13, align 8
  %56 = load i64, i64* %12, align 8
  %57 = load %struct.state*, %struct.state** %8, align 8
  %58 = getelementptr inbounds %struct.state, %struct.state* %57, i32 0, i32 0
  %59 = load i64*, i64** %58, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp slt i64 %56, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %54
  %64 = load %struct.state*, %struct.state** %8, align 8
  %65 = getelementptr inbounds %struct.state, %struct.state* %64, i32 0, i32 0
  %66 = load i64*, i64** %65, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* %12, align 8
  %70 = sub nsw i64 %68, %69
  store i64 %70, i64* %14, align 8
  br label %84

71:                                               ; preds = %54
  %72 = load i64, i64* %12, align 8
  %73 = load %struct.state*, %struct.state** %8, align 8
  %74 = getelementptr inbounds %struct.state, %struct.state* %73, i32 0, i32 0
  %75 = load i64*, i64** %74, align 8
  %76 = load %struct.state*, %struct.state** %8, align 8
  %77 = getelementptr inbounds %struct.state, %struct.state* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = sub nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %75, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = sub nsw i64 %72, %82
  store i64 %83, i64* %14, align 8
  br label %84

84:                                               ; preds = %71, %63
  %85 = load i64, i64* %14, align 8
  %86 = add nsw i64 %85, -1
  store i64 %86, i64* %14, align 8
  %87 = load i64, i64* %14, align 8
  %88 = load i64, i64* @YEARSPERREPEAT, align 8
  %89 = sdiv i64 %87, %88
  %90 = load i64, i64* @AVGSECSPERYEAR, align 8
  %91 = sdiv i64 %89, %90
  store i64 %91, i64* %15, align 8
  %92 = load i64, i64* %15, align 8
  %93 = add nsw i64 %92, 1
  store i64 %93, i64* %15, align 8
  %94 = load i64, i64* %15, align 8
  store i64 %94, i64* %16, align 8
  %95 = load i64, i64* %15, align 8
  %96 = load i64, i64* %16, align 8
  %97 = sub nsw i64 %95, %96
  %98 = icmp sge i64 %97, 1
  br i1 %98, label %104, label %99

99:                                               ; preds = %84
  %100 = load i64, i64* %16, align 8
  %101 = load i64, i64* %15, align 8
  %102 = sub nsw i64 %100, %101
  %103 = icmp sge i64 %102, 1
  br i1 %103, label %104, label %105

104:                                              ; preds = %99, %84
  store %struct.tm* null, %struct.tm** %4, align 8
  br label %296

105:                                              ; preds = %99
  %106 = load i64, i64* %16, align 8
  store i64 %106, i64* %14, align 8
  %107 = load i64, i64* @YEARSPERREPEAT, align 8
  %108 = load i64, i64* %14, align 8
  %109 = mul nsw i64 %108, %107
  store i64 %109, i64* %14, align 8
  %110 = load i64, i64* @AVGSECSPERYEAR, align 8
  %111 = load i64, i64* %14, align 8
  %112 = mul nsw i64 %111, %110
  store i64 %112, i64* %14, align 8
  %113 = load i64, i64* %12, align 8
  %114 = load %struct.state*, %struct.state** %8, align 8
  %115 = getelementptr inbounds %struct.state, %struct.state* %114, i32 0, i32 0
  %116 = load i64*, i64** %115, align 8
  %117 = getelementptr inbounds i64, i64* %116, i64 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp slt i64 %113, %118
  br i1 %119, label %120, label %124

120:                                              ; preds = %105
  %121 = load i64, i64* %14, align 8
  %122 = load i64, i64* %13, align 8
  %123 = add nsw i64 %122, %121
  store i64 %123, i64* %13, align 8
  br label %128

124:                                              ; preds = %105
  %125 = load i64, i64* %14, align 8
  %126 = load i64, i64* %13, align 8
  %127 = sub nsw i64 %126, %125
  store i64 %127, i64* %13, align 8
  br label %128

128:                                              ; preds = %124, %120
  %129 = load i64, i64* %13, align 8
  %130 = load %struct.state*, %struct.state** %8, align 8
  %131 = getelementptr inbounds %struct.state, %struct.state* %130, i32 0, i32 0
  %132 = load i64*, i64** %131, align 8
  %133 = getelementptr inbounds i64, i64* %132, i64 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp slt i64 %129, %134
  br i1 %135, label %149, label %136

136:                                              ; preds = %128
  %137 = load i64, i64* %13, align 8
  %138 = load %struct.state*, %struct.state** %8, align 8
  %139 = getelementptr inbounds %struct.state, %struct.state* %138, i32 0, i32 0
  %140 = load i64*, i64** %139, align 8
  %141 = load %struct.state*, %struct.state** %8, align 8
  %142 = getelementptr inbounds %struct.state, %struct.state* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = sub nsw i32 %143, 1
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i64, i64* %140, i64 %145
  %147 = load i64, i64* %146, align 8
  %148 = icmp sgt i64 %137, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %136, %128
  store %struct.tm* null, %struct.tm** %4, align 8
  br label %296

150:                                              ; preds = %136
  %151 = load i64, i64* %6, align 8
  %152 = load %struct.tm*, %struct.tm** %7, align 8
  %153 = call %struct.tm* @localsub(i64* %13, i64 %151, %struct.tm* %152)
  store %struct.tm* %153, %struct.tm** %11, align 8
  %154 = load %struct.tm*, %struct.tm** %11, align 8
  %155 = load %struct.tm*, %struct.tm** %7, align 8
  %156 = icmp eq %struct.tm* %154, %155
  br i1 %156, label %157, label %191

157:                                              ; preds = %150
  %158 = load %struct.tm*, %struct.tm** %7, align 8
  %159 = getelementptr inbounds %struct.tm, %struct.tm* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  store i64 %160, i64* %17, align 8
  %161 = load i64, i64* %12, align 8
  %162 = load %struct.state*, %struct.state** %8, align 8
  %163 = getelementptr inbounds %struct.state, %struct.state* %162, i32 0, i32 0
  %164 = load i64*, i64** %163, align 8
  %165 = getelementptr inbounds i64, i64* %164, i64 0
  %166 = load i64, i64* %165, align 8
  %167 = icmp slt i64 %161, %166
  br i1 %167, label %168, label %174

168:                                              ; preds = %157
  %169 = load i64, i64* %16, align 8
  %170 = load i64, i64* @YEARSPERREPEAT, align 8
  %171 = mul nsw i64 %169, %170
  %172 = load i64, i64* %17, align 8
  %173 = sub nsw i64 %172, %171
  store i64 %173, i64* %17, align 8
  br label %180

174:                                              ; preds = %157
  %175 = load i64, i64* %16, align 8
  %176 = load i64, i64* @YEARSPERREPEAT, align 8
  %177 = mul nsw i64 %175, %176
  %178 = load i64, i64* %17, align 8
  %179 = add nsw i64 %178, %177
  store i64 %179, i64* %17, align 8
  br label %180

180:                                              ; preds = %174, %168
  %181 = load i64, i64* %17, align 8
  %182 = load %struct.tm*, %struct.tm** %7, align 8
  %183 = getelementptr inbounds %struct.tm, %struct.tm* %182, i32 0, i32 0
  store i64 %181, i64* %183, align 8
  %184 = load %struct.tm*, %struct.tm** %7, align 8
  %185 = getelementptr inbounds %struct.tm, %struct.tm* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* %17, align 8
  %188 = icmp ne i64 %186, %187
  br i1 %188, label %189, label %190

189:                                              ; preds = %180
  store %struct.tm* null, %struct.tm** %4, align 8
  br label %296

190:                                              ; preds = %180
  br label %191

191:                                              ; preds = %190, %150
  %192 = load %struct.tm*, %struct.tm** %11, align 8
  store %struct.tm* %192, %struct.tm** %4, align 8
  br label %296

193:                                              ; preds = %41, %36
  %194 = load %struct.state*, %struct.state** %8, align 8
  %195 = getelementptr inbounds %struct.state, %struct.state* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %206, label %198

198:                                              ; preds = %193
  %199 = load i64, i64* %12, align 8
  %200 = load %struct.state*, %struct.state** %8, align 8
  %201 = getelementptr inbounds %struct.state, %struct.state* %200, i32 0, i32 0
  %202 = load i64*, i64** %201, align 8
  %203 = getelementptr inbounds i64, i64* %202, i64 0
  %204 = load i64, i64* %203, align 8
  %205 = icmp slt i64 %199, %204
  br i1 %205, label %206, label %227

206:                                              ; preds = %198, %193
  store i32 0, i32* %10, align 4
  br label %207

207:                                              ; preds = %225, %206
  %208 = load %struct.state*, %struct.state** %8, align 8
  %209 = getelementptr inbounds %struct.state, %struct.state* %208, i32 0, i32 4
  %210 = load %struct.ttinfo*, %struct.ttinfo** %209, align 8
  %211 = load i32, i32* %10, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.ttinfo, %struct.ttinfo* %210, i64 %212
  %214 = getelementptr inbounds %struct.ttinfo, %struct.ttinfo* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %226

217:                                              ; preds = %207
  %218 = load i32, i32* %10, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %10, align 4
  %220 = load %struct.state*, %struct.state** %8, align 8
  %221 = getelementptr inbounds %struct.state, %struct.state* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 4
  %223 = icmp sge i32 %219, %222
  br i1 %223, label %224, label %225

224:                                              ; preds = %217
  store i32 0, i32* %10, align 4
  br label %226

225:                                              ; preds = %217
  br label %207

226:                                              ; preds = %224, %207
  br label %265

227:                                              ; preds = %198
  store i32 1, i32* %18, align 4
  %228 = load %struct.state*, %struct.state** %8, align 8
  %229 = getelementptr inbounds %struct.state, %struct.state* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 8
  store i32 %230, i32* %19, align 4
  br label %231

231:                                              ; preds = %254, %227
  %232 = load i32, i32* %18, align 4
  %233 = load i32, i32* %19, align 4
  %234 = icmp slt i32 %232, %233
  br i1 %234, label %235, label %255

235:                                              ; preds = %231
  %236 = load i32, i32* %18, align 4
  %237 = load i32, i32* %19, align 4
  %238 = add nsw i32 %236, %237
  %239 = ashr i32 %238, 1
  store i32 %239, i32* %20, align 4
  %240 = load i64, i64* %12, align 8
  %241 = load %struct.state*, %struct.state** %8, align 8
  %242 = getelementptr inbounds %struct.state, %struct.state* %241, i32 0, i32 0
  %243 = load i64*, i64** %242, align 8
  %244 = load i32, i32* %20, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i64, i64* %243, i64 %245
  %247 = load i64, i64* %246, align 8
  %248 = icmp slt i64 %240, %247
  br i1 %248, label %249, label %251

249:                                              ; preds = %235
  %250 = load i32, i32* %20, align 4
  store i32 %250, i32* %19, align 4
  br label %254

251:                                              ; preds = %235
  %252 = load i32, i32* %20, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %18, align 4
  br label %254

254:                                              ; preds = %251, %249
  br label %231

255:                                              ; preds = %231
  %256 = load %struct.state*, %struct.state** %8, align 8
  %257 = getelementptr inbounds %struct.state, %struct.state* %256, i32 0, i32 5
  %258 = load i64*, i64** %257, align 8
  %259 = load i32, i32* %18, align 4
  %260 = sub nsw i32 %259, 1
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i64, i64* %258, i64 %261
  %263 = load i64, i64* %262, align 8
  %264 = trunc i64 %263 to i32
  store i32 %264, i32* %10, align 4
  br label %265

265:                                              ; preds = %255, %226
  %266 = load %struct.state*, %struct.state** %8, align 8
  %267 = getelementptr inbounds %struct.state, %struct.state* %266, i32 0, i32 4
  %268 = load %struct.ttinfo*, %struct.ttinfo** %267, align 8
  %269 = load i32, i32* %10, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.ttinfo, %struct.ttinfo* %268, i64 %270
  store %struct.ttinfo* %271, %struct.ttinfo** %9, align 8
  %272 = load %struct.ttinfo*, %struct.ttinfo** %9, align 8
  %273 = getelementptr inbounds %struct.ttinfo, %struct.ttinfo* %272, i32 0, i32 2
  %274 = load i32, i32* %273, align 8
  %275 = load %struct.state*, %struct.state** %8, align 8
  %276 = load %struct.tm*, %struct.tm** %7, align 8
  %277 = call %struct.tm* @timesub(i64* %12, i32 %274, %struct.state* %275, %struct.tm* %276)
  store %struct.tm* %277, %struct.tm** %11, align 8
  %278 = load %struct.ttinfo*, %struct.ttinfo** %9, align 8
  %279 = getelementptr inbounds %struct.ttinfo, %struct.ttinfo* %278, i32 0, i32 0
  %280 = load i64, i64* %279, align 8
  %281 = load %struct.tm*, %struct.tm** %7, align 8
  %282 = getelementptr inbounds %struct.tm, %struct.tm* %281, i32 0, i32 1
  store i64 %280, i64* %282, align 8
  %283 = load %struct.state*, %struct.state** %8, align 8
  %284 = getelementptr inbounds %struct.state, %struct.state* %283, i32 0, i32 3
  %285 = load i32*, i32** %284, align 8
  %286 = load %struct.ttinfo*, %struct.ttinfo** %9, align 8
  %287 = getelementptr inbounds %struct.ttinfo, %struct.ttinfo* %286, i32 0, i32 1
  %288 = load i64, i64* %287, align 8
  %289 = getelementptr inbounds i32, i32* %285, i64 %288
  %290 = load i32**, i32*** @tzname, align 8
  %291 = load %struct.tm*, %struct.tm** %7, align 8
  %292 = getelementptr inbounds %struct.tm, %struct.tm* %291, i32 0, i32 1
  %293 = load i64, i64* %292, align 8
  %294 = getelementptr inbounds i32*, i32** %290, i64 %293
  store i32* %289, i32** %294, align 8
  %295 = load %struct.tm*, %struct.tm** %11, align 8
  store %struct.tm* %295, %struct.tm** %4, align 8
  br label %296

296:                                              ; preds = %265, %191, %189, %149, %104
  %297 = load %struct.tm*, %struct.tm** %4, align 8
  ret %struct.tm* %297
}

declare dso_local %struct.tm* @timesub(i64*, i32, %struct.state*, %struct.tm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
