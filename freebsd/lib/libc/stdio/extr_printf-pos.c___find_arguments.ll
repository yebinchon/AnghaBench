; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_printf-pos.c___find_arguments.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_printf-pos.c___find_arguments.c"
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
define dso_local i32 @__find_arguments(i8* %0, i32 %1, %union.arg** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.arg**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
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

15:                                               ; preds = %323, %271, %3
  br label %16

16:                                               ; preds = %26, %15
  %17 = load i8*, i8** %7, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  store i32 %19, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 37
  br label %24

24:                                               ; preds = %21, %16
  %25 = phi i1 [ false, %16 ], [ %23, %21 ]
  br i1 %25, label %26, label %29

26:                                               ; preds = %24
  %27 = load i8*, i8** %7, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %7, align 8
  br label %16

29:                                               ; preds = %24
  %30 = load i32, i32* %8, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  br label %324

33:                                               ; preds = %29
  %34 = load i8*, i8** %7, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %7, align 8
  store i32 0, i32* %11, align 4
  br label %36

36:                                               ; preds = %152, %148, %144, %143, %122, %121, %100, %96, %72, %60, %49, %48, %43, %33
  %37 = load i8*, i8** %7, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %7, align 8
  %39 = load i8, i8* %37, align 1
  %40 = sext i8 %39 to i32
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %99, %71, %36
  %42 = load i32, i32* %8, align 4
  switch i32 %42, label %318 [
    i32 32, label %43
    i32 35, label %43
    i32 42, label %44
    i32 45, label %49
    i32 43, label %49
    i32 39, label %49
    i32 46, label %50
    i32 48, label %72
    i32 49, label %73
    i32 50, label %73
    i32 51, label %73
    i32 52, label %73
    i32 53, label %73
    i32 54, label %73
    i32 55, label %73
    i32 56, label %73
    i32 57, label %73
    i32 76, label %100
    i32 104, label %104
    i32 106, label %122
    i32 108, label %126
    i32 113, label %144
    i32 116, label %148
    i32 122, label %152
    i32 67, label %156
    i32 99, label %160
    i32 68, label %176
    i32 100, label %180
    i32 105, label %180
    i32 97, label %186
    i32 65, label %186
    i32 101, label %186
    i32 69, label %186
    i32 102, label %186
    i32 103, label %186
    i32 71, label %186
    i32 110, label %202
    i32 79, label %272
    i32 111, label %276
    i32 112, label %282
    i32 83, label %288
    i32 115, label %292
    i32 85, label %308
    i32 117, label %312
    i32 88, label %312
    i32 120, label %312
  ]

43:                                               ; preds = %41, %41
  br label %36

44:                                               ; preds = %41
  %45 = call i32 @addaster(%struct.typetable* %12, i8** %7)
  store i32 %45, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  br label %328

48:                                               ; preds = %44
  br label %36

49:                                               ; preds = %41, %41, %41
  br label %36

50:                                               ; preds = %41
  %51 = load i8*, i8** %7, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %7, align 8
  %53 = load i8, i8* %51, align 1
  %54 = sext i8 %53 to i32
  store i32 %54, i32* %8, align 4
  %55 = icmp eq i32 %54, 42
  br i1 %55, label %56, label %61

56:                                               ; preds = %50
  %57 = call i32 @addaster(%struct.typetable* %12, i8** %7)
  store i32 %57, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  br label %328

60:                                               ; preds = %56
  br label %36

61:                                               ; preds = %50
  br label %62

62:                                               ; preds = %66, %61
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @is_digit(i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %62
  %67 = load i8*, i8** %7, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %7, align 8
  %69 = load i8, i8* %67, align 1
  %70 = sext i8 %69 to i32
  store i32 %70, i32* %8, align 4
  br label %62

71:                                               ; preds = %62
  br label %41

72:                                               ; preds = %41
  br label %36

73:                                               ; preds = %41, %41, %41, %41, %41, %41, %41, %41, %41
  store i32 0, i32* %9, align 4
  br label %74

74:                                               ; preds = %89, %73
  %75 = load i32, i32* %9, align 4
  %76 = mul nsw i32 10, %75
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @to_digit(i32 %77)
  %79 = add nsw i32 %76, %78
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* @MAX_POSARG, align 4
  %82 = icmp sgt i32 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %74
  store i32 -1, i32* %10, align 4
  br label %328

84:                                               ; preds = %74
  %85 = load i8*, i8** %7, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %7, align 8
  %87 = load i8, i8* %85, align 1
  %88 = sext i8 %87 to i32
  store i32 %88, i32* %8, align 4
  br label %89

89:                                               ; preds = %84
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @is_digit(i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %74, label %93

93:                                               ; preds = %89
  %94 = load i32, i32* %8, align 4
  %95 = icmp eq i32 %94, 36
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load i32, i32* %9, align 4
  %98 = getelementptr inbounds %struct.typetable, %struct.typetable* %12, i32 0, i32 0
  store i32 %97, i32* %98, align 4
  br label %36

99:                                               ; preds = %93
  br label %41

100:                                              ; preds = %41
  %101 = load i32, i32* @LONGDBL, align 4
  %102 = load i32, i32* %11, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %11, align 4
  br label %36

104:                                              ; preds = %41
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* @SHORTINT, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %104
  %110 = load i32, i32* @SHORTINT, align 4
  %111 = xor i32 %110, -1
  %112 = load i32, i32* %11, align 4
  %113 = and i32 %112, %111
  store i32 %113, i32* %11, align 4
  %114 = load i32, i32* @CHARINT, align 4
  %115 = load i32, i32* %11, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %11, align 4
  br label %121

117:                                              ; preds = %104
  %118 = load i32, i32* @SHORTINT, align 4
  %119 = load i32, i32* %11, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %11, align 4
  br label %121

121:                                              ; preds = %117, %109
  br label %36

122:                                              ; preds = %41
  %123 = load i32, i32* @INTMAXT, align 4
  %124 = load i32, i32* %11, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %11, align 4
  br label %36

126:                                              ; preds = %41
  %127 = load i32, i32* %11, align 4
  %128 = load i32, i32* @LONGINT, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %139

131:                                              ; preds = %126
  %132 = load i32, i32* @LONGINT, align 4
  %133 = xor i32 %132, -1
  %134 = load i32, i32* %11, align 4
  %135 = and i32 %134, %133
  store i32 %135, i32* %11, align 4
  %136 = load i32, i32* @LLONGINT, align 4
  %137 = load i32, i32* %11, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %11, align 4
  br label %143

139:                                              ; preds = %126
  %140 = load i32, i32* @LONGINT, align 4
  %141 = load i32, i32* %11, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %11, align 4
  br label %143

143:                                              ; preds = %139, %131
  br label %36

144:                                              ; preds = %41
  %145 = load i32, i32* @LLONGINT, align 4
  %146 = load i32, i32* %11, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %11, align 4
  br label %36

148:                                              ; preds = %41
  %149 = load i32, i32* @PTRDIFFT, align 4
  %150 = load i32, i32* %11, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %11, align 4
  br label %36

152:                                              ; preds = %41
  %153 = load i32, i32* @SIZET, align 4
  %154 = load i32, i32* %11, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %11, align 4
  br label %36

156:                                              ; preds = %41
  %157 = load i32, i32* @LONGINT, align 4
  %158 = load i32, i32* %11, align 4
  %159 = or i32 %158, %157
  store i32 %159, i32* %11, align 4
  br label %160

160:                                              ; preds = %41, %156
  %161 = load i32, i32* %11, align 4
  %162 = load i32, i32* @LONGINT, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %160
  %166 = load i32, i32* @T_WINT, align 4
  br label %169

167:                                              ; preds = %160
  %168 = load i32, i32* @T_INT, align 4
  br label %169

169:                                              ; preds = %167, %165
  %170 = phi i32 [ %166, %165 ], [ %168, %167 ]
  %171 = call i32 @addtype(%struct.typetable* %12, i32 %170)
  store i32 %171, i32* %10, align 4
  %172 = load i32, i32* %10, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %169
  br label %328

175:                                              ; preds = %169
  br label %323

176:                                              ; preds = %41
  %177 = load i32, i32* @LONGINT, align 4
  %178 = load i32, i32* %11, align 4
  %179 = or i32 %178, %177
  store i32 %179, i32* %11, align 4
  br label %180

180:                                              ; preds = %41, %41, %176
  %181 = load i32, i32* %11, align 4
  %182 = call i32 @addsarg(%struct.typetable* %12, i32 %181)
  store i32 %182, i32* %10, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %180
  br label %328

185:                                              ; preds = %180
  br label %323

186:                                              ; preds = %41, %41, %41, %41, %41, %41, %41
  %187 = load i32, i32* %11, align 4
  %188 = load i32, i32* @LONGDBL, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %186
  %192 = load i32, i32* @T_LONG_DOUBLE, align 4
  br label %195

193:                                              ; preds = %186
  %194 = load i32, i32* @T_DOUBLE, align 4
  br label %195

195:                                              ; preds = %193, %191
  %196 = phi i32 [ %192, %191 ], [ %194, %193 ]
  %197 = call i32 @addtype(%struct.typetable* %12, i32 %196)
  store i32 %197, i32* %10, align 4
  %198 = load i32, i32* %10, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %195
  br label %328

201:                                              ; preds = %195
  br label %323

202:                                              ; preds = %41
  %203 = load i32, i32* %11, align 4
  %204 = load i32, i32* @INTMAXT, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %210

207:                                              ; preds = %202
  %208 = load i32, i32* @TP_INTMAXT, align 4
  %209 = call i32 @addtype(%struct.typetable* %12, i32 %208)
  store i32 %209, i32* %10, align 4
  br label %267

210:                                              ; preds = %202
  %211 = load i32, i32* %11, align 4
  %212 = load i32, i32* @PTRDIFFT, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %210
  %216 = load i32, i32* @TP_PTRDIFFT, align 4
  %217 = call i32 @addtype(%struct.typetable* %12, i32 %216)
  store i32 %217, i32* %10, align 4
  br label %266

218:                                              ; preds = %210
  %219 = load i32, i32* %11, align 4
  %220 = load i32, i32* @SIZET, align 4
  %221 = and i32 %219, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %218
  %224 = load i32, i32* @TP_SSIZET, align 4
  %225 = call i32 @addtype(%struct.typetable* %12, i32 %224)
  store i32 %225, i32* %10, align 4
  br label %265

226:                                              ; preds = %218
  %227 = load i32, i32* %11, align 4
  %228 = load i32, i32* @LLONGINT, align 4
  %229 = and i32 %227, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %234

231:                                              ; preds = %226
  %232 = load i32, i32* @TP_LLONG, align 4
  %233 = call i32 @addtype(%struct.typetable* %12, i32 %232)
  store i32 %233, i32* %10, align 4
  br label %264

234:                                              ; preds = %226
  %235 = load i32, i32* %11, align 4
  %236 = load i32, i32* @LONGINT, align 4
  %237 = and i32 %235, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %242

239:                                              ; preds = %234
  %240 = load i32, i32* @TP_LONG, align 4
  %241 = call i32 @addtype(%struct.typetable* %12, i32 %240)
  store i32 %241, i32* %10, align 4
  br label %263

242:                                              ; preds = %234
  %243 = load i32, i32* %11, align 4
  %244 = load i32, i32* @SHORTINT, align 4
  %245 = and i32 %243, %244
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %250

247:                                              ; preds = %242
  %248 = load i32, i32* @TP_SHORT, align 4
  %249 = call i32 @addtype(%struct.typetable* %12, i32 %248)
  store i32 %249, i32* %10, align 4
  br label %262

250:                                              ; preds = %242
  %251 = load i32, i32* %11, align 4
  %252 = load i32, i32* @CHARINT, align 4
  %253 = and i32 %251, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %258

255:                                              ; preds = %250
  %256 = load i32, i32* @TP_SCHAR, align 4
  %257 = call i32 @addtype(%struct.typetable* %12, i32 %256)
  store i32 %257, i32* %10, align 4
  br label %261

258:                                              ; preds = %250
  %259 = load i32, i32* @TP_INT, align 4
  %260 = call i32 @addtype(%struct.typetable* %12, i32 %259)
  store i32 %260, i32* %10, align 4
  br label %261

261:                                              ; preds = %258, %255
  br label %262

262:                                              ; preds = %261, %247
  br label %263

263:                                              ; preds = %262, %239
  br label %264

264:                                              ; preds = %263, %231
  br label %265

265:                                              ; preds = %264, %223
  br label %266

266:                                              ; preds = %265, %215
  br label %267

267:                                              ; preds = %266, %207
  %268 = load i32, i32* %10, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %271

270:                                              ; preds = %267
  br label %328

271:                                              ; preds = %267
  br label %15

272:                                              ; preds = %41
  %273 = load i32, i32* @LONGINT, align 4
  %274 = load i32, i32* %11, align 4
  %275 = or i32 %274, %273
  store i32 %275, i32* %11, align 4
  br label %276

276:                                              ; preds = %41, %272
  %277 = load i32, i32* %11, align 4
  %278 = call i32 @adduarg(%struct.typetable* %12, i32 %277)
  store i32 %278, i32* %10, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %281

280:                                              ; preds = %276
  br label %328

281:                                              ; preds = %276
  br label %323

282:                                              ; preds = %41
  %283 = load i32, i32* @TP_VOID, align 4
  %284 = call i32 @addtype(%struct.typetable* %12, i32 %283)
  store i32 %284, i32* %10, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %287

286:                                              ; preds = %282
  br label %328

287:                                              ; preds = %282
  br label %323

288:                                              ; preds = %41
  %289 = load i32, i32* @LONGINT, align 4
  %290 = load i32, i32* %11, align 4
  %291 = or i32 %290, %289
  store i32 %291, i32* %11, align 4
  br label %292

292:                                              ; preds = %41, %288
  %293 = load i32, i32* %11, align 4
  %294 = load i32, i32* @LONGINT, align 4
  %295 = and i32 %293, %294
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %299

297:                                              ; preds = %292
  %298 = load i32, i32* @TP_WCHAR, align 4
  br label %301

299:                                              ; preds = %292
  %300 = load i32, i32* @TP_CHAR, align 4
  br label %301

301:                                              ; preds = %299, %297
  %302 = phi i32 [ %298, %297 ], [ %300, %299 ]
  %303 = call i32 @addtype(%struct.typetable* %12, i32 %302)
  store i32 %303, i32* %10, align 4
  %304 = load i32, i32* %10, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %307

306:                                              ; preds = %301
  br label %328

307:                                              ; preds = %301
  br label %323

308:                                              ; preds = %41
  %309 = load i32, i32* @LONGINT, align 4
  %310 = load i32, i32* %11, align 4
  %311 = or i32 %310, %309
  store i32 %311, i32* %11, align 4
  br label %312

312:                                              ; preds = %41, %41, %41, %308
  %313 = load i32, i32* %11, align 4
  %314 = call i32 @adduarg(%struct.typetable* %12, i32 %313)
  store i32 %314, i32* %10, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %317

316:                                              ; preds = %312
  br label %328

317:                                              ; preds = %312
  br label %323

318:                                              ; preds = %41
  %319 = load i32, i32* %8, align 4
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %321, label %322

321:                                              ; preds = %318
  br label %324

322:                                              ; preds = %318
  br label %323

323:                                              ; preds = %322, %317, %307, %287, %281, %201, %185, %175
  br label %15

324:                                              ; preds = %321, %32
  %325 = load i32, i32* %5, align 4
  %326 = load %union.arg**, %union.arg*** %6, align 8
  %327 = call i32 @build_arg_table(%struct.typetable* %12, i32 %325, %union.arg** %326)
  br label %328

328:                                              ; preds = %324, %316, %306, %286, %280, %270, %200, %184, %174, %83, %59, %47
  %329 = call i32 @freetypes(%struct.typetable* %12)
  %330 = load i32, i32* %10, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %336, label %332

332:                                              ; preds = %328
  %333 = load %union.arg**, %union.arg*** %6, align 8
  %334 = load %union.arg*, %union.arg** %333, align 8
  %335 = icmp eq %union.arg* %334, null
  br label %336

336:                                              ; preds = %332, %328
  %337 = phi i1 [ true, %328 ], [ %335, %332 ]
  %338 = zext i1 %337 to i32
  ret i32 %338
}

declare dso_local i32 @inittypes(%struct.typetable*) #1

declare dso_local i32 @addaster(%struct.typetable*, i8**) #1

declare dso_local i32 @is_digit(i32) #1

declare dso_local i32 @to_digit(i32) #1

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
