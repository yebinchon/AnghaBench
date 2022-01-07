; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_run.c_split.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_run.c_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i8*, i32, i32 }
%struct.TYPE_12__ = type { i32, i64 }

@fsloc = common dso_local global %struct.TYPE_13__* null, align 8
@STRING = common dso_local global i32 0, align 4
@REGEXPR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"(regexpr)\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"illegal type of split\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"split: s=|%s|, a=%s, sep=|%s|\0A\00", align 1
@STR = common dso_local global i32 0, align 4
@ARR = common dso_local global i32 0, align 4
@NSYMTAB = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@patbeg = common dso_local global i64* null, align 8
@NUM = common dso_local global i32 0, align 4
@patlen = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_13__* @split(i32** %0, i32 %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8, align 1
  %15 = alloca [50 x i8], align 16
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_12__*, align 8
  %20 = alloca [2 x i8], align 1
  store i32** %0, i32*** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %5, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  %21 = load i32**, i32*** %3, align 8
  %22 = getelementptr inbounds i32*, i32** %21, i64 0
  %23 = load i32*, i32** %22, align 8
  %24 = call %struct.TYPE_13__* @execute(i32* %23)
  store %struct.TYPE_13__* %24, %struct.TYPE_13__** %6, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %26 = call i8* @getsval(%struct.TYPE_13__* %25)
  %27 = call i8* @strdup(i8* %26)
  store i8* %27, i8** %8, align 8
  store i8* %27, i8** %9, align 8
  %28 = load i32**, i32*** %3, align 8
  %29 = getelementptr inbounds i32*, i32** %28, i64 3
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @ptoi(i32* %30)
  store i32 %31, i32* %18, align 4
  %32 = load i32**, i32*** %3, align 8
  %33 = getelementptr inbounds i32*, i32** %32, i64 2
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %2
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** @fsloc, align 8
  %38 = call i8* @getsval(%struct.TYPE_13__* %37)
  store i8* %38, i8** %10, align 8
  br label %62

39:                                               ; preds = %2
  %40 = load i32, i32* %18, align 4
  %41 = load i32, i32* @STRING, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %39
  %44 = load i32**, i32*** %3, align 8
  %45 = getelementptr inbounds i32*, i32** %44, i64 2
  %46 = load i32*, i32** %45, align 8
  %47 = call %struct.TYPE_13__* @execute(i32* %46)
  store %struct.TYPE_13__* %47, %struct.TYPE_13__** %5, align 8
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %49 = call i8* @getsval(%struct.TYPE_13__* %48)
  %50 = call i8* @strdup(i8* %49)
  store i8* %50, i8** %10, align 8
  store i8* %50, i8** %11, align 8
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %52 = call i32 @tempfree(%struct.TYPE_13__* %51)
  br label %61

53:                                               ; preds = %39
  %54 = load i32, i32* %18, align 4
  %55 = load i32, i32* @REGEXPR, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  br label %60

58:                                               ; preds = %53
  %59 = call i32 @FATAL(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %57
  br label %61

61:                                               ; preds = %60, %43
  br label %62

62:                                               ; preds = %61, %36
  %63 = load i8*, i8** %10, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  store i32 %65, i32* %12, align 4
  %66 = load i32**, i32*** %3, align 8
  %67 = getelementptr inbounds i32*, i32** %66, i64 1
  %68 = load i32*, i32** %67, align 8
  %69 = call %struct.TYPE_13__* @execute(i32* %68)
  store %struct.TYPE_13__* %69, %struct.TYPE_13__** %7, align 8
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %71 = call i32 @freesymtab(%struct.TYPE_13__* %70)
  %72 = load i8*, i8** %8, align 8
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @NN(i32 %75)
  %77 = load i8*, i8** %10, align 8
  %78 = call i32 @dprintf(i8* %77)
  %79 = load i32, i32* @STR, align 4
  %80 = xor i32 %79, -1
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = and i32 %83, %80
  store i32 %84, i32* %82, align 8
  %85 = load i32, i32* @ARR, align 4
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 8
  %90 = load i32, i32* @NSYMTAB, align 4
  %91 = call i64 @makesymtab(i32 %90)
  %92 = inttoptr i64 %91 to i8*
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 1
  store i8* %92, i8** %94, align 8
  store i32 0, i32* %16, align 4
  %95 = load i32, i32* %18, align 4
  %96 = load i32, i32* @REGEXPR, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %109

98:                                               ; preds = %62
  %99 = load i32**, i32*** %3, align 8
  %100 = getelementptr inbounds i32*, i32** %99, i64 2
  %101 = load i32*, i32** %100, align 8
  %102 = bitcast i32* %101 to %struct.TYPE_12__*
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = inttoptr i64 %104 to i8*
  %106 = call i32 @strlen(i8* %105)
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %98
  store i32 0, i32* %18, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** %10, align 8
  store i32 0, i32* %12, align 4
  br label %109

109:                                              ; preds = %108, %98, %62
  %110 = load i8*, i8** %8, align 8
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %260

114:                                              ; preds = %109
  %115 = load i8*, i8** %10, align 8
  %116 = call i32 @strlen(i8* %115)
  %117 = icmp sgt i32 %116, 1
  br i1 %117, label %122, label %118

118:                                              ; preds = %114
  %119 = load i32, i32* %18, align 4
  %120 = load i32, i32* @REGEXPR, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %260

122:                                              ; preds = %118, %114
  %123 = load i32, i32* %18, align 4
  %124 = load i32, i32* @REGEXPR, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %131

126:                                              ; preds = %122
  %127 = load i32**, i32*** %3, align 8
  %128 = getelementptr inbounds i32*, i32** %127, i64 2
  %129 = load i32*, i32** %128, align 8
  %130 = bitcast i32* %129 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %130, %struct.TYPE_12__** %19, align 8
  br label %134

131:                                              ; preds = %122
  %132 = load i8*, i8** %10, align 8
  %133 = call %struct.TYPE_12__* @makedfa(i8* %132, i32 1)
  store %struct.TYPE_12__* %133, %struct.TYPE_12__** %19, align 8
  br label %134

134:                                              ; preds = %131, %126
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %136 = load i8*, i8** %8, align 8
  %137 = call i64 @nematch(%struct.TYPE_12__* %135, i8* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %227

139:                                              ; preds = %134
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  store i32 %142, i32* %17, align 4
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 0
  store i32 2, i32* %144, align 8
  br label %145

145:                                              ; preds = %218, %139
  %146 = load i32, i32* %16, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %16, align 4
  %148 = getelementptr inbounds [50 x i8], [50 x i8]* %15, i64 0, i64 0
  %149 = load i32, i32* %16, align 4
  %150 = call i32 @sprintf(i8* %148, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %149)
  %151 = load i64*, i64** @patbeg, align 8
  %152 = load i64, i64* %151, align 8
  %153 = trunc i64 %152 to i8
  store i8 %153, i8* %14, align 1
  %154 = load i64*, i64** @patbeg, align 8
  store i64 0, i64* %154, align 8
  %155 = load i8*, i8** %8, align 8
  %156 = call i64 @is_number(i8* %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %171

158:                                              ; preds = %145
  %159 = getelementptr inbounds [50 x i8], [50 x i8]* %15, i64 0, i64 0
  %160 = load i8*, i8** %8, align 8
  %161 = load i8*, i8** %8, align 8
  %162 = call double @atof(i8* %161)
  %163 = load i32, i32* @STR, align 4
  %164 = load i32, i32* @NUM, align 4
  %165 = or i32 %163, %164
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 1
  %168 = load i8*, i8** %167, align 8
  %169 = bitcast i8* %168 to i32*
  %170 = call i32 @setsymtab(i8* %159, i8* %160, double %162, i32 %165, i32* %169)
  br label %180

171:                                              ; preds = %145
  %172 = getelementptr inbounds [50 x i8], [50 x i8]* %15, i64 0, i64 0
  %173 = load i8*, i8** %8, align 8
  %174 = load i32, i32* @STR, align 4
  %175 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i32 0, i32 1
  %177 = load i8*, i8** %176, align 8
  %178 = bitcast i8* %177 to i32*
  %179 = call i32 @setsymtab(i8* %172, i8* %173, double 0.000000e+00, i32 %174, i32* %178)
  br label %180

180:                                              ; preds = %171, %158
  %181 = load i8, i8* %14, align 1
  %182 = sext i8 %181 to i64
  %183 = load i64*, i64** @patbeg, align 8
  store i64 %182, i64* %183, align 8
  %184 = load i64*, i64** @patbeg, align 8
  %185 = load i32, i32* @patlen, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i64, i64* %184, i64 %186
  %188 = bitcast i64* %187 to i8*
  store i8* %188, i8** %8, align 8
  %189 = load i64*, i64** @patbeg, align 8
  %190 = load i32, i32* @patlen, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i64, i64* %189, i64 %191
  %193 = getelementptr inbounds i64, i64* %192, i64 -1
  %194 = load i64, i64* %193, align 8
  %195 = icmp eq i64 %194, 0
  br i1 %195, label %201, label %196

196:                                              ; preds = %180
  %197 = load i8*, i8** %8, align 8
  %198 = load i8, i8* %197, align 1
  %199 = sext i8 %198 to i32
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %217

201:                                              ; preds = %196, %180
  %202 = load i32, i32* %16, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %16, align 4
  %204 = getelementptr inbounds [50 x i8], [50 x i8]* %15, i64 0, i64 0
  %205 = load i32, i32* %16, align 4
  %206 = call i32 @sprintf(i8* %204, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %205)
  %207 = getelementptr inbounds [50 x i8], [50 x i8]* %15, i64 0, i64 0
  %208 = load i32, i32* @STR, align 4
  %209 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i32 0, i32 1
  %211 = load i8*, i8** %210, align 8
  %212 = bitcast i8* %211 to i32*
  %213 = call i32 @setsymtab(i8* %207, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), double 0.000000e+00, i32 %208, i32* %212)
  %214 = load i32, i32* %17, align 4
  %215 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %215, i32 0, i32 0
  store i32 %214, i32* %216, align 8
  br label %259

217:                                              ; preds = %196
  br label %218

218:                                              ; preds = %217
  %219 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %220 = load i8*, i8** %8, align 8
  %221 = call i64 @nematch(%struct.TYPE_12__* %219, i8* %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %145, label %223

223:                                              ; preds = %218
  %224 = load i32, i32* %17, align 4
  %225 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i32 0, i32 0
  store i32 %224, i32* %226, align 8
  br label %227

227:                                              ; preds = %223, %134
  %228 = load i32, i32* %16, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %16, align 4
  %230 = getelementptr inbounds [50 x i8], [50 x i8]* %15, i64 0, i64 0
  %231 = load i32, i32* %16, align 4
  %232 = call i32 @sprintf(i8* %230, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %231)
  %233 = load i8*, i8** %8, align 8
  %234 = call i64 @is_number(i8* %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %249

236:                                              ; preds = %227
  %237 = getelementptr inbounds [50 x i8], [50 x i8]* %15, i64 0, i64 0
  %238 = load i8*, i8** %8, align 8
  %239 = load i8*, i8** %8, align 8
  %240 = call double @atof(i8* %239)
  %241 = load i32, i32* @STR, align 4
  %242 = load i32, i32* @NUM, align 4
  %243 = or i32 %241, %242
  %244 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %245 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %244, i32 0, i32 1
  %246 = load i8*, i8** %245, align 8
  %247 = bitcast i8* %246 to i32*
  %248 = call i32 @setsymtab(i8* %237, i8* %238, double %240, i32 %243, i32* %247)
  br label %258

249:                                              ; preds = %227
  %250 = getelementptr inbounds [50 x i8], [50 x i8]* %15, i64 0, i64 0
  %251 = load i8*, i8** %8, align 8
  %252 = load i32, i32* @STR, align 4
  %253 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %254 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %253, i32 0, i32 1
  %255 = load i8*, i8** %254, align 8
  %256 = bitcast i8* %255 to i32*
  %257 = call i32 @setsymtab(i8* %250, i8* %251, double 0.000000e+00, i32 %252, i32* %256)
  br label %258

258:                                              ; preds = %249, %236
  br label %259

259:                                              ; preds = %258, %201
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %19, align 8
  br label %492

260:                                              ; preds = %118, %109
  %261 = load i32, i32* %12, align 4
  %262 = icmp eq i32 %261, 32
  br i1 %262, label %263, label %364

263:                                              ; preds = %260
  store i32 0, i32* %16, align 4
  br label %264

264:                                              ; preds = %362, %263
  br label %265

265:                                              ; preds = %282, %264
  %266 = load i8*, i8** %8, align 8
  %267 = load i8, i8* %266, align 1
  %268 = sext i8 %267 to i32
  %269 = icmp eq i32 %268, 32
  br i1 %269, label %280, label %270

270:                                              ; preds = %265
  %271 = load i8*, i8** %8, align 8
  %272 = load i8, i8* %271, align 1
  %273 = sext i8 %272 to i32
  %274 = icmp eq i32 %273, 9
  br i1 %274, label %280, label %275

275:                                              ; preds = %270
  %276 = load i8*, i8** %8, align 8
  %277 = load i8, i8* %276, align 1
  %278 = sext i8 %277 to i32
  %279 = icmp eq i32 %278, 10
  br label %280

280:                                              ; preds = %275, %270, %265
  %281 = phi i1 [ true, %270 ], [ true, %265 ], [ %279, %275 ]
  br i1 %281, label %282, label %285

282:                                              ; preds = %280
  %283 = load i8*, i8** %8, align 8
  %284 = getelementptr inbounds i8, i8* %283, i32 1
  store i8* %284, i8** %8, align 8
  br label %265

285:                                              ; preds = %280
  %286 = load i8*, i8** %8, align 8
  %287 = load i8, i8* %286, align 1
  %288 = sext i8 %287 to i32
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %290, label %291

290:                                              ; preds = %285
  br label %363

291:                                              ; preds = %285
  %292 = load i32, i32* %16, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %16, align 4
  %294 = load i8*, i8** %8, align 8
  store i8* %294, i8** %13, align 8
  br label %295

295:                                              ; preds = %318, %291
  %296 = load i8*, i8** %8, align 8
  %297 = getelementptr inbounds i8, i8* %296, i32 1
  store i8* %297, i8** %8, align 8
  br label %298

298:                                              ; preds = %295
  %299 = load i8*, i8** %8, align 8
  %300 = load i8, i8* %299, align 1
  %301 = sext i8 %300 to i32
  %302 = icmp ne i32 %301, 32
  br i1 %302, label %303, label %318

303:                                              ; preds = %298
  %304 = load i8*, i8** %8, align 8
  %305 = load i8, i8* %304, align 1
  %306 = sext i8 %305 to i32
  %307 = icmp ne i32 %306, 9
  br i1 %307, label %308, label %318

308:                                              ; preds = %303
  %309 = load i8*, i8** %8, align 8
  %310 = load i8, i8* %309, align 1
  %311 = sext i8 %310 to i32
  %312 = icmp ne i32 %311, 10
  br i1 %312, label %313, label %318

313:                                              ; preds = %308
  %314 = load i8*, i8** %8, align 8
  %315 = load i8, i8* %314, align 1
  %316 = sext i8 %315 to i32
  %317 = icmp ne i32 %316, 0
  br label %318

318:                                              ; preds = %313, %308, %303, %298
  %319 = phi i1 [ false, %308 ], [ false, %303 ], [ false, %298 ], [ %317, %313 ]
  br i1 %319, label %295, label %320

320:                                              ; preds = %318
  %321 = load i8*, i8** %8, align 8
  %322 = load i8, i8* %321, align 1
  store i8 %322, i8* %14, align 1
  %323 = load i8*, i8** %8, align 8
  store i8 0, i8* %323, align 1
  %324 = getelementptr inbounds [50 x i8], [50 x i8]* %15, i64 0, i64 0
  %325 = load i32, i32* %16, align 4
  %326 = call i32 @sprintf(i8* %324, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %325)
  %327 = load i8*, i8** %13, align 8
  %328 = call i64 @is_number(i8* %327)
  %329 = icmp ne i64 %328, 0
  br i1 %329, label %330, label %343

330:                                              ; preds = %320
  %331 = getelementptr inbounds [50 x i8], [50 x i8]* %15, i64 0, i64 0
  %332 = load i8*, i8** %13, align 8
  %333 = load i8*, i8** %13, align 8
  %334 = call double @atof(i8* %333)
  %335 = load i32, i32* @STR, align 4
  %336 = load i32, i32* @NUM, align 4
  %337 = or i32 %335, %336
  %338 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %339 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %338, i32 0, i32 1
  %340 = load i8*, i8** %339, align 8
  %341 = bitcast i8* %340 to i32*
  %342 = call i32 @setsymtab(i8* %331, i8* %332, double %334, i32 %337, i32* %341)
  br label %352

343:                                              ; preds = %320
  %344 = getelementptr inbounds [50 x i8], [50 x i8]* %15, i64 0, i64 0
  %345 = load i8*, i8** %13, align 8
  %346 = load i32, i32* @STR, align 4
  %347 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %348 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %347, i32 0, i32 1
  %349 = load i8*, i8** %348, align 8
  %350 = bitcast i8* %349 to i32*
  %351 = call i32 @setsymtab(i8* %344, i8* %345, double 0.000000e+00, i32 %346, i32* %350)
  br label %352

352:                                              ; preds = %343, %330
  %353 = load i8, i8* %14, align 1
  %354 = load i8*, i8** %8, align 8
  store i8 %353, i8* %354, align 1
  %355 = load i8*, i8** %8, align 8
  %356 = load i8, i8* %355, align 1
  %357 = sext i8 %356 to i32
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %362

359:                                              ; preds = %352
  %360 = load i8*, i8** %8, align 8
  %361 = getelementptr inbounds i8, i8* %360, i32 1
  store i8* %361, i8** %8, align 8
  br label %362

362:                                              ; preds = %359, %352
  br label %264

363:                                              ; preds = %290
  br label %491

364:                                              ; preds = %260
  %365 = load i32, i32* %12, align 4
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %367, label %415

367:                                              ; preds = %364
  store i32 0, i32* %16, align 4
  br label %368

368:                                              ; preds = %411, %367
  %369 = load i8*, i8** %8, align 8
  %370 = load i8, i8* %369, align 1
  %371 = sext i8 %370 to i32
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %414

373:                                              ; preds = %368
  %374 = load i32, i32* %16, align 4
  %375 = add nsw i32 %374, 1
  store i32 %375, i32* %16, align 4
  %376 = getelementptr inbounds [50 x i8], [50 x i8]* %15, i64 0, i64 0
  %377 = load i32, i32* %16, align 4
  %378 = call i32 @sprintf(i8* %376, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %377)
  %379 = load i8*, i8** %8, align 8
  %380 = load i8, i8* %379, align 1
  %381 = getelementptr inbounds [2 x i8], [2 x i8]* %20, i64 0, i64 0
  store i8 %380, i8* %381, align 1
  %382 = getelementptr inbounds [2 x i8], [2 x i8]* %20, i64 0, i64 1
  store i8 0, i8* %382, align 1
  %383 = getelementptr inbounds [2 x i8], [2 x i8]* %20, i64 0, i64 0
  %384 = load i8, i8* %383, align 1
  %385 = sext i8 %384 to i32
  %386 = call i64 @isdigit(i32 %385)
  %387 = icmp ne i64 %386, 0
  br i1 %387, label %388, label %401

388:                                              ; preds = %373
  %389 = getelementptr inbounds [50 x i8], [50 x i8]* %15, i64 0, i64 0
  %390 = getelementptr inbounds [2 x i8], [2 x i8]* %20, i64 0, i64 0
  %391 = getelementptr inbounds [2 x i8], [2 x i8]* %20, i64 0, i64 0
  %392 = call double @atof(i8* %391)
  %393 = load i32, i32* @STR, align 4
  %394 = load i32, i32* @NUM, align 4
  %395 = or i32 %393, %394
  %396 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %397 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %396, i32 0, i32 1
  %398 = load i8*, i8** %397, align 8
  %399 = bitcast i8* %398 to i32*
  %400 = call i32 @setsymtab(i8* %389, i8* %390, double %392, i32 %395, i32* %399)
  br label %410

401:                                              ; preds = %373
  %402 = getelementptr inbounds [50 x i8], [50 x i8]* %15, i64 0, i64 0
  %403 = getelementptr inbounds [2 x i8], [2 x i8]* %20, i64 0, i64 0
  %404 = load i32, i32* @STR, align 4
  %405 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %406 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %405, i32 0, i32 1
  %407 = load i8*, i8** %406, align 8
  %408 = bitcast i8* %407 to i32*
  %409 = call i32 @setsymtab(i8* %402, i8* %403, double 0.000000e+00, i32 %404, i32* %408)
  br label %410

410:                                              ; preds = %401, %388
  br label %411

411:                                              ; preds = %410
  %412 = load i8*, i8** %8, align 8
  %413 = getelementptr inbounds i8, i8* %412, i32 1
  store i8* %413, i8** %8, align 8
  br label %368

414:                                              ; preds = %368
  br label %490

415:                                              ; preds = %364
  %416 = load i8*, i8** %8, align 8
  %417 = load i8, i8* %416, align 1
  %418 = sext i8 %417 to i32
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %420, label %489

420:                                              ; preds = %415
  br label %421

421:                                              ; preds = %487, %420
  %422 = load i32, i32* %16, align 4
  %423 = add nsw i32 %422, 1
  store i32 %423, i32* %16, align 4
  %424 = load i8*, i8** %8, align 8
  store i8* %424, i8** %13, align 8
  br label %425

425:                                              ; preds = %443, %421
  %426 = load i8*, i8** %8, align 8
  %427 = load i8, i8* %426, align 1
  %428 = sext i8 %427 to i32
  %429 = load i32, i32* %12, align 4
  %430 = icmp ne i32 %428, %429
  br i1 %430, label %431, label %441

431:                                              ; preds = %425
  %432 = load i8*, i8** %8, align 8
  %433 = load i8, i8* %432, align 1
  %434 = sext i8 %433 to i32
  %435 = icmp ne i32 %434, 10
  br i1 %435, label %436, label %441

436:                                              ; preds = %431
  %437 = load i8*, i8** %8, align 8
  %438 = load i8, i8* %437, align 1
  %439 = sext i8 %438 to i32
  %440 = icmp ne i32 %439, 0
  br label %441

441:                                              ; preds = %436, %431, %425
  %442 = phi i1 [ false, %431 ], [ false, %425 ], [ %440, %436 ]
  br i1 %442, label %443, label %446

443:                                              ; preds = %441
  %444 = load i8*, i8** %8, align 8
  %445 = getelementptr inbounds i8, i8* %444, i32 1
  store i8* %445, i8** %8, align 8
  br label %425

446:                                              ; preds = %441
  %447 = load i8*, i8** %8, align 8
  %448 = load i8, i8* %447, align 1
  store i8 %448, i8* %14, align 1
  %449 = load i8*, i8** %8, align 8
  store i8 0, i8* %449, align 1
  %450 = getelementptr inbounds [50 x i8], [50 x i8]* %15, i64 0, i64 0
  %451 = load i32, i32* %16, align 4
  %452 = call i32 @sprintf(i8* %450, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %451)
  %453 = load i8*, i8** %13, align 8
  %454 = call i64 @is_number(i8* %453)
  %455 = icmp ne i64 %454, 0
  br i1 %455, label %456, label %469

456:                                              ; preds = %446
  %457 = getelementptr inbounds [50 x i8], [50 x i8]* %15, i64 0, i64 0
  %458 = load i8*, i8** %13, align 8
  %459 = load i8*, i8** %13, align 8
  %460 = call double @atof(i8* %459)
  %461 = load i32, i32* @STR, align 4
  %462 = load i32, i32* @NUM, align 4
  %463 = or i32 %461, %462
  %464 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %465 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %464, i32 0, i32 1
  %466 = load i8*, i8** %465, align 8
  %467 = bitcast i8* %466 to i32*
  %468 = call i32 @setsymtab(i8* %457, i8* %458, double %460, i32 %463, i32* %467)
  br label %478

469:                                              ; preds = %446
  %470 = getelementptr inbounds [50 x i8], [50 x i8]* %15, i64 0, i64 0
  %471 = load i8*, i8** %13, align 8
  %472 = load i32, i32* @STR, align 4
  %473 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %474 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %473, i32 0, i32 1
  %475 = load i8*, i8** %474, align 8
  %476 = bitcast i8* %475 to i32*
  %477 = call i32 @setsymtab(i8* %470, i8* %471, double 0.000000e+00, i32 %472, i32* %476)
  br label %478

478:                                              ; preds = %469, %456
  %479 = load i8, i8* %14, align 1
  %480 = load i8*, i8** %8, align 8
  store i8 %479, i8* %480, align 1
  %481 = load i8*, i8** %8, align 8
  %482 = getelementptr inbounds i8, i8* %481, i32 1
  store i8* %482, i8** %8, align 8
  %483 = load i8, i8* %481, align 1
  %484 = sext i8 %483 to i32
  %485 = icmp eq i32 %484, 0
  br i1 %485, label %486, label %487

486:                                              ; preds = %478
  br label %488

487:                                              ; preds = %478
  br label %421

488:                                              ; preds = %486
  br label %489

489:                                              ; preds = %488, %415
  br label %490

490:                                              ; preds = %489, %414
  br label %491

491:                                              ; preds = %490, %363
  br label %492

492:                                              ; preds = %491, %259
  %493 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %494 = call i32 @tempfree(%struct.TYPE_13__* %493)
  %495 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %496 = call i32 @tempfree(%struct.TYPE_13__* %495)
  %497 = load i8*, i8** %9, align 8
  %498 = call i32 @free(i8* %497)
  %499 = load i8*, i8** %11, align 8
  %500 = call i32 @free(i8* %499)
  %501 = call %struct.TYPE_13__* (...) @gettemp()
  store %struct.TYPE_13__* %501, %struct.TYPE_13__** %5, align 8
  %502 = load i32, i32* @NUM, align 4
  %503 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %504 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %503, i32 0, i32 0
  store i32 %502, i32* %504, align 8
  %505 = load i32, i32* %16, align 4
  %506 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %507 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %506, i32 0, i32 2
  store i32 %505, i32* %507, align 8
  %508 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  ret %struct.TYPE_13__* %508
}

declare dso_local %struct.TYPE_13__* @execute(i32*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @getsval(%struct.TYPE_13__*) #1

declare dso_local i32 @ptoi(i32*) #1

declare dso_local i32 @tempfree(%struct.TYPE_13__*) #1

declare dso_local i32 @FATAL(i8*) #1

declare dso_local i32 @freesymtab(%struct.TYPE_13__*) #1

declare dso_local i32 @dprintf(i8*) #1

declare dso_local i32 @NN(i32) #1

declare dso_local i64 @makesymtab(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.TYPE_12__* @makedfa(i8*, i32) #1

declare dso_local i64 @nematch(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i64 @is_number(i8*) #1

declare dso_local i32 @setsymtab(i8*, i8*, double, i32, i32*) #1

declare dso_local double @atof(i8*) #1

declare dso_local i64 @isdigit(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local %struct.TYPE_13__* @gettemp(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
