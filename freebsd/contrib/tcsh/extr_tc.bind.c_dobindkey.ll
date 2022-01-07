; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tc.bind.c_dobindkey.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tc.bind.c_dobindkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.command = type { i32 }
%struct.TYPE_12__ = type { i32*, i32 }

@MapsAreInited = common dso_local global i32 0, align 4
@CcKeyMap = common dso_local global i64* null, align 8
@CHAR = common dso_local global i8 0, align 1
@CcAltMap = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"Invalid key name `%S'\0A\00", align 1
@xfree = common dso_local global i32 0, align 4
@F_XKEY = common dso_local global i64 0, align 8
@F_UNASSIGNED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"Bad key name: %S\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dobindkey(i8** %0, %struct.command* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca %struct.command*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_12__, align 8
  %15 = alloca %struct.TYPE_12__, align 8
  %16 = alloca i64, align 8
  store i8** %0, i8*** %3, align 8
  store %struct.command* %1, %struct.command** %4, align 8
  %17 = load %struct.command*, %struct.command** %4, align 8
  %18 = call i32 @USE(%struct.command* %17)
  %19 = load i32, i32* @MapsAreInited, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %2
  %22 = call i32 (...) @ed_InitMaps()
  br label %23

23:                                               ; preds = %21, %2
  %24 = load i64*, i64** @CcKeyMap, align 8
  store i64* %24, i64** %5, align 8
  store i32 130, i32* %6, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 1, i32* %7, align 4
  %25 = load i8**, i8*** %3, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %25, i64 %27
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %11, align 8
  br label %30

30:                                               ; preds = %79, %23
  %31 = load i8*, i8** %11, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %42

33:                                               ; preds = %30
  %34 = load i8*, i8** %11, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %11, align 8
  %36 = load i8, i8* %34, align 1
  %37 = sext i8 %36 to i32
  %38 = load i8, i8* @CHAR, align 1
  %39 = sext i8 %38 to i32
  %40 = and i32 %37, %39
  %41 = icmp eq i32 %40, 45
  br label %42

42:                                               ; preds = %33, %30
  %43 = phi i1 [ false, %30 ], [ %41, %33 ]
  br i1 %43, label %44, label %87

44:                                               ; preds = %42
  %45 = load i8*, i8** %11, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = load i8, i8* @CHAR, align 1
  %49 = sext i8 %48 to i32
  %50 = and i32 %47, %49
  %51 = trunc i32 %50 to i8
  store i8 %51, i8* %12, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 45
  br i1 %53, label %54, label %57

54:                                               ; preds = %44
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %87

57:                                               ; preds = %44
  %58 = load i8, i8* %12, align 1
  %59 = sext i8 %58 to i32
  switch i32 %59, label %75 [
    i32 98, label %60
    i32 107, label %61
    i32 97, label %62
    i32 115, label %64
    i32 99, label %65
    i32 114, label %66
    i32 118, label %67
    i32 101, label %69
    i32 100, label %71
    i32 108, label %73
  ]

60:                                               ; preds = %57
  store i32 1, i32* %10, align 4
  br label %77

61:                                               ; preds = %57
  store i32 1, i32* %9, align 4
  br label %77

62:                                               ; preds = %57
  %63 = load i64*, i64** @CcAltMap, align 8
  store i64* %63, i64** %5, align 8
  br label %77

64:                                               ; preds = %57
  store i32 128, i32* %6, align 4
  br label %77

65:                                               ; preds = %57
  store i32 129, i32* %6, align 4
  br label %77

66:                                               ; preds = %57
  store i32 1, i32* %8, align 4
  br label %77

67:                                               ; preds = %57
  %68 = call i32 (...) @ed_InitVIMaps()
  br label %347

69:                                               ; preds = %57
  %70 = call i32 (...) @ed_InitEmacsMaps()
  br label %347

71:                                               ; preds = %57
  %72 = call i32 (...) @ed_InitEmacsMaps()
  br label %347

73:                                               ; preds = %57
  %74 = call i32 (...) @list_functions()
  br label %347

75:                                               ; preds = %57
  %76 = call i32 (...) @bindkey_usage()
  br label %347

77:                                               ; preds = %66, %65, %64, %62, %61, %60
  br label %78

78:                                               ; preds = %77
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %7, align 4
  %82 = load i8**, i8*** %3, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8*, i8** %82, i64 %84
  %86 = load i8*, i8** %85, align 8
  store i8* %86, i8** %11, align 8
  br label %30

87:                                               ; preds = %54, %42
  %88 = load i8**, i8*** %3, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8*, i8** %88, i64 %90
  %92 = load i8*, i8** %91, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %96, label %94

