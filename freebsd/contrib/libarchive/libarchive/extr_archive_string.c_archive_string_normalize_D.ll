; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_string.c_archive_string_normalize_D.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_string.c_archive_string_normalize_D.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_string = type { i64, i8*, i32 }
%struct.archive_string_conv = type { i32 }
%struct.anon = type { i32, i32 }

@SCONV_TO_UTF16BE = common dso_local global i32 0, align 4
@SCONV_FROM_UTF16BE = common dso_local global i32 0, align 4
@SCONV_TO_UTF16LE = common dso_local global i32 0, align 4
@SCONV_FROM_UTF16LE = common dso_local global i32 0, align 4
@SCONV_TO_UTF8 = common dso_local global i32 0, align 4
@SCONV_FROM_UTF8 = common dso_local global i32 0, align 4
@FDC_MAX = common dso_local global i32 0, align 4
@HC_SBASE = common dso_local global i32 0, align 4
@HC_SCOUNT = common dso_local global i32 0, align 4
@HC_LBASE = common dso_local global i32 0, align 4
@HC_NCOUNT = common dso_local global i32 0, align 4
@HC_VBASE = common dso_local global i32 0, align 4
@HC_TCOUNT = common dso_local global i32 0, align 4
@HC_TBASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_string*, i8*, i64, %struct.archive_string_conv*)* @archive_string_normalize_D to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_string_normalize_D(%struct.archive_string* %0, i8* %1, i64 %2, %struct.archive_string_conv* %3) #0 {
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
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i8*, align 8
  %30 = alloca i64, align 8
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
  store %struct.archive_string* %0, %struct.archive_string** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.archive_string_conv* %3, %struct.archive_string_conv** %9, align 8
  %41 = load i8*, i8** %7, align 8
  store i8* %41, i8** %10, align 8
  store i32 0, i32* %19, align 4
  store i32 1, i32* %16, align 4
  store i32 1, i32* %21, align 4
  %42 = load %struct.archive_string_conv*, %struct.archive_string_conv** %9, align 8
  %43 = getelementptr inbounds %struct.archive_string_conv, %struct.archive_string_conv* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @SCONV_TO_UTF16BE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %4
  store i64 (i8*, i64, i32)* @unicode_to_utf16be, i64 (i8*, i64, i32)** %24, align 8
  store i32 2, i32* %21, align 4
  %49 = load %struct.archive_string_conv*, %struct.archive_string_conv** %9, align 8
  %50 = getelementptr inbounds %struct.archive_string_conv, %struct.archive_string_conv* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @SCONV_FROM_UTF16BE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  store i32 0, i32* %16, align 4
  br label %56

56:                                               ; preds = %55, %48
  br label %110

57:                                               ; preds = %4
  %58 = load %struct.archive_string_conv*, %struct.archive_string_conv** %9, align 8
  %59 = getelementptr inbounds %struct.archive_string_conv, %struct.archive_string_conv* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @SCONV_TO_UTF16LE, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %57
  store i64 (i8*, i64, i32)* @unicode_to_utf16le, i64 (i8*, i64, i32)** %24, align 8
  store i32 2, i32* %21, align 4
  %65 = load %struct.archive_string_conv*, %struct.archive_string_conv** %9, align 8
  %66 = getelementptr inbounds %struct.archive_string_conv, %struct.archive_string_conv* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @SCONV_FROM_UTF16LE, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  store i32 0, i32* %16, align 4
  br label %72

72:                                               ; preds = %71, %64
  br label %109

73:                                               ; preds = %57
  %74 = load %struct.archive_string_conv*, %struct.archive_string_conv** %9, align 8
  %75 = getelementptr inbounds %struct.archive_string_conv, %struct.archive_string_conv* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @SCONV_TO_UTF8, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %73
  store i64 (i8*, i64, i32)* @unicode_to_utf8, i64 (i8*, i64, i32)** %24, align 8
  %81 = load %struct.archive_string_conv*, %struct.archive_string_conv** %9, align 8
  %82 = getelementptr inbounds %struct.archive_string_conv, %struct.archive_string_conv* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @SCONV_FROM_UTF8, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  store i32 0, i32* %16, align 4
  br label %88

88:                                               ; preds = %87, %80
  br label %108

