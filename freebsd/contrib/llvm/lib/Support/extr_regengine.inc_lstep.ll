; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/llvm/lib/Support/extr_regengine.inc_lstep.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/llvm/lib/Support/extr_regengine.inc_lstep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.re_guts = type { i32*, i32* }

@BOL = common dso_local global i32 0, align 4
@BOLEOL = common dso_local global i32 0, align 4
@EOL = common dso_local global i32 0, align 4
@BOW = common dso_local global i32 0, align 4
@EOW = common dso_local global i32 0, align 4
@nope = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.re_guts*, i64, i64, i32, i32, i32)* @step to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @step(%struct.re_guts* %0, i64 %1, i64 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.re_guts*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.re_guts* %0, %struct.re_guts** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %19 = load i64, i64* %8, align 8
  store i64 %19, i64* %15, align 8
  %20 = load i32, i32* %16, align 4
  %21 = load i64, i64* %15, align 8
  %22 = call i32 @INIT(i32 %20, i64 %21)
  br label %23

23:                                               ; preds = %304, %6
  %24 = load i64, i64* %15, align 8
  %25 = load i64, i64* %9, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %309

27:                                               ; preds = %23
  %28 = load %struct.re_guts*, %struct.re_guts** %7, align 8
  %29 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* %15, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* %14, align 4
  %35 = call i32 @OP(i32 %34)
  switch i32 %35, label %300 [
    i32 140, label %36
    i32 142, label %43
    i32 144, label %69
    i32 139, label %82
    i32 143, label %95
    i32 138, label %104
    i32 147, label %113
    i32 146, label %122
    i32 145, label %143
    i32 131, label %143
    i32 134, label %147
    i32 129, label %151
    i32 133, label %183
    i32 128, label %192
    i32 137, label %196
    i32 132, label %196
    i32 141, label %200
    i32 136, label %223
    i32 135, label %259
    i32 130, label %296
  ]

36:                                               ; preds = %27
  %37 = load i64, i64* %15, align 8
  %38 = load i64, i64* %9, align 8
  %39 = sub i64 %38, 1
  %40 = icmp eq i64 %37, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  br label %303

43:                                               ; preds = %27
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @NONCHAR(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %14, align 4
  %50 = call i32 @OPND(i32 %49)
  %51 = trunc i32 %50 to i8
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %48, %52
  br label %54

54:                                               ; preds = %47, %43
  %55 = phi i1 [ true, %43 ], [ %53, %47 ]
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert(i32 %56)
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %14, align 4
  %60 = call i32 @OPND(i32 %59)
  %61 = trunc i32 %60 to i8
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %58, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %54
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @FWD(i32 %65, i32 %66, i32 1)
  br label %68

68:                                               ; preds = %64, %54
  br label %303

69:                                               ; preds = %27
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* @BOL, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* @BOLEOL, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %73, %69
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @FWD(i32 %78, i32 %79, i32 1)
  br label %81

81:                                               ; preds = %77, %73
  br label %303

82:                                               ; preds = %27
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* @EOL, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %90, label %86

86:                                               ; preds = %82
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* @BOLEOL, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %86, %82
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @FWD(i32 %91, i32 %92, i32 1)
  br label %94

94:                                               ; preds = %90, %86
  br label %303

95:                                               ; preds = %27
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* @BOW, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %95
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* %10, align 4
  %102 = call i32 @FWD(i32 %100, i32 %101, i32 1)
  br label %103

103:                                              ; preds = %99, %95
  br label %303

104:                                              ; preds = %27
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* @EOW, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %112

108:                                              ; preds = %104
  %109 = load i32, i32* %12, align 4
  %110 = load i32, i32* %10, align 4
  %111 = call i32 @FWD(i32 %109, i32 %110, i32 1)
  br label %112

112:                                              ; preds = %108, %104
  br label %303

113:                                              ; preds = %27
  %114 = load i32, i32* %11, align 4
  %115 = call i32 @NONCHAR(i32 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %121, label %117

117:                                              ; preds = %113
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* %10, align 4
  %120 = call i32 @FWD(i32 %118, i32 %119, i32 1)
  br label %121

121:                                              ; preds = %117, %113
  br label %303

122:                                              ; preds = %27
  %123 = load %struct.re_guts*, %struct.re_guts** %7, align 8
  %124 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %14, align 4
  %127 = call i32 @OPND(i32 %126)
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %125, i64 %128
  store i32* %129, i32** %13, align 8
  %130 = load i32, i32* %11, align 4
  %131 = call i32 @NONCHAR(i32 %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %142, label %133

133:                                              ; preds = %122
  %134 = load i32*, i32** %13, align 8
  %135 = load i32, i32* %11, align 4
  %136 = call i32 @CHIN(i32* %134, i32 %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %133
  %139 = load i32, i32* %12, align 4
  %140 = load i32, i32* %10, align 4
  %141 = call i32 @FWD(i32 %139, i32 %140, i32 1)
  br label %142

142:                                              ; preds = %138, %133, %122
  br label %303

143:                                              ; preds = %27, %27
  %144 = load i32, i32* %12, align 4
  %145 = load i32, i32* %12, align 4
  %146 = call i32 @FWD(i32 %144, i32 %145, i32 1)
  br label %303

147:                                              ; preds = %27
  %148 = load i32, i32* %12, align 4
  %149 = load i32, i32* %12, align 4
  %150 = call i32 @FWD(i32 %148, i32 %149, i32 1)
  br label %303

151:                                              ; preds = %27
  %152 = load i32, i32* %12, align 4
  %153 = load i32, i32* %12, align 4
  %154 = call i32 @FWD(i32 %152, i32 %153, i32 1)
  %155 = load i32, i32* %12, align 4
  %156 = load i32, i32* %14, align 4
  %157 = call i32 @OPND(i32 %156)
  %158 = call i32 @ISSETBACK(i32 %155, i32 %157)
  store i32 %158, i32* %18, align 4
  %159 = load i32, i32* %12, align 4
  %160 = load i32, i32* %12, align 4
  %161 = load i32, i32* %14, align 4
  %162 = call i32 @OPND(i32 %161)
  %163 = call i32 @BACK(i32 %159, i32 %160, i32 %162)
  %164 = load i32, i32* %18, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %182, label %166

166:                                              ; preds = %151
  %167 = load i32, i32* %12, align 4
  %168 = load i32, i32* %14, align 4
  %169 = call i32 @OPND(i32 %168)
  %170 = call i32 @ISSETBACK(i32 %167, i32 %169)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %182

172:                                              ; preds = %166
  %173 = load i32, i32* %14, align 4
  %174 = call i32 @OPND(i32 %173)
  %175 = add nsw i32 %174, 1
  %176 = sext i32 %175 to i64
  %177 = load i64, i64* %15, align 8
  %178 = sub i64 %177, %176
  store i64 %178, i64* %15, align 8
  %179 = load i32, i32* %16, align 4
  %180 = load i64, i64* %15, align 8
  %181 = call i32 @INIT(i32 %179, i64 %180)
  br label %182

182:                                              ; preds = %172, %166, %151
  br label %303

183:                                              ; preds = %27
  %184 = load i32, i32* %12, align 4
  %185 = load i32, i32* %12, align 4
  %186 = call i32 @FWD(i32 %184, i32 %185, i32 1)
  %187 = load i32, i32* %12, align 4
  %188 = load i32, i32* %12, align 4
  %189 = load i32, i32* %14, align 4
  %190 = call i32 @OPND(i32 %189)
  %191 = call i32 @FWD(i32 %187, i32 %188, i32 %190)
  br label %303

192:                                              ; preds = %27
  %193 = load i32, i32* %12, align 4
  %194 = load i32, i32* %12, align 4
  %195 = call i32 @FWD(i32 %193, i32 %194, i32 1)
  br label %303

196:                                              ; preds = %27, %27
  %197 = load i32, i32* %12, align 4
  %198 = load i32, i32* %12, align 4
  %199 = call i32 @FWD(i32 %197, i32 %198, i32 1)
  br label %303

200:                                              ; preds = %27
  %201 = load i32, i32* %12, align 4
  %202 = load i32, i32* %12, align 4
  %203 = call i32 @FWD(i32 %201, i32 %202, i32 1)
  %204 = load %struct.re_guts*, %struct.re_guts** %7, align 8
  %205 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %204, i32 0, i32 0
  %206 = load i32*, i32** %205, align 8
  %207 = load i64, i64* %15, align 8
  %208 = load i32, i32* %14, align 4
  %209 = call i32 @OPND(i32 %208)
  %210 = sext i32 %209 to i64
  %211 = add i64 %207, %210
  %212 = getelementptr inbounds i32, i32* %206, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @OP(i32 %213)
  %215 = icmp eq i32 %214, 135
  %216 = zext i1 %215 to i32
  %217 = call i32 @assert(i32 %216)
  %218 = load i32, i32* %12, align 4
  %219 = load i32, i32* %12, align 4
  %220 = load i32, i32* %14, align 4
  %221 = call i32 @OPND(i32 %220)
  %222 = call i32 @FWD(i32 %218, i32 %219, i32 %221)
  br label %303

223:                                              ; preds = %27
  %224 = load i32, i32* %12, align 4
  %225 = load i32, i32* %16, align 4
  %226 = call i32 @ISSTATEIN(i32 %224, i32 %225)
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %258

228:                                              ; preds = %223
  store i64 1, i64* %17, align 8
  br label %229

229:                                              ; preds = %246, %228
  %230 = load %struct.re_guts*, %struct.re_guts** %7, align 8
  %231 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %230, i32 0, i32 0
  %232 = load i32*, i32** %231, align 8
  %233 = load i64, i64* %15, align 8
  %234 = load i64, i64* %17, align 8
  %235 = add i64 %233, %234
  %236 = getelementptr inbounds i32, i32* %232, i64 %235
  %237 = load i32, i32* %236, align 4
  store i32 %237, i32* %14, align 4
  %238 = call i32 @OP(i32 %237)
  %239 = icmp ne i32 %238, 130
  br i1 %239, label %240, label %252

240:                                              ; preds = %229
  %241 = load i32, i32* %14, align 4
  %242 = call i32 @OP(i32 %241)
  %243 = icmp eq i32 %242, 135
  %244 = zext i1 %243 to i32
  %245 = call i32 @assert(i32 %244)
  br label %246

246:                                              ; preds = %240
  %247 = load i32, i32* %14, align 4
  %248 = call i32 @OPND(i32 %247)
  %249 = sext i32 %248 to i64
  %250 = load i64, i64* %17, align 8
  %251 = add i64 %250, %249
  store i64 %251, i64* %17, align 8
  br label %229

252:                                              ; preds = %229
  %253 = load i32, i32* %12, align 4
  %254 = load i32, i32* %12, align 4
  %255 = load i64, i64* %17, align 8
  %256 = trunc i64 %255 to i32
  %257 = call i32 @FWD(i32 %253, i32 %254, i32 %256)
  br label %258

258:                                              ; preds = %252, %223
  br label %303

259:                                              ; preds = %27
  %260 = load i32, i32* %12, align 4
  %261 = load i32, i32* %12, align 4
  %262 = call i32 @FWD(i32 %260, i32 %261, i32 1)
  %263 = load %struct.re_guts*, %struct.re_guts** %7, align 8
  %264 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %263, i32 0, i32 0
  %265 = load i32*, i32** %264, align 8
  %266 = load i64, i64* %15, align 8
  %267 = load i32, i32* %14, align 4
  %268 = call i32 @OPND(i32 %267)
  %269 = sext i32 %268 to i64
  %270 = add i64 %266, %269
  %271 = getelementptr inbounds i32, i32* %265, i64 %270
  %272 = load i32, i32* %271, align 4
  %273 = call i32 @OP(i32 %272)
  %274 = icmp ne i32 %273, 130
  br i1 %274, label %275, label %295

275:                                              ; preds = %259
  %276 = load %struct.re_guts*, %struct.re_guts** %7, align 8
  %277 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %276, i32 0, i32 0
  %278 = load i32*, i32** %277, align 8
  %279 = load i64, i64* %15, align 8
  %280 = load i32, i32* %14, align 4
  %281 = call i32 @OPND(i32 %280)
  %282 = sext i32 %281 to i64
  %283 = add i64 %279, %282
  %284 = getelementptr inbounds i32, i32* %278, i64 %283
  %285 = load i32, i32* %284, align 4
  %286 = call i32 @OP(i32 %285)
  %287 = icmp eq i32 %286, 135
  %288 = zext i1 %287 to i32
  %289 = call i32 @assert(i32 %288)
  %290 = load i32, i32* %12, align 4
  %291 = load i32, i32* %12, align 4
  %292 = load i32, i32* %14, align 4
  %293 = call i32 @OPND(i32 %292)
  %294 = call i32 @FWD(i32 %290, i32 %291, i32 %293)
  br label %295

295:                                              ; preds = %275, %259
  br label %303

296:                                              ; preds = %27
  %297 = load i32, i32* %12, align 4
  %298 = load i32, i32* %12, align 4
  %299 = call i32 @FWD(i32 %297, i32 %298, i32 1)
  br label %303

300:                                              ; preds = %27
  %301 = load i32, i32* @nope, align 4
  %302 = call i32 @assert(i32 %301)
  br label %303

303:                                              ; preds = %300, %296, %295, %258, %200, %196, %192, %183, %182, %147, %143, %142, %121, %112, %103, %94, %81, %68, %36
  br label %304

304:                                              ; preds = %303
  %305 = load i64, i64* %15, align 8
  %306 = add i64 %305, 1
  store i64 %306, i64* %15, align 8
  %307 = load i32, i32* %16, align 4
  %308 = call i32 @INC(i32 %307)
  br label %23

309:                                              ; preds = %23
  %310 = load i32, i32* %12, align 4
  ret i32 %310
}

declare dso_local i32 @INIT(i32, i64) #1

declare dso_local i32 @OP(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @NONCHAR(i32) #1

declare dso_local i32 @OPND(i32) #1

declare dso_local i32 @FWD(i32, i32, i32) #1

declare dso_local i32 @CHIN(i32*, i32) #1

declare dso_local i32 @ISSETBACK(i32, i32) #1

declare dso_local i32 @BACK(i32, i32, i32) #1

declare dso_local i32 @ISSTATEIN(i32, i32) #1

declare dso_local i32 @INC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
