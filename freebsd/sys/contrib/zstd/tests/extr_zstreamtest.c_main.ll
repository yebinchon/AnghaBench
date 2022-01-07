; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/extr_zstreamtest.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/extr_zstreamtest.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nbTestsDefault = common dso_local global i32 0, align 4
@FUZ_COMPRESSIBILITY_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"--mt\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"--newapi\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"--no-big-tests\00", align 1
@g_displayLevel = common dso_local global i32 0, align 4
@g_clockTime = common dso_local global i32 0, align 4
@SEC_TO_MICRO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"Starting zstream tester (%i-bits, %s)\0A\00", align 1
@ZSTD_VERSION_STRING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"Seed = %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Compressibility : %i%%\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"Press Enter \0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %21 = load i32, i32* @nbTestsDefault, align 4
  store i32 %21, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %22 = load i32, i32* @FUZ_COMPRESSIBILITY_DEFAULT, align 4
  store i32 %22, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 1, i32* %13, align 4
  store i32 128, i32* %14, align 4
  %23 = load i8**, i8*** %5, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 0
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %15, align 8
  store i32 1, i32* %16, align 4
  br label %26

26:                                               ; preds = %279, %2
  %27 = load i32, i32* %16, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %282

30:                                               ; preds = %26
  %31 = load i8**, i8*** %5, align 8
  %32 = load i32, i32* %16, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8*, i8** %31, i64 %33
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %17, align 8
  %36 = load i8*, i8** %17, align 8
  %37 = icmp ne i8* %36, null
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load i8*, i8** %17, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 45
  br i1 %44, label %45, label %278

