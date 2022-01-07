; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdlib/extr_strfmon.c___format_grouped_double.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdlib/extr_strfmon.c___format_grouped_double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lconv = type { i8*, i8*, i8*, i8*, i8*, i32, i32 }

@USE_INTL_CURRENCY = common dso_local global i32 0, align 4
@CHAR_MAX = common dso_local global i32 0, align 4
@NEED_GROUPING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%*.*f\00", align 1
@GRPSEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (double, i32*, i32, i32, i32)* @__format_grouped_double to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @__format_grouped_double(double %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca double, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.lconv*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  store double %0, double* %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %25 = call %struct.lconv* (...) @localeconv()
  store %struct.lconv* %25, %struct.lconv** %18, align 8
  store i32 0, i32* %24, align 4
  %26 = load %struct.lconv*, %struct.lconv** %18, align 8
  %27 = getelementptr inbounds %struct.lconv, %struct.lconv* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %19, align 8
  %29 = load %struct.lconv*, %struct.lconv** %18, align 8
  %30 = getelementptr inbounds %struct.lconv, %struct.lconv* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %20, align 8
  %32 = load i8*, i8** %20, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %5
  %37 = load %struct.lconv*, %struct.lconv** %18, align 8
  %38 = getelementptr inbounds %struct.lconv, %struct.lconv* %37, i32 0, i32 2
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %20, align 8
  br label %40

40:                                               ; preds = %36, %5
  %41 = load %struct.lconv*, %struct.lconv** %18, align 8
  %42 = getelementptr inbounds %struct.lconv, %struct.lconv* %41, i32 0, i32 3
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** %21, align 8
  %44 = load i8*, i8** %21, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %40
  %49 = load %struct.lconv*, %struct.lconv** %18, align 8
  %50 = getelementptr inbounds %struct.lconv, %struct.lconv* %49, i32 0, i32 4
  %51 = load i8*, i8** %50, align 8
  store i8* %51, i8** %21, align 8
  br label %52

52:                                               ; preds = %48, %40
  %53 = load i8*, i8** %20, align 8
  %54 = call i64 @strlen(i8* %53)
  store i64 %54, i64* %22, align 8
  %55 = load i8*, i8** %21, align 8
  %56 = call i64 @strlen(i8* %55)
  store i64 %56, i64* %23, align 8
  %57 = load i32, i32* %9, align 4
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  store i32 0, i32* %9, align 4
  br label %60

60:                                               ; preds = %59, %52
  %61 = load i32, i32* %10, align 4
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %63, label %83

63:                                               ; preds = %60
  %64 = load i32*, i32** %8, align 8
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @USE_INTL_CURRENCY, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = load %struct.lconv*, %struct.lconv** %18, align 8
  %71 = getelementptr inbounds %struct.lconv, %struct.lconv* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 8
  store i32 %72, i32* %10, align 4
  br label %77

73:                                               ; preds = %63
  %74 = load %struct.lconv*, %struct.lconv** %18, align 8
  %75 = getelementptr inbounds %struct.lconv, %struct.lconv* %74, i32 0, i32 6
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %10, align 4
  br label %77

77:                                               ; preds = %73, %69
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @CHAR_MAX, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  store i32 2, i32* %10, align 4
  br label %82

82:                                               ; preds = %81, %77
  br label %83

83:                                               ; preds = %82, %60
  %84 = load i32*, i32** %8, align 8
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @NEED_GROUPING, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %83
  %90 = load i32, i32* %9, align 4
  %91 = load i8*, i8** %19, align 8
  %92 = call i64 @get_groups(i32 %90, i8* %91)
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %94, %92
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %9, align 4
  br label %97

97:                                               ; preds = %89, %83
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* %10, align 4
  %100 = add nsw i32 %98, %99
  %101 = add nsw i32 %100, 1
  %102 = load i32, i32* %10, align 4
  %103 = load double, double* %7, align 8
  %104 = call i32 @asprintf(i8** %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %101, i32 %102, double %103)
  store i32 %104, i32* %14, align 4
  %105 = load i32, i32* %14, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %97
  store i8* null, i8** %6, align 8
  br label %302

108:                                              ; preds = %97
  %109 = load i32, i32* %14, align 4
  %110 = sext i32 %109 to i64
  %111 = load i64, i64* %23, align 8
  %112 = add i64 1, %111
  %113 = mul i64 %110, %112
  %114 = load i64, i64* %22, align 8
  %115 = add i64 %113, %114
  %116 = add i64 %115, 1
  store i64 %116, i64* %15, align 8
  %117 = load i64, i64* %15, align 8
  %118 = call i8* @calloc(i32 1, i64 %117)
  store i8* %118, i8** %12, align 8
  %119 = load i8*, i8** %12, align 8
  %120 = icmp eq i8* %119, null
  br i1 %120, label %121, label %124

121:                                              ; preds = %108
  %122 = load i8*, i8** %13, align 8
  %123 = call i32 @free(i8* %122)
  store i8* null, i8** %6, align 8
  br label %302

124:                                              ; preds = %108
  %125 = load i8*, i8** %12, align 8
  %126 = load i64, i64* %15, align 8
  %127 = getelementptr inbounds i8, i8* %125, i64 %126
  %128 = getelementptr inbounds i8, i8* %127, i64 -1
  store i8* %128, i8** %16, align 8
  store i32 0, i32* %17, align 4
  br label %129

129:                                              ; preds = %137, %124
  %130 = load i8*, i8** %13, align 8
  %131 = load i32, i32* %17, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %130, i64 %132
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp eq i32 %135, 32
  br i1 %136, label %137, label %142

137:                                              ; preds = %129
  %138 = load i32, i32* %17, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %17, align 4
  %140 = load i32, i32* %14, align 4
  %141 = add nsw i32 %140, -1
  store i32 %141, i32* %14, align 4
  br label %129

142:                                              ; preds = %129
  %143 = load i32, i32* %10, align 4
  %144 = icmp sgt i32 %143, 0
  br i1 %144, label %145, label %178

145:                                              ; preds = %142
  %146 = load i32, i32* %10, align 4
  %147 = load i8*, i8** %16, align 8
  %148 = sext i32 %146 to i64
  %149 = sub i64 0, %148
  %150 = getelementptr inbounds i8, i8* %147, i64 %149
  store i8* %150, i8** %16, align 8
  %151 = load i8*, i8** %16, align 8
  %152 = load i8*, i8** %13, align 8
  %153 = load i32, i32* %14, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8, i8* %152, i64 %154
  %156 = load i32, i32* %17, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8, i8* %155, i64 %157
  %159 = load i32, i32* %10, align 4
  %160 = sext i32 %159 to i64
  %161 = sub i64 0, %160
  %162 = getelementptr inbounds i8, i8* %158, i64 %161
  %163 = load i32, i32* %10, align 4
  %164 = call i32 @memcpy(i8* %151, i8* %162, i32 %163)
  %165 = load i64, i64* %22, align 8
  %166 = load i8*, i8** %16, align 8
  %167 = sub i64 0, %165
  %168 = getelementptr inbounds i8, i8* %166, i64 %167
  store i8* %168, i8** %16, align 8
  %169 = load i8*, i8** %16, align 8
  %170 = load i8*, i8** %20, align 8
  %171 = load i64, i64* %22, align 8
  %172 = trunc i64 %171 to i32
  %173 = call i32 @memcpy(i8* %169, i8* %170, i32 %172)
  %174 = load i32, i32* %10, align 4
  %175 = add nsw i32 %174, 1
  %176 = load i32, i32* %14, align 4
  %177 = sub nsw i32 %176, %175
  store i32 %177, i32* %14, align 4
  br label %178

178:                                              ; preds = %145, %142
  %179 = load i32*, i32** %8, align 8
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @NEED_GROUPING, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %251

184:                                              ; preds = %178
  %185 = load i64, i64* %23, align 8
  %186 = icmp ugt i64 %185, 0
  br i1 %186, label %187, label %251

187:                                              ; preds = %184
  %188 = load i8*, i8** %19, align 8
  %189 = load i8, i8* %188, align 1
  %190 = sext i8 %189 to i32
  %191 = load i32, i32* @CHAR_MAX, align 4
  %192 = icmp ne i32 %190, %191
  br i1 %192, label %193, label %251

193:                                              ; preds = %187
  %194 = load i8*, i8** %19, align 8
  %195 = load i8, i8* %194, align 1
  %196 = sext i8 %195 to i32
  %197 = icmp sgt i32 %196, 0
  br i1 %197, label %198, label %251

198:                                              ; preds = %193
  br label %199

199:                                              ; preds = %240, %198
  %200 = load i32, i32* %14, align 4
  %201 = load i8*, i8** %19, align 8
  %202 = load i8, i8* %201, align 1
  %203 = sext i8 %202 to i32
  %204 = icmp sgt i32 %200, %203
  br i1 %204, label %205, label %241

205:                                              ; preds = %199
  %206 = load i8*, i8** %19, align 8
  %207 = load i8, i8* %206, align 1
  %208 = sext i8 %207 to i32
  %209 = call i32 @GRPCPY(i32 %208)
  %210 = load i32, i32* @GRPSEP, align 4
  %211 = load i8*, i8** %19, align 8
  %212 = getelementptr inbounds i8, i8* %211, i32 1
  store i8* %212, i8** %19, align 8
  %213 = load i8*, i8** %19, align 8
  %214 = load i8, i8* %213, align 1
  %215 = sext i8 %214 to i32
  %216 = load i32, i32* @CHAR_MAX, align 4
  %217 = icmp eq i32 %215, %216
  br i1 %217, label %218, label %219

218:                                              ; preds = %205
  br label %241

219:                                              ; preds = %205
  %220 = load i8*, i8** %19, align 8
  %221 = load i8, i8* %220, align 1
  %222 = sext i8 %221 to i32
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %240

224:                                              ; preds = %219
  %225 = load i8*, i8** %19, align 8
  %226 = getelementptr inbounds i8, i8* %225, i32 -1
  store i8* %226, i8** %19, align 8
  br label %227

227:                                              ; preds = %233, %224
  %228 = load i32, i32* %14, align 4
  %229 = load i8*, i8** %19, align 8
  %230 = load i8, i8* %229, align 1
  %231 = sext i8 %230 to i32
  %232 = icmp sgt i32 %228, %231
  br i1 %232, label %233, label %239

233:                                              ; preds = %227
  %234 = load i8*, i8** %19, align 8
  %235 = load i8, i8* %234, align 1
  %236 = sext i8 %235 to i32
  %237 = call i32 @GRPCPY(i32 %236)
  %238 = load i32, i32* @GRPSEP, align 4
  br label %227

239:                                              ; preds = %227
  br label %240

240:                                              ; preds = %239, %219
  br label %199

241:                                              ; preds = %218, %199
  %242 = load i32, i32* %14, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %247

244:                                              ; preds = %241
  %245 = load i32, i32* %14, align 4
  %246 = call i32 @GRPCPY(i32 %245)
  br label %247

247:                                              ; preds = %244, %241
  %248 = load i32, i32* %24, align 4
  %249 = load i32, i32* %17, align 4
  %250 = sub nsw i32 %249, %248
  store i32 %250, i32* %17, align 4
  br label %273

251:                                              ; preds = %193, %187, %184, %178
  %252 = load i32, i32* %14, align 4
  %253 = load i8*, i8** %16, align 8
  %254 = sext i32 %252 to i64
  %255 = sub i64 0, %254
  %256 = getelementptr inbounds i8, i8* %253, i64 %255
  store i8* %256, i8** %16, align 8
  %257 = load i8*, i8** %16, align 8
  %258 = load i8*, i8** %13, align 8
  %259 = load i32, i32* %17, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i8, i8* %258, i64 %260
  %262 = load i32, i32* %14, align 4
  %263 = call i32 @memcpy(i8* %257, i8* %261, i32 %262)
  %264 = load i32, i32* %10, align 4
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %266, label %272

266:                                              ; preds = %251
  %267 = load i64, i64* %22, align 8
  %268 = load i32, i32* %17, align 4
  %269 = sext i32 %268 to i64
  %270 = sub i64 %269, %267
  %271 = trunc i64 %270 to i32
  store i32 %271, i32* %17, align 4
  br label %272

272:                                              ; preds = %266, %251
  br label %273

273:                                              ; preds = %272, %247
  %274 = load i32, i32* %17, align 4
  %275 = icmp sgt i32 %274, 0
  br i1 %275, label %276, label %286

276:                                              ; preds = %273
  %277 = load i32, i32* %17, align 4
  %278 = load i8*, i8** %16, align 8
  %279 = sext i32 %277 to i64
  %280 = sub i64 0, %279
  %281 = getelementptr inbounds i8, i8* %278, i64 %280
  store i8* %281, i8** %16, align 8
  %282 = load i8*, i8** %16, align 8
  %283 = load i32, i32* %11, align 4
  %284 = load i32, i32* %17, align 4
  %285 = call i32 @memset(i8* %282, i32 %283, i32 %284)
  br label %286

286:                                              ; preds = %276, %273
  %287 = load i64, i64* %15, align 8
  %288 = load i8*, i8** %16, align 8
  %289 = load i8*, i8** %12, align 8
  %290 = ptrtoint i8* %288 to i64
  %291 = ptrtoint i8* %289 to i64
  %292 = sub i64 %290, %291
  %293 = sub i64 %287, %292
  %294 = add i64 %293, 1
  store i64 %294, i64* %15, align 8
  %295 = load i8*, i8** %12, align 8
  %296 = load i8*, i8** %16, align 8
  %297 = load i64, i64* %15, align 8
  %298 = call i32 @memmove(i8* %295, i8* %296, i64 %297)
  %299 = load i8*, i8** %13, align 8
  %300 = call i32 @free(i8* %299)
  %301 = load i8*, i8** %12, align 8
  store i8* %301, i8** %6, align 8
  br label %302

302:                                              ; preds = %286, %121, %107
  %303 = load i8*, i8** %6, align 8
  ret i8* %303
}

declare dso_local %struct.lconv* @localeconv(...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @get_groups(i32, i8*) #1

declare dso_local i32 @asprintf(i8**, i8*, i32, i32, double) #1

declare dso_local i8* @calloc(i32, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @GRPCPY(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
