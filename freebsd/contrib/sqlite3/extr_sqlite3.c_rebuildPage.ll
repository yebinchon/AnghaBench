; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_rebuildPage.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_rebuildPage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32*, i32*, i32**, i32** }
%struct.TYPE_9__ = type { i32, i32 (%struct.TYPE_9__*, i32*)*, i32, i64, %struct.TYPE_8__*, i32*, i32* }
%struct.TYPE_8__ = type { i32, i32 }

@NB = common dso_local global i32 0, align 4
@SQLITE_CORRUPT_BKPT = common dso_local global i32 0, align 4
@CORRUPT_DB = common dso_local global i64 0, align 8
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32, i32, %struct.TYPE_9__*)* @rebuildPage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rebuildPage(%struct.TYPE_10__* %0, i32 %1, i32 %2, %struct.TYPE_9__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %9, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %10, align 4
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 6
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %11, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %12, align 4
  %35 = load i32*, i32** %11, align 8
  %36 = load i32, i32* %12, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  store i32* %38, i32** %13, align 8
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %40, %41
  store i32 %42, i32* %16, align 4
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 5
  %45 = load i32*, i32** %44, align 8
  store i32* %45, i32** %17, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 4
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32* @sqlite3PagerTempSpace(i32 %50)
  store i32* %51, i32** %18, align 8
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* %16, align 4
  %54 = icmp slt i32 %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  %57 = load i32*, i32** %11, align 8
  %58 = load i32, i32* %10, align 4
  %59 = add nsw i32 %58, 5
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = call i64 @get2byte(i32* %61)
  store i64 %62, i64* %15, align 8
  %63 = load i64, i64* %15, align 8
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  %66 = icmp ugt i64 %63, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %4
  store i64 0, i64* %15, align 8
  br label %68

68:                                               ; preds = %67, %4
  %69 = load i32*, i32** %18, align 8
  %70 = load i64, i64* %15, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = load i32*, i32** %11, align 8
  %73 = load i64, i64* %15, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  %75 = load i32, i32* %12, align 4
  %76 = sext i32 %75 to i64
  %77 = load i64, i64* %15, align 8
  %78 = sub i64 %76, %77
  %79 = trunc i64 %78 to i32
  %80 = call i32 @memcpy(i32* %71, i32* %74, i32 %79)
  store i32 0, i32* %20, align 4
  br label %81

81:                                               ; preds = %102, %68
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %20, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %14, align 4
  %90 = icmp sle i32 %88, %89
  br i1 %90, label %91, label %99

91:                                               ; preds = %81
  %92 = load i32, i32* %20, align 4
  %93 = load i32, i32* @NB, align 4
  %94 = mul nsw i32 %93, 2
  %95 = icmp slt i32 %92, %94
  %96 = zext i1 %95 to i32
  %97 = call i64 @ALWAYS(i32 %96)
  %98 = icmp ne i64 %97, 0
  br label %99

99:                                               ; preds = %91, %81
  %100 = phi i1 [ false, %81 ], [ %98, %91 ]
  br i1 %100, label %101, label %105

101:                                              ; preds = %99
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %20, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %20, align 4
  br label %81

105:                                              ; preds = %99
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 2
  %108 = load i32**, i32*** %107, align 8
  %109 = load i32, i32* %20, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32*, i32** %108, i64 %110
  %112 = load i32*, i32** %111, align 8
  store i32* %112, i32** %21, align 8
  %113 = load i32*, i32** %13, align 8
  store i32* %113, i32** %19, align 8
  br label %114

114:                                              ; preds = %105, %254
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 3
  %117 = load i32**, i32*** %116, align 8
  %118 = load i32, i32* %14, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32*, i32** %117, i64 %119
  %121 = load i32*, i32** %120, align 8
  store i32* %121, i32** %22, align 8
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %14, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %23, align 4
  %129 = load i32, i32* %23, align 4
  %130 = icmp sgt i32 %129, 0
  %131 = zext i1 %130 to i32
  %132 = call i32 @assert(i32 %131)
  %133 = load i32*, i32** %22, align 8
  %134 = load i32*, i32** %11, align 8
  %135 = load i32*, i32** %13, align 8
  %136 = call i64 @SQLITE_WITHIN(i32* %133, i32* %134, i32* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %158

138:                                              ; preds = %114
  %139 = load i32*, i32** %22, align 8
  %140 = load i32, i32* %23, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = ptrtoint i32* %142 to i64
  %144 = load i32*, i32** %13, align 8
  %145 = ptrtoint i32* %144 to i64
  %146 = icmp sgt i64 %143, %145
  br i1 %146, label %147, label %149

147:                                              ; preds = %138
  %148 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  store i32 %148, i32* %5, align 4
  br label %295

149:                                              ; preds = %138
  %150 = load i32*, i32** %18, align 8
  %151 = load i32*, i32** %22, align 8
  %152 = load i32*, i32** %11, align 8
  %153 = ptrtoint i32* %151 to i64
  %154 = ptrtoint i32* %152 to i64
  %155 = sub i64 %153, %154
  %156 = sdiv exact i64 %155, 4
  %157 = getelementptr inbounds i32, i32* %150, i64 %156
  store i32* %157, i32** %22, align 8
  br label %176

158:                                              ; preds = %114
  %159 = load i32*, i32** %22, align 8
  %160 = load i32, i32* %23, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = ptrtoint i32* %162 to i64
  %164 = load i32*, i32** %21, align 8
  %165 = ptrtoint i32* %164 to i64
  %166 = icmp sgt i64 %163, %165
  br i1 %166, label %167, label %175

167:                                              ; preds = %158
  %168 = load i32*, i32** %22, align 8
  %169 = ptrtoint i32* %168 to i64
  %170 = load i32*, i32** %21, align 8
  %171 = ptrtoint i32* %170 to i64
  %172 = icmp slt i64 %169, %171
  br i1 %172, label %173, label %175

173:                                              ; preds = %167
  %174 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  store i32 %174, i32* %5, align 4
  br label %295

175:                                              ; preds = %167, %158
  br label %176

176:                                              ; preds = %175, %149
  %177 = load i32, i32* %23, align 4
  %178 = load i32*, i32** %19, align 8
  %179 = sext i32 %177 to i64
  %180 = sub i64 0, %179
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  store i32* %181, i32** %19, align 8
  %182 = load i32*, i32** %17, align 8
  %183 = load i32*, i32** %19, align 8
  %184 = load i32*, i32** %11, align 8
  %185 = ptrtoint i32* %183 to i64
  %186 = ptrtoint i32* %184 to i64
  %187 = sub i64 %185, %186
  %188 = sdiv exact i64 %187, 4
  %189 = trunc i64 %188 to i32
  %190 = call i32 @put2byte(i32* %182, i32 %189)
  %191 = load i32*, i32** %17, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 2
  store i32* %192, i32** %17, align 8
  %193 = load i32*, i32** %19, align 8
  %194 = load i32*, i32** %17, align 8
  %195 = icmp ult i32* %193, %194
  br i1 %195, label %196, label %198

196:                                              ; preds = %176
  %197 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  store i32 %197, i32* %5, align 4
  br label %295

198:                                              ; preds = %176
  %199 = load i32*, i32** %19, align 8
  %200 = load i32*, i32** %22, align 8
  %201 = load i32, i32* %23, align 4
  %202 = call i32 @memcpy(i32* %199, i32* %200, i32 %201)
  %203 = load i32, i32* %23, align 4
  %204 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 1
  %206 = load i32 (%struct.TYPE_9__*, i32*)*, i32 (%struct.TYPE_9__*, i32*)** %205, align 8
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %208 = load i32*, i32** %22, align 8
  %209 = call i32 %206(%struct.TYPE_9__* %207, i32* %208)
  %210 = icmp eq i32 %203, %209
  br i1 %210, label %214, label %211

211:                                              ; preds = %198
  %212 = load i64, i64* @CORRUPT_DB, align 8
  %213 = icmp ne i64 %212, 0
  br label %214

214:                                              ; preds = %211, %198
  %215 = phi i1 [ true, %198 ], [ %213, %211 ]
  %216 = zext i1 %215 to i32
  %217 = call i32 @assert(i32 %216)
  %218 = load i32, i32* %23, align 4
  %219 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 1
  %221 = load i32 (%struct.TYPE_9__*, i32*)*, i32 (%struct.TYPE_9__*, i32*)** %220, align 8
  %222 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %223 = load i32*, i32** %22, align 8
  %224 = call i32 %221(%struct.TYPE_9__* %222, i32* %223)
  %225 = icmp ne i32 %218, %224
  %226 = zext i1 %225 to i32
  %227 = call i32 @testcase(i32 %226)
  %228 = load i32, i32* %14, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %14, align 4
  %230 = load i32, i32* %14, align 4
  %231 = load i32, i32* %16, align 4
  %232 = icmp sge i32 %230, %231
  br i1 %232, label %233, label %234

233:                                              ; preds = %214
  br label %255

234:                                              ; preds = %214
  %235 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %236 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %235, i32 0, i32 0
  %237 = load i32*, i32** %236, align 8
  %238 = load i32, i32* %20, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %237, i64 %239
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* %14, align 4
  %243 = icmp sle i32 %241, %242
  br i1 %243, label %244, label %254

244:                                              ; preds = %234
  %245 = load i32, i32* %20, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %20, align 4
  %247 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %248 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %247, i32 0, i32 2
  %249 = load i32**, i32*** %248, align 8
  %250 = load i32, i32* %20, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32*, i32** %249, i64 %251
  %253 = load i32*, i32** %252, align 8
  store i32* %253, i32** %21, align 8
  br label %254

254:                                              ; preds = %244, %234
  br label %114

255:                                              ; preds = %233
  %256 = load i32, i32* %8, align 4
  %257 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %258 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %257, i32 0, i32 2
  store i32 %256, i32* %258, align 8
  %259 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %260 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %259, i32 0, i32 3
  store i64 0, i64* %260, align 8
  %261 = load i32*, i32** %11, align 8
  %262 = load i32, i32* %10, align 4
  %263 = add nsw i32 %262, 1
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32, i32* %261, i64 %264
  %266 = call i32 @put2byte(i32* %265, i32 0)
  %267 = load i32*, i32** %11, align 8
  %268 = load i32, i32* %10, align 4
  %269 = add nsw i32 %268, 3
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i32, i32* %267, i64 %270
  %272 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %273 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %272, i32 0, i32 2
  %274 = load i32, i32* %273, align 8
  %275 = call i32 @put2byte(i32* %271, i32 %274)
  %276 = load i32*, i32** %11, align 8
  %277 = load i32, i32* %10, align 4
  %278 = add nsw i32 %277, 5
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32, i32* %276, i64 %279
  %281 = load i32*, i32** %19, align 8
  %282 = load i32*, i32** %11, align 8
  %283 = ptrtoint i32* %281 to i64
  %284 = ptrtoint i32* %282 to i64
  %285 = sub i64 %283, %284
  %286 = sdiv exact i64 %285, 4
  %287 = trunc i64 %286 to i32
  %288 = call i32 @put2byte(i32* %280, i32 %287)
  %289 = load i32*, i32** %11, align 8
  %290 = load i32, i32* %10, align 4
  %291 = add nsw i32 %290, 7
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i32, i32* %289, i64 %292
  store i32 0, i32* %293, align 4
  %294 = load i32, i32* @SQLITE_OK, align 4
  store i32 %294, i32* %5, align 4
  br label %295

295:                                              ; preds = %255, %196, %173, %147
  %296 = load i32, i32* %5, align 4
  ret i32 %296
}

declare dso_local i32* @sqlite3PagerTempSpace(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @get2byte(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @ALWAYS(i32) #1

declare dso_local i64 @SQLITE_WITHIN(i32*, i32*, i32*) #1

declare dso_local i32 @put2byte(i32*, i32) #1

declare dso_local i32 @testcase(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