45:                                               ; preds = %30
  %46 = load i8*, i8** %17, align 8
  %47 = call i32 @strcmp(i8* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %45
  store i32 129, i32* %14, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* %9, align 4
  br label %279

56:                                               ; preds = %45
  %57 = load i8*, i8** %17, align 8
  %58 = call i32 @strcmp(i8* %57, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %56
  store i32 130, i32* %14, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, %64
  store i32 %66, i32* %9, align 4
  br label %279

67:                                               ; preds = %56
  %68 = load i8*, i8** %17, align 8
  %69 = call i32 @strcmp(i8* %68, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %67
  store i32 0, i32* %13, align 4
  br label %279

72:                                               ; preds = %67
  %73 = load i8*, i8** %17, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %17, align 8
  br label %75

75:                                               ; preds = %276, %72
  %76 = load i8*, i8** %17, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %277

80:                                               ; preds = %75
  %81 = load i8*, i8** %17, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  switch i32 %83, label %273 [
    i32 104, label %84
    i32 118, label %87
    i32 113, label %92
    i32 112, label %97
    i32 105, label %100
    i32 84, label %127
    i32 115, label %184
    i32 116, label %211
    i32 80, label %238
  ]

84:                                               ; preds = %80
  %85 = load i8*, i8** %15, align 8
  %86 = call i32 @FUZ_usage(i8* %85)
  store i32 %86, i32* %3, align 4
  br label %357

87:                                               ; preds = %80
  %88 = load i8*, i8** %17, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %17, align 8
  %90 = load i32, i32* @g_displayLevel, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* @g_displayLevel, align 4
  br label %276

92:                                               ; preds = %80
  %93 = load i8*, i8** %17, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %17, align 8
  %95 = load i32, i32* @g_displayLevel, align 4
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* @g_displayLevel, align 4
  br label %276

97:                                               ; preds = %80
  %98 = load i8*, i8** %17, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %17, align 8
  store i32 1, i32* %12, align 4
  br label %276

100:                                              ; preds = %80
  %101 = load i8*, i8** %17, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %17, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* @g_clockTime, align 4
  br label %103

103:                                              ; preds = %115, %100
  %104 = load i8*, i8** %17, align 8
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp sge i32 %106, 48
  br i1 %107, label %108, label %113

108:                                              ; preds = %103
  %109 = load i8*, i8** %17, align 8
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp sle i32 %111, 57
  br label %113

113:                                              ; preds = %108, %103
  %114 = phi i1 [ false, %103 ], [ %112, %108 ]
  br i1 %114, label %115, label %126

115:                                              ; preds = %113
  %116 = load i32, i32* %8, align 4
  %117 = mul nsw i32 %116, 10
  store i32 %117, i32* %8, align 4
  %118 = load i8*, i8** %17, align 8
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = sub nsw i32 %120, 48
  %122 = load i32, i32* %8, align 4
  %123 = add nsw i32 %122, %121
  store i32 %123, i32* %8, align 4
  %124 = load i8*, i8** %17, align 8
  %125 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %125, i8** %17, align 8
  br label %103

126:                                              ; preds = %113
  br label %276

127:                                              ; preds = %80
  %128 = load i8*, i8** %17, align 8
  %129 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %129, i8** %17, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* @g_clockTime, align 4
  br label %130

130:                                              ; preds = %142, %127
  %131 = load i8*, i8** %17, align 8
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp sge i32 %133, 48
  br i1 %134, label %135, label %140

135:                                              ; preds = %130
  %136 = load i8*, i8** %17, align 8
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp sle i32 %138, 57
  br label %140

140:                                              ; preds = %135, %130
  %141 = phi i1 [ false, %130 ], [ %139, %135 ]
  br i1 %141, label %142, label %153

142:                                              ; preds = %140
  %143 = load i32, i32* @g_clockTime, align 4
  %144 = mul nsw i32 %143, 10
  store i32 %144, i32* @g_clockTime, align 4
  %145 = load i8*, i8** %17, align 8
  %146 = load i8, i8* %145, align 1
  %147 = sext i8 %146 to i32
  %148 = sub nsw i32 %147, 48
  %149 = load i32, i32* @g_clockTime, align 4
  %150 = add nsw i32 %149, %148
  store i32 %150, i32* @g_clockTime, align 4
  %151 = load i8*, i8** %17, align 8
  %152 = getelementptr inbounds i8, i8* %151, i32 1
  store i8* %152, i8** %17, align 8
  br label %130

153:                                              ; preds = %140
  %154 = load i8*, i8** %17, align 8
  %155 = load i8, i8* %154, align 1
  %156 = sext i8 %155 to i32
  %157 = icmp eq i32 %156, 109
  br i1 %157, label %158, label %171

158:                                              ; preds = %153
  %159 = load i32, i32* @g_clockTime, align 4
  %160 = mul nsw i32 %159, 60
  store i32 %160, i32* @g_clockTime, align 4
  %161 = load i8*, i8** %17, align 8
  %162 = getelementptr inbounds i8, i8* %161, i32 1
  store i8* %162, i8** %17, align 8
  %163 = load i8*, i8** %17, align 8
  %164 = load i8, i8* %163, align 1
  %165 = sext i8 %164 to i32
  %166 = icmp eq i32 %165, 110
  br i1 %166, label %167, label %170

167:                                              ; preds = %158
  %168 = load i8*, i8** %17, align 8
  %169 = getelementptr inbounds i8, i8* %168, i32 1
  store i8* %169, i8** %17, align 8
  br label %170

170:                                              ; preds = %167, %158
  br label %180

171:                                              ; preds = %153
  %172 = load i8*, i8** %17, align 8
  %173 = load i8, i8* %172, align 1
  %174 = sext i8 %173 to i32
  %175 = icmp eq i32 %174, 115
  br i1 %175, label %176, label %179

176:                                              ; preds = %171
  %177 = load i8*, i8** %17, align 8
  %178 = getelementptr inbounds i8, i8* %177, i32 1
  store i8* %178, i8** %17, align 8
  br label %179

179:                                              ; preds = %176, %171
  br label %180

180:                                              ; preds = %179, %170
  %181 = load i32, i32* @SEC_TO_MICRO, align 4
  %182 = load i32, i32* @g_clockTime, align 4
  %183 = mul nsw i32 %182, %181
  store i32 %183, i32* @g_clockTime, align 4
  br label %276

184:                                              ; preds = %80
  %185 = load i8*, i8** %17, align 8
  %186 = getelementptr inbounds i8, i8* %185, i32 1
  store i8* %186, i8** %17, align 8
  store i32 1, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %187

187:                                              ; preds = %199, %184
  %188 = load i8*, i8** %17, align 8
  %189 = load i8, i8* %188, align 1
  %190 = sext i8 %189 to i32
  %191 = icmp sge i32 %190, 48
  br i1 %191, label %192, label %197

192:                                              ; preds = %187
  %193 = load i8*, i8** %17, align 8
  %194 = load i8, i8* %193, align 1
  %195 = sext i8 %194 to i32
  %196 = icmp sle i32 %195, 57
  br label %197

197:                                              ; preds = %192, %187
  %198 = phi i1 [ false, %187 ], [ %196, %192 ]
  br i1 %198, label %199, label %210

199:                                              ; preds = %197
  %200 = load i32, i32* %6, align 4
  %201 = mul nsw i32 %200, 10
  store i32 %201, i32* %6, align 4
  %202 = load i8*, i8** %17, align 8
  %203 = load i8, i8* %202, align 1
  %204 = sext i8 %203 to i32
  %205 = sub nsw i32 %204, 48
  %206 = load i32, i32* %6, align 4
  %207 = add nsw i32 %206, %205
  store i32 %207, i32* %6, align 4
  %208 = load i8*, i8** %17, align 8
  %209 = getelementptr inbounds i8, i8* %208, i32 1
  store i8* %209, i8** %17, align 8
  br label %187

210:                                              ; preds = %197
  br label %276

211:                                              ; preds = %80
  %212 = load i8*, i8** %17, align 8
  %213 = getelementptr inbounds i8, i8* %212, i32 1
  store i8* %213, i8** %17, align 8
  store i32 0, i32* %9, align 4
  br label %214

214:                                              ; preds = %226, %211
  %215 = load i8*, i8** %17, align 8
  %216 = load i8, i8* %215, align 1
  %217 = sext i8 %216 to i32
  %218 = icmp sge i32 %217, 48
  br i1 %218, label %219, label %224

219:                                              ; preds = %214
  %220 = load i8*, i8** %17, align 8
  %221 = load i8, i8* %220, align 1
  %222 = sext i8 %221 to i32
  %223 = icmp sle i32 %222, 57
  br label %224

224:                                              ; preds = %219, %214
  %225 = phi i1 [ false, %214 ], [ %223, %219 ]
  br i1 %225, label %226, label %237

226:                                              ; preds = %224
  %227 = load i32, i32* %9, align 4
  %228 = mul nsw i32 %227, 10
  store i32 %228, i32* %9, align 4
  %229 = load i8*, i8** %17, align 8
  %230 = load i8, i8* %229, align 1
  %231 = sext i8 %230 to i32
  %232 = sub nsw i32 %231, 48
  %233 = load i32, i32* %9, align 4
  %234 = add nsw i32 %233, %232
  store i32 %234, i32* %9, align 4
  %235 = load i8*, i8** %17, align 8
  %236 = getelementptr inbounds i8, i8* %235, i32 1
  store i8* %236, i8** %17, align 8
  br label %214

237:                                              ; preds = %224
  br label %276

238:                                              ; preds = %80
  %239 = load i8*, i8** %17, align 8
  %240 = getelementptr inbounds i8, i8* %239, i32 1
  store i8* %240, i8** %17, align 8
  store i32 0, i32* %10, align 4
  br label %241

241:                                              ; preds = %253, %238
  %242 = load i8*, i8** %17, align 8
  %243 = load i8, i8* %242, align 1
  %244 = sext i8 %243 to i32
  %245 = icmp sge i32 %244, 48
  br i1 %245, label %246, label %251

246:                                              ; preds = %241
  %247 = load i8*, i8** %17, align 8
  %248 = load i8, i8* %247, align 1
  %249 = sext i8 %248 to i32
  %250 = icmp sle i32 %249, 57
  br label %251

251:                                              ; preds = %246, %241
  %252 = phi i1 [ false, %241 ], [ %250, %246 ]
  br i1 %252, label %253, label %264

253:                                              ; preds = %251
  %254 = load i32, i32* %10, align 4
  %255 = mul nsw i32 %254, 10
  store i32 %255, i32* %10, align 4
  %256 = load i8*, i8** %17, align 8
  %257 = load i8, i8* %256, align 1
  %258 = sext i8 %257 to i32
  %259 = sub nsw i32 %258, 48
  %260 = load i32, i32* %10, align 4
  %261 = add nsw i32 %260, %259
  store i32 %261, i32* %10, align 4
  %262 = load i8*, i8** %17, align 8
  %263 = getelementptr inbounds i8, i8* %262, i32 1
  store i8* %263, i8** %17, align 8
  br label %241

264:                                              ; preds = %251
  %265 = load i32, i32* %10, align 4
  %266 = icmp slt i32 %265, 0
  br i1 %266, label %267, label %268

267:                                              ; preds = %264
  store i32 0, i32* %10, align 4
  br label %268

268:                                              ; preds = %267, %264
  %269 = load i32, i32* %10, align 4
  %270 = icmp sgt i32 %269, 100
  br i1 %270, label %271, label %272

271:                                              ; preds = %268
  store i32 100, i32* %10, align 4
  br label %272

272:                                              ; preds = %271, %268
  br label %276

273:                                              ; preds = %80
  %274 = load i8*, i8** %15, align 8
  %275 = call i32 @FUZ_usage(i8* %274)
  store i32 %275, i32* %3, align 4
  br label %357

276:                                              ; preds = %272, %237, %210, %180, %126, %97, %92, %87
  br label %75

277:                                              ; preds = %75
  br label %278

278:                                              ; preds = %277, %30
  br label %279

279:                                              ; preds = %278, %71, %60, %49
  %280 = load i32, i32* %16, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %16, align 4
  br label %26

282:                                              ; preds = %26
  %283 = load i32, i32* @ZSTD_VERSION_STRING, align 4
  %284 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 64, i32 %283)
  %285 = load i32, i32* %7, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %292, label %287

287:                                              ; preds = %282
  %288 = call i32 @time(i32* null)
  store i32 %288, i32* %18, align 4
  %289 = call i32 @XXH32(i32* %18, i32 4, i32 1)
  store i32 %289, i32* %19, align 4
  %290 = load i32, i32* %19, align 4
  %291 = srem i32 %290, 10000
  store i32 %291, i32* %6, align 4
  br label %292

292:                                              ; preds = %287, %282
  %293 = load i32, i32* %6, align 4
  %294 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %293)
  %295 = load i32, i32* %10, align 4
  %296 = load i32, i32* @FUZ_COMPRESSIBILITY_DEFAULT, align 4
  %297 = icmp ne i32 %295, %296
  br i1 %297, label %298, label %301

298:                                              ; preds = %292
  %299 = load i32, i32* %10, align 4
  %300 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %299)
  br label %301