89:                                               ; preds = %73
  store i32 0, i32* %16, align 4
  %90 = load %struct.archive_string_conv*, %struct.archive_string_conv** %9, align 8
  %91 = getelementptr inbounds %struct.archive_string_conv, %struct.archive_string_conv* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @SCONV_FROM_UTF16BE, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %89
  store i64 (i8*, i64, i32)* @unicode_to_utf16be, i64 (i8*, i64, i32)** %24, align 8
  store i32 2, i32* %21, align 4
  br label %107

97:                                               ; preds = %89
  %98 = load %struct.archive_string_conv*, %struct.archive_string_conv** %9, align 8
  %99 = getelementptr inbounds %struct.archive_string_conv, %struct.archive_string_conv* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @SCONV_FROM_UTF16LE, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %97
  store i64 (i8*, i64, i32)* @unicode_to_utf16le, i64 (i8*, i64, i32)** %24, align 8
  store i32 2, i32* %21, align 4
  br label %106

105:                                              ; preds = %97
  store i64 (i8*, i64, i32)* @unicode_to_utf8, i64 (i8*, i64, i32)** %24, align 8
  br label %106

106:                                              ; preds = %105, %104
  br label %107

107:                                              ; preds = %106, %96
  br label %108

108:                                              ; preds = %107, %88
  br label %109

109:                                              ; preds = %108, %72
  br label %110

110:                                              ; preds = %109, %56
  %111 = load %struct.archive_string_conv*, %struct.archive_string_conv** %9, align 8
  %112 = getelementptr inbounds %struct.archive_string_conv, %struct.archive_string_conv* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @SCONV_FROM_UTF16BE, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %110
  store i32 (i32*, i8*, i64)* @utf16be_to_unicode, i32 (i32*, i8*, i64)** %23, align 8
  store i32 1, i32* %22, align 4
  store i32 4, i32* %20, align 4
  br label %129

118:                                              ; preds = %110
  %119 = load %struct.archive_string_conv*, %struct.archive_string_conv** %9, align 8
  %120 = getelementptr inbounds %struct.archive_string_conv, %struct.archive_string_conv* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @SCONV_FROM_UTF16LE, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %118
  store i32 (i32*, i8*, i64)* @utf16le_to_unicode, i32 (i32*, i8*, i64)** %23, align 8
  store i32 1, i32* %22, align 4
  store i32 4, i32* %20, align 4
  br label %128

126:                                              ; preds = %118
  store i32 (i32*, i8*, i64)* @cesu8_to_unicode, i32 (i32*, i8*, i64)** %23, align 8
  %127 = load i32, i32* %21, align 4
  store i32 %127, i32* %22, align 4
  store i32 6, i32* %20, align 4
  br label %128

128:                                              ; preds = %126, %125
  br label %129

129:                                              ; preds = %128, %117
  %130 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %131 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %132 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* %8, align 8
  %135 = load i32, i32* %22, align 4
  %136 = sext i32 %135 to i64
  %137 = mul i64 %134, %136
  %138 = add i64 %133, %137
  %139 = load i32, i32* %21, align 4
  %140 = sext i32 %139 to i64
  %141 = add i64 %138, %140
  %142 = call i32* @archive_string_ensure(%struct.archive_string* %130, i64 %141)
  %143 = icmp eq i32* %142, null
  br i1 %143, label %144, label %145

144:                                              ; preds = %129
  store i32 -1, i32* %5, align 4
  br label %456

145:                                              ; preds = %129
  %146 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %147 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %146, i32 0, i32 1
  %148 = load i8*, i8** %147, align 8
  %149 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %150 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = getelementptr inbounds i8, i8* %148, i64 %151
  store i8* %152, i8** %11, align 8
  %153 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %154 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %153, i32 0, i32 1
  %155 = load i8*, i8** %154, align 8
  %156 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %157 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8, i8* %155, i64 %159
  %161 = load i32, i32* %21, align 4
  %162 = sext i32 %161 to i64
  %163 = sub i64 0, %162
  %164 = getelementptr inbounds i8, i8* %160, i64 %163
  store i8* %164, i8** %12, align 8
  br label %165

165:                                              ; preds = %423, %145
  %166 = load i32 (i32*, i8*, i64)*, i32 (i32*, i8*, i64)** %23, align 8
  %167 = load i8*, i8** %10, align 8
  %168 = load i64, i64* %8, align 8
  %169 = call i32 %166(i32* %13, i8* %167, i64 %168)
  store i32 %169, i32* %17, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %426

