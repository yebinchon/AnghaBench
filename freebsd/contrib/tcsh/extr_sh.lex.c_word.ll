; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.lex.c_word.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.lex.c_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Strbuf = type { i32 }

@Strbuf_INIT = common dso_local global %struct.Strbuf zeroinitializer, align 4
@Strbuf_cleanup = common dso_local global i32 0, align 4
@enterhist = common dso_local global i64 0, align 8
@ERR_WTOOLONG = common dso_local global i32 0, align 4
@DOALL = common dso_local global i32 0, align 4
@_META = common dso_local global i32 0, align 4
@_ESC = common dso_local global i32 0, align 4
@intty = common dso_local global i64 0, align 8
@Htime = common dso_local global i32 0, align 4
@onelflg = common dso_local global i32 0, align 4
@HIST = common dso_local global i64 0, align 8
@QUOTE = common dso_local global i8 0, align 1
@bslash_quote = common dso_local global i64 0, align 8
@ERR_UNMATCHED = common dso_local global i32 0, align 4
@_QF = common dso_local global i32 0, align 4
@_QB = common dso_local global i32 0, align 4
@DOEXCL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @word(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca %struct.Strbuf, align 4
  %6 = alloca [12 x i8], align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %10 = bitcast %struct.Strbuf* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.Strbuf* @Strbuf_INIT to i8*), i64 4, i1 false)
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* @Strbuf_cleanup, align 4
  %12 = call i32 @cleanup_push(%struct.Strbuf* %5, i32 %11)
  br label %13

13:                                               ; preds = %118, %104, %1
  %14 = load i64, i64* @enterhist, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %13
  %17 = load i32, i32* %9, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %9, align 4
  %19 = icmp sgt i32 %17, 262144
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32, i32* @ERR_WTOOLONG, align 4
  %22 = call i32 (i32, ...) @seterror(i32 %21)
  br label %23

23:                                               ; preds = %20, %16, %13
  br label %24

24:                                               ; preds = %35, %23
  %25 = load i32, i32* @DOALL, align 4
  %26 = call signext i8 @getC(i32 %25)
  store i8 %26, i8* %3, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 32
  br i1 %28, label %33, label %29

29:                                               ; preds = %24
  %30 = load i8, i8* %3, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 9
  br label %33

33:                                               ; preds = %29, %24
  %34 = phi i1 [ true, %24 ], [ %32, %29 ]
  br i1 %34, label %35, label %36

35:                                               ; preds = %33
  br label %24