301:                                              ; preds = %298, %292
  %302 = load i32, i32* %8, align 4
  %303 = icmp sle i32 %302, 0
  br i1 %303, label %304, label %305

304:                                              ; preds = %301
  store i32 1, i32* %8, align 4
  br label %305

305:                                              ; preds = %304, %301
  %306 = load i32, i32* %9, align 4
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %308, label %313

308:                                              ; preds = %305
  %309 = load i32, i32* %10, align 4
  %310 = sitofp i32 %309 to double
  %311 = fdiv double %310, 1.000000e+02
  %312 = call i32 @basicUnitTests(i32 0, double %311)
  store i32 %312, i32* %11, align 4
  br label %313

313:                                              ; preds = %308, %305
  %314 = load i32, i32* %11, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %348, label %316

316:                                              ; preds = %313
  %317 = load i32, i32* %14, align 4
  switch i32 %317, label %345 [
    i32 128, label %318
    i32 129, label %327
    i32 130, label %336
  ]

318:                                              ; preds = %316
  %319 = load i32, i32* %6, align 4
  %320 = load i32, i32* %8, align 4
  %321 = load i32, i32* %9, align 4
  %322 = load i32, i32* %10, align 4
  %323 = sitofp i32 %322 to double
  %324 = fdiv double %323, 1.000000e+02
  %325 = load i32, i32* %13, align 4
  %326 = call i32 @fuzzerTests(i32 %319, i32 %320, i32 %321, double %324, i32 %325)
  store i32 %326, i32* %11, align 4
  br label %347