171:                                              ; preds = %165
  %172 = load i32, i32* @FDC_MAX, align 4
  %173 = zext i32 %172 to i64
  %174 = call i8* @llvm.stacksave()
  store i8* %174, i8** %29, align 8
  %175 = alloca %struct.anon, i64 %173, align 16
  store i64 %173, i64* %30, align 8
  br label %176

176:                                              ; preds = %419, %171
  %177 = load i32, i32* %17, align 4
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %179, label %194

179:                                              ; preds = %176
  %180 = load i8*, i8** %11, align 8
  %181 = load i8*, i8** %12, align 8
  %182 = load i32, i32* %13, align 4
  %183 = call i32 @UNPARSE(i8* %180, i8* %181, i32 %182)
  %184 = load i32, i32* %17, align 4
  %185 = mul nsw i32 %184, -1
  %186 = load i8*, i8** %10, align 8
  %187 = sext i32 %185 to i64
  %188 = getelementptr inbounds i8, i8* %186, i64 %187
  store i8* %188, i8** %10, align 8
  %189 = load i32, i32* %17, align 4
  %190 = mul nsw i32 %189, -1
  %191 = sext i32 %190 to i64
  %192 = load i64, i64* %8, align 8
  %193 = sub i64 %192, %191
  store i64 %193, i64* %8, align 8
  store i32 -1, i32* %19, align 4
  store i32 2, i32* %34, align 4
  br label %423

194:                                              ; preds = %176
  %195 = load i32, i32* %17, align 4
  %196 = load i32, i32* %20, align 4
  %197 = icmp eq i32 %195, %196
  br i1 %197, label %201, label %198

198:                                              ; preds = %194
  %199 = load i32, i32* %16, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %198, %194
  store i8* null, i8** %25, align 8
  br label %204

202:                                              ; preds = %198
  %203 = load i8*, i8** %10, align 8
  store i8* %203, i8** %25, align 8
  br label %204

204:                                              ; preds = %202, %201
  br label %205

205:                                              ; preds = %204
  %206 = load i32, i32* %17, align 4
  %207 = load i8*, i8** %10, align 8
  %208 = sext i32 %206 to i64
  %209 = getelementptr inbounds i8, i8* %207, i64 %208
  store i8* %209, i8** %10, align 8
  %210 = load i32, i32* %17, align 4
  %211 = sext i32 %210 to i64
  %212 = load i64, i64* %8, align 8
  %213 = sub i64 %212, %211
  store i64 %213, i64* %8, align 8
  %214 = load i32, i32* %13, align 4
  %215 = load i32, i32* @HC_SBASE, align 4
  %216 = sub nsw i32 %214, %215
  store i32 %216, i32* %28, align 4
  %217 = icmp sge i32 %216, 0
  br i1 %217, label %218, label %254

218:                                              ; preds = %205
  %219 = load i32, i32* %28, align 4
  %220 = load i32, i32* @HC_SCOUNT, align 4
  %221 = icmp slt i32 %219, %220
  br i1 %221, label %222, label %254

222:                                              ; preds = %218
  %223 = load i32, i32* @HC_LBASE, align 4
  %224 = load i32, i32* %28, align 4
  %225 = load i32, i32* @HC_NCOUNT, align 4
  %226 = sdiv i32 %224, %225
  %227 = add nsw i32 %223, %226
  store i32 %227, i32* %35, align 4
  %228 = load i32, i32* @HC_VBASE, align 4
  %229 = load i32, i32* %28, align 4
  %230 = load i32, i32* @HC_NCOUNT, align 4
  %231 = srem i32 %229, %230
  %232 = load i32, i32* @HC_TCOUNT, align 4
  %233 = sdiv i32 %231, %232
  %234 = add nsw i32 %228, %233
  store i32 %234, i32* %36, align 4
  %235 = load i32, i32* @HC_TBASE, align 4
  %236 = load i32, i32* %28, align 4
  %237 = load i32, i32* @HC_TCOUNT, align 4
  %238 = srem i32 %236, %237
  %239 = add nsw i32 %235, %238
  store i32 %239, i32* %37, align 4
  %240 = load i32, i32* %35, align 4
  %241 = call i32 @REPLACE_UC_WITH(i32 %240)
  %242 = call i32 (...) @WRITE_UC()
  %243 = load i32, i32* %36, align 4
  %244 = call i32 @REPLACE_UC_WITH(i32 %243)
  %245 = call i32 (...) @WRITE_UC()
  %246 = load i32, i32* %37, align 4
  %247 = load i32, i32* @HC_TBASE, align 4
  %248 = icmp ne i32 %246, %247
  br i1 %248, label %249, label %253

