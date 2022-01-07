; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/llvm/lib/Support/extr_regengine.inc_sslow.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/llvm/lib/Support/extr_regengine.inc_sslow.c"
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
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
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
  store i32 %44, i32* %15, align 4
  %45 = load i8*, i8** %7, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @AT(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %45, i8* %46, i32 %47, i32 %48)
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @CLEAR(i32 %50)
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @SET1(i32 %52, i32 %53)
  %55 = load i32, i32* %11, align 4
  %56 = load i8*, i8** %14, align 8
  %57 = load i8, i8* %56, align 1
  %58 = call i32 @SP(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %55, i8 signext %57)
  %59 = load %struct.match*, %struct.match** %6, align 8
  %60 = getelementptr inbounds %struct.match, %struct.match* %59, i32 0, i32 3
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* @NOTHING, align 4
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @step(%struct.TYPE_2__* %61, i32 %62, i32 %63, i32 %64, i32 %65, i32 %66)
  store i32 %67, i32* %11, align 4
  store i8* null, i8** %19, align 8
  br label %68

68:                                               ; preds = %269, %43
  %69 = load i32, i32* %15, align 4
  store i32 %69, i32* %16, align 4
  %70 = load i8*, i8** %14, align 8
  %71 = load %struct.match*, %struct.match** %6, align 8
  %72 = getelementptr inbounds %struct.match, %struct.match* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = icmp eq i8* %70, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %68
  %76 = load i8, i8* @OUT, align 1
  %77 = sext i8 %76 to i32
  br label %82

78:                                               ; preds = %68
  %79 = load i8*, i8** %14, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  br label %82

82:                                               ; preds = %78, %75
  %83 = phi i32 [ %77, %75 ], [ %81, %78 ]
  store i32 %83, i32* %15, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %84 = load i32, i32* %16, align 4
  %85 = icmp eq i32 %84, 10
  br i1 %85, label %86, label %95

86:                                               ; preds = %82
  %87 = load %struct.match*, %struct.match** %6, align 8
  %88 = getelementptr inbounds %struct.match, %struct.match* %87, i32 0, i32 3
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @REG_NEWLINE, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %107, label %95

95:                                               ; preds = %86, %82
  %96 = load i32, i32* %16, align 4
  %97 = load i8, i8* @OUT, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %96, %98
  br i1 %99, label %100, label %114

100:                                              ; preds = %95
  %101 = load %struct.match*, %struct.match** %6, align 8
  %102 = getelementptr inbounds %struct.match, %struct.match* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @REG_NOTBOL, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %114, label %107

107:                                              ; preds = %100, %86
  %108 = load i32, i32* @BOL, align 4
  store i32 %108, i32* %17, align 4
  %109 = load %struct.match*, %struct.match** %6, align 8
  %110 = getelementptr inbounds %struct.match, %struct.match* %109, i32 0, i32 3
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %18, align 4
  br label %114

114:                                              ; preds = %107, %100, %95
  %115 = load i32, i32* %15, align 4
  %116 = icmp eq i32 %115, 10
  br i1 %116, label %117, label %126

117:                                              ; preds = %114
  %118 = load %struct.match*, %struct.match** %6, align 8
  %119 = getelementptr inbounds %struct.match, %struct.match* %118, i32 0, i32 3
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @REG_NEWLINE, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %138, label %126

126:                                              ; preds = %117, %114
  %127 = load i32, i32* %15, align 4
  %128 = load i8, i8* @OUT, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp eq i32 %127, %129
  br i1 %130, label %131, label %157

131:                                              ; preds = %126
  %132 = load %struct.match*, %struct.match** %6, align 8
  %133 = getelementptr inbounds %struct.match, %struct.match* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @REG_NOTEOL, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %157, label %138

138:                                              ; preds = %131, %117
  %139 = load i32, i32* %17, align 4
  %140 = load i32, i32* @BOL, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %144

142:                                              ; preds = %138
  %143 = load i32, i32* @BOLEOL, align 4
  br label %146

144:                                              ; preds = %138
  %145 = load i32, i32* @EOL, align 4
  br label %146

146:                                              ; preds = %144, %142
  %147 = phi i32 [ %143, %142 ], [ %145, %144 ]
  store i32 %147, i32* %17, align 4
  %148 = load %struct.match*, %struct.match** %6, align 8
  %149 = getelementptr inbounds %struct.match, %struct.match* %148, i32 0, i32 3
  %150 = load %struct.TYPE_2__*, %struct.TYPE_2__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = load i32, i32* %18, align 4
  %154 = sext i32 %153 to i64
  %155 = add nsw i64 %154, %152
  %156 = trunc i64 %155 to i32
  store i32 %156, i32* %18, align 4
  br label %157

