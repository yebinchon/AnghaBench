; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_word.c_fword.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_word.c_fword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_13__, %struct.TYPE_13__, %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_12__ = type { i64, i64, i64, i32 }

@VC_C1SET = common dso_local global i32 0, align 4
@CS_EMP = common dso_local global i64 0, align 8
@BIGWORD = common dso_local global i32 0, align 4
@CS_EOF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_11__*, i32)* @fword to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fword(i32* %0, %struct.TYPE_11__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_12__, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %12 = load i32, i32* @VC_C1SET, align 4
  %13 = call i64 @F_ISSET(%struct.TYPE_11__* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  br label %20

19:                                               ; preds = %3
  br label %20

20:                                               ; preds = %19, %15
  %21 = phi i32 [ %18, %15 ], [ 1, %19 ]
  store i32 %21, i32* %10, align 4
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  store i64 %25, i64* %26, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 1
  store i64 %30, i64* %31, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = call i64 @cs_init(i32* %32, %struct.TYPE_12__* %9)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %20
  store i32 1, i32* %4, align 4
  br label %338

36:                                               ; preds = %20
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @CS_EMP, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %50, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %96

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @ISBLANK(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %96

50:                                               ; preds = %45, %36
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %52 = call i64 @ISMOTION(%struct.TYPE_11__* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %88

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @CS_EMP, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %88

59:                                               ; preds = %54
  %60 = load i32, i32* %10, align 4
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %88

62:                                               ; preds = %59
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @ISCMD(i32 %65, i8 signext 99)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  store i32 0, i32* %4, align 4
  br label %338

69:                                               ; preds = %62
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = call i64 @ISCMD(i32 %72, i8 signext 100)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %69
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = call i64 @ISCMD(i32 %78, i8 signext 121)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %75, %69
  %82 = load i32*, i32** %5, align 8
  %83 = call i64 @cs_fspace(i32* %82, %struct.TYPE_12__* %9)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  store i32 1, i32* %4, align 4
  br label %338

86:                                               ; preds = %81
  br label %272

87:                                               ; preds = %75
  br label %88

88:                                               ; preds = %87, %59, %54, %50
  %89 = load i32*, i32** %5, align 8
  %90 = call i64 @cs_fblank(i32* %89, %struct.TYPE_12__* %9)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  store i32 1, i32* %4, align 4
  br label %338

93:                                               ; preds = %88
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %94, -1
  store i32 %95, i32* %10, align 4
  br label %96

96:                                               ; preds = %93, %45, %41
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* @BIGWORD, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %166

100:                                              ; preds = %96
  br label %101

101:                                              ; preds = %164, %100
  %102 = load i32, i32* %10, align 4
  %103 = add nsw i32 %102, -1
  store i32 %103, i32* %10, align 4
  %104 = icmp ne i32 %102, 0
  br i1 %104, label %105, label %165

105:                                              ; preds = %101
  br label %106

106:                                              ; preds = %127, %105
  %107 = load i32*, i32** %5, align 8
  %108 = call i64 @cs_next(i32* %107, %struct.TYPE_12__* %9)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  store i32 1, i32* %4, align 4
  br label %338

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @CS_EOF, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %111
  br label %272

117:                                              ; preds = %111
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = call i64 @ISBLANK(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %121, %117
  br label %128

127:                                              ; preds = %121
  br label %106

128:                                              ; preds = %126
  %129 = load i32, i32* %10, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %153

131:                                              ; preds = %128
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %133 = call i64 @ISMOTION(%struct.TYPE_11__* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %153

135:                                              ; preds = %131
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 8
  %139 = call i64 @ISCMD(i32 %138, i8 signext 100)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %147, label %141

141:                                              ; preds = %135
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 8
  %145 = call i64 @ISCMD(i32 %144, i8 signext 121)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %141, %135
  %148 = load i32*, i32** %5, align 8
  %149 = call i64 @cs_fspace(i32* %148, %struct.TYPE_12__* %9)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %147
  store i32 1, i32* %4, align 4
  br label %338

152:                                              ; preds = %147, %141
  br label %165

153:                                              ; preds = %131, %128
  %154 = load i32*, i32** %5, align 8
  %155 = call i64 @cs_fblank(i32* %154, %struct.TYPE_12__* %9)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %153
  store i32 1, i32* %4, align 4
  br label %338

158:                                              ; preds = %153
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @CS_EOF, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %164

163:                                              ; preds = %158
  br label %272

164:                                              ; preds = %158
  br label %101

165:                                              ; preds = %152, %101
  br label %271

166:                                              ; preds = %96
  br label %167

167:                                              ; preds = %269, %166
  %168 = load i32, i32* %10, align 4
  %169 = add nsw i32 %168, -1
  store i32 %169, i32* %10, align 4
  %170 = icmp ne i32 %168, 0
  br i1 %170, label %171, label %270

171:                                              ; preds = %167
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 2
  %173 = load i64, i64* %172, align 8
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %175, label %180

175:                                              ; preds = %171
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 3
  %177 = load i32, i32* %176, align 8
  %178 = call i64 @inword(i32 %177)
  %179 = icmp ne i64 %178, 0
  br label %180

180:                                              ; preds = %175, %171
  %181 = phi i1 [ false, %171 ], [ %179, %175 ]
  %182 = zext i1 %181 to i64
  %183 = select i1 %181, i32 0, i32 1
  store i32 %183, i32* %8, align 4
  br label %184

184:                                              ; preds = %222, %180
  %185 = load i32*, i32** %5, align 8
  %186 = call i64 @cs_next(i32* %185, %struct.TYPE_12__* %9)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %184
  store i32 1, i32* %4, align 4
  br label %338

189:                                              ; preds = %184
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 2
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @CS_EOF, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %194, label %195

194:                                              ; preds = %189
  br label %272

195:                                              ; preds = %189
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 2
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %204, label %199

199:                                              ; preds = %195
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 3
  %201 = load i32, i32* %200, align 8
  %202 = call i64 @ISBLANK(i32 %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %199, %195
  br label %223

205:                                              ; preds = %199
  %206 = load i32, i32* %8, align 4
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %215

208:                                              ; preds = %205
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 3
  %210 = load i32, i32* %209, align 8
  %211 = call i64 @inword(i32 %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %214, label %213

213:                                              ; preds = %208
  br label %223

214:                                              ; preds = %208
  br label %222

215:                                              ; preds = %205
  %216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 3
  %217 = load i32, i32* %216, align 8
  %218 = call i64 @inword(i32 %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %215
  br label %223

221:                                              ; preds = %215
  br label %222

222:                                              ; preds = %221, %214
  br label %184

223:                                              ; preds = %220, %213, %204
  %224 = load i32, i32* %10, align 4
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %248

226:                                              ; preds = %223
  %227 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %228 = call i64 @ISMOTION(%struct.TYPE_11__* %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %248

230:                                              ; preds = %226
  %231 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %232 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %231, i32 0, i32 4
  %233 = load i32, i32* %232, align 8
  %234 = call i64 @ISCMD(i32 %233, i8 signext 100)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %242, label %236

236:                                              ; preds = %230
  %237 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %238 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %237, i32 0, i32 4
  %239 = load i32, i32* %238, align 8
  %240 = call i64 @ISCMD(i32 %239, i8 signext 121)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %247

242:                                              ; preds = %236, %230
  %243 = load i32*, i32** %5, align 8
  %244 = call i64 @cs_fspace(i32* %243, %struct.TYPE_12__* %9)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %247

246:                                              ; preds = %242
  store i32 1, i32* %4, align 4
  br label %338

247:                                              ; preds = %242, %236
  br label %270

248:                                              ; preds = %226, %223
  %249 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 2
  %250 = load i64, i64* %249, align 8
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %257, label %252

252:                                              ; preds = %248
  %253 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 3
  %254 = load i32, i32* %253, align 8
  %255 = call i64 @ISBLANK(i32 %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %263

257:                                              ; preds = %252, %248
  %258 = load i32*, i32** %5, align 8
  %259 = call i64 @cs_fblank(i32* %258, %struct.TYPE_12__* %9)
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %262

261:                                              ; preds = %257
  store i32 1, i32* %4, align 4
  br label %338

262:                                              ; preds = %257
  br label %263

263:                                              ; preds = %262, %252
  %264 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 2
  %265 = load i64, i64* %264, align 8
  %266 = load i64, i64* @CS_EOF, align 8
  %267 = icmp eq i64 %265, %266
  br i1 %267, label %268, label %269

268:                                              ; preds = %263
  br label %272

269:                                              ; preds = %263
  br label %167

270:                                              ; preds = %247, %167
  br label %271

271:                                              ; preds = %270, %165
  br label %272

272:                                              ; preds = %271, %268, %194, %163, %116, %86
  %273 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %274 = call i64 @ISMOTION(%struct.TYPE_11__* %273)
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %297, label %276

276:                                              ; preds = %272
  %277 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %280 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %279, i32 0, i32 2
  %281 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %280, i32 0, i32 0
  %282 = load i64, i64* %281, align 8
  %283 = icmp eq i64 %278, %282
  br i1 %283, label %284, label %297

284:                                              ; preds = %276
  %285 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 1
  %286 = load i64, i64* %285, align 8
  %287 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %288 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %287, i32 0, i32 2
  %289 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %288, i32 0, i32 1
  %290 = load i64, i64* %289, align 8
  %291 = icmp eq i64 %286, %290
  br i1 %291, label %292, label %297

292:                                              ; preds = %284
  %293 = load i32*, i32** %5, align 8
  %294 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %295 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %294, i32 0, i32 2
  %296 = call i32 @v_eof(i32* %293, %struct.TYPE_13__* %295)
  store i32 1, i32* %4, align 4
  br label %338

297:                                              ; preds = %284, %276, %272
  %298 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %299 = load i64, i64* %298, align 8
  %300 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %301 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %300, i32 0, i32 1
  %302 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %301, i32 0, i32 0
  store i64 %299, i64* %302, align 8
  %303 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 1
  %304 = load i64, i64* %303, align 8
  %305 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %306 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %305, i32 0, i32 1
  %307 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %306, i32 0, i32 1
  store i64 %304, i64* %307, align 8
  %308 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %309 = call i64 @ISMOTION(%struct.TYPE_11__* %308)
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %311, label %321

311:                                              ; preds = %297
  %312 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 2
  %313 = load i64, i64* %312, align 8
  %314 = icmp eq i64 %313, 0
  br i1 %314, label %315, label %321

315:                                              ; preds = %311
  %316 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %317 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %316, i32 0, i32 1
  %318 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %317, i32 0, i32 1
  %319 = load i64, i64* %318, align 8
  %320 = add nsw i64 %319, -1
  store i64 %320, i64* %318, align 8
  br label %321

321:                                              ; preds = %315, %311, %297
  %322 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %323 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %322, i32 0, i32 3
  %324 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %325 = call i64 @ISMOTION(%struct.TYPE_11__* %324)
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %327, label %332

327:                                              ; preds = %321
  %328 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %329 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %328, i32 0, i32 2
  %330 = bitcast %struct.TYPE_13__* %323 to i8*
  %331 = bitcast %struct.TYPE_13__* %329 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %330, i8* align 8 %331, i64 16, i1 false)
  br label %337

332:                                              ; preds = %321
  %333 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %334 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %333, i32 0, i32 1
  %335 = bitcast %struct.TYPE_13__* %323 to i8*
  %336 = bitcast %struct.TYPE_13__* %334 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %335, i8* align 8 %336, i64 16, i1 false)
  br label %337

337:                                              ; preds = %332, %327
  store i32 0, i32* %4, align 4
  br label %338

338:                                              ; preds = %337, %292, %261, %246, %188, %157, %151, %110, %92, %85, %68, %35
  %339 = load i32, i32* %4, align 4
  ret i32 %339
}

declare dso_local i64 @F_ISSET(%struct.TYPE_11__*, i32) #1

declare dso_local i64 @cs_init(i32*, %struct.TYPE_12__*) #1

declare dso_local i64 @ISBLANK(i32) #1

declare dso_local i64 @ISMOTION(%struct.TYPE_11__*) #1

declare dso_local i64 @ISCMD(i32, i8 signext) #1

declare dso_local i64 @cs_fspace(i32*, %struct.TYPE_12__*) #1

declare dso_local i64 @cs_fblank(i32*, %struct.TYPE_12__*) #1

declare dso_local i64 @cs_next(i32*, %struct.TYPE_12__*) #1

declare dso_local i64 @inword(i32) #1

declare dso_local i32 @v_eof(i32*, %struct.TYPE_13__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