36:                                               ; preds = %33
  %37 = load i8, i8* %3, align 1
  %38 = load i32, i32* @_META, align 4
  %39 = load i32, i32* @_ESC, align 4
  %40 = or i32 %38, %39
  %41 = call i64 @cmap(i8 signext %37, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %137

43:                                               ; preds = %36
  %44 = load i8, i8* %3, align 1
  %45 = sext i8 %44 to i32
  switch i32 %45, label %135 [
    i32 38, label %46
    i32 124, label %46
    i32 60, label %46
    i32 62, label %46
    i32 35, label %63
    i32 59, label %106
    i32 40, label %106
    i32 41, label %106
    i32 10, label %106
    i32 92, label %109
  ]

46:                                               ; preds = %43, %43, %43, %43
  %47 = load i8, i8* %3, align 1
  %48 = call i32 @Strbuf_append1(%struct.Strbuf* %5, i8 signext %47)
  %49 = load i32, i32* @DOALL, align 4
  %50 = call signext i8 @getC(i32 %49)
  store i8 %50, i8* %4, align 1
  %51 = load i8, i8* %4, align 1
  %52 = sext i8 %51 to i32
  %53 = load i8, i8* %3, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %52, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %46
  %57 = load i8, i8* %4, align 1
  %58 = call i32 @Strbuf_append1(%struct.Strbuf* %5, i8 signext %57)
  br label %62

59:                                               ; preds = %46
  %60 = load i8, i8* %4, align 1
  %61 = call i32 @ungetC(i8 signext %60)
  br label %62

62:                                               ; preds = %59, %56
  br label %321

63:                                               ; preds = %43
  %64 = load i64, i64* @intty, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %63
  %67 = load i64, i64* @enterhist, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load i32, i32* %2, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %69, %63
  br label %136

73:                                               ; preds = %69, %66
  store i8 0, i8* %3, align 1
  store i32 0, i32* %7, align 4
  br label %74

74:                                               ; preds = %89, %73
  %75 = load i8, i8* %3, align 1
  store i8 %75, i8* %4, align 1
  %76 = call signext i8 @getC(i32 0)
  store i8 %76, i8* %3, align 1
  %77 = load i32, i32* %7, align 4
  %78 = icmp slt i32 %77, 11
  br i1 %78, label %79, label %88

79:                                               ; preds = %74
  %80 = load i32, i32* %2, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %79
  %83 = load i8, i8* %3, align 1
  %84 = load i32, i32* %7, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %7, align 4
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 %86
  store i8 %83, i8* %87, align 1
  br label %88

88:                                               ; preds = %82, %79, %74
  br label %89

89:                                               ; preds = %88
  %90 = load i8, i8* %3, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp ne i32 %91, 10
  br i1 %92, label %74, label %93

93:                                               ; preds = %89
  %94 = load i32, i32* %2, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 11
  store i8 0, i8* %97, align 1
  %98 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 0
  %99 = call i32 @a2time_t(i8* %98)
  store i32 %99, i32* @Htime, align 4
  br label %100

100:                                              ; preds = %96, %93
  %101 = load i8, i8* %4, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %102, 92
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  br label %13

105:                                              ; preds = %100
  br label %106

106:                                              ; preds = %43, %43, %43, %43, %105
  %107 = load i8, i8* %3, align 1
  %108 = call i32 @Strbuf_append1(%struct.Strbuf* %5, i8 signext %107)
  br label %321

109:                                              ; preds = %43
  %110 = call signext i8 @getC(i32 0)
  store i8 %110, i8* %3, align 1
  %111 = load i8, i8* %3, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp eq i32 %112, 10
  br i1 %113, label %114, label %119

114:                                              ; preds = %109
  %115 = load i32, i32* @onelflg, align 4
  %116 = icmp eq i32 %115, 1
  br i1 %116, label %117, label %118

117:                                              ; preds = %114
  store i32 2, i32* @onelflg, align 4
  br label %118

118:                                              ; preds = %117, %114
  br label %13

119:                                              ; preds = %109
  %120 = load i8, i8* %3, align 1
  %121 = sext i8 %120 to i32
  %122 = load i64, i64* @HIST, align 8
  %123 = trunc i64 %122 to i8
  %124 = sext i8 %123 to i32
  %125 = icmp ne i32 %121, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %119
  %127 = call i32 @Strbuf_append1(%struct.Strbuf* %5, i8 signext 92)
  br label %128

128:                                              ; preds = %126, %119
  %129 = load i8, i8* @QUOTE, align 1
  %130 = sext i8 %129 to i32
  %131 = load i8, i8* %3, align 1
  %132 = sext i8 %131 to i32
  %133 = or i32 %132, %130
  %134 = trunc i32 %133 to i8
  store i8 %134, i8* %3, align 1
  br label %135

135:                                              ; preds = %43, %128
  br label %136

136:                                              ; preds = %135, %72
  br label %137

137:                                              ; preds = %136, %36
  store i8 0, i8* %4, align 1
  %138 = load i32, i32* @DOALL, align 4
  store i32 %138, i32* %8, align 4
  br label %139

139:                                              ; preds = %315, %137
  %140 = load i64, i64* @enterhist, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %149

142:                                              ; preds = %139
  %143 = load i32, i32* %9, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %9, align 4
  %145 = icmp sgt i32 %143, 262144
  br i1 %145, label %146, label %149

146:                                              ; preds = %142
  %147 = load i32, i32* @ERR_WTOOLONG, align 4
  %148 = call i32 (i32, ...) @seterror(i32 %147)
  br label %149

149:                                              ; preds = %146, %142, %139
  %150 = load i8, i8* %4, align 1
  %151 = icmp ne i8 %150, 0
  br i1 %151, label %152, label %239

152:                                              ; preds = %149
  %153 = load i8, i8* %3, align 1
  %154 = sext i8 %153 to i32
  %155 = load i8, i8* %4, align 1
  %156 = sext i8 %155 to i32
  %157 = icmp eq i32 %154, %156
  br i1 %157, label %158, label %160

158:                                              ; preds = %152
  store i8 0, i8* %4, align 1
  %159 = load i32, i32* @DOALL, align 4
  store i32 %159, i32* %8, align 4
  br label %238

160:                                              ; preds = %152
  %161 = load i8, i8* %3, align 1
  %162 = sext i8 %161 to i32
  %163 = icmp eq i32 %162, 92
  br i1 %163, label %164, label %225

164:                                              ; preds = %160
  %165 = call signext i8 @getC(i32 0)
  store i8 %165, i8* %3, align 1
  %166 = load i8, i8* %3, align 1
  %167 = sext i8 %166 to i32
  %168 = load i64, i64* @HIST, align 8
  %169 = trunc i64 %168 to i8
  %170 = sext i8 %169 to i32
  %171 = icmp eq i32 %167, %170
  br i1 %171, label %172, label %179

172:                                              ; preds = %164
  %173 = load i8, i8* @QUOTE, align 1
  %174 = sext i8 %173 to i32
  %175 = load i8, i8* %3, align 1
  %176 = sext i8 %175 to i32
  %177 = or i32 %176, %174
  %178 = trunc i32 %177 to i8
  store i8 %178, i8* %3, align 1
  br label %224

179:                                              ; preds = %164
  %180 = load i64, i64* @bslash_quote, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %205

182:                                              ; preds = %179
  %183 = load i8, i8* %3, align 1
  %184 = sext i8 %183 to i32
  %185 = icmp eq i32 %184, 39
  br i1 %185, label %198, label %186

186:                                              ; preds = %182
  %187 = load i8, i8* %3, align 1
  %188 = sext i8 %187 to i32
  %189 = icmp eq i32 %188, 34
  br i1 %189, label %198, label %190

190:                                              ; preds = %186
  %191 = load i8, i8* %3, align 1
  %192 = sext i8 %191 to i32
  %193 = icmp eq i32 %192, 92
  br i1 %193, label %198, label %194

194:                                              ; preds = %190
  %195 = load i8, i8* %3, align 1
  %196 = sext i8 %195 to i32
  %197 = icmp eq i32 %196, 36
  br i1 %197, label %198, label %205

198:                                              ; preds = %194, %190, %186, %182
  %199 = load i8, i8* @QUOTE, align 1
  %200 = sext i8 %199 to i32
  %201 = load i8, i8* %3, align 1
  %202 = sext i8 %201 to i32
  %203 = or i32 %202, %200
  %204 = trunc i32 %203 to i8
  store i8 %204, i8* %3, align 1
  br label %223

205:                                              ; preds = %194, %179
  %206 = load i8, i8* %3, align 1
  %207 = sext i8 %206 to i32
  %208 = icmp eq i32 %207, 10
  br i1 %208, label %209, label %216

209:                                              ; preds = %205
  %210 = load i8, i8* @QUOTE, align 1
  %211 = sext i8 %210 to i32
  %212 = load i8, i8* %3, align 1
  %213 = sext i8 %212 to i32
  %214 = or i32 %213, %211
  %215 = trunc i32 %214 to i8
  store i8 %215, i8* %3, align 1
  br label %216

216:                                              ; preds = %209, %205
  %217 = load i8, i8* %3, align 1
  %218 = call i32 @ungetC(i8 signext %217)
  %219 = load i8, i8* @QUOTE, align 1
  %220 = sext i8 %219 to i32
  %221 = or i32 92, %220
  %222 = trunc i32 %221 to i8
  store i8 %222, i8* %3, align 1
  br label %223

223:                                              ; preds = %216, %198
  br label %224

224:                                              ; preds = %223, %172
  br label %237

225:                                              ; preds = %160
  %226 = load i8, i8* %3, align 1
  %227 = sext i8 %226 to i32
  %228 = icmp eq i32 %227, 10
  br i1 %228, label %229, label %236

229:                                              ; preds = %225
  %230 = load i32, i32* @ERR_UNMATCHED, align 4
  %231 = load i8, i8* %4, align 1
  %232 = sext i8 %231 to i32
  %233 = call i32 (i32, ...) @seterror(i32 %230, i32 %232)
  %234 = load i8, i8* %3, align 1
  %235 = call i32 @ungetC(i8 signext %234)
  br label %320

236:                                              ; preds = %225
  br label %237

237:                                              ; preds = %236, %224
  br label %238

238:                                              ; preds = %237, %158
  br label %315

239:                                              ; preds = %149
  %240 = load i8, i8* %3, align 1
  %241 = load i32, i32* @_META, align 4
  %242 = load i32, i32* @_QF, align 4
  %243 = or i32 %241, %242
  %244 = load i32, i32* @_QB, align 4
  %245 = or i32 %243, %244
  %246 = load i32, i32* @_ESC, align 4
  %247 = or i32 %245, %246
  %248 = call i64 @cmap(i8 signext %240, i32 %247)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %314

250:                                              ; preds = %239
  %251 = load i8, i8* %3, align 1
  %252 = sext i8 %251 to i32
  %253 = icmp eq i32 %252, 92
  br i1 %253, label %254, label %280

254:                                              ; preds = %250
  %255 = call signext i8 @getC(i32 0)
  store i8 %255, i8* %3, align 1
  %256 = load i8, i8* %3, align 1
  %257 = sext i8 %256 to i32
  %258 = icmp eq i32 %257, 10
  br i1 %258, label %259, label %264

259:                                              ; preds = %254
  %260 = load i32, i32* @onelflg, align 4
  %261 = icmp eq i32 %260, 1
  br i1 %261, label %262, label %263

262:                                              ; preds = %259
  store i32 2, i32* @onelflg, align 4
  br label %263

263:                                              ; preds = %262, %259
  br label %320

264:                                              ; preds = %254
  %265 = load i8, i8* %3, align 1
  %266 = sext i8 %265 to i32
  %267 = load i64, i64* @HIST, align 8
  %268 = trunc i64 %267 to i8
  %269 = sext i8 %268 to i32
  %270 = icmp ne i32 %266, %269
  br i1 %270, label %271, label %273

271:                                              ; preds = %264
  %272 = call i32 @Strbuf_append1(%struct.Strbuf* %5, i8 signext 92)
  br label %273

273:                                              ; preds = %271, %264
  %274 = load i8, i8* @QUOTE, align 1
  %275 = sext i8 %274 to i32
  %276 = load i8, i8* %3, align 1
  %277 = sext i8 %276 to i32
  %278 = or i32 %277, %275
  %279 = trunc i32 %278 to i8
  store i8 %279, i8* %3, align 1
  br label %313

280:                                              ; preds = %250
  %281 = load i8, i8* %3, align 1
  %282 = load i32, i32* @_QF, align 4
  %283 = load i32, i32* @_QB, align 4
  %284 = or i32 %282, %283
  %285 = call i64 @cmap(i8 signext %281, i32 %284)
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %298

287:                                              ; preds = %280
  %288 = load i8, i8* %3, align 1
  store i8 %288, i8* %4, align 1
  %289 = load i8, i8* %3, align 1
  %290 = sext i8 %289 to i32
  %291 = icmp eq i32 %290, 34
  br i1 %291, label %292, label %294

292:                                              ; preds = %287
  %293 = load i32, i32* @DOALL, align 4
  br label %296

294:                                              ; preds = %287
  %295 = load i32, i32* @DOEXCL, align 4
  br label %296

296:                                              ; preds = %294, %292
  %297 = phi i32 [ %293, %292 ], [ %295, %294 ]
  store i32 %297, i32* %8, align 4
  br label %312

298:                                              ; preds = %280
  %299 = load i8, i8* %3, align 1
  %300 = sext i8 %299 to i32
  %301 = icmp ne i32 %300, 35
  br i1 %301, label %308, label %302

302:                                              ; preds = %298
  %303 = load i64, i64* @intty, align 8
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %311, label %305

305:                                              ; preds = %302
  %306 = load i64, i64* @enterhist, align 8
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %311, label %308

308:                                              ; preds = %305, %298
  %309 = load i8, i8* %3, align 1
  %310 = call i32 @ungetC(i8 signext %309)
  br label %320

311:                                              ; preds = %305, %302
  br label %312

312:                                              ; preds = %311, %296
  br label %313

313:                                              ; preds = %312, %273
  br label %314

314:                                              ; preds = %313, %239
  br label %315

315:                                              ; preds = %314, %238
  %316 = load i8, i8* %3, align 1
  %317 = call i32 @Strbuf_append1(%struct.Strbuf* %5, i8 signext %316)
  %318 = load i32, i32* %8, align 4
  %319 = call signext i8 @getC(i32 %318)
  store i8 %319, i8* %3, align 1
  br label %139

320:                                              ; preds = %308, %263, %229
  br label %321

321:                                              ; preds = %320, %106, %62
  %322 = call i32 @cleanup_ignore(%struct.Strbuf* %5)
  %323 = call i32 @cleanup_until(%struct.Strbuf* %5)
  %324 = call i8* @Strbuf_finish(%struct.Strbuf* %5)
  ret i8* %324
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cleanup_push(%struct.Strbuf*, i32) #2

declare dso_local i32 @seterror(i32, ...) #2

declare dso_local signext i8 @getC(i32) #2

declare dso_local i64 @cmap(i8 signext, i32) #2

declare dso_local i32 @Strbuf_append1(%struct.Strbuf*, i8 signext) #2

declare dso_local i32 @ungetC(i8 signext) #2

declare dso_local i32 @a2time_t(i8*) #2

declare dso_local i32 @cleanup_ignore(%struct.Strbuf*) #2

declare dso_local i32 @cleanup_until(%struct.Strbuf*) #2

declare dso_local i8* @Strbuf_finish(%struct.Strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
