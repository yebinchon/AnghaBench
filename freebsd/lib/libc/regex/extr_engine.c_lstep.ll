; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/regex/extr_engine.c_lstep.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/regex/extr_engine.c_lstep.c"
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

23:                                               ; preds = %301, %6
  %24 = load i64, i64* %15, align 8
  %25 = load i64, i64* %9, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %306

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
  switch i32 %35, label %297 [
    i32 140, label %36
    i32 142, label %43
    i32 144, label %65
    i32 139, label %78
    i32 143, label %91
    i32 138, label %100
    i32 147, label %109
    i32 146, label %118
    i32 145, label %139
    i32 131, label %139
    i32 134, label %143
    i32 129, label %147
    i32 133, label %179
    i32 128, label %188
    i32 137, label %192
    i32 132, label %192
    i32 141, label %196
    i32 136, label %219
    i32 135, label %256
    i32 130, label %293
  ]

36:                                               ; preds = %27
  %37 = load i64, i64* %15, align 8
  %38 = load i64, i64* %9, align 8
  %39 = sub i64 %38, 1
  %40 = icmp eq i64 %37, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  br label %300

43:                                               ; preds = %27
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @NONCHAR(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %14, align 4
  %50 = call i32 @OPND(i32 %49)
  %51 = icmp ne i32 %48, %50
  br label %52

52:                                               ; preds = %47, %43
  %53 = phi i1 [ true, %43 ], [ %51, %47 ]
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %14, align 4
  %58 = call i32 @OPND(i32 %57)
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %52
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @FWD(i32 %61, i32 %62, i32 1)
  br label %64

64:                                               ; preds = %60, %52
  br label %300

65:                                               ; preds = %27
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* @BOL, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %73, label %69

69:                                               ; preds = %65
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* @BOLEOL, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %69, %65
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @FWD(i32 %74, i32 %75, i32 1)
  br label %77

77:                                               ; preds = %73, %69
  br label %300

78:                                               ; preds = %27
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* @EOL, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %86, label %82

82:                                               ; preds = %78
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* @BOLEOL, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %82, %78
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* %10, align 4
  %89 = call i32 @FWD(i32 %87, i32 %88, i32 1)
  br label %90

90:                                               ; preds = %86, %82
  br label %300

91:                                               ; preds = %27
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* @BOW, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %91
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* %10, align 4
  %98 = call i32 @FWD(i32 %96, i32 %97, i32 1)
  br label %99

99:                                               ; preds = %95, %91
  br label %300

100:                                              ; preds = %27
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* @EOW, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %100
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* %10, align 4
  %107 = call i32 @FWD(i32 %105, i32 %106, i32 1)
  br label %108

108:                                              ; preds = %104, %100
  br label %300

109:                                              ; preds = %27
  %110 = load i32, i32* %11, align 4
  %111 = call i32 @NONCHAR(i32 %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %117, label %113

113:                                              ; preds = %109
  %114 = load i32, i32* %12, align 4
  %115 = load i32, i32* %10, align 4
  %116 = call i32 @FWD(i32 %114, i32 %115, i32 1)
  br label %117

117:                                              ; preds = %113, %109
  br label %300

118:                                              ; preds = %27
  %119 = load %struct.re_guts*, %struct.re_guts** %7, align 8
  %120 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %14, align 4
  %123 = call i32 @OPND(i32 %122)
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %121, i64 %124
  store i32* %125, i32** %13, align 8
  %126 = load i32, i32* %11, align 4
  %127 = call i32 @NONCHAR(i32 %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %138, label %129

129:                                              ; preds = %118
  %130 = load i32*, i32** %13, align 8
  %131 = load i32, i32* %11, align 4
  %132 = call i32 @CHIN(i32* %130, i32 %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %129
  %135 = load i32, i32* %12, align 4
  %136 = load i32, i32* %10, align 4
  %137 = call i32 @FWD(i32 %135, i32 %136, i32 1)
  br label %138

138:                                              ; preds = %134, %129, %118
  br label %300

139:                                              ; preds = %27, %27
  %140 = load i32, i32* %12, align 4
  %141 = load i32, i32* %12, align 4
  %142 = call i32 @FWD(i32 %140, i32 %141, i32 1)
  br label %300

143:                                              ; preds = %27
  %144 = load i32, i32* %12, align 4
  %145 = load i32, i32* %12, align 4
  %146 = call i32 @FWD(i32 %144, i32 %145, i32 1)
  br label %300

147:                                              ; preds = %27
  %148 = load i32, i32* %12, align 4
  %149 = load i32, i32* %12, align 4
  %150 = call i32 @FWD(i32 %148, i32 %149, i32 1)
  %151 = load i32, i32* %12, align 4
  %152 = load i32, i32* %14, align 4
  %153 = call i32 @OPND(i32 %152)
  %154 = call i32 @ISSETBACK(i32 %151, i32 %153)
  store i32 %154, i32* %18, align 4
  %155 = load i32, i32* %12, align 4
  %156 = load i32, i32* %12, align 4
  %157 = load i32, i32* %14, align 4
  %158 = call i32 @OPND(i32 %157)
  %159 = call i32 @BACK(i32 %155, i32 %156, i32 %158)
  %160 = load i32, i32* %18, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %178, label %162

162:                                              ; preds = %147
  %163 = load i32, i32* %12, align 4
  %164 = load i32, i32* %14, align 4
  %165 = call i32 @OPND(i32 %164)
  %166 = call i32 @ISSETBACK(i32 %163, i32 %165)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %178

168:                                              ; preds = %162
  %169 = load i32, i32* %14, align 4
  %170 = call i32 @OPND(i32 %169)
  %171 = add nsw i32 %170, 1
  %172 = sext i32 %171 to i64
  %173 = load i64, i64* %15, align 8
  %174 = sub i64 %173, %172
  store i64 %174, i64* %15, align 8
  %175 = load i32, i32* %16, align 4
  %176 = load i64, i64* %15, align 8
  %177 = call i32 @INIT(i32 %175, i64 %176)
  br label %178

178:                                              ; preds = %168, %162, %147
  br label %300

179:                                              ; preds = %27
  %180 = load i32, i32* %12, align 4
  %181 = load i32, i32* %12, align 4
  %182 = call i32 @FWD(i32 %180, i32 %181, i32 1)
  %183 = load i32, i32* %12, align 4
  %184 = load i32, i32* %12, align 4
  %185 = load i32, i32* %14, align 4
  %186 = call i32 @OPND(i32 %185)
  %187 = call i32 @FWD(i32 %183, i32 %184, i32 %186)
  br label %300

188:                                              ; preds = %27
  %189 = load i32, i32* %12, align 4
  %190 = load i32, i32* %12, align 4
  %191 = call i32 @FWD(i32 %189, i32 %190, i32 1)
  br label %300

192:                                              ; preds = %27, %27
  %193 = load i32, i32* %12, align 4
  %194 = load i32, i32* %12, align 4
  %195 = call i32 @FWD(i32 %193, i32 %194, i32 1)
  br label %300

196:                                              ; preds = %27
  %197 = load i32, i32* %12, align 4
  %198 = load i32, i32* %12, align 4
  %199 = call i32 @FWD(i32 %197, i32 %198, i32 1)
  %200 = load %struct.re_guts*, %struct.re_guts** %7, align 8
  %201 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %200, i32 0, i32 0
  %202 = load i32*, i32** %201, align 8
  %203 = load i64, i64* %15, align 8
  %204 = load i32, i32* %14, align 4
  %205 = call i32 @OPND(i32 %204)
  %206 = sext i32 %205 to i64
  %207 = add i64 %203, %206
  %208 = getelementptr inbounds i32, i32* %202, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @OP(i32 %209)
  %211 = icmp eq i32 %210, 135
  %212 = zext i1 %211 to i32
  %213 = call i32 @assert(i32 %212)
  %214 = load i32, i32* %12, align 4
  %215 = load i32, i32* %12, align 4
  %216 = load i32, i32* %14, align 4
  %217 = call i32 @OPND(i32 %216)
  %218 = call i32 @FWD(i32 %214, i32 %215, i32 %217)
  br label %300

219:                                              ; preds = %27
  %220 = load i32, i32* %12, align 4
  %221 = load i32, i32* %16, align 4
  %222 = call i32 @ISSTATEIN(i32 %220, i32 %221)
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %255

224:                                              ; preds = %219
  store i64 1, i64* %17, align 8
  br label %225

225:                                              ; preds = %242, %224
  %226 = load %struct.re_guts*, %struct.re_guts** %7, align 8
  %227 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %226, i32 0, i32 0
  %228 = load i32*, i32** %227, align 8
  %229 = load i64, i64* %15, align 8
  %230 = load i64, i64* %17, align 8
  %231 = add i64 %229, %230
  %232 = getelementptr inbounds i32, i32* %228, i64 %231
  %233 = load i32, i32* %232, align 4
  store i32 %233, i32* %14, align 4
  %234 = call i32 @OP(i32 %233)
  %235 = icmp ne i32 %234, 130
  br i1 %235, label %236, label %248

236:                                              ; preds = %225
  %237 = load i32, i32* %14, align 4
  %238 = call i32 @OP(i32 %237)
  %239 = icmp eq i32 %238, 135
  %240 = zext i1 %239 to i32
  %241 = call i32 @assert(i32 %240)
  br label %242

242:                                              ; preds = %236
  %243 = load i32, i32* %14, align 4
  %244 = call i32 @OPND(i32 %243)
  %245 = sext i32 %244 to i64
  %246 = load i64, i64* %17, align 8
  %247 = add i64 %246, %245
  store i64 %247, i64* %17, align 8
  br label %225

248:                                              ; preds = %225
  %249 = load i32, i32* %12, align 4
  %250 = load i32, i32* %12, align 4
  %251 = load i64, i64* %17, align 8
  %252 = add i64 %251, 1
  %253 = trunc i64 %252 to i32
  %254 = call i32 @FWD(i32 %249, i32 %250, i32 %253)
  br label %255

255:                                              ; preds = %248, %219
  br label %300

256:                                              ; preds = %27
  %257 = load i32, i32* %12, align 4
  %258 = load i32, i32* %12, align 4
  %259 = call i32 @FWD(i32 %257, i32 %258, i32 1)
  %260 = load %struct.re_guts*, %struct.re_guts** %7, align 8
  %261 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %260, i32 0, i32 0
  %262 = load i32*, i32** %261, align 8
  %263 = load i64, i64* %15, align 8
  %264 = load i32, i32* %14, align 4
  %265 = call i32 @OPND(i32 %264)
  %266 = sext i32 %265 to i64
  %267 = add i64 %263, %266
  %268 = getelementptr inbounds i32, i32* %262, i64 %267
  %269 = load i32, i32* %268, align 4
  %270 = call i32 @OP(i32 %269)
  %271 = icmp ne i32 %270, 130
  br i1 %271, label %272, label %292

272:                                              ; preds = %256
  %273 = load %struct.re_guts*, %struct.re_guts** %7, align 8
  %274 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %273, i32 0, i32 0
  %275 = load i32*, i32** %274, align 8
  %276 = load i64, i64* %15, align 8
  %277 = load i32, i32* %14, align 4
  %278 = call i32 @OPND(i32 %277)
  %279 = sext i32 %278 to i64
  %280 = add i64 %276, %279
  %281 = getelementptr inbounds i32, i32* %275, i64 %280
  %282 = load i32, i32* %281, align 4
  %283 = call i32 @OP(i32 %282)
  %284 = icmp eq i32 %283, 135
  %285 = zext i1 %284 to i32
  %286 = call i32 @assert(i32 %285)
  %287 = load i32, i32* %12, align 4
  %288 = load i32, i32* %12, align 4
  %289 = load i32, i32* %14, align 4
  %290 = call i32 @OPND(i32 %289)
  %291 = call i32 @FWD(i32 %287, i32 %288, i32 %290)
  br label %292

292:                                              ; preds = %272, %256
  br label %300

293:                                              ; preds = %27
  %294 = load i32, i32* %12, align 4
  %295 = load i32, i32* %12, align 4
  %296 = call i32 @FWD(i32 %294, i32 %295, i32 1)
  br label %300

297:                                              ; preds = %27
  %298 = load i32, i32* @nope, align 4
  %299 = call i32 @assert(i32 %298)
  br label %300

300:                                              ; preds = %297, %293, %292, %255, %196, %192, %188, %179, %178, %143, %139, %138, %117, %108, %99, %90, %77, %64, %36
  br label %301

301:                                              ; preds = %300
  %302 = load i64, i64* %15, align 8
  %303 = add i64 %302, 1
  store i64 %303, i64* %15, align 8
  %304 = load i32, i32* %16, align 4
  %305 = call i32 @INC(i32 %304)
  br label %23

306:                                              ; preds = %23
  %307 = load i32, i32* %12, align 4
  ret i32 %307
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
