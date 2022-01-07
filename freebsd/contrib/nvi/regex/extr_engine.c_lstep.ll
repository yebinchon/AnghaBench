; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/regex/extr_engine.c_lstep.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/regex/extr_engine.c_lstep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.re_guts = type { i32*, i64*, i32* }

@BOL = common dso_local global i32 0, align 4
@BOLEOL = common dso_local global i32 0, align 4
@EOL = common dso_local global i32 0, align 4
@BOW = common dso_local global i32 0, align 4
@EOW = common dso_local global i32 0, align 4
@nope = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.re_guts*, i64, i64, i32, i32, i64, i32)* @step to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @step(%struct.re_guts* %0, i64 %1, i64 %2, i32 %3, i32 %4, i64 %5, i32 %6) #0 {
  %8 = alloca %struct.re_guts*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store %struct.re_guts* %0, %struct.re_guts** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  store i32 %6, i32* %14, align 4
  %22 = load i64, i64* %9, align 8
  store i64 %22, i64* %18, align 8
  %23 = load i32, i32* %19, align 4
  %24 = load i64, i64* %18, align 8
  %25 = call i32 @INIT(i32 %23, i64 %24)
  br label %26

26:                                               ; preds = %294, %7
  %27 = load i64, i64* %18, align 8
  %28 = load i64, i64* %10, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %299

30:                                               ; preds = %26
  %31 = load %struct.re_guts*, %struct.re_guts** %8, align 8
  %32 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* %18, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %16, align 4
  %37 = load %struct.re_guts*, %struct.re_guts** %8, align 8
  %38 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %37, i32 0, i32 1
  %39 = load i64*, i64** %38, align 8
  %40 = load i64, i64* %18, align 8
  %41 = getelementptr inbounds i64, i64* %39, i64 %40
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %17, align 8
  %43 = load i32, i32* %16, align 4
  switch i32 %43, label %290 [
    i32 140, label %44
    i32 142, label %51
    i32 144, label %70
    i32 139, label %83
    i32 143, label %96
    i32 138, label %105
    i32 147, label %114
    i32 146, label %122
    i32 145, label %140
    i32 131, label %140
    i32 134, label %144
    i32 129, label %148
    i32 133, label %175
    i32 128, label %184
    i32 137, label %188
    i32 132, label %188
    i32 141, label %192
    i32 136, label %213
    i32 135, label %255
    i32 130, label %286
  ]

44:                                               ; preds = %30
  %45 = load i64, i64* %18, align 8
  %46 = load i64, i64* %10, align 8
  %47 = sub i64 %46, 1
  %48 = icmp eq i64 %45, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  br label %293

51:                                               ; preds = %30
  %52 = load i32, i32* %12, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load i64, i64* %13, align 8
  %56 = load i64, i64* %17, align 8
  %57 = icmp ne i64 %55, %56
  br label %58

58:                                               ; preds = %54, %51
  %59 = phi i1 [ true, %51 ], [ %57, %54 ]
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert(i32 %60)
  %62 = load i64, i64* %13, align 8
  %63 = load i64, i64* %17, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %58
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @FWD(i32 %66, i32 %67, i32 1)
  br label %69

69:                                               ; preds = %65, %58
  br label %293

70:                                               ; preds = %30
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* @BOL, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %78, label %74

74:                                               ; preds = %70
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* @BOLEOL, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %74, %70
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* %11, align 4
  %81 = call i32 @FWD(i32 %79, i32 %80, i32 1)
  br label %82

82:                                               ; preds = %78, %74
  br label %293

83:                                               ; preds = %30
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* @EOL, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %91, label %87

87:                                               ; preds = %83
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* @BOLEOL, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %87, %83
  %92 = load i32, i32* %14, align 4
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @FWD(i32 %92, i32 %93, i32 1)
  br label %95

95:                                               ; preds = %91, %87
  br label %293

96:                                               ; preds = %30
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* @BOW, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %96
  %101 = load i32, i32* %14, align 4
  %102 = load i32, i32* %11, align 4
  %103 = call i32 @FWD(i32 %101, i32 %102, i32 1)
  br label %104

104:                                              ; preds = %100, %96
  br label %293

105:                                              ; preds = %30
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* @EOW, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %113

109:                                              ; preds = %105
  %110 = load i32, i32* %14, align 4
  %111 = load i32, i32* %11, align 4
  %112 = call i32 @FWD(i32 %110, i32 %111, i32 1)
  br label %113

113:                                              ; preds = %109, %105
  br label %293

114:                                              ; preds = %30
  %115 = load i32, i32* %12, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %121, label %117

117:                                              ; preds = %114
  %118 = load i32, i32* %14, align 4
  %119 = load i32, i32* %11, align 4
  %120 = call i32 @FWD(i32 %118, i32 %119, i32 1)
  br label %121

121:                                              ; preds = %117, %114
  br label %293