327:                                              ; preds = %316
  %328 = load i32, i32* %6, align 4
  %329 = load i32, i32* %8, align 4
  %330 = load i32, i32* %9, align 4
  %331 = load i32, i32* %10, align 4
  %332 = sitofp i32 %331 to double
  %333 = fdiv double %332, 1.000000e+02
  %334 = load i32, i32* %13, align 4
  %335 = call i32 @fuzzerTests_MT(i32 %328, i32 %329, i32 %330, double %333, i32 %334)
  store i32 %335, i32* %11, align 4
  br label %347

336:                                              ; preds = %316
  %337 = load i32, i32* %6, align 4
  %338 = load i32, i32* %8, align 4
  %339 = load i32, i32* %9, align 4
  %340 = load i32, i32* %10, align 4
  %341 = sitofp i32 %340 to double
  %342 = fdiv double %341, 1.000000e+02
  %343 = load i32, i32* %13, align 4
  %344 = call i32 @fuzzerTests_newAPI(i32 %337, i32 %338, i32 %339, double %342, i32 %343)
  store i32 %344, i32* %11, align 4
  br label %347

345:                                              ; preds = %316
  %346 = call i32 @assert(i32 0)
  br label %347

347:                                              ; preds = %345, %336, %327, %318
  br label %348

348:                                              ; preds = %347, %313
  %349 = load i32, i32* %12, align 4
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %355

351:                                              ; preds = %348
  %352 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %353 = call i32 (...) @getchar()
  store i32 %353, i32* %20, align 4
  %354 = load i32, i32* %20, align 4
  br label %355

355:                                              ; preds = %351, %348
  %356 = load i32, i32* %11, align 4
  store i32 %356, i32* %3, align 4
  br label %357

357:                                              ; preds = %355, %273, %84
  %358 = load i32, i32* %3, align 4
  ret i32 %358
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @FUZ_usage(i8*) #1

declare dso_local i32 @DISPLAY(i8*, ...) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @XXH32(i32*, i32, i32) #1

declare dso_local i32 @basicUnitTests(i32, double) #1

declare dso_local i32 @fuzzerTests(i32, i32, i32, double, i32) #1

declare dso_local i32 @fuzzerTests_MT(i32, i32, i32, double, i32) #1

declare dso_local i32 @fuzzerTests_newAPI(i32, i32, i32, double, i32) #1

declare dso_local i32 @getchar(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