249:                                              ; preds = %222
  %250 = load i32, i32* %37, align 4
  %251 = call i32 @REPLACE_UC_WITH(i32 %250)
  %252 = call i32 (...) @WRITE_UC()
  br label %253

253:                                              ; preds = %249, %222
  store i32 2, i32* %34, align 4
  br label %423

254:                                              ; preds = %218, %205
  %255 = load i32, i32* %13, align 4
  %256 = call i64 @IS_DECOMPOSABLE_BLOCK(i32 %255)
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %264

258:                                              ; preds = %254
  %259 = load i32, i32* %13, align 4
  %260 = call i8* @CCC(i32 %259)
  %261 = icmp ne i8* %260, null
  br i1 %261, label %262, label %264

262:                                              ; preds = %258
  %263 = call i32 (...) @WRITE_UC()
  store i32 2, i32* %34, align 4
  br label %423

264:                                              ; preds = %258, %254
  store i32 0, i32* %31, align 4
  br label %265

265:                                              ; preds = %293, %264
  %266 = load i32, i32* %13, align 4
  %267 = call i64 @get_nfd(i32* %26, i32* %27, i32 %266)
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %273

269:                                              ; preds = %265
  %270 = load i32, i32* %31, align 4
  %271 = load i32, i32* @FDC_MAX, align 4
  %272 = icmp slt i32 %270, %271
  br label %273

273:                                              ; preds = %269, %265
  %274 = phi i1 [ false, %265 ], [ %272, %269 ]
  br i1 %274, label %275, label %306

275:                                              ; preds = %273
  %276 = load i32, i32* %31, align 4
  store i32 %276, i32* %38, align 4
  br label %277

277:                                              ; preds = %290, %275
  %278 = load i32, i32* %38, align 4
  %279 = icmp sgt i32 %278, 0
  br i1 %279, label %280, label %293

280:                                              ; preds = %277
  %281 = load i32, i32* %38, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds %struct.anon, %struct.anon* %175, i64 %282
  %284 = load i32, i32* %38, align 4
  %285 = sub nsw i32 %284, 1
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.anon, %struct.anon* %175, i64 %286
  %288 = bitcast %struct.anon* %283 to i8*
  %289 = bitcast %struct.anon* %287 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %288, i8* align 8 %289, i64 8, i1 false)
  br label %290

290:                                              ; preds = %280
  %291 = load i32, i32* %38, align 4
  %292 = add nsw i32 %291, -1
  store i32 %292, i32* %38, align 4
  br label %277

293:                                              ; preds = %277
  %294 = load i32, i32* %27, align 4
  %295 = call i8* @CCC(i32 %294)
  %296 = ptrtoint i8* %295 to i32
  %297 = getelementptr inbounds %struct.anon, %struct.anon* %175, i64 0
  %298 = getelementptr inbounds %struct.anon, %struct.anon* %297, i32 0, i32 1
  store i32 %296, i32* %298, align 4
  %299 = load i32, i32* %27, align 4
  %300 = getelementptr inbounds %struct.anon, %struct.anon* %175, i64 0
  %301 = getelementptr inbounds %struct.anon, %struct.anon* %300, i32 0, i32 0
  store i32 %299, i32* %301, align 16
  %302 = load i32, i32* %31, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %31, align 4
  %304 = load i32, i32* %26, align 4
  %305 = call i32 @REPLACE_UC_WITH(i32 %304)
  br label %265

306:                                              ; preds = %273
  br label %307

307:                                              ; preds = %395, %306
  %308 = load i32 (i32*, i8*, i64)*, i32 (i32*, i8*, i64)** %23, align 8
  %309 = load i8*, i8** %10, align 8
  %310 = load i64, i64* %8, align 8
  %311 = call i32 %308(i32* %14, i8* %309, i64 %310)
  store i32 %311, i32* %18, align 4
  %312 = icmp sgt i32 %311, 0
  br i1 %312, label %313, label %322

313:                                              ; preds = %307
  %314 = load i32, i32* %14, align 4
  %315 = call i8* @CCC(i32 %314)
  %316 = ptrtoint i8* %315 to i32
  store i32 %316, i32* %33, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %322

318:                                              ; preds = %313
  %319 = load i32, i32* %31, align 4
  %320 = load i32, i32* @FDC_MAX, align 4
  %321 = icmp slt i32 %319, %320
  br label %322

