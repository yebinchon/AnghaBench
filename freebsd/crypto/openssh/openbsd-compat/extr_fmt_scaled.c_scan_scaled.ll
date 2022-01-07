; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_fmt_scaled.c_scan_scaled.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_fmt_scaled.c_scan_scaled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@MAX_DIGITS = common dso_local global i32 0, align 4
@LLONG_MAX = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@SCALE_LENGTH = common dso_local global i32 0, align 4
@scale_chars = common dso_local global i8* null, align 8
@scale_factors = common dso_local global i64* null, align 8
@LLONG_MIN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scan_scaled(i8* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  %14 = load i8*, i8** %4, align 8
  store i8* %14, i8** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i64 1, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  br label %15

15:                                               ; preds = %27, %2
  %16 = load i8*, i8** %6, align 8
  %17 = load i8, i8* %16, align 1
  %18 = call i64 @isascii(i8 zeroext %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load i8*, i8** %6, align 8
  %22 = load i8, i8* %21, align 1
  %23 = call i64 @isspace(i8 zeroext %22)
  %24 = icmp ne i64 %23, 0
  br label %25

25:                                               ; preds = %20, %15
  %26 = phi i1 [ false, %15 ], [ %24, %20 ]
  br i1 %26, label %27, label %30

27:                                               ; preds = %25
  %28 = load i8*, i8** %6, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %6, align 8
  br label %15

30:                                               ; preds = %25
  br label %31

31:                                               ; preds = %70, %30
  %32 = load i8*, i8** %6, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 45
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load i8*, i8** %6, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 43
  br label %41

41:                                               ; preds = %36, %31
  %42 = phi i1 [ true, %31 ], [ %40, %36 ]
  br i1 %42, label %43, label %71

43:                                               ; preds = %41
  %44 = load i8*, i8** %6, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 45
  br i1 %47, label %48, label %56

48:                                               ; preds = %43
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load i32, i32* @EINVAL, align 4
  store i32 %52, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %300

53:                                               ; preds = %48
  store i32 -1, i32* %7, align 4
  %54 = load i8*, i8** %6, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %6, align 8
  br label %70

56:                                               ; preds = %43
  %57 = load i8*, i8** %6, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 43
  br i1 %60, label %61, label %69

61:                                               ; preds = %56
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = load i32, i32* @EINVAL, align 4
  store i32 %65, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %300

66:                                               ; preds = %61
  store i32 1, i32* %7, align 4
  %67 = load i8*, i8** %6, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %6, align 8
  br label %69

69:                                               ; preds = %66, %56
  br label %70

70:                                               ; preds = %69, %53
  br label %31

71:                                               ; preds = %41
  br label %72

72:                                               ; preds = %175, %71
  %73 = load i8*, i8** %6, align 8
  %74 = load i8, i8* %73, align 1
  %75 = call i64 @isascii(i8 zeroext %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %89

77:                                               ; preds = %72
  %78 = load i8*, i8** %6, align 8
  %79 = load i8, i8* %78, align 1
  %80 = call i64 @isdigit(i8 zeroext %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %77
  %83 = load i8*, i8** %6, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 46
  br label %87

87:                                               ; preds = %82, %77
  %88 = phi i1 [ true, %77 ], [ %86, %82 ]
  br label %89

89:                                               ; preds = %87, %72
  %90 = phi i1 [ false, %72 ], [ %88, %87 ]
  br i1 %90, label %91, label %178

91:                                               ; preds = %89
  %92 = load i8*, i8** %6, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 46
  br i1 %95, label %96, label %102

96:                                               ; preds = %91
  %97 = load i32, i32* %10, align 4
  %98 = icmp ugt i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %96
  %100 = load i32, i32* @EINVAL, align 4
  store i32 %100, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %300

101:                                              ; preds = %96
  store i32 1, i32* %10, align 4
  br label %175

102:                                              ; preds = %91
  %103 = load i8*, i8** %6, align 8
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = sub nsw i32 %105, 48
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* %10, align 4
  %108 = icmp ugt i32 %107, 0
  br i1 %108, label %109, label %142

109:                                              ; preds = %102
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* @MAX_DIGITS, align 4
  %112 = sub nsw i32 %111, 1
  %113 = icmp uge i32 %110, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %109
  br label %175

115:                                              ; preds = %109
  %116 = load i32, i32* %10, align 4
  %117 = add i32 %116, 1
  store i32 %117, i32* %10, align 4
  %118 = load i64, i64* %13, align 8
  %119 = load i32, i32* @LLONG_MAX, align 4
  %120 = sdiv i32 %119, 10
  %121 = sext i32 %120 to i64
  %122 = icmp sgt i64 %118, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %115
  %124 = load i32, i32* @ERANGE, align 4
  store i32 %124, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %300

125:                                              ; preds = %115
  %126 = load i64, i64* %13, align 8
  %127 = mul nsw i64 %126, 10
  store i64 %127, i64* %13, align 8
  %128 = load i32, i32* %8, align 4
  %129 = zext i32 %128 to i64
  %130 = load i32, i32* @LLONG_MAX, align 4
  %131 = sext i32 %130 to i64
  %132 = load i64, i64* %13, align 8
  %133 = sub nsw i64 %131, %132
  %134 = icmp sgt i64 %129, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %125
  %136 = load i32, i32* @ERANGE, align 4
  store i32 %136, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %300

137:                                              ; preds = %125
  %138 = load i32, i32* %8, align 4
  %139 = zext i32 %138 to i64
  %140 = load i64, i64* %13, align 8
  %141 = add nsw i64 %140, %139
  store i64 %141, i64* %13, align 8
  br label %174

142:                                              ; preds = %102
  %143 = load i32, i32* %9, align 4
  %144 = add i32 %143, 1
  store i32 %144, i32* %9, align 4
  %145 = load i32, i32* @MAX_DIGITS, align 4
  %146 = icmp uge i32 %144, %145
  br i1 %146, label %147, label %149

147:                                              ; preds = %142
  %148 = load i32, i32* @ERANGE, align 4
  store i32 %148, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %300

149:                                              ; preds = %142
  %150 = load i64, i64* %12, align 8
  %151 = load i32, i32* @LLONG_MAX, align 4
  %152 = sdiv i32 %151, 10
  %153 = sext i32 %152 to i64
  %154 = icmp sgt i64 %150, %153
  br i1 %154, label %155, label %157

155:                                              ; preds = %149
  %156 = load i32, i32* @ERANGE, align 4
  store i32 %156, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %300

157:                                              ; preds = %149
  %158 = load i64, i64* %12, align 8
  %159 = mul nsw i64 %158, 10
  store i64 %159, i64* %12, align 8
  %160 = load i32, i32* %8, align 4
  %161 = zext i32 %160 to i64
  %162 = load i32, i32* @LLONG_MAX, align 4
  %163 = sext i32 %162 to i64
  %164 = load i64, i64* %12, align 8
  %165 = sub nsw i64 %163, %164
  %166 = icmp sgt i64 %161, %165
  br i1 %166, label %167, label %169

167:                                              ; preds = %157
  %168 = load i32, i32* @ERANGE, align 4
  store i32 %168, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %300

169:                                              ; preds = %157
  %170 = load i32, i32* %8, align 4
  %171 = zext i32 %170 to i64
  %172 = load i64, i64* %12, align 8
  %173 = add nsw i64 %172, %171
  store i64 %173, i64* %12, align 8
  br label %174

174:                                              ; preds = %169, %137
  br label %175

175:                                              ; preds = %174, %114, %101
  %176 = load i8*, i8** %6, align 8
  %177 = getelementptr inbounds i8, i8* %176, i32 1
  store i8* %177, i8** %6, align 8
  br label %72

178:                                              ; preds = %89
  %179 = load i32, i32* %7, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %190

181:                                              ; preds = %178
  %182 = load i32, i32* %7, align 4
  %183 = sext i32 %182 to i64
  %184 = load i64, i64* %12, align 8
  %185 = mul nsw i64 %184, %183
  store i64 %185, i64* %12, align 8
  %186 = load i32, i32* %7, align 4
  %187 = sext i32 %186 to i64
  %188 = load i64, i64* %13, align 8
  %189 = mul nsw i64 %188, %187
  store i64 %189, i64* %13, align 8
  br label %190

190:                                              ; preds = %181, %178
  %191 = load i8*, i8** %6, align 8
  %192 = load i8, i8* %191, align 1
  %193 = icmp ne i8 %192, 0
  br i1 %193, label %197, label %194

194:                                              ; preds = %190
  %195 = load i64, i64* %12, align 8
  %196 = load i64*, i64** %5, align 8
  store i64 %195, i64* %196, align 8
  store i32 0, i32* %3, align 4
  br label %300

197:                                              ; preds = %190
  store i32 0, i32* %8, align 4
  br label %198

198:                                              ; preds = %295, %197
  %199 = load i32, i32* %8, align 4
  %200 = load i32, i32* @SCALE_LENGTH, align 4
  %201 = icmp ult i32 %199, %200
  br i1 %201, label %202, label %298

202:                                              ; preds = %198
  %203 = load i8*, i8** %6, align 8
  %204 = load i8, i8* %203, align 1
  %205 = sext i8 %204 to i32
  %206 = load i8*, i8** @scale_chars, align 8
  %207 = load i32, i32* %8, align 4
  %208 = zext i32 %207 to i64
  %209 = getelementptr inbounds i8, i8* %206, i64 %208
  %210 = load i8, i8* %209, align 1
  %211 = sext i8 %210 to i32
  %212 = icmp eq i32 %205, %211
  br i1 %212, label %225, label %213

213:                                              ; preds = %202
  %214 = load i8*, i8** %6, align 8
  %215 = load i8, i8* %214, align 1
  %216 = sext i8 %215 to i32
  %217 = load i8*, i8** @scale_chars, align 8
  %218 = load i32, i32* %8, align 4
  %219 = zext i32 %218 to i64
  %220 = getelementptr inbounds i8, i8* %217, i64 %219
  %221 = load i8, i8* %220, align 1
  %222 = call signext i8 @tolower(i8 zeroext %221)
  %223 = sext i8 %222 to i32
  %224 = icmp eq i32 %216, %223
  br i1 %224, label %225, label %294

225:                                              ; preds = %213, %202
  %226 = load i8*, i8** %6, align 8
  %227 = getelementptr inbounds i8, i8* %226, i64 1
  %228 = load i8, i8* %227, align 1
  %229 = call i64 @isalnum(i8 zeroext %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %233

231:                                              ; preds = %225
  %232 = load i32, i32* @EINVAL, align 4
  store i32 %232, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %300

233:                                              ; preds = %225
  %234 = load i64*, i64** @scale_factors, align 8
  %235 = load i32, i32* %8, align 4
  %236 = zext i32 %235 to i64
  %237 = getelementptr inbounds i64, i64* %234, i64 %236
  %238 = load i64, i64* %237, align 8
  store i64 %238, i64* %11, align 8
  %239 = load i64, i64* %12, align 8
  %240 = load i32, i32* @LLONG_MAX, align 4
  %241 = sext i32 %240 to i64
  %242 = load i64, i64* %11, align 8
  %243 = sdiv i64 %241, %242
  %244 = icmp sgt i64 %239, %243
  br i1 %244, label %251, label %245

245:                                              ; preds = %233
  %246 = load i64, i64* %12, align 8
  %247 = load i64, i64* @LLONG_MIN, align 8
  %248 = load i64, i64* %11, align 8
  %249 = sdiv i64 %247, %248
  %250 = icmp slt i64 %246, %249
  br i1 %250, label %251, label %253

251:                                              ; preds = %245, %233
  %252 = load i32, i32* @ERANGE, align 4
  store i32 %252, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %300

253:                                              ; preds = %245
  %254 = load i64, i64* %11, align 8
  %255 = load i64, i64* %12, align 8
  %256 = mul nsw i64 %255, %254
  store i64 %256, i64* %12, align 8
  br label %257

257:                                              ; preds = %264, %253
  %258 = load i64, i64* %13, align 8
  %259 = load i32, i32* @LLONG_MAX, align 4
  %260 = sext i32 %259 to i64
  %261 = load i64, i64* %11, align 8
  %262 = sdiv i64 %260, %261
  %263 = icmp sge i64 %258, %262
  br i1 %263, label %264, label %269

264:                                              ; preds = %257
  %265 = load i64, i64* %13, align 8
  %266 = sdiv i64 %265, 10
  store i64 %266, i64* %13, align 8
  %267 = load i32, i32* %10, align 4
  %268 = add i32 %267, -1
  store i32 %268, i32* %10, align 4
  br label %257

269:                                              ; preds = %257
  %270 = load i64, i64* %11, align 8
  %271 = load i64, i64* %13, align 8
  %272 = mul nsw i64 %271, %270
  store i64 %272, i64* %13, align 8
  %273 = load i32, i32* %10, align 4
  %274 = icmp ugt i32 %273, 0
  br i1 %274, label %275, label %288

275:                                              ; preds = %269
  store i32 0, i32* %8, align 4
  br label %276

276:                                              ; preds = %284, %275
  %277 = load i32, i32* %8, align 4
  %278 = load i32, i32* %10, align 4
  %279 = sub i32 %278, 1
  %280 = icmp ult i32 %277, %279
  br i1 %280, label %281, label %287

281:                                              ; preds = %276
  %282 = load i64, i64* %13, align 8
  %283 = sdiv i64 %282, 10
  store i64 %283, i64* %13, align 8
  br label %284

284:                                              ; preds = %281
  %285 = load i32, i32* %8, align 4
  %286 = add i32 %285, 1
  store i32 %286, i32* %8, align 4
  br label %276

287:                                              ; preds = %276
  br label %288

288:                                              ; preds = %287, %269
  %289 = load i64, i64* %13, align 8
  %290 = load i64, i64* %12, align 8
  %291 = add nsw i64 %290, %289
  store i64 %291, i64* %12, align 8
  %292 = load i64, i64* %12, align 8
  %293 = load i64*, i64** %5, align 8
  store i64 %292, i64* %293, align 8
  store i32 0, i32* %3, align 4
  br label %300

294:                                              ; preds = %213
  br label %295

295:                                              ; preds = %294
  %296 = load i32, i32* %8, align 4
  %297 = add i32 %296, 1
  store i32 %297, i32* %8, align 4
  br label %198

298:                                              ; preds = %198
  %299 = load i32, i32* @EINVAL, align 4
  store i32 %299, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %300

300:                                              ; preds = %298, %288, %251, %231, %194, %167, %155, %147, %135, %123, %99, %64, %51
  %301 = load i32, i32* %3, align 4
  ret i32 %301
}

declare dso_local i64 @isascii(i8 zeroext) #1

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i64 @isdigit(i8 zeroext) #1

declare dso_local signext i8 @tolower(i8 zeroext) #1

declare dso_local i64 @isalnum(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
