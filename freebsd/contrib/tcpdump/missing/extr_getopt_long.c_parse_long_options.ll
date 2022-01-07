; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/missing/extr_getopt_long.c_parse_long_options.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/missing/extr_getopt_long.c_parse_long_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i8*, i64, i64*, i64 }

@place = common dso_local global i8* null, align 8
@optind = common dso_local global i32 0, align 4
@FLAG_LONGONLY = common dso_local global i32 0, align 4
@PRINT_ERROR = common dso_local global i64 0, align 8
@ambig = common dso_local global i32 0, align 4
@optopt = common dso_local global i64 0, align 8
@BADCH = common dso_local global i32 0, align 4
@no_argument = common dso_local global i64 0, align 8
@noarg = common dso_local global i32 0, align 4
@BADARG = common dso_local global i32 0, align 4
@required_argument = common dso_local global i64 0, align 8
@optional_argument = common dso_local global i64 0, align 8
@optarg = common dso_local global i8* null, align 8
@recargstring = common dso_local global i32 0, align 4
@illoptstring = common dso_local global i32 0, align 4
@dash_prefix = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*, %struct.option*, i32*, i32, i32)* @parse_long_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_long_options(i8** %0, i8* %1, %struct.option* %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.option*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i8** %0, i8*** %8, align 8
  store i8* %1, i8** %9, align 8
  store %struct.option* %2, %struct.option** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %21 = load i8*, i8** @place, align 8
  store i8* %21, i8** %14, align 8
  store i32 -1, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %22 = load i32, i32* @optind, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* @optind, align 4
  %24 = load i8*, i8** %14, align 8
  %25 = call i8* @strchr(i8* %24, i8 signext 61)
  store i8* %25, i8** %15, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %6
  %28 = load i8*, i8** %15, align 8
  %29 = load i8*, i8** %14, align 8
  %30 = ptrtoint i8* %28 to i64
  %31 = ptrtoint i8* %29 to i64
  %32 = sub i64 %30, %31
  store i64 %32, i64* %16, align 8
  %33 = load i8*, i8** %15, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %15, align 8
  br label %38

35:                                               ; preds = %6
  %36 = load i8*, i8** %14, align 8
  %37 = call i64 @strlen(i8* %36)
  store i64 %37, i64* %16, align 8
  br label %38

38:                                               ; preds = %35, %27
  store i32 0, i32* %17, align 4
  br label %39

39:                                               ; preds = %133, %38
  %40 = load %struct.option*, %struct.option** %10, align 8
  %41 = load i32, i32* %17, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.option, %struct.option* %40, i64 %42
  %44 = getelementptr inbounds %struct.option, %struct.option* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %136

47:                                               ; preds = %39
  %48 = load i8*, i8** %14, align 8
  %49 = load %struct.option*, %struct.option** %10, align 8
  %50 = load i32, i32* %17, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.option, %struct.option* %49, i64 %51
  %53 = getelementptr inbounds %struct.option, %struct.option* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = load i64, i64* %16, align 8
  %56 = call i64 @strncmp(i8* %48, i8* %54, i64 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %47
  br label %133

59:                                               ; preds = %47
  %60 = load %struct.option*, %struct.option** %10, align 8
  %61 = load i32, i32* %17, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.option, %struct.option* %60, i64 %62
  %64 = getelementptr inbounds %struct.option, %struct.option* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i64 @strlen(i8* %65)
  %67 = load i64, i64* %16, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %59
  %70 = load i32, i32* %17, align 4
  store i32 %70, i32* %18, align 4
  store i32 1, i32* %19, align 4
  br label %136

71:                                               ; preds = %59
  %72 = load i32, i32* %12, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load i64, i64* %16, align 8
  %76 = icmp eq i64 %75, 1
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  br label %133

78:                                               ; preds = %74, %71
  %79 = load i32, i32* %18, align 4
  %80 = icmp eq i32 %79, -1
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = load i32, i32* %17, align 4
  store i32 %82, i32* %18, align 4
  br label %132

83:                                               ; preds = %78
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* @FLAG_LONGONLY, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %130, label %88

88:                                               ; preds = %83
  %89 = load %struct.option*, %struct.option** %10, align 8
  %90 = load i32, i32* %17, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.option, %struct.option* %89, i64 %91
  %93 = getelementptr inbounds %struct.option, %struct.option* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.option*, %struct.option** %10, align 8
  %96 = load i32, i32* %18, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.option, %struct.option* %95, i64 %97
  %99 = getelementptr inbounds %struct.option, %struct.option* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %94, %100
  br i1 %101, label %130, label %102

102:                                              ; preds = %88
  %103 = load %struct.option*, %struct.option** %10, align 8
  %104 = load i32, i32* %17, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.option, %struct.option* %103, i64 %105
  %107 = getelementptr inbounds %struct.option, %struct.option* %106, i32 0, i32 2
  %108 = load i64*, i64** %107, align 8
  %109 = load %struct.option*, %struct.option** %10, align 8
  %110 = load i32, i32* %18, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.option, %struct.option* %109, i64 %111
  %113 = getelementptr inbounds %struct.option, %struct.option* %112, i32 0, i32 2
  %114 = load i64*, i64** %113, align 8
  %115 = icmp ne i64* %108, %114
  br i1 %115, label %130, label %116

116:                                              ; preds = %102
  %117 = load %struct.option*, %struct.option** %10, align 8
  %118 = load i32, i32* %17, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.option, %struct.option* %117, i64 %119
  %121 = getelementptr inbounds %struct.option, %struct.option* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.option*, %struct.option** %10, align 8
  %124 = load i32, i32* %18, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.option, %struct.option* %123, i64 %125
  %127 = getelementptr inbounds %struct.option, %struct.option* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %122, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %116, %102, %88, %83
  store i32 1, i32* %20, align 4
  br label %131

131:                                              ; preds = %130, %116
  br label %132

132:                                              ; preds = %131, %81
  br label %133

133:                                              ; preds = %132, %77, %58
  %134 = load i32, i32* %17, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %17, align 4
  br label %39

136:                                              ; preds = %69, %39
  %137 = load i32, i32* %19, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %155, label %139

139:                                              ; preds = %136
  %140 = load i32, i32* %20, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %155

142:                                              ; preds = %139
  %143 = load i64, i64* @PRINT_ERROR, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %153

145:                                              ; preds = %142
  %146 = load i32, i32* @ambig, align 4
  %147 = load i64, i64* %16, align 8
  %148 = trunc i64 %147 to i32
  %149 = sext i32 %148 to i64
  %150 = inttoptr i64 %149 to i8*
  %151 = load i8*, i8** %14, align 8
  %152 = call i32 (i32, i8*, ...) @warnx(i32 %146, i8* %150, i8* %151)
  br label %153

153:                                              ; preds = %145, %142
  store i64 0, i64* @optopt, align 8
  %154 = load i32, i32* @BADCH, align 4
  store i32 %154, i32* %7, align 4
  br label %330

155:                                              ; preds = %139, %136
  %156 = load i32, i32* %18, align 4
  %157 = icmp ne i32 %156, -1
  br i1 %157, label %158, label %280

158:                                              ; preds = %155
  %159 = load %struct.option*, %struct.option** %10, align 8
  %160 = load i32, i32* %18, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.option, %struct.option* %159, i64 %161
  %163 = getelementptr inbounds %struct.option, %struct.option* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @no_argument, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %199

167:                                              ; preds = %158
  %168 = load i8*, i8** %15, align 8
  %169 = icmp ne i8* %168, null
  br i1 %169, label %170, label %199

170:                                              ; preds = %167
  %171 = load i64, i64* @PRINT_ERROR, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %181

173:                                              ; preds = %170
  %174 = load i32, i32* @noarg, align 4
  %175 = load i64, i64* %16, align 8
  %176 = trunc i64 %175 to i32
  %177 = sext i32 %176 to i64
  %178 = inttoptr i64 %177 to i8*
  %179 = load i8*, i8** %14, align 8
  %180 = call i32 (i32, i8*, ...) @warnx(i32 %174, i8* %178, i8* %179)
  br label %181

181:                                              ; preds = %173, %170
  %182 = load %struct.option*, %struct.option** %10, align 8
  %183 = load i32, i32* %18, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.option, %struct.option* %182, i64 %184
  %186 = getelementptr inbounds %struct.option, %struct.option* %185, i32 0, i32 2
  %187 = load i64*, i64** %186, align 8
  %188 = icmp eq i64* %187, null
  br i1 %188, label %189, label %196

189:                                              ; preds = %181
  %190 = load %struct.option*, %struct.option** %10, align 8
  %191 = load i32, i32* %18, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.option, %struct.option* %190, i64 %192
  %194 = getelementptr inbounds %struct.option, %struct.option* %193, i32 0, i32 3
  %195 = load i64, i64* %194, align 8
  store i64 %195, i64* @optopt, align 8
  br label %197

196:                                              ; preds = %181
  store i64 0, i64* @optopt, align 8
  br label %197

197:                                              ; preds = %196, %189
  %198 = load i32, i32* @BADARG, align 4
  store i32 %198, i32* %7, align 4
  br label %330

199:                                              ; preds = %167, %158
  %200 = load %struct.option*, %struct.option** %10, align 8
  %201 = load i32, i32* %18, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.option, %struct.option* %200, i64 %202
  %204 = getelementptr inbounds %struct.option, %struct.option* %203, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @required_argument, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %217, label %208

208:                                              ; preds = %199
  %209 = load %struct.option*, %struct.option** %10, align 8
  %210 = load i32, i32* %18, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.option, %struct.option* %209, i64 %211
  %213 = getelementptr inbounds %struct.option, %struct.option* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @optional_argument, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %217, label %240

217:                                              ; preds = %208, %199
  %218 = load i8*, i8** %15, align 8
  %219 = icmp ne i8* %218, null
  br i1 %219, label %220, label %222

220:                                              ; preds = %217
  %221 = load i8*, i8** %15, align 8
  store i8* %221, i8** @optarg, align 8
  br label %239

222:                                              ; preds = %217
  %223 = load %struct.option*, %struct.option** %10, align 8
  %224 = load i32, i32* %18, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.option, %struct.option* %223, i64 %225
  %227 = getelementptr inbounds %struct.option, %struct.option* %226, i32 0, i32 1
  %228 = load i64, i64* %227, align 8
  %229 = load i64, i64* @required_argument, align 8
  %230 = icmp eq i64 %228, %229
  br i1 %230, label %231, label %238

231:                                              ; preds = %222
  %232 = load i8**, i8*** %8, align 8
  %233 = load i32, i32* @optind, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* @optind, align 4
  %235 = sext i32 %233 to i64
  %236 = getelementptr inbounds i8*, i8** %232, i64 %235
  %237 = load i8*, i8** %236, align 8
  store i8* %237, i8** @optarg, align 8
  br label %238

238:                                              ; preds = %231, %222
  br label %239

239:                                              ; preds = %238, %220
  br label %240

240:                                              ; preds = %239, %208
  %241 = load %struct.option*, %struct.option** %10, align 8
  %242 = load i32, i32* %18, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.option, %struct.option* %241, i64 %243
  %245 = getelementptr inbounds %struct.option, %struct.option* %244, i32 0, i32 1
  %246 = load i64, i64* %245, align 8
  %247 = load i64, i64* @required_argument, align 8
  %248 = icmp eq i64 %246, %247
  br i1 %248, label %249, label %279

249:                                              ; preds = %240
  %250 = load i8*, i8** @optarg, align 8
  %251 = icmp eq i8* %250, null
  br i1 %251, label %252, label %279

252:                                              ; preds = %249
  %253 = load i64, i64* @PRINT_ERROR, align 8
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %259

255:                                              ; preds = %252
  %256 = load i32, i32* @recargstring, align 4
  %257 = load i8*, i8** %14, align 8
  %258 = call i32 (i32, i8*, ...) @warnx(i32 %256, i8* %257)
  br label %259

259:                                              ; preds = %255, %252
  %260 = load %struct.option*, %struct.option** %10, align 8
  %261 = load i32, i32* %18, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.option, %struct.option* %260, i64 %262
  %264 = getelementptr inbounds %struct.option, %struct.option* %263, i32 0, i32 2
  %265 = load i64*, i64** %264, align 8
  %266 = icmp eq i64* %265, null
  br i1 %266, label %267, label %274

267:                                              ; preds = %259
  %268 = load %struct.option*, %struct.option** %10, align 8
  %269 = load i32, i32* %18, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.option, %struct.option* %268, i64 %270
  %272 = getelementptr inbounds %struct.option, %struct.option* %271, i32 0, i32 3
  %273 = load i64, i64* %272, align 8
  store i64 %273, i64* @optopt, align 8
  br label %275

274:                                              ; preds = %259
  store i64 0, i64* @optopt, align 8
  br label %275

275:                                              ; preds = %274, %267
  %276 = load i32, i32* @optind, align 4
  %277 = add nsw i32 %276, -1
  store i32 %277, i32* @optind, align 4
  %278 = load i32, i32* @BADARG, align 4
  store i32 %278, i32* %7, align 4
  br label %330

279:                                              ; preds = %249, %240
  br label %295

280:                                              ; preds = %155
  %281 = load i32, i32* %12, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %286

283:                                              ; preds = %280
  %284 = load i32, i32* @optind, align 4
  %285 = add nsw i32 %284, -1
  store i32 %285, i32* @optind, align 4
  store i32 -1, i32* %7, align 4
  br label %330

286:                                              ; preds = %280
  %287 = load i64, i64* @PRINT_ERROR, align 8
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %293

289:                                              ; preds = %286
  %290 = load i32, i32* @illoptstring, align 4
  %291 = load i8*, i8** %14, align 8
  %292 = call i32 (i32, i8*, ...) @warnx(i32 %290, i8* %291)
  br label %293

293:                                              ; preds = %289, %286
  store i64 0, i64* @optopt, align 8
  %294 = load i32, i32* @BADCH, align 4
  store i32 %294, i32* %7, align 4
  br label %330

295:                                              ; preds = %279
  %296 = load i32*, i32** %11, align 8
  %297 = icmp ne i32* %296, null
  br i1 %297, label %298, label %301

298:                                              ; preds = %295
  %299 = load i32, i32* %18, align 4
  %300 = load i32*, i32** %11, align 8
  store i32 %299, i32* %300, align 4
  br label %301

301:                                              ; preds = %298, %295
  %302 = load %struct.option*, %struct.option** %10, align 8
  %303 = load i32, i32* %18, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds %struct.option, %struct.option* %302, i64 %304
  %306 = getelementptr inbounds %struct.option, %struct.option* %305, i32 0, i32 2
  %307 = load i64*, i64** %306, align 8
  %308 = icmp ne i64* %307, null
  br i1 %308, label %309, label %322

309:                                              ; preds = %301
  %310 = load %struct.option*, %struct.option** %10, align 8
  %311 = load i32, i32* %18, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds %struct.option, %struct.option* %310, i64 %312
  %314 = getelementptr inbounds %struct.option, %struct.option* %313, i32 0, i32 3
  %315 = load i64, i64* %314, align 8
  %316 = load %struct.option*, %struct.option** %10, align 8
  %317 = load i32, i32* %18, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds %struct.option, %struct.option* %316, i64 %318
  %320 = getelementptr inbounds %struct.option, %struct.option* %319, i32 0, i32 2
  %321 = load i64*, i64** %320, align 8
  store i64 %315, i64* %321, align 8
  store i32 0, i32* %7, align 4
  br label %330

322:                                              ; preds = %301
  %323 = load %struct.option*, %struct.option** %10, align 8
  %324 = load i32, i32* %18, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds %struct.option, %struct.option* %323, i64 %325
  %327 = getelementptr inbounds %struct.option, %struct.option* %326, i32 0, i32 3
  %328 = load i64, i64* %327, align 8
  %329 = trunc i64 %328 to i32
  store i32 %329, i32* %7, align 4
  br label %330

330:                                              ; preds = %322, %309, %293, %283, %275, %197, %153
  %331 = load i32, i32* %7, align 4
  ret i32 %331
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local i32 @warnx(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
