; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/llvm/lib/Support/extr_regengine.inc_lfast.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/llvm/lib/Support/extr_regengine.inc_lfast.c"
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
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
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
  store i32 %45, i32* %16, align 4
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @CLEAR(i32 %46)
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @SET1(i32 %48, i32 %49)
  %51 = load %struct.match*, %struct.match** %7, align 8
  %52 = getelementptr inbounds %struct.match, %struct.match* %51, i32 0, i32 4
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* @NOTHING, align 4
  %58 = load i32, i32* %12, align 4
  %59 = call i32 @step(%struct.TYPE_2__* %53, i32 %54, i32 %55, i32 %56, i32 %57, i32 %58)
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @ASSIGN(i32 %60, i32 %61)
  %63 = load i32, i32* %12, align 4
  %64 = load i8*, i8** %15, align 8
  %65 = load i8, i8* %64, align 1
  %66 = call i32 @SP(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %63, i8 signext %65)
  store i8* null, i8** %20, align 8
  br label %67

67:                                               ; preds = %268, %44
  %68 = load i32, i32* %16, align 4
  store i32 %68, i32* %17, align 4
  %69 = load i8*, i8** %15, align 8
  %70 = load %struct.match*, %struct.match** %7, align 8
  %71 = getelementptr inbounds %struct.match, %struct.match* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = icmp eq i8* %69, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %67
  %75 = load i8, i8* @OUT, align 1
  %76 = sext i8 %75 to i32
  br label %81

77:                                               ; preds = %67
  %78 = load i8*, i8** %15, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  br label %81

