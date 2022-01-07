; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_sentence.c_v_sentenceb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_sentence.c_v_sentenceb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_15__, %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_15__ = type { i32, i64 }
%struct.TYPE_14__ = type { i32, i64 }
%struct.TYPE_17__ = type { i32, i64, i64, i32 }

@VC_C1SET = common dso_local global i32 0, align 4
@CS_EMP = common dso_local global i64 0, align 8
@CS_EOL = common dso_local global i64 0, align 8
@CS_SOF = common dso_local global i64 0, align 8
@DBG_FATAL = common dso_local global i32 0, align 4
@VM_LMODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v_sentenceb(i32* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_17__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %353

24:                                               ; preds = %17, %2
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 0
  store i32 %28, i32* %29, align 8
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 1
  store i64 %33, i64* %34, align 8
  %35 = load i32*, i32** %4, align 8
  %36 = call i64 @cs_init(i32* %35, %struct.TYPE_17__* %6)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %24
  store i32 1, i32* %3, align 4
  br label %353

39:                                               ; preds = %24
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %41 = load i32, i32* @VC_C1SET, align 4
  %42 = call i64 @F_ISSET(%struct.TYPE_16__* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  br label %49

48:                                               ; preds = %39
  br label %49

49:                                               ; preds = %48, %44
  %50 = phi i32 [ %47, %44 ], [ 1, %48 ]
  store i32 %50, i32* %10, align 4
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @CS_EMP, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %74

55:                                               ; preds = %49
  %56 = load i32*, i32** %4, align 8
  %57 = call i64 @cs_bblank(i32* %56, %struct.TYPE_17__* %6)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  store i32 1, i32* %3, align 4
  br label %353

60:                                               ; preds = %55
  br label %61

61:                                               ; preds = %72, %60
  %62 = load i32*, i32** %4, align 8
  %63 = call i64 @cs_prev(i32* %62, %struct.TYPE_17__* %6)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  store i32 1, i32* %3, align 4
  br label %353

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @CS_EOL, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %73

72:                                               ; preds = %66
  br label %61

73:                                               ; preds = %71
  br label %102

74:                                               ; preds = %49
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %101

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = call i64 @isblank(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %101, label %83

83:                                               ; preds = %78
  br label %84

84:                                               ; preds = %99, %83
  %85 = load i32*, i32** %4, align 8
  %86 = call i64 @cs_prev(i32* %85, %struct.TYPE_17__* %6)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  store i32 1, i32* %3, align 4
  br label %353

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %98, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = call i64 @isblank(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %93, %89
  br label %100

99:                                               ; preds = %93
  br label %84

100:                                              ; preds = %98
  br label %101

101:                                              ; preds = %100, %78, %74
  br label %102

102:                                              ; preds = %101, %73
  store i32 0, i32* %11, align 4
  br label %103

103:                                              ; preds = %281, %146, %135, %119, %102
  %104 = load i32*, i32** %4, align 8
  %105 = call i64 @cs_prev(i32* %104, %struct.TYPE_17__* %6)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %103
  store i32 1, i32* %3, align 4
  br label %353

108:                                              ; preds = %103
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @CS_SOF, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %108
  br label %282

114:                                              ; preds = %108
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @CS_EOL, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %114
  store i32 1, i32* %11, align 4
  br label %103

120:                                              ; preds = %114
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @CS_EMP, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %136

125:                                              ; preds = %120
  %126 = load i32, i32* %10, align 4
  %127 = add nsw i32 %126, -1
  store i32 %127, i32* %10, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %125
  br label %148

130:                                              ; preds = %125
  %131 = load i32*, i32** %4, align 8
  %132 = call i64 @cs_bblank(i32* %131, %struct.TYPE_17__* %6)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %130
  store i32 1, i32* %3, align 4
  br label %353

135:                                              ; preds = %130
  store i32 0, i32* %11, align 4
  br label %103

136:                                              ; preds = %120
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  switch i32 %138, label %251 [
    i32 46, label %139
    i32 63, label %139
    i32 33, label %139
    i32 9, label %250
  ]

139:                                              ; preds = %136, %136, %136
  %140 = load i32, i32* %11, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %139
  %143 = load i32, i32* %10, align 4
  %144 = add nsw i32 %143, -1
  store i32 %144, i32* %10, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %142, %139
  store i32 0, i32* %11, align 4
  br label %103

147:                                              ; preds = %142
  br label %148

148:                                              ; preds = %147, %129
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  store i32 %150, i32* %7, align 4
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  store i64 %152, i64* %9, align 8
  br label %153

153:                                              ; preds = %181, %148
  %154 = load i32*, i32** %4, align 8
  %155 = call i32 @cs_next(i32* %154, %struct.TYPE_17__* %6)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %153
  store i32 1, i32* %3, align 4
  br label %353

158:                                              ; preds = %153
  br label %159

159:                                              ; preds = %158
  %160 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %181, label %163

163:                                              ; preds = %159
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 3
  %165 = load i32, i32* %164, align 8
  %166 = icmp eq i32 %165, 41
  br i1 %166, label %179, label %167

167:                                              ; preds = %163
  %168 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 3
  %169 = load i32, i32* %168, align 8
  %170 = icmp eq i32 %169, 93
  br i1 %170, label %179, label %171

171:                                              ; preds = %167
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 3
  %173 = load i32, i32* %172, align 8
  %174 = icmp eq i32 %173, 34
  br i1 %174, label %179, label %175

175:                                              ; preds = %171
  %176 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 3
  %177 = load i32, i32* %176, align 8
  %178 = icmp eq i32 %177, 39
  br label %179

179:                                              ; preds = %175, %171, %167, %163
  %180 = phi i1 [ true, %171 ], [ true, %167 ], [ true, %163 ], [ %178, %175 ]
  br label %181

181:                                              ; preds = %179, %159
  %182 = phi i1 [ false, %159 ], [ %180, %179 ]
  br i1 %182, label %153, label %183

183:                                              ; preds = %181
  %184 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 2
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %192, label %187

187:                                              ; preds = %183
  %188 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 3
  %189 = load i32, i32* %188, align 8
  %190 = call i64 @isblank(i32 %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %197

192:                                              ; preds = %187, %183
  %193 = load i32*, i32** %4, align 8
  %194 = call i32 @cs_fblank(i32* %193, %struct.TYPE_17__* %6)
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %192
  store i32 1, i32* %3, align 4
  br label %353

197:                                              ; preds = %192, %187
  %198 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %198, i32 0, i32 3
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = icmp ne i32 %201, %203
  br i1 %204, label %213, label %205

205:                                              ; preds = %197
  %206 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %206, i32 0, i32 3
  %208 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = icmp ne i64 %209, %211
  br i1 %212, label %213, label %214

213:                                              ; preds = %205, %197
  br label %283

214:                                              ; preds = %205
  br label %215

215:                                              ; preds = %235, %225, %214
  %216 = load i32*, i32** %4, align 8
  %217 = call i64 @cs_prev(i32* %216, %struct.TYPE_17__* %6)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %215
  store i32 1, i32* %3, align 4
  br label %353

220:                                              ; preds = %215
  %221 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 2
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* @CS_EOL, align 8
  %224 = icmp eq i64 %222, %223
  br i1 %224, label %225, label %226

225:                                              ; preds = %220
  br label %215

226:                                              ; preds = %220
  %227 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 2
  %228 = load i64, i64* %227, align 8
  %229 = icmp eq i64 %228, 0
  br i1 %229, label %230, label %236

230:                                              ; preds = %226
  %231 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 3
  %232 = load i32, i32* %231, align 8
  %233 = call i64 @isblank(i32 %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %236

235:                                              ; preds = %230
  br label %215

236:                                              ; preds = %230, %226
  br label %237

237:                                              ; preds = %236
  %238 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 2
  %239 = load i64, i64* %238, align 8
  %240 = load i64, i64* @CS_EMP, align 8
  %241 = icmp eq i64 %239, %240
  br i1 %241, label %242, label %243

242:                                              ; preds = %237
  br label %283

243:                                              ; preds = %237
  %244 = load i32, i32* %10, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %10, align 4
  %246 = load i32, i32* %7, align 4
  %247 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 0
  store i32 %246, i32* %247, align 8
  %248 = load i64, i64* %9, align 8
  %249 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 1
  store i64 %248, i64* %249, align 8
  store i32 0, i32* %11, align 4
  br label %281

250:                                              ; preds = %136
  store i32 1, i32* %11, align 4
  br label %281

251:                                              ; preds = %136
  %252 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 2
  %253 = load i64, i64* %252, align 8
  %254 = load i64, i64* @CS_EOL, align 8
  %255 = icmp eq i64 %253, %254
  br i1 %255, label %277, label %256

256:                                              ; preds = %251
  %257 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 3
  %258 = load i32, i32* %257, align 8
  %259 = call i64 @isblank(i32 %258)
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %277, label %261

261:                                              ; preds = %256
  %262 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 3
  %263 = load i32, i32* %262, align 8
  %264 = icmp eq i32 %263, 41
  br i1 %264, label %277, label %265

265:                                              ; preds = %261
  %266 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 3
  %267 = load i32, i32* %266, align 8
  %268 = icmp eq i32 %267, 93
  br i1 %268, label %277, label %269

269:                                              ; preds = %265
  %270 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 3
  %271 = load i32, i32* %270, align 8
  %272 = icmp eq i32 %271, 34
  br i1 %272, label %277, label %273

273:                                              ; preds = %269
  %274 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 3
  %275 = load i32, i32* %274, align 8
  %276 = icmp eq i32 %275, 39
  br label %277

277:                                              ; preds = %273, %269, %265, %261, %256, %251
  %278 = phi i1 [ true, %269 ], [ true, %265 ], [ true, %261 ], [ true, %256 ], [ true, %251 ], [ %276, %273 ]
  %279 = zext i1 %278 to i64
  %280 = select i1 %278, i32 1, i32 0
  store i32 %280, i32* %11, align 4
  br label %281

281:                                              ; preds = %277, %250, %243
  br label %103

282:                                              ; preds = %113
  br label %283

283:                                              ; preds = %282, %242, %213
  %284 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %287 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %286, i32 0, i32 1
  %288 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %287, i32 0, i32 0
  store i32 %285, i32* %288, align 8
  %289 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 1
  %290 = load i64, i64* %289, align 8
  %291 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %292 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %291, i32 0, i32 1
  %293 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %292, i32 0, i32 1
  store i64 %290, i64* %293, align 8
  %294 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %295 = call i64 @ISMOTION(%struct.TYPE_16__* %294)
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %346

297:                                              ; preds = %283
  %298 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %299 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %298, i32 0, i32 3
  %300 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %299, i32 0, i32 1
  %301 = load i64, i64* %300, align 8
  %302 = icmp eq i64 %301, 0
  br i1 %302, label %303, label %339

303:                                              ; preds = %297
  %304 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 2
  %305 = load i64, i64* %304, align 8
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %313, label %307

307:                                              ; preds = %303
  %308 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %309 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %308, i32 0, i32 1
  %310 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %309, i32 0, i32 1
  %311 = load i64, i64* %310, align 8
  %312 = icmp eq i64 %311, 0
  br i1 %312, label %313, label %339

313:                                              ; preds = %307, %303
  %314 = load i32*, i32** %4, align 8
  %315 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %316 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %315, i32 0, i32 3
  %317 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  %319 = add nsw i32 %318, -1
  store i32 %319, i32* %317, align 8
  %320 = load i32, i32* @DBG_FATAL, align 4
  %321 = call i64 @db_get(i32* %314, i32 %319, i32 %320, i32* null, i64* %8)
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %324

323:                                              ; preds = %313
  store i32 1, i32* %3, align 4
  br label %353

324:                                              ; preds = %313
  %325 = load i64, i64* %8, align 8
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %327, label %330

327:                                              ; preds = %324
  %328 = load i64, i64* %8, align 8
  %329 = sub i64 %328, 1
  br label %331

330:                                              ; preds = %324
  br label %331

331:                                              ; preds = %330, %327
  %332 = phi i64 [ %329, %327 ], [ 0, %330 ]
  %333 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %334 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %333, i32 0, i32 3
  %335 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %334, i32 0, i32 1
  store i64 %332, i64* %335, align 8
  %336 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %337 = load i32, i32* @VM_LMODE, align 4
  %338 = call i32 @F_SET(%struct.TYPE_16__* %336, i32 %337)
  br label %345

339:                                              ; preds = %307, %297
  %340 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %341 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %340, i32 0, i32 3
  %342 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %341, i32 0, i32 1
  %343 = load i64, i64* %342, align 8
  %344 = add i64 %343, -1
  store i64 %344, i64* %342, align 8
  br label %345

345:                                              ; preds = %339, %331
  br label %346

346:                                              ; preds = %345, %283
  %347 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %348 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %347, i32 0, i32 2
  %349 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %350 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %349, i32 0, i32 1
  %351 = bitcast %struct.TYPE_15__* %348 to i8*
  %352 = bitcast %struct.TYPE_15__* %350 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %351, i8* align 8 %352, i64 16, i1 false)
  store i32 0, i32* %3, align 4
  br label %353

353:                                              ; preds = %346, %323, %219, %196, %157, %134, %107, %88, %65, %59, %38, %23
  %354 = load i32, i32* %3, align 4
  ret i32 %354
}

declare dso_local i64 @cs_init(i32*, %struct.TYPE_17__*) #1

declare dso_local i64 @F_ISSET(%struct.TYPE_16__*, i32) #1

declare dso_local i64 @cs_bblank(i32*, %struct.TYPE_17__*) #1

declare dso_local i64 @cs_prev(i32*, %struct.TYPE_17__*) #1

declare dso_local i64 @isblank(i32) #1

declare dso_local i32 @cs_next(i32*, %struct.TYPE_17__*) #1

declare dso_local i32 @cs_fblank(i32*, %struct.TYPE_17__*) #1

declare dso_local i64 @ISMOTION(%struct.TYPE_16__*) #1

declare dso_local i64 @db_get(i32*, i32, i32, i32*, i64*) #1

declare dso_local i32 @F_SET(%struct.TYPE_16__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
