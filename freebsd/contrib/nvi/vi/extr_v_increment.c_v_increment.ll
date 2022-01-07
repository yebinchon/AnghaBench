; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_increment.c_v_increment.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_increment.c_v_increment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64 }
%struct.TYPE_18__ = type { i8, i64, %struct.TYPE_17__, %struct.TYPE_16__* }
%struct.TYPE_17__ = type { i64, i32 }
%struct.TYPE_16__ = type { i32 }

@VIM_USAGE = common dso_local global i32 0, align 4
@VC_C1SET = common dso_local global i32 0, align 4
@LONG_MAX = common dso_local global i64 0, align 8
@NUM_OVER = common dso_local global i32 0, align 4
@fmt = common dso_local global i8** null, align 8
@HEXC = common dso_local global i64 0, align 8
@HEXL = common dso_local global i64 0, align 8
@OCTAL = common dso_local global i64 0, align 8
@SDEC = common dso_local global i64 0, align 8
@DEC = common dso_local global i64 0, align 8
@M_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"181|Cursor not in a number\00", align 1
@NUM_OK = common dso_local global i32 0, align 4
@LONG_MIN = common dso_local global i32 0, align 4
@NUM_UNDER = common dso_local global i32 0, align 4
@ULONG_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v_increment(%struct.TYPE_19__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca [100 x i8], align 16
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 0
  %27 = load i8, i8* %26, align 8
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 35
  br i1 %29, label %30, label %33

30:                                               ; preds = %2
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 0
  store i8 43, i8* %32, align 8
  br label %33

33:                                               ; preds = %30, %2
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 0
  %36 = load i8, i8* %35, align 8
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 43
  br i1 %38, label %39, label %54

39:                                               ; preds = %33
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 0
  %42 = load i8, i8* %41, align 8
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 45
  br i1 %44, label %45, label %54

45:                                               ; preds = %39
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 3
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @VIM_USAGE, align 4
  %53 = call i32 @v_emsg(%struct.TYPE_19__* %46, i32 %51, i32 %52)
  store i32 1, i32* %3, align 4
  br label %546

54:                                               ; preds = %39, %33
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %56 = load i32, i32* @VC_C1SET, align 4
  %57 = call i64 @F_ISSET(%struct.TYPE_18__* %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %54
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @LONG_MAX, align 8
  %64 = icmp sgt i64 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %67 = load i32, i32* @NUM_OVER, align 4
  %68 = call i32 @inc_err(%struct.TYPE_19__* %66, i32 %67)
  store i32 1, i32* %3, align 4
  br label %546

69:                                               ; preds = %59
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %8, align 8
  br label %74

73:                                               ; preds = %54
  store i64 1, i64* %8, align 8
  br label %74

74:                                               ; preds = %73, %69
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i64 @db_eget(%struct.TYPE_19__* %75, i32 %79, i8** %23, i64* %14, i32* %18)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %74
  %83 = load i32, i32* %18, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  br label %265

86:                                               ; preds = %82
  store i32 1, i32* %3, align 4
  br label %546

87:                                               ; preds = %74
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  store i64 %91, i64* %11, align 8
  br label %92

92:                                               ; preds = %106, %87
  %93 = load i64, i64* %11, align 8
  %94 = load i64, i64* %14, align 8
  %95 = icmp ult i64 %93, %94
  br i1 %95, label %96, label %103

96:                                               ; preds = %92
  %97 = load i8*, i8** %23, align 8
  %98 = load i64, i64* %11, align 8
  %99 = getelementptr inbounds i8, i8* %97, i64 %98
  %100 = load i8, i8* %99, align 1
  %101 = call i64 @ISSPACE(i8 signext %100)
  %102 = icmp ne i64 %101, 0
  br label %103

103:                                              ; preds = %96, %92
  %104 = phi i1 [ false, %92 ], [ %102, %96 ]
  br i1 %104, label %105, label %109

105:                                              ; preds = %103
  br label %106

106:                                              ; preds = %105
  %107 = load i64, i64* %11, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %11, align 8
  br label %92

109:                                              ; preds = %103
  %110 = load i64, i64* %11, align 8
  %111 = load i64, i64* %14, align 8
  %112 = icmp uge i64 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %109
  br label %265

114:                                              ; preds = %109
  %115 = load i64, i64* %11, align 8
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %115, %119
  br i1 %120, label %121, label %127

121:                                              ; preds = %114
  %122 = load i64, i64* %11, align 8
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i32 0, i32 0
  store i64 %122, i64* %124, align 8
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %126 = call i32 @vs_refresh(%struct.TYPE_19__* %125, i32 0)
  br label %127

127:                                              ; preds = %121, %114
  %128 = load i64, i64* %14, align 8
  %129 = load i64, i64* %11, align 8
  %130 = sub i64 %128, %129
  store i64 %130, i64* %16, align 8
  %131 = load i8*, i8** %23, align 8
  %132 = load i64, i64* %11, align 8
  %133 = getelementptr inbounds i8, i8* %131, i64 %132
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp eq i32 %135, 48
  br i1 %136, label %137, label %187

137:                                              ; preds = %127
  %138 = load i64, i64* %16, align 8
  %139 = icmp ugt i64 %138, 2
  br i1 %139, label %140, label %187

140:                                              ; preds = %137
  %141 = load i8*, i8** %23, align 8
  %142 = load i64, i64* %11, align 8
  %143 = add i64 %142, 1
  %144 = getelementptr inbounds i8, i8* %141, i64 %143
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  %147 = icmp eq i32 %146, 88
  br i1 %147, label %156, label %148

148:                                              ; preds = %140
  %149 = load i8*, i8** %23, align 8
  %150 = load i64, i64* %11, align 8
  %151 = add i64 %150, 1
  %152 = getelementptr inbounds i8, i8* %149, i64 %151
  %153 = load i8, i8* %152, align 1
  %154 = sext i8 %153 to i32
  %155 = icmp eq i32 %154, 120
  br i1 %155, label %156, label %187

156:                                              ; preds = %148, %140
  store i32 16, i32* %17, align 4
  %157 = load i64, i64* %11, align 8
  %158 = add i64 %157, 2
  store i64 %158, i64* %13, align 8
  %159 = load i8*, i8** %23, align 8
  %160 = load i64, i64* %13, align 8
  %161 = getelementptr inbounds i8, i8* %159, i64 %160
  %162 = load i8, i8* %161, align 1
  %163 = sext i8 %162 to i32
  %164 = call i32 (i32, ...) bitcast (i32 (...)* @ISXDIGIT to i32 (i32, ...)*)(i32 %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %167, label %166

166:                                              ; preds = %156
  br label %252

167:                                              ; preds = %156
  %168 = load i8*, i8** %23, align 8
  %169 = load i64, i64* %11, align 8
  %170 = add i64 %169, 1
  %171 = getelementptr inbounds i8, i8* %168, i64 %170
  %172 = load i8, i8* %171, align 1
  %173 = sext i8 %172 to i32
  %174 = icmp eq i32 %173, 88
  br i1 %174, label %175, label %180

175:                                              ; preds = %167
  %176 = load i8**, i8*** @fmt, align 8
  %177 = load i64, i64* @HEXC, align 8
  %178 = getelementptr inbounds i8*, i8** %176, i64 %177
  %179 = load i8*, i8** %178, align 8
  br label %185

180:                                              ; preds = %167
  %181 = load i8**, i8*** @fmt, align 8
  %182 = load i64, i64* @HEXL, align 8
  %183 = getelementptr inbounds i8*, i8** %181, i64 %182
  %184 = load i8*, i8** %183, align 8
  br label %185

185:                                              ; preds = %180, %175
  %186 = phi i8* [ %179, %175 ], [ %184, %180 ]
  store i8* %186, i8** %20, align 8
  br label %272

187:                                              ; preds = %148, %137, %127
  %188 = load i8*, i8** %23, align 8
  %189 = load i64, i64* %11, align 8
  %190 = getelementptr inbounds i8, i8* %188, i64 %189
  %191 = load i8, i8* %190, align 1
  %192 = sext i8 %191 to i32
  %193 = icmp eq i32 %192, 48
  br i1 %193, label %194, label %219

194:                                              ; preds = %187
  %195 = load i64, i64* %16, align 8
  %196 = icmp ugt i64 %195, 1
  br i1 %196, label %197, label %219

197:                                              ; preds = %194
  store i32 8, i32* %17, align 4
  %198 = load i64, i64* %11, align 8
  %199 = add i64 %198, 1
  store i64 %199, i64* %13, align 8
  %200 = load i8*, i8** %23, align 8
  %201 = load i64, i64* %13, align 8
  %202 = getelementptr inbounds i8, i8* %200, i64 %201
  %203 = load i8, i8* %202, align 1
  %204 = sext i8 %203 to i32
  %205 = icmp sge i32 %204, 48
  br i1 %205, label %206, label %213

206:                                              ; preds = %197
  %207 = load i8*, i8** %23, align 8
  %208 = load i64, i64* %13, align 8
  %209 = getelementptr inbounds i8, i8* %207, i64 %208
  %210 = load i8, i8* %209, align 1
  %211 = sext i8 %210 to i32
  %212 = icmp sle i32 %211, 55
  br i1 %212, label %214, label %213

213:                                              ; preds = %206, %197
  br label %252

214:                                              ; preds = %206
  %215 = load i8**, i8*** @fmt, align 8
  %216 = load i64, i64* @OCTAL, align 8
  %217 = getelementptr inbounds i8*, i8** %215, i64 %216
  %218 = load i8*, i8** %217, align 8
  store i8* %218, i8** %20, align 8
  br label %271

219:                                              ; preds = %194, %187
  %220 = load i64, i64* %16, align 8
  %221 = icmp uge i64 %220, 1
  br i1 %221, label %222, label %251

222:                                              ; preds = %219
  %223 = load i8*, i8** %23, align 8
  %224 = load i64, i64* %11, align 8
  %225 = getelementptr inbounds i8, i8* %223, i64 %224
  %226 = load i8, i8* %225, align 1
  %227 = sext i8 %226 to i32
  %228 = icmp eq i32 %227, 43
  br i1 %228, label %236, label %229

229:                                              ; preds = %222
  %230 = load i8*, i8** %23, align 8
  %231 = load i64, i64* %11, align 8
  %232 = getelementptr inbounds i8, i8* %230, i64 %231
  %233 = load i8, i8* %232, align 1
  %234 = sext i8 %233 to i32
  %235 = icmp eq i32 %234, 45
  br i1 %235, label %236, label %251

236:                                              ; preds = %229, %222
  store i32 10, i32* %17, align 4
  %237 = load i64, i64* %11, align 8
  %238 = add i64 %237, 1
  store i64 %238, i64* %13, align 8
  %239 = load i8**, i8*** @fmt, align 8
  %240 = load i64, i64* @SDEC, align 8
  %241 = getelementptr inbounds i8*, i8** %239, i64 %240
  %242 = load i8*, i8** %241, align 8
  store i8* %242, i8** %20, align 8
  %243 = load i8*, i8** %23, align 8
  %244 = load i64, i64* %13, align 8
  %245 = getelementptr inbounds i8, i8* %243, i64 %244
  %246 = load i8, i8* %245, align 1
  %247 = call i64 @isdigit(i8 signext %246)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %250, label %249

249:                                              ; preds = %236
  br label %265

250:                                              ; preds = %236
  br label %270

251:                                              ; preds = %229, %219
  br label %252

252:                                              ; preds = %251, %213, %166
  store i32 10, i32* %17, align 4
  %253 = load i64, i64* %11, align 8
  store i64 %253, i64* %13, align 8
  %254 = load i8**, i8*** @fmt, align 8
  %255 = load i64, i64* @DEC, align 8
  %256 = getelementptr inbounds i8*, i8** %254, i64 %255
  %257 = load i8*, i8** %256, align 8
  store i8* %257, i8** %20, align 8
  %258 = load i8*, i8** %23, align 8
  %259 = load i64, i64* %13, align 8
  %260 = getelementptr inbounds i8, i8* %258, i64 %259
  %261 = load i8, i8* %260, align 1
  %262 = call i64 @isdigit(i8 signext %261)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %269, label %264

264:                                              ; preds = %252
  br label %265

265:                                              ; preds = %264, %249, %113, %85
  %266 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %267 = load i32, i32* @M_ERR, align 4
  %268 = call i32 @msgq(%struct.TYPE_19__* %266, i32 %267, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %546

269:                                              ; preds = %252
  br label %270

270:                                              ; preds = %269, %250
  br label %271

271:                                              ; preds = %270, %214
  br label %272

272:                                              ; preds = %271, %185
  br label %273

273:                                              ; preds = %332, %322, %309, %294, %272
  %274 = load i64, i64* %13, align 8
  %275 = add i64 %274, 1
  store i64 %275, i64* %13, align 8
  %276 = load i64, i64* %14, align 8
  %277 = icmp ult i64 %275, %276
  br i1 %277, label %278, label %337

278:                                              ; preds = %273
  %279 = load i32, i32* %17, align 4
  switch i32 %279, label %334 [
    i32 8, label %280
    i32 10, label %315
    i32 16, label %324
  ]

280:                                              ; preds = %278
  %281 = load i8*, i8** %23, align 8
  %282 = load i64, i64* %13, align 8
  %283 = getelementptr inbounds i8, i8* %281, i64 %282
  %284 = load i8, i8* %283, align 1
  %285 = sext i8 %284 to i32
  %286 = icmp sge i32 %285, 48
  br i1 %286, label %287, label %295

287:                                              ; preds = %280
  %288 = load i8*, i8** %23, align 8
  %289 = load i64, i64* %13, align 8
  %290 = getelementptr inbounds i8, i8* %288, i64 %289
  %291 = load i8, i8* %290, align 1
  %292 = sext i8 %291 to i32
  %293 = icmp sle i32 %292, 55
  br i1 %293, label %294, label %295

294:                                              ; preds = %287
  br label %273

295:                                              ; preds = %287, %280
  %296 = load i8*, i8** %23, align 8
  %297 = load i64, i64* %13, align 8
  %298 = getelementptr inbounds i8, i8* %296, i64 %297
  %299 = load i8, i8* %298, align 1
  %300 = sext i8 %299 to i32
  %301 = icmp eq i32 %300, 56
  br i1 %301, label %309, label %302

302:                                              ; preds = %295
  %303 = load i8*, i8** %23, align 8
  %304 = load i64, i64* %13, align 8
  %305 = getelementptr inbounds i8, i8* %303, i64 %304
  %306 = load i8, i8* %305, align 1
  %307 = sext i8 %306 to i32
  %308 = icmp eq i32 %307, 57
  br i1 %308, label %309, label %314

309:                                              ; preds = %302, %295
  store i32 10, i32* %17, align 4
  %310 = load i8**, i8*** @fmt, align 8
  %311 = load i64, i64* @DEC, align 8
  %312 = getelementptr inbounds i8*, i8** %310, i64 %311
  %313 = load i8*, i8** %312, align 8
  store i8* %313, i8** %20, align 8
  br label %273

314:                                              ; preds = %302
  br label %336

315:                                              ; preds = %278
  %316 = load i8*, i8** %23, align 8
  %317 = load i64, i64* %13, align 8
  %318 = getelementptr inbounds i8, i8* %316, i64 %317
  %319 = load i8, i8* %318, align 1
  %320 = call i64 @isdigit(i8 signext %319)
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %322, label %323

322:                                              ; preds = %315
  br label %273

323:                                              ; preds = %315
  br label %336

324:                                              ; preds = %278
  %325 = load i8*, i8** %23, align 8
  %326 = load i64, i64* %13, align 8
  %327 = getelementptr inbounds i8, i8* %325, i64 %326
  %328 = load i8, i8* %327, align 1
  %329 = sext i8 %328 to i32
  %330 = call i32 (i32, ...) bitcast (i32 (...)* @ISXDIGIT to i32 (i32, ...)*)(i32 %329)
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %333

332:                                              ; preds = %324
  br label %273

333:                                              ; preds = %324
  br label %336

334:                                              ; preds = %278
  %335 = call i32 (...) @abort() #3
  unreachable

336:                                              ; preds = %333, %323, %314
  br label %337

337:                                              ; preds = %336, %273
  %338 = load i64, i64* %13, align 8
  %339 = load i64, i64* %11, align 8
  %340 = sub i64 %338, %339
  store i64 %340, i64* %16, align 8
  %341 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %342 = load i8*, i8** %22, align 8
  %343 = load i64, i64* %12, align 8
  %344 = load i64, i64* %14, align 8
  %345 = add i64 %344, 50
  %346 = call i32 @GET_SPACE_RETW(%struct.TYPE_19__* %341, i8* %342, i64 %343, i64 %345)
  %347 = load i64, i64* %13, align 8
  %348 = load i64, i64* %14, align 8
  %349 = icmp eq i64 %347, %348
  br i1 %349, label %350, label %361

350:                                              ; preds = %337
  %351 = load i8*, i8** %22, align 8
  %352 = load i8*, i8** %23, align 8
  %353 = load i64, i64* %11, align 8
  %354 = getelementptr inbounds i8, i8* %352, i64 %353
  %355 = load i64, i64* %16, align 8
  %356 = call i32 @MEMMOVE(i8* %351, i8* %354, i64 %355)
  %357 = load i8*, i8** %22, align 8
  %358 = load i64, i64* %16, align 8
  %359 = getelementptr inbounds i8, i8* %357, i64 %358
  store i8 0, i8* %359, align 1
  %360 = load i8*, i8** %22, align 8
  store i8* %360, i8** %24, align 8
  br label %365

361:                                              ; preds = %337
  %362 = load i8*, i8** %23, align 8
  %363 = load i64, i64* %11, align 8
  %364 = getelementptr inbounds i8, i8* %362, i64 %363
  store i8* %364, i8** %24, align 8
  br label %365

365:                                              ; preds = %361, %350
  %366 = load i32, i32* %17, align 4
  %367 = icmp eq i32 %366, 10
  br i1 %367, label %368, label %437

368:                                              ; preds = %365
  %369 = load i8*, i8** %24, align 8
  %370 = call i32 @nget_slong(i64* %10, i8* %369, i32* null, i32 10)
  store i32 %370, i32* %6, align 4
  %371 = load i32, i32* @NUM_OK, align 4
  %372 = icmp ne i32 %370, %371
  br i1 %372, label %373, label %374

373:                                              ; preds = %368
  br label %532

374:                                              ; preds = %368
  %375 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %376 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %375, i32 0, i32 0
  %377 = load i8, i8* %376, align 8
  %378 = sext i8 %377 to i32
  %379 = icmp eq i32 %378, 45
  br i1 %379, label %380, label %383

380:                                              ; preds = %374
  %381 = load i64, i64* %8, align 8
  %382 = sub nsw i64 0, %381
  br label %385

383:                                              ; preds = %374
  %384 = load i64, i64* %8, align 8
  br label %385

385:                                              ; preds = %383, %380
  %386 = phi i64 [ %382, %380 ], [ %384, %383 ]
  store i64 %386, i64* %9, align 8
  %387 = load i64, i64* %10, align 8
  %388 = icmp sgt i64 %387, 0
  br i1 %388, label %389, label %400

389:                                              ; preds = %385
  %390 = load i64, i64* %9, align 8
  %391 = icmp sgt i64 %390, 0
  br i1 %391, label %392, label %400

392:                                              ; preds = %389
  %393 = load i64, i64* @LONG_MAX, align 8
  %394 = load i64, i64* %10, align 8
  %395 = load i64, i64* %9, align 8
  %396 = call i32 @NPFITS(i64 %393, i64 %394, i64 %395)
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %400, label %398

398:                                              ; preds = %392
  %399 = load i32, i32* @NUM_OVER, align 4
  store i32 %399, i32* %6, align 4
  br label %532

400:                                              ; preds = %392, %389, %385
  %401 = load i64, i64* %10, align 8
  %402 = icmp slt i64 %401, 0
  br i1 %402, label %403, label %414

403:                                              ; preds = %400
  %404 = load i64, i64* %9, align 8
  %405 = icmp slt i64 %404, 0
  br i1 %405, label %406, label %414

406:                                              ; preds = %403
  %407 = load i32, i32* @LONG_MIN, align 4
  %408 = load i64, i64* %10, align 8
  %409 = load i64, i64* %9, align 8
  %410 = call i32 @NNFITS(i32 %407, i64 %408, i64 %409)
  %411 = icmp ne i32 %410, 0
  br i1 %411, label %414, label %412

412:                                              ; preds = %406
  %413 = load i32, i32* @NUM_UNDER, align 4
  store i32 %413, i32* %6, align 4
  br label %532

414:                                              ; preds = %406, %403, %400
  %415 = load i64, i64* %9, align 8
  %416 = load i64, i64* %10, align 8
  %417 = add nsw i64 %416, %415
  store i64 %417, i64* %10, align 8
  %418 = load i64, i64* %10, align 8
  %419 = icmp eq i64 %418, 0
  br i1 %419, label %420, label %432

420:                                              ; preds = %414
  %421 = load i8*, i8** %20, align 8
  %422 = load i8**, i8*** @fmt, align 8
  %423 = load i64, i64* @SDEC, align 8
  %424 = getelementptr inbounds i8*, i8** %422, i64 %423
  %425 = load i8*, i8** %424, align 8
  %426 = icmp eq i8* %421, %425
  br i1 %426, label %427, label %432

427:                                              ; preds = %420
  %428 = load i8**, i8*** @fmt, align 8
  %429 = load i64, i64* @DEC, align 8
  %430 = getelementptr inbounds i8*, i8** %428, i64 %429
  %431 = load i8*, i8** %430, align 8
  store i8* %431, i8** %20, align 8
  br label %432

432:                                              ; preds = %427, %420, %414
  %433 = getelementptr inbounds [100 x i8], [100 x i8]* %21, i64 0, i64 0
  %434 = load i8*, i8** %20, align 8
  %435 = load i64, i64* %10, align 8
  %436 = call i64 (i8*, i32, i8*, i64, ...) @SPRINTF(i8* %433, i32 100, i8* %434, i64 %435)
  store i64 %436, i64* %15, align 8
  br label %484

437:                                              ; preds = %365
  %438 = load i8*, i8** %24, align 8
  %439 = load i32, i32* %17, align 4
  %440 = call i32 @nget_uslong(i64* %7, i8* %438, i32* null, i32 %439)
  store i32 %440, i32* %6, align 4
  %441 = load i32, i32* @NUM_OK, align 4
  %442 = icmp ne i32 %440, %441
  br i1 %442, label %443, label %444

443:                                              ; preds = %437
  br label %532

444:                                              ; preds = %437
  %445 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %446 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %445, i32 0, i32 0
  %447 = load i8, i8* %446, align 8
  %448 = sext i8 %447 to i32
  %449 = icmp eq i32 %448, 43
  br i1 %449, label %450, label %462

450:                                              ; preds = %444
  %451 = load i64, i64* @ULONG_MAX, align 8
  %452 = load i64, i64* %7, align 8
  %453 = load i64, i64* %8, align 8
  %454 = call i32 @NPFITS(i64 %451, i64 %452, i64 %453)
  %455 = icmp ne i32 %454, 0
  br i1 %455, label %458, label %456

456:                                              ; preds = %450
  %457 = load i32, i32* @NUM_OVER, align 4
  store i32 %457, i32* %6, align 4
  br label %532

458:                                              ; preds = %450
  %459 = load i64, i64* %8, align 8
  %460 = load i64, i64* %7, align 8
  %461 = add nsw i64 %460, %459
  store i64 %461, i64* %7, align 8
  br label %472

462:                                              ; preds = %444
  %463 = load i64, i64* %7, align 8
  %464 = load i64, i64* %8, align 8
  %465 = icmp slt i64 %463, %464
  br i1 %465, label %466, label %468

466:                                              ; preds = %462
  %467 = load i32, i32* @NUM_UNDER, align 4
  store i32 %467, i32* %6, align 4
  br label %532

468:                                              ; preds = %462
  %469 = load i64, i64* %8, align 8
  %470 = load i64, i64* %7, align 8
  %471 = sub nsw i64 %470, %469
  store i64 %471, i64* %7, align 8
  br label %472

472:                                              ; preds = %468, %458
  %473 = load i32, i32* %17, align 4
  %474 = icmp eq i32 %473, 16
  br i1 %474, label %475, label %478

475:                                              ; preds = %472
  %476 = load i64, i64* %16, align 8
  %477 = sub i64 %476, 2
  store i64 %477, i64* %16, align 8
  br label %478

478:                                              ; preds = %475, %472
  %479 = getelementptr inbounds [100 x i8], [100 x i8]* %21, i64 0, i64 0
  %480 = load i8*, i8** %20, align 8
  %481 = load i64, i64* %16, align 8
  %482 = load i64, i64* %7, align 8
  %483 = call i64 (i8*, i32, i8*, i64, ...) @SPRINTF(i8* %479, i32 100, i8* %480, i64 %481, i64 %482)
  store i64 %483, i64* %15, align 8
  br label %484

484:                                              ; preds = %478, %432
  %485 = load i8*, i8** %22, align 8
  %486 = load i8*, i8** %23, align 8
  %487 = load i64, i64* %11, align 8
  %488 = call i32 @MEMMOVE(i8* %485, i8* %486, i64 %487)
  %489 = load i8*, i8** %22, align 8
  %490 = load i64, i64* %11, align 8
  %491 = getelementptr inbounds i8, i8* %489, i64 %490
  %492 = getelementptr inbounds [100 x i8], [100 x i8]* %21, i64 0, i64 0
  %493 = load i64, i64* %15, align 8
  %494 = call i32 @MEMMOVE(i8* %491, i8* %492, i64 %493)
  %495 = load i8*, i8** %22, align 8
  %496 = load i64, i64* %11, align 8
  %497 = getelementptr inbounds i8, i8* %495, i64 %496
  %498 = load i64, i64* %15, align 8
  %499 = getelementptr inbounds i8, i8* %497, i64 %498
  %500 = load i8*, i8** %23, align 8
  %501 = load i64, i64* %13, align 8
  %502 = getelementptr inbounds i8, i8* %500, i64 %501
  %503 = load i64, i64* %14, align 8
  %504 = load i64, i64* %11, align 8
  %505 = sub i64 %503, %504
  %506 = load i64, i64* %13, align 8
  %507 = load i64, i64* %11, align 8
  %508 = sub i64 %506, %507
  %509 = sub i64 %505, %508
  %510 = call i32 @MEMMOVE(i8* %499, i8* %502, i64 %509)
  %511 = load i64, i64* %11, align 8
  %512 = load i64, i64* %15, align 8
  %513 = add i64 %511, %512
  %514 = load i64, i64* %14, align 8
  %515 = load i64, i64* %11, align 8
  %516 = sub i64 %514, %515
  %517 = load i64, i64* %13, align 8
  %518 = load i64, i64* %11, align 8
  %519 = sub i64 %517, %518
  %520 = sub i64 %516, %519
  %521 = add i64 %513, %520
  store i64 %521, i64* %14, align 8
  %522 = load i32, i32* @NUM_OK, align 4
  store i32 %522, i32* %6, align 4
  %523 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %524 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %525 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %524, i32 0, i32 2
  %526 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %525, i32 0, i32 1
  %527 = load i32, i32* %526, align 8
  %528 = load i8*, i8** %22, align 8
  %529 = load i64, i64* %14, align 8
  %530 = call i32 @db_set(%struct.TYPE_19__* %523, i32 %527, i8* %528, i64 %529)
  store i32 %530, i32* %19, align 4
  br i1 false, label %531, label %536

531:                                              ; preds = %484
  br label %532

532:                                              ; preds = %531, %466, %456, %443, %412, %398, %373
  store i32 1, i32* %19, align 4
  %533 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %534 = load i32, i32* %6, align 4
  %535 = call i32 @inc_err(%struct.TYPE_19__* %533, i32 %534)
  br label %536

536:                                              ; preds = %532, %484
  %537 = load i8*, i8** %22, align 8
  %538 = icmp ne i8* %537, null
  br i1 %538, label %539, label %544

539:                                              ; preds = %536
  %540 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %541 = load i8*, i8** %22, align 8
  %542 = load i64, i64* %12, align 8
  %543 = call i32 @FREE_SPACEW(%struct.TYPE_19__* %540, i8* %541, i64 %542)
  br label %544

544:                                              ; preds = %539, %536
  %545 = load i32, i32* %19, align 4
  store i32 %545, i32* %3, align 4
  br label %546

546:                                              ; preds = %544, %265, %86, %65, %45
  %547 = load i32, i32* %3, align 4
  ret i32 %547
}

declare dso_local i32 @v_emsg(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i64 @F_ISSET(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @inc_err(%struct.TYPE_19__*, i32) #1

declare dso_local i64 @db_eget(%struct.TYPE_19__*, i32, i8**, i64*, i32*) #1

declare dso_local i64 @ISSPACE(i8 signext) #1

declare dso_local i32 @vs_refresh(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @ISXDIGIT(...) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @msgq(%struct.TYPE_19__*, i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @GET_SPACE_RETW(%struct.TYPE_19__*, i8*, i64, i64) #1

declare dso_local i32 @MEMMOVE(i8*, i8*, i64) #1

declare dso_local i32 @nget_slong(i64*, i8*, i32*, i32) #1

declare dso_local i32 @NPFITS(i64, i64, i64) #1

declare dso_local i32 @NNFITS(i32, i64, i64) #1

declare dso_local i64 @SPRINTF(i8*, i32, i8*, i64, ...) #1

declare dso_local i32 @nget_uslong(i64*, i8*, i32*, i32) #1

declare dso_local i32 @db_set(%struct.TYPE_19__*, i32, i8*, i64) #1

declare dso_local i32 @FREE_SPACEW(%struct.TYPE_19__*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
