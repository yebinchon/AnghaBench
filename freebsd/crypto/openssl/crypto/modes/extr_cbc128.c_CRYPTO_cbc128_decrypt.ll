; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/modes/extr_cbc128.c_CRYPTO_cbc128_decrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/modes/extr_cbc128.c_CRYPTO_cbc128_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { [2 x i64] }

@STRICT_ALIGNMENT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CRYPTO_cbc128_decrypt(i8* %0, i8* %1, i64 %2, i8* %3, i8* %4, i32 (i8*, i8*, i8*)* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32 (i8*, i8*, i8*)*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %union.anon, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i8, align 1
  %19 = alloca i64, align 8
  %20 = alloca i64*, align 8
  %21 = alloca i64*, align 8
  %22 = alloca i64*, align 8
  %23 = alloca i8, align 1
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 (i8*, i8*, i8*)* %5, i32 (i8*, i8*, i8*)** %12, align 8
  %24 = load i64, i64* %9, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %6
  br label %316

27:                                               ; preds = %6
  %28 = load i8*, i8** %7, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = icmp ne i8* %28, %29
  br i1 %30, label %31, label %127

31:                                               ; preds = %27
  %32 = load i8*, i8** %11, align 8
  store i8* %32, i8** %15, align 8
  %33 = load i64, i64* @STRICT_ALIGNMENT, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %84

35:                                               ; preds = %31
  %36 = load i8*, i8** %7, align 8
  %37 = ptrtoint i8* %36 to i64
  %38 = load i8*, i8** %8, align 8
  %39 = ptrtoint i8* %38 to i64
  %40 = or i64 %37, %39
  %41 = load i8*, i8** %11, align 8
  %42 = ptrtoint i8* %41 to i64
  %43 = or i64 %40, %42
  %44 = urem i64 %43, 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %84

46:                                               ; preds = %35
  br label %47

47:                                               ; preds = %75, %46
  %48 = load i64, i64* %9, align 8
  %49 = icmp uge i64 %48, 16
  br i1 %49, label %50, label %83

50:                                               ; preds = %47
  %51 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %12, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = load i8*, i8** %10, align 8
  %55 = call i32 %51(i8* %52, i8* %53, i8* %54)
  store i64 0, i64* %13, align 8
  br label %56

56:                                               ; preds = %72, %50
  %57 = load i64, i64* %13, align 8
  %58 = icmp ult i64 %57, 16
  br i1 %58, label %59, label %75

59:                                               ; preds = %56
  %60 = load i8*, i8** %15, align 8
  %61 = load i64, i64* %13, align 8
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = load i8*, i8** %8, align 8
  %66 = load i64, i64* %13, align 8
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = xor i32 %69, %64
  %71 = trunc i32 %70 to i8
  store i8 %71, i8* %67, align 1
  br label %72

72:                                               ; preds = %59
  %73 = load i64, i64* %13, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %13, align 8
  br label %56

75:                                               ; preds = %56
  %76 = load i8*, i8** %7, align 8
  store i8* %76, i8** %15, align 8
  %77 = load i64, i64* %9, align 8
  %78 = sub i64 %77, 16
  store i64 %78, i64* %9, align 8
  %79 = load i8*, i8** %7, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 16
  store i8* %80, i8** %7, align 8
  %81 = load i8*, i8** %8, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 16
  store i8* %82, i8** %8, align 8
  br label %47

83:                                               ; preds = %47
  br label %123

84:                                               ; preds = %35, %31
  br label %85

85:                                               ; preds = %114, %84
  %86 = load i64, i64* %9, align 8
  %87 = icmp uge i64 %86, 16
  br i1 %87, label %88, label %122

88:                                               ; preds = %85
  %89 = load i8*, i8** %8, align 8
  %90 = bitcast i8* %89 to i64*
  store i64* %90, i64** %16, align 8
  %91 = load i8*, i8** %15, align 8
  %92 = bitcast i8* %91 to i64*
  store i64* %92, i64** %17, align 8
  %93 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %12, align 8
  %94 = load i8*, i8** %7, align 8
  %95 = load i8*, i8** %8, align 8
  %96 = load i8*, i8** %10, align 8
  %97 = call i32 %93(i8* %94, i8* %95, i8* %96)
  store i64 0, i64* %13, align 8
  br label %98

98:                                               ; preds = %111, %88
  %99 = load i64, i64* %13, align 8
  %100 = icmp ult i64 %99, 2
  br i1 %100, label %101, label %114

101:                                              ; preds = %98
  %102 = load i64*, i64** %17, align 8
  %103 = load i64, i64* %13, align 8
  %104 = getelementptr inbounds i64, i64* %102, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = load i64*, i64** %16, align 8
  %107 = load i64, i64* %13, align 8
  %108 = getelementptr inbounds i64, i64* %106, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = xor i64 %109, %105
  store i64 %110, i64* %108, align 8
  br label %111

111:                                              ; preds = %101
  %112 = load i64, i64* %13, align 8
  %113 = add i64 %112, 1
  store i64 %113, i64* %13, align 8
  br label %98

114:                                              ; preds = %98
  %115 = load i8*, i8** %7, align 8
  store i8* %115, i8** %15, align 8
  %116 = load i64, i64* %9, align 8
  %117 = sub i64 %116, 16
  store i64 %117, i64* %9, align 8
  %118 = load i8*, i8** %7, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 16
  store i8* %119, i8** %7, align 8
  %120 = load i8*, i8** %8, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 16
  store i8* %121, i8** %8, align 8
  br label %85

122:                                              ; preds = %85
  br label %123

123:                                              ; preds = %122, %83
  %124 = load i8*, i8** %11, align 8
  %125 = load i8*, i8** %15, align 8
  %126 = call i32 @memcpy(i8* %124, i8* %125, i32 16)
  br label %243

127:                                              ; preds = %27
  %128 = load i64, i64* @STRICT_ALIGNMENT, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %190

130:                                              ; preds = %127
  %131 = load i8*, i8** %7, align 8
  %132 = ptrtoint i8* %131 to i64
  %133 = load i8*, i8** %8, align 8
  %134 = ptrtoint i8* %133 to i64
  %135 = or i64 %132, %134
  %136 = load i8*, i8** %11, align 8
  %137 = ptrtoint i8* %136 to i64
  %138 = or i64 %135, %137
  %139 = urem i64 %138, 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %190

141:                                              ; preds = %130
  br label %142

142:                                              ; preds = %182, %141
  %143 = load i64, i64* %9, align 8
  %144 = icmp uge i64 %143, 16
  br i1 %144, label %145, label %189

145:                                              ; preds = %142
  %146 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %12, align 8
  %147 = load i8*, i8** %7, align 8
  %148 = bitcast %union.anon* %14 to [16 x i8]*
  %149 = getelementptr inbounds [16 x i8], [16 x i8]* %148, i64 0, i64 0
  %150 = load i8*, i8** %10, align 8
  %151 = call i32 %146(i8* %147, i8* %149, i8* %150)
  store i64 0, i64* %13, align 8
  br label %152

152:                                              ; preds = %179, %145
  %153 = load i64, i64* %13, align 8
  %154 = icmp ult i64 %153, 16
  br i1 %154, label %155, label %182

155:                                              ; preds = %152
  %156 = load i8*, i8** %7, align 8
  %157 = load i64, i64* %13, align 8
  %158 = getelementptr inbounds i8, i8* %156, i64 %157
  %159 = load i8, i8* %158, align 1
  store i8 %159, i8* %18, align 1
  %160 = bitcast %union.anon* %14 to [16 x i8]*
  %161 = load i64, i64* %13, align 8
  %162 = getelementptr inbounds [16 x i8], [16 x i8]* %160, i64 0, i64 %161
  %163 = load i8, i8* %162, align 1
  %164 = zext i8 %163 to i32
  %165 = load i8*, i8** %11, align 8
  %166 = load i64, i64* %13, align 8
  %167 = getelementptr inbounds i8, i8* %165, i64 %166
  %168 = load i8, i8* %167, align 1
  %169 = zext i8 %168 to i32
  %170 = xor i32 %164, %169
  %171 = trunc i32 %170 to i8
  %172 = load i8*, i8** %8, align 8
  %173 = load i64, i64* %13, align 8
  %174 = getelementptr inbounds i8, i8* %172, i64 %173
  store i8 %171, i8* %174, align 1
  %175 = load i8, i8* %18, align 1
  %176 = load i8*, i8** %11, align 8
  %177 = load i64, i64* %13, align 8
  %178 = getelementptr inbounds i8, i8* %176, i64 %177
  store i8 %175, i8* %178, align 1
  br label %179

179:                                              ; preds = %155
  %180 = load i64, i64* %13, align 8
  %181 = add i64 %180, 1
  store i64 %181, i64* %13, align 8
  br label %152

182:                                              ; preds = %152
  %183 = load i64, i64* %9, align 8
  %184 = sub i64 %183, 16
  store i64 %184, i64* %9, align 8
  %185 = load i8*, i8** %7, align 8
  %186 = getelementptr inbounds i8, i8* %185, i64 16
  store i8* %186, i8** %7, align 8
  %187 = load i8*, i8** %8, align 8
  %188 = getelementptr inbounds i8, i8* %187, i64 16
  store i8* %188, i8** %8, align 8
  br label %142

189:                                              ; preds = %142
  br label %242

190:                                              ; preds = %130, %127
  br label %191

191:                                              ; preds = %234, %190
  %192 = load i64, i64* %9, align 8
  %193 = icmp uge i64 %192, 16
  br i1 %193, label %194, label %241

194:                                              ; preds = %191
  %195 = load i8*, i8** %8, align 8
  %196 = bitcast i8* %195 to i64*
  store i64* %196, i64** %20, align 8
  %197 = load i8*, i8** %11, align 8
  %198 = bitcast i8* %197 to i64*
  store i64* %198, i64** %21, align 8
  %199 = load i8*, i8** %7, align 8
  %200 = bitcast i8* %199 to i64*
  store i64* %200, i64** %22, align 8
  %201 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %12, align 8
  %202 = load i8*, i8** %7, align 8
  %203 = bitcast %union.anon* %14 to [16 x i8]*
  %204 = getelementptr inbounds [16 x i8], [16 x i8]* %203, i64 0, i64 0
  %205 = load i8*, i8** %10, align 8
  %206 = call i32 %201(i8* %202, i8* %204, i8* %205)
  store i64 0, i64* %13, align 8
  br label %207

207:                                              ; preds = %231, %194
  %208 = load i64, i64* %13, align 8
  %209 = icmp ult i64 %208, 2
  br i1 %209, label %210, label %234

210:                                              ; preds = %207
  %211 = load i64*, i64** %22, align 8
  %212 = load i64, i64* %13, align 8
  %213 = getelementptr inbounds i64, i64* %211, i64 %212
  %214 = load i64, i64* %213, align 8
  store i64 %214, i64* %19, align 8
  %215 = bitcast %union.anon* %14 to [2 x i64]*
  %216 = load i64, i64* %13, align 8
  %217 = getelementptr inbounds [2 x i64], [2 x i64]* %215, i64 0, i64 %216
  %218 = load i64, i64* %217, align 8
  %219 = load i64*, i64** %21, align 8
  %220 = load i64, i64* %13, align 8
  %221 = getelementptr inbounds i64, i64* %219, i64 %220
  %222 = load i64, i64* %221, align 8
  %223 = xor i64 %218, %222
  %224 = load i64*, i64** %20, align 8
  %225 = load i64, i64* %13, align 8
  %226 = getelementptr inbounds i64, i64* %224, i64 %225
  store i64 %223, i64* %226, align 8
  %227 = load i64, i64* %19, align 8
  %228 = load i64*, i64** %21, align 8
  %229 = load i64, i64* %13, align 8
  %230 = getelementptr inbounds i64, i64* %228, i64 %229
  store i64 %227, i64* %230, align 8
  br label %231

231:                                              ; preds = %210
  %232 = load i64, i64* %13, align 8
  %233 = add i64 %232, 1
  store i64 %233, i64* %13, align 8
  br label %207

234:                                              ; preds = %207
  %235 = load i64, i64* %9, align 8
  %236 = sub i64 %235, 16
  store i64 %236, i64* %9, align 8
  %237 = load i8*, i8** %7, align 8
  %238 = getelementptr inbounds i8, i8* %237, i64 16
  store i8* %238, i8** %7, align 8
  %239 = load i8*, i8** %8, align 8
  %240 = getelementptr inbounds i8, i8* %239, i64 16
  store i8* %240, i8** %8, align 8
  br label %191

241:                                              ; preds = %191
  br label %242

242:                                              ; preds = %241, %189
  br label %243

243:                                              ; preds = %242, %123
  br label %244

244:                                              ; preds = %309, %243
  %245 = load i64, i64* %9, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %316

247:                                              ; preds = %244
  %248 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %12, align 8
  %249 = load i8*, i8** %7, align 8
  %250 = bitcast %union.anon* %14 to [16 x i8]*
  %251 = getelementptr inbounds [16 x i8], [16 x i8]* %250, i64 0, i64 0
  %252 = load i8*, i8** %10, align 8
  %253 = call i32 %248(i8* %249, i8* %251, i8* %252)
  store i64 0, i64* %13, align 8
  br label %254

254:                                              ; preds = %287, %247
  %255 = load i64, i64* %13, align 8
  %256 = icmp ult i64 %255, 16
  br i1 %256, label %257, label %261

257:                                              ; preds = %254
  %258 = load i64, i64* %13, align 8
  %259 = load i64, i64* %9, align 8
  %260 = icmp ult i64 %258, %259
  br label %261

261:                                              ; preds = %257, %254
  %262 = phi i1 [ false, %254 ], [ %260, %257 ]
  br i1 %262, label %263, label %290

263:                                              ; preds = %261
  %264 = load i8*, i8** %7, align 8
  %265 = load i64, i64* %13, align 8
  %266 = getelementptr inbounds i8, i8* %264, i64 %265
  %267 = load i8, i8* %266, align 1
  store i8 %267, i8* %23, align 1
  %268 = bitcast %union.anon* %14 to [16 x i8]*
  %269 = load i64, i64* %13, align 8
  %270 = getelementptr inbounds [16 x i8], [16 x i8]* %268, i64 0, i64 %269
  %271 = load i8, i8* %270, align 1
  %272 = zext i8 %271 to i32
  %273 = load i8*, i8** %11, align 8
  %274 = load i64, i64* %13, align 8
  %275 = getelementptr inbounds i8, i8* %273, i64 %274
  %276 = load i8, i8* %275, align 1
  %277 = zext i8 %276 to i32
  %278 = xor i32 %272, %277
  %279 = trunc i32 %278 to i8
  %280 = load i8*, i8** %8, align 8
  %281 = load i64, i64* %13, align 8
  %282 = getelementptr inbounds i8, i8* %280, i64 %281
  store i8 %279, i8* %282, align 1
  %283 = load i8, i8* %23, align 1
  %284 = load i8*, i8** %11, align 8
  %285 = load i64, i64* %13, align 8
  %286 = getelementptr inbounds i8, i8* %284, i64 %285
  store i8 %283, i8* %286, align 1
  br label %287

287:                                              ; preds = %263
  %288 = load i64, i64* %13, align 8
  %289 = add i64 %288, 1
  store i64 %289, i64* %13, align 8
  br label %254

290:                                              ; preds = %261
  %291 = load i64, i64* %9, align 8
  %292 = icmp ule i64 %291, 16
  br i1 %292, label %293, label %309

293:                                              ; preds = %290
  br label %294

294:                                              ; preds = %305, %293
  %295 = load i64, i64* %13, align 8
  %296 = icmp ult i64 %295, 16
  br i1 %296, label %297, label %308

297:                                              ; preds = %294
  %298 = load i8*, i8** %7, align 8
  %299 = load i64, i64* %13, align 8
  %300 = getelementptr inbounds i8, i8* %298, i64 %299
  %301 = load i8, i8* %300, align 1
  %302 = load i8*, i8** %11, align 8
  %303 = load i64, i64* %13, align 8
  %304 = getelementptr inbounds i8, i8* %302, i64 %303
  store i8 %301, i8* %304, align 1
  br label %305

305:                                              ; preds = %297
  %306 = load i64, i64* %13, align 8
  %307 = add i64 %306, 1
  store i64 %307, i64* %13, align 8
  br label %294

308:                                              ; preds = %294
  br label %316

309:                                              ; preds = %290
  %310 = load i64, i64* %9, align 8
  %311 = sub i64 %310, 16
  store i64 %311, i64* %9, align 8
  %312 = load i8*, i8** %7, align 8
  %313 = getelementptr inbounds i8, i8* %312, i64 16
  store i8* %313, i8** %7, align 8
  %314 = load i8*, i8** %8, align 8
  %315 = getelementptr inbounds i8, i8* %314, i64 16
  store i8* %315, i8** %8, align 8
  br label %244

316:                                              ; preds = %26, %308, %244
  ret void
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
