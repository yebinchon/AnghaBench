; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_testcase_glob.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_testcase_glob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @testcase_glob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @testcase_glob(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  br label %11

11:                                               ; preds = %299, %2
  %12 = load i8*, i8** %4, align 8
  %13 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %13, i8** %4, align 8
  %14 = load i8, i8* %12, align 1
  %15 = sext i8 %14 to i32
  store i32 %15, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %300

17:                                               ; preds = %11
  %18 = load i32, i32* %6, align 4
  %19 = trunc i32 %18 to i8
  %20 = call i64 @IsSpace(i8 signext %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %47

22:                                               ; preds = %17
  %23 = load i8*, i8** %5, align 8
  %24 = load i8, i8* %23, align 1
  %25 = call i64 @IsSpace(i8 signext %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %315

28:                                               ; preds = %22
  br label %29

29:                                               ; preds = %34, %28
  %30 = load i8*, i8** %4, align 8
  %31 = load i8, i8* %30, align 1
  %32 = call i64 @IsSpace(i8 signext %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i8*, i8** %4, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %4, align 8
  br label %29

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %43, %37
  %39 = load i8*, i8** %5, align 8
  %40 = load i8, i8* %39, align 1
  %41 = call i64 @IsSpace(i8 signext %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i8*, i8** %5, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %5, align 8
  br label %38

46:                                               ; preds = %38
  br label %299

47:                                               ; preds = %17
  %48 = load i32, i32* %6, align 4
  %49 = icmp eq i32 %48, 42
  br i1 %49, label %50, label %133

50:                                               ; preds = %47
  br label %51

51:                                               ; preds = %72, %50
  %52 = load i8*, i8** %4, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %4, align 8
  %54 = load i8, i8* %52, align 1
  %55 = sext i8 %54 to i32
  store i32 %55, i32* %6, align 4
  %56 = icmp eq i32 %55, 42
  br i1 %56, label %60, label %57

57:                                               ; preds = %51
  %58 = load i32, i32* %6, align 4
  %59 = icmp eq i32 %58, 63
  br label %60

60:                                               ; preds = %57, %51
  %61 = phi i1 [ true, %51 ], [ %59, %57 ]
  br i1 %61, label %62, label %73

62:                                               ; preds = %60
  %63 = load i32, i32* %6, align 4
  %64 = icmp eq i32 %63, 63
  br i1 %64, label %65, label %72

65:                                               ; preds = %62
  %66 = load i8*, i8** %5, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %5, align 8
  %68 = load i8, i8* %66, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  store i32 0, i32* %3, align 4
  br label %315

72:                                               ; preds = %65, %62
  br label %51

73:                                               ; preds = %60
  %74 = load i32, i32* %6, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  store i32 1, i32* %3, align 4
  br label %315

77:                                               ; preds = %73
  %78 = load i32, i32* %6, align 4
  %79 = icmp eq i32 %78, 91
  br i1 %79, label %80, label %103

80:                                               ; preds = %77
  br label %81

81:                                               ; preds = %94, %80
  %82 = load i8*, i8** %5, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %81
  %87 = load i8*, i8** %4, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 -1
  %89 = load i8*, i8** %5, align 8
  %90 = call i32 @testcase_glob(i8* %88, i8* %89)
  %91 = icmp eq i32 %90, 0
  br label %92

92:                                               ; preds = %86, %81
  %93 = phi i1 [ false, %81 ], [ %91, %86 ]
  br i1 %93, label %94, label %97

94:                                               ; preds = %92
  %95 = load i8*, i8** %5, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %5, align 8
  br label %81

97:                                               ; preds = %92
  %98 = load i8*, i8** %5, align 8
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp ne i32 %100, 0
  %102 = zext i1 %101 to i32
  store i32 %102, i32* %3, align 4
  br label %315

103:                                              ; preds = %77
  br label %104

104:                                              ; preds = %103
  br label %105

105:                                              ; preds = %131, %104
  %106 = load i8*, i8** %5, align 8
  %107 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %107, i8** %5, align 8
  %108 = load i8, i8* %106, align 1
  %109 = sext i8 %108 to i32
  store i32 %109, i32* %7, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %132

111:                                              ; preds = %105
  br label %112

112:                                              ; preds = %124, %111
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* %6, align 4
  %115 = icmp ne i32 %113, %114
  br i1 %115, label %116, label %125

116:                                              ; preds = %112
  %117 = load i8*, i8** %5, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %118, i8** %5, align 8
  %119 = load i8, i8* %117, align 1
  %120 = sext i8 %119 to i32
  store i32 %120, i32* %7, align 4
  %121 = load i32, i32* %7, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %116
  store i32 0, i32* %3, align 4
  br label %315

124:                                              ; preds = %116
  br label %112

125:                                              ; preds = %112
  %126 = load i8*, i8** %4, align 8
  %127 = load i8*, i8** %5, align 8
  %128 = call i32 @testcase_glob(i8* %126, i8* %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %125
  store i32 1, i32* %3, align 4
  br label %315

131:                                              ; preds = %125
  br label %105

132:                                              ; preds = %105
  store i32 0, i32* %3, align 4
  br label %315

133:                                              ; preds = %47
  %134 = load i32, i32* %6, align 4
  %135 = icmp eq i32 %134, 63
  br i1 %135, label %136, label %144

136:                                              ; preds = %133
  %137 = load i8*, i8** %5, align 8
  %138 = getelementptr inbounds i8, i8* %137, i32 1
  store i8* %138, i8** %5, align 8
  %139 = load i8, i8* %137, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %136
  store i32 0, i32* %3, align 4
  br label %315

143:                                              ; preds = %136
  br label %297

144:                                              ; preds = %133
  %145 = load i32, i32* %6, align 4
  %146 = icmp eq i32 %145, 91
  br i1 %146, label %147, label %242

147:                                              ; preds = %144
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  %148 = load i8*, i8** %5, align 8
  %149 = getelementptr inbounds i8, i8* %148, i32 1
  store i8* %149, i8** %5, align 8
  %150 = load i8, i8* %148, align 1
  %151 = sext i8 %150 to i32
  store i32 %151, i32* %6, align 4
  %152 = load i32, i32* %6, align 4
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %147
  store i32 0, i32* %3, align 4
  br label %315

155:                                              ; preds = %147
  %156 = load i8*, i8** %4, align 8
  %157 = getelementptr inbounds i8, i8* %156, i32 1
  store i8* %157, i8** %4, align 8
  %158 = load i8, i8* %156, align 1
  %159 = sext i8 %158 to i32
  store i32 %159, i32* %7, align 4
  %160 = load i32, i32* %7, align 4
  %161 = icmp eq i32 %160, 94
  br i1 %161, label %162, label %167

162:                                              ; preds = %155
  store i32 1, i32* %8, align 4
  %163 = load i8*, i8** %4, align 8
  %164 = getelementptr inbounds i8, i8* %163, i32 1
  store i8* %164, i8** %4, align 8
  %165 = load i8, i8* %163, align 1
  %166 = sext i8 %165 to i32
  store i32 %166, i32* %7, align 4
  br label %167

167:                                              ; preds = %162, %155
  %168 = load i32, i32* %7, align 4
  %169 = icmp eq i32 %168, 93
  br i1 %169, label %170, label %179

170:                                              ; preds = %167
  %171 = load i32, i32* %6, align 4
  %172 = icmp eq i32 %171, 93
  br i1 %172, label %173, label %174

173:                                              ; preds = %170
  store i32 1, i32* %9, align 4
  br label %174

174:                                              ; preds = %173, %170
  %175 = load i8*, i8** %4, align 8
  %176 = getelementptr inbounds i8, i8* %175, i32 1
  store i8* %176, i8** %4, align 8
  %177 = load i8, i8* %175, align 1
  %178 = sext i8 %177 to i32
  store i32 %178, i32* %7, align 4
  br label %179

179:                                              ; preds = %174, %167
  br label %180

180:                                              ; preds = %227, %179
  %181 = load i32, i32* %7, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %180
  %184 = load i32, i32* %7, align 4
  %185 = icmp ne i32 %184, 93
  br label %186

186:                                              ; preds = %183, %180
  %187 = phi i1 [ false, %180 ], [ %185, %183 ]
  br i1 %187, label %188, label %232

188:                                              ; preds = %186
  %189 = load i32, i32* %7, align 4
  %190 = icmp eq i32 %189, 45
  br i1 %190, label %191, label %220

191:                                              ; preds = %188
  %192 = load i8*, i8** %4, align 8
  %193 = getelementptr inbounds i8, i8* %192, i64 0
  %194 = load i8, i8* %193, align 1
  %195 = sext i8 %194 to i32
  %196 = icmp ne i32 %195, 93
  br i1 %196, label %197, label %220

197:                                              ; preds = %191
  %198 = load i8*, i8** %4, align 8
  %199 = getelementptr inbounds i8, i8* %198, i64 0
  %200 = load i8, i8* %199, align 1
  %201 = sext i8 %200 to i32
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %220

203:                                              ; preds = %197
  %204 = load i32, i32* %10, align 4
  %205 = icmp sgt i32 %204, 0
  br i1 %205, label %206, label %220

206:                                              ; preds = %203
  %207 = load i8*, i8** %4, align 8
  %208 = getelementptr inbounds i8, i8* %207, i32 1
  store i8* %208, i8** %4, align 8
  %209 = load i8, i8* %207, align 1
  %210 = sext i8 %209 to i32
  store i32 %210, i32* %7, align 4
  %211 = load i32, i32* %6, align 4
  %212 = load i32, i32* %10, align 4
  %213 = icmp sge i32 %211, %212
  br i1 %213, label %214, label %219

214:                                              ; preds = %206
  %215 = load i32, i32* %6, align 4
  %216 = load i32, i32* %7, align 4
  %217 = icmp sle i32 %215, %216
  br i1 %217, label %218, label %219

218:                                              ; preds = %214
  store i32 1, i32* %9, align 4
  br label %219

219:                                              ; preds = %218, %214, %206
  store i32 0, i32* %10, align 4
  br label %227

220:                                              ; preds = %203, %197, %191, %188
  %221 = load i32, i32* %6, align 4
  %222 = load i32, i32* %7, align 4
  %223 = icmp eq i32 %221, %222
  br i1 %223, label %224, label %225

224:                                              ; preds = %220
  store i32 1, i32* %9, align 4
  br label %225

225:                                              ; preds = %224, %220
  %226 = load i32, i32* %7, align 4
  store i32 %226, i32* %10, align 4
  br label %227

227:                                              ; preds = %225, %219
  %228 = load i8*, i8** %4, align 8
  %229 = getelementptr inbounds i8, i8* %228, i32 1
  store i8* %229, i8** %4, align 8
  %230 = load i8, i8* %228, align 1
  %231 = sext i8 %230 to i32
  store i32 %231, i32* %7, align 4
  br label %180

232:                                              ; preds = %186
  %233 = load i32, i32* %7, align 4
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %240, label %235

235:                                              ; preds = %232
  %236 = load i32, i32* %9, align 4
  %237 = load i32, i32* %8, align 4
  %238 = xor i32 %236, %237
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %241

240:                                              ; preds = %235, %232
  store i32 0, i32* %3, align 4
  br label %315

241:                                              ; preds = %235
  br label %296

242:                                              ; preds = %144
  %243 = load i32, i32* %6, align 4
  %244 = icmp eq i32 %243, 35
  br i1 %244, label %245, label %286

245:                                              ; preds = %242
  %246 = load i8*, i8** %5, align 8
  %247 = getelementptr inbounds i8, i8* %246, i64 0
  %248 = load i8, i8* %247, align 1
  %249 = sext i8 %248 to i32
  %250 = icmp eq i32 %249, 45
  br i1 %250, label %257, label %251

251:                                              ; preds = %245
  %252 = load i8*, i8** %5, align 8
  %253 = getelementptr inbounds i8, i8* %252, i64 0
  %254 = load i8, i8* %253, align 1
  %255 = sext i8 %254 to i32
  %256 = icmp eq i32 %255, 43
  br i1 %256, label %257, label %266

257:                                              ; preds = %251, %245
  %258 = load i8*, i8** %5, align 8
  %259 = getelementptr inbounds i8, i8* %258, i64 1
  %260 = load i8, i8* %259, align 1
  %261 = call i64 @IsDigit(i8 signext %260)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %266

263:                                              ; preds = %257
  %264 = load i8*, i8** %5, align 8
  %265 = getelementptr inbounds i8, i8* %264, i32 1
  store i8* %265, i8** %5, align 8
  br label %266

266:                                              ; preds = %263, %257, %251
  %267 = load i8*, i8** %5, align 8
  %268 = getelementptr inbounds i8, i8* %267, i64 0
  %269 = load i8, i8* %268, align 1
  %270 = call i64 @IsDigit(i8 signext %269)
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %273, label %272

272:                                              ; preds = %266
  store i32 0, i32* %3, align 4
  br label %315

273:                                              ; preds = %266
  %274 = load i8*, i8** %5, align 8
  %275 = getelementptr inbounds i8, i8* %274, i32 1
  store i8* %275, i8** %5, align 8
  br label %276

276:                                              ; preds = %282, %273
  %277 = load i8*, i8** %5, align 8
  %278 = getelementptr inbounds i8, i8* %277, i64 0
  %279 = load i8, i8* %278, align 1
  %280 = call i64 @IsDigit(i8 signext %279)
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %285

282:                                              ; preds = %276
  %283 = load i8*, i8** %5, align 8
  %284 = getelementptr inbounds i8, i8* %283, i32 1
  store i8* %284, i8** %5, align 8
  br label %276

285:                                              ; preds = %276
  br label %295

286:                                              ; preds = %242
  %287 = load i32, i32* %6, align 4
  %288 = load i8*, i8** %5, align 8
  %289 = getelementptr inbounds i8, i8* %288, i32 1
  store i8* %289, i8** %5, align 8
  %290 = load i8, i8* %288, align 1
  %291 = sext i8 %290 to i32
  %292 = icmp ne i32 %287, %291
  br i1 %292, label %293, label %294

293:                                              ; preds = %286
  store i32 0, i32* %3, align 4
  br label %315

294:                                              ; preds = %286
  br label %295

295:                                              ; preds = %294, %285
  br label %296

296:                                              ; preds = %295, %241
  br label %297

297:                                              ; preds = %296, %143
  br label %298

298:                                              ; preds = %297
  br label %299

299:                                              ; preds = %298, %46
  br label %11

300:                                              ; preds = %11
  br label %301

301:                                              ; preds = %306, %300
  %302 = load i8*, i8** %5, align 8
  %303 = load i8, i8* %302, align 1
  %304 = call i64 @IsSpace(i8 signext %303)
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %309

306:                                              ; preds = %301
  %307 = load i8*, i8** %5, align 8
  %308 = getelementptr inbounds i8, i8* %307, i32 1
  store i8* %308, i8** %5, align 8
  br label %301

309:                                              ; preds = %301
  %310 = load i8*, i8** %5, align 8
  %311 = load i8, i8* %310, align 1
  %312 = sext i8 %311 to i32
  %313 = icmp eq i32 %312, 0
  %314 = zext i1 %313 to i32
  store i32 %314, i32* %3, align 4
  br label %315

315:                                              ; preds = %309, %293, %272, %240, %154, %142, %132, %130, %123, %97, %76, %71, %27
  %316 = load i32, i32* %3, align 4
  ret i32 %316
}

declare dso_local i64 @IsSpace(i8 signext) #1

declare dso_local i64 @IsDigit(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