157:                                              ; preds = %146, %131, %126
  %158 = load i32, i32* %18, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %182

160:                                              ; preds = %157
  br label %161

161:                                              ; preds = %174, %160
  %162 = load i32, i32* %18, align 4
  %163 = icmp sgt i32 %162, 0
  br i1 %163, label %164, label %177

164:                                              ; preds = %161
  %165 = load %struct.match*, %struct.match** %6, align 8
  %166 = getelementptr inbounds %struct.match, %struct.match* %165, i32 0, i32 3
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** %166, align 8
  %168 = load i32, i32* %9, align 4
  %169 = load i32, i32* %10, align 4
  %170 = load i32, i32* %11, align 4
  %171 = load i32, i32* %17, align 4
  %172 = load i32, i32* %11, align 4
  %173 = call i32 @step(%struct.TYPE_2__* %167, i32 %168, i32 %169, i32 %170, i32 %171, i32 %172)
  store i32 %173, i32* %11, align 4
  br label %174

174:                                              ; preds = %164
  %175 = load i32, i32* %18, align 4
  %176 = add nsw i32 %175, -1
  store i32 %176, i32* %18, align 4
  br label %161

177:                                              ; preds = %161
  %178 = load i32, i32* %11, align 4
  %179 = load i32, i32* %15, align 4
  %180 = trunc i32 %179 to i8
  %181 = call i32 @SP(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %178, i8 signext %180)
  br label %182

182:                                              ; preds = %177, %157
  %183 = load i32, i32* %17, align 4
  %184 = load i32, i32* @BOL, align 4
  %185 = icmp eq i32 %183, %184
  br i1 %185, label %195, label %186

186:                                              ; preds = %182
  %187 = load i32, i32* %16, align 4
  %188 = load i8, i8* @OUT, align 1
  %189 = sext i8 %188 to i32
  %190 = icmp ne i32 %187, %189
  br i1 %190, label %191, label %206