322:                                              ; preds = %318, %313, %307
  %323 = phi i1 [ false, %313 ], [ false, %307 ], [ %321, %318 ]
  br i1 %323, label %324, label %398

324:                                              ; preds = %322
  %325 = load i32, i32* %18, align 4
  %326 = load i8*, i8** %10, align 8
  %327 = sext i32 %325 to i64
  %328 = getelementptr inbounds i8, i8* %326, i64 %327
  store i8* %328, i8** %10, align 8
  %329 = load i32, i32* %18, align 4
  %330 = sext i32 %329 to i64
  %331 = load i64, i64* %8, align 8
  %332 = sub i64 %331, %330
  store i64 %332, i64* %8, align 8
  store i32 0, i32* %39, align 4
  br label %333

333:                                              ; preds = %347, %324
  %334 = load i32, i32* %39, align 4
  %335 = load i32, i32* %31, align 4
  %336 = icmp slt i32 %334, %335
  br i1 %336, label %337, label %350

337:                                              ; preds = %333
  %338 = load i32, i32* %39, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds %struct.anon, %struct.anon* %175, i64 %339
  %341 = getelementptr inbounds %struct.anon, %struct.anon* %340, i32 0, i32 1
  %342 = load i32, i32* %341, align 4
  %343 = load i32, i32* %33, align 4
  %344 = icmp sgt i32 %342, %343
  br i1 %344, label %345, label %346

345:                                              ; preds = %337
  br label %350

346:                                              ; preds = %337
  br label %347

347:                                              ; preds = %346
  %348 = load i32, i32* %39, align 4
  %349 = add nsw i32 %348, 1
  store i32 %349, i32* %39, align 4
  br label %333

350:                                              ; preds = %345, %333
  %351 = load i32, i32* %39, align 4
  %352 = load i32, i32* %31, align 4
  %353 = icmp slt i32 %351, %352
  br i1 %353, label %354, label %384

354:                                              ; preds = %350
  %355 = load i32, i32* %31, align 4
  store i32 %355, i32* %40, align 4
  br label %356

356:                                              ; preds = %370, %354
  %357 = load i32, i32* %40, align 4
  %358 = load i32, i32* %39, align 4
  %359 = icmp sgt i32 %357, %358
  br i1 %359, label %360, label %373

360:                                              ; preds = %356
  %361 = load i32, i32* %40, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds %struct.anon, %struct.anon* %175, i64 %362
  %364 = load i32, i32* %40, align 4
  %365 = sub nsw i32 %364, 1
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds %struct.anon, %struct.anon* %175, i64 %366
  %368 = bitcast %struct.anon* %363 to i8*
  %369 = bitcast %struct.anon* %367 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %368, i8* align 8 %369, i64 8, i1 false)
  br label %370

370:                                              ; preds = %360
  %371 = load i32, i32* %40, align 4
  %372 = add nsw i32 %371, -1
  store i32 %372, i32* %40, align 4
  br label %356

373:                                              ; preds = %356
  %374 = load i32, i32* %33, align 4
  %375 = load i32, i32* %39, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds %struct.anon, %struct.anon* %175, i64 %376
  %378 = getelementptr inbounds %struct.anon, %struct.anon* %377, i32 0, i32 1
  store i32 %374, i32* %378, align 4
  %379 = load i32, i32* %14, align 4
  %380 = load i32, i32* %39, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds %struct.anon, %struct.anon* %175, i64 %381
  %383 = getelementptr inbounds %struct.anon, %struct.anon* %382, i32 0, i32 0
  store i32 %379, i32* %383, align 8
  br label %395

384:                                              ; preds = %350
  %385 = load i32, i32* %33, align 4
  %386 = load i32, i32* %31, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds %struct.anon, %struct.anon* %175, i64 %387
  %389 = getelementptr inbounds %struct.anon, %struct.anon* %388, i32 0, i32 1
  store i32 %385, i32* %389, align 4
  %390 = load i32, i32* %14, align 4
  %391 = load i32, i32* %31, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds %struct.anon, %struct.anon* %175, i64 %392
  %394 = getelementptr inbounds %struct.anon, %struct.anon* %393, i32 0, i32 0
  store i32 %390, i32* %394, align 8
  br label %395

395:                                              ; preds = %384, %373
  %396 = load i32, i32* %31, align 4
  %397 = add nsw i32 %396, 1
  store i32 %397, i32* %31, align 4
  br label %307