81:                                               ; preds = %77, %74
  %82 = phi i32 [ %76, %74 ], [ %80, %77 ]
  store i32 %82, i32* %16, align 4
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* %13, align 4
  %85 = call i32 @EQ(i32 %83, i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %81
  %88 = load i8*, i8** %15, align 8
  store i8* %88, i8** %20, align 8
  br label %89

89:                                               ; preds = %87, %81
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %90 = load i32, i32* %17, align 4
  %91 = icmp eq i32 %90, 10
  br i1 %91, label %92, label %101

92:                                               ; preds = %89
  %93 = load %struct.match*, %struct.match** %7, align 8
  %94 = getelementptr inbounds %struct.match, %struct.match* %93, i32 0, i32 4
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @REG_NEWLINE, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %113, label %101

101:                                              ; preds = %92, %89
  %102 = load i32, i32* %17, align 4
  %103 = load i8, i8* @OUT, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 %102, %104
  br i1 %105, label %106, label %120

106:                                              ; preds = %101
  %107 = load %struct.match*, %struct.match** %7, align 8
  %108 = getelementptr inbounds %struct.match, %struct.match* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @REG_NOTBOL, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %120, label %113

113:                                              ; preds = %106, %92
  %114 = load i32, i32* @BOL, align 4
  store i32 %114, i32* %18, align 4
  %115 = load %struct.match*, %struct.match** %7, align 8
  %116 = getelementptr inbounds %struct.match, %struct.match* %115, i32 0, i32 4
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  store i32 %119, i32* %19, align 4
  br label %120

120:                                              ; preds = %113, %106, %101
  %121 = load i32, i32* %16, align 4
  %122 = icmp eq i32 %121, 10
  br i1 %122, label %123, label %132

123:                                              ; preds = %120
  %124 = load %struct.match*, %struct.match** %7, align 8
  %125 = getelementptr inbounds %struct.match, %struct.match* %124, i32 0, i32 4
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @REG_NEWLINE, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %144, label %132

132:                                              ; preds = %123, %120
  %133 = load i32, i32* %16, align 4
  %134 = load i8, i8* @OUT, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp eq i32 %133, %135
  br i1 %136, label %137, label %163

137:                                              ; preds = %132
  %138 = load %struct.match*, %struct.match** %7, align 8
  %139 = getelementptr inbounds %struct.match, %struct.match* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @REG_NOTEOL, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %163, label %144

144:                                              ; preds = %137, %123
  %145 = load i32, i32* %18, align 4
  %146 = load i32, i32* @BOL, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %150

148:                                              ; preds = %144
  %149 = load i32, i32* @BOLEOL, align 4
  br label %152

150:                                              ; preds = %144
  %151 = load i32, i32* @EOL, align 4
  br label %152

152:                                              ; preds = %150, %148
  %153 = phi i32 [ %149, %148 ], [ %151, %150 ]
  store i32 %153, i32* %18, align 4
  %154 = load %struct.match*, %struct.match** %7, align 8
  %155 = getelementptr inbounds %struct.match, %struct.match* %154, i32 0, i32 4
  %156 = load %struct.TYPE_2__*, %struct.TYPE_2__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = load i32, i32* %19, align 4
  %160 = sext i32 %159 to i64
  %161 = add nsw i64 %160, %158
  %162 = trunc i64 %161 to i32
  store i32 %162, i32* %19, align 4
  br label %163

163:                                              ; preds = %152, %137, %132
  %164 = load i32, i32* %19, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %188

166:                                              ; preds = %163
  br label %167

167:                                              ; preds = %180, %166
  %168 = load i32, i32* %19, align 4
  %169 = icmp sgt i32 %168, 0
  br i1 %169, label %170, label %183

170:                                              ; preds = %167
  %171 = load %struct.match*, %struct.match** %7, align 8
  %172 = getelementptr inbounds %struct.match, %struct.match* %171, i32 0, i32 4
  %173 = load %struct.TYPE_2__*, %struct.TYPE_2__** %172, align 8
  %174 = load i32, i32* %10, align 4
  %175 = load i32, i32* %11, align 4
  %176 = load i32, i32* %12, align 4
  %177 = load i32, i32* %18, align 4
  %178 = load i32, i32* %12, align 4
  %179 = call i32 @step(%struct.TYPE_2__* %173, i32 %174, i32 %175, i32 %176, i32 %177, i32 %178)
  store i32 %179, i32* %12, align 4
  br label %180

180:                                              ; preds = %170
  %181 = load i32, i32* %19, align 4
  %182 = add nsw i32 %181, -1
  store i32 %182, i32* %19, align 4
  br label %167

183:                                              ; preds = %167
  %184 = load i32, i32* %12, align 4
  %185 = load i32, i32* %16, align 4
  %186 = trunc i32 %185 to i8
  %187 = call i32 @SP(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %184, i8 signext %186)
  br label %188

188:                                              ; preds = %183, %163
  %189 = load i32, i32* %18, align 4
  %190 = load i32, i32* @BOL, align 4
  %191 = icmp eq i32 %189, %190
  br i1 %191, label %201, label %192

192:                                              ; preds = %188
  %193 = load i32, i32* %17, align 4
  %194 = load i8, i8* @OUT, align 1
  %195 = sext i8 %194 to i32
  %196 = icmp ne i32 %193, %195
  br i1 %196, label %197, label %212

197:                                              ; preds = %192
  %198 = load i32, i32* %17, align 4
  %199 = call i64 @ISWORD(i32 %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %212, label %201

201:                                              ; preds = %197, %188
  %202 = load i32, i32* %16, align 4
  %203 = load i8, i8* @OUT, align 1
  %204 = sext i8 %203 to i32
  %205 = icmp ne i32 %202, %204
  br i1 %205, label %206, label %212

206:                                              ; preds = %201
  %207 = load i32, i32* %16, align 4
  %208 = call i64 @ISWORD(i32 %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %206
  %211 = load i32, i32* @BOW, align 4
  store i32 %211, i32* %18, align 4
  br label %212

212:                                              ; preds = %210, %206, %201, %197, %192
  %213 = load i32, i32* %17, align 4
  %214 = load i8, i8* @OUT, align 1
  %215 = sext i8 %214 to i32
  %216 = icmp ne i32 %213, %215
  br i1 %216, label %217, label %236

217:                                              ; preds = %212
  %218 = load i32, i32* %17, align 4
  %219 = call i64 @ISWORD(i32 %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %236

221:                                              ; preds = %217
  %222 = load i32, i32* %18, align 4
  %223 = load i32, i32* @EOL, align 4
  %224 = icmp eq i32 %222, %223
  br i1 %224, label %234, label %225

225:                                              ; preds = %221
  %226 = load i32, i32* %16, align 4
  %227 = load i8, i8* @OUT, align 1
  %228 = sext i8 %227 to i32
  %229 = icmp ne i32 %226, %228
  br i1 %229, label %230, label %236

230:                                              ; preds = %225
  %231 = load i32, i32* %16, align 4
  %232 = call i64 @ISWORD(i32 %231)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %236, label %234

234:                                              ; preds = %230, %221
  %235 = load i32, i32* @EOW, align 4
  store i32 %235, i32* %18, align 4
  br label %236

236:                                              ; preds = %234, %230, %225, %217, %212
  %237 = load i32, i32* %18, align 4
  %238 = load i32, i32* @BOW, align 4
  %239 = icmp eq i32 %237, %238
  br i1 %239, label %244, label %240

240:                                              ; preds = %236
  %241 = load i32, i32* %18, align 4
  %242 = load i32, i32* @EOW, align 4
  %243 = icmp eq i32 %241, %242
  br i1 %243, label %244, label %258

244:                                              ; preds = %240, %236
  %245 = load %struct.match*, %struct.match** %7, align 8
  %246 = getelementptr inbounds %struct.match, %struct.match* %245, i32 0, i32 4
  %247 = load %struct.TYPE_2__*, %struct.TYPE_2__** %246, align 8
  %248 = load i32, i32* %10, align 4
  %249 = load i32, i32* %11, align 4
  %250 = load i32, i32* %12, align 4
  %251 = load i32, i32* %18, align 4
  %252 = load i32, i32* %12, align 4
  %253 = call i32 @step(%struct.TYPE_2__* %247, i32 %248, i32 %249, i32 %250, i32 %251, i32 %252)
  store i32 %253, i32* %12, align 4
  %254 = load i32, i32* %12, align 4
  %255 = load i32, i32* %16, align 4
  %256 = trunc i32 %255 to i8
  %257 = call i32 @SP(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %254, i8 signext %256)
  br label %258

258:                                              ; preds = %244, %240
  %259 = load i32, i32* %12, align 4
  %260 = load i32, i32* %11, align 4
  %261 = call i64 @ISSET(i32 %259, i32 %260)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %267, label %263

263:                                              ; preds = %258
  %264 = load i8*, i8** %15, align 8
  %265 = load i8*, i8** %9, align 8
  %266 = icmp eq i8* %264, %265
  br i1 %266, label %267, label %268

267:                                              ; preds = %263, %258
  br label %308

268:                                              ; preds = %263
  %269 = load i32, i32* %14, align 4
  %270 = load i32, i32* %12, align 4
  %271 = call i32 @ASSIGN(i32 %269, i32 %270)
  %272 = load i32, i32* %12, align 4
  %273 = load i32, i32* %13, align 4
  %274 = call i32 @ASSIGN(i32 %272, i32 %273)
  %275 = load i32, i32* %16, align 4
  %276 = load i8, i8* @OUT, align 1
  %277 = sext i8 %276 to i32
  %278 = icmp ne i32 %275, %277
  %279 = zext i1 %278 to i32
  %280 = call i32 @assert(i32 %279)
  %281 = load %struct.match*, %struct.match** %7, align 8
  %282 = getelementptr inbounds %struct.match, %struct.match* %281, i32 0, i32 4
  %283 = load %struct.TYPE_2__*, %struct.TYPE_2__** %282, align 8
  %284 = load i32, i32* %10, align 4
  %285 = load i32, i32* %11, align 4
  %286 = load i32, i32* %14, align 4
  %287 = load i32, i32* %16, align 4
  %288 = load i32, i32* %12, align 4
  %289 = call i32 @step(%struct.TYPE_2__* %283, i32 %284, i32 %285, i32 %286, i32 %287, i32 %288)
  store i32 %289, i32* %12, align 4
  %290 = load i32, i32* %12, align 4
  %291 = load i32, i32* %16, align 4
  %292 = trunc i32 %291 to i8
  %293 = call i32 @SP(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %290, i8 signext %292)
  %294 = load %struct.match*, %struct.match** %7, align 8
  %295 = getelementptr inbounds %struct.match, %struct.match* %294, i32 0, i32 4
  %296 = load %struct.TYPE_2__*, %struct.TYPE_2__** %295, align 8
  %297 = load i32, i32* %10, align 4
  %298 = load i32, i32* %11, align 4
  %299 = load i32, i32* %12, align 4
  %300 = load i32, i32* @NOTHING, align 4
  %301 = load i32, i32* %12, align 4
  %302 = call i32 @step(%struct.TYPE_2__* %296, i32 %297, i32 %298, i32 %299, i32 %300, i32 %301)
  %303 = load i32, i32* %12, align 4
  %304 = call i32 @EQ(i32 %302, i32 %303)
  %305 = call i32 @assert(i32 %304)
  %306 = load i8*, i8** %15, align 8
  %307 = getelementptr inbounds i8, i8* %306, i32 1
  store i8* %307, i8** %15, align 8
  br label %67

308:                                              ; preds = %267
  %309 = load i8*, i8** %20, align 8
  %310 = icmp ne i8* %309, null
  %311 = zext i1 %310 to i32
  %312 = call i32 @assert(i32 %311)
  %313 = load i8*, i8** %20, align 8
  %314 = load %struct.match*, %struct.match** %7, align 8
  %315 = getelementptr inbounds %struct.match, %struct.match* %314, i32 0, i32 3
  store i8* %313, i8** %315, align 8
  %316 = load i32, i32* %12, align 4
  %317 = load i32, i32* %11, align 4
  %318 = call i64 @ISSET(i32 %316, i32 %317)
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %320, label %323

320:                                              ; preds = %308
  %321 = load i8*, i8** %15, align 8
  %322 = getelementptr inbounds i8, i8* %321, i64 1
  store i8* %322, i8** %6, align 8
  br label %324

323:                                              ; preds = %308
  store i8* null, i8** %6, align 8
  br label %324

324:                                              ; preds = %323, %320
  %325 = load i8*, i8** %6, align 8
  ret i8* %325
}

declare dso_local i32 @CLEAR(i32) #1

declare dso_local i32 @SET1(i32, i32) #1

declare dso_local i32 @step(%struct.TYPE_2__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ASSIGN(i32, i32) #1

declare dso_local i32 @SP(i8*, i32, i8 signext) #1

declare dso_local i32 @EQ(i32, i32) #1

declare dso_local i64 @ISWORD(i32) #1

declare dso_local i64 @ISSET(i32, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
