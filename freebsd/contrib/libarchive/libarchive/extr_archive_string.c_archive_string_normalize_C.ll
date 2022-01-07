; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_string.c_archive_string_normalize_C.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_string.c_archive_string_normalize_C.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_string = type { i64, i8*, i32 }
%struct.archive_string_conv = type { i32 }

@SCONV_TO_UTF16BE = common dso_local global i32 0, align 4
@SCONV_FROM_UTF16BE = common dso_local global i32 0, align 4
@SCONV_TO_UTF16LE = common dso_local global i32 0, align 4
@SCONV_FROM_UTF16LE = common dso_local global i32 0, align 4
@SCONV_TO_UTF8 = common dso_local global i32 0, align 4
@SCONV_FROM_UTF8 = common dso_local global i32 0, align 4
@FDC_MAX = common dso_local global i32 0, align 4
@HC_LBASE = common dso_local global i32 0, align 4
@HC_LCOUNT = common dso_local global i32 0, align 4
@HC_VBASE = common dso_local global i32 0, align 4
@HC_VCOUNT = common dso_local global i32 0, align 4
@HC_SBASE = common dso_local global i32 0, align 4
@HC_TCOUNT = common dso_local global i32 0, align 4
@HC_SCOUNT = common dso_local global i32 0, align 4
@HC_TBASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_string*, i8*, i64, %struct.archive_string_conv*)* @archive_string_normalize_C to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_string_normalize_C(%struct.archive_string* %0, i8* %1, i64 %2, %struct.archive_string_conv* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.archive_string*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.archive_string_conv*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32 (i32*, i8*, i64)*, align 8
  %24 = alloca i64 (i8*, i64, i32)*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  store %struct.archive_string* %0, %struct.archive_string** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.archive_string_conv* %3, %struct.archive_string_conv** %9, align 8
  %42 = load i8*, i8** %7, align 8
  store i8* %42, i8** %10, align 8
  store i32 0, i32* %19, align 4
  store i32 1, i32* %16, align 4
  store i32 1, i32* %21, align 4
  %43 = load %struct.archive_string_conv*, %struct.archive_string_conv** %9, align 8
  %44 = getelementptr inbounds %struct.archive_string_conv, %struct.archive_string_conv* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @SCONV_TO_UTF16BE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %4
  store i64 (i8*, i64, i32)* @unicode_to_utf16be, i64 (i8*, i64, i32)** %24, align 8
  store i32 2, i32* %21, align 4
  %50 = load %struct.archive_string_conv*, %struct.archive_string_conv** %9, align 8
  %51 = getelementptr inbounds %struct.archive_string_conv, %struct.archive_string_conv* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @SCONV_FROM_UTF16BE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  store i32 0, i32* %16, align 4
  br label %57

57:                                               ; preds = %56, %49
  br label %111

58:                                               ; preds = %4
  %59 = load %struct.archive_string_conv*, %struct.archive_string_conv** %9, align 8
  %60 = getelementptr inbounds %struct.archive_string_conv, %struct.archive_string_conv* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @SCONV_TO_UTF16LE, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %58
  store i64 (i8*, i64, i32)* @unicode_to_utf16le, i64 (i8*, i64, i32)** %24, align 8
  store i32 2, i32* %21, align 4
  %66 = load %struct.archive_string_conv*, %struct.archive_string_conv** %9, align 8
  %67 = getelementptr inbounds %struct.archive_string_conv, %struct.archive_string_conv* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @SCONV_FROM_UTF16LE, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  store i32 0, i32* %16, align 4
  br label %73

73:                                               ; preds = %72, %65
  br label %110

74:                                               ; preds = %58
  %75 = load %struct.archive_string_conv*, %struct.archive_string_conv** %9, align 8
  %76 = getelementptr inbounds %struct.archive_string_conv, %struct.archive_string_conv* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @SCONV_TO_UTF8, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %74
  store i64 (i8*, i64, i32)* @unicode_to_utf8, i64 (i8*, i64, i32)** %24, align 8
  %82 = load %struct.archive_string_conv*, %struct.archive_string_conv** %9, align 8
  %83 = getelementptr inbounds %struct.archive_string_conv, %struct.archive_string_conv* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @SCONV_FROM_UTF8, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %81
  store i32 0, i32* %16, align 4
  br label %89

89:                                               ; preds = %88, %81
  br label %109

90:                                               ; preds = %74
  store i32 0, i32* %16, align 4
  %91 = load %struct.archive_string_conv*, %struct.archive_string_conv** %9, align 8
  %92 = getelementptr inbounds %struct.archive_string_conv, %struct.archive_string_conv* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @SCONV_FROM_UTF16BE, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %90
  store i64 (i8*, i64, i32)* @unicode_to_utf16be, i64 (i8*, i64, i32)** %24, align 8
  store i32 2, i32* %21, align 4
  br label %108

98:                                               ; preds = %90
  %99 = load %struct.archive_string_conv*, %struct.archive_string_conv** %9, align 8
  %100 = getelementptr inbounds %struct.archive_string_conv, %struct.archive_string_conv* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @SCONV_FROM_UTF16LE, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %98
  store i64 (i8*, i64, i32)* @unicode_to_utf16le, i64 (i8*, i64, i32)** %24, align 8
  store i32 2, i32* %21, align 4
  br label %107

106:                                              ; preds = %98
  store i64 (i8*, i64, i32)* @unicode_to_utf8, i64 (i8*, i64, i32)** %24, align 8
  br label %107

107:                                              ; preds = %106, %105
  br label %108

108:                                              ; preds = %107, %97
  br label %109

109:                                              ; preds = %108, %89
  br label %110

110:                                              ; preds = %109, %73
  br label %111

111:                                              ; preds = %110, %57
  %112 = load %struct.archive_string_conv*, %struct.archive_string_conv** %9, align 8
  %113 = getelementptr inbounds %struct.archive_string_conv, %struct.archive_string_conv* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @SCONV_FROM_UTF16BE, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %111
  store i32 (i32*, i8*, i64)* @utf16be_to_unicode, i32 (i32*, i8*, i64)** %23, align 8
  store i32 1, i32* %22, align 4
  store i32 4, i32* %20, align 4
  br label %130

119:                                              ; preds = %111
  %120 = load %struct.archive_string_conv*, %struct.archive_string_conv** %9, align 8
  %121 = getelementptr inbounds %struct.archive_string_conv, %struct.archive_string_conv* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @SCONV_FROM_UTF16LE, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %119
  store i32 (i32*, i8*, i64)* @utf16le_to_unicode, i32 (i32*, i8*, i64)** %23, align 8
  store i32 1, i32* %22, align 4
  store i32 4, i32* %20, align 4
  br label %129

127:                                              ; preds = %119
  store i32 (i32*, i8*, i64)* @cesu8_to_unicode, i32 (i32*, i8*, i64)** %23, align 8
  %128 = load i32, i32* %21, align 4
  store i32 %128, i32* %22, align 4
  store i32 6, i32* %20, align 4
  br label %129

129:                                              ; preds = %127, %126
  br label %130

130:                                              ; preds = %129, %118
  %131 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %132 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %133 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* %8, align 8
  %136 = load i32, i32* %22, align 4
  %137 = sext i32 %136 to i64
  %138 = mul i64 %135, %137
  %139 = add i64 %134, %138
  %140 = load i32, i32* %21, align 4
  %141 = sext i32 %140 to i64
  %142 = add i64 %139, %141
  %143 = call i32* @archive_string_ensure(%struct.archive_string* %131, i64 %142)
  %144 = icmp eq i32* %143, null
  br i1 %144, label %145, label %146

145:                                              ; preds = %130
  store i32 -1, i32* %5, align 4
  br label %527

146:                                              ; preds = %130
  %147 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %148 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %147, i32 0, i32 1
  %149 = load i8*, i8** %148, align 8
  %150 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %151 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = getelementptr inbounds i8, i8* %149, i64 %152
  store i8* %153, i8** %11, align 8
  %154 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %155 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %154, i32 0, i32 1
  %156 = load i8*, i8** %155, align 8
  %157 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %158 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8, i8* %156, i64 %160
  %162 = load i32, i32* %21, align 4
  %163 = sext i32 %162 to i64
  %164 = sub i64 0, %163
  %165 = getelementptr inbounds i8, i8* %161, i64 %164
  store i8* %165, i8** %12, align 8
  br label %166

166:                                              ; preds = %496, %474, %175, %146
  %167 = load i32 (i32*, i8*, i64)*, i32 (i32*, i8*, i64)** %23, align 8
  %168 = load i8*, i8** %10, align 8
  %169 = load i64, i64* %8, align 8
  %170 = call i32 %167(i32* %13, i8* %168, i64 %169)
  store i32 %170, i32* %17, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %497

172:                                              ; preds = %166
  %173 = load i32, i32* %17, align 4
  %174 = icmp slt i32 %173, 0
  br i1 %174, label %175, label %190

175:                                              ; preds = %172
  %176 = load i8*, i8** %11, align 8
  %177 = load i8*, i8** %12, align 8
  %178 = load i32, i32* %13, align 4
  %179 = call i32 @UNPARSE(i8* %176, i8* %177, i32 %178)
  %180 = load i32, i32* %17, align 4
  %181 = mul nsw i32 %180, -1
  %182 = load i8*, i8** %10, align 8
  %183 = sext i32 %181 to i64
  %184 = getelementptr inbounds i8, i8* %182, i64 %183
  store i8* %184, i8** %10, align 8
  %185 = load i32, i32* %17, align 4
  %186 = mul nsw i32 %185, -1
  %187 = sext i32 %186 to i64
  %188 = load i64, i64* %8, align 8
  %189 = sub i64 %188, %187
  store i64 %189, i64* %8, align 8
  store i32 -1, i32* %19, align 4
  br label %166

190:                                              ; preds = %172
  %191 = load i32, i32* %17, align 4
  %192 = load i32, i32* %20, align 4
  %193 = icmp eq i32 %191, %192
  br i1 %193, label %197, label %194

194:                                              ; preds = %190
  %195 = load i32, i32* %16, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %194, %190
  store i8* null, i8** %25, align 8
  br label %200

198:                                              ; preds = %194
  %199 = load i8*, i8** %10, align 8
  store i8* %199, i8** %25, align 8
  br label %200

200:                                              ; preds = %198, %197
  br label %201

201:                                              ; preds = %200
  %202 = load i32, i32* %17, align 4
  %203 = load i8*, i8** %10, align 8
  %204 = sext i32 %202 to i64
  %205 = getelementptr inbounds i8, i8* %203, i64 %204
  store i8* %205, i8** %10, align 8
  %206 = load i32, i32* %17, align 4
  %207 = sext i32 %206 to i64
  %208 = load i64, i64* %8, align 8
  %209 = sub i64 %208, %207
  store i64 %209, i64* %8, align 8
  br label %210

210:                                              ; preds = %468, %201
  %211 = load i32 (i32*, i8*, i64)*, i32 (i32*, i8*, i64)** %23, align 8
  %212 = load i8*, i8** %10, align 8
  %213 = load i64, i64* %8, align 8
  %214 = call i32 %211(i32* %14, i8* %212, i64 %213)
  store i32 %214, i32* %18, align 4
  %215 = icmp sgt i32 %214, 0
  br i1 %215, label %216, label %471

216:                                              ; preds = %210
  %217 = load i32, i32* @FDC_MAX, align 4
  %218 = zext i32 %217 to i64
  %219 = call i8* @llvm.stacksave()
  store i8* %219, i8** %27, align 8
  %220 = alloca i32, i64 %218, align 16
  store i64 %218, i64* %28, align 8
  %221 = load i32, i32* @FDC_MAX, align 4
  %222 = zext i32 %221 to i64
  %223 = alloca i32, i64 %222, align 16
  store i64 %222, i64* %29, align 8
  %224 = load i32, i32* %18, align 4
  %225 = load i32, i32* %20, align 4
  %226 = icmp eq i32 %224, %225
  br i1 %226, label %230, label %227

227:                                              ; preds = %216
  %228 = load i32, i32* %16, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %227, %216
  store i8* null, i8** %26, align 8
  br label %233

231:                                              ; preds = %227
  %232 = load i8*, i8** %10, align 8
  store i8* %232, i8** %26, align 8
  br label %233

233:                                              ; preds = %231, %230
  %234 = load i32, i32* %18, align 4
  %235 = load i8*, i8** %10, align 8
  %236 = sext i32 %234 to i64
  %237 = getelementptr inbounds i8, i8* %235, i64 %236
  store i8* %237, i8** %10, align 8
  %238 = load i32, i32* %18, align 4
  %239 = sext i32 %238 to i64
  %240 = load i64, i64* %8, align 8
  %241 = sub i64 %240, %239
  store i64 %241, i64* %8, align 8
  %242 = load i32, i32* %14, align 4
  %243 = call i32 @IS_DECOMPOSABLE_BLOCK(i32 %242)
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %248, label %245

245:                                              ; preds = %233
  %246 = call i32 (...) @WRITE_UC()
  %247 = call i32 (...) @REPLACE_UC_WITH_UC2()
  store i32 4, i32* %38, align 4
  br label %468

248:                                              ; preds = %233
  %249 = load i32, i32* %13, align 4
  %250 = load i32, i32* @HC_LBASE, align 4
  %251 = sub nsw i32 %249, %250
  store i32 %251, i32* %35, align 4
  %252 = icmp sle i32 0, %251
  br i1 %252, label %253, label %282

253:                                              ; preds = %248
  %254 = load i32, i32* %35, align 4
  %255 = load i32, i32* @HC_LCOUNT, align 4
  %256 = icmp slt i32 %254, %255
  br i1 %256, label %257, label %282

257:                                              ; preds = %253
  %258 = load i32, i32* %14, align 4
  %259 = load i32, i32* @HC_VBASE, align 4
  %260 = sub nsw i32 %258, %259
  store i32 %260, i32* %39, align 4
  %261 = load i32, i32* %39, align 4
  %262 = icmp sle i32 0, %261
  br i1 %262, label %263, label %278

263:                                              ; preds = %257
  %264 = load i32, i32* %39, align 4
  %265 = load i32, i32* @HC_VCOUNT, align 4
  %266 = icmp slt i32 %264, %265
  br i1 %266, label %267, label %278

267:                                              ; preds = %263
  %268 = load i32, i32* @HC_SBASE, align 4
  %269 = load i32, i32* %35, align 4
  %270 = load i32, i32* @HC_VCOUNT, align 4
  %271 = mul nsw i32 %269, %270
  %272 = load i32, i32* %39, align 4
  %273 = add nsw i32 %271, %272
  %274 = load i32, i32* @HC_TCOUNT, align 4
  %275 = mul nsw i32 %273, %274
  %276 = add nsw i32 %268, %275
  %277 = call i32 @UPDATE_UC(i32 %276)
  br label %281

278:                                              ; preds = %263, %257
  %279 = call i32 (...) @WRITE_UC()
  %280 = call i32 (...) @REPLACE_UC_WITH_UC2()
  br label %281

281:                                              ; preds = %278, %267
  store i32 4, i32* %38, align 4
  br label %468

282:                                              ; preds = %253, %248
  %283 = load i32, i32* %13, align 4
  %284 = load i32, i32* @HC_SBASE, align 4
  %285 = sub nsw i32 %283, %284
  store i32 %285, i32* %36, align 4
  %286 = icmp sle i32 0, %285
  br i1 %286, label %287, label %315

287:                                              ; preds = %282
  %288 = load i32, i32* %36, align 4
  %289 = load i32, i32* @HC_SCOUNT, align 4
  %290 = icmp slt i32 %288, %289
  br i1 %290, label %291, label %315

291:                                              ; preds = %287
  %292 = load i32, i32* %36, align 4
  %293 = load i32, i32* @HC_TCOUNT, align 4
  %294 = srem i32 %292, %293
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %296, label %315

296:                                              ; preds = %291
  %297 = load i32, i32* %14, align 4
  %298 = load i32, i32* @HC_TBASE, align 4
  %299 = sub nsw i32 %297, %298
  store i32 %299, i32* %40, align 4
  %300 = load i32, i32* %40, align 4
  %301 = icmp slt i32 0, %300
  br i1 %301, label %302, label %311

302:                                              ; preds = %296
  %303 = load i32, i32* %40, align 4
  %304 = load i32, i32* @HC_TCOUNT, align 4
  %305 = icmp slt i32 %303, %304
  br i1 %305, label %306, label %311

306:                                              ; preds = %302
  %307 = load i32, i32* %13, align 4
  %308 = load i32, i32* %40, align 4
  %309 = add nsw i32 %307, %308
  %310 = call i32 @UPDATE_UC(i32 %309)
  br label %314

311:                                              ; preds = %302, %296
  %312 = call i32 (...) @WRITE_UC()
  %313 = call i32 (...) @REPLACE_UC_WITH_UC2()
  br label %314

314:                                              ; preds = %311, %306
  store i32 4, i32* %38, align 4
  br label %468

315:                                              ; preds = %291, %287, %282
  %316 = load i32, i32* %13, align 4
  %317 = load i32, i32* %14, align 4
  %318 = call i32 @get_nfc(i32 %316, i32 %317)
  store i32 %318, i32* %37, align 4
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %323

320:                                              ; preds = %315
  %321 = load i32, i32* %37, align 4
  %322 = call i32 @UPDATE_UC(i32 %321)
  store i32 4, i32* %38, align 4
  br label %468

323:                                              ; preds = %315
  %324 = load i32, i32* %14, align 4
  %325 = call i32 @CCC(i32 %324)
  store i32 %325, i32* %30, align 4
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %327, label %330

327:                                              ; preds = %323
  %328 = call i32 (...) @WRITE_UC()
  %329 = call i32 (...) @REPLACE_UC_WITH_UC2()
  store i32 4, i32* %38, align 4
  br label %468

330:                                              ; preds = %323
  br label %331

331:                                              ; preds = %330
  br label %332

332:                                              ; preds = %331
  br label %333

333:                                              ; preds = %332
  store i32 0, i32* %31, align 4
  %334 = load i32, i32* %14, align 4
  %335 = getelementptr inbounds i32, i32* %220, i64 0
  store i32 %334, i32* %335, align 16
  %336 = load i32, i32* %30, align 4
  %337 = getelementptr inbounds i32, i32* %223, i64 0
  store i32 %336, i32* %337, align 16
  %338 = call i32 @COLLECT_CPS(i32 1)
  store i32 1, i32* %32, align 4
  br label %339

339:                                              ; preds = %407, %351, %333
  %340 = load i32, i32* %32, align 4
  %341 = load i32, i32* %34, align 4
  %342 = icmp slt i32 %340, %341
  br i1 %342, label %343, label %408

343:                                              ; preds = %339
  %344 = load i32, i32* %13, align 4
  %345 = load i32, i32* %32, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds i32, i32* %220, i64 %346
  %348 = load i32, i32* %347, align 4
  %349 = call i32 @get_nfc(i32 %344, i32 %348)
  store i32 %349, i32* %37, align 4
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %351, label %354

351:                                              ; preds = %343
  %352 = load i32, i32* %32, align 4
  %353 = add nsw i32 %352, 1
  store i32 %353, i32* %32, align 4
  br label %339

354:                                              ; preds = %343
  %355 = load i32, i32* %37, align 4
  %356 = call i32 @UPDATE_UC(i32 %355)
  %357 = load i32, i32* %32, align 4
  store i32 %357, i32* %41, align 4
  br label %358

358:                                              ; preds = %380, %354
  %359 = load i32, i32* %41, align 4
  %360 = add nsw i32 %359, 1
  %361 = load i32, i32* %34, align 4
  %362 = icmp slt i32 %360, %361
  br i1 %362, label %363, label %383

363:                                              ; preds = %358
  %364 = load i32, i32* %41, align 4
  %365 = add nsw i32 %364, 1
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds i32, i32* %220, i64 %366
  %368 = load i32, i32* %367, align 4
  %369 = load i32, i32* %41, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds i32, i32* %220, i64 %370
  store i32 %368, i32* %371, align 4
  %372 = load i32, i32* %41, align 4
  %373 = add nsw i32 %372, 1
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds i32, i32* %223, i64 %374
  %376 = load i32, i32* %375, align 4
  %377 = load i32, i32* %41, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds i32, i32* %223, i64 %378
  store i32 %376, i32* %379, align 4
  br label %380

380:                                              ; preds = %363
  %381 = load i32, i32* %41, align 4
  %382 = add nsw i32 %381, 1
  store i32 %382, i32* %41, align 4
  br label %358

383:                                              ; preds = %358
  %384 = load i32, i32* %34, align 4
  %385 = add nsw i32 %384, -1
  store i32 %385, i32* %34, align 4
  %386 = load i32, i32* %34, align 4
  %387 = icmp sgt i32 %386, 0
  br i1 %387, label %388, label %407

388:                                              ; preds = %383
  %389 = load i32, i32* %32, align 4
  %390 = load i32, i32* %34, align 4
  %391 = icmp eq i32 %389, %390
  br i1 %391, label %392, label %407

392:                                              ; preds = %388
  %393 = load i32, i32* %33, align 4
  %394 = icmp sgt i32 %393, 0
  br i1 %394, label %395, label %407

395:                                              ; preds = %392
  %396 = load i32, i32* %31, align 4
  %397 = load i32, i32* %30, align 4
  %398 = icmp eq i32 %396, %397
  br i1 %398, label %399, label %407

399:                                              ; preds = %395
  %400 = load i32, i32* %34, align 4
  %401 = sub nsw i32 %400, 1
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds i32, i32* %223, i64 %402
  %404 = load i32, i32* %403, align 4
  store i32 %404, i32* %30, align 4
  %405 = load i32, i32* %34, align 4
  %406 = call i32 @COLLECT_CPS(i32 %405)
  br label %407

407:                                              ; preds = %399, %395, %392, %388, %383
  store i32 0, i32* %32, align 4
  br label %339

408:                                              ; preds = %339
  %409 = call i32 (...) @WRITE_UC()
  store i32 0, i32* %32, align 4
  br label %410

410:                                              ; preds = %422, %408
  %411 = load i32, i32* %32, align 4
  %412 = load i32, i32* %34, align 4
  %413 = icmp slt i32 %411, %412
  br i1 %413, label %414, label %425

414:                                              ; preds = %410
  %415 = load i8*, i8** %11, align 8
  %416 = load i8*, i8** %12, align 8
  %417 = load i32, i32* %32, align 4
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds i32, i32* %220, i64 %418
  %420 = load i32, i32* %419, align 4
  %421 = call i32 @UNPARSE(i8* %415, i8* %416, i32 %420)
  br label %422

422:                                              ; preds = %414
  %423 = load i32, i32* %32, align 4
  %424 = add nsw i32 %423, 1
  store i32 %424, i32* %32, align 4
  br label %410

425:                                              ; preds = %410
  %426 = load i32, i32* %33, align 4
  %427 = icmp sgt i32 %426, 0
  br i1 %427, label %428, label %467

428:                                              ; preds = %425
  %429 = load i32, i32* %31, align 4
  %430 = load i32, i32* %30, align 4
  %431 = icmp eq i32 %429, %430
  br i1 %431, label %432, label %467

432:                                              ; preds = %428
  %433 = load i64, i64* %8, align 8
  %434 = icmp ugt i64 %433, 0
  br i1 %434, label %435, label %467

435:                                              ; preds = %432
  br label %436

436:                                              ; preds = %451, %435
  %437 = load i32 (i32*, i8*, i64)*, i32 (i32*, i8*, i64)** %23, align 8
  %438 = getelementptr inbounds i32, i32* %220, i64 0
  %439 = load i8*, i8** %10, align 8
  %440 = load i64, i64* %8, align 8
  %441 = call i32 %437(i32* %438, i8* %439, i64 %440)
  store i32 %441, i32* %33, align 4
  %442 = icmp sgt i32 %441, 0
  br i1 %442, label %443, label %466

443:                                              ; preds = %436
  %444 = getelementptr inbounds i32, i32* %220, i64 0
  %445 = load i32, i32* %444, align 16
  %446 = call i32 @CCC(i32 %445)
  store i32 %446, i32* %31, align 4
  %447 = load i32, i32* %30, align 4
  %448 = load i32, i32* %31, align 4
  %449 = icmp sgt i32 %447, %448
  br i1 %449, label %450, label %451

450:                                              ; preds = %443
  br label %466

451:                                              ; preds = %443
  %452 = load i32, i32* %33, align 4
  %453 = load i8*, i8** %10, align 8
  %454 = sext i32 %452 to i64
  %455 = getelementptr inbounds i8, i8* %453, i64 %454
  store i8* %455, i8** %10, align 8
  %456 = load i32, i32* %33, align 4
  %457 = sext i32 %456 to i64
  %458 = load i64, i64* %8, align 8
  %459 = sub i64 %458, %457
  store i64 %459, i64* %8, align 8
  %460 = load i32, i32* %31, align 4
  store i32 %460, i32* %30, align 4
  %461 = load i8*, i8** %11, align 8
  %462 = load i8*, i8** %12, align 8
  %463 = getelementptr inbounds i32, i32* %220, i64 0
  %464 = load i32, i32* %463, align 16
  %465 = call i32 @UNPARSE(i8* %461, i8* %462, i32 %464)
  br label %436

466:                                              ; preds = %450, %436
  br label %467

467:                                              ; preds = %466, %432, %428, %425
  store i32 5, i32* %38, align 4
  br label %468

468:                                              ; preds = %467, %327, %320, %314, %281, %245
  %469 = load i8*, i8** %27, align 8
  call void @llvm.stackrestore(i8* %469)
  %470 = load i32, i32* %38, align 4
  switch i32 %470, label %529 [
    i32 4, label %210
    i32 5, label %471
  ]

471:                                              ; preds = %468, %210
  %472 = load i32, i32* %18, align 4
  %473 = icmp slt i32 %472, 0
  br i1 %473, label %474, label %490

474:                                              ; preds = %471
  %475 = call i32 (...) @WRITE_UC()
  %476 = load i8*, i8** %11, align 8
  %477 = load i8*, i8** %12, align 8
  %478 = load i32, i32* %14, align 4
  %479 = call i32 @UNPARSE(i8* %476, i8* %477, i32 %478)
  %480 = load i32, i32* %18, align 4
  %481 = mul nsw i32 %480, -1
  %482 = load i8*, i8** %10, align 8
  %483 = sext i32 %481 to i64
  %484 = getelementptr inbounds i8, i8* %482, i64 %483
  store i8* %484, i8** %10, align 8
  %485 = load i32, i32* %18, align 4
  %486 = mul nsw i32 %485, -1
  %487 = sext i32 %486 to i64
  %488 = load i64, i64* %8, align 8
  %489 = sub i64 %488, %487
  store i64 %489, i64* %8, align 8
  store i32 -1, i32* %19, align 4
  br label %166

490:                                              ; preds = %471
  %491 = load i32, i32* %18, align 4
  %492 = icmp eq i32 %491, 0
  br i1 %492, label %493, label %495

493:                                              ; preds = %490
  %494 = call i32 (...) @WRITE_UC()
  br label %497

495:                                              ; preds = %490
  br label %496

496:                                              ; preds = %495
  br label %166

497:                                              ; preds = %493, %166
  %498 = load i8*, i8** %11, align 8
  %499 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %500 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %499, i32 0, i32 1
  %501 = load i8*, i8** %500, align 8
  %502 = ptrtoint i8* %498 to i64
  %503 = ptrtoint i8* %501 to i64
  %504 = sub i64 %502, %503
  %505 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %506 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %505, i32 0, i32 0
  store i64 %504, i64* %506, align 8
  %507 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %508 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %507, i32 0, i32 1
  %509 = load i8*, i8** %508, align 8
  %510 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %511 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %510, i32 0, i32 0
  %512 = load i64, i64* %511, align 8
  %513 = getelementptr inbounds i8, i8* %509, i64 %512
  store i8 0, i8* %513, align 1
  %514 = load i32, i32* %21, align 4
  %515 = icmp eq i32 %514, 2
  br i1 %515, label %516, label %525

516:                                              ; preds = %497
  %517 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %518 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %517, i32 0, i32 1
  %519 = load i8*, i8** %518, align 8
  %520 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %521 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %520, i32 0, i32 0
  %522 = load i64, i64* %521, align 8
  %523 = add i64 %522, 1
  %524 = getelementptr inbounds i8, i8* %519, i64 %523
  store i8 0, i8* %524, align 1
  br label %525

525:                                              ; preds = %516, %497
  %526 = load i32, i32* %19, align 4
  store i32 %526, i32* %5, align 4
  br label %527

527:                                              ; preds = %525, %145
  %528 = load i32, i32* %5, align 4
  ret i32 %528

529:                                              ; preds = %468
  unreachable
}

declare dso_local i64 @unicode_to_utf16be(i8*, i64, i32) #1

declare dso_local i64 @unicode_to_utf16le(i8*, i64, i32) #1

declare dso_local i64 @unicode_to_utf8(i8*, i64, i32) #1

declare dso_local i32 @utf16be_to_unicode(i32*, i8*, i64) #1

declare dso_local i32 @utf16le_to_unicode(i32*, i8*, i64) #1

declare dso_local i32 @cesu8_to_unicode(i32*, i8*, i64) #1

declare dso_local i32* @archive_string_ensure(%struct.archive_string*, i64) #1

declare dso_local i32 @UNPARSE(i8*, i8*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @IS_DECOMPOSABLE_BLOCK(i32) #1

declare dso_local i32 @WRITE_UC(...) #1

declare dso_local i32 @REPLACE_UC_WITH_UC2(...) #1

declare dso_local i32 @UPDATE_UC(i32) #1

declare dso_local i32 @get_nfc(i32, i32) #1

declare dso_local i32 @CCC(i32) #1

declare dso_local i32 @COLLECT_CPS(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
