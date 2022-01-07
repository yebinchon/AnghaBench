; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_sigcrypt.c_canonical_compare_byfield.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_sigcrypt.c_canonical_compare_byfield.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packed_rrset_data = type { i32*, i64** }
%struct.TYPE_3__ = type { i64*, i64 }

@LDNS_RDF_TYPE_DNAME = common dso_local global i64 0, align 8
@LDNS_RDF_TYPE_STR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.packed_rrset_data*, %struct.TYPE_3__*, i64, i64)* @canonical_compare_byfield to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @canonical_compare_byfield(%struct.packed_rrset_data* %0, %struct.TYPE_3__* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.packed_rrset_data*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.packed_rrset_data* %0, %struct.packed_rrset_data** %6, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 -1, i32* %10, align 4
  store i32 -1, i32* %11, align 4
  %22 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %6, align 8
  %23 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %22, i32 0, i32 1
  %24 = load i64**, i64*** %23, align 8
  %25 = load i64, i64* %8, align 8
  %26 = getelementptr inbounds i64*, i64** %24, i64 %25
  %27 = load i64*, i64** %26, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 2
  store i64* %28, i64** %12, align 8
  %29 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %6, align 8
  %30 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %29, i32 0, i32 1
  %31 = load i64**, i64*** %30, align 8
  %32 = load i64, i64* %9, align 8
  %33 = getelementptr inbounds i64*, i64** %31, i64 %32
  %34 = load i64*, i64** %33, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 2
  store i64* %35, i64** %13, align 8
  %36 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %6, align 8
  %37 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* %8, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 %41, 2
  %43 = sext i32 %42 to i64
  store i64 %43, i64* %14, align 8
  %44 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %6, align 8
  %45 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* %9, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = sub nsw i32 %49, 2
  %51 = sext i32 %50 to i64
  store i64 %51, i64* %15, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i64 0, i64* %18, align 8
  store i64 0, i64* %19, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %20, align 4
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %21, align 4
  br label %60

60:                                               ; preds = %298, %4
  %61 = load i64, i64* %14, align 8
  %62 = icmp ugt i64 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %60
  %64 = load i64, i64* %15, align 8
  %65 = icmp ugt i64 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %63
  %67 = load i32, i32* %20, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %66
  %70 = load i32, i32* %21, align 4
  %71 = icmp sgt i32 %70, 0
  br label %72

72:                                               ; preds = %69, %66
  %73 = phi i1 [ true, %66 ], [ %71, %69 ]
  br label %74

74:                                               ; preds = %72, %63, %60
  %75 = phi i1 [ false, %63 ], [ false, %60 ], [ %73, %72 ]
  br i1 %75, label %76, label %303

76:                                               ; preds = %74
  %77 = load i32, i32* %16, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %76
  %80 = load i64, i64* %18, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %79
  %83 = load i64*, i64** %12, align 8
  %84 = load i64, i64* %83, align 8
  %85 = trunc i64 %84 to i32
  %86 = call i64 @tolower(i32 %85)
  br label %90

87:                                               ; preds = %79, %76
  %88 = load i64*, i64** %12, align 8
  %89 = load i64, i64* %88, align 8
  br label %90

90:                                               ; preds = %87, %82
  %91 = phi i64 [ %86, %82 ], [ %89, %87 ]
  %92 = load i32, i32* %17, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %90
  %95 = load i64, i64* %19, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %94
  %98 = load i64*, i64** %13, align 8
  %99 = load i64, i64* %98, align 8
  %100 = trunc i64 %99 to i32
  %101 = call i64 @tolower(i32 %100)
  br label %105

102:                                              ; preds = %94, %90
  %103 = load i64*, i64** %13, align 8
  %104 = load i64, i64* %103, align 8
  br label %105

105:                                              ; preds = %102, %97
  %106 = phi i64 [ %101, %97 ], [ %104, %102 ]
  %107 = icmp ne i64 %91, %106
  br i1 %107, label %108, label %142

108:                                              ; preds = %105
  %109 = load i32, i32* %16, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %108
  %112 = load i64, i64* %18, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %111
  %115 = load i64*, i64** %12, align 8
  %116 = load i64, i64* %115, align 8
  %117 = trunc i64 %116 to i32
  %118 = call i64 @tolower(i32 %117)
  br label %122

119:                                              ; preds = %111, %108
  %120 = load i64*, i64** %12, align 8
  %121 = load i64, i64* %120, align 8
  br label %122

122:                                              ; preds = %119, %114
  %123 = phi i64 [ %118, %114 ], [ %121, %119 ]
  %124 = load i32, i32* %17, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %134

126:                                              ; preds = %122
  %127 = load i64, i64* %19, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %126
  %130 = load i64*, i64** %13, align 8
  %131 = load i64, i64* %130, align 8
  %132 = trunc i64 %131 to i32
  %133 = call i64 @tolower(i32 %132)
  br label %137

134:                                              ; preds = %126, %122
  %135 = load i64*, i64** %13, align 8
  %136 = load i64, i64* %135, align 8
  br label %137

137:                                              ; preds = %134, %129
  %138 = phi i64 [ %133, %129 ], [ %136, %134 ]
  %139 = icmp slt i64 %123, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %137
  store i32 -1, i32* %5, align 4
  br label %345

141:                                              ; preds = %137
  store i32 1, i32* %5, align 4
  br label %345

142:                                              ; preds = %105
  %143 = load i64, i64* %14, align 8
  %144 = add i64 %143, -1
  store i64 %144, i64* %14, align 8
  %145 = load i64, i64* %15, align 8
  %146 = add i64 %145, -1
  store i64 %146, i64* %15, align 8
  %147 = load i64, i64* %18, align 8
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %149, label %219

149:                                              ; preds = %142
  %150 = load i32, i32* %16, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %166

152:                                              ; preds = %149
  %153 = load i64*, i64** %12, align 8
  %154 = load i64, i64* %153, align 8
  store i64 %154, i64* %18, align 8
  %155 = load i64, i64* %18, align 8
  %156 = icmp eq i64 %155, 0
  br i1 %156, label %157, label %165

157:                                              ; preds = %152
  store i32 0, i32* %16, align 4
  %158 = load i32, i32* %20, align 4
  %159 = add nsw i32 %158, -1
  store i32 %159, i32* %20, align 4
  %160 = load i32, i32* %20, align 4
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %157
  %163 = load i64, i64* %14, align 8
  store i64 %163, i64* %18, align 8
  br label %164

164:                                              ; preds = %162, %157
  br label %165

165:                                              ; preds = %164, %152
  br label %218

166:                                              ; preds = %149
  %167 = load i32, i32* %10, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %10, align 4
  %169 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 0
  %171 = load i64*, i64** %170, align 8
  %172 = load i32, i32* %10, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i64, i64* %171, i64 %173
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @LDNS_RDF_TYPE_DNAME, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %192

178:                                              ; preds = %166
  store i32 1, i32* %16, align 4
  %179 = load i64*, i64** %12, align 8
  %180 = load i64, i64* %179, align 8
  store i64 %180, i64* %18, align 8
  %181 = load i64, i64* %18, align 8
  %182 = icmp eq i64 %181, 0
  br i1 %182, label %183, label %191

183:                                              ; preds = %178
  store i32 0, i32* %16, align 4
  %184 = load i32, i32* %20, align 4
  %185 = add nsw i32 %184, -1
  store i32 %185, i32* %20, align 4
  %186 = load i32, i32* %20, align 4
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %183
  %189 = load i64, i64* %14, align 8
  store i64 %189, i64* %18, align 8
  br label %190

190:                                              ; preds = %188, %183
  br label %191

191:                                              ; preds = %190, %178
  br label %217

192:                                              ; preds = %166
  %193 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 0
  %195 = load i64*, i64** %194, align 8
  %196 = load i32, i32* %10, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i64, i64* %195, i64 %197
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @LDNS_RDF_TYPE_STR, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %202, label %205

202:                                              ; preds = %192
  %203 = load i64*, i64** %12, align 8
  %204 = load i64, i64* %203, align 8
  store i64 %204, i64* %18, align 8
  br label %216

205:                                              ; preds = %192
  %206 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %206, i32 0, i32 0
  %208 = load i64*, i64** %207, align 8
  %209 = load i32, i32* %10, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i64, i64* %208, i64 %210
  %212 = load i64, i64* %211, align 8
  %213 = call i32 @get_rdf_size(i64 %212)
  %214 = sub nsw i32 %213, 1
  %215 = sext i32 %214 to i64
  store i64 %215, i64* %18, align 8
  br label %216

216:                                              ; preds = %205, %202
  br label %217

217:                                              ; preds = %216, %191
  br label %218

218:                                              ; preds = %217, %165
  br label %222

219:                                              ; preds = %142
  %220 = load i64, i64* %18, align 8
  %221 = add i64 %220, -1
  store i64 %221, i64* %18, align 8
  br label %222

222:                                              ; preds = %219, %218
  %223 = load i64, i64* %19, align 8
  %224 = icmp eq i64 %223, 0
  br i1 %224, label %225, label %295

225:                                              ; preds = %222
  %226 = load i32, i32* %17, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %242

228:                                              ; preds = %225
  %229 = load i64*, i64** %13, align 8
  %230 = load i64, i64* %229, align 8
  store i64 %230, i64* %19, align 8
  %231 = load i64, i64* %19, align 8
  %232 = icmp eq i64 %231, 0
  br i1 %232, label %233, label %241

233:                                              ; preds = %228
  store i32 0, i32* %17, align 4
  %234 = load i32, i32* %21, align 4
  %235 = add nsw i32 %234, -1
  store i32 %235, i32* %21, align 4
  %236 = load i32, i32* %21, align 4
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %238, label %240

238:                                              ; preds = %233
  %239 = load i64, i64* %15, align 8
  store i64 %239, i64* %19, align 8
  br label %240

240:                                              ; preds = %238, %233
  br label %241

241:                                              ; preds = %240, %228
  br label %294

242:                                              ; preds = %225
  %243 = load i32, i32* %11, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %11, align 4
  %245 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %246 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %245, i32 0, i32 0
  %247 = load i64*, i64** %246, align 8
  %248 = load i32, i32* %11, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i64, i64* %247, i64 %249
  %251 = load i64, i64* %250, align 8
  %252 = load i64, i64* @LDNS_RDF_TYPE_DNAME, align 8
  %253 = icmp eq i64 %251, %252
  br i1 %253, label %254, label %268

254:                                              ; preds = %242
  store i32 1, i32* %17, align 4
  %255 = load i64*, i64** %13, align 8
  %256 = load i64, i64* %255, align 8
  store i64 %256, i64* %19, align 8
  %257 = load i64, i64* %19, align 8
  %258 = icmp eq i64 %257, 0
  br i1 %258, label %259, label %267

259:                                              ; preds = %254
  store i32 0, i32* %17, align 4
  %260 = load i32, i32* %21, align 4
  %261 = add nsw i32 %260, -1
  store i32 %261, i32* %21, align 4
  %262 = load i32, i32* %21, align 4
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %264, label %266

264:                                              ; preds = %259
  %265 = load i64, i64* %15, align 8
  store i64 %265, i64* %19, align 8
  br label %266

266:                                              ; preds = %264, %259
  br label %267

267:                                              ; preds = %266, %254
  br label %293

268:                                              ; preds = %242
  %269 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %270 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %269, i32 0, i32 0
  %271 = load i64*, i64** %270, align 8
  %272 = load i32, i32* %11, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i64, i64* %271, i64 %273
  %275 = load i64, i64* %274, align 8
  %276 = load i64, i64* @LDNS_RDF_TYPE_STR, align 8
  %277 = icmp eq i64 %275, %276
  br i1 %277, label %278, label %281

278:                                              ; preds = %268
  %279 = load i64*, i64** %13, align 8
  %280 = load i64, i64* %279, align 8
  store i64 %280, i64* %19, align 8
  br label %292

281:                                              ; preds = %268
  %282 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %283 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %282, i32 0, i32 0
  %284 = load i64*, i64** %283, align 8
  %285 = load i32, i32* %11, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i64, i64* %284, i64 %286
  %288 = load i64, i64* %287, align 8
  %289 = call i32 @get_rdf_size(i64 %288)
  %290 = sub nsw i32 %289, 1
  %291 = sext i32 %290 to i64
  store i64 %291, i64* %19, align 8
  br label %292

292:                                              ; preds = %281, %278
  br label %293

293:                                              ; preds = %292, %267
  br label %294

294:                                              ; preds = %293, %241
  br label %298

295:                                              ; preds = %222
  %296 = load i64, i64* %19, align 8
  %297 = add i64 %296, -1
  store i64 %297, i64* %19, align 8
  br label %298

298:                                              ; preds = %295, %294
  %299 = load i64*, i64** %12, align 8
  %300 = getelementptr inbounds i64, i64* %299, i32 1
  store i64* %300, i64** %12, align 8
  %301 = load i64*, i64** %13, align 8
  %302 = getelementptr inbounds i64, i64* %301, i32 1
  store i64* %302, i64** %13, align 8
  br label %60

303:                                              ; preds = %74
  %304 = load i64, i64* %14, align 8
  %305 = icmp eq i64 %304, 0
  br i1 %305, label %306, label %310

306:                                              ; preds = %303
  %307 = load i64, i64* %15, align 8
  %308 = icmp eq i64 %307, 0
  br i1 %308, label %309, label %310

309:                                              ; preds = %306
  store i32 0, i32* %5, align 4
  br label %345

310:                                              ; preds = %306, %303
  %311 = load i64, i64* %14, align 8
  %312 = icmp eq i64 %311, 0
  br i1 %312, label %313, label %314

313:                                              ; preds = %310
  store i32 -1, i32* %5, align 4
  br label %345

314:                                              ; preds = %310
  %315 = load i64, i64* %15, align 8
  %316 = icmp eq i64 %315, 0
  br i1 %316, label %317, label %318

317:                                              ; preds = %314
  store i32 1, i32* %5, align 4
  br label %345

318:                                              ; preds = %314
  %319 = load i64*, i64** %12, align 8
  %320 = load i64*, i64** %13, align 8
  %321 = load i64, i64* %14, align 8
  %322 = load i64, i64* %15, align 8
  %323 = icmp ult i64 %321, %322
  br i1 %323, label %324, label %326

324:                                              ; preds = %318
  %325 = load i64, i64* %14, align 8
  br label %328

326:                                              ; preds = %318
  %327 = load i64, i64* %15, align 8
  br label %328

328:                                              ; preds = %326, %324
  %329 = phi i64 [ %325, %324 ], [ %327, %326 ]
  %330 = call i32 @memcmp(i64* %319, i64* %320, i64 %329)
  store i32 %330, i32* %10, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %334

332:                                              ; preds = %328
  %333 = load i32, i32* %10, align 4
  store i32 %333, i32* %5, align 4
  br label %345

334:                                              ; preds = %328
  %335 = load i64, i64* %14, align 8
  %336 = load i64, i64* %15, align 8
  %337 = icmp ult i64 %335, %336
  br i1 %337, label %338, label %339

338:                                              ; preds = %334
  store i32 -1, i32* %5, align 4
  br label %345

339:                                              ; preds = %334
  %340 = load i64, i64* %15, align 8
  %341 = load i64, i64* %14, align 8
  %342 = icmp ult i64 %340, %341
  br i1 %342, label %343, label %344

343:                                              ; preds = %339
  store i32 1, i32* %5, align 4
  br label %345

344:                                              ; preds = %339
  store i32 0, i32* %5, align 4
  br label %345

345:                                              ; preds = %344, %343, %338, %332, %317, %313, %309, %141, %140
  %346 = load i32, i32* %5, align 4
  ret i32 %346
}

declare dso_local i64 @tolower(i32) #1

declare dso_local i32 @get_rdf_size(i64) #1

declare dso_local i32 @memcmp(i64*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