398:                                              ; preds = %322
  %399 = call i32 (...) @WRITE_UC()
  store i32 0, i32* %32, align 4
  br label %400

400:                                              ; preds = %412, %398
  %401 = load i32, i32* %32, align 4
  %402 = load i32, i32* %31, align 4
  %403 = icmp slt i32 %401, %402
  br i1 %403, label %404, label %415

404:                                              ; preds = %400
  %405 = load i32, i32* %32, align 4
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds %struct.anon, %struct.anon* %175, i64 %406
  %408 = getelementptr inbounds %struct.anon, %struct.anon* %407, i32 0, i32 0
  %409 = load i32, i32* %408, align 8
  %410 = call i32 @REPLACE_UC_WITH(i32 %409)
  %411 = call i32 (...) @WRITE_UC()
  br label %412

412:                                              ; preds = %404
  %413 = load i32, i32* %32, align 4
  %414 = add nsw i32 %413, 1
  store i32 %414, i32* %32, align 4
  br label %400

415:                                              ; preds = %400
  %416 = load i32, i32* %18, align 4
  %417 = icmp eq i32 %416, 0
  br i1 %417, label %418, label %419

418:                                              ; preds = %415
  store i32 3, i32* %34, align 4
  br label %423

419:                                              ; preds = %415
  %420 = load i32, i32* %14, align 4
  %421 = call i32 @REPLACE_UC_WITH(i32 %420)
  %422 = load i32, i32* %18, align 4
  store i32 %422, i32* %17, align 4
  br label %176

423:                                              ; preds = %418, %262, %253, %179
  %424 = load i8*, i8** %29, align 8
  call void @llvm.stackrestore(i8* %424)
  %425 = load i32, i32* %34, align 4
  switch i32 %425, label %458 [
    i32 2, label %165
    i32 3, label %426
  ]

426:                                              ; preds = %423, %165
  %427 = load i8*, i8** %11, align 8
  %428 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %429 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %428, i32 0, i32 1
  %430 = load i8*, i8** %429, align 8
  %431 = ptrtoint i8* %427 to i64
  %432 = ptrtoint i8* %430 to i64
  %433 = sub i64 %431, %432
  %434 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %435 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %434, i32 0, i32 0
  store i64 %433, i64* %435, align 8
  %436 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %437 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %436, i32 0, i32 1
  %438 = load i8*, i8** %437, align 8
  %439 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %440 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %439, i32 0, i32 0
  %441 = load i64, i64* %440, align 8
  %442 = getelementptr inbounds i8, i8* %438, i64 %441
  store i8 0, i8* %442, align 1
  %443 = load i32, i32* %21, align 4
  %444 = icmp eq i32 %443, 2
  br i1 %444, label %445, label %454

445:                                              ; preds = %426
  %446 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %447 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %446, i32 0, i32 1
  %448 = load i8*, i8** %447, align 8
  %449 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %450 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %449, i32 0, i32 0
  %451 = load i64, i64* %450, align 8
  %452 = add i64 %451, 1
  %453 = getelementptr inbounds i8, i8* %448, i64 %452
  store i8 0, i8* %453, align 1
  br label %454

454:                                              ; preds = %445, %426
  %455 = load i32, i32* %19, align 4
  store i32 %455, i32* %5, align 4
  br label %456

456:                                              ; preds = %454, %144
  %457 = load i32, i32* %5, align 4
  ret i32 %457

458:                                              ; preds = %423
  unreachable
}

declare dso_local i64 @unicode_to_utf16be(i8*, i64, i32) #1

declare dso_local i64 @unicode_to_utf16le(i8*, i64, i32) #1

declare dso_local i64 @unicode_to_utf8(i8*, i64, i32) #1

declare dso_local i32 @utf16be_to_unicode(i32*, i8*, i64) #1

declare dso_local i32 @utf16le_to_unicode(i32*, i8*, i64) #1

declare dso_local i32 @cesu8_to_unicode(i32*, i8*, i64) #1

declare dso_local i32* @archive_string_ensure(%struct.archive_string*, i64) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @UNPARSE(i8*, i8*, i32) #1

declare dso_local i32 @REPLACE_UC_WITH(i32) #1

declare dso_local i32 @WRITE_UC(...) #1

declare dso_local i64 @IS_DECOMPOSABLE_BLOCK(i32) #1

declare dso_local i8* @CCC(i32) #1

declare dso_local i64 @get_nfd(i32*, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
