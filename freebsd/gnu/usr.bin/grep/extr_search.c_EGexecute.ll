; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/grep/extr_search.c_EGexecute.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/grep/extr_search.c_EGexecute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i32 }
%struct.kwsmatch = type { i64 }

@eolbyte = common dso_local global i8 0, align 1
@EGexecute.use_dfa = internal global i32 0, align 4
@EGexecute.use_dfa_checked = internal global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"GREP_USE_DFA\00", align 1
@kwset = common dso_local global i64 0, align 8
@kwset_exact_matches = common dso_local global i64 0, align 8
@dfa = common dso_local global i32 0, align 4
@pcount = common dso_local global i64 0, align 8
@patterns = common dso_local global %struct.TYPE_8__* null, align 8
@match_words = common dso_local global i64 0, align 8
@match_lines = common dso_local global i64 0, align 8
@MB_CUR_MAX = common dso_local global i32 0, align 4
@match_icase = common dso_local global i64 0, align 8
@using_utf8 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i64*, i32)* @EGexecute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @EGexecute(i8* %0, i64 %1, i64* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.kwsmatch, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %25 = load i8, i8* @eolbyte, align 1
  store i8 %25, i8* %13, align 1
  %26 = load i32, i32* @EGexecute.use_dfa_checked, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %4
  %29 = call i8* @getenv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i8* %29, i8** %20, align 8
  %30 = load i8*, i8** %20, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  store i32 1, i32* @EGexecute.use_dfa, align 4
  br label %36

33:                                               ; preds = %28
  %34 = load i8*, i8** %20, align 8
  %35 = call i32 @atoi(i8* %34)
  store i32 %35, i32* @EGexecute.use_dfa, align 4
  br label %36

36:                                               ; preds = %33, %32
  store i32 1, i32* @EGexecute.use_dfa_checked, align 4
  br label %37

37:                                               ; preds = %36, %4
  %38 = load i8*, i8** %6, align 8
  %39 = load i64, i64* %7, align 8
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  store i8* %40, i8** %10, align 8
  %41 = load i8*, i8** %6, align 8
  store i8* %41, i8** %12, align 8
  store i8* %41, i8** %11, align 8
  br label %42

42:                                               ; preds = %408, %37
  %43 = load i8*, i8** %12, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = icmp ult i8* %43, %44
  br i1 %45, label %46, label %410

46:                                               ; preds = %42
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %175, label %49

49:                                               ; preds = %46
  %50 = load i64, i64* @kwset, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %118

52:                                               ; preds = %49
  %53 = load i64, i64* @kwset, align 8
  %54 = load i8*, i8** %11, align 8
  %55 = load i8*, i8** %10, align 8
  %56 = load i8*, i8** %11, align 8
  %57 = ptrtoint i8* %55 to i64
  %58 = ptrtoint i8* %56 to i64
  %59 = sub i64 %57, %58
  %60 = trunc i64 %59 to i32
  %61 = call i64 @kwsexec(i64 %53, i8* %54, i32 %60, %struct.kwsmatch* %17)
  store i64 %61, i64* %21, align 8
  %62 = load i64, i64* %21, align 8
  %63 = icmp eq i64 %62, -1
  br i1 %63, label %64, label %65

64:                                               ; preds = %52
  br label %411

65:                                               ; preds = %52
  %66 = load i64, i64* %21, align 8
  %67 = load i8*, i8** %11, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 %66
  store i8* %68, i8** %11, align 8
  %69 = load i8*, i8** %11, align 8
  %70 = load i8, i8* %13, align 1
  %71 = load i8*, i8** %10, align 8
  %72 = load i8*, i8** %11, align 8
  %73 = ptrtoint i8* %71 to i64
  %74 = ptrtoint i8* %72 to i64
  %75 = sub i64 %73, %74
  %76 = trunc i64 %75 to i32
  %77 = call i8* @memchr(i8* %69, i8 signext %70, i32 %76)
  store i8* %77, i8** %12, align 8
  %78 = load i8*, i8** %12, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %12, align 8
  br label %80

80:                                               ; preds = %94, %65
  %81 = load i8*, i8** %11, align 8
  %82 = load i8*, i8** %6, align 8
  %83 = icmp ugt i8* %81, %82
  br i1 %83, label %84, label %92

84:                                               ; preds = %80
  %85 = load i8*, i8** %11, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 -1
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = load i8, i8* %13, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp ne i32 %88, %90
  br label %92

92:                                               ; preds = %84, %80
  %93 = phi i1 [ false, %80 ], [ %91, %84 ]
  br i1 %93, label %94, label %97

94:                                               ; preds = %92
  %95 = load i8*, i8** %11, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 -1
  store i8* %96, i8** %11, align 8
  br label %80

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct.kwsmatch, %struct.kwsmatch* %17, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @kwset_exact_matches, align 8
  %101 = icmp slt i64 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %97
  br label %412

103:                                              ; preds = %97
  %104 = load i32, i32* @EGexecute.use_dfa, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %117

106:                                              ; preds = %103
  %107 = load i8*, i8** %11, align 8
  %108 = load i8*, i8** %12, align 8
  %109 = load i8*, i8** %11, align 8
  %110 = ptrtoint i8* %108 to i64
  %111 = ptrtoint i8* %109 to i64
  %112 = sub i64 %110, %111
  %113 = trunc i64 %112 to i32
  %114 = call i64 @dfaexec(i32* @dfa, i8* %107, i32 %113, i32* %14)
  %115 = icmp eq i64 %114, -1
  br i1 %115, label %116, label %117

116:                                              ; preds = %106
  br label %408

117:                                              ; preds = %106, %103
  br label %167

118:                                              ; preds = %49
  store i64 0, i64* %22, align 8
  %119 = load i32, i32* @EGexecute.use_dfa, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %130

121:                                              ; preds = %118
  %122 = load i8*, i8** %11, align 8
  %123 = load i8*, i8** %10, align 8
  %124 = load i8*, i8** %11, align 8
  %125 = ptrtoint i8* %123 to i64
  %126 = ptrtoint i8* %124 to i64
  %127 = sub i64 %125, %126
  %128 = trunc i64 %127 to i32
  %129 = call i64 @dfaexec(i32* @dfa, i8* %122, i32 %128, i32* %14)
  store i64 %129, i64* %22, align 8
  br label %130

130:                                              ; preds = %121, %118
  %131 = load i64, i64* %22, align 8
  %132 = icmp eq i64 %131, -1
  br i1 %132, label %133, label %134

133:                                              ; preds = %130
  br label %410

134:                                              ; preds = %130
  %135 = load i64, i64* %22, align 8
  %136 = load i8*, i8** %11, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 %135
  store i8* %137, i8** %11, align 8
  %138 = load i8*, i8** %11, align 8
  %139 = load i8, i8* %13, align 1
  %140 = load i8*, i8** %10, align 8
  %141 = load i8*, i8** %11, align 8
  %142 = ptrtoint i8* %140 to i64
  %143 = ptrtoint i8* %141 to i64
  %144 = sub i64 %142, %143
  %145 = trunc i64 %144 to i32
  %146 = call i8* @memchr(i8* %138, i8 signext %139, i32 %145)
  store i8* %146, i8** %12, align 8
  %147 = load i8*, i8** %12, align 8
  %148 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %148, i8** %12, align 8
  br label %149

149:                                              ; preds = %163, %134
  %150 = load i8*, i8** %11, align 8
  %151 = load i8*, i8** %6, align 8
  %152 = icmp ugt i8* %150, %151
  br i1 %152, label %153, label %161

153:                                              ; preds = %149
  %154 = load i8*, i8** %11, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 -1
  %156 = load i8, i8* %155, align 1
  %157 = sext i8 %156 to i32
  %158 = load i8, i8* %13, align 1
  %159 = sext i8 %158 to i32
  %160 = icmp ne i32 %157, %159
  br label %161

161:                                              ; preds = %153, %149
  %162 = phi i1 [ false, %149 ], [ %160, %153 ]
  br i1 %162, label %163, label %166

163:                                              ; preds = %161
  %164 = load i8*, i8** %11, align 8
  %165 = getelementptr inbounds i8, i8* %164, i32 -1
  store i8* %165, i8** %11, align 8
  br label %149

166:                                              ; preds = %161
  br label %167

167:                                              ; preds = %166, %117
  %168 = load i32, i32* @EGexecute.use_dfa, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %167
  %171 = load i32, i32* %14, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %174, label %173

173:                                              ; preds = %170
  br label %412

174:                                              ; preds = %170, %167
  br label %179

175:                                              ; preds = %46
  %176 = load i8*, i8** %11, align 8
  %177 = load i64, i64* %7, align 8
  %178 = getelementptr inbounds i8, i8* %176, i64 %177
  store i8* %178, i8** %12, align 8
  br label %179

179:                                              ; preds = %175, %174
  store i64 0, i64* %18, align 8
  br label %180

180:                                              ; preds = %404, %179
  %181 = load i64, i64* %18, align 8
  %182 = load i64, i64* @pcount, align 8
  %183 = icmp ult i64 %181, %182
  br i1 %183, label %184, label %407

184:                                              ; preds = %180
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** @patterns, align 8
  %186 = load i64, i64* %18, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 0
  store i32 0, i32* %189, align 8
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** @patterns, align 8
  %191 = load i64, i64* %18, align 8
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 1
  %194 = load i8*, i8** %11, align 8
  %195 = load i8*, i8** %12, align 8
  %196 = load i8*, i8** %11, align 8
  %197 = ptrtoint i8* %195 to i64
  %198 = ptrtoint i8* %196 to i64
  %199 = sub i64 %197, %198
  %200 = sub nsw i64 %199, 1
  %201 = trunc i64 %200 to i32
  %202 = load i8*, i8** %12, align 8
  %203 = load i8*, i8** %11, align 8
  %204 = ptrtoint i8* %202 to i64
  %205 = ptrtoint i8* %203 to i64
  %206 = sub i64 %204, %205
  %207 = sub nsw i64 %206, 1
  %208 = trunc i64 %207 to i32
  %209 = load %struct.TYPE_8__*, %struct.TYPE_8__** @patterns, align 8
  %210 = load i64, i64* %18, align 8
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 0
  %213 = call i32 @re_search(%struct.TYPE_6__* %193, i8* %194, i32 %201, i32 0, i32 %208, %struct.TYPE_7__* %212)
  store i32 %213, i32* %15, align 4
  %214 = icmp sle i32 0, %213
  br i1 %214, label %215, label %403

215:                                              ; preds = %184
  %216 = load %struct.TYPE_8__*, %struct.TYPE_8__** @patterns, align 8
  %217 = load i64, i64* %18, align 8
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 0
  %221 = load i32*, i32** %220, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 0
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* %15, align 4
  %225 = sub nsw i32 %223, %224
  store i32 %225, i32* %16, align 4
  %226 = load i32, i32* %9, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %232

228:                                              ; preds = %215
  %229 = load i64, i64* @match_words, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %232, label %231

231:                                              ; preds = %228
  br label %425

232:                                              ; preds = %228, %215
  %233 = load i64, i64* @match_lines, align 8
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %238, label %235

235:                                              ; preds = %232
  %236 = load i64, i64* @match_words, align 8
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %251

238:                                              ; preds = %235, %232
  %239 = load i64, i64* @match_lines, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %252

241:                                              ; preds = %238
  %242 = load i32, i32* %16, align 4
  %243 = sext i32 %242 to i64
  %244 = load i8*, i8** %12, align 8
  %245 = load i8*, i8** %11, align 8
  %246 = ptrtoint i8* %244 to i64
  %247 = ptrtoint i8* %245 to i64
  %248 = sub i64 %246, %247
  %249 = sub nsw i64 %248, 1
  %250 = icmp eq i64 %243, %249
  br i1 %250, label %251, label %252

251:                                              ; preds = %241, %235
  br label %412

252:                                              ; preds = %241, %238
  %253 = load i64, i64* @match_words, align 8
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %402

255:                                              ; preds = %252
  br label %256

256:                                              ; preds = %400, %255
  %257 = load i32, i32* %15, align 4
  %258 = icmp sge i32 %257, 0
  br i1 %258, label %259, label %401

259:                                              ; preds = %256
  store i32 0, i32* %23, align 4
  %260 = load i32, i32* %15, align 4
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %262, label %263

262:                                              ; preds = %259
  store i32 1, i32* %23, align 4
  br label %278

263:                                              ; preds = %259
  %264 = load i32, i32* %15, align 4
  %265 = icmp sgt i32 %264, 0
  %266 = zext i1 %265 to i32
  %267 = call i32 @assert(i32 %266)
  %268 = load i8*, i8** %11, align 8
  %269 = load i32, i32* %15, align 4
  %270 = sub nsw i32 %269, 1
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i8, i8* %268, i64 %271
  %273 = load i8, i8* %272, align 1
  %274 = call i32 @WCHAR(i8 zeroext %273)
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %277, label %276

276:                                              ; preds = %263
  store i32 1, i32* %23, align 4
  br label %277

277:                                              ; preds = %276, %263
  br label %278

278:                                              ; preds = %277, %262
  %279 = load i32, i32* %23, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %315

281:                                              ; preds = %278
  store i32 0, i32* %24, align 4
  %282 = load i32, i32* %15, align 4
  %283 = load i32, i32* %16, align 4
  %284 = add nsw i32 %282, %283
  %285 = sext i32 %284 to i64
  %286 = load i8*, i8** %12, align 8
  %287 = load i8*, i8** %11, align 8
  %288 = ptrtoint i8* %286 to i64
  %289 = ptrtoint i8* %287 to i64
  %290 = sub i64 %288, %289
  %291 = sub nsw i64 %290, 1
  %292 = icmp eq i64 %285, %291
  br i1 %292, label %293, label %294

293:                                              ; preds = %281
  store i32 1, i32* %24, align 4
  br label %306

294:                                              ; preds = %281
  %295 = load i8*, i8** %11, align 8
  %296 = load i32, i32* %15, align 4
  %297 = load i32, i32* %16, align 4
  %298 = add nsw i32 %296, %297
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i8, i8* %295, i64 %299
  %301 = load i8, i8* %300, align 1
  %302 = call i32 @WCHAR(i8 zeroext %301)
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %305, label %304

304:                                              ; preds = %294
  store i32 1, i32* %24, align 4
  br label %305

305:                                              ; preds = %304, %294
  br label %306

306:                                              ; preds = %305, %293
  %307 = load i32, i32* %24, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %314

309:                                              ; preds = %306
  %310 = load i32, i32* %9, align 4
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %313, label %312

312:                                              ; preds = %309
  br label %412

313:                                              ; preds = %309
  br label %425

314:                                              ; preds = %306
  br label %315

315:                                              ; preds = %314, %278
  %316 = load i32, i32* %16, align 4
  %317 = icmp sgt i32 %316, 0
  br i1 %317, label %318, label %340

318:                                              ; preds = %315
  %319 = load i32, i32* %16, align 4
  %320 = add nsw i32 %319, -1
  store i32 %320, i32* %16, align 4
  %321 = load %struct.TYPE_8__*, %struct.TYPE_8__** @patterns, align 8
  %322 = load i64, i64* %18, align 8
  %323 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %321, i64 %322
  %324 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %323, i32 0, i32 1
  %325 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %324, i32 0, i32 0
  store i32 1, i32* %325, align 8
  %326 = load %struct.TYPE_8__*, %struct.TYPE_8__** @patterns, align 8
  %327 = load i64, i64* %18, align 8
  %328 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %326, i64 %327
  %329 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %328, i32 0, i32 1
  %330 = load i8*, i8** %11, align 8
  %331 = load i32, i32* %15, align 4
  %332 = load i32, i32* %16, align 4
  %333 = add nsw i32 %331, %332
  %334 = load i32, i32* %15, align 4
  %335 = load %struct.TYPE_8__*, %struct.TYPE_8__** @patterns, align 8
  %336 = load i64, i64* %18, align 8
  %337 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %335, i64 %336
  %338 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %337, i32 0, i32 0
  %339 = call i32 @re_match(%struct.TYPE_6__* %329, i8* %330, i32 %333, i32 %334, %struct.TYPE_7__* %338)
  store i32 %339, i32* %16, align 4
  br label %340

340:                                              ; preds = %318, %315
  %341 = load i32, i32* %16, align 4
  %342 = icmp sle i32 %341, 0
  br i1 %342, label %343, label %400

343:                                              ; preds = %340
  %344 = load i32, i32* %15, align 4
  %345 = sext i32 %344 to i64
  %346 = load i8*, i8** %12, align 8
  %347 = load i8*, i8** %11, align 8
  %348 = ptrtoint i8* %346 to i64
  %349 = ptrtoint i8* %347 to i64
  %350 = sub i64 %348, %349
  %351 = sub nsw i64 %350, 1
  %352 = icmp eq i64 %345, %351
  br i1 %352, label %353, label %354

353:                                              ; preds = %343
  br label %401

354:                                              ; preds = %343
  %355 = load i32, i32* %15, align 4
  %356 = add nsw i32 %355, 1
  store i32 %356, i32* %15, align 4
  %357 = load %struct.TYPE_8__*, %struct.TYPE_8__** @patterns, align 8
  %358 = load i64, i64* %18, align 8
  %359 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %357, i64 %358
  %360 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %359, i32 0, i32 1
  %361 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %360, i32 0, i32 0
  store i32 0, i32* %361, align 8
  %362 = load %struct.TYPE_8__*, %struct.TYPE_8__** @patterns, align 8
  %363 = load i64, i64* %18, align 8
  %364 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %362, i64 %363
  %365 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %364, i32 0, i32 1
  %366 = load i8*, i8** %11, align 8
  %367 = load i8*, i8** %12, align 8
  %368 = load i8*, i8** %11, align 8
  %369 = ptrtoint i8* %367 to i64
  %370 = ptrtoint i8* %368 to i64
  %371 = sub i64 %369, %370
  %372 = sub nsw i64 %371, 1
  %373 = trunc i64 %372 to i32
  %374 = load i32, i32* %15, align 4
  %375 = load i8*, i8** %12, align 8
  %376 = load i8*, i8** %11, align 8
  %377 = ptrtoint i8* %375 to i64
  %378 = ptrtoint i8* %376 to i64
  %379 = sub i64 %377, %378
  %380 = sub nsw i64 %379, 1
  %381 = load i32, i32* %15, align 4
  %382 = sext i32 %381 to i64
  %383 = sub nsw i64 %380, %382
  %384 = trunc i64 %383 to i32
  %385 = load %struct.TYPE_8__*, %struct.TYPE_8__** @patterns, align 8
  %386 = load i64, i64* %18, align 8
  %387 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %385, i64 %386
  %388 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %387, i32 0, i32 0
  %389 = call i32 @re_search(%struct.TYPE_6__* %365, i8* %366, i32 %373, i32 %374, i32 %384, %struct.TYPE_7__* %388)
  store i32 %389, i32* %15, align 4
  %390 = load %struct.TYPE_8__*, %struct.TYPE_8__** @patterns, align 8
  %391 = load i64, i64* %18, align 8
  %392 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %390, i64 %391
  %393 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %392, i32 0, i32 0
  %394 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %393, i32 0, i32 0
  %395 = load i32*, i32** %394, align 8
  %396 = getelementptr inbounds i32, i32* %395, i64 0
  %397 = load i32, i32* %396, align 4
  %398 = load i32, i32* %15, align 4
  %399 = sub nsw i32 %397, %398
  store i32 %399, i32* %16, align 4
  br label %400

400:                                              ; preds = %354, %340
  br label %256

401:                                              ; preds = %353, %256
  br label %402

402:                                              ; preds = %401, %252
  br label %403

403:                                              ; preds = %402, %184
  br label %404

404:                                              ; preds = %403
  %405 = load i64, i64* %18, align 8
  %406 = add i64 %405, 1
  store i64 %406, i64* %18, align 8
  br label %180

407:                                              ; preds = %180
  br label %408

408:                                              ; preds = %407, %116
  %409 = load i8*, i8** %12, align 8
  store i8* %409, i8** %11, align 8
  br label %42

410:                                              ; preds = %133, %42
  br label %411

411:                                              ; preds = %410, %64
  store i64 -1, i64* %5, align 8
  br label %431

412:                                              ; preds = %312, %251, %173, %102
  %413 = load i8*, i8** %12, align 8
  %414 = load i8*, i8** %11, align 8
  %415 = ptrtoint i8* %413 to i64
  %416 = ptrtoint i8* %414 to i64
  %417 = sub i64 %415, %416
  %418 = trunc i64 %417 to i32
  store i32 %418, i32* %16, align 4
  %419 = load i8*, i8** %11, align 8
  %420 = load i8*, i8** %6, align 8
  %421 = ptrtoint i8* %419 to i64
  %422 = ptrtoint i8* %420 to i64
  %423 = sub i64 %421, %422
  %424 = trunc i64 %423 to i32
  store i32 %424, i32* %15, align 4
  br label %425

425:                                              ; preds = %412, %313, %231
  %426 = load i32, i32* %16, align 4
  %427 = sext i32 %426 to i64
  %428 = load i64*, i64** %8, align 8
  store i64 %427, i64* %428, align 8
  %429 = load i32, i32* %15, align 4
  %430 = sext i32 %429 to i64
  store i64 %430, i64* %5, align 8
  br label %431

431:                                              ; preds = %425, %411
  %432 = load i64, i64* %5, align 8
  ret i64 %432
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i64 @kwsexec(i64, i8*, i32, %struct.kwsmatch*) #1

declare dso_local i8* @memchr(i8*, i8 signext, i32) #1

declare dso_local i64 @dfaexec(i32*, i8*, i32, i32*) #1

declare dso_local i32 @re_search(%struct.TYPE_6__*, i8*, i32, i32, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @WCHAR(i8 zeroext) #1

declare dso_local i32 @re_match(%struct.TYPE_6__*, i8*, i32, i32, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
