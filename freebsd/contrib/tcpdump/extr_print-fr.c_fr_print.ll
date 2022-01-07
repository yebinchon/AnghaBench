; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-fr.c_fr_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-fr.c_fr_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64*, i32, i64, i32 }

@.str = private unnamed_addr constant [23 x i8] c"Q.922, invalid address\00", align 1
@LLC_UI = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"UI %02x! \00", align 1
@ETHERTYPE_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"Pad! \00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"No pad! \00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"[|fr]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fr_print(%struct.TYPE_14__* %0, i64* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca [4 x i32], align 16
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %16 = load i64*, i64** %6, align 8
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %18 = load i64, i64* %7, align 8
  %19 = call i32 @parse_q922_addr(%struct.TYPE_14__* %15, i64* %16, i64* %10, i64* %11, i32* %17, i64 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %314

23:                                               ; preds = %3
  %24 = load i32, i32* %8, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %28 = call i32 @ND_PRINT(%struct.TYPE_14__* bitcast ([23 x i8]* @.str to %struct.TYPE_14__*))
  store i64 0, i64* %4, align 8
  br label %317

29:                                               ; preds = %23
  %30 = load i64*, i64** %6, align 8
  %31 = load i64, i64* %11, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @ND_TCHECK(i64 %33)
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* %11, align 8
  %37 = add i64 %36, 1
  %38 = icmp ult i64 %35, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  br label %314

40:                                               ; preds = %29
  %41 = load i64*, i64** %6, align 8
  %42 = load i64, i64* %11, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @LLC_UI, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %131

47:                                               ; preds = %40
  %48 = load i64, i64* %10, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %131

50:                                               ; preds = %47
  %51 = load i64*, i64** %6, align 8
  %52 = load i64, i64* %11, align 8
  %53 = getelementptr inbounds i64, i64* %51, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @ND_TTEST2(i64 %54, i32 2)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %50
  %58 = load i64, i64* %7, align 8
  %59 = load i64, i64* %11, align 8
  %60 = add i64 %59, 2
  %61 = icmp ult i64 %58, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %57, %50
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %64 = load i64*, i64** %6, align 8
  %65 = load i64, i64* %11, align 8
  %66 = getelementptr inbounds i64, i64* %64, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to %struct.TYPE_14__*
  %69 = call i32 @ND_PRINT(%struct.TYPE_14__* %68)
  br label %130

70:                                               ; preds = %57
  %71 = load i64*, i64** %6, align 8
  %72 = load i64, i64* %11, align 8
  %73 = getelementptr inbounds i64, i64* %71, i64 %72
  %74 = call i32 @EXTRACT_16BITS(i64* %73)
  store i32 %74, i32* %9, align 4
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %70
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %81 = load i64, i64* %7, align 8
  %82 = load i64, i64* %11, align 8
  %83 = load i64, i64* %10, align 8
  %84 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @fr_hdr_print(%struct.TYPE_14__* %80, i64 %81, i64 %82, i64 %83, i32* %84, i32 %85)
  br label %87

87:                                               ; preds = %79, %70
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %89 = load i32, i32* %9, align 4
  %90 = load i64*, i64** %6, align 8
  %91 = load i64, i64* %11, align 8
  %92 = getelementptr inbounds i64, i64* %90, i64 %91
  %93 = load i32, i32* @ETHERTYPE_LEN, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %92, i64 %94
  %96 = load i64, i64* %7, align 8
  %97 = load i64, i64* %11, align 8
  %98 = sub i64 %96, %97
  %99 = load i32, i32* @ETHERTYPE_LEN, align 4
  %100 = sext i32 %99 to i64
  %101 = sub i64 %98, %100
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 0
  %104 = load i64*, i64** %103, align 8
  %105 = load i64*, i64** %6, align 8
  %106 = ptrtoint i64* %104 to i64
  %107 = ptrtoint i64* %105 to i64
  %108 = sub i64 %106, %107
  %109 = sdiv exact i64 %108, 8
  %110 = load i64, i64* %11, align 8
  %111 = sub i64 %109, %110
  %112 = load i32, i32* @ETHERTYPE_LEN, align 4
  %113 = sext i32 %112 to i64
  %114 = sub i64 %111, %113
  %115 = trunc i64 %114 to i32
  %116 = call i64 @ethertype_print(%struct.TYPE_14__* %88, i32 %89, i64* %95, i64 %101, i32 %115, i32* null, i32* null)
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %126

118:                                              ; preds = %87
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %120 = load i64*, i64** %6, align 8
  %121 = load i64, i64* %11, align 8
  %122 = getelementptr inbounds i64, i64* %120, i64 %121
  %123 = load i64, i64* %122, align 8
  %124 = inttoptr i64 %123 to %struct.TYPE_14__*
  %125 = call i32 @ND_PRINT(%struct.TYPE_14__* %124)
  br label %129

126:                                              ; preds = %87
  %127 = load i64, i64* %11, align 8
  %128 = add i64 %127, 2
  store i64 %128, i64* %4, align 8
  br label %317

129:                                              ; preds = %118
  br label %130

130:                                              ; preds = %129, %62
  br label %131

131:                                              ; preds = %130, %47, %40
  %132 = load i64*, i64** %6, align 8
  %133 = load i64, i64* %11, align 8
  %134 = add i64 %133, 1
  %135 = getelementptr inbounds i64, i64* %132, i64 %134
  %136 = load i64, i64* %135, align 8
  %137 = call i32 @ND_TCHECK(i64 %136)
  %138 = load i64, i64* %7, align 8
  %139 = load i64, i64* %11, align 8
  %140 = add i64 %139, 2
  %141 = icmp ult i64 %138, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %131
  br label %314

143:                                              ; preds = %131
  %144 = load i64*, i64** %6, align 8
  %145 = load i64, i64* %11, align 8
  %146 = add i64 %145, 1
  %147 = getelementptr inbounds i64, i64* %144, i64 %146
  %148 = load i64, i64* %147, align 8
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %150, label %161

150:                                              ; preds = %143
  %151 = load i64, i64* %11, align 8
  %152 = icmp ne i64 %151, 3
  br i1 %152, label %153, label %156

153:                                              ; preds = %150
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %155 = call i32 @ND_PRINT(%struct.TYPE_14__* bitcast ([6 x i8]* @.str.2 to %struct.TYPE_14__*))
  br label %156

156:                                              ; preds = %153, %150
  %157 = load i64, i64* %11, align 8
  %158 = add i64 %157, 1
  %159 = add i64 %158, 1
  %160 = add i64 %159, 1
  store i64 %160, i64* %13, align 8
  br label %171

161:                                              ; preds = %143
  %162 = load i64, i64* %11, align 8
  %163 = icmp eq i64 %162, 3
  br i1 %163, label %164, label %167

164:                                              ; preds = %161
  %165 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %166 = call i32 @ND_PRINT(%struct.TYPE_14__* bitcast ([9 x i8]* @.str.3 to %struct.TYPE_14__*))
  br label %167

167:                                              ; preds = %164, %161
  %168 = load i64, i64* %11, align 8
  %169 = add i64 %168, 1
  %170 = add i64 %169, 1
  store i64 %170, i64* %13, align 8
  br label %171

171:                                              ; preds = %167, %156
  %172 = load i64*, i64** %6, align 8
  %173 = load i64, i64* %13, align 8
  %174 = sub i64 %173, 1
  %175 = getelementptr inbounds i64, i64* %172, i64 %174
  %176 = load i64, i64* %175, align 8
  %177 = call i32 @ND_TCHECK(i64 %176)
  %178 = load i64, i64* %7, align 8
  %179 = load i64, i64* %13, align 8
  %180 = icmp ult i64 %178, %179
  br i1 %180, label %181, label %182

181:                                              ; preds = %171
  br label %314

182:                                              ; preds = %171
  %183 = load i64*, i64** %6, align 8
  %184 = load i64, i64* %13, align 8
  %185 = sub i64 %184, 1
  %186 = getelementptr inbounds i64, i64* %183, i64 %185
  %187 = load i64, i64* %186, align 8
  %188 = trunc i64 %187 to i32
  store i32 %188, i32* %12, align 4
  %189 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 2
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %201

193:                                              ; preds = %182
  %194 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %195 = load i64, i64* %7, align 8
  %196 = load i64, i64* %11, align 8
  %197 = load i64, i64* %10, align 8
  %198 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %199 = load i32, i32* %12, align 4
  %200 = call i32 @fr_hdr_print(%struct.TYPE_14__* %194, i64 %195, i64 %196, i64 %197, i32* %198, i32 %199)
  br label %201

201:                                              ; preds = %193, %182
  %202 = load i64, i64* %13, align 8
  %203 = load i64*, i64** %6, align 8
  %204 = getelementptr inbounds i64, i64* %203, i64 %202
  store i64* %204, i64** %6, align 8
  %205 = load i64, i64* %13, align 8
  %206 = load i64, i64* %7, align 8
  %207 = sub i64 %206, %205
  store i64 %207, i64* %7, align 8
  %208 = load i32, i32* %12, align 4
  switch i32 %208, label %287 [
    i32 134, label %209
    i32 133, label %214
    i32 136, label %219
    i32 135, label %219
    i32 132, label %219
    i32 128, label %226
    i32 129, label %272
    i32 131, label %277
    i32 130, label %282
  ]

209:                                              ; preds = %201
  %210 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %211 = load i64*, i64** %6, align 8
  %212 = load i64, i64* %7, align 8
  %213 = call i32 @ip_print(%struct.TYPE_14__* %210, i64* %211, i64 %212)
  br label %312

214:                                              ; preds = %201
  %215 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %216 = load i64*, i64** %6, align 8
  %217 = load i64, i64* %7, align 8
  %218 = call i32 @ip6_print(%struct.TYPE_14__* %215, i64* %216, i64 %217)
  br label %312

219:                                              ; preds = %201, %201, %201
  %220 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %221 = load i64*, i64** %6, align 8
  %222 = getelementptr inbounds i64, i64* %221, i64 -1
  %223 = load i64, i64* %7, align 8
  %224 = add i64 %223, 1
  %225 = call i32 @isoclns_print(%struct.TYPE_14__* %220, i64* %222, i64 %224)
  br label %312

226:                                              ; preds = %201
  %227 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %228 = load i64*, i64** %6, align 8
  %229 = load i64, i64* %7, align 8
  %230 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %230, i32 0, i32 0
  %232 = load i64*, i64** %231, align 8
  %233 = load i64*, i64** %6, align 8
  %234 = ptrtoint i64* %232 to i64
  %235 = ptrtoint i64* %233 to i64
  %236 = sub i64 %234, %235
  %237 = sdiv exact i64 %236, 8
  %238 = trunc i64 %237 to i32
  %239 = call i32 @snap_print(%struct.TYPE_14__* %227, i64* %228, i64 %229, i32 %238, i32* null, i32* null, i32 0)
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %271

241:                                              ; preds = %226
  %242 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %242, i32 0, i32 2
  %244 = load i64, i64* %243, align 8
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %256, label %246

246:                                              ; preds = %241
  %247 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %248 = load i64, i64* %7, align 8
  %249 = load i64, i64* %13, align 8
  %250 = add i64 %248, %249
  %251 = load i64, i64* %13, align 8
  %252 = load i64, i64* %10, align 8
  %253 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %254 = load i32, i32* %12, align 4
  %255 = call i32 @fr_hdr_print(%struct.TYPE_14__* %247, i64 %250, i64 %251, i64 %252, i32* %253, i32 %254)
  br label %256

256:                                              ; preds = %246, %241
  %257 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %258 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %257, i32 0, i32 3
  %259 = load i32, i32* %258, align 8
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %270, label %261

261:                                              ; preds = %256
  %262 = load i64*, i64** %6, align 8
  %263 = load i64, i64* %13, align 8
  %264 = sub i64 0, %263
  %265 = getelementptr inbounds i64, i64* %262, i64 %264
  %266 = load i64, i64* %7, align 8
  %267 = load i64, i64* %13, align 8
  %268 = add i64 %266, %267
  %269 = call i32 @ND_DEFAULTPRINT(i64* %265, i64 %268)
  br label %270

270:                                              ; preds = %261, %256
  br label %271

271:                                              ; preds = %270, %226
  br label %312

272:                                              ; preds = %201
  %273 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %274 = load i64*, i64** %6, align 8
  %275 = load i64, i64* %7, align 8
  %276 = call i32 @q933_print(%struct.TYPE_14__* %273, i64* %274, i64 %275)
  br label %312

277:                                              ; preds = %201
  %278 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %279 = load i64*, i64** %6, align 8
  %280 = load i64, i64* %7, align 8
  %281 = call i32 @frf15_print(%struct.TYPE_14__* %278, i64* %279, i64 %280)
  br label %312

282:                                              ; preds = %201
  %283 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %284 = load i64*, i64** %6, align 8
  %285 = load i64, i64* %7, align 8
  %286 = call i32 @ppp_print(%struct.TYPE_14__* %283, i64* %284, i64 %285)
  br label %312

287:                                              ; preds = %201
  %288 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %289 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %288, i32 0, i32 2
  %290 = load i64, i64* %289, align 8
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %302, label %292

292:                                              ; preds = %287
  %293 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %294 = load i64, i64* %7, align 8
  %295 = load i64, i64* %13, align 8
  %296 = add i64 %294, %295
  %297 = load i64, i64* %11, align 8
  %298 = load i64, i64* %10, align 8
  %299 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %300 = load i32, i32* %12, align 4
  %301 = call i32 @fr_hdr_print(%struct.TYPE_14__* %293, i64 %296, i64 %297, i64 %298, i32* %299, i32 %300)
  br label %302

302:                                              ; preds = %292, %287
  %303 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %304 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 8
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %311, label %307

307:                                              ; preds = %302
  %308 = load i64*, i64** %6, align 8
  %309 = load i64, i64* %7, align 8
  %310 = call i32 @ND_DEFAULTPRINT(i64* %308, i64 %309)
  br label %311

311:                                              ; preds = %307, %302
  br label %312

312:                                              ; preds = %311, %282, %277, %272, %271, %219, %214, %209
  %313 = load i64, i64* %13, align 8
  store i64 %313, i64* %4, align 8
  br label %317

314:                                              ; preds = %181, %142, %39, %22
  %315 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %316 = call i32 @ND_PRINT(%struct.TYPE_14__* bitcast ([6 x i8]* @.str.4 to %struct.TYPE_14__*))
  store i64 0, i64* %4, align 8
  br label %317

317:                                              ; preds = %314, %312, %126, %26
  %318 = load i64, i64* %4, align 8
  ret i64 %318
}