94:                                               ; preds = %87
  %95 = call i32 (...) @print_all_keys()
  br label %347

96:                                               ; preds = %87
  %97 = load i32, i32* %9, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %128

99:                                               ; preds = %96
  %100 = load i8**, i8*** %3, align 8
  %101 = load i32, i32* %7, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8*, i8** %100, i64 %102
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @IsArrowKey(i8* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %115, label %107

107:                                              ; preds = %99
  %108 = call i32 @CGETS(i32 20, i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %109 = load i8**, i8*** %3, align 8
  %110 = load i32, i32* %7, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8*, i8** %109, i64 %111
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 @xprintf(i32 %108, i8* %113)
  br label %115

115:                                              ; preds = %107, %99
  %116 = load i8**, i8*** %3, align 8
  %117 = load i32, i32* %7, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %7, align 4
  %119 = sext i32 %117 to i64
  %120 = getelementptr inbounds i8*, i8** %116, i64 %119
  %121 = load i8*, i8** %120, align 8
  %122 = call i32* @Strsave(i8* %121)
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  store i32* %122, i32** %123, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = call i32 @Strlen(i32* %125)
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 1
  store i32 %126, i32* %127, align 8
  br label %154

128:                                              ; preds = %96
  %129 = load i32, i32* %10, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %142

131:                                              ; preds = %128
  %132 = load i8**, i8*** %3, align 8
  %133 = load i32, i32* %7, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %7, align 4
  %135 = sext i32 %133 to i64
  %136 = getelementptr inbounds i8*, i8** %132, i64 %135
  %137 = load i8*, i8** %136, align 8
  %138 = call i32* @parsebind(i8* %137, %struct.TYPE_12__* %14)
  %139 = icmp eq i32* %138, null
  br i1 %139, label %140, label %141

140:                                              ; preds = %131
  br label %347

141:                                              ; preds = %131
  br label %153

142:                                              ; preds = %128
  %143 = load i8**, i8*** %3, align 8
  %144 = load i32, i32* %7, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %7, align 4
  %146 = sext i32 %144 to i64
  %147 = getelementptr inbounds i8*, i8** %143, i64 %146
  %148 = load i8*, i8** %147, align 8
  %149 = call i32* @parsestring(i8* %148, %struct.TYPE_12__* %14)
  %150 = icmp eq i32* %149, null
  br i1 %150, label %151, label %152

151:                                              ; preds = %142
  br label %347

152:                                              ; preds = %142
  br label %153

153:                                              ; preds = %152, %141
  br label %154

154:                                              ; preds = %153, %115
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* @xfree, align 4
  %158 = call i32 @cleanup_push(i32* %156, i32 %157)
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 0
  %162 = load i32, i32* %161, align 4
  %163 = icmp sgt i32 %162, 255
  br i1 %163, label %164, label %171

164:                                              ; preds = %154
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %166 = load i32*, i32** %165, align 8
  %167 = call i32 @bad_spec(i32* %166)
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %169 = load i32*, i32** %168, align 8
  %170 = call i32 @cleanup_until(i32* %169)
  br label %347

171:                                              ; preds = %154
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %173 = load i32*, i32** %172, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 0
  %175 = load i32, i32* %174, align 4
  %176 = sext i32 %175 to i64
  store i64 %176, i64* %16, align 8
  %177 = load i32, i32* %8, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %214

179:                                              ; preds = %171
  %180 = load i32, i32* %9, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %179
  %183 = call i32 @ClearArrowKeys(%struct.TYPE_12__* %14)
  br label %210

184:                                              ; preds = %179
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 1
  %186 = load i32, i32* %185, align 8
  %187 = icmp sgt i32 %186, 1
  br i1 %187, label %188, label %190

188:                                              ; preds = %184
  %189 = call i32 @DeleteXkey(%struct.TYPE_12__* %14)
  br label %209

190:                                              ; preds = %184
  %191 = load i64*, i64** %5, align 8
  %192 = load i64, i64* %16, align 8
  %193 = getelementptr inbounds i64, i64* %191, i64 %192
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @F_XKEY, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %203

197:                                              ; preds = %190
  %198 = call i32 @DeleteXkey(%struct.TYPE_12__* %14)
  %199 = load i64, i64* @F_UNASSIGNED, align 8
  %200 = load i64*, i64** %5, align 8
  %201 = load i64, i64* %16, align 8
  %202 = getelementptr inbounds i64, i64* %200, i64 %201
  store i64 %199, i64* %202, align 8
  br label %208

203:                                              ; preds = %190
  %204 = load i64, i64* @F_UNASSIGNED, align 8
  %205 = load i64*, i64** %5, align 8
  %206 = load i64, i64* %16, align 8
  %207 = getelementptr inbounds i64, i64* %205, i64 %206
  store i64 %204, i64* %207, align 8
  br label %208

208:                                              ; preds = %203, %197
  br label %209

209:                                              ; preds = %208, %188
  br label %210

210:                                              ; preds = %209, %182
  %211 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %212 = load i32*, i32** %211, align 8
  %213 = call i32 @cleanup_until(i32* %212)
  br label %347

214:                                              ; preds = %171
  %215 = load i8**, i8*** %3, align 8
  %216 = load i32, i32* %7, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i8*, i8** %215, i64 %217
  %219 = load i8*, i8** %218, align 8
  %220 = icmp ne i8* %219, null
  br i1 %220, label %233, label %221

221:                                              ; preds = %214
  %222 = load i32, i32* %9, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %226

224:                                              ; preds = %221
  %225 = call i32 @PrintArrowKeys(%struct.TYPE_12__* %14)
  br label %229

226:                                              ; preds = %221
  %227 = load i64*, i64** %5, align 8
  %228 = call i32 @printkey(i64* %227, %struct.TYPE_12__* %14)
  br label %229

229:                                              ; preds = %226, %224
  %230 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %231 = load i32*, i32** %230, align 8
  %232 = call i32 @cleanup_until(i32* %231)
  br label %347

233:                                              ; preds = %214
  %234 = load i8**, i8*** %3, align 8
  %235 = load i32, i32* %7, align 4
  %236 = add nsw i32 %235, 1
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i8*, i8** %234, i64 %237
  %239 = load i8*, i8** %238, align 8
  %240 = icmp ne i8* %239, null
  br i1 %240, label %241, label %246

241:                                              ; preds = %233
  %242 = call i32 (...) @bindkey_usage()
  %243 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %244 = load i32*, i32** %243, align 8
  %245 = call i32 @cleanup_until(i32* %244)
  br label %347

246:                                              ; preds = %233
  %247 = load i32, i32* %6, align 4
  switch i32 %247, label %337 [
    i32 128, label %248
    i32 129, label %248
    i32 130, label %293
  ]

248:                                              ; preds = %246, %246
  %249 = load i8**, i8*** %3, align 8
  %250 = load i32, i32* %7, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i8*, i8** %249, i64 %251
  %253 = load i8*, i8** %252, align 8
  %254 = call i32* @parsestring(i8* %253, %struct.TYPE_12__* %15)
  %255 = icmp eq i32* %254, null
  br i1 %255, label %256, label %260

256:                                              ; preds = %248
  %257 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %258 = load i32*, i32** %257, align 8
  %259 = call i32 @cleanup_until(i32* %258)
  br label %347

260:                                              ; preds = %248
  %261 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %262 = load i32*, i32** %261, align 8
  %263 = load i32, i32* @xfree, align 4
  %264 = call i32 @cleanup_push(i32* %262, i32 %263)
  %265 = load i32, i32* %9, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %284

267:                                              ; preds = %260
  %268 = call i32 @XmapStr(%struct.TYPE_12__* %15)
  %269 = load i32, i32* %6, align 4
  %270 = call i32 @SetArrowKeys(%struct.TYPE_12__* %14, i32 %268, i32 %269)
  %271 = icmp eq i32 %270, -1
  br i1 %271, label %272, label %278

272:                                              ; preds = %267
  %273 = call i32 @CGETS(i32 20, i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %274 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %275 = load i32*, i32** %274, align 8
  %276 = bitcast i32* %275 to i8*
  %277 = call i32 @xprintf(i32 %273, i8* %276)
  br label %283

278:                                              ; preds = %267
  %279 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %280 = load i32*, i32** %279, align 8
  %281 = bitcast i32* %280 to i8*
  %282 = call i32 @cleanup_ignore(i8* %281)
  br label %283

283:                                              ; preds = %278, %272
  br label %288

284:                                              ; preds = %260
  %285 = call i32 @XmapStr(%struct.TYPE_12__* %15)
  %286 = load i32, i32* %6, align 4
  %287 = call i32 @AddXkey(%struct.TYPE_12__* %14, i32 %285, i32 %286)
  br label %288

288:                                              ; preds = %284, %283
  %289 = load i64, i64* @F_XKEY, align 8
  %290 = load i64*, i64** %5, align 8
  %291 = load i64, i64* %16, align 8
  %292 = getelementptr inbounds i64, i64* %290, i64 %291
  store i64 %289, i64* %292, align 8
  br label %339

293:                                              ; preds = %246
  %294 = load i8**, i8*** %3, align 8
  %295 = load i32, i32* %7, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i8*, i8** %294, i64 %296
  %298 = load i8*, i8** %297, align 8
  %299 = call i64 @parsecmd(i8* %298)
  store i64 %299, i64* %13, align 8
  %300 = icmp eq i64 %299, 0
  br i1 %300, label %301, label %305

301:                                              ; preds = %293
  %302 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %303 = load i32*, i32** %302, align 8
  %304 = call i32 @cleanup_until(i32* %303)
  br label %347

305:                                              ; preds = %293
  %306 = load i32, i32* %9, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %314

308:                                              ; preds = %305
  %309 = load i64, i64* %13, align 8
  %310 = trunc i64 %309 to i32
  %311 = call i32 @XmapCmd(i32 %310)
  %312 = load i32, i32* %6, align 4
  %313 = call i32 @SetArrowKeys(%struct.TYPE_12__* %14, i32 %311, i32 %312)
  br label %336

314:                                              ; preds = %305
  %315 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 1
  %316 = load i32, i32* %315, align 8
  %317 = icmp sgt i32 %316, 1
  br i1 %317, label %318, label %328

318:                                              ; preds = %314
  %319 = load i64, i64* %13, align 8
  %320 = trunc i64 %319 to i32
  %321 = call i32 @XmapCmd(i32 %320)
  %322 = load i32, i32* %6, align 4
  %323 = call i32 @AddXkey(%struct.TYPE_12__* %14, i32 %321, i32 %322)
  %324 = load i64, i64* @F_XKEY, align 8
  %325 = load i64*, i64** %5, align 8
  %326 = load i64, i64* %16, align 8
  %327 = getelementptr inbounds i64, i64* %325, i64 %326
  store i64 %324, i64* %327, align 8
  br label %335

328:                                              ; preds = %314
  %329 = load i64*, i64** %5, align 8
  %330 = call i32 @ClearXkey(i64* %329, %struct.TYPE_12__* %14)
  %331 = load i64, i64* %13, align 8
  %332 = load i64*, i64** %5, align 8
  %333 = load i64, i64* %16, align 8
  %334 = getelementptr inbounds i64, i64* %332, i64 %333
  store i64 %331, i64* %334, align 8
  br label %335

335:                                              ; preds = %328, %318
  br label %336

336:                                              ; preds = %335, %308
  br label %339

337:                                              ; preds = %246
  %338 = call i32 (...) @abort() #3
  unreachable

339:                                              ; preds = %336, %288
  %340 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %341 = load i32*, i32** %340, align 8
  %342 = call i32 @cleanup_until(i32* %341)
  %343 = load i32, i32* %9, align 4
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %347

345:                                              ; preds = %339
  %346 = call i32 (...) @BindArrowKeys()
  br label %347

347:                                              ; preds = %67, %69, %71, %73, %75, %94, %140, %151, %164, %210, %229, %241, %256, %301, %345, %339
  ret void
}

declare dso_local i32 @USE(%struct.command*) #1

declare dso_local i32 @ed_InitMaps(...) #1

declare dso_local i32 @ed_InitVIMaps(...) #1

declare dso_local i32 @ed_InitEmacsMaps(...) #1

declare dso_local i32 @list_functions(...) #1

declare dso_local i32 @bindkey_usage(...) #1

declare dso_local i32 @print_all_keys(...) #1

declare dso_local i32 @IsArrowKey(i8*) #1

declare dso_local i32 @xprintf(i32, i8*) #1

declare dso_local i32 @CGETS(i32, i32, i8*) #1

declare dso_local i32* @Strsave(i8*) #1

declare dso_local i32 @Strlen(i32*) #1

declare dso_local i32* @parsebind(i8*, %struct.TYPE_12__*) #1

declare dso_local i32* @parsestring(i8*, %struct.TYPE_12__*) #1

declare dso_local i32 @cleanup_push(i32*, i32) #1

declare dso_local i32 @bad_spec(i32*) #1

declare dso_local i32 @cleanup_until(i32*) #1

declare dso_local i32 @ClearArrowKeys(%struct.TYPE_12__*) #1

declare dso_local i32 @DeleteXkey(%struct.TYPE_12__*) #1

declare dso_local i32 @PrintArrowKeys(%struct.TYPE_12__*) #1

declare dso_local i32 @printkey(i64*, %struct.TYPE_12__*) #1

declare dso_local i32 @SetArrowKeys(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @XmapStr(%struct.TYPE_12__*) #1

declare dso_local i32 @cleanup_ignore(i8*) #1

declare dso_local i32 @AddXkey(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i64 @parsecmd(i8*) #1

declare dso_local i32 @XmapCmd(i32) #1

declare dso_local i32 @ClearXkey(i64*, %struct.TYPE_12__*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @BindArrowKeys(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
