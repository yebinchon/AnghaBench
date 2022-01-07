; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/regex/extr_engine.c_sfast.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/regex/extr_engine.c_sfast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.match = type { i8*, i8*, i32, i8*, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i64 }

@OUT = common dso_local global i8 0, align 1
@NOTHING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"start\00", align 1
@REG_NEWLINE = common dso_local global i32 0, align 4
@REG_NOTBOL = common dso_local global i32 0, align 4
@BOL = common dso_local global i32 0, align 4
@REG_NOTEOL = common dso_local global i32 0, align 4
@BOLEOL = common dso_local global i32 0, align 4
@EOL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"boleol\00", align 1
@BOW = common dso_local global i32 0, align 4
@EOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"boweow\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"aft\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.match*, i8*, i8*, i32, i32)* @fast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fast(%struct.match* %0, i8* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.match*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  store %struct.match* %0, %struct.match** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %21 = load %struct.match*, %struct.match** %7, align 8
  %22 = getelementptr inbounds %struct.match, %struct.match* %21, i32 0, i32 7
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %12, align 4
  %24 = load %struct.match*, %struct.match** %7, align 8
  %25 = getelementptr inbounds %struct.match, %struct.match* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %13, align 4
  %27 = load %struct.match*, %struct.match** %7, align 8
  %28 = getelementptr inbounds %struct.match, %struct.match* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %14, align 4
  %30 = load i8*, i8** %8, align 8
  store i8* %30, i8** %15, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = load %struct.match*, %struct.match** %7, align 8
  %33 = getelementptr inbounds %struct.match, %struct.match* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = icmp eq i8* %31, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %5
  %37 = load i8, i8* @OUT, align 1
  %38 = sext i8 %37 to i32
  br label %44

39:                                               ; preds = %5
  %40 = load i8*, i8** %8, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 -1
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  br label %44

44:                                               ; preds = %39, %36
  %45 = phi i32 [ %38, %36 ], [ %43, %39 ]
  %46 = trunc i32 %45 to i8
  store i8 %46, i8* %16, align 1
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @CLEAR(i32 %47)
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @SET1(i32 %49, i32 %50)
  %52 = load %struct.match*, %struct.match** %7, align 8
  %53 = getelementptr inbounds %struct.match, %struct.match* %52, i32 0, i32 4
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* @NOTHING, align 4
  %59 = load i8, i8* @OUT, align 1
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @step(%struct.TYPE_2__* %54, i32 %55, i32 %56, i32 %57, i32 %58, i8 signext %59, i32 %60)
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* %12, align 4
  %64 = call i32 @ASSIGN(i32 %62, i32 %63)
  %65 = load i32, i32* %12, align 4
  %66 = load i8*, i8** %15, align 8
  %67 = load i8, i8* %66, align 1
  %68 = call i32 @SP(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %65, i8 signext %67)
  store i8* null, i8** %20, align 8
  br label %69

69:                                               ; preds = %279, %44
  %70 = load i8, i8* %16, align 1
  store i8 %70, i8* %17, align 1
  %71 = load i8*, i8** %15, align 8
  %72 = load %struct.match*, %struct.match** %7, align 8
  %73 = getelementptr inbounds %struct.match, %struct.match* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = icmp eq i8* %71, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %69
  %77 = load i8, i8* @OUT, align 1
  %78 = sext i8 %77 to i32
  br label %83

79:                                               ; preds = %69
  %80 = load i8*, i8** %15, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  br label %83

83:                                               ; preds = %79, %76
  %84 = phi i32 [ %78, %76 ], [ %82, %79 ]
  %85 = trunc i32 %84 to i8
  store i8 %85, i8* %16, align 1
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* %13, align 4
  %88 = call i32 @EQ(i32 %86, i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %83
  %91 = load i8*, i8** %15, align 8
  store i8* %91, i8** %20, align 8
  br label %92

92:                                               ; preds = %90, %83
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %93 = load i8, i8* %17, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 10
  br i1 %95, label %96, label %105

96:                                               ; preds = %92
  %97 = load %struct.match*, %struct.match** %7, align 8
  %98 = getelementptr inbounds %struct.match, %struct.match* %97, i32 0, i32 4
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @REG_NEWLINE, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %118, label %105

105:                                              ; preds = %96, %92
  %106 = load i8, i8* %17, align 1
  %107 = sext i8 %106 to i32
  %108 = load i8, i8* @OUT, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 %107, %109
  br i1 %110, label %111, label %125

111:                                              ; preds = %105
  %112 = load %struct.match*, %struct.match** %7, align 8
  %113 = getelementptr inbounds %struct.match, %struct.match* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @REG_NOTBOL, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %125, label %118

118:                                              ; preds = %111, %96
  %119 = load i32, i32* @BOL, align 4
  store i32 %119, i32* %18, align 4
  %120 = load %struct.match*, %struct.match** %7, align 8
  %121 = getelementptr inbounds %struct.match, %struct.match* %120, i32 0, i32 4
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %19, align 4
  br label %125

125:                                              ; preds = %118, %111, %105
  %126 = load i8, i8* %16, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp eq i32 %127, 10
  br i1 %128, label %129, label %138

129:                                              ; preds = %125
  %130 = load %struct.match*, %struct.match** %7, align 8
  %131 = getelementptr inbounds %struct.match, %struct.match* %130, i32 0, i32 4
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @REG_NEWLINE, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %151, label %138

138:                                              ; preds = %129, %125
  %139 = load i8, i8* %16, align 1
  %140 = sext i8 %139 to i32
  %141 = load i8, i8* @OUT, align 1
  %142 = sext i8 %141 to i32
  %143 = icmp eq i32 %140, %142
  br i1 %143, label %144, label %170

144:                                              ; preds = %138
  %145 = load %struct.match*, %struct.match** %7, align 8
  %146 = getelementptr inbounds %struct.match, %struct.match* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @REG_NOTEOL, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %170, label %151

151:                                              ; preds = %144, %129
  %152 = load i32, i32* %18, align 4
  %153 = load i32, i32* @BOL, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %157

155:                                              ; preds = %151
  %156 = load i32, i32* @BOLEOL, align 4
  br label %159

157:                                              ; preds = %151
  %158 = load i32, i32* @EOL, align 4
  br label %159

159:                                              ; preds = %157, %155
  %160 = phi i32 [ %156, %155 ], [ %158, %157 ]
  store i32 %160, i32* %18, align 4
  %161 = load %struct.match*, %struct.match** %7, align 8
  %162 = getelementptr inbounds %struct.match, %struct.match* %161, i32 0, i32 4
  %163 = load %struct.TYPE_2__*, %struct.TYPE_2__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = load i32, i32* %19, align 4
  %167 = sext i32 %166 to i64
  %168 = add nsw i64 %167, %165
  %169 = trunc i64 %168 to i32
  store i32 %169, i32* %19, align 4
  br label %170

170:                                              ; preds = %159, %144, %138
  %171 = load i32, i32* %19, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %195

173:                                              ; preds = %170
  br label %174

174:                                              ; preds = %188, %173
  %175 = load i32, i32* %19, align 4
  %176 = icmp sgt i32 %175, 0
  br i1 %176, label %177, label %191

177:                                              ; preds = %174
  %178 = load %struct.match*, %struct.match** %7, align 8
  %179 = getelementptr inbounds %struct.match, %struct.match* %178, i32 0, i32 4
  %180 = load %struct.TYPE_2__*, %struct.TYPE_2__** %179, align 8
  %181 = load i32, i32* %10, align 4
  %182 = load i32, i32* %11, align 4
  %183 = load i32, i32* %12, align 4
  %184 = load i32, i32* %18, align 4
  %185 = load i8, i8* @OUT, align 1
  %186 = load i32, i32* %12, align 4
  %187 = call i32 @step(%struct.TYPE_2__* %180, i32 %181, i32 %182, i32 %183, i32 %184, i8 signext %185, i32 %186)
  store i32 %187, i32* %12, align 4
  br label %188

188:                                              ; preds = %177
  %189 = load i32, i32* %19, align 4
  %190 = add nsw i32 %189, -1
  store i32 %190, i32* %19, align 4
  br label %174

191:                                              ; preds = %174
  %192 = load i32, i32* %12, align 4
  %193 = load i8, i8* %16, align 1
  %194 = call i32 @SP(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %192, i8 signext %193)
  br label %195

195:                                              ; preds = %191, %170
  %196 = load i32, i32* %18, align 4
  %197 = load i32, i32* @BOL, align 4
  %198 = icmp eq i32 %196, %197
  br i1 %198, label %209, label %199

199:                                              ; preds = %195
  %200 = load i8, i8* %17, align 1
  %201 = sext i8 %200 to i32
  %202 = load i8, i8* @OUT, align 1
  %203 = sext i8 %202 to i32
  %204 = icmp ne i32 %201, %203
  br i1 %204, label %205, label %221

205:                                              ; preds = %199
  %206 = load i8, i8* %17, align 1
  %207 = call i64 @ISWORD(i8 signext %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %221, label %209

209:                                              ; preds = %205, %195
  %210 = load i8, i8* %16, align 1
  %211 = sext i8 %210 to i32
  %212 = load i8, i8* @OUT, align 1
  %213 = sext i8 %212 to i32
  %214 = icmp ne i32 %211, %213
  br i1 %214, label %215, label %221

215:                                              ; preds = %209
  %216 = load i8, i8* %16, align 1
  %217 = call i64 @ISWORD(i8 signext %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %215
  %220 = load i32, i32* @BOW, align 4
  store i32 %220, i32* %18, align 4
  br label %221

221:                                              ; preds = %219, %215, %209, %205, %199
  %222 = load i8, i8* %17, align 1
  %223 = sext i8 %222 to i32
  %224 = load i8, i8* @OUT, align 1
  %225 = sext i8 %224 to i32
  %226 = icmp ne i32 %223, %225
  br i1 %226, label %227, label %247

227:                                              ; preds = %221
  %228 = load i8, i8* %17, align 1
  %229 = call i64 @ISWORD(i8 signext %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %247

231:                                              ; preds = %227
  %232 = load i32, i32* %18, align 4
  %233 = load i32, i32* @EOL, align 4
  %234 = icmp eq i32 %232, %233
  br i1 %234, label %245, label %235

235:                                              ; preds = %231
  %236 = load i8, i8* %16, align 1
  %237 = sext i8 %236 to i32
  %238 = load i8, i8* @OUT, align 1
  %239 = sext i8 %238 to i32
  %240 = icmp ne i32 %237, %239
  br i1 %240, label %241, label %247

241:                                              ; preds = %235
  %242 = load i8, i8* %16, align 1
  %243 = call i64 @ISWORD(i8 signext %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %247, label %245

245:                                              ; preds = %241, %231
  %246 = load i32, i32* @EOW, align 4
  store i32 %246, i32* %18, align 4
  br label %247

247:                                              ; preds = %245, %241, %235, %227, %221
  %248 = load i32, i32* %18, align 4
  %249 = load i32, i32* @BOW, align 4
  %250 = icmp eq i32 %248, %249
  br i1 %250, label %255, label %251

251:                                              ; preds = %247
  %252 = load i32, i32* %18, align 4
  %253 = load i32, i32* @EOW, align 4
  %254 = icmp eq i32 %252, %253
  br i1 %254, label %255, label %269

255:                                              ; preds = %251, %247
  %256 = load %struct.match*, %struct.match** %7, align 8
  %257 = getelementptr inbounds %struct.match, %struct.match* %256, i32 0, i32 4
  %258 = load %struct.TYPE_2__*, %struct.TYPE_2__** %257, align 8
  %259 = load i32, i32* %10, align 4
  %260 = load i32, i32* %11, align 4
  %261 = load i32, i32* %12, align 4
  %262 = load i32, i32* %18, align 4
  %263 = load i8, i8* @OUT, align 1
  %264 = load i32, i32* %12, align 4
  %265 = call i32 @step(%struct.TYPE_2__* %258, i32 %259, i32 %260, i32 %261, i32 %262, i8 signext %263, i32 %264)
  store i32 %265, i32* %12, align 4
  %266 = load i32, i32* %12, align 4
  %267 = load i8, i8* %16, align 1
  %268 = call i32 @SP(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %266, i8 signext %267)
  br label %269

269:                                              ; preds = %255, %251
  %270 = load i32, i32* %12, align 4
  %271 = load i32, i32* %11, align 4
  %272 = call i64 @ISSET(i32 %270, i32 %271)
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %278, label %274

274:                                              ; preds = %269
  %275 = load i8*, i8** %15, align 8
  %276 = load i8*, i8** %9, align 8
  %277 = icmp eq i8* %275, %276
  br i1 %277, label %278, label %279

278:                                              ; preds = %274, %269
  br label %320

279:                                              ; preds = %274
  %280 = load i32, i32* %14, align 4
  %281 = load i32, i32* %12, align 4
  %282 = call i32 @ASSIGN(i32 %280, i32 %281)
  %283 = load i32, i32* %12, align 4
  %284 = load i32, i32* %13, align 4
  %285 = call i32 @ASSIGN(i32 %283, i32 %284)
  %286 = load i8, i8* %16, align 1
  %287 = sext i8 %286 to i32
  %288 = load i8, i8* @OUT, align 1
  %289 = sext i8 %288 to i32
  %290 = icmp ne i32 %287, %289
  %291 = zext i1 %290 to i32
  %292 = call i32 @assert(i32 %291)
  %293 = load %struct.match*, %struct.match** %7, align 8
  %294 = getelementptr inbounds %struct.match, %struct.match* %293, i32 0, i32 4
  %295 = load %struct.TYPE_2__*, %struct.TYPE_2__** %294, align 8
  %296 = load i32, i32* %10, align 4
  %297 = load i32, i32* %11, align 4
  %298 = load i32, i32* %14, align 4
  %299 = load i8, i8* %16, align 1
  %300 = load i32, i32* %12, align 4
  %301 = call i32 @step(%struct.TYPE_2__* %295, i32 %296, i32 %297, i32 %298, i32 0, i8 signext %299, i32 %300)
  store i32 %301, i32* %12, align 4
  %302 = load i32, i32* %12, align 4
  %303 = load i8, i8* %16, align 1
  %304 = call i32 @SP(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %302, i8 signext %303)
  %305 = load %struct.match*, %struct.match** %7, align 8
  %306 = getelementptr inbounds %struct.match, %struct.match* %305, i32 0, i32 4
  %307 = load %struct.TYPE_2__*, %struct.TYPE_2__** %306, align 8
  %308 = load i32, i32* %10, align 4
  %309 = load i32, i32* %11, align 4
  %310 = load i32, i32* %12, align 4
  %311 = load i32, i32* @NOTHING, align 4
  %312 = load i8, i8* @OUT, align 1
  %313 = load i32, i32* %12, align 4
  %314 = call i32 @step(%struct.TYPE_2__* %307, i32 %308, i32 %309, i32 %310, i32 %311, i8 signext %312, i32 %313)
  %315 = load i32, i32* %12, align 4
  %316 = call i32 @EQ(i32 %314, i32 %315)
  %317 = call i32 @assert(i32 %316)
  %318 = load i8*, i8** %15, align 8
  %319 = getelementptr inbounds i8, i8* %318, i32 1
  store i8* %319, i8** %15, align 8
  br label %69

320:                                              ; preds = %278
  %321 = load i8*, i8** %20, align 8
  %322 = icmp ne i8* %321, null
  %323 = zext i1 %322 to i32
  %324 = call i32 @assert(i32 %323)
  %325 = load i8*, i8** %20, align 8
  %326 = load %struct.match*, %struct.match** %7, align 8
  %327 = getelementptr inbounds %struct.match, %struct.match* %326, i32 0, i32 3
  store i8* %325, i8** %327, align 8
  %328 = load i32, i32* %12, align 4
  %329 = load i32, i32* %11, align 4
  %330 = call i64 @ISSET(i32 %328, i32 %329)
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %332, label %335

332:                                              ; preds = %320
  %333 = load i8*, i8** %15, align 8
  %334 = getelementptr inbounds i8, i8* %333, i64 1
  store i8* %334, i8** %6, align 8
  br label %336

335:                                              ; preds = %320
  store i8* null, i8** %6, align 8
  br label %336

336:                                              ; preds = %335, %332
  %337 = load i8*, i8** %6, align 8
  ret i8* %337
}

declare dso_local i32 @CLEAR(i32) #1

declare dso_local i32 @SET1(i32, i32) #1

declare dso_local i32 @step(%struct.TYPE_2__*, i32, i32, i32, i32, i8 signext, i32) #1

declare dso_local i32 @ASSIGN(i32, i32) #1

declare dso_local i32 @SP(i8*, i32, i8 signext) #1

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