declare dso_local i32 @parse_q922_addr(%struct.TYPE_14__*, i64*, i64*, i64*, i32*, i64) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_14__*) #1

declare dso_local i32 @ND_TCHECK(i64) #1

declare dso_local i32 @ND_TTEST2(i64, i32) #1

declare dso_local i32 @EXTRACT_16BITS(i64*) #1

declare dso_local i32 @fr_hdr_print(%struct.TYPE_14__*, i64, i64, i64, i32*, i32) #1

declare dso_local i64 @ethertype_print(%struct.TYPE_14__*, i32, i64*, i64, i32, i32*, i32*) #1

declare dso_local i32 @ip_print(%struct.TYPE_14__*, i64*, i64) #1

declare dso_local i32 @ip6_print(%struct.TYPE_14__*, i64*, i64) #1

declare dso_local i32 @isoclns_print(%struct.TYPE_14__*, i64*, i64) #1

declare dso_local i32 @snap_print(%struct.TYPE_14__*, i64*, i64, i32, i32*, i32*, i32) #1

declare dso_local i32 @ND_DEFAULTPRINT(i64*, i64) #1

declare dso_local i32 @q933_print(%struct.TYPE_14__*, i64*, i64) #1

declare dso_local i32 @frf15_print(%struct.TYPE_14__*, i64*, i64) #1

declare dso_local i32 @ppp_print(%struct.TYPE_14__*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
