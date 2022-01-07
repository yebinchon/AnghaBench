; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/regex/extr_engine.c_swalk.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/regex/extr_engine.c_swalk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.match = type { i8*, i8*, i32, i8*, i8*, i32, %struct.TYPE_2__*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i64 }

@.str = private unnamed_addr constant [5 x i8] c"slow\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"sstart\00", align 1
@NOTHING = common dso_local global i8 0, align 1
@REG_NOTBOL = common dso_local global i32 0, align 4
@OUT = common dso_local global i8 0, align 1
@BADCHAR = common dso_local global i32 0, align 4
@REG_NEWLINE = common dso_local global i32 0, align 4
@BOL = common dso_local global i8 0, align 1
@REG_NOTEOL = common dso_local global i32 0, align 4
@BOLEOL = common dso_local global i8 0, align 1
@EOL = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"sboleol\00", align 1
@BOW = common dso_local global i8 0, align 1
@EOW = common dso_local global i8 0, align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"sboweow\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"saft\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.match*, i8*, i8*, i32, i32, i32)* @walk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @walk(%struct.match* %0, i8* %1, i8* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca %struct.match*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8, align 1
  %20 = alloca i8, align 1
  %21 = alloca i8, align 1
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  store %struct.match* %0, %struct.match** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %25 = load %struct.match*, %struct.match** %8, align 8
  %26 = getelementptr inbounds %struct.match, %struct.match* %25, i32 0, i32 10
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %14, align 4
  %28 = load %struct.match*, %struct.match** %8, align 8
  %29 = getelementptr inbounds %struct.match, %struct.match* %28, i32 0, i32 9
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %15, align 4
  %31 = load %struct.match*, %struct.match** %8, align 8
  %32 = getelementptr inbounds %struct.match, %struct.match* %31, i32 0, i32 8
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %16, align 4
  %34 = load %struct.match*, %struct.match** %8, align 8
  %35 = getelementptr inbounds %struct.match, %struct.match* %34, i32 0, i32 7
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %17, align 4
  %37 = load i8*, i8** %9, align 8
  store i8* %37, i8** %18, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @AT(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %38, i8* %39, i32 %40, i32 %41)
  %43 = load i32, i32* %14, align 4
  %44 = call i32 @CLEAR(i32 %43)
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @SET1(i32 %45, i32 %46)
  %48 = load i32, i32* %14, align 4
  %49 = load i8*, i8** %18, align 8
  %50 = load i8, i8* %49, align 1
  %51 = call i32 @SP(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %48, i8 signext %50)
  %52 = load %struct.match*, %struct.match** %8, align 8
  %53 = getelementptr inbounds %struct.match, %struct.match* %52, i32 0, i32 6
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %14, align 4
  %58 = load i8, i8* @NOTHING, align 1
  %59 = load i32, i32* %14, align 4
  %60 = call i32 @step(%struct.TYPE_2__* %54, i32 %55, i32 %56, i32 %57, i8 signext %58, i32 %59)
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* %13, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %6
  %64 = load i32, i32* %15, align 4
  %65 = load i32, i32* %14, align 4
  %66 = call i32 @ASSIGN(i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %63, %6
  store i8* null, i8** %23, align 8
  %68 = load i8*, i8** %9, align 8
  %69 = load %struct.match*, %struct.match** %8, align 8
  %70 = getelementptr inbounds %struct.match, %struct.match* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = icmp eq i8* %68, %71
  br i1 %72, label %86, label %73

73:                                               ; preds = %67
  %74 = load i8*, i8** %9, align 8
  %75 = load %struct.match*, %struct.match** %8, align 8
  %76 = getelementptr inbounds %struct.match, %struct.match* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = icmp eq i8* %74, %77
  br i1 %78, label %79, label %88

79:                                               ; preds = %73
  %80 = load %struct.match*, %struct.match** %8, align 8
  %81 = getelementptr inbounds %struct.match, %struct.match* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @REG_NOTBOL, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %79, %67
  %87 = load i8, i8* @OUT, align 1
  store i8 %87, i8* %19, align 1
  br label %92

88:                                               ; preds = %79, %73
  %89 = load i8*, i8** %9, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 -1
  %91 = load i8, i8* %90, align 1
  store i8 %91, i8* %19, align 1
  br label %92

92:                                               ; preds = %88, %86
  br label %93

93:                                               ; preds = %359, %92
  %94 = load i8, i8* %19, align 1
  store i8 %94, i8* %20, align 1
  %95 = load i8*, i8** %18, align 8
  %96 = load %struct.match*, %struct.match** %8, align 8
  %97 = getelementptr inbounds %struct.match, %struct.match* %96, i32 0, i32 3
  %98 = load i8*, i8** %97, align 8
  %99 = icmp eq i8* %95, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %93
  %101 = load i8, i8* @OUT, align 1
  store i8 %101, i8* %19, align 1
  store i64 0, i64* %24, align 8
  br label %117

102:                                              ; preds = %93
  %103 = load i8*, i8** %18, align 8
  %104 = load %struct.match*, %struct.match** %8, align 8
  %105 = getelementptr inbounds %struct.match, %struct.match* %104, i32 0, i32 3
  %106 = load i8*, i8** %105, align 8
  %107 = load i8*, i8** %18, align 8
  %108 = ptrtoint i8* %106 to i64
  %109 = ptrtoint i8* %107 to i64
  %110 = sub i64 %108, %109
  %111 = trunc i64 %110 to i32
  %112 = load %struct.match*, %struct.match** %8, align 8
  %113 = getelementptr inbounds %struct.match, %struct.match* %112, i32 0, i32 5
  %114 = load i32, i32* @BADCHAR, align 4
  %115 = call i32 @XMBRTOWC(i8* %19, i8* %103, i32 %111, i32* %113, i32 %114)
  %116 = sext i32 %115 to i64
  store i64 %116, i64* %24, align 8
  br label %117

117:                                              ; preds = %102, %100
  %118 = load i32, i32* %13, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %117
  %121 = load i32, i32* %14, align 4
  %122 = load i32, i32* %15, align 4
  %123 = call i32 @EQ(i32 %121, i32 %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %120
  %126 = load i8*, i8** %18, align 8
  store i8* %126, i8** %23, align 8
  br label %127

127:                                              ; preds = %125, %120, %117
  store i8 0, i8* %21, align 1
  store i32 0, i32* %22, align 4
  %128 = load i8, i8* %20, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp eq i32 %129, 10
  br i1 %130, label %131, label %140

131:                                              ; preds = %127
  %132 = load %struct.match*, %struct.match** %8, align 8
  %133 = getelementptr inbounds %struct.match, %struct.match* %132, i32 0, i32 6
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @REG_NEWLINE, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %153, label %140

140:                                              ; preds = %131, %127
  %141 = load i8, i8* %20, align 1
  %142 = sext i8 %141 to i32
  %143 = load i8, i8* @OUT, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp eq i32 %142, %144
  br i1 %145, label %146, label %160

146:                                              ; preds = %140
  %147 = load %struct.match*, %struct.match** %8, align 8
  %148 = getelementptr inbounds %struct.match, %struct.match* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @REG_NOTBOL, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %160, label %153

153:                                              ; preds = %146, %131
  %154 = load i8, i8* @BOL, align 1
  store i8 %154, i8* %21, align 1
  %155 = load %struct.match*, %struct.match** %8, align 8
  %156 = getelementptr inbounds %struct.match, %struct.match* %155, i32 0, i32 6
  %157 = load %struct.TYPE_2__*, %struct.TYPE_2__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  store i32 %159, i32* %22, align 4
  br label %160

160:                                              ; preds = %153, %146, %140
  %161 = load i8, i8* %19, align 1
  %162 = sext i8 %161 to i32
  %163 = icmp eq i32 %162, 10
  br i1 %163, label %164, label %173

164:                                              ; preds = %160
  %165 = load %struct.match*, %struct.match** %8, align 8
  %166 = getelementptr inbounds %struct.match, %struct.match* %165, i32 0, i32 6
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @REG_NEWLINE, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %186, label %173

173:                                              ; preds = %164, %160
  %174 = load i8, i8* %19, align 1
  %175 = sext i8 %174 to i32
  %176 = load i8, i8* @OUT, align 1
  %177 = sext i8 %176 to i32
  %178 = icmp eq i32 %175, %177
  br i1 %178, label %179, label %210

179:                                              ; preds = %173
  %180 = load %struct.match*, %struct.match** %8, align 8
  %181 = getelementptr inbounds %struct.match, %struct.match* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @REG_NOTEOL, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %210, label %186

186:                                              ; preds = %179, %164
  %187 = load i8, i8* %21, align 1
  %188 = sext i8 %187 to i32
  %189 = load i8, i8* @BOL, align 1
  %190 = sext i8 %189 to i32
  %191 = icmp eq i32 %188, %190
  br i1 %191, label %192, label %195

192:                                              ; preds = %186
  %193 = load i8, i8* @BOLEOL, align 1
  %194 = sext i8 %193 to i32
  br label %198

195:                                              ; preds = %186
  %196 = load i8, i8* @EOL, align 1
  %197 = sext i8 %196 to i32
  br label %198

198:                                              ; preds = %195, %192
  %199 = phi i32 [ %194, %192 ], [ %197, %195 ]
  %200 = trunc i32 %199 to i8
  store i8 %200, i8* %21, align 1
  %201 = load %struct.match*, %struct.match** %8, align 8
  %202 = getelementptr inbounds %struct.match, %struct.match* %201, i32 0, i32 6
  %203 = load %struct.TYPE_2__*, %struct.TYPE_2__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i32 0, i32 2
  %205 = load i64, i64* %204, align 8
  %206 = load i32, i32* %22, align 4
  %207 = sext i32 %206 to i64
  %208 = add nsw i64 %207, %205
  %209 = trunc i64 %208 to i32
  store i32 %209, i32* %22, align 4
  br label %210

210:                                              ; preds = %198, %179, %173
  %211 = load i32, i32* %22, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %234

213:                                              ; preds = %210
  br label %214

214:                                              ; preds = %227, %213
  %215 = load i32, i32* %22, align 4
  %216 = icmp sgt i32 %215, 0
  br i1 %216, label %217, label %230

217:                                              ; preds = %214
  %218 = load %struct.match*, %struct.match** %8, align 8
  %219 = getelementptr inbounds %struct.match, %struct.match* %218, i32 0, i32 6
  %220 = load %struct.TYPE_2__*, %struct.TYPE_2__** %219, align 8
  %221 = load i32, i32* %11, align 4
  %222 = load i32, i32* %12, align 4
  %223 = load i32, i32* %14, align 4
  %224 = load i8, i8* %21, align 1
  %225 = load i32, i32* %14, align 4
  %226 = call i32 @step(%struct.TYPE_2__* %220, i32 %221, i32 %222, i32 %223, i8 signext %224, i32 %225)
  store i32 %226, i32* %14, align 4
  br label %227

227:                                              ; preds = %217
  %228 = load i32, i32* %22, align 4
  %229 = add nsw i32 %228, -1
  store i32 %229, i32* %22, align 4
  br label %214

230:                                              ; preds = %214
  %231 = load i32, i32* %14, align 4
  %232 = load i8, i8* %19, align 1
  %233 = call i32 @SP(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %231, i8 signext %232)
  br label %234

234:                                              ; preds = %230, %210
  %235 = load i8, i8* %21, align 1
  %236 = sext i8 %235 to i32
  %237 = load i8, i8* @BOL, align 1
  %238 = sext i8 %237 to i32
  %239 = icmp eq i32 %236, %238
  br i1 %239, label %250, label %240

240:                                              ; preds = %234
  %241 = load i8, i8* %20, align 1
  %242 = sext i8 %241 to i32
  %243 = load i8, i8* @OUT, align 1
  %244 = sext i8 %243 to i32
  %245 = icmp ne i32 %242, %244
  br i1 %245, label %246, label %262

246:                                              ; preds = %240
  %247 = load i8, i8* %20, align 1
  %248 = call i64 @ISWORD(i8 signext %247)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %262, label %250

250:                                              ; preds = %246, %234
  %251 = load i8, i8* %19, align 1
  %252 = sext i8 %251 to i32
  %253 = load i8, i8* @OUT, align 1
  %254 = sext i8 %253 to i32
  %255 = icmp ne i32 %252, %254
  br i1 %255, label %256, label %262

256:                                              ; preds = %250
  %257 = load i8, i8* %19, align 1
  %258 = call i64 @ISWORD(i8 signext %257)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %262

260:                                              ; preds = %256
  %261 = load i8, i8* @BOW, align 1
  store i8 %261, i8* %21, align 1
  br label %262

262:                                              ; preds = %260, %256, %250, %246, %240
  %263 = load i8, i8* %20, align 1
  %264 = sext i8 %263 to i32
  %265 = load i8, i8* @OUT, align 1
  %266 = sext i8 %265 to i32
  %267 = icmp ne i32 %264, %266
  br i1 %267, label %268, label %290

268:                                              ; preds = %262
  %269 = load i8, i8* %20, align 1
  %270 = call i64 @ISWORD(i8 signext %269)
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %290

272:                                              ; preds = %268
  %273 = load i8, i8* %21, align 1
  %274 = sext i8 %273 to i32
  %275 = load i8, i8* @EOL, align 1
  %276 = sext i8 %275 to i32
  %277 = icmp eq i32 %274, %276
  br i1 %277, label %288, label %278

278:                                              ; preds = %272
  %279 = load i8, i8* %19, align 1
  %280 = sext i8 %279 to i32
  %281 = load i8, i8* @OUT, align 1
  %282 = sext i8 %281 to i32
  %283 = icmp ne i32 %280, %282
  br i1 %283, label %284, label %290

284:                                              ; preds = %278
  %285 = load i8, i8* %19, align 1
  %286 = call i64 @ISWORD(i8 signext %285)
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %290, label %288

288:                                              ; preds = %284, %272
  %289 = load i8, i8* @EOW, align 1
  store i8 %289, i8* %21, align 1
  br label %290

290:                                              ; preds = %288, %284, %278, %268, %262
  %291 = load i8, i8* %21, align 1
  %292 = sext i8 %291 to i32
  %293 = load i8, i8* @BOW, align 1
  %294 = sext i8 %293 to i32
  %295 = icmp eq i32 %292, %294
  br i1 %295, label %302, label %296

296:                                              ; preds = %290
  %297 = load i8, i8* %21, align 1
  %298 = sext i8 %297 to i32
  %299 = load i8, i8* @EOW, align 1
  %300 = sext i8 %299 to i32
  %301 = icmp eq i32 %298, %300
  br i1 %301, label %302, label %315

302:                                              ; preds = %296, %290
  %303 = load %struct.match*, %struct.match** %8, align 8
  %304 = getelementptr inbounds %struct.match, %struct.match* %303, i32 0, i32 6
  %305 = load %struct.TYPE_2__*, %struct.TYPE_2__** %304, align 8
  %306 = load i32, i32* %11, align 4
  %307 = load i32, i32* %12, align 4
  %308 = load i32, i32* %14, align 4
  %309 = load i8, i8* %21, align 1
  %310 = load i32, i32* %14, align 4
  %311 = call i32 @step(%struct.TYPE_2__* %305, i32 %306, i32 %307, i32 %308, i8 signext %309, i32 %310)
  store i32 %311, i32* %14, align 4
  %312 = load i32, i32* %14, align 4
  %313 = load i8, i8* %19, align 1
  %314 = call i32 @SP(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %312, i8 signext %313)
  br label %315

315:                                              ; preds = %302, %296
  %316 = load i32, i32* %14, align 4
  %317 = load i32, i32* %12, align 4
  %318 = call i64 @ISSET(i32 %316, i32 %317)
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %320, label %327

320:                                              ; preds = %315
  %321 = load i32, i32* %13, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %324

323:                                              ; preds = %320
  br label %394

324:                                              ; preds = %320
  %325 = load i8*, i8** %18, align 8
  store i8* %325, i8** %23, align 8
  br label %326

326:                                              ; preds = %324
  br label %327

327:                                              ; preds = %326, %315
  %328 = load i32, i32* %14, align 4
  %329 = load i32, i32* %16, align 4
  %330 = call i32 @EQ(i32 %328, i32 %329)
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %344, label %332

332:                                              ; preds = %327
  %333 = load i8*, i8** %18, align 8
  %334 = load i8*, i8** %10, align 8
  %335 = icmp eq i8* %333, %334
  br i1 %335, label %344, label %336

336:                                              ; preds = %332
  %337 = load i64, i64* %24, align 8
  %338 = load i8*, i8** %10, align 8
  %339 = load i8*, i8** %18, align 8
  %340 = ptrtoint i8* %338 to i64
  %341 = ptrtoint i8* %339 to i64
  %342 = sub i64 %340, %341
  %343 = icmp ugt i64 %337, %342
  br i1 %343, label %344, label %345

344:                                              ; preds = %336, %332, %327
  br label %394

345:                                              ; preds = %336
  %346 = load i32, i32* %17, align 4
  %347 = load i32, i32* %14, align 4
  %348 = call i32 @ASSIGN(i32 %346, i32 %347)
  %349 = load i32, i32* %13, align 4
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %355

351:                                              ; preds = %345
  %352 = load i32, i32* %14, align 4
  %353 = load i32, i32* %15, align 4
  %354 = call i32 @ASSIGN(i32 %352, i32 %353)
  br label %359

355:                                              ; preds = %345
  %356 = load i32, i32* %14, align 4
  %357 = load i32, i32* %16, align 4
  %358 = call i32 @ASSIGN(i32 %356, i32 %357)
  br label %359

359:                                              ; preds = %355, %351
  %360 = load i8, i8* %19, align 1
  %361 = sext i8 %360 to i32
  %362 = load i8, i8* @OUT, align 1
  %363 = sext i8 %362 to i32
  %364 = icmp ne i32 %361, %363
  %365 = zext i1 %364 to i32
  %366 = call i32 @assert(i32 %365)
  %367 = load %struct.match*, %struct.match** %8, align 8
  %368 = getelementptr inbounds %struct.match, %struct.match* %367, i32 0, i32 6
  %369 = load %struct.TYPE_2__*, %struct.TYPE_2__** %368, align 8
  %370 = load i32, i32* %11, align 4
  %371 = load i32, i32* %12, align 4
  %372 = load i32, i32* %17, align 4
  %373 = load i8, i8* %19, align 1
  %374 = load i32, i32* %14, align 4
  %375 = call i32 @step(%struct.TYPE_2__* %369, i32 %370, i32 %371, i32 %372, i8 signext %373, i32 %374)
  store i32 %375, i32* %14, align 4
  %376 = load i32, i32* %14, align 4
  %377 = load i8, i8* %19, align 1
  %378 = call i32 @SP(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %376, i8 signext %377)
  %379 = load %struct.match*, %struct.match** %8, align 8
  %380 = getelementptr inbounds %struct.match, %struct.match* %379, i32 0, i32 6
  %381 = load %struct.TYPE_2__*, %struct.TYPE_2__** %380, align 8
  %382 = load i32, i32* %11, align 4
  %383 = load i32, i32* %12, align 4
  %384 = load i32, i32* %14, align 4
  %385 = load i8, i8* @NOTHING, align 1
  %386 = load i32, i32* %14, align 4
  %387 = call i32 @step(%struct.TYPE_2__* %381, i32 %382, i32 %383, i32 %384, i8 signext %385, i32 %386)
  %388 = load i32, i32* %14, align 4
  %389 = call i32 @EQ(i32 %387, i32 %388)
  %390 = call i32 @assert(i32 %389)
  %391 = load i64, i64* %24, align 8
  %392 = load i8*, i8** %18, align 8
  %393 = getelementptr inbounds i8, i8* %392, i64 %391
  store i8* %393, i8** %18, align 8
  br label %93

394:                                              ; preds = %344, %323
  %395 = load i32, i32* %13, align 4
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %397, label %424

397:                                              ; preds = %394
  %398 = load i8*, i8** %23, align 8
  %399 = icmp ne i8* %398, null
  %400 = zext i1 %399 to i32
  %401 = call i32 @assert(i32 %400)
  %402 = load i8*, i8** %23, align 8
  %403 = load %struct.match*, %struct.match** %8, align 8
  %404 = getelementptr inbounds %struct.match, %struct.match* %403, i32 0, i32 4
  store i8* %402, i8** %404, align 8
  %405 = load i32, i32* %14, align 4
  %406 = load i32, i32* %12, align 4
  %407 = call i64 @ISSET(i32 %405, i32 %406)
  %408 = icmp ne i64 %407, 0
  br i1 %408, label %409, label %423

409:                                              ; preds = %397
  %410 = load i8*, i8** %18, align 8
  %411 = load i8*, i8** %18, align 8
  %412 = load i8*, i8** %10, align 8
  %413 = load i8*, i8** %18, align 8
  %414 = ptrtoint i8* %412 to i64
  %415 = ptrtoint i8* %413 to i64
  %416 = sub i64 %414, %415
  %417 = trunc i64 %416 to i32
  %418 = load %struct.match*, %struct.match** %8, align 8
  %419 = getelementptr inbounds %struct.match, %struct.match* %418, i32 0, i32 5
  %420 = call i32 @XMBRTOWC(i8* null, i8* %411, i32 %417, i32* %419, i32 0)
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds i8, i8* %410, i64 %421
  store i8* %422, i8** %7, align 8
  br label %426

423:                                              ; preds = %397
  store i8* null, i8** %7, align 8
  br label %426

424:                                              ; preds = %394
  %425 = load i8*, i8** %23, align 8
  store i8* %425, i8** %7, align 8
  br label %426

426:                                              ; preds = %424, %423, %409
  %427 = load i8*, i8** %7, align 8
  ret i8* %427
}

declare dso_local i32 @AT(i8*, i8*, i8*, i32, i32) #1

declare dso_local i32 @CLEAR(i32) #1

declare dso_local i32 @SET1(i32, i32) #1

declare dso_local i32 @SP(i8*, i32, i8 signext) #1

declare dso_local i32 @step(%struct.TYPE_2__*, i32, i32, i32, i8 signext, i32) #1

declare dso_local i32 @ASSIGN(i32, i32) #1

declare dso_local i32 @XMBRTOWC(i8*, i8*, i32, i32*, i32) #1

declare dso_local i32 @EQ(i32, i32) #1

declare dso_local i64 @ISWORD(i8 signext) #1

declare dso_local i64 @ISSET(i32, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
