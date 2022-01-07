; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/grep/extr_kwset.c_cwexec.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/grep/extr_kwset.c_cwexec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kwsmatch = type { i32, i32*, i32* }
%struct.kwset = type { i64, i8*, i8*, i32, %struct.trie*, %struct.trie** }
%struct.trie = type { i32, i32, i32, %struct.tree* }
%struct.tree = type { i8, %struct.trie*, %struct.tree*, %struct.tree* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i8*, i64, %struct.kwsmatch*)* @cwexec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cwexec(i64 %0, i8* %1, i64 %2, %struct.kwsmatch* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.kwsmatch*, align 8
  %10 = alloca %struct.kwset*, align 8
  %11 = alloca %struct.trie**, align 8
  %12 = alloca %struct.trie*, align 8
  %13 = alloca %struct.trie*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8, align 1
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca %struct.tree*, align 8
  %24 = alloca i8*, align 8
  store i64 %0, i64* %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.kwsmatch* %3, %struct.kwsmatch** %9, align 8
  %25 = load i64, i64* %6, align 8
  %26 = inttoptr i64 %25 to %struct.kwset*
  store %struct.kwset* %26, %struct.kwset** %10, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load %struct.kwset*, %struct.kwset** %10, align 8
  %29 = getelementptr inbounds %struct.kwset, %struct.kwset* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ult i64 %27, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %4
  store i64 -1, i64* %5, align 8
  br label %450

33:                                               ; preds = %4
  %34 = load %struct.kwset*, %struct.kwset** %10, align 8
  %35 = getelementptr inbounds %struct.kwset, %struct.kwset* %34, i32 0, i32 5
  %36 = load %struct.trie**, %struct.trie*** %35, align 8
  store %struct.trie** %36, %struct.trie*** %11, align 8
  %37 = load %struct.kwset*, %struct.kwset** %10, align 8
  %38 = getelementptr inbounds %struct.kwset, %struct.kwset* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %19, align 8
  %40 = load %struct.kwset*, %struct.kwset** %10, align 8
  %41 = getelementptr inbounds %struct.kwset, %struct.kwset* %40, i32 0, i32 2
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %24, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = load i64, i64* %8, align 8
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  store i8* %45, i8** %15, align 8
  %46 = load i8*, i8** %7, align 8
  store i8* %46, i8** %21, align 8
  %47 = load %struct.kwset*, %struct.kwset** %10, align 8
  %48 = getelementptr inbounds %struct.kwset, %struct.kwset* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %20, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %33
  store i8* null, i8** %16, align 8
  br label %58

53:                                               ; preds = %33
  %54 = load i8*, i8** %7, align 8
  store i8* %54, i8** %16, align 8
  %55 = load %struct.kwset*, %struct.kwset** %10, align 8
  %56 = getelementptr inbounds %struct.kwset, %struct.kwset* %55, i32 0, i32 4
  %57 = load %struct.trie*, %struct.trie** %56, align 8
  store %struct.trie* %57, %struct.trie** %13, align 8
  br label %258

58:                                               ; preds = %52
  %59 = load i64, i64* %8, align 8
  %60 = load %struct.kwset*, %struct.kwset** %10, align 8
  %61 = getelementptr inbounds %struct.kwset, %struct.kwset* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = mul i64 4, %62
  %64 = icmp uge i64 %59, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %58
  %66 = load i8*, i8** %15, align 8
  %67 = load %struct.kwset*, %struct.kwset** %10, align 8
  %68 = getelementptr inbounds %struct.kwset, %struct.kwset* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = mul i64 4, %69
  %71 = sub i64 0, %70
  %72 = getelementptr inbounds i8, i8* %66, i64 %71
  store i8* %72, i8** %22, align 8
  br label %74

73:                                               ; preds = %58
  store i8* null, i8** %22, align 8
  br label %74

74:                                               ; preds = %73, %65
  br label %75

75:                                               ; preds = %256, %155, %74
  %76 = load i8*, i8** %15, align 8
  %77 = load i8*, i8** %21, align 8
  %78 = ptrtoint i8* %76 to i64
  %79 = ptrtoint i8* %77 to i64
  %80 = sub i64 %78, %79
  %81 = load i32, i32* %20, align 4
  %82 = sext i32 %81 to i64
  %83 = icmp sge i64 %80, %82
  br i1 %83, label %84, label %257

84:                                               ; preds = %75
  %85 = load i8*, i8** %22, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %140

87:                                               ; preds = %84
  %88 = load i8*, i8** %21, align 8
  %89 = load i8*, i8** %22, align 8
  %90 = icmp ule i8* %88, %89
  br i1 %90, label %91, label %140

91:                                               ; preds = %87
  %92 = load i32, i32* %20, align 4
  %93 = sub nsw i32 %92, 1
  %94 = load i8*, i8** %21, align 8
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds i8, i8* %94, i64 %95
  store i8* %96, i8** %21, align 8
  br label %97

97:                                               ; preds = %112, %91
  %98 = load i8*, i8** %19, align 8
  %99 = load i8*, i8** %21, align 8
  %100 = load i8, i8* %99, align 1
  store i8 %100, i8* %18, align 1
  %101 = zext i8 %100 to i64
  %102 = getelementptr inbounds i8, i8* %98, i64 %101
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  store i32 %104, i32* %20, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %97
  %107 = load i8*, i8** %21, align 8
  %108 = load i8*, i8** %22, align 8
  %109 = icmp ult i8* %107, %108
  br label %110

110:                                              ; preds = %106, %97
  %111 = phi i1 [ false, %97 ], [ %109, %106 ]
  br i1 %111, label %112, label %137

112:                                              ; preds = %110
  %113 = load i32, i32* %20, align 4
  %114 = load i8*, i8** %21, align 8
  %115 = sext i32 %113 to i64
  %116 = getelementptr inbounds i8, i8* %114, i64 %115
  store i8* %116, i8** %21, align 8
  %117 = load i8*, i8** %19, align 8
  %118 = load i8*, i8** %21, align 8
  %119 = load i8, i8* %118, align 1
  %120 = zext i8 %119 to i64
  %121 = getelementptr inbounds i8, i8* %117, i64 %120
  %122 = load i8, i8* %121, align 1
  %123 = zext i8 %122 to i32
  %124 = load i8*, i8** %21, align 8
  %125 = sext i32 %123 to i64
  %126 = getelementptr inbounds i8, i8* %124, i64 %125
  store i8* %126, i8** %21, align 8
  %127 = load i8*, i8** %19, align 8
  %128 = load i8*, i8** %21, align 8
  %129 = load i8, i8* %128, align 1
  %130 = zext i8 %129 to i64
  %131 = getelementptr inbounds i8, i8* %127, i64 %130
  %132 = load i8, i8* %131, align 1
  %133 = zext i8 %132 to i32
  %134 = load i8*, i8** %21, align 8
  %135 = sext i32 %133 to i64
  %136 = getelementptr inbounds i8, i8* %134, i64 %135
  store i8* %136, i8** %21, align 8
  br label %97

137:                                              ; preds = %110
  %138 = load i8*, i8** %21, align 8
  %139 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %139, i8** %21, align 8
  br label %152

140:                                              ; preds = %87, %84
  %141 = load i8*, i8** %19, align 8
  %142 = load i32, i32* %20, align 4
  %143 = load i8*, i8** %21, align 8
  %144 = sext i32 %142 to i64
  %145 = getelementptr inbounds i8, i8* %143, i64 %144
  store i8* %145, i8** %21, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 -1
  %147 = load i8, i8* %146, align 1
  store i8 %147, i8* %18, align 1
  %148 = zext i8 %147 to i64
  %149 = getelementptr inbounds i8, i8* %141, i64 %148
  %150 = load i8, i8* %149, align 1
  %151 = zext i8 %150 to i32
  store i32 %151, i32* %20, align 4
  br label %152

152:                                              ; preds = %140, %137
  %153 = load i32, i32* %20, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %152
  br label %75

156:                                              ; preds = %152
  %157 = load i8*, i8** %21, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 -1
  store i8* %158, i8** %14, align 8
  %159 = load %struct.trie**, %struct.trie*** %11, align 8
  %160 = load i8, i8* %18, align 1
  %161 = zext i8 %160 to i64
  %162 = getelementptr inbounds %struct.trie*, %struct.trie** %159, i64 %161
  %163 = load %struct.trie*, %struct.trie** %162, align 8
  store %struct.trie* %163, %struct.trie** %12, align 8
  %164 = load %struct.trie*, %struct.trie** %12, align 8
  %165 = getelementptr inbounds %struct.trie, %struct.trie* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %156
  %169 = load i8*, i8** %14, align 8
  store i8* %169, i8** %16, align 8
  %170 = load %struct.trie*, %struct.trie** %12, align 8
  store %struct.trie* %170, %struct.trie** %13, align 8
  br label %171

171:                                              ; preds = %168, %156
  %172 = load %struct.trie*, %struct.trie** %12, align 8
  %173 = getelementptr inbounds %struct.trie, %struct.trie* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  store i32 %174, i32* %20, align 4
  br label %175

175:                                              ; preds = %248, %171
  %176 = load i8*, i8** %14, align 8
  %177 = load i8*, i8** %7, align 8
  %178 = icmp ugt i8* %176, %177
  br i1 %178, label %179, label %252

179:                                              ; preds = %175
  %180 = load i8*, i8** %24, align 8
  %181 = icmp ne i8* %180, null
  br i1 %181, label %182, label %191

182:                                              ; preds = %179
  %183 = load i8*, i8** %24, align 8
  %184 = load i8*, i8** %14, align 8
  %185 = getelementptr inbounds i8, i8* %184, i32 -1
  store i8* %185, i8** %14, align 8
  %186 = load i8, i8* %185, align 1
  %187 = zext i8 %186 to i64
  %188 = getelementptr inbounds i8, i8* %183, i64 %187
  %189 = load i8, i8* %188, align 1
  %190 = sext i8 %189 to i32
  br label %196

191:                                              ; preds = %179
  %192 = load i8*, i8** %14, align 8
  %193 = getelementptr inbounds i8, i8* %192, i32 -1
  store i8* %193, i8** %14, align 8
  %194 = load i8, i8* %193, align 1
  %195 = sext i8 %194 to i32
  br label %196

196:                                              ; preds = %191, %182
  %197 = phi i32 [ %190, %182 ], [ %195, %191 ]
  %198 = trunc i32 %197 to i8
  store i8 %198, i8* %18, align 1
  %199 = load %struct.trie*, %struct.trie** %12, align 8
  %200 = getelementptr inbounds %struct.trie, %struct.trie* %199, i32 0, i32 3
  %201 = load %struct.tree*, %struct.tree** %200, align 8
  store %struct.tree* %201, %struct.tree** %23, align 8
  br label %202

202:                                              ; preds = %231, %196
  %203 = load %struct.tree*, %struct.tree** %23, align 8
  %204 = icmp ne %struct.tree* %203, null
  br i1 %204, label %205, label %213

205:                                              ; preds = %202
  %206 = load i8, i8* %18, align 1
  %207 = zext i8 %206 to i32
  %208 = load %struct.tree*, %struct.tree** %23, align 8
  %209 = getelementptr inbounds %struct.tree, %struct.tree* %208, i32 0, i32 0
  %210 = load i8, i8* %209, align 8
  %211 = zext i8 %210 to i32
  %212 = icmp ne i32 %207, %211
  br label %213

213:                                              ; preds = %205, %202
  %214 = phi i1 [ false, %202 ], [ %212, %205 ]
  br i1 %214, label %215, label %232

215:                                              ; preds = %213
  %216 = load i8, i8* %18, align 1
  %217 = zext i8 %216 to i32
  %218 = load %struct.tree*, %struct.tree** %23, align 8
  %219 = getelementptr inbounds %struct.tree, %struct.tree* %218, i32 0, i32 0
  %220 = load i8, i8* %219, align 8
  %221 = zext i8 %220 to i32
  %222 = icmp slt i32 %217, %221
  br i1 %222, label %223, label %227

223:                                              ; preds = %215
  %224 = load %struct.tree*, %struct.tree** %23, align 8
  %225 = getelementptr inbounds %struct.tree, %struct.tree* %224, i32 0, i32 3
  %226 = load %struct.tree*, %struct.tree** %225, align 8
  store %struct.tree* %226, %struct.tree** %23, align 8
  br label %231

227:                                              ; preds = %215
  %228 = load %struct.tree*, %struct.tree** %23, align 8
  %229 = getelementptr inbounds %struct.tree, %struct.tree* %228, i32 0, i32 2
  %230 = load %struct.tree*, %struct.tree** %229, align 8
  store %struct.tree* %230, %struct.tree** %23, align 8
  br label %231

231:                                              ; preds = %227, %223
  br label %202

232:                                              ; preds = %213
  %233 = load %struct.tree*, %struct.tree** %23, align 8
  %234 = icmp ne %struct.tree* %233, null
  br i1 %234, label %235, label %247

235:                                              ; preds = %232
  %236 = load %struct.tree*, %struct.tree** %23, align 8
  %237 = getelementptr inbounds %struct.tree, %struct.tree* %236, i32 0, i32 1
  %238 = load %struct.trie*, %struct.trie** %237, align 8
  store %struct.trie* %238, %struct.trie** %12, align 8
  %239 = load %struct.trie*, %struct.trie** %12, align 8
  %240 = getelementptr inbounds %struct.trie, %struct.trie* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %246

243:                                              ; preds = %235
  %244 = load i8*, i8** %14, align 8
  store i8* %244, i8** %16, align 8
  %245 = load %struct.trie*, %struct.trie** %12, align 8
  store %struct.trie* %245, %struct.trie** %13, align 8
  br label %246

246:                                              ; preds = %243, %235
  br label %248

247:                                              ; preds = %232
  br label %252

248:                                              ; preds = %246
  %249 = load %struct.trie*, %struct.trie** %12, align 8
  %250 = getelementptr inbounds %struct.trie, %struct.trie* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  store i32 %251, i32* %20, align 4
  br label %175

252:                                              ; preds = %247, %175
  %253 = load i8*, i8** %16, align 8
  %254 = icmp ne i8* %253, null
  br i1 %254, label %255, label %256

255:                                              ; preds = %252
  br label %258

256:                                              ; preds = %252
  br label %75

257:                                              ; preds = %75
  store i64 -1, i64* %5, align 8
  br label %450

258:                                              ; preds = %410, %255, %53
  %259 = load i8*, i8** %15, align 8
  %260 = load i8*, i8** %16, align 8
  %261 = ptrtoint i8* %259 to i64
  %262 = ptrtoint i8* %260 to i64
  %263 = sub i64 %261, %262
  %264 = load %struct.kwset*, %struct.kwset** %10, align 8
  %265 = getelementptr inbounds %struct.kwset, %struct.kwset* %264, i32 0, i32 3
  %266 = load i32, i32* %265, align 8
  %267 = sext i32 %266 to i64
  %268 = icmp sgt i64 %263, %267
  br i1 %268, label %269, label %276

269:                                              ; preds = %258
  %270 = load i8*, i8** %16, align 8
  %271 = load %struct.kwset*, %struct.kwset** %10, align 8
  %272 = getelementptr inbounds %struct.kwset, %struct.kwset* %271, i32 0, i32 3
  %273 = load i32, i32* %272, align 8
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i8, i8* %270, i64 %274
  store i8* %275, i8** %15, align 8
  br label %276

276:                                              ; preds = %269, %258
  store i8* null, i8** %17, align 8
  store i32 1, i32* %20, align 4
  br label %277

277:                                              ; preds = %416, %309, %299, %276
  %278 = load i8*, i8** %15, align 8
  %279 = load i8*, i8** %21, align 8
  %280 = ptrtoint i8* %278 to i64
  %281 = ptrtoint i8* %279 to i64
  %282 = sub i64 %280, %281
  %283 = load i32, i32* %20, align 4
  %284 = sext i32 %283 to i64
  %285 = icmp sge i64 %282, %284
  br i1 %285, label %286, label %417

286:                                              ; preds = %277
  %287 = load i8*, i8** %19, align 8
  %288 = load i32, i32* %20, align 4
  %289 = load i8*, i8** %21, align 8
  %290 = sext i32 %288 to i64
  %291 = getelementptr inbounds i8, i8* %289, i64 %290
  store i8* %291, i8** %21, align 8
  %292 = getelementptr inbounds i8, i8* %291, i64 -1
  %293 = load i8, i8* %292, align 1
  store i8 %293, i8* %18, align 1
  %294 = zext i8 %293 to i64
  %295 = getelementptr inbounds i8, i8* %287, i64 %294
  %296 = load i8, i8* %295, align 1
  %297 = zext i8 %296 to i32
  store i32 %297, i32* %20, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %300

299:                                              ; preds = %286
  br label %277

300:                                              ; preds = %286
  %301 = load i8*, i8** %21, align 8
  %302 = getelementptr inbounds i8, i8* %301, i64 -1
  store i8* %302, i8** %14, align 8
  %303 = load %struct.trie**, %struct.trie*** %11, align 8
  %304 = load i8, i8* %18, align 1
  %305 = zext i8 %304 to i64
  %306 = getelementptr inbounds %struct.trie*, %struct.trie** %303, i64 %305
  %307 = load %struct.trie*, %struct.trie** %306, align 8
  store %struct.trie* %307, %struct.trie** %12, align 8
  %308 = icmp ne %struct.trie* %307, null
  br i1 %308, label %310, label %309

309:                                              ; preds = %300
  store i32 1, i32* %20, align 4
  br label %277

310:                                              ; preds = %300
  %311 = load %struct.trie*, %struct.trie** %12, align 8
  %312 = getelementptr inbounds %struct.trie, %struct.trie* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %322

315:                                              ; preds = %310
  %316 = load i8*, i8** %14, align 8
  %317 = load i8*, i8** %16, align 8
  %318 = icmp ule i8* %316, %317
  br i1 %318, label %319, label %322

319:                                              ; preds = %315
  %320 = load i8*, i8** %14, align 8
  store i8* %320, i8** %17, align 8
  %321 = load %struct.trie*, %struct.trie** %12, align 8
  store %struct.trie* %321, %struct.trie** %13, align 8
  br label %322

322:                                              ; preds = %319, %315, %310
  %323 = load %struct.trie*, %struct.trie** %12, align 8
  %324 = getelementptr inbounds %struct.trie, %struct.trie* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 4
  store i32 %325, i32* %20, align 4
  br label %326

326:                                              ; preds = %403, %322
  %327 = load i8*, i8** %14, align 8
  %328 = load i8*, i8** %7, align 8
  %329 = icmp ugt i8* %327, %328
  br i1 %329, label %330, label %407

330:                                              ; preds = %326
  %331 = load i8*, i8** %24, align 8
  %332 = icmp ne i8* %331, null
  br i1 %332, label %333, label %342

333:                                              ; preds = %330
  %334 = load i8*, i8** %24, align 8
  %335 = load i8*, i8** %14, align 8
  %336 = getelementptr inbounds i8, i8* %335, i32 -1
  store i8* %336, i8** %14, align 8
  %337 = load i8, i8* %336, align 1
  %338 = zext i8 %337 to i64
  %339 = getelementptr inbounds i8, i8* %334, i64 %338
  %340 = load i8, i8* %339, align 1
  %341 = sext i8 %340 to i32
  br label %347

342:                                              ; preds = %330
  %343 = load i8*, i8** %14, align 8
  %344 = getelementptr inbounds i8, i8* %343, i32 -1
  store i8* %344, i8** %14, align 8
  %345 = load i8, i8* %344, align 1
  %346 = sext i8 %345 to i32
  br label %347

347:                                              ; preds = %342, %333
  %348 = phi i32 [ %341, %333 ], [ %346, %342 ]
  %349 = trunc i32 %348 to i8
  store i8 %349, i8* %18, align 1
  %350 = load %struct.trie*, %struct.trie** %12, align 8
  %351 = getelementptr inbounds %struct.trie, %struct.trie* %350, i32 0, i32 3
  %352 = load %struct.tree*, %struct.tree** %351, align 8
  store %struct.tree* %352, %struct.tree** %23, align 8
  br label %353

353:                                              ; preds = %382, %347
  %354 = load %struct.tree*, %struct.tree** %23, align 8
  %355 = icmp ne %struct.tree* %354, null
  br i1 %355, label %356, label %364

356:                                              ; preds = %353
  %357 = load i8, i8* %18, align 1
  %358 = zext i8 %357 to i32
  %359 = load %struct.tree*, %struct.tree** %23, align 8
  %360 = getelementptr inbounds %struct.tree, %struct.tree* %359, i32 0, i32 0
  %361 = load i8, i8* %360, align 8
  %362 = zext i8 %361 to i32
  %363 = icmp ne i32 %358, %362
  br label %364

364:                                              ; preds = %356, %353
  %365 = phi i1 [ false, %353 ], [ %363, %356 ]
  br i1 %365, label %366, label %383

366:                                              ; preds = %364
  %367 = load i8, i8* %18, align 1
  %368 = zext i8 %367 to i32
  %369 = load %struct.tree*, %struct.tree** %23, align 8
  %370 = getelementptr inbounds %struct.tree, %struct.tree* %369, i32 0, i32 0
  %371 = load i8, i8* %370, align 8
  %372 = zext i8 %371 to i32
  %373 = icmp slt i32 %368, %372
  br i1 %373, label %374, label %378

374:                                              ; preds = %366
  %375 = load %struct.tree*, %struct.tree** %23, align 8
  %376 = getelementptr inbounds %struct.tree, %struct.tree* %375, i32 0, i32 3
  %377 = load %struct.tree*, %struct.tree** %376, align 8
  store %struct.tree* %377, %struct.tree** %23, align 8
  br label %382

378:                                              ; preds = %366
  %379 = load %struct.tree*, %struct.tree** %23, align 8
  %380 = getelementptr inbounds %struct.tree, %struct.tree* %379, i32 0, i32 2
  %381 = load %struct.tree*, %struct.tree** %380, align 8
  store %struct.tree* %381, %struct.tree** %23, align 8
  br label %382

382:                                              ; preds = %378, %374
  br label %353

383:                                              ; preds = %364
  %384 = load %struct.tree*, %struct.tree** %23, align 8
  %385 = icmp ne %struct.tree* %384, null
  br i1 %385, label %386, label %402

386:                                              ; preds = %383
  %387 = load %struct.tree*, %struct.tree** %23, align 8
  %388 = getelementptr inbounds %struct.tree, %struct.tree* %387, i32 0, i32 1
  %389 = load %struct.trie*, %struct.trie** %388, align 8
  store %struct.trie* %389, %struct.trie** %12, align 8
  %390 = load %struct.trie*, %struct.trie** %12, align 8
  %391 = getelementptr inbounds %struct.trie, %struct.trie* %390, i32 0, i32 0
  %392 = load i32, i32* %391, align 8
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %394, label %401

394:                                              ; preds = %386
  %395 = load i8*, i8** %14, align 8
  %396 = load i8*, i8** %16, align 8
  %397 = icmp ule i8* %395, %396
  br i1 %397, label %398, label %401

398:                                              ; preds = %394
  %399 = load i8*, i8** %14, align 8
  store i8* %399, i8** %17, align 8
  %400 = load %struct.trie*, %struct.trie** %12, align 8
  store %struct.trie* %400, %struct.trie** %13, align 8
  br label %401

401:                                              ; preds = %398, %394, %386
  br label %403

402:                                              ; preds = %383
  br label %407

403:                                              ; preds = %401
  %404 = load %struct.trie*, %struct.trie** %12, align 8
  %405 = getelementptr inbounds %struct.trie, %struct.trie* %404, i32 0, i32 1
  %406 = load i32, i32* %405, align 4
  store i32 %406, i32* %20, align 4
  br label %326

407:                                              ; preds = %402, %326
  %408 = load i8*, i8** %17, align 8
  %409 = icmp ne i8* %408, null
  br i1 %409, label %410, label %412

410:                                              ; preds = %407
  %411 = load i8*, i8** %17, align 8
  store i8* %411, i8** %16, align 8
  br label %258

412:                                              ; preds = %407
  %413 = load i32, i32* %20, align 4
  %414 = icmp ne i32 %413, 0
  br i1 %414, label %416, label %415

415:                                              ; preds = %412
  store i32 1, i32* %20, align 4
  br label %416

416:                                              ; preds = %415, %412
  br label %277

417:                                              ; preds = %277
  %418 = load %struct.kwsmatch*, %struct.kwsmatch** %9, align 8
  %419 = icmp ne %struct.kwsmatch* %418, null
  br i1 %419, label %420, label %444

420:                                              ; preds = %417
  %421 = load %struct.trie*, %struct.trie** %13, align 8
  %422 = getelementptr inbounds %struct.trie, %struct.trie* %421, i32 0, i32 0
  %423 = load i32, i32* %422, align 8
  %424 = sdiv i32 %423, 2
  %425 = load %struct.kwsmatch*, %struct.kwsmatch** %9, align 8
  %426 = getelementptr inbounds %struct.kwsmatch, %struct.kwsmatch* %425, i32 0, i32 0
  store i32 %424, i32* %426, align 8
  %427 = load i8*, i8** %16, align 8
  %428 = load i8*, i8** %7, align 8
  %429 = ptrtoint i8* %427 to i64
  %430 = ptrtoint i8* %428 to i64
  %431 = sub i64 %429, %430
  %432 = trunc i64 %431 to i32
  %433 = load %struct.kwsmatch*, %struct.kwsmatch** %9, align 8
  %434 = getelementptr inbounds %struct.kwsmatch, %struct.kwsmatch* %433, i32 0, i32 1
  %435 = load i32*, i32** %434, align 8
  %436 = getelementptr inbounds i32, i32* %435, i64 0
  store i32 %432, i32* %436, align 4
  %437 = load %struct.trie*, %struct.trie** %13, align 8
  %438 = getelementptr inbounds %struct.trie, %struct.trie* %437, i32 0, i32 2
  %439 = load i32, i32* %438, align 8
  %440 = load %struct.kwsmatch*, %struct.kwsmatch** %9, align 8
  %441 = getelementptr inbounds %struct.kwsmatch, %struct.kwsmatch* %440, i32 0, i32 2
  %442 = load i32*, i32** %441, align 8
  %443 = getelementptr inbounds i32, i32* %442, i64 0
  store i32 %439, i32* %443, align 4
  br label %444

444:                                              ; preds = %420, %417
  %445 = load i8*, i8** %16, align 8
  %446 = load i8*, i8** %7, align 8
  %447 = ptrtoint i8* %445 to i64
  %448 = ptrtoint i8* %446 to i64
  %449 = sub i64 %447, %448
  store i64 %449, i64* %5, align 8
  br label %450

450:                                              ; preds = %444, %257, %32
  %451 = load i64, i64* %5, align 8
  ret i64 %451
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