191:                                              ; preds = %186
  %192 = load i32, i32* %16, align 4
  %193 = call i64 @ISWORD(i32 %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %206, label %195

195:                                              ; preds = %191, %182
  %196 = load i32, i32* %15, align 4
  %197 = load i8, i8* @OUT, align 1
  %198 = sext i8 %197 to i32
  %199 = icmp ne i32 %196, %198
  br i1 %199, label %200, label %206

200:                                              ; preds = %195
  %201 = load i32, i32* %15, align 4
  %202 = call i64 @ISWORD(i32 %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %200
  %205 = load i32, i32* @BOW, align 4
  store i32 %205, i32* %17, align 4
  br label %206

206:                                              ; preds = %204, %200, %195, %191, %186
  %207 = load i32, i32* %16, align 4
  %208 = load i8, i8* @OUT, align 1
  %209 = sext i8 %208 to i32
  %210 = icmp ne i32 %207, %209
  br i1 %210, label %211, label %230

211:                                              ; preds = %206
  %212 = load i32, i32* %16, align 4
  %213 = call i64 @ISWORD(i32 %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %230

215:                                              ; preds = %211
  %216 = load i32, i32* %17, align 4
  %217 = load i32, i32* @EOL, align 4
  %218 = icmp eq i32 %216, %217
  br i1 %218, label %228, label %219

219:                                              ; preds = %215
  %220 = load i32, i32* %15, align 4
  %221 = load i8, i8* @OUT, align 1
  %222 = sext i8 %221 to i32
  %223 = icmp ne i32 %220, %222
  br i1 %223, label %224, label %230

224:                                              ; preds = %219
  %225 = load i32, i32* %15, align 4
  %226 = call i64 @ISWORD(i32 %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %230, label %228

228:                                              ; preds = %224, %215
  %229 = load i32, i32* @EOW, align 4
  store i32 %229, i32* %17, align 4
  br label %230

230:                                              ; preds = %228, %224, %219, %211, %206
  %231 = load i32, i32* %17, align 4
  %232 = load i32, i32* @BOW, align 4
  %233 = icmp eq i32 %231, %232
  br i1 %233, label %238, label %234

234:                                              ; preds = %230
  %235 = load i32, i32* %17, align 4
  %236 = load i32, i32* @EOW, align 4
  %237 = icmp eq i32 %235, %236
  br i1 %237, label %238, label %252

238:                                              ; preds = %234, %230
  %239 = load %struct.match*, %struct.match** %6, align 8
  %240 = getelementptr inbounds %struct.match, %struct.match* %239, i32 0, i32 3
  %241 = load %struct.TYPE_2__*, %struct.TYPE_2__** %240, align 8
  %242 = load i32, i32* %9, align 4
  %243 = load i32, i32* %10, align 4
  %244 = load i32, i32* %11, align 4
  %245 = load i32, i32* %17, align 4
  %246 = load i32, i32* %11, align 4
  %247 = call i32 @step(%struct.TYPE_2__* %241, i32 %242, i32 %243, i32 %244, i32 %245, i32 %246)
  store i32 %247, i32* %11, align 4
  %248 = load i32, i32* %11, align 4
  %249 = load i32, i32* %15, align 4
  %250 = trunc i32 %249 to i8
  %251 = call i32 @SP(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %248, i8 signext %250)
  br label %252

252:                                              ; preds = %238, %234
  %253 = load i32, i32* %11, align 4
  %254 = load i32, i32* %10, align 4
  %255 = call i64 @ISSET(i32 %253, i32 %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %259

257:                                              ; preds = %252
  %258 = load i8*, i8** %14, align 8
  store i8* %258, i8** %19, align 8
  br label %259

259:                                              ; preds = %257, %252
  %260 = load i32, i32* %11, align 4
  %261 = load i32, i32* %12, align 4
  %262 = call i32 @EQ(i32 %260, i32 %261)
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %268, label %264

264:                                              ; preds = %259
  %265 = load i8*, i8** %14, align 8
  %266 = load i8*, i8** %8, align 8
  %267 = icmp eq i8* %265, %266
  br i1 %267, label %268, label %269

268:                                              ; preds = %264, %259
  br label %309

269:                                              ; preds = %264
  %270 = load i32, i32* %13, align 4
  %271 = load i32, i32* %11, align 4
  %272 = call i32 @ASSIGN(i32 %270, i32 %271)
  %273 = load i32, i32* %11, align 4
  %274 = load i32, i32* %12, align 4
  %275 = call i32 @ASSIGN(i32 %273, i32 %274)
  %276 = load i32, i32* %15, align 4
  %277 = load i8, i8* @OUT, align 1
  %278 = sext i8 %277 to i32
  %279 = icmp ne i32 %276, %278
  %280 = zext i1 %279 to i32
  %281 = call i32 @assert(i32 %280)
  %282 = load %struct.match*, %struct.match** %6, align 8
  %283 = getelementptr inbounds %struct.match, %struct.match* %282, i32 0, i32 3
  %284 = load %struct.TYPE_2__*, %struct.TYPE_2__** %283, align 8
  %285 = load i32, i32* %9, align 4
  %286 = load i32, i32* %10, align 4
  %287 = load i32, i32* %13, align 4
  %288 = load i32, i32* %15, align 4
  %289 = load i32, i32* %11, align 4
  %290 = call i32 @step(%struct.TYPE_2__* %284, i32 %285, i32 %286, i32 %287, i32 %288, i32 %289)
  store i32 %290, i32* %11, align 4
  %291 = load i32, i32* %11, align 4
  %292 = load i32, i32* %15, align 4
  %293 = trunc i32 %292 to i8
  %294 = call i32 @SP(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %291, i8 signext %293)
  %295 = load %struct.match*, %struct.match** %6, align 8
  %296 = getelementptr inbounds %struct.match, %struct.match* %295, i32 0, i32 3
  %297 = load %struct.TYPE_2__*, %struct.TYPE_2__** %296, align 8
  %298 = load i32, i32* %9, align 4
  %299 = load i32, i32* %10, align 4
  %300 = load i32, i32* %11, align 4
  %301 = load i32, i32* @NOTHING, align 4
  %302 = load i32, i32* %11, align 4
  %303 = call i32 @step(%struct.TYPE_2__* %297, i32 %298, i32 %299, i32 %300, i32 %301, i32 %302)
  %304 = load i32, i32* %11, align 4
  %305 = call i32 @EQ(i32 %303, i32 %304)
  %306 = call i32 @assert(i32 %305)
  %307 = load i8*, i8** %14, align 8
  %308 = getelementptr inbounds i8, i8* %307, i32 1
  store i8* %308, i8** %14, align 8
  br label %68

309:                                              ; preds = %268
  %310 = load i8*, i8** %19, align 8
  ret i8* %310
}

declare dso_local i32 @AT(i8*, i8*, i8*, i32, i32) #1

declare dso_local i32 @CLEAR(i32) #1

declare dso_local i32 @SET1(i32, i32) #1

declare dso_local i32 @SP(i8*, i32, i8 signext) #1

declare dso_local i32 @step(%struct.TYPE_2__*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @ISWORD(i32) #1

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