122:                                              ; preds = %30
  %123 = load %struct.re_guts*, %struct.re_guts** %8, align 8
  %124 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %123, i32 0, i32 2
  %125 = load i32*, i32** %124, align 8
  %126 = load i64, i64* %17, align 8
  %127 = getelementptr inbounds i32, i32* %125, i64 %126
  store i32* %127, i32** %15, align 8
  %128 = load i32, i32* %12, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %139, label %130

130:                                              ; preds = %122
  %131 = load i32*, i32** %15, align 8
  %132 = load i64, i64* %13, align 8
  %133 = call i32 @CHIN(i32* %131, i64 %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %130
  %136 = load i32, i32* %14, align 4
  %137 = load i32, i32* %11, align 4
  %138 = call i32 @FWD(i32 %136, i32 %137, i32 1)
  br label %139

139:                                              ; preds = %135, %130, %122
  br label %293

140:                                              ; preds = %30, %30
  %141 = load i32, i32* %14, align 4
  %142 = load i32, i32* %14, align 4
  %143 = call i32 @FWD(i32 %141, i32 %142, i32 1)
  br label %293

144:                                              ; preds = %30
  %145 = load i32, i32* %14, align 4
  %146 = load i32, i32* %14, align 4
  %147 = call i32 @FWD(i32 %145, i32 %146, i32 1)
  br label %293

148:                                              ; preds = %30
  %149 = load i32, i32* %14, align 4
  %150 = load i32, i32* %14, align 4
  %151 = call i32 @FWD(i32 %149, i32 %150, i32 1)
  %152 = load i32, i32* %14, align 4
  %153 = load i64, i64* %17, align 8
  %154 = call i32 @ISSETBACK(i32 %152, i64 %153)
  store i32 %154, i32* %21, align 4
  %155 = load i32, i32* %14, align 4
  %156 = load i32, i32* %14, align 4
  %157 = load i64, i64* %17, align 8
  %158 = call i32 @BACK(i32 %155, i32 %156, i64 %157)
  %159 = load i32, i32* %21, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %174, label %161

161:                                              ; preds = %148
  %162 = load i32, i32* %14, align 4
  %163 = load i64, i64* %17, align 8
  %164 = call i32 @ISSETBACK(i32 %162, i64 %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %174

166:                                              ; preds = %161
  %167 = load i64, i64* %17, align 8
  %168 = add i64 %167, 1
  %169 = load i64, i64* %18, align 8
  %170 = sub i64 %169, %168
  store i64 %170, i64* %18, align 8
  %171 = load i32, i32* %19, align 4
  %172 = load i64, i64* %18, align 8
  %173 = call i32 @INIT(i32 %171, i64 %172)
  br label %174

174:                                              ; preds = %166, %161, %148
  br label %293

175:                                              ; preds = %30
  %176 = load i32, i32* %14, align 4
  %177 = load i32, i32* %14, align 4
  %178 = call i32 @FWD(i32 %176, i32 %177, i32 1)
  %179 = load i32, i32* %14, align 4
  %180 = load i32, i32* %14, align 4
  %181 = load i64, i64* %17, align 8
  %182 = trunc i64 %181 to i32
  %183 = call i32 @FWD(i32 %179, i32 %180, i32 %182)
  br label %293

184:                                              ; preds = %30
  %185 = load i32, i32* %14, align 4
  %186 = load i32, i32* %14, align 4
  %187 = call i32 @FWD(i32 %185, i32 %186, i32 1)
  br label %293

188:                                              ; preds = %30, %30
  %189 = load i32, i32* %14, align 4
  %190 = load i32, i32* %14, align 4
  %191 = call i32 @FWD(i32 %189, i32 %190, i32 1)
  br label %293

192:                                              ; preds = %30
  %193 = load i32, i32* %14, align 4
  %194 = load i32, i32* %14, align 4
  %195 = call i32 @FWD(i32 %193, i32 %194, i32 1)
  %196 = load %struct.re_guts*, %struct.re_guts** %8, align 8
  %197 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %196, i32 0, i32 0
  %198 = load i32*, i32** %197, align 8
  %199 = load i64, i64* %18, align 8
  %200 = load i64, i64* %17, align 8
  %201 = add i64 %199, %200
  %202 = getelementptr inbounds i32, i32* %198, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @OP(i32 %203)
  %205 = icmp eq i32 %204, 135
  %206 = zext i1 %205 to i32
  %207 = call i32 @assert(i32 %206)
  %208 = load i32, i32* %14, align 4
  %209 = load i32, i32* %14, align 4
  %210 = load i64, i64* %17, align 8
  %211 = trunc i64 %210 to i32
  %212 = call i32 @FWD(i32 %208, i32 %209, i32 %211)
  br label %293

213:                                              ; preds = %30
  %214 = load i32, i32* %14, align 4
  %215 = load i32, i32* %19, align 4
  %216 = call i32 @ISSTATEIN(i32 %214, i32 %215)
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %254

218:                                              ; preds = %213
  store i64 1, i64* %20, align 8
  br label %219

219:                                              ; preds = %244, %218
  %220 = load %struct.re_guts*, %struct.re_guts** %8, align 8
  %221 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %220, i32 0, i32 0
  %222 = load i32*, i32** %221, align 8
  %223 = load i64, i64* %18, align 8
  %224 = load i64, i64* %20, align 8
  %225 = add i64 %223, %224
  %226 = getelementptr inbounds i32, i32* %222, i64 %225
  %227 = load i32, i32* %226, align 4
  store i32 %227, i32* %16, align 4
  %228 = load %struct.re_guts*, %struct.re_guts** %8, align 8
  %229 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %228, i32 0, i32 1
  %230 = load i64*, i64** %229, align 8
  %231 = load i64, i64* %18, align 8
  %232 = load i64, i64* %20, align 8
  %233 = add i64 %231, %232
  %234 = getelementptr inbounds i64, i64* %230, i64 %233
  %235 = load i64, i64* %234, align 8
  store i64 %235, i64* %17, align 8
  %236 = load i32, i32* %16, align 4
  %237 = icmp eq i32 %236, 130
  br i1 %237, label %238, label %239

238:                                              ; preds = %219
  br label %248

239:                                              ; preds = %219
  %240 = load i32, i32* %16, align 4
  %241 = icmp eq i32 %240, 135
  %242 = zext i1 %241 to i32
  %243 = call i32 @assert(i32 %242)
  br label %244

244:                                              ; preds = %239
  %245 = load i64, i64* %17, align 8
  %246 = load i64, i64* %20, align 8
  %247 = add i64 %246, %245
  store i64 %247, i64* %20, align 8
  br label %219

248:                                              ; preds = %238
  %249 = load i32, i32* %14, align 4
  %250 = load i32, i32* %14, align 4
  %251 = load i64, i64* %20, align 8
  %252 = trunc i64 %251 to i32
  %253 = call i32 @FWD(i32 %249, i32 %250, i32 %252)
  br label %254

254:                                              ; preds = %248, %213
  br label %293

255:                                              ; preds = %30
  %256 = load i32, i32* %14, align 4
  %257 = load i32, i32* %14, align 4
  %258 = call i32 @FWD(i32 %256, i32 %257, i32 1)
  %259 = load %struct.re_guts*, %struct.re_guts** %8, align 8
  %260 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %259, i32 0, i32 0
  %261 = load i32*, i32** %260, align 8
  %262 = load i64, i64* %18, align 8
  %263 = load i64, i64* %17, align 8
  %264 = add i64 %262, %263
  %265 = getelementptr inbounds i32, i32* %261, i64 %264
  %266 = load i32, i32* %265, align 4
  %267 = icmp ne i32 %266, 130
  br i1 %267, label %268, label %285

268:                                              ; preds = %255
  %269 = load %struct.re_guts*, %struct.re_guts** %8, align 8
  %270 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %269, i32 0, i32 0
  %271 = load i32*, i32** %270, align 8
  %272 = load i64, i64* %18, align 8
  %273 = load i64, i64* %17, align 8
  %274 = add i64 %272, %273
  %275 = getelementptr inbounds i32, i32* %271, i64 %274
  %276 = load i32, i32* %275, align 4
  %277 = icmp eq i32 %276, 135
  %278 = zext i1 %277 to i32
  %279 = call i32 @assert(i32 %278)
  %280 = load i32, i32* %14, align 4
  %281 = load i32, i32* %14, align 4
  %282 = load i64, i64* %17, align 8
  %283 = trunc i64 %282 to i32
  %284 = call i32 @FWD(i32 %280, i32 %281, i32 %283)
  br label %285

285:                                              ; preds = %268, %255
  br label %293

286:                                              ; preds = %30
  %287 = load i32, i32* %14, align 4
  %288 = load i32, i32* %14, align 4
  %289 = call i32 @FWD(i32 %287, i32 %288, i32 1)
  br label %293

290:                                              ; preds = %30
  %291 = load i32, i32* @nope, align 4
  %292 = call i32 @assert(i32 %291)
  br label %293

293:                                              ; preds = %290, %286, %285, %254, %192, %188, %184, %175, %174, %144, %140, %139, %121, %113, %104, %95, %82, %69, %44
  br label %294

294:                                              ; preds = %293
  %295 = load i64, i64* %18, align 8
  %296 = add i64 %295, 1
  store i64 %296, i64* %18, align 8
  %297 = load i32, i32* %19, align 4
  %298 = call i32 @INC(i32 %297)
  br label %26

299:                                              ; preds = %26
  %300 = load i32, i32* %14, align 4
  ret i32 %300
}

declare dso_local i32 @INIT(i32, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @FWD(i32, i32, i32) #1

declare dso_local i32 @CHIN(i32*, i64) #1

declare dso_local i32 @ISSETBACK(i32, i64) #1

declare dso_local i32 @BACK(i32, i32, i64) #1

declare dso_local i32 @OP(i32) #1

declare dso_local i32 @ISSTATEIN(i32, i32) #1

declare dso_local i32 @INC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
