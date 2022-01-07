; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_printf-pos.c___find_warguments.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_printf-pos.c___find_warguments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.arg = type { i32 }
%struct.typetable = type { i32 }

@MAX_POSARG = common dso_local global i32 0, align 4
@LONGDBL = common dso_local global i32 0, align 4
@SHORTINT = common dso_local global i32 0, align 4
@CHARINT = common dso_local global i32 0, align 4
@INTMAXT = common dso_local global i32 0, align 4
@LONGINT = common dso_local global i32 0, align 4
@LLONGINT = common dso_local global i32 0, align 4
@PTRDIFFT = common dso_local global i32 0, align 4
@SIZET = common dso_local global i32 0, align 4
@T_WINT = common dso_local global i32 0, align 4
@T_INT = common dso_local global i32 0, align 4
@T_LONG_DOUBLE = common dso_local global i32 0, align 4
@T_DOUBLE = common dso_local global i32 0, align 4
@TP_INTMAXT = common dso_local global i32 0, align 4
@TP_PTRDIFFT = common dso_local global i32 0, align 4
@TP_SSIZET = common dso_local global i32 0, align 4
@TP_LLONG = common dso_local global i32 0, align 4
@TP_LONG = common dso_local global i32 0, align 4
@TP_SHORT = common dso_local global i32 0, align 4
@TP_SCHAR = common dso_local global i32 0, align 4
@TP_INT = common dso_local global i32 0, align 4
@TP_VOID = common dso_local global i32 0, align 4
@TP_WCHAR = common dso_local global i32 0, align 4
@TP_CHAR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__find_warguments(i8* %0, i32 %1, %union.arg** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.arg**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.typetable, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %union.arg** %2, %union.arg*** %6, align 8
  %13 = load i8*, i8** %4, align 8
  store i8* %13, i8** %7, align 8
  %14 = call i32 @inittypes(%struct.typetable* %12)
  store i32 0, i32* %10, align 4
  br label %15

15:                                               ; preds = %325, %272, %3
  br label %16

16:                                               ; preds = %27, %15
  %17 = load i8*, i8** %7, align 8
  %18 = load i8, i8* %17, align 1
  store i8 %18, i8* %8, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load i8, i8* %8, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 37
  br label %25

25:                                               ; preds = %21, %16
  %26 = phi i1 [ false, %16 ], [ %24, %21 ]
  br i1 %26, label %27, label %30

27:                                               ; preds = %25
  %28 = load i8*, i8** %7, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %7, align 8
  br label %16

30:                                               ; preds = %25
  %31 = load i8, i8* %8, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %326

35:                                               ; preds = %30
  %36 = load i8*, i8** %7, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %7, align 8
  store i32 0, i32* %11, align 4
  br label %38

38:                                               ; preds = %153, %149, %145, %144, %123, %122, %101, %97, %73, %62, %51, %50, %45, %35
  %39 = load i8*, i8** %7, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %7, align 8
  %41 = load i8, i8* %39, align 1
  store i8 %41, i8* %8, align 1
  br label %42

42:                                               ; preds = %100, %72, %38
  %43 = load i8, i8* %8, align 1
  %44 = sext i8 %43 to i32
  switch i32 %44, label %319 [
    i32 32, label %45
    i32 35, label %45
    i32 42, label %46
    i32 45, label %51
    i32 43, label %51
    i32 39, label %51
    i32 46, label %52
    i32 48, label %73
    i32 49, label %74
    i32 50, label %74
    i32 51, label %74
    i32 52, label %74
    i32 53, label %74
    i32 54, label %74
    i32 55, label %74
    i32 56, label %74
    i32 57, label %74
    i32 76, label %101
    i32 104, label %105
    i32 106, label %123
    i32 108, label %127
    i32 113, label %145
    i32 116, label %149
    i32 122, label %153
    i32 67, label %157
    i32 99, label %161
    i32 68, label %177
    i32 100, label %181
    i32 105, label %181
    i32 97, label %187
    i32 65, label %187
    i32 101, label %187
    i32 69, label %187
    i32 102, label %187
    i32 103, label %187
    i32 71, label %187
    i32 110, label %203
    i32 79, label %273
    i32 111, label %277
    i32 112, label %283
    i32 83, label %289
    i32 115, label %293
    i32 85, label %309
    i32 117, label %313
    i32 88, label %313
    i32 120, label %313
  ]

45:                                               ; preds = %42, %42
  br label %38

46:                                               ; preds = %42
  %47 = call i32 @addwaster(%struct.typetable* %12, i8** %7)
  store i32 %47, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  br label %330

50:                                               ; preds = %46
  br label %38

51:                                               ; preds = %42, %42, %42
  br label %38

52:                                               ; preds = %42
  %53 = load i8*, i8** %7, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %7, align 8
  %55 = load i8, i8* %53, align 1
  store i8 %55, i8* %8, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 42
  br i1 %57, label %58, label %63

58:                                               ; preds = %52
  %59 = call i32 @addwaster(%struct.typetable* %12, i8** %7)
  store i32 %59, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  br label %330

62:                                               ; preds = %58
  br label %38

63:                                               ; preds = %52
  br label %64

64:                                               ; preds = %68, %63
  %65 = load i8, i8* %8, align 1
  %66 = call i32 @is_digit(i8 signext %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load i8*, i8** %7, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %7, align 8
  %71 = load i8, i8* %69, align 1
  store i8 %71, i8* %8, align 1
  br label %64

72:                                               ; preds = %64
  br label %42

73:                                               ; preds = %42
  br label %38

74:                                               ; preds = %42, %42, %42, %42, %42, %42, %42, %42, %42
  store i32 0, i32* %9, align 4
  br label %75

75:                                               ; preds = %89, %74
  %76 = load i32, i32* %9, align 4
  %77 = mul nsw i32 10, %76
  %78 = load i8, i8* %8, align 1
  %79 = call i32 @to_digit(i8 signext %78)
  %80 = add nsw i32 %77, %79
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* @MAX_POSARG, align 4
  %83 = icmp sgt i32 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %75
  store i32 -1, i32* %10, align 4
  br label %330

85:                                               ; preds = %75
  %86 = load i8*, i8** %7, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %7, align 8
  %88 = load i8, i8* %86, align 1
  store i8 %88, i8* %8, align 1
  br label %89

89:                                               ; preds = %85
  %90 = load i8, i8* %8, align 1
  %91 = call i32 @is_digit(i8 signext %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %75, label %93

93:                                               ; preds = %89
  %94 = load i8, i8* %8, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 36
  br i1 %96, label %97, label %100

97:                                               ; preds = %93
  %98 = load i32, i32* %9, align 4
  %99 = getelementptr inbounds %struct.typetable, %struct.typetable* %12, i32 0, i32 0
  store i32 %98, i32* %99, align 4
  br label %38

100:                                              ; preds = %93
  br label %42

101:                                              ; preds = %42
  %102 = load i32, i32* @LONGDBL, align 4
  %103 = load i32, i32* %11, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %11, align 4
  br label %38

105:                                              ; preds = %42
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* @SHORTINT, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %105
  %111 = load i32, i32* @SHORTINT, align 4
  %112 = xor i32 %111, -1
  %113 = load i32, i32* %11, align 4
  %114 = and i32 %113, %112
  store i32 %114, i32* %11, align 4
  %115 = load i32, i32* @CHARINT, align 4
  %116 = load i32, i32* %11, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %11, align 4
  br label %122

118:                                              ; preds = %105
  %119 = load i32, i32* @SHORTINT, align 4
  %120 = load i32, i32* %11, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %11, align 4
  br label %122

122:                                              ; preds = %118, %110
  br label %38

123:                                              ; preds = %42
  %124 = load i32, i32* @INTMAXT, align 4
  %125 = load i32, i32* %11, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %11, align 4
  br label %38

127:                                              ; preds = %42
  %128 = load i32, i32* %11, align 4
  %129 = load i32, i32* @LONGINT, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %140

132:                                              ; preds = %127
  %133 = load i32, i32* @LONGINT, align 4
  %134 = xor i32 %133, -1
  %135 = load i32, i32* %11, align 4
  %136 = and i32 %135, %134
  store i32 %136, i32* %11, align 4
  %137 = load i32, i32* @LLONGINT, align 4
  %138 = load i32, i32* %11, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %11, align 4
  br label %144

140:                                              ; preds = %127
  %141 = load i32, i32* @LONGINT, align 4
  %142 = load i32, i32* %11, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %11, align 4
  br label %144

144:                                              ; preds = %140, %132
  br label %38

145:                                              ; preds = %42
  %146 = load i32, i32* @LLONGINT, align 4
  %147 = load i32, i32* %11, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %11, align 4
  br label %38

149:                                              ; preds = %42
  %150 = load i32, i32* @PTRDIFFT, align 4
  %151 = load i32, i32* %11, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %11, align 4
  br label %38

153:                                              ; preds = %42
  %154 = load i32, i32* @SIZET, align 4
  %155 = load i32, i32* %11, align 4
  %156 = or i32 %155, %154
  store i32 %156, i32* %11, align 4
  br label %38

157:                                              ; preds = %42
  %158 = load i32, i32* @LONGINT, align 4
  %159 = load i32, i32* %11, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %11, align 4
  br label %161

161:                                              ; preds = %42, %157
  %162 = load i32, i32* %11, align 4
  %163 = load i32, i32* @LONGINT, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %161
  %167 = load i32, i32* @T_WINT, align 4
  br label %170

168:                                              ; preds = %161
  %169 = load i32, i32* @T_INT, align 4
  br label %170

170:                                              ; preds = %168, %166
  %171 = phi i32 [ %167, %166 ], [ %169, %168 ]
  %172 = call i32 @addtype(%struct.typetable* %12, i32 %171)
  store i32 %172, i32* %10, align 4
  %173 = load i32, i32* %10, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %170
  br label %330

176:                                              ; preds = %170
  br label %325

177:                                              ; preds = %42
  %178 = load i32, i32* @LONGINT, align 4
  %179 = load i32, i32* %11, align 4
  %180 = or i32 %179, %178
  store i32 %180, i32* %11, align 4
  br label %181

181:                                              ; preds = %42, %42, %177
  %182 = load i32, i32* %11, align 4
  %183 = call i32 @addsarg(%struct.typetable* %12, i32 %182)
  store i32 %183, i32* %10, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %181
  br label %330

186:                                              ; preds = %181
  br label %325

187:                                              ; preds = %42, %42, %42, %42, %42, %42, %42
  %188 = load i32, i32* %11, align 4
  %189 = load i32, i32* @LONGDBL, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %187
  %193 = load i32, i32* @T_LONG_DOUBLE, align 4
  br label %196

194:                                              ; preds = %187
  %195 = load i32, i32* @T_DOUBLE, align 4
  br label %196

196:                                              ; preds = %194, %192
  %197 = phi i32 [ %193, %192 ], [ %195, %194 ]
  %198 = call i32 @addtype(%struct.typetable* %12, i32 %197)
  store i32 %198, i32* %10, align 4
  %199 = load i32, i32* %10, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %196
  br label %330

202:                                              ; preds = %196
  br label %325

203:                                              ; preds = %42
  %204 = load i32, i32* %11, align 4
  %205 = load i32, i32* @INTMAXT, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %203
  %209 = load i32, i32* @TP_INTMAXT, align 4
  %210 = call i32 @addtype(%struct.typetable* %12, i32 %209)
  store i32 %210, i32* %10, align 4
  br label %268

211:                                              ; preds = %203
  %212 = load i32, i32* %11, align 4
  %213 = load i32, i32* @PTRDIFFT, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %219

216:                                              ; preds = %211
  %217 = load i32, i32* @TP_PTRDIFFT, align 4
  %218 = call i32 @addtype(%struct.typetable* %12, i32 %217)
  store i32 %218, i32* %10, align 4
  br label %267

219:                                              ; preds = %211
  %220 = load i32, i32* %11, align 4
  %221 = load i32, i32* @SIZET, align 4
  %222 = and i32 %220, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %227

224:                                              ; preds = %219
  %225 = load i32, i32* @TP_SSIZET, align 4
  %226 = call i32 @addtype(%struct.typetable* %12, i32 %225)
  store i32 %226, i32* %10, align 4
  br label %266

227:                                              ; preds = %219
  %228 = load i32, i32* %11, align 4
  %229 = load i32, i32* @LLONGINT, align 4
  %230 = and i32 %228, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %235

232:                                              ; preds = %227
  %233 = load i32, i32* @TP_LLONG, align 4
  %234 = call i32 @addtype(%struct.typetable* %12, i32 %233)
  store i32 %234, i32* %10, align 4
  br label %265

235:                                              ; preds = %227
  %236 = load i32, i32* %11, align 4
  %237 = load i32, i32* @LONGINT, align 4
  %238 = and i32 %236, %237
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %243

240:                                              ; preds = %235
  %241 = load i32, i32* @TP_LONG, align 4
  %242 = call i32 @addtype(%struct.typetable* %12, i32 %241)
  store i32 %242, i32* %10, align 4
  br label %264

243:                                              ; preds = %235
  %244 = load i32, i32* %11, align 4
  %245 = load i32, i32* @SHORTINT, align 4
  %246 = and i32 %244, %245
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %251

248:                                              ; preds = %243
  %249 = load i32, i32* @TP_SHORT, align 4
  %250 = call i32 @addtype(%struct.typetable* %12, i32 %249)
  store i32 %250, i32* %10, align 4
  br label %263

251:                                              ; preds = %243
  %252 = load i32, i32* %11, align 4
  %253 = load i32, i32* @CHARINT, align 4
  %254 = and i32 %252, %253
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %259

256:                                              ; preds = %251
  %257 = load i32, i32* @TP_SCHAR, align 4
  %258 = call i32 @addtype(%struct.typetable* %12, i32 %257)
  store i32 %258, i32* %10, align 4
  br label %262

259:                                              ; preds = %251
  %260 = load i32, i32* @TP_INT, align 4
  %261 = call i32 @addtype(%struct.typetable* %12, i32 %260)
  store i32 %261, i32* %10, align 4
  br label %262

262:                                              ; preds = %259, %256
  br label %263

263:                                              ; preds = %262, %248
  br label %264

264:                                              ; preds = %263, %240
  br label %265

265:                                              ; preds = %264, %232
  br label %266

266:                                              ; preds = %265, %224
  br label %267

267:                                              ; preds = %266, %216
  br label %268

268:                                              ; preds = %267, %208
  %269 = load i32, i32* %10, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %272

271:                                              ; preds = %268
  br label %330

272:                                              ; preds = %268
  br label %15

273:                                              ; preds = %42
  %274 = load i32, i32* @LONGINT, align 4
  %275 = load i32, i32* %11, align 4
  %276 = or i32 %275, %274
  store i32 %276, i32* %11, align 4
  br label %277

277:                                              ; preds = %42, %273
  %278 = load i32, i32* %11, align 4
  %279 = call i32 @adduarg(%struct.typetable* %12, i32 %278)
  store i32 %279, i32* %10, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %282

281:                                              ; preds = %277
  br label %330

282:                                              ; preds = %277
  br label %325

283:                                              ; preds = %42
  %284 = load i32, i32* @TP_VOID, align 4
  %285 = call i32 @addtype(%struct.typetable* %12, i32 %284)
  store i32 %285, i32* %10, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %288

287:                                              ; preds = %283
  br label %330

288:                                              ; preds = %283
  br label %325

289:                                              ; preds = %42
  %290 = load i32, i32* @LONGINT, align 4
  %291 = load i32, i32* %11, align 4
  %292 = or i32 %291, %290
  store i32 %292, i32* %11, align 4
  br label %293

293:                                              ; preds = %42, %289
  %294 = load i32, i32* %11, align 4
  %295 = load i32, i32* @LONGINT, align 4
  %296 = and i32 %294, %295
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %300

298:                                              ; preds = %293
  %299 = load i32, i32* @TP_WCHAR, align 4
  br label %302

300:                                              ; preds = %293
  %301 = load i32, i32* @TP_CHAR, align 4
  br label %302

302:                                              ; preds = %300, %298
  %303 = phi i32 [ %299, %298 ], [ %301, %300 ]
  %304 = call i32 @addtype(%struct.typetable* %12, i32 %303)
  store i32 %304, i32* %10, align 4
  %305 = load i32, i32* %10, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %308

307:                                              ; preds = %302
  br label %330

308:                                              ; preds = %302
  br label %325

309:                                              ; preds = %42
  %310 = load i32, i32* @LONGINT, align 4
  %311 = load i32, i32* %11, align 4
  %312 = or i32 %311, %310
  store i32 %312, i32* %11, align 4
  br label %313

313:                                              ; preds = %42, %42, %42, %309
  %314 = load i32, i32* %11, align 4
  %315 = call i32 @adduarg(%struct.typetable* %12, i32 %314)
  store i32 %315, i32* %10, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %318

317:                                              ; preds = %313
  br label %330

318:                                              ; preds = %313
  br label %325

319:                                              ; preds = %42
  %320 = load i8, i8* %8, align 1
  %321 = sext i8 %320 to i32
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %323, label %324

323:                                              ; preds = %319
  br label %326

324:                                              ; preds = %319
  br label %325

325:                                              ; preds = %324, %318, %308, %288, %282, %202, %186, %176
  br label %15

326:                                              ; preds = %323, %34
  %327 = load i32, i32* %5, align 4
  %328 = load %union.arg**, %union.arg*** %6, align 8
  %329 = call i32 @build_arg_table(%struct.typetable* %12, i32 %327, %union.arg** %328)
  br label %330

330:                                              ; preds = %326, %317, %307, %287, %281, %271, %201, %185, %175, %84, %61, %49
  %331 = call i32 @freetypes(%struct.typetable* %12)
  %332 = load i32, i32* %10, align 4
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %338, label %334

334:                                              ; preds = %330
  %335 = load %union.arg**, %union.arg*** %6, align 8
  %336 = load %union.arg*, %union.arg** %335, align 8
  %337 = icmp eq %union.arg* %336, null
  br label %338

338:                                              ; preds = %334, %330
  %339 = phi i1 [ true, %330 ], [ %337, %334 ]
  %340 = zext i1 %339 to i32
  ret i32 %340
}

declare dso_local i32 @inittypes(%struct.typetable*) #1

declare dso_local i32 @addwaster(%struct.typetable*, i8**) #1

declare dso_local i32 @is_digit(i8 signext) #1

declare dso_local i32 @to_digit(i8 signext) #1

declare dso_local i32 @addtype(%struct.typetable*, i32) #1

declare dso_local i32 @addsarg(%struct.typetable*, i32) #1

declare dso_local i32 @adduarg(%struct.typetable*, i32) #1

declare dso_local i32 @build_arg_table(%struct.typetable*, i32, %union.arg**) #1

declare dso_local i32 @freetypes(%struct.typetable*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
