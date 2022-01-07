; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/regex/extr_engine.c_slow.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/regex/extr_engine.c_slow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.match = type { i8*, i8*, i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i64 }

@OUT = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [5 x i8] c"slow\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"sstart\00", align 1
@NOTHING = common dso_local global i32 0, align 4
@REG_NEWLINE = common dso_local global i32 0, align 4
@REG_NOTBOL = common dso_local global i32 0, align 4
@BOL = common dso_local global i32 0, align 4
@REG_NOTEOL = common dso_local global i32 0, align 4
@BOLEOL = common dso_local global i32 0, align 4
@EOL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"sboleol\00", align 1
@BOW = common dso_local global i32 0, align 4
@EOW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"sboweow\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"saft\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.match*, i8*, i8*, i32, i32)* @slow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @slow(%struct.match* %0, i8* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.match*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  store %struct.match* %0, %struct.match** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %20 = load %struct.match*, %struct.match** %6, align 8
  %21 = getelementptr inbounds %struct.match, %struct.match* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %11, align 4
  %23 = load %struct.match*, %struct.match** %6, align 8
  %24 = getelementptr inbounds %struct.match, %struct.match* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %12, align 4
  %26 = load %struct.match*, %struct.match** %6, align 8
  %27 = getelementptr inbounds %struct.match, %struct.match* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %13, align 4
  %29 = load i8*, i8** %7, align 8
  store i8* %29, i8** %14, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = load %struct.match*, %struct.match** %6, align 8
  %32 = getelementptr inbounds %struct.match, %struct.match* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = icmp eq i8* %30, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %5
  %36 = load i8, i8* @OUT, align 1
  %37 = sext i8 %36 to i32
  br label %43

38:                                               ; preds = %5
  %39 = load i8*, i8** %7, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 -1
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  br label %43

43:                                               ; preds = %38, %35
  %44 = phi i32 [ %37, %35 ], [ %42, %38 ]
  %45 = trunc i32 %44 to i8
  store i8 %45, i8* %15, align 1
  %46 = load i8*, i8** %7, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @AT(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %46, i8* %47, i32 %48, i32 %49)
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @CLEAR(i32 %51)
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @SET1(i32 %53, i32 %54)
  %56 = load i32, i32* %11, align 4
  %57 = load i8*, i8** %14, align 8
  %58 = load i8, i8* %57, align 1
  %59 = call i32 @SP(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %56, i8 signext %58)
  %60 = load %struct.match*, %struct.match** %6, align 8
  %61 = getelementptr inbounds %struct.match, %struct.match* %60, i32 0, i32 3
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* @NOTHING, align 4
  %67 = load i8, i8* @OUT, align 1
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @step(%struct.TYPE_2__* %62, i32 %63, i32 %64, i32 %65, i32 %66, i8 signext %67, i32 %68)
  store i32 %69, i32* %11, align 4
  store i8* null, i8** %19, align 8
  br label %70

70:                                               ; preds = %280, %43
  %71 = load i8, i8* %15, align 1
  store i8 %71, i8* %16, align 1
  %72 = load i8*, i8** %14, align 8
  %73 = load %struct.match*, %struct.match** %6, align 8
  %74 = getelementptr inbounds %struct.match, %struct.match* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = icmp eq i8* %72, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %70
  %78 = load i8, i8* @OUT, align 1
  %79 = sext i8 %78 to i32
  br label %84

80:                                               ; preds = %70
  %81 = load i8*, i8** %14, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  br label %84

84:                                               ; preds = %80, %77
  %85 = phi i32 [ %79, %77 ], [ %83, %80 ]
  %86 = trunc i32 %85 to i8
  store i8 %86, i8* %15, align 1
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %87 = load i8, i8* %16, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 10
  br i1 %89, label %90, label %99

90:                                               ; preds = %84
  %91 = load %struct.match*, %struct.match** %6, align 8
  %92 = getelementptr inbounds %struct.match, %struct.match* %91, i32 0, i32 3
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @REG_NEWLINE, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %112, label %99

99:                                               ; preds = %90, %84
  %100 = load i8, i8* %16, align 1
  %101 = sext i8 %100 to i32
  %102 = load i8, i8* @OUT, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %101, %103
  br i1 %104, label %105, label %119

105:                                              ; preds = %99
  %106 = load %struct.match*, %struct.match** %6, align 8
  %107 = getelementptr inbounds %struct.match, %struct.match* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @REG_NOTBOL, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %119, label %112

112:                                              ; preds = %105, %90
  %113 = load i32, i32* @BOL, align 4
  store i32 %113, i32* %17, align 4
  %114 = load %struct.match*, %struct.match** %6, align 8
  %115 = getelementptr inbounds %struct.match, %struct.match* %114, i32 0, i32 3
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %18, align 4
  br label %119

119:                                              ; preds = %112, %105, %99
  %120 = load i8, i8* %15, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp eq i32 %121, 10
  br i1 %122, label %123, label %132

123:                                              ; preds = %119
  %124 = load %struct.match*, %struct.match** %6, align 8
  %125 = getelementptr inbounds %struct.match, %struct.match* %124, i32 0, i32 3
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @REG_NEWLINE, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %145, label %132

132:                                              ; preds = %123, %119
  %133 = load i8, i8* %15, align 1
  %134 = sext i8 %133 to i32
  %135 = load i8, i8* @OUT, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp eq i32 %134, %136
  br i1 %137, label %138, label %164

138:                                              ; preds = %132
  %139 = load %struct.match*, %struct.match** %6, align 8
  %140 = getelementptr inbounds %struct.match, %struct.match* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @REG_NOTEOL, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %164, label %145

145:                                              ; preds = %138, %123
  %146 = load i32, i32* %17, align 4
  %147 = load i32, i32* @BOL, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %151

149:                                              ; preds = %145
  %150 = load i32, i32* @BOLEOL, align 4
  br label %153

151:                                              ; preds = %145
  %152 = load i32, i32* @EOL, align 4
  br label %153

153:                                              ; preds = %151, %149
  %154 = phi i32 [ %150, %149 ], [ %152, %151 ]
  store i32 %154, i32* %17, align 4
  %155 = load %struct.match*, %struct.match** %6, align 8
  %156 = getelementptr inbounds %struct.match, %struct.match* %155, i32 0, i32 3
  %157 = load %struct.TYPE_2__*, %struct.TYPE_2__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = load i32, i32* %18, align 4
  %161 = sext i32 %160 to i64
  %162 = add nsw i64 %161, %159
  %163 = trunc i64 %162 to i32
  store i32 %163, i32* %18, align 4
  br label %164

164:                                              ; preds = %153, %138, %132
  %165 = load i32, i32* %18, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %189

167:                                              ; preds = %164
  br label %168

168:                                              ; preds = %182, %167
  %169 = load i32, i32* %18, align 4
  %170 = icmp sgt i32 %169, 0
  br i1 %170, label %171, label %185

171:                                              ; preds = %168
  %172 = load %struct.match*, %struct.match** %6, align 8
  %173 = getelementptr inbounds %struct.match, %struct.match* %172, i32 0, i32 3
  %174 = load %struct.TYPE_2__*, %struct.TYPE_2__** %173, align 8
  %175 = load i32, i32* %9, align 4
  %176 = load i32, i32* %10, align 4
  %177 = load i32, i32* %11, align 4
  %178 = load i32, i32* %17, align 4
  %179 = load i8, i8* @OUT, align 1
  %180 = load i32, i32* %11, align 4
  %181 = call i32 @step(%struct.TYPE_2__* %174, i32 %175, i32 %176, i32 %177, i32 %178, i8 signext %179, i32 %180)
  store i32 %181, i32* %11, align 4
  br label %182

182:                                              ; preds = %171
  %183 = load i32, i32* %18, align 4
  %184 = add nsw i32 %183, -1
  store i32 %184, i32* %18, align 4
  br label %168

185:                                              ; preds = %168
  %186 = load i32, i32* %11, align 4
  %187 = load i8, i8* %15, align 1
  %188 = call i32 @SP(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %186, i8 signext %187)
  br label %189

189:                                              ; preds = %185, %164
  %190 = load i32, i32* %17, align 4
  %191 = load i32, i32* @BOL, align 4
  %192 = icmp eq i32 %190, %191
  br i1 %192, label %203, label %193

193:                                              ; preds = %189
  %194 = load i8, i8* %16, align 1
  %195 = sext i8 %194 to i32
  %196 = load i8, i8* @OUT, align 1
  %197 = sext i8 %196 to i32
  %198 = icmp ne i32 %195, %197
  br i1 %198, label %199, label %215

199:                                              ; preds = %193
  %200 = load i8, i8* %16, align 1
  %201 = call i64 @ISWORD(i8 signext %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %215, label %203

203:                                              ; preds = %199, %189
  %204 = load i8, i8* %15, align 1
  %205 = sext i8 %204 to i32
  %206 = load i8, i8* @OUT, align 1
  %207 = sext i8 %206 to i32
  %208 = icmp ne i32 %205, %207
  br i1 %208, label %209, label %215

209:                                              ; preds = %203
  %210 = load i8, i8* %15, align 1
  %211 = call i64 @ISWORD(i8 signext %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %215

213:                                              ; preds = %209
  %214 = load i32, i32* @BOW, align 4
  store i32 %214, i32* %17, align 4
  br label %215

215:                                              ; preds = %213, %209, %203, %199, %193
  %216 = load i8, i8* %16, align 1
  %217 = sext i8 %216 to i32
  %218 = load i8, i8* @OUT, align 1
  %219 = sext i8 %218 to i32
  %220 = icmp ne i32 %217, %219
  br i1 %220, label %221, label %241

221:                                              ; preds = %215
  %222 = load i8, i8* %16, align 1
  %223 = call i64 @ISWORD(i8 signext %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %241

225:                                              ; preds = %221
  %226 = load i32, i32* %17, align 4
  %227 = load i32, i32* @EOL, align 4
  %228 = icmp eq i32 %226, %227
  br i1 %228, label %239, label %229

229:                                              ; preds = %225
  %230 = load i8, i8* %15, align 1
  %231 = sext i8 %230 to i32
  %232 = load i8, i8* @OUT, align 1
  %233 = sext i8 %232 to i32
  %234 = icmp ne i32 %231, %233
  br i1 %234, label %235, label %241

235:                                              ; preds = %229
  %236 = load i8, i8* %15, align 1
  %237 = call i64 @ISWORD(i8 signext %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %241, label %239

239:                                              ; preds = %235, %225
  %240 = load i32, i32* @EOW, align 4
  store i32 %240, i32* %17, align 4
  br label %241

241:                                              ; preds = %239, %235, %229, %221, %215
  %242 = load i32, i32* %17, align 4
  %243 = load i32, i32* @BOW, align 4
  %244 = icmp eq i32 %242, %243
  br i1 %244, label %249, label %245

245:                                              ; preds = %241
  %246 = load i32, i32* %17, align 4
  %247 = load i32, i32* @EOW, align 4
  %248 = icmp eq i32 %246, %247
  br i1 %248, label %249, label %263

249:                                              ; preds = %245, %241
  %250 = load %struct.match*, %struct.match** %6, align 8
  %251 = getelementptr inbounds %struct.match, %struct.match* %250, i32 0, i32 3
  %252 = load %struct.TYPE_2__*, %struct.TYPE_2__** %251, align 8
  %253 = load i32, i32* %9, align 4
  %254 = load i32, i32* %10, align 4
  %255 = load i32, i32* %11, align 4
  %256 = load i32, i32* %17, align 4
  %257 = load i8, i8* @OUT, align 1
  %258 = load i32, i32* %11, align 4
  %259 = call i32 @step(%struct.TYPE_2__* %252, i32 %253, i32 %254, i32 %255, i32 %256, i8 signext %257, i32 %258)
  store i32 %259, i32* %11, align 4
  %260 = load i32, i32* %11, align 4
  %261 = load i8, i8* %15, align 1
  %262 = call i32 @SP(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %260, i8 signext %261)
  br label %263

263:                                              ; preds = %249, %245
  %264 = load i32, i32* %11, align 4
  %265 = load i32, i32* %10, align 4
  %266 = call i64 @ISSET(i32 %264, i32 %265)
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %270

268:                                              ; preds = %263
  %269 = load i8*, i8** %14, align 8
  store i8* %269, i8** %19, align 8
  br label %270

270:                                              ; preds = %268, %263
  %271 = load i32, i32* %11, align 4
  %272 = load i32, i32* %12, align 4
  %273 = call i32 @EQ(i32 %271, i32 %272)
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %279, label %275

275:                                              ; preds = %270
  %276 = load i8*, i8** %14, align 8
  %277 = load i8*, i8** %8, align 8
  %278 = icmp eq i8* %276, %277
  br i1 %278, label %279, label %280

279:                                              ; preds = %275, %270
  br label %321

280:                                              ; preds = %275
  %281 = load i32, i32* %13, align 4
  %282 = load i32, i32* %11, align 4
  %283 = call i32 @ASSIGN(i32 %281, i32 %282)
  %284 = load i32, i32* %11, align 4
  %285 = load i32, i32* %12, align 4
  %286 = call i32 @ASSIGN(i32 %284, i32 %285)
  %287 = load i8, i8* %15, align 1
  %288 = sext i8 %287 to i32
  %289 = load i8, i8* @OUT, align 1
  %290 = sext i8 %289 to i32
  %291 = icmp ne i32 %288, %290
  %292 = zext i1 %291 to i32
  %293 = call i32 @assert(i32 %292)
  %294 = load %struct.match*, %struct.match** %6, align 8
  %295 = getelementptr inbounds %struct.match, %struct.match* %294, i32 0, i32 3
  %296 = load %struct.TYPE_2__*, %struct.TYPE_2__** %295, align 8
  %297 = load i32, i32* %9, align 4
  %298 = load i32, i32* %10, align 4
  %299 = load i32, i32* %13, align 4
  %300 = load i8, i8* %15, align 1
  %301 = load i32, i32* %11, align 4
  %302 = call i32 @step(%struct.TYPE_2__* %296, i32 %297, i32 %298, i32 %299, i32 0, i8 signext %300, i32 %301)
  store i32 %302, i32* %11, align 4
  %303 = load i32, i32* %11, align 4
  %304 = load i8, i8* %15, align 1
  %305 = call i32 @SP(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %303, i8 signext %304)
  %306 = load %struct.match*, %struct.match** %6, align 8
  %307 = getelementptr inbounds %struct.match, %struct.match* %306, i32 0, i32 3
  %308 = load %struct.TYPE_2__*, %struct.TYPE_2__** %307, align 8
  %309 = load i32, i32* %9, align 4
  %310 = load i32, i32* %10, align 4
  %311 = load i32, i32* %11, align 4
  %312 = load i32, i32* @NOTHING, align 4
  %313 = load i8, i8* @OUT, align 1
  %314 = load i32, i32* %11, align 4
  %315 = call i32 @step(%struct.TYPE_2__* %308, i32 %309, i32 %310, i32 %311, i32 %312, i8 signext %313, i32 %314)
  %316 = load i32, i32* %11, align 4
  %317 = call i32 @EQ(i32 %315, i32 %316)
  %318 = call i32 @assert(i32 %317)
  %319 = load i8*, i8** %14, align 8
  %320 = getelementptr inbounds i8, i8* %319, i32 1
  store i8* %320, i8** %14, align 8
  br label %70

321:                                              ; preds = %279
  %322 = load i8*, i8** %19, align 8
  ret i8* %322
}

declare dso_local i32 @AT(i8*, i8*, i8*, i32, i32) #1

declare dso_local i32 @CLEAR(i32) #1

declare dso_local i32 @SET1(i32, i32) #1

declare dso_local i32 @SP(i8*, i32, i8 signext) #1

declare dso_local i32 @step(%struct.TYPE_2__*, i32, i32, i32, i32, i8 signext, i32) #1

declare dso_local i64 @ISWORD(i8 signext) #1

declare dso_local i64 @ISSET(i32, i32) #1

declare dso_local i32 @EQ(i32, i32) #1

declare dso_local i32 @ASSIGN(i32, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
